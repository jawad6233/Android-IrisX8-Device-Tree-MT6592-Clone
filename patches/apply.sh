#!/bin/bash

 cd ../../../..
 cd android_system/core
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_android_system_core_MTK.patch
 
 cd ..
 cd bt
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_system_bt.patch
 
 cd ..
 cd netd
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_system_netd.patch
 
 cd ..
 cd sepolicy
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_system_sepolicy_MTK.patch
 
 cd ..
 cd vold
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_system_vold.patch
 
 cd ../..
 cd android_frameworks/av
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_frameworks_av.patch
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_frameworks_av_2.patch
 
 cd ..
 cd base
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_frameworks_base.patch
 
 cd ..
 cd native
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_frameworks_native_MTK.patch
 
 cd ..
 cd opt/telephony
 patch -p1 < ../../../device/LAVA/IRISX8/patches/android_frameworks_opt_telephony.patch
 cd ../../..
 
 cd external/icu
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_external_icu.patch
 cd ..
 
 cd wpa_supplicant_8
 patch -p1 < ../../device/LAVA/IRISX8/patches/android_external_wpa_supplicant_8.patch
 
 cd ../..
 cd packages/apps/FMRadio
 patch -p1 < ../../../device/LAVA/IRISX8/patches/android_packages_apps_FMRadio.patch
 
 cd ../../..
 cd vendor/codeaurora/telephony
 patch -p1 -p1 < ../../../device/LAVA/IRISX8/patches/android_vendor_codeaurora_telephony.patch
 
 cd ../../..
 cd packages/services/Telephony
 patch -p1 -p1 < ../../../device/LAVA/IRISX8/patches/android_packages_services_Telephony.patch
 cd ../../..
 
 
 echo Successfuly patched!