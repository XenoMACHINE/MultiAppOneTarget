#!/usr/bin/env bash
#exit

declare -A customerByERP
customerByERP+=(["Bedague"]="ABL" ["Forez"]="Prios" ["Milliet"]="Cambos" ["Bistrocash"]="Cambos") #TODO Fill all

erps=("ABL Prios Cambos") #"ABL Serca Serig Odoo Prios Cambos"
customers=("Bedague" "Milliet" "Bistrocash" "Forez")
#customers=("Bedague" "Berthelot" "Bistrocash" "Forez" "LEDG" "Milliet" "Ouest" "Pietrini" "PNB" "Rouquette" "Proxy")

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

            content=$(printf "\rimport Foundation\r\rclass "$entry"Controller_"$customer" : "$entry"Controller_"$customerErp" {\r\r}")
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
            echo $content > $entry/Overrides/ERP/$entry"Controller_"$erp".swift"
        fi

    done

    echo ""
    echo "##########################"
    echo ""

done #entries


#    arrERP=()
#    for file in `ls $entry/Overrides/ERP`; do
#    arrERP+=($file)
#    done
#    echo ${arrERP[@]}
