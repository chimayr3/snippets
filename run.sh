# _die : print error message and exit program
function _die() {
  echo "ERROR: ${*}"
  exit 99
}

# _run : execute command and show status
function _run() {
  ${*} >/dev/null 2>&1; RC="${?}"
  if [ "${RC}" = '0' ] ; then
    echo "Exec [${*}] Successfully"
  else
    _die "Command [${*}] failed with error code ${RC}"
  fi
  exit 0
}
