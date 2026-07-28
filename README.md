# Desafio MySQL - Views, Permissões e Triggers

## Objetivo

Este projeto demonstra a utilização de Views para simplificar consultas e controlar o acesso às informações, além da criação de Triggers para auditoria e controle de alterações em um banco de dados de e-commerce.

---

## Parte 1 - Views

Foram criadas as seguintes views:

- Número de empregados por departamento e localidade.
- Lista de departamentos e seus gerentes.
- Projetos com maior número de empregados.
- Lista de projetos, departamentos e gerentes.
- Empregados que possuem dependentes e identificação se são gerentes.

Também foram criados usuários com permissões específicas utilizando GRANT.

---

## Parte 2 - Triggers

Foram implementadas:

- BEFORE DELETE para armazenar usuários removidos.
- BEFORE UPDATE para registrar alterações salariais dos colaboradores.

---

## Tecnologias

- MySQL 8+
- SQL DDL
- SQL DML
- Views
- Triggers
- Controle de Permissões (GRANT)
