#!/bin/bash

rawdata_path="/files/magenta/rawdata"
scripts_path="/home/jupyter-andres/MAGENTA/scripts"

#mkdir -p $rawdata_path/{rhizosphere,sediment,wetland,soil}
#mkdir $scripts_path/run_info

chmod a+x $scripts_path/download_sediment_script.sh $scripts_path/download_wetland_script.sh $scripts_path/download_rhizosphere_script.sh $scripts_path/download_soil_script.sh
 
cd $rawdata_path/rhizosphere && nohup sh $scripts_path/download_rhizosphere_script.sh > $scripts_path/run_info/rhizosphere_nohup 2>&1 &

#cd $rawdata_path/wetland && nohup sh $scripts_path/download_wetland_script.sh > $scripts_path/run_info/wetland_nohup 2>&1 &

cd $rawdata_path/sediment && nohup sh $scripts_path/download_sediment_script.sh > $scripts_path/run_info/sediment_nohup 2>&1 &

cd $rawdata_path/soil && nohup sh $scripts_path/download_soil_script.sh > $scripts_path/run_info/soil_nohup 2>&1 &

