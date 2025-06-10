PLUGIN_NAME="Plugin Native"
PLUGIN_AUTHOR="Jox0101011"

plugin_add() {
	PLUGIN_LIST="$PLUGIN_DIR/corep/plugins.list"
	PLUGIN_DIR=$HOME/.venompkg/ext/vsh/plugins/corep/plugins.list
	repo="$1"
	user=$(echo "$repo" | cut -d'/' -f1)
	name=$(echo "$repo" | cut -d'/' -f2)
	if grep -q "$repo" "$PLUGIN_LIST" 2>/dev/null; then
		echo "this plugin: "$name" has exists! "
		return
	fi

	echo "Installing plugin..."
	git clone https://github.com/"$user"/"$name" "$PLUGIN_DIR/$name" &&
		echo "$repo" >>"$PLUGIN_LIST" &&
		echo "[+] Plugin Installed"
}

plugin_remove() {
	repo="$1"
	name="$(echo "$repo" | cut -d'/' -f2)"

	if grep -q "repo" "$PLUGIN_LIST" 2>/dev/null; then
		echo "Removing '$name'..."
		rm -rf "$PLUGIN_DIR/$name"
		grep -v "$repo" "$PLUGIN_LIST" >"$PLUGIN_LIST.tmp" && mv "$PLUGIN_LIST.tmp" "$PLUGIN_LIST"
		echo "[+] Removed: $name"
	else
		echo "[-] Plugin not found: $name"
	fi
}

plugin_list() {
	echo "Plugins Instaled:"
	cat "$PLUGIN_LIST" 2>/dev/null || echo "(nothing plugin)"
}

plugin() {
	case "$1" in
	add) plugin_add "$2" ;;
	remove) plugin_remove "$2" ;;
	list) plugin_list ;;
	*) echo "use: plugin {add|remove|list} user/repo" ;;
	esac
}
