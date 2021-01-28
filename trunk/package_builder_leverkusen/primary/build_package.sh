#!/bin/bash

ant

zipFileName="BayerPerfDb_Leverkusen_$(cat metadata.xml | grep -Po 'packageVersion=\"\K([0-9\.]+)').zip"

7z a "${zipFileName}" Entities/ metadata.xml

mv "${zipFileName}" ../builds

status=(`svn status ../builds/${zipFileName}`)
if [[ ${#status[@]} > 1 ]]; then
	modified=${status[0]}
	if [ "$modified" == "?" ]; then
		svn add "../builds/${zipFileName}"
	fi
fi

