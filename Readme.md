# **Teste - Inmetrics**
##### _Desenvolvido por Rafael Carvalho_
-- --
&nbsp;

## **Indice**

- [Sobre o Projeto](#sobre-o-projeto)
- [Instalação](#instalação)
- [Cenários](#cenários)
- [Testes](#testes)

&nbsp;

## **Sobre o projeto**

 Nesse projeto apresento uma automação de teste de API feita para o desafio da Inmetrics. Nele uso os verbos GET, POST e PUT para fazer alterações e requisições dentro da API disponibilizada pela empresa.

 O teste é feito em Ruby no estilo POM (Page Object Model) e com BDD (Behavior Driven Development) aplicado.


&nbsp;

## _**Instalação**_

### **Pré requisitos:**
- Ruby (versão usada no projeto: 2.7)
- Bundler

### **Instalar:**
Vá para o terminal, carregue a pasta do projeto e rode o comando:

``bundle install``

para instalar as GEMS
  
 ## _**Cenários**_
 
 - Listar um usuário em específico através da sua ID no endpoint usando o verbo GET;
 - Listar todos os usuários cadastrados na base usando o verbo GET;
 - Criar um novo usúario na base usando o verbo POST;
 - Tentar criar um usuário com uma informação inválida para retornar a mensagem de erro com o verbo POST
 - Modificar um usuário na base usando o vebo PUT

Todos os cenários com BDD estão listados na pasta _spec_

 ## **_Testes_**

Cada cenário tem suas especificações com tags para serem usadas para fazer testes individuais. 

- Para rodar todos os testes:

`` Cucumber ``

- Para rodar um teste de forma individual

 ``cucumber -t @tag``

 _As tags de cadas cenário estão especificadas no seu BDD na pasta **spec**_ 
