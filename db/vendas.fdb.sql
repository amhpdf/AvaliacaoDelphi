SET SQL DIALECT 3

CREATE DATABASE 'localhost:C:\Desen\Delphi\crud-01\db\vendas.fdb'
USER 'SYSDBA' PASSWORD '**********'
PAGE_SIZE 4096
DEFAULT CHARACTER SET WIN1252;


/* Tables */
CREATE TABLE "cliente" (
  "id"        INTEGER NOT NULL,
  "nome"      VARCHAR(100) NOT NULL,
  "cpf"       VARCHAR(20) NOT NULL,
  "telefone"  VARCHAR(20)
);

CREATE TABLE "fornecedor" (
  "id"        INTEGER NOT NULL,
  "nome"      VARCHAR(100) NOT NULL,
  "cnpj"      VARCHAR(20) NOT NULL,
  "telefone"  INTEGER
);

CREATE TABLE "grupo" (
  "id"         INTEGER NOT NULL,
  "descricao"  VARCHAR(100) NOT NULL
);

CREATE TABLE "produto" (
  "id"         INTEGER NOT NULL,
  "descricao"  VARCHAR(100) NOT NULL,
  "id_grupo"   INTEGER NOT NULL
);
COMMIT;

/* Constraints */
ALTER TABLE "cliente"
  ADD PRIMARY KEY ("id");

ALTER TABLE "fornecedor"
  ADD PRIMARY KEY ("id");

ALTER TABLE "grupo"
  ADD PRIMARY KEY ("id");

ALTER TABLE "produto"
  ADD PRIMARY KEY ("id");

/* Triggers */
SET TERM ^ ;
CREATE TRIGGER "cliente_BI" FOR "cliente"
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  IF (NEW."id" IS NULL) THEN
  NEW."id" = GEN_ID("GEN_cliente_ID",1);
END^

CREATE TRIGGER "fornecedor_BI" FOR "fornecedor"
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  IF (NEW."id" IS NULL) THEN
  NEW."id" = GEN_ID("GEN_fornecedor_ID",1);
END^

CREATE TRIGGER "grupo_BI" FOR "grupo"
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  IF (NEW."id" IS NULL) THEN
  NEW."id" = GEN_ID("GEN_grupo_ID",1);
END^

CREATE TRIGGER "produto_BI" FOR "produto"
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  IF (NEW."id" IS NULL) THEN
  NEW."id" = GEN_ID("GEN_produto_ID",1);
END^
SET TERM ; ^
