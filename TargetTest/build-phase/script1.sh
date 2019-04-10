
#customers=("Bedague" "Berthelot" "Bistrocash" "Forez" "LEDG" "Milliet" "Ouest" "Pietrini" "PNB" "Rouquette" "Proxy")
customers=("Bedague" "Milliet" "Bistrocash" "Forez")

cd TargetTest/Views
for entry in `ls $search_dir`; do
    echo "Entry : " $entry

    for customer in ${customers[@]}; do
        echo "Customer : "$customer

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
            echo "coucou" > $entry/Overrides/App/$entry"Controller-"$customer".swift"
        fi

    done # customers
    echo "--------------------------------"
done #entries


#    arrERP=()
#    for file in `ls $entry/Overrides/ERP`; do
#    arrERP+=($file)
#    done
#    echo ${arrERP[@]}
