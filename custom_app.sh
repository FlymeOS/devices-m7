#!/bin/bash


apkBaseName=$1
tempSmaliDir=$2


if [ "$apkBaseName" = "FlymeLauncher" ];then
        echo ">>> in custom_app for $apkBaseName to add lg vendor camera in the folder"
        sed -i '/<favorite launcher:className="com.meizu.feedback.activity.MainActivity" launcher:packageName="com.meizu.feedback" \/>/a\<favorite launcher:className="com.htc.camera.CameraEntry" launcher:packageName="com.htc.camera" \/>' $tempSmaliDir/res/xml/default_workspace.xml

fi
