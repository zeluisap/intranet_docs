#!/bin/bash

cd /home/unifap-dds/projetos/intranet_sttrans
if [ $? -ne 0 ]; then
	exit 1
fi

		echo  -n "Copiando Arquivos para o Servidor ..."
		docker exec -ti intranet_sttrans_db bash -c "rm -rf /tmp/*"
		if [ $? -ne 0 ]; then
			exit 1
		fi

		docker cp intranet_sttrans_2019*.sql intranet_sttrans_db:/tmp/backup_intranet_sttrans.sql
		if [ $? -ne 0 ]; then
			exit 1
		fi

		echo "OK"

	echo -n "Importando banco ... ";
	docker exec -ti intranet_sttrans_db bash -c "mysql -u root -ps0laris < /tmp/backup_intranet_sttrans.sql";
	if [ $? -ne 0 ]; then
		exit 1
	fi

	echo "OK";


exit 0
