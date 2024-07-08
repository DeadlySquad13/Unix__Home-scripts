. ~/.bookmarks/home-scripts/Uair__/consts.sh

uair --config ~/.bookmarks/home-configs/uair/work.toml --quiet &
# Get the most recently started process ID [get PID of a just started process](https://www.baeldung.com/linux/just-started-process-pid)|[Zotero](zotero://select/library/items/UD3GDWDD).
echo $! > ${MANAGEMENT_PIDS_FILE}
uairctl listen | yad --progress --no-buttons --css='* { font-size: 80px; }' &
echo $! >> ${MANAGEMENT_PIDS_FILE}
