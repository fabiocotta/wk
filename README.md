<p align="center">
  WK - Controle de pedidos</p>

<br>
<h1>Sobre o Projeto</h1>
<p>Teste desenvolvido como parte de um desafio técnico para vaga de Desenvolvedor na WK, utilizando Delphi CE 12 , com arquitetura MVC e aplicando boas práticas como SOLID, Clean Code e design patterns aplicados.</p>

<br>

<h1>Arquitetura do Projeto (Padrão MVC)</h1>
<ul>
    <li>GUI Views - Formulários (VCL)</li>
    <li>Controllers - Regra de Negócio (lógica de controle)</li>
    <li>Entidades - Validadores (regras de negócio)</li>
    <li>Modal - Repositórios (acesso e persistência)</li>
</ul>

<br>

<h1>Boas Práticas</h1>
<ul>
    <li>SOLID (S) - Cada classe tem uma única responsabilidade.</li>
    <li>Clean Code - Resposabilidades por unidades, nomes autoexplicativos e métodos pequenos.</li>
    <li>Design Patterns (S) - Gerenciamento único de conexão com o bando de dados.</li>
    <li>Design Patterns (R) - Lógica de persistência por cada entidade.</li>
    <li>Design Patterns (DTO-like) - Passagem de dados entre camadas.</li>
</ul>

<br>
<h1>Model - MER</h1>
<p>Modelo de entidade relacionamento utlizado usando Mysql Rorkbench 8.0 CE.</p>

<br> 

<h1>Instruções para Importação do Banco de Dados</h1>

<ul>
    <li>Crie um novo banco no seu SGBD, ex: `wk`</li>
    <li>Execute o arquivo `wk.sql`, na pasta Util.</li>
    <li>Verifique se as tabelas e dados foram criados corretamente.</li>      
</ul>


<br>

<h1>Configuração do Arquivo .ini config.ini</h1>
<p>Arquivo para parametrização da conexão.</p>

```ini
[BD]
DriverID=MySQL
Server=localhost
Database=wk
User_Name=root
Password=
Port=3306
```
<br>

<h1>Considerações Finais</h1>
<p>Este projeto apresenta princípios no desenvolvimento em Delphi, com arquitetura moderna e técnicas que facilitam a manutenção, escalabilidade e integração</p>
<br>
<p align="center">Feito com ❤️ por fabiocotta</p>