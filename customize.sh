#!/system/bin/sh
echo "Running customize.sh" >> /data/local/tmp/magisk_module.log

# bomb splash
echo "
 ___________  _______    _______  _______   ___       _______   _______  ___  ___   
("     _   ")/"      \  /"     "||   _  "\ |"  |     /"     "| /"     "||"  \/"  |  
 )__/  \\__/|:        |(: ______)(. |_)  :)||  |    (: ______)(: ______) \   \  /   
    \\_ /   |_____/   ) \/    |  |:     \/ |:  |     \/    |   \/    |    \\  \/    
    |.  |    //      /  // ___)_ (|  _  \\  \  |___  // ___)_  // ___)    /   /     
    \:  |   |:  __   \ (:      "||: |_)  :)( \_|:  \(:      "|(:  (      /   /      
     \__|   |__|  \___) \_______)(_______/  \_______)\_______) \__/     |___/       
                                                                                    
 _______  ___  ___       ________  _______    _______  ___      ___       ___  ___  
|   _  "\|"  \/"  |     /"       )|   __ "\  /"     "||"  |    |"  |     |"  \/"  | 
(. |_)  :)\   \  /     (:   \___/ (. |__) :)(: ______)||  |    ||  |      \   \  /  
|:     \/  \\  \/       \___  \   |:  ____/  \/    |  |:  |    |:  |       \\  \/   
(|  _  \\  /   /         __/  \\  (|  /      // ___)_  \  |___  \  |___    /   /    
|: |_)  :)/   /         /" \   :)/|__/ \    (:      "|( \_|:  \( \_|:  \  /   /     
(_______/|___/         (_______/(_______)    \_______) \_______)\_______)|___/      
                                                                                    
"

# Notifying user that installation has been started
echo "Installation started..."
# Set permissions for system.prop
MODPATH=$NVBASE/modules/treblefy
set_perm $MODPATH/system.prop 0 0 0644

# Execute the optimizer by KelvinCrag
su -c "cmd package bg-dexopt-job"

# Aaaand... it's done.
echo "Module installation finished, i hope you will have a great experience with it! Reboot to apply all changes!"
