📊 Análise de Clientes com SQL — Olist

Este projeto tem como objetivo analisar o comportamento de clientes em um e-commerce real utilizando SQL, a partir do dataset público da Olist.

A proposta é explorar dados relacionais e gerar insights de negócio através de consultas progressivas — desde análises básicas até análises mais completas com múltiplas tabelas.

⸻

🎯 Objetivo

Responder perguntas de negócio como:
	•	Quantos clientes e pedidos existem na base?
	•	Qual o valor total movimentado?
	•	Quem são os clientes que mais compram?
	•	Existem clientes recorrentes?
	•	Qual o ticket médio por cliente?
	•	Como a receita evolui ao longo do tempo?

⸻

🧠 Contexto

Este projeto simula um cenário real onde um analista de dados precisa extrair informações diretamente do banco utilizando SQL, conectando diferentes tabelas para gerar valor para o negócio.

⸻

📂 Dataset

Dataset utilizado: Brazilian E-Commerce Public Dataset by Olist (Kaggle)

Principais tabelas:
	•	customers
	•	orders
	•	payments

Relacionamentos:
	•	customer_id conecta clientes e pedidos
	•	order_id conecta pedidos e pagamentos

  analise-cliente-sql-olist
│
├── data
│   ├── raw
│   │   ├── customers.csv
│   │   ├── orders.csv
│   │   └── payments.csv
│   │
│   └── processed
│
├── sql
│   ├── consultas_basicas.sql
│   └── consultas_intermediarias.sql
│
├── imagens
├── dashboard (em desenvolvimento)
│
├── README.md
└── requirements.txt

⚙️ Etapas do Projeto

🔹 1. Exploração inicial (SQL básico)

Consultas realizadas:
	•	Contagem de clientes, pedidos e pagamentos
	•	Estatísticas básicas (média, mínimo, máximo)
	•	Distribuição por status de pedido
	•	Distribuição por tipo de pagamento

⸻

🔹 2. Análise com múltiplas tabelas (JOIN)

Conexão entre tabelas para análises mais completas:
	•	Total de pedidos por cliente
	•	Total gasto por cliente
	•	Ticket médio
	•	Identificação de clientes recorrentes
	•	Receita ao longo do tempo

  📈 Principais Insights
	•	Existe uma grande concentração de receita em poucos clientes
	•	A maioria dos clientes realiza apenas uma compra
	•	Métodos de pagamento influenciam o comportamento de compra
	•	O volume de pedidos varia ao longo do tempo, indicando sazonalidade

⸻

🚀 Próximos Passos
	•	Construção de dashboard no Power BI
	•	Evolução para análises mais avançadas com SQL
	•	Integração com Python para análises complementares

⸻

🛠️ Tecnologias Utilizadas
	•	SQL
	•	SQLite (DB Browser)
	•	VS Code
	•	Git & GitHub

⸻

👨‍💻 Autor

Murillo Bernardes

Projeto desenvolvido com foco em evolução prática nas áreas de Análise de Dados e Ciência de Dados, aplicando conceitos de SQL em cenários reais.
