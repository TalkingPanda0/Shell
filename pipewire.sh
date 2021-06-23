#!/bin/sh
SPA_PLUGIN_DIR=/mnt/DATA/Source/pipewire/build/spa/plugins \
PIPEWIRE_MODULE_DIR=/mnt/DATA/Source/pipewire/build/src/modules \
PATH=/mnt/DATA/Source/pipewire/build/src/examples:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-ndk:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl \
PIPEWIRE_CONFIG_DIR=/mnt/DATA/Source/pipewire/build/src/daemon \
ACP_PATHS_DIR=/mnt/DATA/Source/pipewire/spa/plugins/alsa/mixer/paths \
ACP_PROFILES_DIR=/mnt/DATA/Source/pipewire/spa/plugins/alsa/mixer/profile-sets \
 /mnt/DATA/Source/pipewire/build/src/daemon/pipewire-uninstalled
