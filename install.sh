#!/usr/bin/bash
# FFMPEG installtion script
# Last modification in 17 FEB 25
# After run this script the older version of ffmpeg inside /usr/bin/ffmpeg will be replaced by new version 

# Define the md5 calculated check sum for extracted file 
MD5_SUM="9a3a2318a1ee94beb004615982231f8c"

# Check if already installed 
if [ "$MD5_SUM" ==  "$(md5sum /usr/bin/ffmpeg | awk '{print $1}')" ]; then 
        echo "Already use the latest version"
        exit 0
fi

# Extract tar archive
tar -xf ffmpeg_7.1_static.tar.gz -C /usr/bin/ || { echo "Unable to extract file exting."; exit 1; }

# Make file executable 
chmod a+x /usr/bin/ffmpeg || { echo "Unable to set file as executable"; exit 1; }

# Vaildation the installtion 
if [ "$MD5_SUM" ==  "$(md5sum /usr/bin/ffmpeg | awk '{print $1}')" ]; then 
	echo "Installtion validation pass"
	exit 0
else 
	echo "Installtion validation failed"
	exit 1
fi
