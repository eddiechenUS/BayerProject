#!/bin/bash

ant

7z a "BayerPerfDb_Leverkusen_secondary_$(cat metadata.xml | grep -Po 'packageVersion=\"\K([0-9\.]+)').zip" Entities/ metadata.xml

