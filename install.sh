# check if effective user id is 0 (root)

if [[ "$(id -u)" -eq 0 ]]; then
	echo "Script is running as root"
	# check if apt is package manager
	# if apt is package manager and you run which apt it will specify a path to where its stored
		# install packages with apt
else
	echo "Script is not running as root, exiting..." 1>&2
	exit 1
fi
