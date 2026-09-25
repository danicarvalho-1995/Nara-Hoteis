# Nara Hotéis | Análise de Dados e Business Intelligence

Projeto de análise de dados desenvolvido para a **Nara Hotéis**, com foco em organização, tratamento, validação e análise de dados relacionados a clientes, reservas, unidades hoteleiras, quartos, canais de venda e funcionários.

O projeto foi estruturado como um fluxo completo de análise de dados, passando pela **modelagem e criação do banco de dados, tratamento das bases, exploração dos dados, consultas SQL, análise em Python, visualização em Power BI e apresentação dos resultados**.

> **Autoria:** Daniel de Carvalho Nunes e Karoline Duffrayer

---

## Índice

* [Sobre o projeto](#sobre-o-projeto)
* [Objetivos](#objetivos)
* [Processo de desenvolvimento](#processo-de-desenvolvimento)

  * [1. Estruturação das bases](#1-estruturação-das-bases)
  * [2. Tratamento e qualidade dos dados](#2-tratamento-e-qualidade-dos-dados)
  * [3. Criação do banco de dados](#3-criação-do-banco-de-dados)
  * [4. Consultas SQL](#4-consultas-sql)
  * [5. Análise exploratória](#5-análise-exploratória)
  * [6. Visualização dos dados](#6-visualização-dos-dados)
  * [7. Relatório e apresentação](#7-relatório-e-apresentação)
* [Estrutura do projeto](#estrutura-do-projeto)
* [Descrição dos arquivos](#descrição-dos-arquivos)

  * [Arquivos CSV](#arquivos-csv)
  * [Arquivos SQL](#arquivos-sql)
  * [Arquivos de análise](#arquivos-de-análise)
  * [Relatórios e documentação](#relatórios-e-documentação)
* [Tecnologias e ferramentas](#tecnologias-e-ferramentas)
* [Fluxo de dados](#fluxo-de-dados)
* [Resultados](#resultados)
* [Como reproduzir o projeto](#como-reproduzir-o-projeto)
* [Autores](#autores)

---

## Sobre o projeto

O **Nara Hotéis** é um projeto de análise de dados desenvolvido a partir de diferentes bases relacionadas à operação de uma rede hoteleira.

O trabalho busca transformar dados operacionais em informações estruturadas para apoiar a compreensão do negócio, permitindo analisar aspectos como:

* Perfil dos clientes;
* Origem e características dos hóspedes;
* Reservas realizadas;
* Status das reservas;
* Canais de venda;
* Comissões;
* Unidades hoteleiras;
* Tipos de quartos;
* Valores de diária;
* Quantidade de hóspedes;
* Avaliações;
* Informações sobre funcionários;
* Indicadores operacionais e financeiros.

O projeto também contempla uma etapa de **qualidade e tratamento dos dados**, antes da utilização das informações nas análises.

---

## Objetivos

O projeto teve como principais objetivos:

1. Estruturar as bases de dados da Nara Hotéis;
2. Identificar e tratar inconsistências;
3. Criar um banco de dados relacional;
4. Relacionar diferentes entidades por meio de chaves primárias e estrangeiras;
5. Realizar consultas utilizando SQL;
6. Explorar os dados utilizando Python;
7. Produzir análises e indicadores relevantes para o negócio;
8. Desenvolver visualizações e dashboards no Power BI;
9. Consolidar os resultados em relatórios;
10. Apresentar as principais informações de forma visual e objetiva.

---

# Processo de desenvolvimento

O desenvolvimento foi organizado em diferentes etapas, seguindo um fluxo de análise de dados.

```text
Bases de dados
      ↓
Tratamento e limpeza
      ↓
Validação da qualidade
      ↓
Modelagem do banco de dados
      ↓
SQL e consultas
      ↓
Análise exploratória
      ↓
Visualização
      ↓
Dashboard / Relatório
      ↓
Apresentação dos resultados
```

---

## 1. Estruturação das bases

O primeiro passo consistiu na organização das diferentes fontes de dados utilizadas no projeto.

As bases contemplam informações de:

* Clientes;
* Canais de venda;
* Funcionários;
* Reservas;
* Tipos de quarto;
* Unidades hoteleiras.

Além dos arquivos originais, o projeto possui versões tratadas das bases, permitindo separar os dados de origem dos dados preparados para análise.

---

## 2. Tratamento e qualidade dos dados

Antes da análise, os dados passaram por processos de tratamento e preparação.

Entre as atividades realizadas estão:

* Identificação de inconsistências;
* Padronização de informações;
* Tratamento de registros;
* Organização dos campos;
* Preparação das bases para integração;
* Validação das informações;
* Criação de bases limpas para utilização no banco de dados e nas análises.

Essa etapa é importante porque análises e indicadores dependem diretamente da qualidade dos dados utilizados.

O repositório mantém tanto arquivos originais quanto versões tratadas, permitindo acompanhar a evolução dos dados durante o processo.

---

## 3. Criação do banco de dados

Após o tratamento, foi estruturado um banco de dados relacional utilizando **MySQL**.

O arquivo `criacao.sql` contém os comandos necessários para criação do banco `narahoteis_db` e das principais tabelas do projeto.

Entre as tabelas estão:

* `clientes`
* `canais`
* `unidades`
* `funcionarios`
* `quartos`
* `reservas`

Também foram definidas relações entre as tabelas utilizando **chaves primárias e estrangeiras**.

Por exemplo, a tabela `reservas` possui relacionamentos com clientes, unidades, tipos de quarto e canais de venda.

Essa estrutura permite integrar as diferentes fontes e realizar análises cruzadas entre as informações.

---

## 4. Consultas SQL

A etapa de SQL foi utilizada para consultar e explorar os dados armazenados no banco.

O projeto contém arquivos destinados à criação e consulta da base:

* `criacao.sql`
* `consultas.sql`
* `nara_hoteis_criacao.sql`
* `nara_hoteis_consulta.sql`

O arquivo de criação concentra a estrutura do banco e das tabelas, enquanto os arquivos de consulta são destinados à exploração das informações e obtenção de dados para análise.

> Algumas versões dos arquivos foram mantidas no repositório como parte do histórico de desenvolvimento do projeto.

---

## 5. Análise exploratória

Após a organização dos dados, foi realizada uma etapa de **Análise Exploratória de Dados (EDA)** utilizando Python e Jupyter Notebook.

O principal notebook do projeto é:

```text
21.09NaraHoteis_Analise.ipynb
```

O notebook possui mais de 14 mil linhas e aproximadamente 971 KB, concentrando etapas de preparação, exploração e análise dos dados.

Nessa etapa, os dados podem ser analisados sob diferentes perspectivas, permitindo identificar padrões, comportamentos e relações entre as variáveis.

Entre os possíveis eixos de análise estão:

* Reservas por unidade;
* Comportamento dos clientes;
* Distribuição das reservas por canal;
* Tipos de quarto;
* Quantidade de hóspedes;
* Valores de diária;
* Avaliação dos hóspedes;
* Distribuição geográfica;
* Indicadores relacionados à operação hoteleira.

---

## 6. Visualização dos dados

Os resultados das análises foram transformados em visualizações para facilitar a interpretação das informações.

O projeto possui um arquivo do **Power BI**:

```text
Nara Hoteis.pbix
```

O dashboard foi desenvolvido para transformar os dados tratados em indicadores e visualizações capazes de apresentar o desempenho da operação de maneira mais acessível.

A utilização do Power BI permite explorar os dados de forma interativa e cruzar diferentes dimensões do negócio.

---

## 7. Relatório e apresentação

Além do dashboard, o projeto conta com diferentes formatos de documentação e apresentação dos resultados.

Foram produzidos:

* Relatórios em HTML;
* Documentação em DOCX;
* Apresentação em PowerPoint;
* Dashboard em Power BI;
* Notebook com a análise em Python.

Dessa forma, o projeto não se limita à análise técnica dos dados, mas também contempla a etapa de **comunicação dos resultados**.

---

# Estrutura do projeto

A estrutura atual do repositório é composta por arquivos de dados, scripts, análises e materiais de apresentação:

```text
Nara-Hoteis/
│
├── 21.09NaraHoteis_Analise.ipynb
├── 21_09NaraHoteis_Relatorio_Final (1).html
├── Nara Hoteis.pbix
├── Nara Hotéis_23.09.pptx
├── NaraHoteis_Relatorio_Final.html
│
├── nara_hoteis_Documentacao.docx
│
├── criacao.sql
├── consultas.sql
├── nara_hoteis_criacao.sql
├── nara_hoteis_consulta.sql
│
├── canais_venda.csv
├── canaislimpo.csv
│
├── clientes.csv
├── clientes_novos.csv
├── clienteslimpo.csv
│
├── funcionarios.csv
├── funcionarios_novos.csv
├── funcionarioslimpo.csv
│
├── reservas.csv
├── reservas_novas.csv
├── reservaslimpo.csv
│
├── tipos_quarto.csv
├── tipos_quarto_novos.csv
│
├── unidades.csv
├── unidades_novos.csv
├── unidadeslimpo.csv
│
├── quartoslimpo.csv
│
└── README.md
```

A estrutura acima corresponde aos arquivos atualmente disponibilizados no repositório.

---

# Descrição dos arquivos

## Arquivos CSV

Os arquivos CSV representam as diferentes bases utilizadas no projeto.

### Clientes

```text
clientes.csv
clientes_novos.csv
clienteslimpo.csv
```

Contêm informações relacionadas aos clientes, incluindo identificadores, nome, cidade de origem, faixa etária e tipo de cliente.

As diferentes versões representam etapas distintas da preparação dos dados.

---

### Canais de venda

```text
canais_venda.csv
canaislimpo.csv
```

Contêm informações relacionadas aos canais utilizados para realização das reservas e suas respectivas características.

Entre as informações utilizadas está a comissão percentual associada ao canal.

---

### Funcionários

```text
funcionarios.csv
funcionarios_novos.csv
funcionarioslimpo.csv
```

Bases relacionadas aos funcionários das unidades hoteleiras.

Podem ser utilizadas para análises envolvendo:

* Cargo;
* Departamento;
* Salário;
* Data de admissão;
* Unidade de trabalho.

---

### Reservas

```text
reservas.csv
reservas_novas.csv
reservaslimpo.csv
```

Representam uma das principais bases do projeto.

As informações estão relacionadas às reservas realizadas, incluindo:

* Cliente;
* Unidade;
* Tipo de quarto;
* Canal;
* Check-in;
* Check-out;
* Quantidade de diárias;
* Número de hóspedes;
* Avaliação;
* Status;
* Forma de pagamento.

---

### Tipos de quarto

```text
tipos_quarto.csv
tipos_quarto_novos.csv
quartoslimpo.csv
```

Bases relacionadas aos tipos de quartos disponíveis.

Entre as informações utilizadas estão a descrição do quarto, capacidade máxima e valor da diária-base.

---

### Unidades

```text
unidades.csv
unidades_novos.csv
unidadeslimpo.csv
```

Contêm informações sobre as unidades da rede hoteleira, como:

* Nome da unidade;
* Cidade;
* Região;
* Categoria do hotel;
* Quantidade total de quartos.

---

# Arquivos SQL

## `criacao.sql`

Script responsável pela criação do banco de dados e das principais tabelas.

O arquivo também contém comandos relacionados à importação dos dados tratados para o banco MySQL.

---

## `consultas.sql`

Arquivo destinado às consultas SQL utilizadas durante o projeto.

> A versão atualmente publicada no repositório está vazia, portanto, não deve ser considerada a principal fonte das consultas realizadas.

---

## `nara_hoteis_criacao.sql`

Versão adicional do script de criação do banco de dados utilizada durante o desenvolvimento do projeto.

---

## `nara_hoteis_consulta.sql`

Arquivo complementar destinado às consultas SQL específicas do projeto.

---

# Arquivos de análise

## `21.09NaraHoteis_Analise.ipynb`

Notebook principal de análise exploratória.

É utilizado para trabalhar com os dados de forma programática, permitindo executar etapas de tratamento, transformação, exploração e análise.

O notebook foi desenvolvido em **Jupyter Notebook**, utilizando Python para manipulação e análise dos dados.

---

# Relatórios e documentação

## `NaraHoteis_Relatorio_Final.html`

Relatório final em formato HTML, utilizado para consolidar os resultados da análise.

## `21_09NaraHoteis_Relatorio_Final (1).html`

Outra versão do relatório final disponibilizada no repositório.

## `nara_hoteis_Documentacao.docx`

Documento de documentação do projeto, utilizado para registrar informações e etapas relacionadas ao desenvolvimento.

---

# Dashboard

## `Nara Hoteis.pbix`

Arquivo do **Microsoft Power BI** utilizado para construção do dashboard.

O arquivo concentra as visualizações desenvolvidas para apresentar os principais indicadores e análises do projeto.

---

# Apresentação

## `Nara Hotéis_23.09.pptx`

Apresentação em PowerPoint utilizada para comunicar os resultados do projeto.

O objetivo dessa etapa é transformar os resultados técnicos da análise em uma apresentação mais objetiva para públicos interessados nas informações de negócio.

---

# Tecnologias e ferramentas

O projeto utiliza diferentes ferramentas ao longo do processo:

| Tecnologia / Ferramenta | Utilização                              |
| ----------------------- | --------------------------------------- |
| **Python**              | Tratamento e análise dos dados          |
| **Jupyter Notebook**    | Desenvolvimento da análise exploratória |
| **Pandas**              | Manipulação e transformação dos dados   |
| **SQL**                 | Consultas e estruturação do banco       |
| **MySQL**               | Banco de dados relacional               |
| **Power BI**            | Dashboard e visualização                |
| **HTML**                | Relatórios                              |
| **Microsoft Word**      | Documentação                            |
| **PowerPoint**          | Apresentação dos resultados             |
| **CSV**                 | Armazenamento e intercâmbio das bases   |

---

# Fluxo de dados

O projeto pode ser representado pelo seguinte fluxo:

```text
                 ┌─────────────────────┐
                 │    Bases originais  │
                 │       CSV           │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │ Tratamento e        │
                 │ limpeza dos dados   │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │ Bases tratadas      │
                 │       CSV           │
                 └──────────┬──────────┘
                            │
                 ┌──────────┴──────────┐
                 ▼                     ▼
       ┌─────────────────┐    ┌─────────────────┐
       │     MySQL       │    │ Python / EDA   │
       │                 │    │ Jupyter        │
       └────────┬────────┘    └────────┬────────┘
                │                      │
                └──────────┬───────────┘
                           ▼
                 ┌─────────────────────┐
                 │ Análise dos dados   │
                 └──────────┬──────────┘
                            │
              ┌─────────────┴─────────────┐
              ▼                           ▼
     ┌─────────────────┐         ┌─────────────────┐
     │    Power BI     │         │     Relatório   │
     │    Dashboard    │         │   e apresentação│
     └─────────────────┘         └─────────────────┘
```

---

# Resultados

O projeto demonstra um fluxo completo de trabalho em análise de dados, desde a preparação das bases até a apresentação dos resultados.

Entre as principais competências aplicadas estão:

* Tratamento e limpeza de dados;
* Análise exploratória;
* Validação e organização de bases;
* Modelagem de dados;
* SQL;
* Banco de dados relacional;
* Python;
* Pandas;
* Jupyter Notebook;
* Power BI;
* Criação de indicadores;
* Visualização de dados;
* Produção de relatórios;
* Comunicação de resultados.

O projeto também demonstra a integração entre diferentes ferramentas e etapas do processo analítico, evitando que a análise seja tratada apenas como uma etapa isolada.

---

# Como reproduzir o projeto

Para reproduzir as principais etapas do projeto, recomenda-se seguir a ordem:

### 1. Obter o repositório

```bash
git clone https://github.com/danicarvalho-1995/Nara-Hoteis.git
```

### 2. Preparar o ambiente Python

Instale Python e Jupyter Notebook ou JupyterLab.

As principais bibliotecas utilizadas na análise incluem:

```bash
pip install pandas
```

Outras dependências podem ser instaladas conforme as bibliotecas utilizadas no notebook.

### 3. Preparar o MySQL

Instale o MySQL e execute o script:

```text
criacao.sql
```

ou a versão correspondente:

```text
nara_hoteis_criacao.sql
```

### 4. Carregar os dados tratados

Utilize as bases `*limpo.csv` para alimentar as tabelas correspondentes.

> **Observação:** alguns comandos de importação presentes no script SQL utilizam caminhos locais de arquivo. Esses caminhos precisam ser alterados de acordo com o ambiente em que o projeto for executado.

### 5. Executar as análises

Abra:

```text
21.09NaraHoteis_Analise.ipynb
```

e execute as células do notebook seguindo a ordem apresentada.

### 6. Visualizar o dashboard

Abra:

```text
Nara Hoteis.pbix
```

utilizando o Microsoft Power BI Desktop.

---

# Autores

## Daniel de Carvalho Nunes

Responsável pelo desenvolvimento do projeto em conjunto com Karoline Duffrayer, participando das etapas de tratamento, análise, visualização e documentação dos dados.

## Karoline Duffrayer

Responsável pelo desenvolvimento do projeto em conjunto com Daniel de Carvalho Nunes, participando das etapas de preparação, estruturação, análise e documentação dos dados.

---

## Autoria

**Nara Hotéis — Projeto de Análise de Dados**

**Daniel de Carvalho Nunes & Karoline Duffrayer**

---

## Repositório

O código, bases, análises, relatórios e materiais do projeto estão disponíveis no GitHub:

**Nara Hotéis — GitHub**

https://github.com/danicarvalho-1995/Nara-Hoteis
