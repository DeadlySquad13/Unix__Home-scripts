# Creates the folder structure defined in folder structure section below
function createFolderStructure() {
     depth="1"
     while (( "$#" )); do
         while (( $1 != $depth )); do
             cd ..
             (( depth-- ))
         done
         shift
         mkdir "$1"
         cd "$1"
         (( depth++ ))
         shift
         shift
         out=""
         while [[ "$1" != "-" ]]; do
             out=$out" ""$1"
             shift
         done
         shift
         echo "$out" > README.md
     done
     while (( 1 != $depth )); do
         cd ..
         (( depth-- ))
     done
}

# If you like you can read in user defined values here and use them as variables in the folder structure section, e.g.
# echo -n "Enter month of films"
# read month
# ...
# 1 shared - Folder for shared stuff -
#    2 $month - Films from month $month - 
#       3 projects - Folder for projects -
# ... 

# Folder Structure Section
read -r -d '' FOLDERSTRUCTURE << EOM
1 shared - Shared stuff -
     2 projects - Projects -
          3 movies - Movies -
                4 action - Action movies -
     2 series - Series -
     2 backup - Backup folder -
EOM

createFolderStructure $FOLDERSTRUCTURE
