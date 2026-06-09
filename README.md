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

<img width="1481" height="981" alt="Prototype VITALIS-temp" src="https://github.com/user-attachments/assets/b305d079-9091-41c0-8229-267bfbc7011d" />

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
* **Swagger C# API:** `http://<IP_DA_VM>:5000/swagger/index.html`


# 🗺️ Rotas da API (Documentação Completa)

O ecossistema HyDrata é composto por duas APIs complementares (C# e Java). Abaixo está a documentação detalhada de todos os endpoints expostos, refletindo exatamente as implementações dos *Controllers* de ambos os projetos.

---

## 🔷 API em C# (.NET Core)
Responsável pelo *Core Domain*, gerindo cadastros estruturais (Produtores, Cooperativas, Planos e suas relações).

### 🌱 Produtores — `/api/produtores`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/produtores`               | Listar todos os produtores |
| GET    | `/api/produtores/{id}`          | Buscar produtor por ID |
| GET    | `/api/produtores/{id}/propriedades` | Buscar produtor e suas propriedades vinculadas |
| GET    | `/api/produtores/email/{email}` | Buscar produtor por e-mail |
| POST   | `/api/produtores`               | Cadastrar novo produtor |
| PUT    | `/api/produtores/{id}`          | Atualizar dados do produtor |
| DELETE | `/api/produtores/{id}`          | Remover produtor |

### 🚜 Propriedades — `/api/propriedades`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/propriedades`             | Listar todas as propriedades (opcional: `?produtorId=`) |
| GET    | `/api/propriedades/{id}`        | Buscar propriedade por ID |
| POST   | `/api/propriedades`             | Cadastrar nova propriedade |
| PUT    | `/api/propriedades/{id}`        | Atualizar dados da propriedade |
| DELETE | `/api/propriedades/{id}`        | Remover propriedade |

### 🤝 Cooperativas — `/api/cooperativas`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/cooperativas`             | Listar todas as cooperativas |
| GET    | `/api/cooperativas/{id}`        | Buscar cooperativa por ID |
| POST   | `/api/cooperativas`             | Cadastrar nova cooperativa |
| PUT    | `/api/cooperativas/{id}`        | Atualizar cooperativa |
| DELETE | `/api/cooperativas/{id}`        | Remover cooperativa |

### 📋 Planos — `/api/planos`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/planos`                   | Listar todos os planos |
| GET    | `/api/planos/{id}`              | Buscar plano por ID |
| POST   | `/api/planos`                   | Cadastrar novo plano |
| PUT    | `/api/planos/{id}`              | Atualizar plano |
| DELETE | `/api/planos/{id}`              | Remover plano |

### 🔗 Vínculo Produtor-Cooperativa — `/api/produtorcooperativa`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/produtorcooperativa`      | Listar todos os vínculos |
| GET    | `/api/produtorcooperativa/produtor/{id}` | Buscar vínculos de um produtor específico |
| GET    | `/api/produtorcooperativa/cooperativa/{id}` | Buscar vínculos de uma cooperativa |
| POST   | `/api/produtorcooperativa`      | Associar produtor a uma cooperativa |
| DELETE | `/api/produtorcooperativa/{produtorId}/{cooperativaId}` | Desassociar produtor de cooperativa |

---

## ☕ API em Java (Spring Boot)
Responsável por telemetria, dados climáticos, dashboard, integrações e alertas automatizados.

### 📊 Dashboard — `/api/dashboard`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/dashboard/{propriedadeId}`| Obter dados agregados e métricas para a tela inicial |

### 📡 Dispositivos IoT — `/api/dispositivos-iot`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/dispositivos-iot`         | Listar todos os dispositivos IoT |
| GET    | `/api/dispositivos-iot/{id}`    | Buscar dispositivo IoT por ID |
| POST   | `/api/dispositivos-iot`         | Cadastrar novo dispositivo IoT |
| PUT    | `/api/dispositivos-iot/{id}`    | Atualizar dispositivo IoT |
| DELETE | `/api/dispositivos-iot/{id}`    | Remover dispositivo IoT |

### 🌦️ Leituras Climáticas (Telemetria) — `/api/leituras`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/leituras/historico/{propriedadeId}` | Listar histórico de clima de uma propriedade (opcional: `?dias=`) |

### 🚨 Alertas — `/api/alertas`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/alertas`                  | Listar todos os alertas |
| GET    | `/api/alertas/propriedade/{id}` | Listar alertas de uma propriedade (opcional: `?tipo=`) |
| GET    | `/api/alertas/{id}`             | Buscar alerta por ID |
| POST   | `/api/alertas`                  | Criar um novo alerta manualmente |
| PUT    | `/api/alertas/{id}`             | Atualizar dados de um alerta |
| DELETE | `/api/alertas/{id}`             | Remover alerta |

### 🌐 Fontes Externas — `/api/fontes-externas`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/fontes-externas`          | Listar todas as fontes (APIs governamentais, etc) |
| GET    | `/api/fontes-externas/{id}`     | Buscar fonte por ID |
| POST   | `/api/fontes-externas`          | Cadastrar nova fonte externa |
| PUT    | `/api/fontes-externas/{id}`     | Atualizar fonte externa |
| DELETE | `/api/fontes-externas/{id}`     | Remover fonte externa |

### 📉 Dados Externos — `/api/dados-externos`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/dados-externos`           | Listar dados coletados de fontes externas |
| GET    | `/api/dados-externos/{id}`      | Buscar dado externo por ID |
| POST   | `/api/dados-externos`           | Registrar nova leitura de dado externo |
| PUT    | `/api/dados-externos/{id}`      | Atualizar dado externo |
| DELETE | `/api/dados-externos/{id}`      | Remover dado externo |

### 🚜 Propriedades (Sincronização Java) — `/api/propriedades`
| Método | Endpoint                        | Descrição                 |
| ------ | ------------------------------- | ------------------------- |
| GET    | `/api/propriedades`             | Listar todas as propriedades na API Java |
| GET    | `/api/propriedades/produtor/{id}` | Listar propriedades de um produtor |
| GET    | `/api/propriedades/{id}`        | Buscar propriedade por ID |
| POST   | `/api/propriedades`             | Cadastrar espelho de propriedade no Java |
| PUT    | `/api/propriedades/{id}`        | Atualizar espelho de propriedade |
| DELETE | `/api/propriedades/{id}`        | Remover espelho de propriedade |

---
