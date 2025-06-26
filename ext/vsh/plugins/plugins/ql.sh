PLUGIN_NAME="Quality Life"
PLUGIN_AUTHOR="Jox0101011"

ql_clock() {
  echo "$(date '+%H:%M:%S')"
}

ql_banner() {
  figlet -c "QualityLife"
  echo ""
  echo ""
  echo "by: Jox0101011"
}

ql_help() {
  echo "usage:   "
  echo ""
  echo ""
  echo "ql_clock | ql_banner | ql_help"
}
