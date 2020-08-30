#!/bin/bash

cd /home/unifap-dds/projetos/intranet_sttrans
if [ $? -ne 0 ]; then
	exit 1
fi

if [ "$1" = "banco" ] || [ "$1" = "so_banco" ]; then

	if [ "$2" = "copy" ]; then
		echo  -n "Copiando Arquivos para o Servidor ..."
		docker exec -ti intranet_sttrans_db bash -c "rm -rf /tmp/*"
		if [ $? -ne 0 ]; then
			exit 1
		fi

		docker cp intranet_sttrans_2019*.sql intranet_sttrans_db:/tmp/backup_intranet_sttrans.sql
		if [ $? -ne 0 ]; then
			exit 1
		fi

		docker cp atualiza.sql intranet_sttrans_db:/tmp/atualiza.sql
		if [ $? -ne 0 ]; then
			exit 1
		fi
		echo "OK"
	fi

	echo -n "Importando banco ... ";
	docker exec -ti intranet_sttrans_db bash -c "mysql -u root -ps0laris < /tmp/backup_intranet_sttrans.sql";
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_db bash -c "mysql -u root -ps0laris < /tmp/atualiza.sql";
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c encoding -t"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	echo "OK";

fi

if [ "$1" != "so_banco" ]; then

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c migracao -p migrar_pj_carga"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c migracao -p solicitacoes_inconsistentes"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c migracao"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c dividir_carga"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c dividir_carga -p migrar_motoristas"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c remover_transporte"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c reagrupa"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c reagrupa -p excluir"
	if [ $? -ne 0 ]; then
		exit 1
	fi

	docker exec -ti intranet_sttrans_site bash -c "cd /var/www/html/application && php proc.php -c migracao -p carteira"
	if [ $? -ne 0 ]; then
		exit 1
	fi
fi

exit 0
