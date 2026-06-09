# HyDrata - Plataforma Inteligente de Monitoramento Hídrico 🌱💧

O **HyDrata** é uma solução desenvolvida em **Java (Spring Boot 3+)**, integrada a dispositivos IoT, Oracle Database XE, APIs governamentais e infraestrutura em nuvem, projetada para auxiliar pequenos e médios produtores rurais na tomada de decisões relacionadas à irrigação, monitoramento ambiental e prevenção de eventos climáticos extremos.

Este repositório foi **conteinerizado e estruturado** para atender aos requisitos da disciplina **DevOps Tools & Cloud Computing**, contemplando práticas modernas de desenvolvimento de software, banco de dados, computação em nuvem e DevOps.

---

# 👥 Equipe e Links Importantes

|    RM    | Nome Completo                  |  Turma  |
| :------: | :----------------------------- | :-----: |
| RM561489 | Ana Flavia Camelo              | 2TDSPV  |
| RM562745 | Gustavo Kenji Terada           | 2TDSPV  |
| RM566234 | João Guilherme Carvalho Novaes | 2TDSPV  |
| RM565154 | Pedro Chasci Puga              | 2TDSPV  |
| RM561342 | Lucas Figueiredo Vieira        | 2TDSPV  |

* **Link para o Repositório GitHub:** https://github.com/vitalis-sa/GLOBAL-SOLUTION-2ANO-1SEM-DEVOPS
* **Link para o Vídeo no YouTube:** https://youtu.be/pYZgpVd4p7M

---

# 📝 Descrição do Projeto

O **HyDrata** é uma plataforma inteligente voltada para o monitoramento de recursos hídricos e ambientais em propriedades rurais.

O sistema foi criado para solucionar um problema recorrente enfrentado por pequenos e médios produtores rurais: a dificuldade de acesso a informações confiáveis e acionáveis sobre irrigação, seca, enchentes e queimadas.

Embora órgãos como a Agência Nacional de Águas (ANA) e o Instituto Nacional de Pesquisas Espaciais (INPE) disponibilizem dados públicos importantes, essas informações geralmente são técnicas e pouco acessíveis ao produtor rural.

O HyDrata centraliza informações provenientes de múltiplas fontes:

* Sensores IoT instalados na propriedade rural;
* Dados meteorológicos;
* Dados hidrológicos;
* Dados de queimadas;

Através da análise dessas informações, o sistema gera recomendações e alertas inteligentes para auxiliar o produtor na tomada de decisão.

Entre as principais funcionalidades estão:

* Monitoramento de propriedades rurais;
* Gestão de produtores e cooperativas;
* Monitoramento de sensores IoT;
* Coleta de dados climáticos;
* Coleta de dados de luminosidade;
* Integração com fontes externas de dados;
* Geração automática de alertas;
* Recomendações de irrigação;
* Identificação de riscos de seca;
* Identificação de riscos de enchente;
* Identificação de riscos de queimadas.

---

# 🚀 Benefícios para o Negócio

## 💧 Uso Inteligente da Água

Permite irrigar apenas quando necessário, reduzindo desperdícios e promovendo o uso sustentável dos recursos hídricos.

## 🌾 Aumento da Produtividade

Fornece informações confiáveis para apoiar decisões relacionadas ao manejo agrícola.

## ⚠️ Prevenção de Eventos Climáticos

Auxilia na antecipação de situações de risco através da geração de alertas preventivos.

## 📈 Inclusão Tecnológica

Democratiza o acesso a tecnologias normalmente restritas a grandes produtores rurais.

## 🌎 Sustentabilidade Ambiental

Contribui para a preservação dos recursos naturais através da utilização consciente da água.

---

# 🏗️ Arquitetura Macro da Solução (Nuvem)

Abaixo está o diagrama macro representando a infraestrutura do HyDrata:

AAAAAAQUI

---

# ⚙️ Tecnologias Utilizadas

## Backend

* Java 21
* Spring Boot
* Spring Data JPA
* Hibernate
* C# + .NET

## Banco de Dados

* Oracle SQL
* Oracle PL/SQL

## DevOps

* Docker
* Docker Compose

## IoT

* ESP32
* MQTT
* Sensor de Temperatura
* Sensor de Umidade
* Sensor de Luminosidade

## APIs Externas

* ANA (Agência Nacional de Águas)
* INPE (Instituto Nacional de Pesquisas Espaciais)
* Open-Meteo

---

# 📡 Arquitetura IoT

O dispositivo ESP32 é responsável pela coleta de informações ambientais da propriedade rural.

## Sensores

* Sensor de Temperatura
* Sensor de Umidade
* Sensor de Luminosidade

## Comunicação

* Wi-Fi
* MQTT


# 💻 Instalação da Solução (How-To)

Para provisionar a infraestrutura e rodar a aplicação, siga o passo a passo estruturado abaixo.

### 1. Provisionamento da Infraestrutura na Azure
Faça o upload do script `provision_azure.sh` para o seu terminal (por exemplo, usando o botão de *Upload/Download files* no Azure Cloud Shell) e execute-o:

```bash
# Conceda permissão de execução ao script
chmod +x provision_azure.sh

# Execute o script de provisionamento
./provision_azure.sh
```

### 2. Acesso à Máquina Virtual
Após o provisionamento, conecte-se à VM criada utilizando o comando SSH com as credenciais geradas:

```bash
ssh <usuario>@<IP_DA_VM>
```

### 3. Clonagem dos Repositórios
Dentro da máquina virtual, clone os repositórios do projeto:

```bash
git clone https://github.com/vitalis-sa/GLOBAL-SOLUTION-2ANO-1SEM-DEVOPS
git clone https://github.com/vitalis-sa/GLOBAL-SOLUTION-2ANO-1SEM-C-
```

### 4. Configuração do Ambiente
Acesse o diretório do projeto e crie o arquivo de configuração `.env`:

```bash
cd GLOBAL-SOLUTION-2ANO-1SEM-DEVOPS

cat << 'EOF' > .env
# Configurações do Banco de Dados Oracle
ORACLE_PASSWORD=oracle_secret_pass
DB_URL=jdbc:oracle:thin:@db-rm566234:1521/XEPDB1
DB_USER=system
EOF
```

### 5. Inicialização dos Containers e Monitoramento
Utilize o Docker Compose para fazer o build e iniciar os serviços. Em seguida, acompanhe os logs:

```bash
# Iniciar a infraestrutura (banco e APIs) em segundo plano
sudo docker compose up -d --build

# Acompanhar os logs do banco de dados (Pressione Ctrl+C para sair)
sudo docker logs -f db-rm566234

# Acompanhar os logs da API em Java
sudo docker logs -f app-java-rm566234

# Acompanhar os logs da API em C#
sudo docker logs -f app-csharp-rm566234
```

### 6. Acesso à Documentação das APIs
Após a inicialização de todos os containers, acesse a documentação do Swagger pelo navegador (substitua `<IP_DA_VM>` pelo endereço IP público da sua máquina):

* **Swagger Java API:** `http://<IP_DA_VM>:8080/swagger-ui/index.html`
* **Swagger C# API:** `http://<IP_DA_VM>:5000/swagger-ui/index.html`


# 🗺️ Rotas da API (Visão Geral)

O sistema HyDrata possui endpoints REST distribuídos em duas APIs complementares (Java e C#). 

Abaixo está o mapeamento atualizado das rotas base disponíveis em cada serviço:

## 🔷 API em C# (.NET Core)
Focada no domínio core e em cadastros estruturais.

### 🌱 Produtores — `/api/produtores`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/produtores`               | Listar todos              |
| GET    | `/api/produtores/{id}`          | Buscar por ID             |
| GET    | `/api/produtores/email/{email}` | Buscar por E-mail         |
| POST   | `/api/produtores`               | Cadastrar novo produtor   |
| PUT    | `/api/produtores/{id}`          | Atualizar dados           |
| DELETE | `/api/produtores/{id}`          | Remover produtor          |

**Outras Rotas Base da API C#:**
* **Propriedades:** `/api/propriedades` (Operações CRUD)
* **Cooperativas:** `/api/cooperativas`
* **Planos:** `/api/planos`
* **Produtor-Cooperativa:** `/api/produtorcooperativa`

---

## ☕ API em Java (Spring Boot)
Focada em telemetria (IoT), dados climáticos, integrações governamentais e alertas.

### 📡 Dispositivos IoT — `/api/dispositivos-iot`
Endpoints para cadastro, configuração e gestão dos sensores instalados nas propriedades.

### 🌦️ Leituras — `/api/leituras`
| Método | Endpoint                              | Descrição                           |
| ------ | ------------------------------------- | ----------------------------------- |
| GET    | `/api/leituras/historico/{id}`        | Histórico de clima da propriedade   |

### 🚨 Alertas — `/api/alertas`
Endpoints para geração e consulta de alertas climáticos, hídricos e de queimadas.

**Outras Rotas Base da API Java:**
* **Dashboard:** `/api/dashboard` (Resumo e métricas consolidadas)
* **Fontes Externas:** `/api/fontes-externas` (Gerenciamento das APIs INPE/ANA)
* **Dados Externos:** `/api/dados-externos` (Dados coletados de fontes governamentais)
* **Propriedades:** `/api/propriedades` (Regras de negócio e telemetria integradas à propriedade)

---
