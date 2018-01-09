#!/bin/bash

 cd ../../../..
 cd external/icu
 patch -p1 < ../../device/LAVA/IRISX8/Patch/android_external_icu
 
 cd ../..
 cd system/vold
 patch -p1 < ../../device/LAVA/IRISX8/Patch/android_system_vold.patch
 
 cd ../..
 cd frameworks/av
 patch -p1 < ../../device/LAVA/IRISX8/Patch/android_frameworks_av.patch
 
 cd ..
 cd base
 patch -p1 < ../../device/LAVA/IRISX8/Patch/android_frameworks_base.patch
 
 cd ../..
 cd packages/apps/FMRadio
 patch -p1 < ../../../device/LAVA/IRISX8/Patch/android_packages_apps_FMRadio.patch
 
 cd ../../..
 cd packages/services/Telephony
 patch -p1 -p1 < ../../../device/LAVA/IRISX8/Patch/android_packages_services_Telephony.patch
 cd ../../..
 
 
 echo Successfuly patched!
