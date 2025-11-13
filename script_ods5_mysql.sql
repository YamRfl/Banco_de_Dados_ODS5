-- Cria o banco de dados se ele não existir
CREATE DATABASE IF NOT EXISTS ods5;

-- Seleciona o banco de dados para uso
USE ods5;

-- --- Tabela 1: TrabalhoDomestico_Cuidados ---

CREATE TABLE IF NOT EXISTS TrabalhoDomestico_Cuidados (
    id_trabalho INT AUTO_INCREMENT PRIMARY KEY,  
    ano INT NOT NULL,
    sexo VARCHAR(10) NOT NULL,                   -- 'Homem' ou 'Mulher'
    media_horas_semana DECIMAL(5,2) NOT NULL,    -- média de horas semanais dedicadas
    raca_cor VARCHAR(30) NULL,                   -- 'Branca', 'Preta ou Parda', etc.
    unidade_federativa VARCHAR(50) NULL,         -- Estado, Região ou 'Brasil'
    fonte VARCHAR(100) DEFAULT 'IBGE - PNAD Contínua',
    observacoes TEXT NULL
);

-- Inserções iniciais (Dados de 2022)
INSERT INTO TrabalhoDomestico_Cuidados (ano, sexo, media_horas_semana, raca_cor, unidade_federativa, observacoes)
VALUES
-- Dados totais por sexo (Brasil - 2022)
(2022, 'Homem', 5.6, NULL, 'Brasil', 'Total de horas em afazeres domésticos e cuidados - PNAD 2022'),
(2022, 'Mulher', 11.7, NULL, 'Brasil', 'Total de horas em afazeres domésticos e cuidados - PNAD 2022'),
-- Dados por faixa etária - Homens
(2022, 'Homem', 2.8, NULL, 'Brasil', 'Faixa etária: 14 a 24 anos'),
(2022, 'Homem', 5.7, NULL, 'Brasil', 'Faixa etária: 25 a 49 anos'),
(2022, 'Homem', 7.1, NULL, 'Brasil', 'Faixa etária: 50 anos ou mais'),
-- Dados por faixa etária - Mulheres
(2022, 'Mulher', 8.0, NULL, 'Brasil', 'Faixa etária: 14 a 24 anos'),
(2022, 'Mulher', 12.6, NULL, 'Brasil', 'Faixa etária: 25 a 49 anos'),
(2022, 'Mulher', 13.0, NULL, 'Brasil', 'Faixa etária: 50 anos ou mais'),
-- Dados por raça/cor - Homens
(2022, 'Homem', 5.2, 'Branca', 'Brasil', 'Total por raça/cor'),
(2022, 'Homem', 5.9, 'Preta ou Parda', 'Brasil', 'Total por raça/cor'),
(2022, 'Homem', 4.8, 'Outras', 'Brasil', 'Total por raça/cor'),
-- Dados por raça/cor - Mulheres
(2022, 'Mulher', 11.2, 'Branca', 'Brasil', 'Total por raça/cor'),
(2022, 'Mulher', 12.0, 'Preta ou Parda', 'Brasil', 'Total por raça/cor'),
(2022, 'Mulher', 10.8, 'Outras', 'Brasil', 'Total por raça/cor'),
-- Dados regionais - Homens
(2022, 'Homem', 5.3, NULL, 'Norte', 'Média regional'),
(2022, 'Homem', 5.5, NULL, 'Nordeste', 'Média regional'),
(2022, 'Homem', 5.8, NULL, 'Sudeste', 'Média regional'),
(2022, 'Homem', 5.7, NULL, 'Sul', 'Média regional'),
(2022, 'Homem', 5.4, NULL, 'Centro-Oeste', 'Média regional'),
-- Dados regionais - Mulheres
(2022, 'Mulher', 11.9, NULL, 'Norte', 'Média regional'),
(2022, 'Mulher', 12.2, NULL, 'Nordeste', 'Média regional'),
(2022, 'Mulher', 11.4, NULL, 'Sudeste', 'Média regional'),
(2022, 'Mulher', 11.6, NULL, 'Sul', 'Média regional'),
(2022, 'Mulher', 11.3, NULL, 'Centro-Oeste', 'Média regional'),
-- Dados históricos para análise temporal - Homens
(2016, 'Homem', 5.1, NULL, 'Brasil', 'Evolução histórica'),
(2017, 'Homem', 5.2, NULL, 'Brasil', 'Evolução histórica'),
(2018, 'Homem', 5.3, NULL, 'Brasil', 'Evolução histórica'),
(2019, 'Homem', 5.4, NULL, 'Brasil', 'Evolução histórica'),
(2020, 'Homem', 5.8, NULL, 'Brasil', 'Evolução histórica - pandemia'),
(2021, 'Homem', 5.7, NULL, 'Brasil', 'Evolução histórica'),
(2022, 'Homem', 5.6, NULL, 'Brasil', 'Evolução histórica'),
-- Dados históricos para análise temporal - Mulheres
(2016, 'Mulher', 11.9, NULL, 'Brasil', 'Evolução histórica'),
(2017, 'Mulher', 11.8, NULL, 'Brasil', 'Evolução histórica'),
(2018, 'Mulher', 11.7, NULL, 'Brasil', 'Evolução histórica'),
(2019, 'Mulher', 11.6, NULL, 'Brasil', 'Evolução histórica'),
(2020, 'Mulher', 12.5, NULL, 'Brasil', 'Evolução histórica - pandemia'),
(2021, 'Mulher', 12.0, NULL, 'Brasil', 'Evolução histórica'),
(2022, 'Mulher', 11.7, NULL, 'Brasil', 'Evolução histórica');

-- Inserções complementares (TrabalhoDomestico_Cuidados - 2022)
INSERT INTO TrabalhoDomestico_Cuidados (ano, sexo, media_horas_semana, raca_cor, unidade_federativa, observacoes) VALUES
(2022, 'Mulher', 18.5, 'Branca', 'Brasil', 'Faixa 15-24 anos'),
(2022, 'Mulher', 23.8, 'Branca', 'Brasil', 'Faixa 25-44 anos - pico de cuidados'),
(2022, 'Mulher', 25.1, 'Branca', 'Brasil', 'Faixa 45-59 anos'),
(2022, 'Homem', 8.2, 'Branca', 'Brasil', 'Faixa 15-24 anos'),
(2022, 'Homem', 12.5, 'Branca', 'Brasil', 'Faixa 25-44 anos'),
(2022, 'Mulher', 8.3, NULL, 'Brasil', 'Apenas afazeres domésticos'),
(2022, 'Mulher', 13.1, NULL, 'Brasil', 'Apenas cuidados de pessoas'),
(2022, 'Mulher', 21.4, NULL, 'Brasil', 'Total: afazeres + cuidados'),
(2022, 'Homem', 6.2, NULL, 'Brasil', 'Apenas afazeres domésticos'),
(2022, 'Homem', 4.8, NULL, 'Brasil', 'Apenas cuidados de pessoas'),
(2022, 'Mulher', 26.3, NULL, 'Brasil', 'Casadas/união estável'),
(2022, 'Mulher', 15.8, NULL, 'Brasil', 'Solteiras'),
(2022, 'Homem', 13.5, NULL, 'Brasil', 'Casados/união estável'),
(2022, 'Homem', 8.1, NULL, 'Brasil', 'Solteiros'),
(2022, 'Mulher', 28.9, NULL, 'Brasil', 'Com filhos até 14 anos'),
(2022, 'Mulher', 17.2, NULL, 'Brasil', 'Sem filhos até 14 anos'),
(2022, 'Homem', 14.8, NULL, 'Brasil', 'Com filhos até 14 anos'),
(2022, 'Homem', 9.3, NULL, 'Brasil', 'Sem filhos até 14 anos');

-- Inserções complementares (TrabalhoDomestico_Cuidados - 2023)
INSERT INTO TrabalhoDomestico_Cuidados (ano, sexo, media_horas_semana, raca_cor, unidade_federativa, observacoes) VALUES
(2023, 'Mulher', 18.5, NULL, 'Brasil', 'Mulheres empregadas formalmente'),
(2023, 'Mulher', 25.8, NULL, 'Brasil', 'Mulheres desempregadas'),
(2023, 'Mulher', 28.3, NULL, 'Brasil', 'Mulheres donas de casa'),
(2023, 'Homem', 9.8, NULL, 'Brasil', 'Homens empregados formalmente'),
(2023, 'Homem', 13.5, NULL, 'Brasil', 'Homens desempregados'),
(2023, 'Mulher', 15.2, NULL, 'Canadá', 'País desenvolvido - referência'),
(2023, 'Homem', 9.8, NULL, 'Canadá', 'Maior equidade internacional'),
(2023, 'Mulher', 26.3, NULL, 'Índia', 'País com maior carga feminina'),
(2023, 'Homem', 2.8, NULL, 'Índia', 'Maior desigualdade internacional');


-- --- Tabela 2: CARGOS_GERENCIAIS ---

CREATE TABLE IF NOT EXISTS CARGOS_GERENCIAIS (
    ano INT NOT NULL,
    unidade_federativa VARCHAR(100) NOT NULL,
    porcentagem_mulheres DECIMAL(5,2),
    porcentagem_homens DECIMAL(5,2),
    numero_total_cargos INT,
    numero_mulheres INT,
    grupo_ocupacional VARCHAR(200),
    fonte VARCHAR(150),
    observacoes TEXT
);

-- Inserindo dados (CARGOS_GERENCIAIS - 2022)
INSERT INTO CARGOS_GERENCIAIS VALUES
(2022, 'Brasil', 37.8, 62.2, 8500000, 3213000, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Dados nacionais consolidados'),
(2022, 'São Paulo', 39.2, 60.8, 2850000, 1117200, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Maior percentual entre estados'),
(2022, 'Rio de Janeiro', 38.5, 61.5, 950000, 365750, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Segundo maior percentual'),
(2022, 'Minas Gerais', 36.1, 63.9, 780000, 281580, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', NULL),
(2022, 'Nordeste', 33.7, 66.3, 1850000, 623450, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Dados regionais consolidados'),
(2022, 'Sul', 35.9, 64.1, 1450000, 520550, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Dados regionais consolidados'),
(2022, 'Centro-Oeste', 34.8, 65.2, 650000, 226200, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Dados regionais consolidados'),
(2022, 'Norte', 32.4, 67.6, 420000, 136080, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Menor percentual entre regiões'),
-- Dados históricos para análise de evolução
(2021, 'Brasil', 37.2, 62.8, 8200000, 3050400, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2021', 'Evolução positiva de 0.6%'),
(2020, 'Brasil', 36.5, 63.5, 7800000, 2847000, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2020', 'Impacto inicial da pandemia'),
(2019, 'Brasil', 36.1, 63.9, 8100000, 2924100, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2019', 'Pré-pandemia'),
-- Dados por grupos ocupacionais específicos (2022)
(2022, 'Brasil', 28.4, 71.6, 3200000, 908800, 'Dirigentes de grandes empresas', 'PNAD Contínua, IBGE 2022', 'Alta direção - menor representatividade'),
(2022, 'Brasil', 41.3, 58.7, 5300000, 2188900, 'Gerentes de nível intermediário', 'PNAD Contínua, IBGE 2022', 'Maior representatividade no nível médio'),
-- Dados com recorte racial (2022)
(2022, 'Brasil', 25.7, 74.3, 4500000, 1156500, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Mulheres negras em cargos gerenciais'),
(2022, 'Brasil', 45.2, 54.8, 4000000, 1808000, 'Grupo 1 – dirigentes e gerentes', 'PNAD Contínua, IBGE 2022', 'Mulheres brancas em cargos gerenciais'),
-- Dados por setor (2022)
(2022, 'Brasil', 42.8, 57.2, 1200000, 513600, 'Setor público', 'PNAD/IBGE', 'Maior igualdade no setor público'),
(2022, 'Brasil', 35.2, 64.8, 4800000, 1689600, 'Setor privado', 'PNAD/IBGE', 'Setor com maior desigualdade'),
(2022, 'Brasil', 31.5, 68.5, 2500000, 787500, 'Indústria', 'PNAD/IBGE', 'Setor industrial'),
(2022, 'Brasil', 45.1, 54.9, 1800000, 811800, 'Serviços/Educação/Saúde', 'PNAD/IBGE', 'Setor com melhor representatividade'),
-- Dados por porte (2022)
(2022, 'Brasil', 28.3, 71.7, 900000, 254700, 'Grandes empresas (+500 func)', 'PNAD/IBGE', 'Alta direção - menor representatividade'),
(2022, 'Brasil', 39.7, 60.3, 3600000, 1429200, 'Médias empresas (50-499 func)', 'PNAD/IBGE', NULL),
(2022, 'Brasil', 41.2, 58.8, 4000000, 1648000, 'Pequenas empresas (<50 func)', 'PNAD/IBGE', 'Melhor representatividade'),
-- Dados por escolaridade (2022)
(2022, 'Brasil', 52.4, 47.6, 1500000, 786000, 'Ensino superior completo', 'PNAD/IBGE', 'Mulheres mais escolarizadas'),
(2022, 'Brasil', 29.8, 70.2, 7000000, 2086000, 'Até ensino médio', 'PNAD/IBGE', 'Menor qualificação');

-- Inserindo dados (CARGOS_GERENCIAIS - 2023)
INSERT INTO CARGOS_GERENCIAIS VALUES
-- Dados internacionais 2023
(2023, 'Estados Unidos', 42.8, 57.2, 18500000, 7916000, 'Fortune 500', 'Catalyst Research', 'Liderança em grandes empresas'),
(2023, 'Canadá', 45.3, 54.7, 3200000, 1449600, 'Grandes empresas', 'Statistics Canada', 'Referência em equidade'),
(2023, 'Japão', 15.2, 84.8, 8500000, 1292000, 'Grandes empresas', 'Gender Equality Bureau', 'País com menor representatividade'),
-- Dados por setor específico 2023
(2023, 'Brasil', 62.8, 37.2, 850000, 533800, 'Setor Educação', 'PNAD/IBGE', 'Predominância feminina'),
(2023, 'Brasil', 18.5, 81.5, 1200000, 222000, 'Setor Construção', 'PNAD/IBGE', 'Maior desigualdade por setor');


-- --- Tabela 3: VIOLENCIA_MULHER ---

CREATE TABLE IF NOT EXISTS VIOLENCIA_MULHER (
    id_violencia INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    unidade_federativa VARCHAR(50) NOT NULL,
    tipo_violencia VARCHAR(100) NOT NULL,
    total_ocorrencias INT,
    taxa_por_100mil DECIMAL(8,2),
    vitimas_mulheres INT,
    faixa_etaria VARCHAR(30) NULL,
    raca_cor VARCHAR(30) NULL,
    relacionamento_agressor VARCHAR(50) NULL,
    fonte VARCHAR(100) DEFAULT 'Sistema de Informação de Agravos - Ministério da Saúde',
    observacoes TEXT NULL
);

-- Inserções (VIOLENCIA_MULHER)
INSERT INTO VIOLENCIA_MULHER (ano, unidade_federativa, tipo_violencia, total_ocorrencias, taxa_por_100mil, vitimas_mulheres, faixa_etaria, raca_cor, relacionamento_agressor, observacoes) VALUES
-- Dados 2023 - Física
(2023, 'Brasil', 'física', 350000, 325.8, 330000, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Faixa etária mais vulnerável'),
(2023, 'Brasil', 'física', 280000, 260.5, 265000, '40-59 anos', 'Branca', 'parceiro_intimo', 'Segunda faixa mais afetada'),
(2023, 'São Paulo', 'física', 85000, 280.3, 80000, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Maior estado em números absolutos'),
(2023, 'Rio de Janeiro', 'física', 45000, 420.1, 43000, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Maior taxa entre estados grandes'),
(2023, 'Maranhão', 'física', 12000, 380.5, 11500, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Alta taxa no Nordeste'),
-- Dados 2023 - Psicológica
(2023, 'Brasil', 'psicológica', 480000, 447.2, 455000, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Violência mais subnotificada'),
(2023, 'Brasil', 'psicológica', 350000, 325.8, 332000, '40-59 anos', 'Branca', 'parceiro_intimo', NULL),
-- Dados 2023 - Sexual
(2023, 'Brasil', 'sexual', 75000, 69.8, 74000, '15-19 anos', 'Preta ou Parda', 'desconhecido', 'Faixa etária mais vulnerável para violência sexual'),
(2023, 'Brasil', 'sexual', 68000, 63.3, 67000, '20-39 anos', 'Preta ou Parda', 'desconhecido', NULL),
-- Dados 2023 - Feminicídio
(2023, 'Brasil', 'feminicidio', 1350, 1.26, 1350, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Crime de gênero - 71% por parceiro ou ex'),
(2023, 'São Paulo', 'feminicidio', 280, 0.92, 280, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Maior número absoluto'),
(2023, 'Acre', 'feminicidio', 15, 3.41, 15, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Maior taxa do país'),
-- Dados históricos 2022
(2022, 'Brasil', 'física', 335000, 315.2, 315000, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Aumento de 4.5% em 2023'),
(2022, 'Brasil', 'feminicidio', 1240, 1.16, 1240, '20-39 anos', 'Preta ou Parda', 'parceiro_intimo', 'Aumento de 8.9% em 2023');

-- --- Tabela 4: EDUCACAO_EQUIDADE_GENERO ---

 CREATE TABLE IF NOT EXISTS EDUCACAO_EQUIDADE_GENERO (
    id_educacao INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    unidade_federativa VARCHAR(50) NOT NULL,
    nivel_ensino VARCHAR(50) NOT NULL,
    area_conhecimento VARCHAR(100) NULL,
    porcentagem_mulheres DECIMAL(5,2),
    porcentagem_homens DECIMAL(5,2),
    total_matriculas INT,
    matriculas_mulheres INT,
    taxa_conclusao_mulheres DECIMAL(5,2),
    fonte VARCHAR(100) DEFAULT 'Censo Educação - INEP',
    observacoes TEXT NULL
);

-- Inserções (EDUCACAO_EQUIDADE_GENERO)
INSERT INTO EDUCACAO_EQUIDADE_GENERO (ano, unidade_federativa, nivel_ensino, area_conhecimento, porcentagem_mulheres, porcentagem_homens, total_matriculas, matriculas_mulheres, taxa_conclusao_mulheres, observacoes) VALUES
-- Ensino Superior 2023
(2023, 'Brasil', 'superior', 'Ciências Humanas', 68.5, 31.5, 2500000, 1712500, 75.2, 'Maioria feminina consolidada'),
(2023, 'Brasil', 'superior', 'Ciências da Saúde', 72.3, 27.7, 1800000, 1301400, 78.9, 'Área com maior predominância feminina'),
(2023, 'Brasil', 'superior', 'Exatas e Engenharias', 35.2, 64.8, 2200000, 774400, 68.7, 'Área com menor representatividade feminina'),
(2023, 'Brasil', 'superior', 'Ciências Sociais Aplicadas', 54.8, 45.2, 3200000, 1753600, 72.4, 'Quase equilíbrio'),
-- Pós-graduação 2023
(2023, 'Brasil', 'pos_graduacao', 'Mestrado', 55.8, 44.2, 350000, 195300, 82.1, 'Ligeira maioria feminina'),
(2023, 'Brasil', 'pos_graduacao', 'Doutorado', 48.3, 51.7, 180000, 86940, 85.6, 'Quase equilíbrio no doutorado'),
-- Ensino Técnico 2023
(2023, 'Brasil', 'medio', 'Técnico em Enfermagem', 85.2, 14.8, 150000, 127800, 88.5, 'Extrema predominância feminina'),
(2023, 'Brasil', 'medio', 'Técnico em Mecânica', 12.8, 87.2, 80000, 10240, 76.3, 'Extrema predominância masculina'),
-- Dados por região - Ensino Superior
(2023, 'Nordeste', 'superior', 'Geral', 58.7, 41.3, 1850000, 1085950, 70.8, 'Maior percentual feminino entre regiões'),
(2023, 'Sudeste', 'superior', 'Geral', 55.2, 44.8, 3850000, 2125200, 76.3, 'Maior número absoluto'),
-- Evolução histórica
(2018, 'Brasil', 'superior', 'Geral', 57.3, 42.7, 8300000, 4755900, 72.1, 'Crescimento de 2.7% em 5 anos');

-- --- Tabela 5: PARTICIPACAO_POLITICA ---

CREATE TABLE IF NOT EXISTS PARTICIPACAO_POLITICA (
    id_politica INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    unidade_federativa VARCHAR(50) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    total_cargos INT,
    mulheres_eleitas INT,
    porcentagem_mulheres DECIMAL(5,2),
    candidatas_mulheres INT,
    taxa_eleicao_mulheres DECIMAL(5,2),
    recorte_partidario VARCHAR(50) NULL,
    fonte VARCHAR(100) DEFAULT 'TSE - Tribunal Superior Eleitoral',
    observacoes TEXT NULL
);

-- Inserções (PARTICIPACAO_POLITICA)
INSERT INTO PARTICIPACAO_POLITICA (ano, unidade_federativa, cargo, total_cargos, mulheres_eleitas, porcentagem_mulheres, candidatas_mulheres, taxa_eleicao_mulheres, recorte_partidario, observacoes) VALUES
-- Eleições 2022 - Federal
(2022, 'Brasil', 'deputada_federal', 513, 91, 17.7, 1865, 4.9, 'multipartidario', 'Patamar histórico, mas ainda baixo'),
(2022, 'Brasil', 'senadora', 81, 12, 14.8, 75, 16.0, 'multipartidario', 'Crescimento lento'),
-- Eleições 2022 - Estadual
(2022, 'Brasil', 'deputada_estadual', 1059, 185, 17.5, 3850, 4.8, 'multipartidario', 'Similar à Câmara Federal'),
-- Eleições 2020 - Municipal
(2020, 'Brasil', 'prefeita', 5568, 652, 11.7, 2850, 22.9, 'multipartidario', 'Aumento significativo em 2020'),
(2020, 'Brasil', 'vereadora', 56810, 9665, 17.0, 38500, 25.1, 'multipartidario', 'Base da pirâmide política'),
-- Dados por partido 2022
(2022, 'Brasil', 'deputada_federal', 91, 18, 19.8, 120, 15.0, 'PT', 'Partido com maior representação feminina'),
(2022, 'Brasil', 'deputada_federal', 91, 15, 16.5, 95, 15.8, 'PSDB', NULL),
-- Dados por estado 2022
(2022, 'São Paulo', 'deputada_federal', 70, 14, 20.0, 245, 5.7, 'multipartidario', 'Maior percentual entre grandes estados'),
(2022, 'Roraima', 'deputada_federal', 8, 0, 0.0, 12, 0.0, 'multipartidario', 'Único estado sem mulheres na Câmara'),
-- Evolução histórica
(2018, 'Brasil', 'deputada_federal', 513, 77, 15.0, 1720, 4.5, 'multipartidario', 'Crescimento de 18% em 4 anos'),
(2014, 'Brasil', 'deputada_federal', 513, 51, 9.9, 1250, 4.1, 'multipartidario', 'Quase dobrou em 8 anos');

-- --- Tabela 6: EQUIDADE_SALARIAL ---

CREATE TABLE IF NOT EXISTS EQUIDADE_SALARIAL (
    id_salario INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    unidade_federativa VARCHAR(50) NOT NULL,
    setor_economico VARCHAR(100) NOT NULL,
    ocupacao VARCHAR(150) NULL,
    salario_medio_homens DECIMAL(10,2),
    salario_medio_mulheres DECIMAL(10,2),
    diferenca_salarial_percentual DECIMAL(5,2),
    horas_trabalho_semanais DECIMAL(5,2),
    raca_cor VARCHAR(30) NULL,
    faixa_etaria VARCHAR(30) NULL,
    fonte VARCHAR(100) DEFAULT 'PNAD Contínua - IBGE',
    observacoes TEXT NULL
);

-- Inserções (EQUIDADE_SALARIAL)
INSERT INTO EQUIDADE_SALARIAL (ano, unidade_federativa, setor_economico, ocupacao, salario_medio_homens, salario_medio_mulheres, diferenca_salarial_percentual, horas_trabalho_semanais, raca_cor, faixa_etaria, observacoes) VALUES
-- Dados Nacionais 2023 por setor
(2023, 'Brasil', 'Indústria', 'Operários', 2850.00, 2350.00, 17.5, 44.0, 'Geral', '25-49 anos', 'Diferença menor na indústria'),
(2023, 'Brasil', 'Serviços', 'Vendedores', 2200.00, 1750.00, 20.5, 42.0, 'Geral', '25-49 anos', 'Setor com maior desigualdade'),
(2023, 'Brasil', 'Tecnologia', 'Analistas', 6800.00, 5500.00, 19.1, 40.0, 'Geral', '25-39 anos', 'Setor em crescimento com desigualdade'),
-- Dados por raça/cor 2023
(2023, 'Brasil', 'Geral', 'Gerentes', 8500.00, 7200.00, 15.3, 44.0, 'Branca', '30-49 anos', 'Mulheres brancas em cargos altos'),
(2023, 'Brasil', 'Geral', 'Gerentes', 6200.00, 4800.00, 22.6, 44.0, 'Preta ou Parda', '30-49 anos', 'Dupla discriminação: gênero e raça'),
-- Dados por escolaridade 2023
(2023, 'Brasil', 'Geral', 'Ensino Superior', 6500.00, 5200.00, 20.0, 42.0, 'Geral', '25-49 anos', 'Desigualdade persiste mesmo com alta escolaridade'),
(2023, 'Brasil', 'Geral', 'Ensino Médio', 1850.00, 1550.00, 16.2, 44.0, 'Geral', '25-49 anos', NULL),
-- Dados por região 2023
(2023, 'Sudeste', 'Geral', 'Profissionais', 4200.00, 3500.00, 16.7, 42.0, 'Geral', '25-49 anos', 'Região com menor diferença percentual'),
(2023, 'Nordeste', 'Geral', 'Profissionais', 2800.00, 2200.00, 21.4, 44.0, 'Geral', '25-49 anos', 'Maior diferença percentual entre regiões'),
-- Evolução histórica
(2018, 'Brasil', 'Geral', 'Profissionais', 3800.00, 3100.00, 18.4, 43.0, 'Geral', '25-49 anos', 'Redução de 1.1% em 5 anos'),
(2013, 'Brasil', 'Geral', 'Profissionais', 3200.00, 2550.00, 20.3, 43.5, 'Geral', '25-49 anos', 'Redução de 3.2% em 10 anos'),
-- Dados por faixa etária
(2023, 'Brasil', 'Geral', 'Iniciantes', 1850.00, 1750.00, 5.4, 40.0, 'Geral', '18-24 anos', 'Menor diferença entre jovens'),
(2023, 'Brasil', 'Geral', 'Sênior', 12500.00, 9800.00, 21.6, 45.0, 'Geral', '50-65 anos', 'Maior diferença absoluta');

-- ==========================================================
-- SEÇÃO DE CONSULTAS DE ANÁLISE (CONVERTIDAS PARA MYSQL)
-- ==========================================================

-- --- Consultas Tabela TrabalhoDomestico_Cuidados ---

-- Diferença média entre homens e mulheres
SELECT 
    ano,
    AVG(CASE WHEN sexo = 'Mulher' THEN media_horas_semana END) - 
    AVG(CASE WHEN sexo = 'Homem' THEN media_horas_semana END) as diferenca_horas
FROM TrabalhoDomestico_Cuidados 
WHERE unidade_federativa = 'Brasil' AND raca_cor IS NULL
GROUP BY ano;

-- Razão horas mulheres/homens
SELECT 
    ano,
    AVG(CASE WHEN sexo = 'Mulher' THEN media_horas_semana END) / 
    AVG(CASE WHEN sexo = 'Homem' THEN media_horas_semana END) as razao_mulher_homem
FROM TrabalhoDomestico_Cuidados 
WHERE unidade_federativa = 'Brasil' AND raca_cor IS NULL
GROUP BY ano;

-- Diferença de horas por estado
SELECT 
    unidade_federativa as estado,
    MAX(CASE WHEN sexo = 'Mulher' THEN media_horas_semana END) as horas_mulheres,
    MAX(CASE WHEN sexo = 'Homem' THEN media_horas_semana END) as horas_homens,
    MAX(CASE WHEN sexo = 'Mulher' THEN media_horas_semana END) - 
    MAX(CASE WHEN sexo = 'Homem' THEN media_horas_semana END) as diferenca_horas
FROM TrabalhoDomestico_Cuidados 
WHERE ano = 2023 AND raca_cor IS NULL
GROUP BY unidade_federativa
ORDER BY diferenca_horas DESC;


-- --- Consultas Tabela CARGOS_GERENCIAIS ---

SELECT * FROM CARGOS_GERENCIAIS WHERE ano = 2022 AND unidade_federativa = 'Brasil';

-- Evolução temporal da participação feminina
SELECT ano, porcentagem_mulheres, numero_mulheres, numero_total_cargos
FROM CARGOS_GERENCIAIS 
WHERE unidade_federativa = 'Brasil' AND grupo_ocupacional = 'Grupo 1 – dirigentes e gerentes'
ORDER BY ano;

-- Ranking de estados por participação feminina
SELECT unidade_federativa, porcentagem_mulheres, numero_mulheres, numero_total_cargos
FROM CARGOS_GERENCIAIS 
WHERE ano = 2022 AND unidade_federativa NOT IN ('Brasil', 'Nordeste', 'Sul', 'Centro-Oeste', 'Norte')
ORDER BY porcentagem_mulheres DESC;

-- Comparação entre grupos ocupacionais
SELECT grupo_ocupacional, porcentagem_mulheres, numero_total_cargos
FROM CARGOS_GERENCIAIS 
WHERE ano = 2022 AND unidade_federativa = 'Brasil'
ORDER BY porcentagem_mulheres DESC;

-- Evolução da participação feminina em cargos gerenciais (com LAG)
SELECT 
    ano,
    porcentagem_mulheres,
    LAG(porcentagem_mulheres) OVER (ORDER BY ano) as ano_anterior,
    ROUND(porcentagem_mulheres - LAG(porcentagem_mulheres) OVER (ORDER BY ano), 1) as variacao
FROM CARGOS_GERENCIAIS 
WHERE unidade_federativa = 'Brasil' 
    AND grupo_ocupacional = 'Grupo 1 – dirigentes e gerentes'
    AND ano BETWEEN 2019 AND 2023
ORDER BY ano;

-- Top 10 estados com maior participação (usando LIMIT)
SELECT 
    unidade_federativa as estado,
    porcentagem_mulheres as mulheres_gerencia,
    numero_mulheres,
    numero_total_cargos,
    ROUND((numero_mulheres * 100.0 / numero_total_cargos), 1) as percentual_calculado
FROM CARGOS_GERENCIAIS 
WHERE ano = 2023 
    AND unidade_federativa NOT IN ('Brasil', 'Nordeste', 'Sul', 'Centro-Oeste', 'Norte')
ORDER BY porcentagem_mulheres DESC
LIMIT 10;

-- --- Consultas Tabela VIOLENCIA_MULHER ---

-- Distribuição dos tipos de violência
SELECT 
    tipo_violencia,
    SUM(total_ocorrencias) as total_casos,
    ROUND(AVG(taxa_por_100mil), 1) as taxa_media,
    COUNT(*) as registros
FROM VIOLENCIA_MULHER 
WHERE ano = 2023 AND unidade_federativa = 'Brasil'
GROUP BY tipo_violencia
ORDER BY total_casos DESC;

-- VIOLÊNCIA por raça e faixa etária
SELECT 
    faixa_etaria,
    raca_cor,
    SUM(total_ocorrencias) as total_ocorrencias,
    ROUND(AVG(taxa_por_100mil), 2) as taxa_media
FROM VIOLENCIA_MULHER 
WHERE ano = 2023 AND tipo_violencia = 'física'
GROUP BY faixa_etaria, raca_cor
ORDER BY faixa_etaria, total_ocorrencias DESC;

-- EVOLUÇÃO da violência contra mulheres
SELECT 
    ano,
    tipo_violencia,
    total_ocorrencias,
    LAG(total_ocorrencias) OVER (PARTITION BY tipo_violencia ORDER BY ano) as ano_anterior,
    CASE 
        WHEN LAG(total_ocorrencias) OVER (PARTITION BY tipo_violencia ORDER BY ano) IS NOT NULL THEN
            ROUND(((total_ocorrencias - LAG(total_ocorrencias) OVER (PARTITION BY tipo_violencia ORDER BY ano)) * 100.0 / 
            LAG(total_ocorrencias) OVER (PARTITION BY tipo_violencia ORDER BY ano)), 2)
        ELSE NULL
    END as variacao_percentual
FROM VIOLENCIA_MULHER 
WHERE unidade_federativa = 'Brasil' 
    AND ano IN (2022, 2023)
ORDER BY tipo_violencia, ano;

-- --- Consultas Tabela EDUCACAO_EQUIDADE_GENERO ---

-- Participação feminina por área do conhecimento
SELECT 
    area_conhecimento,
    porcentagem_mulheres,
    total_matriculas,
    matriculas_mulheres,
    CASE 
        WHEN porcentagem_mulheres > 60 THEN 'Predomínio Feminino'
        WHEN porcentagem_mulheres < 40 THEN 'Predomínio Masculino'
        ELSE 'Equilibrado'
    END as classificacao
FROM EDUCACAO_EQUIDADE_GENERO 
WHERE ano = 2023 AND nivel_ensino = 'superior'
ORDER BY porcentagem_mulheres DESC;

-- --- Consultas Tabela PARTICIPACAO_POLITICA ---

-- Taxa de sucesso de candidatas mulheres
SELECT 
    unidade_federativa,
    cargo,
    mulheres_eleitas,
    candidatas_mulheres,
    porcentagem_mulheres as percentual_eleitas,
    ROUND((mulheres_eleitas * 100.0 / candidatas_mulheres), 1) as taxa_sucesso
FROM PARTICIPACAO_POLITICA 
WHERE ano >= 2020
ORDER BY taxa_sucesso DESC;

-- --- Consultas Tabela EQUIDADE_SALARIAL ---

-- Setores com maior desigualdade salarial
SELECT 
    setor_economico,
    salario_medio_homens,
    salario_medio_mulheres,
    diferenca_salarial_percentual,
    salario_medio_homens - salario_medio_mulheres as diferenca_absoluta,
    ROUND((salario_medio_mulheres / salario_medio_homens) * 100, 1) as percentual_equidade
FROM EQUIDADE_SALARIAL 
WHERE ano = 2023 AND unidade_federativa = 'Brasil'
ORDER BY diferenca_salarial_percentual DESC;

-- Dupla desigualdade: mulheres negras
SELECT 
    'Mulheres Brancas' as grupo,
    AVG(salario_medio_mulheres) as salario_medio
FROM EQUIDADE_SALARIAL 
WHERE raca_cor = 'Branca' AND ano = 2023

UNION ALL

SELECT 
    'Mulheres Negras/Pardas',
    AVG(salario_medio_mulheres) 
FROM EQUIDADE_SALARIAL 
WHERE raca_cor = 'Preta ou Parda' AND ano = 2023

UNION ALL

SELECT 
    'Homens Brancos',
    AVG(salario_medio_homens)
FROM EQUIDADE_SALARIAL 
WHERE raca_cor = 'Branca' AND ano = 2023

UNION ALL

SELECT 
    'Homens Negros/Pardos',
    AVG(salario_medio_homens)
FROM EQUIDADE_SALARIAL 
WHERE raca_cor = 'Preta ou Parda' AND ano = 2023;

-- EVOLUÇÃO da diferença salarial
SELECT 
    ano,
    diferenca_salarial_percentual,
    LAG(diferenca_salarial_percentual) OVER (ORDER BY ano) as ano_anterior,
    ROUND(diferenca_salarial_percentual - LAG(diferenca_salarial_percentual) OVER (ORDER BY ano), 2) as reducao_diferenca
FROM EQUIDADE_SALARIAL 
WHERE unidade_federativa = 'Brasil' 
    AND setor_economico = 'Geral' 
    AND ocupacao = 'Profissionais'
    AND ano IN (2013, 2018, 2023)
ORDER BY ano;

-- SETORES com maior equidade (TOP 3) - (MySQL usa LIMIT)
SELECT 
    setor_economico,
    salario_medio_homens,
    salario_medio_mulheres,
    diferenca_salarial_percentual,
    'Alta equidade' as classificacao_equidade
FROM EQUIDADE_SALARIAL 
WHERE ano = 2023 AND unidade_federativa = 'Brasil'
ORDER BY diferenca_salarial_percentual ASC
LIMIT 3;

-- SETORES com menor equidade (TOP 3) - (MySQL usa LIMIT)
SELECT 
    setor_economico,
    salario_medio_homens,
    salario_medio_mulheres,
    diferenca_salarial_percentual,
    'Baixa equidade' as classificacao_equidade
FROM EQUIDADE_SALARIAL 
WHERE ano = 2023 AND unidade_federativa = 'Brasil'
ORDER BY diferenca_salarial_percentual DESC
LIMIT 3;

-- TODOS OS SETORES com classificação completa
SELECT 
    setor_economico,
    salario_medio_homens,
    salario_medio_mulheres,
    diferenca_salarial_percentual,
    CASE 
        WHEN diferenca_salarial_percentual < 15 THEN 'Alta equidade'
        WHEN diferenca_salarial_percentual < 20 THEN 'Média equidade'
        ELSE 'Baixa equidade'
    END as classificacao_equidade,
    ROUND((salario_medio_mulheres / salario_medio_homens) * 100, 1) as percentual_equidade
FROM EQUIDADE_SALARIAL 
WHERE ano = 2023 AND unidade_federativa = 'Brasil'
ORDER BY diferenca_salarial_percentual ASC;


-- --- Consultas de Análise Conjunta (JOINs) ---

-- Painel com principais indicadores (MySQL CONCAT e ROUND)
SELECT 
    'Participação em Cargos Gerenciais' as indicador,
    CONCAT(ROUND(porcentagem_mulheres, 1), '%') as valor,
    ano
FROM CARGOS_GERENCIAIS 
WHERE unidade_federativa = 'Brasil' AND ano = 2023

UNION ALL

SELECT 
    'Diferença Salarial Média',
    CONCAT(ROUND(diferenca_salarial_percentual, 1), '%'),
    ano
FROM EQUIDADE_SALARIAL 
WHERE unidade_federativa = 'Brasil' AND setor_economico = 'Geral' AND ano = 2023

UNION ALL

SELECT 
    'Carga Doméstica Feminina',
    CONCAT(ROUND(media_horas_semana, 1), ' h/semana'),
    ano
FROM TrabalhoDomestico_Cuidados 
WHERE unidade_federativa = 'Brasil' AND sexo = 'Mulher' AND ano = 2023

UNION ALL

SELECT 
    'Mulheres no Congresso',
    CONCAT(ROUND(porcentagem_mulheres, 1), '%'),
    ano
FROM PARTICIPACAO_POLITICA 
WHERE unidade_federativa = 'Brasil' AND cargo = 'deputada_federal' AND ano = 2022;

-- Análise conjunta: estados com maior carga doméstica feminina vs. representatividade em cargos gerenciais
SELECT 
    td.unidade_federativa,
    td.media_horas_semana as carga_horaria_mulheres,
    cg.porcentagem_mulheres as percentual_gerencias
FROM TrabalhoDomestico_Cuidados td
INNER JOIN CARGOS_GERENCIAIS cg ON td.unidade_federativa = cg.unidade_federativa 
    AND td.ano = cg.ano
WHERE td.sexo = 'Mulher' 
    AND td.raca_cor IS NULL
    AND cg.grupo_ocupacional = 'Grupo 1 – dirigentes e gerentes'
    AND td.ano = 2022;

-- CORRELAÇÃO: Carga doméstica vs. Cargos gerenciais
SELECT 
    cg.unidade_federativa as estado,
    cg.porcentagem_mulheres as mulheres_gerencia,
    td.media_horas_semana as carga_domestica_mulheres,
    CASE 
        WHEN td.media_horas_semana > 20 THEN 'Alta carga'
        WHEN td.media_horas_semana > 15 THEN 'Média carga'
        ELSE 'Baixa carga'
    END as nivel_carga
FROM CARGOS_GERENCIAIS cg
INNER JOIN (
    SELECT unidade_federativa, media_horas_semana 
    FROM TrabalhoDomestico_Cuidados 
    WHERE sexo = 'Mulher' AND raca_cor IS NULL AND ano = 2023
) td ON cg.unidade_federativa = td.unidade_federativa
WHERE cg.ano = 2023 AND cg.grupo_ocupacional = 'Grupo 1 – dirigentes e gerentes'
ORDER BY cg.porcentagem_mulheres DESC;

-- VIOLÊNCIA vs. PARTICIPAÇÃO POLÍTICA por estado
SELECT 
    v.unidade_federativa,
    v.taxa_por_100mil as taxa_violencia,
    p.porcentagem_mulheres as mulheres_politica,
    CASE 
        WHEN v.taxa_por_100mil > 300 AND p.porcentagem_mulheres < 15 THEN 'Alta violência, baixa política'
        WHEN v.taxa_por_100mil < 200 AND p.porcentagem_mulheres > 20 THEN 'Baixa violência, alta política'
        ELSE 'Situação intermediária'
    END as classificacao
FROM (
    SELECT unidade_federativa, AVG(taxa_por_100mil) as taxa_por_100mil
    FROM VIOLENCIA_MULHER 
    WHERE ano = 2023 AND tipo_violencia = 'física'
    GROUP BY unidade_federativa
) v
LEFT JOIN (
    SELECT unidade_federativa, porcentagem_mulheres
    FROM PARTICIPACAO_POLITICA 
    WHERE ano = 2022 AND cargo = 'deputada_federal'
) p ON v.unidade_federativa = p.unidade_federativa
WHERE p.unidade_federativa IS NOT NULL;

-- EDUCAÇÃO vs. SALÁRIOS por área
SELECT 
    ed.area_conhecimento,
    ed.porcentagem_mulheres as mulheres_educacao,
    es.salario_medio_mulheres,
    es.diferenca_salarial_percentual,
    ROUND((es.salario_medio_mulheres / es.salario_medio_homens) * 100, 1) as percentual_salarial
FROM EDUCACAO_EQUIDADE_GENERO ed
LEFT JOIN EQUIDADE_SALARIAL es ON ed.ano = es.ano
WHERE ed.nivel_ensino = 'superior' 
    AND ed.ano = 2023 
    AND es.ocupacao = 'Profissionais'
ORDER BY es.diferenca_salarial_percentual DESC;


-- Alertas para indicadores abaixo das metas
SELECT 'BAIXA REPRESENTAÇÃO POLÍTICA' as alerta, unidade_federativa, porcentagem_mulheres as valor
FROM PARTICIPACAO_POLITICA 
WHERE porcentagem_mulheres < 15 AND cargo = 'deputada_federal'

UNION ALL

SELECT 'ALTA DESIGUALDADE SALARIAL', unidade_federativa, diferenca_salarial_percentual
FROM EQUIDADE_SALARIAL 
WHERE diferenca_salarial_percentual > 25

UNION ALL

SELECT 'ALTA CARGA DOMÉSTICA', unidade_federativa, media_horas_semana
FROM TrabalhoDomestico_Cuidados 
WHERE sexo = 'Mulher' AND media_horas_semana > 23

ORDER BY alerta, valor DESC;

-- ==========================================================
-- SEÇÃO DE CONSULTAS DE SISTEMA (METADADOS - CONVERTIDAS)
-- ==========================================================

-- 1. Verificar em qual banco está conectado
SELECT DATABASE() as database_atual;

-- 2. Ver todos os bancos disponíveis
SELECT schema_name AS name 
FROM INFORMATION_SCHEMA.SCHEMATA 
ORDER BY schema_name;

-- 3. Ver todas as tabelas do banco 'ods5'
SELECT 
    TABLE_NAME as nome_tabela,
    TABLE_TYPE as tipo
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = 'ods5' AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

-- 4. Ver estrutura das tabelas
SELECT 
    TABLE_NAME as tabela,
    COLUMN_NAME as coluna,
    DATA_TYPE as tipo,
    IS_NULLABLE as nulo
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'ods5' 
  AND TABLE_NAME IN ('CARGOS_GERENCIAIS', 'TrabalhoDomestico_Cuidados', 'VIOLENCIA_MULHER', 'EDUCACAO_EQUIDADE_GENERO', 'PARTICIPACAO_POLITICA', 'EQUIDADE_SALARIAL')
ORDER BY TABLE_NAME, ORDINAL_POSITION;

-- 5. Estrutura detalhada de todas as tabelas (MySQL)
SELECT 
    t.TABLE_NAME as tabela,
    c.COLUMN_NAME as coluna,
    c.DATA_TYPE as tipo,
    c.CHARACTER_MAXIMUM_LENGTH as tamanho,
    c.IS_NULLABLE as nulo,
    CASE 
        WHEN c.COLUMN_KEY = 'PRI' THEN 'SIM' 
        ELSE 'NÃO' 
    END as pk
FROM INFORMATION_SCHEMA.TABLES t
INNER JOIN INFORMATION_SCHEMA.COLUMNS c 
    ON t.TABLE_SCHEMA = c.TABLE_SCHEMA AND t.TABLE_NAME = c.TABLE_NAME
WHERE t.TABLE_SCHEMA = 'ods5'
  AND t.TABLE_NAME IN ('CARGOS_GERENCIAIS', 'TrabalhoDomestico_Cuidados', 'VIOLENCIA_MULHER', 
                 'EDUCACAO_EQUIDADE_GENERO', 'PARTICIPACAO_POLITICA', 'EQUIDADE_SALARIAL')
ORDER BY t.TABLE_NAME, c.ORDINAL_POSITION;

-- Verifique os dados de cargos gerenciais no Brasil
SELECT * FROM CARGOS_GERENCIAIS 
WHERE unidade_federativa = 'Brasil' 
LIMIT 10;

-- Verifique os dados de trabalho doméstico
SELECT * FROM TrabalhoDomestico_Cuidados 
WHERE sexo = 'Mulher' AND raca_cor = 'Preta ou Parda'
LIMIT 5;

USE ods5;

-- Painel com principais indicadores
SELECT 
    'Participação em Cargos Gerenciais' as indicador,
    CONCAT(ROUND(porcentagem_mulheres, 1), '%') as valor,
    ano
FROM CARGOS_GERENCIAIS 
WHERE unidade_federativa = 'Brasil' AND ano = 2023 AND grupo_ocupacional = 'Setor Educação'

UNION ALL

SELECT 
    'Diferença Salarial Média',
    CONCAT(ROUND(diferenca_salarial_percentual, 1), '%'),
    ano
FROM EQUIDADE_SALARIAL 
WHERE unidade_federativa = 'Brasil' AND setor_economico = 'Geral' AND ano = 2023

UNION ALL

SELECT 
    'Carga Doméstica Feminina',
    CONCAT(ROUND(media_horas_semana, 1), ' h/semana'),
    ano
FROM TrabalhoDomestico_Cuidados 
WHERE unidade_federativa = 'Brasil' AND sexo = 'Mulher' AND ano = 2023 AND observacoes = 'Mulheres empregadas formalmente'

UNION ALL

SELECT 
    'Mulheres no Congresso',
    CONCAT(ROUND(porcentagem_mulheres, 1), '%'),
    ano
FROM PARTICIPACAO_POLITICA 
WHERE unidade_federativa = 'Brasil' AND cargo = 'deputada_federal' AND ano = 2022;

USE ods5;

-- Esta query usa múltiplas CTEs para calcular a regressão linear (y = mx + b)
-- e o R-Quadrado (R²) para a relação entre trabalho doméstico e cargos de gerência.

WITH 
-- 1. Coleta da Variável X (Carga Doméstica)
td_data AS (
    SELECT 
        unidade_federativa, 
        media_horas_semana AS x
    FROM TrabalhoDomestico_Cuidados
    WHERE ano = 2022
      AND sexo = 'Mulher'
      AND raca_cor IS NULL -- Pega a média geral
      AND unidade_federativa IN ('Norte', 'Nordeste', 'Sul', 'Centro-Oeste', 'Sudeste')
),

-- 2. Coleta da Variável Y (Cargos Gerenciais)
cg_data AS (
    -- Pega as 4 regiões que já existem
    SELECT 
        unidade_federativa, 
        porcentagem_mulheres AS y
    FROM CARGOS_GERENCIAIS
    WHERE ano = 2022
      AND grupo_ocupacional = 'Grupo 1 – dirigentes e gerentes'
      AND unidade_federativa IN ('Norte', 'Nordeste', 'Sul', 'Centro-Oeste')
    
    UNION ALL
    
    -- Calcula o agregado da região Sudeste (SP, RJ, MG)
    SELECT 
        'Sudeste' as unidade_federativa,
        (SUM(numero_mulheres) / SUM(numero_total_cargos)) * 100 AS y
    FROM CARGOS_GERENCIAIS
    WHERE ano = 2022
      AND grupo_ocupacional = 'Grupo 1 – dirigentes e gerentes'
      AND unidade_federativa IN ('São Paulo', 'Rio de Janeiro', 'Minas Gerais')
),

-- 3. Junta os pares (X, Y) das 5 regiões
dados_agregados AS (
    SELECT 
        td.unidade_federativa,
        td.x,
        cg.y
    FROM td_data AS td
    JOIN cg_data AS cg ON td.unidade_federativa = cg.unidade_federativa
),

-- 4. Calcula os componentes estatísticos necessários (Somas, Médias, N)
estatisticas AS (
    SELECT
        COUNT(x) AS n,
        AVG(x)   AS avg_x,
        AVG(y)   AS avg_y,
        SUM(x)   AS sum_x,
        SUM(y)   AS sum_y,
        SUM(x*x) AS sum_xx,
        SUM(y*y) AS sum_yy,
        SUM(x*y) AS sum_xy
    FROM dados_agregados
),

-- 5. Calcula os coeficientes m (inclinação) e b (intercepto)
coeficientes AS (
    SELECT
        -- Fórmula da Inclinação (m): 
        -- m = (n * SUM(xy) - SUM(x) * SUM(y)) / (n * SUM(xx) - (SUM(x))^2)
        ( (n * sum_xy) - (sum_x * sum_y) ) / ( (n * sum_xx) - (sum_x * sum_x) ) AS m_coeficiente_angular,
        
        -- Fórmula do Intercepto (b):
        -- b = AVG(y) - m * AVG(x)
        avg_y - ( ( (n * sum_xy) - (sum_x * sum_y) ) / ( (n * sum_xx) - (sum_x * sum_x) ) ) * avg_x AS b_intercepto,
        
        -- Componentes para o R-Quadrado
        n, sum_x, sum_y, sum_xx, sum_yy, sum_xy
    FROM estatisticas
)

-- 6. Calcula o R-Quadrado (Coeficiente de Determinação)
SELECT 
    m_coeficiente_angular,
    b_intercepto,
    
    -- Fórmula do R-Quadrado (R²):
    -- R² = ( (n * SUM(xy) - SUM(x) * SUM(y)) / 
    --      SQRT( (n*SUM(xx) - (SUM(x))²) * (n*SUM(yy) - (SUM(y))²) ) )²
    POWER(
        ( (n * sum_xy) - (sum_x * sum_y) ) / 
        SQRT( ( (n * sum_xx) - (sum_x * sum_x) ) * ( (n * sum_yy) - (sum_y * sum_y) ) )
    , 2) AS r_quadrado
    
FROM coeficientes;
/* ==========================================================
    VIEW PARA ANÁLISE CRUZADA: TRABALHO DOMÉSTICO VS. GERÊNCIA
    ==========================================================
    Esta view cruza os dados de horas de trabalho doméstico com
    o percentual de participação em cargos de gerência, 
    agrupados por ano, unidade federativa e sexo.
*/
USE ods5;

CREATE VIEW vw_Analise_Genero_Trabalho_Gerencia AS
SELECT
    td.ano,
    td.unidade_federativa,
    td.sexo,
    td.media_horas_semana AS horas_trabalho_domestico,
    
    -- Seleciona o percentual de gerência correspondente ao sexo da linha
    CASE 
        WHEN td.sexo = 'Mulher' THEN cg.porcentagem_mulheres
        WHEN td.sexo = 'Homem' THEN cg.porcentagem_homens
    END AS porcentagem_em_gerencia

FROM 
    TrabalhoDomestico_Cuidados AS td
JOIN 
    CARGOS_GERENCIAIS AS cg
ON 
    td.ano = cg.ano 
    AND td.unidade_federativa = cg.unidade_federativa
WHERE
    /* Filtra a tabela 'TrabalhoDomestico_Cuidados' para pegar 
       apenas os agregados principais (totais e médias regionais), 
       excluindo recortes de idade, raça, etc.
    */
    (td.observacoes LIKE 'Total de horas%' OR 
     td.observacoes LIKE 'Média regional%' OR 
     td.observacoes LIKE 'Evolução histórica%')
    AND td.raca_cor IS NULL
    
    /* Filtra a tabela 'CARGOS_GERENCIAIS' para pegar
       apenas o grupo principal de "dirigentes e gerentes".
    */
    AND cg.grupo_ocupacional = 'Grupo 1 – dirigentes e gerentes';
    
    USE ods5;
    
    SELECT * from vw_analise_genero_trabalho_gerencia;