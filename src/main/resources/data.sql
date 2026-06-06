-- Inserindo Planos de Assinatura se não existirem
MERGE INTO PLANO p
USING (SELECT 'Básico' as nome, 50.0 as valor_mensalidade, 'Plano básico com recursos essenciais para pequenas propriedades' as descricao, 'ATIVO' as status FROM DUAL) src
ON (p.nome = src.nome)
WHEN NOT MATCHED THEN
  INSERT (id, nome, valor_mensalidade, descricao, status)
  VALUES (SQ_PLANO.NEXTVAL, src.nome, src.valor_mensalidade, src.descricao, src.status);

MERGE INTO PLANO p
USING (SELECT 'Intermediário' as nome, 100.0 as valor_mensalidade, 'Plano intermediário com análise preditiva' as descricao, 'ATIVO' as status FROM DUAL) src
ON (p.nome = src.nome)
WHEN NOT MATCHED THEN
  INSERT (id, nome, valor_mensalidade, descricao, status)
  VALUES (SQ_PLANO.NEXTVAL, src.nome, src.valor_mensalidade, src.descricao, src.status);

MERGE INTO PLANO p
USING (SELECT 'Avançado' as nome, 150.0 as valor_mensalidade, 'Plano avançado com integração IOT e IA completa' as descricao, 'ATIVO' as status FROM DUAL) src
ON (p.nome = src.nome)
WHEN NOT MATCHED THEN
  INSERT (id, nome, valor_mensalidade, descricao, status)
  VALUES (SQ_PLANO.NEXTVAL, src.nome, src.valor_mensalidade, src.descricao, src.status);

-- Inserindo Produtor Inicial se não existir (senha: senha123)
MERGE INTO PRODUTOR p
USING (SELECT 'João Fazendeiro' as nome, '111.222.333-44' as cpf, 'joao@fazenda.com' as email, '11999999999' as telefone, '$2b$12$XwZXvtJkdzQeLPpFsF4wXuo52p1AlauNg1EJQZ1dYS/Come06Aqle' as senha, 'ATIVO' as status, CURRENT_TIMESTAMP as data_cadastro FROM DUAL) src
ON (p.email = src.email)
WHEN NOT MATCHED THEN
  INSERT (id, nome, cpf, email, telefone, senha, status, data_cadastro)
  VALUES (SQ_PRODUTOR.NEXTVAL, src.nome, src.cpf, src.email, src.telefone, src.senha, src.status, src.data_cadastro);
