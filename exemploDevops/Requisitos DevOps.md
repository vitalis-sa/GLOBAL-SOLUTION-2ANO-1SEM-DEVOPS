**1 ) Objetivo**

Sua equipe DevOps deverá conteinerizar a tarefa desenvolvida na disciplina de JAVA ADVANCED ou de ADVANCED BUSINESS
DEVELOPMENT WITH .NET, utilizando Dockerfile e/ou Docker Compose

Criar um ambiente em Nuvem, com pelo menos dois containers Docker integrados, sendo:

- Um Container para rodar a Aplicação: projeto em Java ou .NET
- Um Container do Banco de Dados: escolha livre entre: Oracle, H 2 , MySQL ou Postgres

**2 ) Regras para os Containers**

**2.1) Container da Aplicação: projeto em Java ou .NET**

- Deve ser construído via Dockerfile ou através do Docker Compose (obrigatório gerar sua imagem personalizada)
- Executar com usuário não privilegiado (definir o nome no Dockerfile – escolha livre)
- Definir um diretório de trabalho (definir no Dockerfile – nomeação livre)


- Usar pelo menos uma variável de ambiente
- Expor uma porta para acesso à aplicação
- O nome do Container deve conter o RM do representante da equipe
- A aplicação deve conter um CRUD completo (Create, Read, Update, Delete) e persistir os dados em **no mínimo duas tabelas** no
    Container de Banco
- Pode ser uma API ou aplicação Web
- Executar na mesma rede que o Banco

**2.2) Container do Banco de Dados:**

- Pode usar uma imagem pública, sem Dockerfile, ou utilizar Dockerfile

Deve conter:

- Volume nomeado para persistência
- Pelo menos uma variável de ambiente
- Porta exposta para acesso externo ao Banco
- O nome do Container deve conter o RM do representante da equipe
- Possuir no mínimo duas tabelas **com relacionamento** na solução
- Executar na mesma rede que o App


**2.3) Regras para os Containers (Gerais)**

- Ambos os containers devem ser executados em modo background (Segundo Plano)
- Exibir os logs de ambos os containers no terminal após a execução
- Acessar os containers com "docker container exec" e demonstrar no terminal: Estrutura de diretórios (ls-l, pwd) e Usuário
    conectado (whoami)
- Evidências obrigatórias da persistência no Banco de Dados **utilizando o comando SELECT** conectado diretamente no Container do
    Banco utilizado

**3 ) Repositório no GitHub**
No Github do seu projeto deve estar tudo que é necessário para rodar o projeto, isso incluí o código fonte completo, os Dockerfiles
e/ou docker-compose.yml (se utilizado) e um How to (tutorial) com instruções para executar o projeto **DESDE o clone do repositório**
até a execução dos testes em nuvem. O How to deve estar no README do projeto e bem formatado. Além disso deverá conter uma
breve descrição da solução proposta bem como o desenho da Arquitetura macro

**4 ) Vídeo Demonstrativo**
Com o ambiente preparado para executar o Docker em nuvem, comece executando o How to (Tutorial) criado no README (comece
clonando seu repositório)até coletar as evidências de cada operação no Banco com os Containers em execução


```
5) Desenho macro da arquitetura da solução
Desenhe a Arquitetura Macro da sua solução na nuvem (ex: fluxo de usuários, front-end, API, banco de dados, VM, containers, etc).
Utilize ferramentas como Draw.io ou Visual Paradigm (links abaixo) e inclua legendas, rótulos, imagens e setas de fluxo para facilitar a
compreensão
```
```
Sugestões de ferramentas de desenho e Imagem do Banco
```
- Azure Diagram Tool (Visual Paradigm): https://online.visual-paradigm.com/diagrams/features/azure-architecture-diagram-tool/
- Draw.io: https://app.diagrams.net/
Incluir o Desenho no README do GitHub

```
6) Entrega
Arquivo PDF com:
```
- Página de rosto com o nome da equipe, RM e Nome completo dos integrantes
- Link do GitHub
- Link do Vídeo no Youtube

```
7) Racional para a pontuação Pontuação - Até 70 pontos
```
- Desenho da Arquitetura Macro - Até 10 Pontos
- Container de Banco de Dados - Até 30 pontos

## ENTREGA • Container do App -^ Até 30 pontos


**08 ) Penalidades**

- Faltou evidenciar cada operação no banco por SELECT conectado no Banco – Menos 2,0 pontos
- Execução do App com usuário root – Menos 1,0 ponto
- Falta do How to no GitHub - Menos1,5 pontos
- Sem Utilizar Volume nomeado – Menos 1,0 ponto
- Falta de variável de ambiente - Menos 0,5 ponto por Container
- Falta de exposição da porta - Menos 0,5 ponto por Container
- Nome do Container não possui o RM – Menos 0,5 ponto por Container
- Falta definir um diretório de trabalho - Menos 0,5 ponto
- Faltou executar em modo background (Segundo Plano) - Menos 0,5 ponto por Container
- Faltou exibir os logs de ambos os containers no terminal após a execução - Menos 1,0 ponto por Container
- Faltou acessar o terminal do Container e demonstrar: Estrutura de diretórios e/ou Usuário conectado - Menos 1,0 ponto por Container
- Vídeo sem explicação, com qualidade baixa (Mínimo 720 p), gravado pelo celular ou com som muito ruim - Menos 2,0 pontos
- Apenas uma tabela no CRUD - Menos 2,0 pontos
- Sem a descrição da solução proposta no GitHub - Menos 1,0 ponto
- **Desenho da arquitetura entregue em Togafou parecido com um Fluxograma -será zerada a nota do quesito**
- Sem acesso ao GitHub ou ao vídeo - o CP não será corrigido (zero)
- Solução em LOCALHOST - o CP não será corrigido (zero)
- Sem código fonte, sem Dockerfile ou sem docker-compose.yml (se utilizado) - o CP não será corrigido (zero)
- Não serão aceitos trabalhos enviados após a data e hora acordada no documento da GS - o CP não será corrigido (zero)
- Desenho da arquitetura em Togaf - o CP não será corrigido (zero)


**Observações**

Demostre propriedade sobre o tema em sua explicação no vídeo

Cuidado com os cortes no Vídeo, tudo deve estar bem evidenciado para não restar dúvidas

Lembre-se: “O vídeo é a evidência da entrega. É a prova da disciplina”

### Apresentação durante a aula presencial após a GS ( 30 %) - Até 30 pontos

- Demonstração da solução funcionando **EM NUVEM**
- Todos os membros da equipe deverão responder individualmenteas perguntas de esclarecimento sobre arquitetura,
    código, funcionamento, solução, documentação do projeto etc.


