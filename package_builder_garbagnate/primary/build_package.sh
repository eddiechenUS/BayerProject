#!/bin/bash

ant

7z a "BayerPerfDb_Garbagnate_Primary_$(cat metadata.xml | grep -Po 'packageVersion=\"\K([0-9\.]+)').zip" Entities/ metadata.xml
