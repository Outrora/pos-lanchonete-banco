# POS Lanchonete - Banco de Dados

Este repositório contém a estrutura do banco de dados para o sistema **POS Lanchonete**, um sistema de ponto de venda voltado para lanchonetes.

## 🎯 Objetivo

O objetivo deste projeto é fornecer o esquema de banco de dados necessário para o funcionamento do sistema POS Lanchonete, incluindo tabelas, relacionamentos e scripts de criação e popular dados essenciais.

## 🚀 Tecnologias Utilizadas

- **PostgreSQL**: Utilizado como SGBD para o gerenciamento dos dados.
- **SQL Scripts**: Para criação de tabelas, relacionamentos e inserção de dados iniciais.

## ⚙️ Pré-requisitos

- **PostgreSQL** instalado na sua máquina.
- Um usuário com permissões para criar bancos de dados e tabelas.

## 🛠️ Como Utilizar

1. **Clone o repositório**:
    ```bash
    git clone https://github.com/pauloferreiradeoliveira/pos-lanchonete-banco.git
    cd pos-lanchonete-banco
    ```

2. **Crie o banco de dados**:
    ```sql
    CREATE DATABASE pos_lanchonete;
    ```

3. **Execute o script de criação das tabelas**:
    ```bash
    psql -U seu_usuario -d pos_lanchonete -f scripts/create_tables.sql
    ```

4. **(Opcional) Insira dados iniciais**:
    ```bash
    psql -U seu_usuario -d pos_lanchonete -f scripts/insert_data.sql
    ```

## 📝 Licença

Este projeto está sob a licença [MIT](./LICENSE). Consulte o arquivo para mais informações.