-- title: CREATE Table - public.gates_lines
-- v: 2021-08-12T2332 AU
-- URL: <https://sqlserverguides.com/postgresql-insert-into-table/>

DROP TABLE IF EXISTS public.gates_lines
;

CREATE TABLE IF NOT EXISTS public.gates_lines
(
-- # COLUMNS
  gate_id character varying(2) NOT NULL
, line_id char NULL
, gate_line_id character varying(4) NOT NULL
, gate_line_name character varying(255) COLLATE pg_catalog."default" NOT NULL
, gate_line_descr character varying(255) COLLATE pg_catalog."default" NOT NULL
-- # CONSTRAINTS
, CONSTRAINT gates_lines_pkey PRIMARY KEY (gate_line_id)
)

TABLESPACE pg_default
;

ALTER TABLE public.gates_lines OWNER to postgres
;

COMMENT ON TABLE public.gates_lines IS 'gates_lines v0.1 20210812'
;
