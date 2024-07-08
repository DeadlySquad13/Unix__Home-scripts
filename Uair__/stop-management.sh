. ~/.bookmarks/home-scripts/Uair__/consts.sh

cat ${MANAGEMENT_PIDS_FILE} | xargs kill
# - rm socket file? Seems it gets deleted after killing.
rm ${MANAGEMENT_PIDS_FILE}
