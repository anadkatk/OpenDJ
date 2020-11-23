unzip /fr/DS-6.5.4.zip

bakDir=/fr/scriptsForMigration/bak


echo Done Unzip
#sleep 5



mv opendj amconfig

echo moved amconfig 
sleep 10 

/fr/amconfig/setup directory-server \
          --instancePath /fr/amconfig \
          --rootUserDn cn=Directory\ Manager \
          --rootUserPassword password \
          --hostname localhost \
          --adminConnectorPort 4444 \
          --ldapPort 1389 \
          --profile am-config:6.5.0 \
          --set am-config/amConfigAdminPassword:password \
	  --doNotStart \
	  --acceptLicense


#/fr/amconfig/bin/restore --offline --backupDirectory $bakDir/rootUser/	

#/fr/amconfig/bin/restore --offline --backupDirectory $bakDir/cfgStore/

#Restoring config file

#unzip -d / scriptsForMigration/backup-config-1604430082.zip 

