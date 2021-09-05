# Daily-task
teste para estagio

## descrição do teste

**Objetivo**

Criar um sistema de “Daily task” onde será adicionado as tarefas a serem feitas do dia (podendo alterar e excluir elas) e ir marcando como feita.
* Criar uma tela JSP para inserir uma grid das tarefas cadastradas, na grid, pode marcar a tarefa como feita, alterar e excluir a tarefa. 
* Ao clicar em alterar, abrir outra tela em JSP com os dados da tarefa para alterar. 
* Ao excluir uma tarefa, exibir uma confirmação para o usuário confirmar a exclusão e caso confirme, fazer uma exclusão lógica no banco de dados;
* Ao marcar a tarefa como feita, deve alterar no banco de dados e mudar o botão para desmarcar a tarefa;
* Na tela JSP da grid, criar um botão para inserir uma tarefa. Ao clicar nela, enviar para a tela de inserção da tarefa (usar a mesma tela onde altera a tarefa);

**Tecnologias a ser usada**

* *Java (Servlet/ Struts 1.2)*
* *HTML (JSP)*
* *CSS (CSS/CSS3/SCSS)*
* *JavaScript (Puro/JQuery /Ajax/Angular)*
* *MySQL*

OBS.: No banco de dados, criar:<br/>
Database: prova_remsoft<br/>
Tabela: tarefa<br/>
Campos: id (int 11 – PK - AUTO INCREMENTAL), descrição (varchar 255), finalizado (tinyint 1), dt_finalizado (datetime), dt_criacao (datetime), dt_ult_alt (datetime), excluído (tinyint 1)


# REQUISITOS

- Tomcat 9
- mysql
- java 11

**Link de acesso ao projeto: http://localhost:8080/Daily_task/tarefas**

Obs.: O arquivo para configuração da conexão com banco de dados está na pasta (Daily-task/src/main/java/br/com/mayki/daily_task/utils/Conexao.java).

# Como Executar
https://user-images.githubusercontent.com/58126683/132125911-3a5a178e-eb8e-4c81-a5c8-8afa4b4701f3.mp4

# Em Funcionamento
https://user-images.githubusercontent.com/58126683/132125863-19af5092-1e72-4ce6-b907-8819a587c8de.mp4

