CREATE TABLE PRODUTO (ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                    NOME VARCHAR(30),
                    TIPO VARCHAR(30),
                    MARCA VARCHAR2(30));
DECLARE
    v_nome  produto.nome%TYPE := 'MOUSE';
    v_tipo  produto.tipo%TYPE := 'PERIFÉRICO';
    v_marca produto.marca%TYPE := 'DELL';
BEGIN
    INSERT INTO produto (
        nome,
        tipo,
        marca
    ) VALUES (
        v_nome,
        v_tipo,
        v_marca
    );
    
    COMMIT;
END;
