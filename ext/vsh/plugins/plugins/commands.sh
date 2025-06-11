PLUGIN_NAME="Commands Basics"
PLUGIN_AUTHOR="Jox0101011"

TEMPLATES=$HOME/.venompkg/templates/

help_menu() {
	command clear
	echo ""
	echo "Welcome to Vesh-0.4 !"
	echo ""
	echo ""
	echo ""
	echo "by: jox0101011/emperor"
	sleep 1 && cat data/commands.txt
}

help_plugin() {
	echo "Vesh-0.4 !"
	echo "For add plugins:"
	echo "1- create your plugin using example base"
	echo "2- add in git"
	echo "3- clone to the path ext/vsh/plugins/your_plugin.sh"
	echo "4- use commands for test ;)"
}

clear() {
	command clear
}

banner() {
	figlet -f slant "PluginLoader"
	echo "official loader plugin"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo "by: jox0101011/emperor"
}
chat() {
	tgpt "$1"
}

list() {
	echo "[#] Templates:"
	find "$TEMPLATES" -type f
}
