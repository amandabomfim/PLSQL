CREATE TABLE produto2 (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(30),
    tipo VARCHAR(30),
    marca VARCHAR2(30)
);

CREATE OR REPLACE PROCEDURE SP_INSERT_PRODUTO(
    v_nome  produto2.nome%TYPE,
    v_tipo  produto2.tipo%TYPE,
    v_marca produto2.marca%TYPE)
    AS
BEGIN
    INSERT INTO produto2 (
        nome,
        tipo,
        marca
    ) VALUES (
        v_nome,
        v_tipo,
        v_marca
    );

    COMMIT;
END SP_INSERT_PRODUTO;

SELECT * FROM PRODUTO2
