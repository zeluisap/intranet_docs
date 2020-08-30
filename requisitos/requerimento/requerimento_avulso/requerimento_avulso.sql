drop table if exists requerimento_avulso;
drop table if exists requerimento_itens;
drop table if exists requerimento_item;
drop table if exists requerimento;

CREATE TABLE `requerimento`
(
 `id_requerimento`      serial NOT NULL ,
 `numero`               integer NOT NULL ,
 `ano`                  integer NOT NULL ,
 `id_pessoa`            bigint unsigned NOT NULL REFERENCES `pessoa` (`id_pessoa`),
 `data_criacao`         date NOT NULL ,
 `hora_criacao`         time NOT NULL ,
 `situacao`             text NOT NULL ,
 `analise_usuario_id`   integer REFERENCES `usuario` (`id_usuario`),
 `data_analise`         date,
 `hora_analise`         time,
 `indeferimento_motivo` text,

PRIMARY KEY (`id_requerimento`)
);

CREATE TABLE `requerimento_item`
(
 `id_requerimento_item` serial NOT NULL ,
 `servico`              text NULL ,
 `id_requerimento`      integer NOT NULL REFERENCES `requerimento` (`id_requerimento`),
 `id_servico`           integer,
 `obs`                  text,
 `situacao`             text,
 `indeferimento_motivo` text,

PRIMARY KEY (`id_requerimento_item`)
);
