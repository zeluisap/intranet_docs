-- serviços que serão mantidos
select *
from transporte_grupo
where lower(chave) not in (
    'taxi', 'lmt', 'l.m.', 'l', 't.c.p.', 'carga', 'cargaperigosa', 'carga indivisivel', 'ptf', 'tmtx',
    'pv', 'p', 'es', 'escolar'
    )
order by descricao;

-- serviços mantidos agrupados por transporte
select tg.id_transporte_grupo, tg.chave, tg.descricao, count(t.id_transporte) as registros
from transporte_grupo tg
    left outer join transporte t on tg.id_transporte_grupo = t.id_transporte_grupo
where lower(tg.chave) not in (
    'taxi', 'lmt', 'l.m.', 'l', 't.c.p.', 'carga', 'cargaperigosa', 'carga indivisivel', 'ptf', 'tmtx',
    'pv', 'p', 'es', 'escolar',
    'ob', 'turismo'
    )
group by tg.id_transporte_grupo, tg.chave, tg.descricao
order by tg.descricao;

-- serviços agrupados
select s.id_servico, s.codigo, s.descricao, sr.descricao as vinculado_a, tg.descricao as grupo, v.valor, count(ss.id_servico_solicitacao) as registros
from servico s
    left outer join servico_transporte_grupo stg on s.id_servico = stg.id_servico
    left outer join transporte_grupo tg on stg.id_transporte_grupo = tg.id_transporte_grupo
    left outer join valor v on stg.id_valor = v.id_valor
    left outer join servico_referencia sr on s.id_servico_referencia = sr.id_servico_referencia
    left outer join servico_solicitacao ss on stg.id_servico_transporte_grupo = ss.id_servico_transporte_grupo
where
      (lower(s.descricao) like '%cert%') or (lower(s.descricao) like '%feg%')
and (lower(s.codigo) not in (
    'aueca', 'auitx', 'amca', 'amcp', 'apca', 'autretax', 'cm', 'cp'
    ))
group by s.id_servico, s.codigo, s.descricao, sr.descricao, tg.descricao, v.valor
order by s.descricao, sr.descricao, tg.descricao;

-- listagem de serviços
select s.id_servico, s.codigo, s.descricao, count(ss.id_servico_solicitacao) as registros
from servico s
    left outer join servico_transporte_grupo stg on s.id_servico = stg.id_servico
    left outer join servico_solicitacao ss on stg.id_servico_transporte_grupo = ss.id_servico_transporte_grupo
group by s.id_servico, s.codigo, s.descricao
order by s.descricao

-- listagem de veículos vinculados a transporte
select vt.descricao, v.placa
from transporte_veiculo tv
    inner join veiculo v on tv.id_veiculo = v.id_veiculo
    inner join veiculo_tipo vt on v.id_veiculo_tipo = vt.id_veiculo_tipo
    inner join transporte t on tv.id_transporte = t.id_transporte
    inner join transporte_grupo tg on t.id_transporte_grupo = tg.id_transporte_grupo
where lower(tg.chave) = 'fretamento'
and (lower(vt.descricao = 'automovel'))
order by vt.descricao;


select tg.id_transporte_grupo, tg.descricao as transporte_grupo, count(t.id_transporte) as transportes
from transporte_grupo tg
    left outer join transporte t on tg.id_transporte_grupo = t.id_transporte_grupo
group by tg.id_transporte_grupo, tg.descricao
order by tg.descricao


-- listagem dos serviços definidos como (emite_documento = true)
select tg.descricao as transporte_grupo, s.*
from servico s
    left outer join servico_transporte_grupo stg on s.id_servico = stg.id_servico
    left outer join transporte_grupo tg on stg.id_transporte_grupo = tg.id_transporte_grupo
where (lower(s.codigo) in (
    'lt', 'aueca', 'auitx', 'amca', 'amcp', 'apca', 'autretax', 'autsf', 'ca', 'cm', 'cp',
     'c.t.', 'd.p.c.', 'deicms', 'deipi', 'deipva', 't.aut.'
))
order by s.descricao;
