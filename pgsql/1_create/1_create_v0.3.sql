-- title: CREATE Table - public.gates_lines_descr
-- v: 2021-08-16T1305 AU
-- URL: <https://sqlserverguides.com/postgresql-insert-into-table/>


DROP TABLE IF EXISTS public.gates_lines_descr
;


CREATE TABLE IF NOT EXISTS public.gates_lines_descr
(
-- # COLUMNS
  gate_id character varying(2) NOT NULL
, line_id character varying(2) NOT NULL
, gate_line_id character varying(4) NOT NULL
, line_name character varying(40) COLLATE pg_catalog."default" NOT NULL
, line_detriment character varying(400) COLLATE pg_catalog."default" NOT NULL
, line_exalted character varying(400) COLLATE pg_catalog."default" NOT NULL
-- # CONSTRAINTS
, CONSTRAINT gates_lines_descr_pkey PRIMARY KEY (gate_line_id)
)

TABLESPACE pg_default
;

ALTER TABLE public.gates_lines_descr OWNER to postgres
;

COMMENT ON TABLE public.gates_lines_descr IS 'gates_lines_descr v0.3 20210816'
;
