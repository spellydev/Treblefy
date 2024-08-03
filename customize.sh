#!/system/bin/sh
echo "Running customize.sh" >> /data/local/tmp/magisk_module.log

# Thanking the user. thank you btw
echo "Welcome to Treblefy by Spelly! Grab a glass of water and relax while i do the magic!"

# Set permissions for system.prop
MODPATH=$NVBASE/modules/treblefy
set_perm $MODPATH/system.prop 0 0 0644

# Execute the optimizer by KelvinCrag
su -c "cmd package bg-dexopt-job"

# Aaaand... it's done.
echo "Module installation finished, i hope you will have a great experience with it!"