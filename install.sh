# check if effective user id is 0 (root)

if [[ "$(id -u)" -eq 0 ]]; then
	echo "Script is running as root"
	# check if apt is package manager
		# install packages with apt
else
	echo "Script is not running as root, exiting..." 1>&2
	exit 1
fi
