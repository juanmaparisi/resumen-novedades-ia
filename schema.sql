-- Historial de noticias ya evaluadas, para no repetirlas en los próximos días.
CREATE TABLE IF NOT EXISTS novedades_vistas (
  link      TEXT PRIMARY KEY,
  titulo    TEXT,
  estado    TEXT NOT NULL,              -- 'enviado' o 'descartado'
  visto_en  TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_novedades_vistas_visto_en
  ON novedades_vistas (visto_en);
