#!/usr/bin/env bash
echo "RUN checkProjectTemplate SCRIPT"

declare -A customerByERP
customerByERP+=(["Bedague"]="ABL" ["Berthelot"]="ABL" ["Bistrocash"]="Cambos" ["Forez"]="Prios" ["LEDG"]="Odoo" ["Milliet"]="Cambos" ["Ouest"]="ABL" ["Pietrini"]="Serca" ["PNB"]="Prios" ["Rouquette"]="ABL" ["Proxi"]="ABL")

erps=("ABL" "Serca" "Odoo" "Prios" "Cambos")
customers=("Bedague" "Berthelot" "Bistrocash" "Forez" "LEDG" "Milliet" "Ouest" "Pietrini" "PNB" "Rouquette" "Proxi")

if [[ ${#customers[@]} != ${#customerByERP[@]} ]]; then
    echo "customerByERP and customers array doesn't match !!"
    exit N
fi

#Check Controllers
cd TargetTest/Views
for entry in `ls $search_dir`; do

    for customer in ${customers[@]}; do

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
            echo "Create "$customer" (customer) in Views/"$entry"/Overrides/App"
            echo $content > $entry/Overrides/App/$entry"Controller-"$customer".swift"
        fi

    done # customers

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
            echo "Create "$erp" (ERP) in Views/"$entry"/Overrides/ERP"
            echo $content > $entry/Overrides/ERP/$entry"Controller_"$erp".swift"
        fi

    done

done #entries
#END Check ViewControllers






#Check Models
cd ../Models
for entry in `ls $search_dir`; do

    for customer in ${customers[@]}; do

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
            echo "Create "$customer" (customer) in Models/"$entry"/Overrides/App"
            echo $content > $entry/Overrides/App/$entry"Controller-"$customer".swift"
        fi

    done # customers

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
            echo "Create "$erp" (ERP) in Models/"$entry"/Overrides/ERP"
            echo $content > $entry/Overrides/ERP/$entry"Controller_"$erp".swift"
        fi

    done

done #entries
#END Check Models
