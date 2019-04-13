#!/usr/bin/env bash
#exit

declare -A customerByERP
customerByERP+=(["Bedague"]="ABL" ["Berthelot"]="ABL" ["Bistrocash"]="Cambos" ["Forez"]="Prios" ["LEDG"]="Odoo" ["Milliet"]="Cambos" ["Ouest"]="ABL" ["Pietrini"]="Serca" ["PNB"]="Prios" ["Rouquette"]="ABL" ["Proxi"]="ABL", ["Test"]="ERPTest")

erps=("ABL" "Serca" "Odoo" "Prios" "Cambos" "ERPTest")
customers=("Bedague" "Berthelot" "Bistrocash" "Forez" "LEDG" "Milliet" "Ouest" "Pietrini" "PNB" "Rouquette" "Proxi" "Test")

if [[ ${#customers[@]} != ${#customerByERP[@]} ]]; then
    echo "customerByERP and customers array doesn't match !!"
    exit N
fi


# Check ViewControllers
cd TargetTest/Views
for entry in `ls $search_dir`; do
    echo "Entry : " $entry

    for customer in ${customers[@]}; do
        #echo "Customer : "$customer "| ERP = "${customerByERP[$customer]}

        containsApp=0
        for file in `ls $entry/Overrides/App`; do
            customerName=${file//*-/}
            customerName=${customerName//.swift/}

            if [[ "$customer" == "$customerName" ]]; then
                containsApp=1
            fi
        done # files

        #Create file in /App
        if [[ $containsApp == 0 ]]; then
            customerErp=${customerByERP[$customer]}

            content=$(printf "\rimport UIKit\r\rclass "$entry"ViewController_"$customer" : "$entry"ViewController_"$customerErp" {\r\r}")
            echo "Create "$customer" (customer)"
            echo $content > $entry/Overrides/App/$entry"ViewController-"$customer".swift"
        fi

    done # customers

    echo "--------------------------------"

    for erp in ${erps[@]}; do

        containsERP=0
        for file in `ls $entry/Overrides/ERP`; do
            erpName=${file//*_/}
            erpName=${erpName//.swift/}

            if [[ "$erp" == "$erpName" ]]; then
                containsERP=1
            fi
        done # files

        #Create file in /ERP
        if [[ $containsERP == 0 ]]; then
            content=$(printf "\rimport UIKit\r\rclass "$entry"ViewController_"$erp" : "$entry"ViewController {\r\r}")
            echo "Create "$erp" (ERP)"
            echo $content > $entry/Overrides/ERP/$entry"ViewController_"$erp".swift"
        fi

    done

    echo ""
    echo "##########################"
    echo ""

done #entries
# End Check ViewControllers









# Check Controllers
cd ../Controllers
for entry in `ls $search_dir`; do
    echo "Entry : " $entry

    for customer in ${customers[@]}; do
        #echo "Customer : "$customer "| ERP = "${customerByERP[$customer]}

        containsApp=0
        for file in `ls $entry/Overrides/App`; do
            customerName=${file//*-/}
            customerName=${customerName//.swift/}

            if [[ "$customer" == "$customerName" ]]; then
                containsApp=1
            fi
        done # files

        #Create file in /App
        if [[ $containsApp == 0 ]]; then
            customerErp=${customerByERP[$customer]}

            content=$(printf "\rimport Foundation\r\rclass "$entry"Controller_"$customer" : "$entry"Controller_"$customerErp" {\r\r}")
            echo "Create "$customer" (customer)"
            echo $content > $entry/Overrides/App/$entry"Controller-"$customer".swift"
        fi

        done # customers

        echo "--------------------------------"

        for erp in ${erps[@]}; do

            containsERP=0
            for file in `ls $entry/Overrides/ERP`; do
            erpName=${file//*_/}
            erpName=${erpName//.swift/}

            if [[ "$erp" == "$erpName" ]]; then
                containsERP=1
            fi
        done # files

        #Create file in /ERP
        if [[ $containsERP == 0 ]]; then
            content=$(printf "\rimport Foundation\r\rclass "$entry"Controller_"$erp" : "$entry"Controller {\r\r}")
            echo "Create "$erp" (ERP)"
            echo $content > $entry/Overrides/ERP/$entry"Controller_"$erp".swift"
        fi

    done

    echo ""
    echo "##########################"
    echo ""

done #entries
# End Check Controllers
