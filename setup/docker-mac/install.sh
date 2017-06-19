set -e

if [[ $(uname -s) == "Darwin" ]]; then

	if [ ! -d "/Applications/Docker.app" ]; then
		echo
		printf "Downloading Docker for Mac..."
		curl -sSO https://download.docker.com/mac/stable/Docker.dmg
		echo "done"

		printf "Mounting Docker image..."
		hdiutil attach -quiet Docker.dmg
		echo "done"

		printf "Copying Docker for Mac files..."
		cp -R /Volumes/Docker/Docker.app /Applications
		echo "done"

		printf "Unmounting image..."
		hdiutil detach /Volumes/Docker
		echo "done"

		printf "Cleaning up..."
		rm Docker.dmg
		echo "done"

		echo
		echo "Successfully installed Docker for Mac"
	else
		echo "Docker for Mac already found, skipping"
	fi

fi
