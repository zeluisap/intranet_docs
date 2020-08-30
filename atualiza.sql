use intranet_sttrans;

-- atualização necessária no banco
update pessoa_juridica set sigla = 'lig_gas_agua' where id_pessoa_juridica = 255;
alter table cargo modify descricao varchar(100);

-- cria e atualiza campo emite_documento
alter table servico_transporte_grupo add emite_documento boolean;
update servico_transporte_grupo set emite_documento = false;
update servico_transporte_grupo
set emite_documento = true
where (id_servico in (
    select id_servico
    from servico
    where (lower(codigo) in (
                            'lt', 'aueca', 'auitx', 'amca', 'amcp', 'apca', 'autretax', 'autsf', 'ca', 'cm', 'cp',
                             'c.t.', 'd.p.c.', 'deicms', 'deipi', 'deipva', 't.aut.'))
    )
);
update servico set codigo = 'DPC' where id_servico = 144;
update servico set codigo = 'TAUT' where id_servico = 165;
update servico set codigo = 'CT' where lower(codigo) = 'c.t.';
