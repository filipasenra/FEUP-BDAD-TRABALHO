-- Trigger: UpdateSalary
CREATE TRIGGER UpdateSalary
        BEFORE UPDATE OF prevencao
            ON Horario
      FOR EACH ROW
          WHEN NEW.prevencao = TRUE
BEGIN
    UPDATE Funcionario
       SET ordenado = ordenado + 50
     WHERE codigo = NEW.codigoFunc;
END;
