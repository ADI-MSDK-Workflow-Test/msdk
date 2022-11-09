# CHANGED_FILES=$(git diff --ignore-submodules --name-only remotes/origin/main '*_regs.h')

CHANGED_FILES="./Libraries/CMSIS/Device/Maxim/gcr_regs.h"
#"Libraries/CMSIS/Device/Maxim/MAX32662/Include/adc_regs.h" "Libraries/CMSIS/Device/Maxim/MAX32662/Include/msradc_regs.h")
EFFECTED_PARTS=()

echo ${CHANGED_FILES#./*/}
echo ${CHANGED_FILES#*/}
echo ${CHANGED_FILES##/*}
echo ${CHANGED_FILES##*/}


echo ${CHANGED_FILES%/*}
echo ${CHANGED_FILES%*/}
echo ${CHANGED_FILES%%/*}
echo ${CHANGED_FILES%%*/}

text="TEXTtesting"

echo ${text,,}


# declare -A PART_DIE_NAMES

# PART_DIE_NAMES[MAX78000]=AI85
# PART_DIE_NAMES[MAX78002]=AI87
# PART_DIE_NAMES[MAX32520]=ES17
# PART_DIE_NAMES[MAX32650]=ME10
# PART_DIE_NAMES[MAX32660]=ME11
# PART_DIE_NAMES[MAX32662]=ME12
# PART_DIE_NAMES[MAX32570]=ME13
# PART_DIE_NAMES[MAX32665]=ME14
# PART_DIE_NAMES[MAX32670]=ME15
# PART_DIE_NAMES[MAX32675]=ME16
# PART_DIE_NAMES[MAX32655]=ME17
# PART_DIE_NAMES[MAX32690]=ME18
# PART_DIE_NAMES[MAX32680]=ME20
# PART_DIE_NAMES[MAX32672]=ME21

# # echo ${PART_DIE_NAMES[@]}

# PARTS_LIST=""

# for part in ${CHANGED_FILES}
# do
#     # echo ${part}
#     PART=${part#*/Maxim/}
#     PART=${PART%%/*} 
    
#     # Don't add duplicate EFFECTED_PARTS
#     if [[ ! "${EFFECTED_PARTS[*]}" =~ "${PART}" ]]; then
#         EFFECTED_PARTS+=("$PART")
#         # echo ${PART_DIE_NAMES[$PART]}

#         # Add space to list
#         if [[ ! -z "$PARTS_LIST" ]]; then
#             PARTS_LIST+=" "
#         fi
#         PARTS_LIST+="${PART_DIE_NAMES[$PART]}"
#     fi
    
# done

# echo $PARTS_LIST
    
# echo ${EFFECTED_PARTS[*]}








        
          # # Compare differences for all updated register files.
          # for reg_h_file in ${CHANGED_FILES}
          # do
          #   # Get register file name only. Remove path.
          #   diff_register_file=${reg_h_file%/*}
            
          #   # Removing (prefix) path to [CHIP_NAME]/Include/*_regs.h
          #   CHIP_NAME=${reg_h_file#*/Maxim/}
          #   # Remove (suffix) following path /Include/*_regs.h to get the [CHIP_NAME]
          #   CHIP_NAME=${CHIP_NAME%%/*}
            
          #   DIE_NAME="${CHIP_DIE_NAME[$CHIP_NAME]}
            
          #   svd_register_file=${{ env.MSDK-INTERNAL_DIR }}/SVD/Devices/${DIE_NAME}/${reg_h_file%/*}
          #   echo "Comparing SVD: $svd_register_file with Diff: $diff_register_file"
            
          #   # Compare changed register file with the generated register file.
          #   # If different, then check fails
          #   if [[diff reg_h_file r]]; then
          #     exit
          #   fi
          # done





# echo $CHANGE_FILES

# IFS=/ read -ra x <<< "$CHANGE_FILES"

# echo 

# while IFS=/ read -r y
# do
    
#     for part in ${EFFECTED_PARTS}
#     do
#         if [[ "${ ]]

#         fi 
#     done
#     EFFECTED_PARTS+=("$y")
# done <<< "${x[@]}"

# echo ${y[@]}
