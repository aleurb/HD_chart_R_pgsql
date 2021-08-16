-- title: CREATE Table - public.gates_lines_descr
-- v: 2021-08-16T1233 AU
-- URL: <https://sqlserverguides.com/postgresql-insert-into-table/>

DROP TABLE IF EXISTS public.gates_lines_descr
;

CREATE TABLE IF NOT EXISTS public.gates_lines_descr
(
-- # COLUMNS
  gate_id character varying(2) NOT NULL
, line_6p character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_6l character varying(40) COLLATE pg_catalog."default" NOT NULL
, line_6s character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_5p character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_5l character varying(40) COLLATE pg_catalog."default" NOT NULL
, line_5s character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_4p character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_4l character varying(40) COLLATE pg_catalog."default" NOT NULL
, line_4s character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_3p character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_3l character varying(40) COLLATE pg_catalog."default" NOT NULL
, line_3s character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_2p character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_2l character varying(40) COLLATE pg_catalog."default" NOT NULL
, line_2s character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_1p character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_1l character varying(40) COLLATE pg_catalog."default" NOT NULL
, line_1s character varying(400) COLLATE pg_catalog."default" NOT NULL
-- # CONSTRAINTS
, CONSTRAINT gates_lines_descr_pkey PRIMARY KEY (gate_id)
)

TABLESPACE pg_default
;

ALTER TABLE public.gates_lines_descr OWNER to postgres
;

COMMENT ON TABLE public.gates_lines_descr IS 'gates_lines_descr v0.1 20210816'
;
