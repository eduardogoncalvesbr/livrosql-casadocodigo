SQL: Uma abordagem para bancos de dados Oracle
=====================

Olá, galera!!! Tudo bom? Fico muito feliz por você ter despendido um tempo para ler meu livro e o mais bacana, se você chegou até aqui, é sinal que ficou interessado em ver como tal da SQL funciona e deseja testar os conhecimentos adquiridos. Fique a vontade, abaixo, te explico como montar a base para testar os SQLs do livro e também utilizá-los em suas práticas. Conte comigo para qualquer coisa. Forte abraço e aproveite o material.

Se você chegou aqui por acaso e ainda não conhece o livro, compre pela Casa do Código!!! Não perca tempo!!!!
SQL: Uma abordagem para bancos de dados Oracle
http://www.casadocodigo.com.br/products/livro-sql-oracle

Qualquer coisa me contate pelo email: eduardogoncalves.br@gmail.com

Vamos lá…

Para praticar melhor os conceitos do livro, sugiro que você crie esta base de dados e execute os exemplos mostrados em cada capítulo. Ainda está valendo aquela máxima que “A prática leva a perfeição”. Então não perca tempo e comece a treinar!!! ;-)

====================================Novidadesss!!!!

Segue o link de um vídeo que fiz sobre como utilizar um ambiente cloud da Oracle para executar os exemplos do Livro, sem que você precise criar um ambiente Oracle do zero!!!

Este vídeo vai te mostrar como é possível executar os exemplos de SQL e PL/SQL através da ferramenta online da Oracle chama Live SQL!!!

Assista ao vídeo e deixe seu comentário lá, curta e inscreva-se no canal!!! 

Segue o link: 

https://www.youtube.com/watch?v=dy62qYNPA_s&t=31s

====================================1) Execute o programa SQL*Plus e conecte com um usuário que tenha privilégios para a criação de usuários, como, por exemplo, usuários com privilégios de DBA.	
	ATENÇÃO: Não utilize ambientes de produção para estes testes. Utilize sempre bancos de dados de teste, principalmente, se estiverem utilizando usuários com privilégio de DBA, muito menos se você tiver pouca experiência para manipulá-los.
2) Copie o script "criar_usuario.sql"  para o diretório raiz “C:\”, e execute o comando abaixo no SQL*plus, para criar um usuário específico que servirá para a criação da base de dados para os exemplos do livro.
	@"C:\cria_usuario.sql”	Obs.: Para isto, você precisará estar conectado com um usuário que tenha privilégios de DBA, por exemplo.	Além de criar o usuário, este script já concede privilégios de criação de tabelas, os quais, serão utilizados para rodar os próximos scripts mencionados nos passos 4 e 5.3) Agora extraia o conteúdo dos arquivos "base_SCOTT.zip" e "base_HR.zip" no diretório raiz da sua máquina (C:\).

4) Abra o SQL*Plus e conecte com o usuário TSQL, criado no passo 1.	conn TSQL/TSQL@XE	Obs.: Aqui eu estou conectando na instancia padrão do Oracle XE chamada XE. Caso você esteja utilizando outra versão de banco ou outra instância, altere a linha de comando antes de executar.	Para confirmar se você esta, realmente, conectado no usuário, execute o comando “SHOW USER” e dê um “Enter”. Ele deve mostrar o nosso usuário TSQL.5) Execute a seguinte linha de comando no SQL*Plus para criar a base SCOTT (conteúdo extraído do arquivo "base_SCOTT.zip"):	@"C:\base_SCOTT\DEMOBLD.SQL”	Depois de executado o script, experiente verificar se as tabelas foram criadas, executando o comando SQL Abaixo:	SELECT TABLE_NAME FROM USER_TABLES;	Se tudo deu certo, ele irá mostrar as tabelas: EMP, DEPT, BONUS, SALGRADE e DUMMY.6) A mesma coisa para criar a base HR (conteúdo extraído do arquivo "base_HR.zip"). Segue o comando abaixo: 	@"C:\base_HR\hr_main.sql"	Após a execução deste script, as tabelas: REGIONS, LOCATIONS, DEPARTMENTS, JOB_HISTORY, COUNTRIES, JOBS, EMPLOYEES, devem estar criadas, juntamente, com as outras tabelas criadas no passo anterior.	
	Obs.: Para a base HR, pode acontecer de alguns erros surgirem logo no início da execução do script. Isto porque antes de criar os objetos, tabelas e views, ele tenta excluí-las para o caso de você já tenha executado este script, anteriormente. Neste caso, ele apagará todos os objetos e recriará todos novamente. Na base SCOTT, tem um arquivo específico para isto (DEMODROP.SQL), que está dentro da pasta que você descompactou, que serve para apagar os objetos criados. Ao contrário da base HR, na criação da base SCOTT este arquivo não chamado. Caso você queria excluir todos os objetos execute o arquivo que esta na pasta. Eu deixei desta forma, para não mexer nos script padrões distribuídos pela Oracle.Pronto! Sua base de tabelas está criada para testar os comandos SQL do livro!Fico a disposição para qualquer ajuda que precisarem.Boa prática!!!Só um esclarecimento. Esta base de tabelas não foi criada especificamente para livro, ela já existe é distribuída pela Oracle, em usuários testes que já veem criados no banco.Se você quiser consultar, após a instalação de um banco, tente conectar com os usuários SCOTT/TIGER ou HR/HR. Mas atenção, geralmente estes usuário veem bloqueados e precisam ser liberados por um usuário com privilégios de DBA.Para maiores informações consulte a documentação da Oracle em: http://www.oracle.com/index.html
