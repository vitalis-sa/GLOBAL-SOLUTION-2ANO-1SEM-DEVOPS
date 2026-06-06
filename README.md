# 🐾 PetHub - Conteinerização (API Java)

O **PetHub** é uma API robusta desenvolvida em **Java (Spring Boot)** projetada para centralizar o ecossistema de clínicas veterinárias, tutores e pets. Este repositório foca em fornecer a base da API e foi inteiramente **conteinerizado** para atender aos rigorosos critérios acadêmicos da disciplina de DevOps.

A solução abrange o empacotamento da aplicação em um contêiner otimizado, sem privilégios de root, e sua integração a um Banco de Dados Oracle (21c), com persistência garantida através de volumes nomeados e comunicação viabilizada por uma rede bridge Docker exclusiva.

---

## 🏗️ Arquitetura Macro

> **[PLACEHOLDER PARA IMAGEM DA ARQUITETURA]**
> *Insira aqui a imagem exportada do Draw.io ou Visual Paradigm demonstrando a Arquitetura Macro da solução na nuvem.*

---

## 💻 Como Executar o Projeto (How-to)

Siga o passo a passo sequencial abaixo para clonar, configurar e subir o ambiente na sua máquina local ou em sua máquina virtual na nuvem.

### 1. Clonar o Repositório

```bash
git clone https://github.com/vitalis-sa/hydrata-java.git
cd hydrata-java
```

### 2. Configurar as Variáveis de Ambiente

Crie o arquivo `.env` copiando o modelo de exemplo fornecido. Opcionalmente, você pode editar o `.env` gerado para alterar as senhas.

```bash
cp .env.example .env
```

### 3. Iniciar os Containers (Modo Background)

Execute o comando abaixo para compilar o código fonte Java e iniciar os containers do App e do Banco de Dados conectados na mesma rede. É OBRIGATÓRIO o uso da flag `-d` para rodar em modo *background* (segundo plano).

```bash
docker compose up -d --build
```

### 4. Verificar os Logs

Aguarde alguns minutos. O banco Oracle leva um tempinho para iniciar (existe um *healthcheck* configurado). Para acompanhar o processo e verificar os logs:

```bash
docker compose logs -f
```
*(Pressione `Ctrl+C` para sair do acompanhamento de logs)*

---

## 🛡️ Validações e Evidências da Avaliação

Após a aplicação subir com sucesso, você precisará coletar as evidências conforme os requisitos da avaliação.

### Acessar e validar o Container do App (Usuário e Diretório)

Acesse o shell do container Java e execute os comandos exigidos para provar que a aplicação não roda como root, e que o diretório de trabalho está correto.

```bash
# 1. Acessar o terminal do container do app
docker exec -it app-java-rm566234 /bin/sh

# 2. Exibir o usuário conectado (deve retornar 'springuser', NÃO PODE ser root)
whoami

# 3. Exibir o diretório atual de trabalho (deve retornar '/app')
pwd

# 4. Exibir a estrutura de diretórios e o proprietário dos arquivos
ls -l

# 5. Sair do container
exit
```

### Acessar o Container de Banco e Validar Persistência (SELECT)

Demonstre que o banco subiu, que o usuário possui permissão, as tabelas foram criadas pelo Hibernate e valide a persistência fazendo um `SELECT`.

```bash
# 1. Acessar o utilitário sqlplus no container do banco (substitua a senha pela definida no .env)
docker exec -it db-rm566234 sqlplus system/senha_forte_aqui@localhost:1521/XEPDB1

# 2. Dentro do SQL*Plus, execute um SELECT em qualquer tabela do seu projeto. Exemplo:
SELECT * FROM NOME_DA_TABELA;
```

**Nota sobre Persistência:** Os dados estarão a salvo! O `docker-compose.yml` foi configurado com o volume nomeado obrigatório `db_data:/opt/oracle/oradata`.

---

## 👥 Equipe / Integrante RM

- **RM566234** - João Guilherme Carvalho Novaes
