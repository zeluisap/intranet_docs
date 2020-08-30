#!/bin/bash
data_atual=`date +%Y%m%d%H%M%S`

cd /home/zeluis/projetos/intranet_sttrans
if [ $? -ne 0 ]; then
	exit 1
fi

echo -n "Efetuando Backup do Servidor"
ssh root@zrsites.com.br -t 'docker exec intranet_sttrans_db bash -c "mysqldump -u root -ps0laris --add-drop-database --databases intranet_sttrans > /tmp/intranet_sttrans_'$data_atual'.sql"';
if [ $? -ne 0 ]; then
	exit 1
fi

ssh root@zrsites.com.br -t 'docker cp intranet_sttrans_db:/tmp/intranet_sttrans_'$data_atual'.sql .' 
if [ $? -ne 0 ]; then
	exit 1
fi

echo -n "Baixando backup"
scp root@zrsites.com.br:intranet_sttrans_$data_atual.sql ./intranet_sttrans.sql
if [ $? -ne 0 ]; then
	exit 1
fi

docker cp intranet_sttrans.sql intranet_sttrans_db:/tmp/intranet_sttrans.sql
if [ $? -ne 0 ]; then
	exit 1
fi

echo -n "Restaurando ..."
docker exec -ti intranet_sttrans_db bash -c "mysql -u root -ps0laris < /tmp/intranet_sttrans.sql";
if [ $? -ne 0 ]; then
	exit 1
fi

echo -n "... OK!"

exit 0
