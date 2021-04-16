# **Teste de web - Inmetrics**
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

 Nesse projeto apresento uma automação de teste de web feita para o desafio da Inmetrics. 

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
 
 - Para que eu possa incluir novos funcionários no sistema, sendo um usuário logado posso cadastrar um novo funcionário para registro.

 - Para que eu possa visualizar o sistema sendo um usuário não cadastrado posso cadastrar um novo usuário.
 
 - Para que eu possa acessar o catálogo de funcionários do sistema Inmetrics, sendo um usuário cadastrado posso acessar o sistema com meu usuário e senha

Todos os cenários com BDD estão listados na pasta _spec_

 ## **_Testes_**

Cada cenário tem suas especificações com tags para serem usadas para fazer testes individuais. 

- Para rodar todos os testes:

`` Cucumber ``

- Para rodar um teste de forma individual

 ``cucumber -t @tag``

 _As tags de cadas cenário estão especificadas no seu BDD na pasta **spec**_ 