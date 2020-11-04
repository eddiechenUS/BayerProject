#!/bin/bash

cd `dirname $0`

entitiesSourcePath=`realpath ../../Entities`
folders_list=(`ls --color=no -1 Entities`)

for folder in ${folders_list[@]}; do
    file_list=(`ls -1 --color=no "${entitiesSourcePath}/${folder}/" | grep -i xml`)
    for fileName in ${file_list[@]}; do
        echo ">> 'Entities/${folder}/${fileName}'"
        cp "${entitiesSourcePath}/${folder}/${fileName}" "./Entities/${folder}"
        status=(`svn status ./Entities/${folder}/${fileName}`)
        if [[ ${#status[@]} > 1 ]]; then
            modified=${status[0]}
            if [ "$modified" != "M" ] && [ "$modified" != "D" ]; then
                echo "REMOVE 'Entities/${folder}/${fileName}'"
                rm "./Entities/${folder}/${fileName}"
            fi
        fi
    done
done