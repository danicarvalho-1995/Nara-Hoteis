# Nara Hotéis | Análise de Dados e Business Intelligence

Projeto de análise de dados aplicada à hotelaria, desenvolvido com Python, SQL, MySQL e Power BI, com foco no tratamento de bases de dados, na análise de desempenho operacional e na construção de dashboards para apoiar a tomada de decisão.

**Autores:** Daniel de Carvalho Nunes e Karoline Duffrayer.

---

## Índice

1. [Sobre o projeto](#-sobre-o-projeto)
2. [Objetivos](#-objetivos)
3. [Tecnologias utilizadas](#-tecnologias-utilizadas)
4. [Etapas de desenvolvimento](#-etapas-de-desenvolvimento)
5. [Estrutura e arquivos do projeto](#-estrutura-e-arquivos-do-projeto)
6. [Modelagem dos dados](#-modelagem-dos-dados)
7. [Análise exploratória com Python](#-análise-exploratória-com-python)
8. [Consultas SQL](#-consultas-sql)
9. [Dashboard no Power BI](#-dashboard-no-power-bi)
10. [Indicadores e análises](#-indicadores-e-análises)
11. [Como executar o projeto](#-como-executar-o-projeto)
12. [Resultados e aprendizados](#-resultados-e-aprendizados)
13. [Limitações da análise](#-limitações-da-análise)
14. [Autores](#-autores)

---

## Sobre o projeto

O Nara Hotéis é um projeto de análise de dados desenvolvido para explorar informações de uma rede hoteleira fictícia, transformando dados operacionais em informações que podem auxiliar na avaliação do desempenho das unidades e na identificação de oportunidades de melhoria.

O projeto percorre diferentes etapas do processo analítico, desde a organização e preparação das bases até a exploração dos dados, a elaboração de consultas e a construção de visualizações interativas.

A solução utiliza Python para tratamento e análise exploratória, SQL e MySQL para consulta e organização dos dados e Power BI para desenvolver dashboards voltados à interpretação dos resultados.

O trabalho foi estruturado como um projeto de portfólio, reunindo competências técnicas de análise de dados, manipulação de bases, consultas a bancos de dados, visualização e comunicação de resultados.

## Objetivos

- Organizar e preparar bases de dados relacionadas à operação hoteleira.
- Identificar inconsistências e realizar o tratamento dos dados.
- Explorar informações sobre reservas, clientes, canais de aquisição e unidades.
- Estruturar consultas SQL para investigar questões de negócio.
- Desenvolver indicadores de desempenho operacional.
- Criar dashboards interativos para comparar resultados por período, região e unidade.
- Aplicar técnicas de análise de dados para transformar registros operacionais em informações relevantes para a gestão.

## Tecnologias utilizadas

| Tecnologia | Aplicação no projeto |
|---|---|
| Python | Manipulação, limpeza, validação e análise dos dados. |
| Pandas | Organização de DataFrames, transformação de colunas e integração entre bases. |
| Jupyter Notebook | Documentação e execução das etapas de análise. |
| SQL | Consultas, filtros, agregações e investigação dos dados. |
| MySQL | Armazenamento e consulta das informações em banco de dados relacional. |
| Power BI | Modelagem analítica, criação de medidas e desenvolvimento de dashboards. |
| DAX | Cálculo de indicadores e comparações temporais no Power BI. |
| CSV | Intercâmbio de dados entre as etapas do projeto. |
| Git e GitHub | Versionamento e documentação do projeto. |

## Etapas de desenvolvimento

O desenvolvimento foi organizado em etapas complementares, conectando a preparação dos dados à análise e à apresentação dos resultados.

### 1. Organização e compreensão das bases

A primeira etapa consistiu em identificar as bases disponíveis e compreender o significado dos campos de cada conjunto de dados.

Foram consideradas informações relacionadas a:

- Reservas e períodos de hospedagem.
- Clientes e características cadastrais.
- Canais de aquisição de reservas.
- Funcionários.
- Unidades hoteleiras.
- Tipos de quarto.

Essa etapa permitiu identificar as entidades do negócio, as chaves de relacionamento e as informações necessárias para responder às perguntas analíticas.

### 2. Tratamento e validação dos dados

Com Python e Pandas, as bases foram preparadas para utilização nas etapas seguintes.

O processo de preparação pode envolver:

- Verificação dos nomes e tipos das colunas.
- Conversão de campos numéricos e datas.
- Identificação de valores ausentes e registros inconsistentes.
- Conferência de identificadores e relacionamentos.
- Verificação de duplicidades.
- Padronização dos dados utilizados nas análises.
- Exportação das bases preparadas para utilização em outras ferramentas.

A finalidade dessa etapa é reduzir problemas de qualidade que possam comprometer os cálculos e as visualizações.

### 3. Estruturação do banco de dados

O projeto também contempla scripts SQL destinados à criação da estrutura do banco e à realização de consultas.

A organização relacional permite armazenar informações em tabelas separadas e relacioná-las por meio de identificadores, reduzindo a necessidade de concentrar todos os dados em uma única tabela.

Os scripts de criação e consulta documentam essa parte do trabalho e permitem investigar as informações diretamente no banco de dados.

### 4. Análise exploratória com Python

Após a preparação das bases, o notebook de análise é utilizado para explorar os dados e compreender suas características.

A análise exploratória permite examinar distribuições, frequências, valores ausentes, possíveis inconsistências e diferenças entre grupos.

No contexto da hotelaria, essas investigações podem contribuir para compreender o comportamento das reservas, o perfil dos clientes, a distribuição das operações entre unidades e a avaliação dos hóspedes.

O notebook também funciona como registro do raciocínio analítico, permitindo acompanhar as transformações e os cálculos realizados durante o desenvolvimento.

### 5. Modelagem e construção do dashboard

Com os dados preparados, o Power BI é utilizado para organizar as informações, estabelecer relacionamentos e construir indicadores.

Essa etapa envolve a definição dos campos utilizados nos filtros, a criação de medidas analíticas e a organização visual dos resultados.

O objetivo é permitir que o usuário explore o desempenho da operação por diferentes perspectivas, sem precisar consultar manualmente cada arquivo ou tabela.

### 6. Consolidação e apresentação dos resultados

A etapa final reúne os resultados em relatórios e materiais de apresentação.

A combinação de tabelas, indicadores e visualizações facilita a comunicação dos resultados e permite demonstrar como as ferramentas de análise de dados podem ser utilizadas para apoiar decisões de negócio.

## Estrutura e arquivos do projeto

O repositório reúne materiais referentes às diferentes etapas do desenvolvimento. Os principais arquivos identificados no projeto são:

### Notebook Python

**`21.09NaraHoteis_Analise.ipynb`**

Notebook destinado à execução e documentação das análises com Python. Reúne o ambiente de trabalho utilizado para explorar e manipular as bases de dados.

### Dashboard Power BI

**`Nara Hoteis.pbix`**

Arquivo do Power BI que contém o relatório analítico, incluindo a organização das visualizações, os filtros, os relacionamentos e as medidas implementadas no modelo.

### Scripts SQL

Os arquivos SQL documentam a criação da estrutura do banco e as consultas utilizadas no projeto:

- `criacao.sql` — script relacionado à criação da estrutura do banco.
- `consultas.sql` — consultas utilizadas para explorar e analisar os dados.
- `nara_hoteis_criacao.sql` — script adicional de criação do banco ou de suas tabelas.
- `nara_hoteis_consulta.sql` — conjunto adicional de consultas SQL.

Os nomes indicam suas finalidades gerais. Para determinar diferenças exatas entre os scripts, é necessário consultar seu conteúdo individual.

### Bases de dados

O projeto contém arquivos CSV relacionados às entidades do negócio, incluindo:

- Clientes.
- Canais.
- Funcionários.
- Reservas.
- Tipos de quarto.
- Unidades.

Essas bases constituem a matéria-prima para as etapas de tratamento, modelagem e análise.

### Relatórios e materiais de apresentação

O repositório também reúne arquivos complementares, incluindo documentos, apresentações e versões em HTML relacionadas ao desenvolvimento ou à apresentação do projeto.

Esses materiais apoiam a documentação das análises e a comunicação dos resultados.

> Observação: a listagem acima descreve os arquivos identificados durante a documentação do projeto. Para consultar a relação completa e atualizada dos arquivos e diretórios, acesse a [estrutura do repositório no GitHub](https://github.com/danicarvalho-1995/Nara-Hoteis/tree/main).

## Modelagem dos dados

A análise considera entidades relacionadas à operação hoteleira, com destaque para a tabela de reservas e as tabelas cadastrais que complementam suas informações.

### Principais entidades

| Entidade | Informações disponíveis |
|---|---|
| Reservas | Identificadores, unidade, cliente, canal, datas de check-in e check-out, quantidade de diárias, hóspedes, avaliação, status e forma de pagamento. |
| Clientes | Identificador, nome, cidade e estado de origem, faixa etária e tipo de cliente. |
| Canais | Identificador, nome do canal e percentual de comissão. |
| Funcionários | Informações cadastrais dos funcionários. |
| Unidades | Identificador, nome, cidade, região, categoria e total de quartos. |
| Tipos de quarto | Identificadores dos tipos de quarto e informações associadas à categoria de acomodação. |

A tabela de reservas concentra os registros operacionais, enquanto as demais entidades fornecem informações complementares para segmentação e comparação.

Os relacionamentos devem utilizar identificadores compatíveis entre as tabelas, respeitando a cardinalidade e a integridade dos dados.

## Análise exploratória com Python

Python foi utilizado como ferramenta de manipulação e investigação das bases.

A biblioteca Pandas permite executar operações como seleção de colunas, conversão de tipos, filtragem de registros, junção entre tabelas e cálculo de estatísticas descritivas.

Entre as análises pertinentes ao conjunto de dados estão:

- Distribuição das reservas por unidade e região.
- Frequência dos diferentes status de reserva.
- Quantidade de hóspedes e diárias.
- Distribuição dos clientes por faixa etária e origem.
- Participação dos canais de aquisição.
- Distribuição e consistência das avaliações.
- Identificação de registros ausentes ou inconsistentes.

A exploração dos dados ajuda a orientar a criação dos indicadores e a identificar limitações que precisam ser consideradas antes da interpretação dos resultados.

## Consultas SQL

As consultas SQL permitem investigar os dados diretamente no banco relacional.

Entre as operações aplicáveis ao projeto estão:

- Seleção de registros com `SELECT`.
- Filtragem com `WHERE`.
- Agregação com `GROUP BY`.
- Ordenação com `ORDER BY`.
- Junção de tabelas com `JOIN`.
- Cálculo de frequências e totais.
- Comparação de resultados entre unidades, regiões e canais.

As consultas complementam a análise realizada em Python e permitem demonstrar conhecimentos de manipulação de dados em bancos relacionais.

## Dashboard no Power BI

O dashboard foi concebido para apresentar informações operacionais da rede hoteleira de forma visual e interativa.

A utilização de filtros permite segmentar os dados e investigar diferenças entre unidades, regiões e períodos.

### Perspectivas de análise

**Visão geral**

Concentra os indicadores de desempenho e oferece uma visão resumida da operação.

**Desempenho regional**

Permite comparar as unidades por região e identificar diferenças na distribuição das reservas, dos hóspedes e das diárias.

**Desempenho por unidade**

Possibilita analisar individualmente as unidades hoteleiras e comparar seus resultados operacionais.

**Diagnóstico operacional**

Reúne perspectivas que ajudam a investigar o comportamento das reservas, a qualidade das avaliações e as diferenças entre grupos de clientes ou canais.

A implementação de cada página e de cada indicador deve ser consultada diretamente no arquivo `.pbix`.

## Indicadores e análises

Os dados disponíveis permitem trabalhar com indicadores operacionais como:

| Indicador | Objetivo |
|---|---|
| Total de reservas | Quantificar os registros de reservas segundo os critérios definidos. |
| Total de hóspedes | Avaliar a quantidade de hóspedes associada às reservas consideradas. |
| Total de diárias | Medir o volume de diárias registrado nas bases. |
| Avaliação média | Examinar a avaliação dos hóspedes com registros válidos. |
| Taxa de avaliação | Medir a proporção de reservas avaliadas, conforme a regra de negócio adotada. |
| Comparação mensal | Avaliar a variação dos indicadores entre períodos mensais. |
| Comparação anual | Comparar resultados com o mesmo período do ano anterior, quando houver dados suficientes. |
| Distribuição regional | Comparar a participação das regiões nos indicadores operacionais. |

Os cálculos precisam respeitar a definição de cada indicador, os filtros aplicados e a qualidade dos dados de origem.

Por exemplo, o total de reservas pode exigir a contagem distinta dos identificadores de reserva, enquanto a taxa de avaliação depende da definição de quais registros são elegíveis para avaliação.

## Como executar o projeto

### Pré-requisitos

Para reproduzir as principais etapas, recomenda-se ter instalado:

- Git.
- Python 3.
- Jupyter Notebook ou JupyterLab.
- Pandas.
- MySQL Server e um cliente SQL.
- Power BI Desktop, para abrir e editar o dashboard.

### 1. Clonar o repositório

```bash
git clone https://github.com/danicarvalho-1995/Nara-Hoteis.git
cd Nara-Hoteis
```

### 2. Preparar o ambiente Python

Crie um ambiente virtual:

```bash
python -m venv .venv
```

No Windows, ative o ambiente com:

```bash
.venv\Scripts\activate
```

Instale as bibliotecas necessárias conforme as dependências utilizadas no notebook:

```bash
pip install pandas jupyter jinja2
```

A biblioteca `jinja2` também pode ser necessária para renderizar visualizações formatadas com `DataFrame.style` no Pandas.

### 3. Executar o notebook

Inicie o Jupyter:

```bash
jupyter notebook
```

Abra o arquivo `21.09NaraHoteis_Analise.ipynb` e execute as células na ordem apresentada.

Os caminhos dos arquivos de entrada e saída devem corresponder à organização das bases no ambiente local.

### 4. Configurar o MySQL

Instale e inicie o MySQL Server. Em seguida, examine os scripts de criação disponíveis no repositório e execute o script correspondente à estrutura do banco.

Depois da criação das tabelas, carregue os dados conforme o formato e a ordem exigidos pelos scripts.

Execute as consultas SQL para verificar os registros e reproduzir as análises disponíveis.

As credenciais e os parâmetros de conexão devem ser configurados no ambiente local, sem publicar senhas ou outros dados sensíveis no repositório.

### 5. Abrir o Power BI

Abra o arquivo `Nara Hoteis.pbix` no Power BI Desktop.

Caso o relatório utilize caminhos locais ou conexões externas, atualize as configurações de origem dos dados antes de executar a atualização.

Confira os relacionamentos, os tipos de dados, as medidas e os filtros para garantir que os indicadores sejam calculados corretamente.

## Resultados e aprendizados

O projeto reúne etapas importantes do trabalho de um profissional de análise de dados:

- Preparação, limpeza e validação de bases.
- Manipulação de dados com Python e Pandas.
- Exploração de dados por meio de estatísticas descritivas.
- Consulta e organização de informações com SQL e MySQL.
- Estruturação de relacionamentos entre entidades.
- Criação de indicadores e medidas no Power BI.
- Construção de visualizações para análise de desempenho.
- Documentação de processos e apresentação de resultados.

A integração dessas etapas demonstra a aplicação de diferentes ferramentas em um fluxo de trabalho analítico, desde os dados de origem até sua utilização em relatórios para apoiar decisões.

## Limitações da análise

Os resultados dependem da cobertura, da consistência e da granularidade das bases disponíveis.

Em particular, a existência de campos como quantidade de diárias, status de reserva, avaliação e comissão não significa que todos os indicadores financeiros possam ser calculados.

Para calcular receita efetiva, diária média ou RevPAR, é necessário dispor de dados financeiros e operacionais adequados, como valores efetivamente cobrados, receita de hospedagem e disponibilidade de quartos no período.

Esses indicadores não devem ser inferidos apenas a partir da quantidade de reservas ou de tarifas-base, sem validar as regras de negócio e os dados necessários.

Da mesma forma, comparações mensais e anuais exigem cobertura temporal suficiente e critérios consistentes para definir quais reservas entram em cada período.

## Autores

**Daniel de Carvalho Nunes** e **Karoline Duffrayer**

Projeto desenvolvido com o objetivo de aplicar conhecimentos de análise de dados, SQL, Python e Business Intelligence a um cenário de gestão hoteleira.

---

**Repositório:** [github.com/danicarvalho-1995/Nara-Hoteis](https://github.com/danicarvalho-1995/Nara-Hoteis)

