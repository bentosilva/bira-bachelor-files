INSERT INTO VinculoUsp VALUES (0231223,'Oziride Manzoli Neto',TO_DATE('JAN 15, 1973', 'MON DD, YYYY'),'Sim','1');
INSERT INTO VinculoUsp VALUES (8903321,'Jose Fernando Rodrigues Junior','10-JAN-10','Sim','1');
INSERT INTO VinculoUsp VALUES (7903321,'Gustavo Enrique De Almeida Prado Alves Batista','15-JAN-07','Sim','1');
INSERT INTO VinculoUsp VALUES (6903321,'Elaine Parros Machado De Sousa','13-JAN-00','Sim','1');
INSERT INTO VinculoUsp VALUES (3903321,'Raimundo Nonato Ara�jo Dos Santos',TO_DATE('JUN 16, 1987', 'MON DD, YYYY'),'Sim','1');
INSERT INTO VinculoUsp VALUES (0031220,'Joaquim Neves',TO_DATE('JAN 15, 1950', 'MON DD, YYYY'),'Nao','1');

INSERT INTO VinculoUsp VALUES (5634271,'Thiago Teixeira','03-02-06','Sim','2');
INSERT INTO VinculoUsp VALUES (5634292,'Ubiratan Francamar Soares','03-02-06','Sim','2');
INSERT INTO VinculoUsp VALUES (5634820,'Valter Moraes','03-02-06','Sim','2');
INSERT INTO VinculoUsp VALUES (6426399,'Luis Augusto Bin','03-02-07','Sim','2');
INSERT INTO VinculoUsp VALUES (7153334,'Camila Fernanda Amato Antunes','03-02-10','Sim','2');
INSERT INTO VinculoUsp VALUES (7634271,'Clara Maria Neves','03-02-10','Sim','2');
INSERT INTO VinculoUsp VALUES (7634275,'Paola Oliveira','03-02-10','Sim','2');
INSERT INTO VinculoUsp VALUES (6634271,'Uoshington Renato Flamigon','03-02-07','Sim','2');
INSERT INTO VinculoUsp VALUES (6634891,'Paula Cristhina Waltz','03-02-07','Sim','2');
INSERT INTO VinculoUsp VALUES (1634271,'Abigail Costa','03-02-00','Sim','2');
INSERT INTO VinculoUsp VALUES (1638571,'Robervaldo Wescley Junior','03-02-00','Sim','2');
INSERT INTO VinculoUsp VALUES (3634271,'Mirian Caio da Costa','03-02-03','Sim','2');
INSERT INTO VinculoUsp VALUES (1604271,'Joao Roberto Augusto','03-02-00','Nao','2');

INSERT INTO VinculoUsp VALUES (9636371,'Romero Andrade','15-JAN-04','Sim','3');
INSERT INTO VinculoUsp VALUES (973421,'Hong Ping Jo','15-JAN-03','Sim','3');
INSERT INTO VinculoUsp VALUES (9903321,'Joao Renato Souza Junior','01-JUN-01','Nao','3');
INSERT INTO VinculoUsp VALUES (2903321,'Maria Claudia da Silva',TO_DATE('MAR 23, 1997', 'MON DD, YYYY'),'Sim','3');
--#################################################################################################################################

INSERT INTO Disciplina VALUES ('SCC0241', 'Laboratorio de Bases de Dados',
'Linguagem SQL: comandos de defini��o de dados e de manipula��o de dados. 
Integridade e seguran�a de banco de dados: conceitos e comandos SQL. 
Comandos anal�ticos em SQL. Vis�es, gatilhos (triggers) e procedimentos armazenados (stored procedures). 
Acesso multiusu�rio em bancos de dados. Projeto de sistemas usando a tecnologia cliente/servidor em 
bancos de dados.' );

INSERT INTO Disciplina VALUES ('SCC0240', 'Banco de Dados', 
'Introdu��o a banco de dados e sistemas gerenciadores de banco de dados. 
Arquitetura ANSI-X3-SPARC: n�vel f�sico, n�vel conceitual e n�vel externo. 
Modelagem de dados utilizando o modelo entidade-relacionamento. O modelo relacional: 
conceitos, �lgebra relacional e normaliza��o. Introdu��o a SQL: comandos de defini��o de 
dados e de manipula��o de dados. Introdu��o ao processamento de transa��es: conceitos e teoria. 
Aspectos de implementa��o dos sistemas gerenciadores de banco de dados.' );

INSERT INTO Disciplina VALUES ('SMA0333', 'Calculo III',
'Seq��ncias num�ricas. S�ries num�ricas. Crit�rios de converg�ncia e diverg�ncia para 
s�ries de termos positivos. S�ries absolutamente convergentes. Crit�rios de Cauchy e de Dirichlet.
Seq��ncias de fun��es. S�ries de fun��es. S�ries de pot�ncias. S�ries de Fourier: Equa��o do calor e 
da onda como motiva��o para o estudo das S�ries de Fourier. S�ries de Fourier para fun��es pares e 
�mpares. Teorema de Fourier. Aplica��es' );

INSERT INTO Disciplina VALUES ('SMA0180', 'Matematica Discreta I',
'1. Provas: Princ�pio da Indu��o Finita e Redu��o ao Absurdo;2. Problemas Recorrentes: 
Torres de Han�i, Problema de Josephus, Regi�es do Plano;3. Somas: Nota��o, Somas e Recurs�es, 
Manipula��o de Somas, Somas Telesc�picas;Somas M�ltiplas.4. Teoria dos N�meros: Divisibilidade, 
Primos, MDC e algoritmo de Euclides,Congru�ncias, Teorema de Euler-Fermat, aplica��es para a 
computa��o: algoritmo decriptografia RSA e geradores de n�meros aleat�rios;5. Grupos: grupos, 
subgrupos, grupos de permuta��o, teorema de Lagrange;6. Fundamentos: l�gica sentencial, conjuntos, 
fun��es e rela��es, enumerabilidade,Diagonaliza��o de Cantor e o Problema da Parada (Halting Problem)' );

INSERT INTO Disciplina VALUES ('SME0320', 'Estatistica I',
'An�lise Explorat�ria de Dados (Estat�stica Descritiva). O espa�o probabil�stico. 
Modelos probabil�sticos. Depend�ncia e independ�ncia de eventos. Eventos condicionados. 
Vari�veis aleat�rias unidimensionais e n-dimensionais. Distribui��es de probabilidade. 
Fun��es de vari�veis aleat�rias. Esperan�a matem�tica. Momentos. Covari�ncia e correla��o. 
Teorema do limite central. Estima��o de par�metros. Testes de hip�teses. Testes de ader�ncia. 
Regress�o linear.' );

INSERT INTO Disciplina VALUES ('SSC0124', 'Analise e Projeto Orientados a Objetos',
'Vis�o geral dos m�todos para an�lise e projeto orientados a objetos, em particular o 
Processo Unificado. Compara��o entre os principais m�todos. Como modelar com objetos usando 
a nota��o UML: o modelo conceitual; o modelo comportamental: diagrama de seq��ncia, opera��es, 
contratos; o modelo de intera��o: casos de usos, colabora��o entre objetos e diagramas de comunica��o.
 Padr�es para atribui��o de responsabilidades e padr�es de projeto. O problema de persist�ncia. 
 Ferramentas de apoio.' );
 
INSERT INTO Disciplina VALUES ('SCC0203', 'Algoritmos e Estruturas de Dados II',
'Organiza��o de arquivos. Algoritmos para classifica��o externa. Conceito de indexa��o de arquivos. 
Processamento cossequencial e ordena��o de arquivos grandes. �rvores B e suas varia��es. 
Estruturas de dados para representa��o de grafos, e algoritmos cl�ssicos sobre grafos.' );
--#################################################################################################################################
INSERT INTO Leciona VALUES (231223, 'SMA0333');
INSERT INTO Leciona VALUES (231223, 'SMA0180');
INSERT INTO Leciona VALUES (3903321, 'SMA0180');
INSERT INTO Leciona VALUES (3903321, 'SME0320');
INSERT INTO Leciona VALUES (8903321, 'SCC0241');
INSERT INTO Leciona VALUES (8903321, 'SCC0240');
INSERT INTO Leciona VALUES (6903321, 'SCC0241');
INSERT INTO Leciona VALUES (6903321, 'SCC0240');
INSERT INTO Leciona VALUES (7903321, 'SSC0124');
INSERT INTO Leciona VALUES (7903321, 'SCC0203');
--#################################################################################################################################
INSERT INTO Turma VALUES ('SCC0203', '2010-01');
INSERT INTO Turma VALUES ('SCC0240', '2010-01');
INSERT INTO Turma VALUES ('SCC0241', '2010-01');
INSERT INTO Turma VALUES ('SCC0203', '2010-02');
INSERT INTO Turma VALUES ('SCC0240', '2010-02');
INSERT INTO Turma VALUES ('SCC0241', '2010-02');
INSERT INTO Turma VALUES ('SSC0124', '2010-01');
INSERT INTO Turma VALUES ('SMA0333', '2010-01');
INSERT INTO Turma VALUES ('SMA0180', '2010-01');
INSERT INTO Turma VALUES ('SME0320', '2010-01');
--#################################################################################################################################
--Thiago
INSERT INTO Matricula_se VALUES (5634271,'SME0320', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634271,'SCC0241', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634271,'SMA0180', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634271,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634271,'SCC0203', '2010-01',NULL);
--Ubiratan
INSERT INTO Matricula_se VALUES (5634292,'SME0320', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634292,'SCC0241', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634292,'SMA0180', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634292,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634292,'SCC0203', '2010-01',NULL);
--Valter
INSERT INTO Matricula_se VALUES (5634820,'SME0320', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634820,'SCC0241', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634820,'SMA0180', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634820,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (5634820,'SCC0203', '2010-01',NULL);
--Luis Augusto
INSERT INTO Matricula_se VALUES (6426399,'SCC0240', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6426399,'SCC0241', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6426399,'SCC0203', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6426399,'SME0320', '2010-01',NULL);
--Uoshington
INSERT INTO Matricula_se VALUES (6634271,'SCC0240', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6634271,'SCC0241', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6634271,'SCC0203', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6634271,'SME0320', '2010-01',NULL);
--Paula
INSERT INTO Matricula_se VALUES (6634891,'SCC0240', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6634891,'SCC0241', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6634891,'SCC0203', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (6634891,'SME0320', '2010-01',NULL);
--Camila
INSERT INTO Matricula_se VALUES (7153334,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7153334,'SMA0180', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7153334,'SCC0203', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7153334,'SCC0240', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (7153334,'SSC0124', '2010-01',NULL);
--Clara
INSERT INTO Matricula_se VALUES (7634271,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7634271,'SMA0180', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7634271,'SCC0203', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7634271,'SCC0240', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (7634271,'SSC0124', '2010-01',NULL);
--Paola
INSERT INTO Matricula_se VALUES (7634275,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7634275,'SMA0180', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7634275,'SCC0203', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (7634275,'SCC0240', '2010-02',NULL);
INSERT INTO Matricula_se VALUES (7634275,'SSC0124', '2010-01',NULL);
--Abigail
INSERT INTO Matricula_se VALUES (1634271,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (1634271,'SMA0180', '2010-01',NULL);
--Robervaldo
INSERT INTO Matricula_se VALUES (1638571,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (1638571,'SMA0180', '2010-01',NULL);
--Mirian
INSERT INTO Matricula_se VALUES (3634271,'SMA0333', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (3634271,'SMA0180', '2010-01',NULL);
INSERT INTO Matricula_se VALUES (3634271,'SCC0240', '2010-01',NULL);
--#################################################################################################################################
INSERT INTO CursoEletronico VALUES (20321,'SCC0203','2010-01','Nao');
INSERT INTO CursoEletronico VALUES (20321,'SCC0203','2010-02','Sim');
INSERT INTO CursoEletronico VALUES (24021,'SCC0240','2010-01','Nao');
INSERT INTO CursoEletronico VALUES (24021,'SCC0240','2010-02','Sim');
INSERT INTO CursoEletronico VALUES (24121,'SCC0241','2010-01','Nao');
INSERT INTO CursoEletronico VALUES (24121,'SCC0241','2010-02','Sim');
INSERT INTO CursoEletronico VALUES (33321,'SMA0333','2010-01','Sim');
INSERT INTO CursoEletronico VALUES (18021,'SMA0180','2010-01','Sim');
INSERT INTO CursoEletronico VALUES (32021,'SME0320','2010-01','Sim');
INSERT INTO CursoEletronico VALUES (12421,'SSC0124','2010-01','Sim');
--#################################################################################################################################
--Romero funcionario
INSERT INTO Participante VALUES (9636371 ,20321,'SCC0203','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (9636371 ,24021,'SCC0240','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (9636371 ,24121,'SCC0241','2010-02',NULL,NULL);
--Alunos de SMA180
INSERT INTO Participante VALUES (5634271,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634292,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634820,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7153334,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634271,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634275,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (1634271,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (1638571,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (3634271,18021,'SMA0180','2010-01',NULL,NULL);
--Professores da disciplina
INSERT INTO Participante VALUES (3903321,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (231223,18021,'SMA0180','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (2903321,18021,'SMA0180','2010-01',NULL,NULL);--Funcionario
--Alunos de SMA0333
INSERT INTO Participante VALUES (231223,33321,'SMA0333','2010-01',NULL,NULL);--Professor
INSERT INTO Participante VALUES (5634271,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634292,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634820,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (1634271,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (1638571,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (3634271,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7153334,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634271,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634275,33321,'SMA0333','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (2903321,33321,'SMA0333','2010-01',NULL,NULL);--Funcionario
--Alunos SME0320
INSERT INTO Participante VALUES (5634271,32021,'SME0320','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634292,32021,'SME0320','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634820,32021,'SME0320','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (6426399,32021,'SME0320','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (6634271,32021,'SME0320','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (6634891,32021,'SME0320','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (3903321,32021,'SME0320','2010-01',NULL,NULL);--Professor
INSERT INTO Participante VALUES (2903321,32021,'SME0320','2010-01',NULL,NULL);--Funcionario
--Alunos SCC0203 turma 02
INSERT INTO Participante VALUES (6426399,20321,'SCC0203','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6634271,20321,'SCC0203','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6634891,20321,'SCC0203','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (7903321,20321,'SCC0203','2010-02',NULL,NULL);--Professor
--Alunos SCC0203 turma 01
INSERT INTO Participante VALUES (5634271,20321,'SCC0203','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634292,20321,'SCC0203','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634820,20321,'SCC0203','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7153334,20321,'SCC0203','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634271,20321,'SCC0203','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634275,20321,'SCC0203','2010-01',NULL,NULL);
--Alunos SCC0240 turma 01
INSERT INTO Participante VALUES (3634271,24021,'SCC0240','2010-01',NULL,NULL);
--Professores de SCC0240
INSERT INTO Participante VALUES (8903321,24021,'SCC0240','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6903321,24021,'SCC0240','2010-02',NULL,NULL);
--Alunos SCC0240 turma 02
INSERT INTO Participante VALUES (6426399,24021,'SCC0240','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6634891,24021,'SCC0240','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6634271,24021,'SCC0240','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (7153334,24021,'SCC0240','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (7634271,24021,'SCC0240','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (7634275,24021,'SCC0240','2010-02',NULL,NULL);
--Professores de SCC0241
INSERT INTO Participante VALUES (8903321,24121,'SCC0241','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6903321,24121,'SCC0241','2010-02',NULL,NULL);
--Alunos de SCC0241 turma 01
INSERT INTO Participante VALUES (5634271,24121,'SCC0241','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634292,24121,'SCC0241','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (5634820,24121,'SCC0241','2010-01',NULL,NULL);
--Alunos de SCC0241 turma 02
INSERT INTO Participante VALUES (6426399,24121,'SCC0241','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6634891,24121,'SCC0241','2010-02',NULL,NULL);
INSERT INTO Participante VALUES (6634271,24121,'SCC0241','2010-02',NULL,NULL);
--Alunos de SSC0124
INSERT INTO Participante VALUES (7903321,12421,'SSC0124','2010-01',NULL,NULL);--Professor
INSERT INTO Participante VALUES (7153334,12421,'SSC0124','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634271,12421,'SSC0124','2010-01',NULL,NULL);
INSERT INTO Participante VALUES (7634275,12421,'SSC0124','2010-01',NULL,NULL);
--#################################################################################################################################
--Grupos do SME320
INSERT INTO Grupo VALUES (32021,'SME0320','2010-01',1,'Gases Nobres');
INSERT INTO Grupo VALUES (32021,'SME0320','2010-01',2,'Metais');
--Grupos do SCC0203 t1
INSERT INTO Grupo VALUES (20321,'SCC0203','2010-01',1,'Merak');
INSERT INTO Grupo VALUES (20321,'SCC0203','2010-01',2,'Wyers');
INSERT INTO Grupo VALUES (20321,'SCC0203','2010-01',3,'Bwear');
--Grupos do SCC0203 t2
INSERT INTO Grupo VALUES (20321,'SCC0203','2010-02',1,'Hosde');
INSERT INTO Grupo VALUES (20321,'SCC0203','2010-02',2,'Mega');
--Grupos do SCC0240 t1
INSERT INTO Grupo VALUES (24021,'SCC0240','2010-01',1,'Cartogena');
--Grupos do SCC0240 t2
INSERT INTO Grupo VALUES (24021,'SCC0240','2010-02',1,'America');
INSERT INTO Grupo VALUES (24021,'SCC0240','2010-02',2,'Africa');
INSERT INTO Grupo VALUES (24021,'SCC0240','2010-02',3,'Asia');
--Grupos do SCC0241 t1
INSERT INTO Grupo VALUES (24121,'SCC0241','2010-01',1,'Omega');
INSERT INTO Grupo VALUES (24121,'SCC0241','2010-01',2,'Lambida');
--Grupos do SCC0241 t2
INSERT INTO Grupo VALUES (24121,'SCC0241','2010-02',1,'Teta');
INSERT INTO Grupo VALUES (24121,'SCC0241','2010-02',2,'Zeta');
--Grupos do SSC0124 
INSERT INTO Grupo VALUES (12421,'SSC0124','2010-01',1,'Alfa');
INSERT INTO Grupo VALUES (12421,'SSC0124','2010-01',2,'Beta');
--#################################################################################################################################
--SME0320
INSERT INTO Composicao VALUES (32021,'SME0320','2010-01',1,5634271);
INSERT INTO Composicao VALUES (32021,'SME0320','2010-01',1,5634292);
INSERT INTO Composicao VALUES (32021,'SME0320','2010-01',1,5634820);
INSERT INTO Composicao VALUES (32021,'SME0320','2010-01',1,6426399);
INSERT INTO Composicao VALUES (32021,'SME0320','2010-01',2,6634271);
INSERT INTO Composicao VALUES (32021,'SME0320','2010-01',2,6634891);
--SCC0203 t1
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-01',1,5634271);
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-01',1,5634292);
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-01',2,5634820);
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-01',2,7153334);
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-01',3,7634271);
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-01',3,7634275);
--SCC0203 t2
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-02',1,6426399);
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-02',1,6634271);
INSERT INTO Composicao VALUES (20321,'SCC0203','2010-02',2,6634891);
--SCC0240 t1
INSERT INTO Composicao VALUES (24021,'SCC0240','2010-01',1,3634271);
--SCC240 t2
INSERT INTO Composicao VALUES (24021,'SCC0240','2010-02',1,6426399);
INSERT INTO Composicao VALUES (24021,'SCC0240','2010-02',1,6634891);
INSERT INTO Composicao VALUES (24021,'SCC0240','2010-02',2,6634271);
INSERT INTO Composicao VALUES (24021,'SCC0240','2010-02',2,7153334);
INSERT INTO Composicao VALUES (24021,'SCC0240','2010-02',3,7634271);
INSERT INTO Composicao VALUES (24021,'SCC0240','2010-02',3,7634275);
--SCC0241 t1
INSERT INTO Composicao VALUES (24121,'SCC0241','2010-01',1,5634271);
INSERT INTO Composicao VALUES (24121,'SCC0241','2010-01',1,5634292);
INSERT INTO Composicao VALUES (24121,'SCC0241','2010-01',2,5634820);
--SCC0241 t2
INSERT INTO Composicao VALUES (24121,'SCC0241','2010-02',1,6426399);
INSERT INTO Composicao VALUES (24121,'SCC0241','2010-02',1,6634891);
INSERT INTO Composicao VALUES (24121,'SCC0241','2010-02',2,6634271);
--SSC0124
INSERT INTO Composicao VALUES (12421,'SSC0124','2010-01',1,7153334);
INSERT INTO Composicao VALUES (12421,'SSC0124','2010-01',1,7634271);
INSERT INTO Composicao VALUES (12421,'SSC0124','2010-01',2,7634275);
--#################################################################################################################################
INSERT INTO TipoRecurso VALUES (3321,'Video Aula',
'Principais trechos das explica��es do professor disponibilizadas para o aluno, para que este possa ter melhor
entendimento do conte�do explanado','Plug-in do flash instalado e caixas de som');
INSERT INTO TipoRecurso VALUES (3322,'Audio Aula','Disponibiliza��o da aula editada pelo professor para que
o aluno posso ouv�-la em casa','Plug-ins de audio e caixas de som');
INSERT INTO TipoRecurso VALUES (1223,'Slides','Slides das aulas do professor','Leitor de .pdf');
--#################################################################################################################################
--Slides
INSERT INTO RecursoEletronico VALUES (20321,'SCC0203','2010-02',1,1223,'Slides','Teoria das aulas em arquivo .pdf',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (24021,'SCC0240','2010-02',1,1223,'Slides','Teoria das aulas em arquivo .pdf',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (24121,'SCC0241','2010-02',1,1223,'Slides','Teoria das aulas em arquivo .pdf',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (33321,'SMA0333','2010-01',1,1223,'Slides','Teoria das aulas em arquivo .pdf',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (18021,'SMA0180','2010-01',1,1223,'Slides','Teoria das aulas em arquivo .pdf',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (32021,'SME0320','2010-01',1,1223,'Slides','Teoria das aulas em arquivo .pdf',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (12421,'SSC0124','2010-01',1,1223,'Slides','Teoria das aulas em arquivo .pdf',EMPTY_BLOB());
--Audio
INSERT INTO RecursoEletronico VALUES (20321,'SCC0203','2010-02',2,3321,'Audio Aulas','Arquivo sonoro da aula',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (18021,'SMA0180','2010-01',2,3321,'Audio Aulas','Arquivo sonoro da aula',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (32021,'SME0320','2010-01',2,3321,'Audio Aulas','Arquivo sonoro da aula',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (12421,'SSC0124','2010-01',2,3321,'Audio Aulas','Arquivo sonoro da aula',EMPTY_BLOB());
--Video
INSERT INTO RecursoEletronico VALUES (24021,'SCC0240','2010-02',3,3322,'Video Aulas','Video arquivo da aula',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (24121,'SCC0241','2010-02',3,3322,'Video Aulas','Video arquivo da aula',EMPTY_BLOB());
INSERT INTO RecursoEletronico VALUES (33321,'SMA0333','2010-01',3,3322,'Video Aulas','Video arquivo da aula',EMPTY_BLOB());
--#################################################################################################################################
INSERT INTO Trabalho VALUES (20321,'SCC0203','2010-02',1,'A aula de hoje consiste em fazer alguns programas que sejam capazes 
de ler arquivos organizados em campos e registros.',
'Existem tr�s arquivos: 
�  fixo.dad � um arquivo com campos e registros de tamanho fixo; 
�  campo_var_reg_fixo.dad � um arquivo com campos de tamanho vari�vel e 
registros de tamanho fixo; 
�  campo_var_reg_var.dad � um arquivo com campos e registros de tamanho 
vari�vel. 
 
Todos os arquivos possuem a mesma informa��o: dez registros com os seguintes 
campos: 
1. Um nome com no m�ximo 15 caracteres incluindo o  caractere terminador de 
string; 
2. Um sobrenome com no m�ximo 15 caracteres incluindo o caractere terminador 
de string; 
3. Um nome de rua com no m�ximo 25 caracteres incluindo o caractere 
terminador de string; 
4. Um n�mero (da casa) que � um inteiro com 4 bytes (int). 
 
O objetivo � fazer um programa para cada organiza��o de arquivo descrita acima. 
Esse programa deve inicialmente imprimir os registros contidos no arquivo e logo em 
seguida pedir ao usu�rio um n�mero entre 1 e 10 e imprimir o registro correspondente. 
Como material de apoio, utilize os slides da aula 1 de arquivos dispon�vel na coteia. 
Nessa aula pode-se encontrar as principais fun��es  e procedimentos para 
manipula��o de arquivos em C e Pascal.','18/08/2010 00:00:00');

INSERT INTO Trabalho VALUES (24121,'SCC0241','2010-02',1,
'A partir do diagrama, crie o projeto l�gico para o sistema, isto �, fa�a o mapeamento do DER para o Modelo Relacional.',
'Descri��o 
 
Sistemas de E-Learning, tais como Moodle e Tidia, t�m tido crescente import�ncia no ensino em 
diversos n�veis, oferecendo suporte eletr�nico de conte�do e de atividades pr�ticas (trabalhos) para 
disciplinas em milhares de institui��es em todo o mundo. Neste trabalho deseja-se criar uma base de 
dados para armazenar informa��es sobre disciplinas, turmas, alunos, professores, funcion�rios, 
cursos eletr�nicos, alunos participantes, recursos eletr�nicos, trabalhos a serem feitos, e avalia��o. 
Tais informa��es devem ser armazenadas respeitando uma sem�ntica abrangente, mas com algumas 
restri��es, de maneira que se possa ter um sistema de E-Learning funcionando sobre estes dados de 
maneira robusta. 
 
As informa��es do sistema s�o: 
 
-A entidade principal � o V�nculo USP, o que se refere a uma pessoa que pode ser ou um 
aluno, ou um professor ou um funcion�rio. 
-Cada professor � habilitado a lecionar um conjunto espec�fico de disciplinas; cada disciplina � 
instanciada por uma ou mais turmas, sendo que cada turma tem um  �nico  professor  para 
ministr�-la. Cada turma possui um conjunto de alunos matriculados, os quais ter�o uma nota 
atribu�da. Cada turma tem tamb�m um curso eletr�nico criado imediatamente ap�s a cria��o 
de uma dada turma.
-Um curso eletr�nico possui participantes com V�nculo USP. A lista de participantes de um 
curso deve ser formada por todos os alunos de sua respectiva turma e, opcionalmente, por 
participantes externos com V�nculo USP  �  alunos,  professores ou funcion�rios  �  n�o 
matriculados na turma.  Tamb�m s�o aceitos cursos apenas com participantes externos; 
mesmo neste caso, o curso eletr�nico deve ser vinculado a uma turma. 
-Cada curso eletr�nico possui um conjunto de recursos eletr�nicos, isto �, textos, v�deos, 
imagens, arquivos compactados, entre outros. Cada recurso � parte de um �nico curso, e s� � 
exibido para seus respectivos participantes.  Os recursos s�o adicionados ao sistema pelo 
professor respons�vel pelo curso, que � o mesmo professor vinculado � turma. Cada vez que 
um participante acessa um recurso, um registro de log � armazenado no sistema. 
-Os cursos eletr�nicos t�m trabalhos que s�o propostos como atividades para os participantes. 
Para a realiza��o destes trabalhos, os participantes devem se organizar em grupos com um ou 
mais  indiv�duos. Os trabalhos devem ser entregues em um �nico arquivo at� uma 
determinada data que faz parte da defini��o do trabalho. O upload de um trabalho � feito por 
um participante de um dado grupo. Cada trabalho entregue ter� uma nota associada 
posteriormente pelo professor. 
-Cada curso tamb�m possui um f�rum, onde os participantes podem postar mensagens 
referentes ao curso. Cada mensagem � composta por um t�tulo, por um texto, um autor 
(participante) e uma data de postagem.', '13/08/2010 14:20:00');
 
INSERT INTO Trabalho VALUES (24121,'SCC0241','2010-02',2,'SQL - DDL e DML',
'1.  Usando o SQL Developer 
a.  conecte-se com o seu usu�rio (veja padr�o apresentado na aula Oracle); 
b.  altere sua senha (veja comando na aula Oracle) 
c.  desconecte-se;  
d.  conecte-se novamente com a nova senha. 
 
2.  Crie o esquema da base  de  dados usando o projeto l�gico  do  sistema de E-Learning 
desenvolvido na Pr�tica 1. Nesta pr�tica, se a dupla tiver em m�os 2 projetos l�gicos (1 de cada 
aluno, vindos de duplas diferentes na Pr�tica 1), deve-se escolher o projeto mais correto e usar 
nesta pr�tica. Se, durante a pr�tica, forem identificados erros no projeto l�gico, a dupla deve 
fazer as corre��es no projeto usado, e desenvolver a Pr�tica 2 de acordo com as corre��es 
feitas.  Neste caso, o  projeto l�gico  novo,  usado para a Pr�tica 2,  deve ser entregue 
OBRIGATORIAMENTE, como parte do relat�rio. Se n�o  houver corre��o, apenas indique no 
relat�rio que foi usado o mesmo projeto da Pr�tica 1. 
 
a.  (0.5) crie seq��ncias  e use-as  para atributos  num�ricos sequenciais  de  seu projeto 
l�gico � ex: N�mero de log de acesso 
 
b.  (5.0) tabelas � crie todas as tabelas do projeto l�gico, incluindo: 
i.  restri��es de integridade � defina as chaves prim�rias e secund�rias, e as chaves 
estrangeiras adequadas para o esquema relacional, al�m das a��es adequadas 
para remo��o de tuplas relacionadas; ii.  restri��es de valor nulo � as restri��es devem atender aos requisitos colocados 
no DER, no projeto l�gico e na descri��o do sistema (cardinalidade, restri��es 
de especializa��o, participa��o total, etc....) 
iii.  valores  default  �  usar valores apropriados de acordo com a sem�ntica da 
aplica��o  
iv.  restri��es de verifica��o de validade dos dados (ex: intervalo v�lido ou conjunto 
de valores poss�veis...) 
v.  Use os  tipo de dados  BLOB  e CLOB  para  atributos como Ementa, 
ArquivoRecurso, ArquivoEspec, e Arquivo (de trabalho entregue). 
 
 
3.  Usando o esquema relacional criado no exerc�cio 2: 
a.  (2.5) Insira pelos menos 2 tuplas em cada tabela da base de dados. Requisitos:  
?  As seq��ncias criadas devem ser usadas na inser��o dos dados.  
?  Insira valores default e valores null.  
?  Nos atributos de data e  hora devem ser usadas as fun��es de manipula��o e 
formata��o de data e hora dos  tipos  de dados  espec�ficos  para data e hora (ex:. 
DATE, TIMESTAMP).   
?  Os dados  Large OBject  (tipos BLOB, CLOB) n�o devem  receber valores nulos, mas 
sim vazios (EMPTY_BLOB(), EMPTY_CLOB()).  b.  (0.5) Fa�a as seguintes altera��es:  
?  Escolha uma tabela e fa�a uma altera��o nos valores de 2 ou mais atributos de um 
conjunto de tuplas. Use uma condi��o de localiza��o para encontrar as tuplas a 
serem modificadas. 
?  Escolha uma tabela e remova uma ou mais tuplas.  Use uma condi��o de localiza��o 
para encontrar as tuplas a serem removidas. 
 
 
4.  Fa�a as seguintes altera��es no esquema da base de dados: (OBS: fa�a escolhas que tenham 
sentido no dom�nio do problema...) 
a.  (0.5) Escolha uma tabela e insira um novo atributo com as restri��es apropriadas. Use 
CHECK e valor default.  Explique o comportamento do SGBD com rela��o ao conte�do 
da tabela: como  ficam  os valores deste novo atributo nas tuplas previamente 
existentes? Fa�a testes.  
 
b.  (0.5) Escolha uma tabela e insira uma nova restri��o de tabela.  
 
c.  (0.5) Escolha uma tabela com chave prim�ria  (PK) definida por apenas um atributo, e 
que seja referenciada por uma chave estrangeira (FK) de outra tabela. Tente remover a 
PK.  Teste o comando com e sem  CASCADE. Explique o que acontece. No caso do 
CASCADE, explique o que acontece na tabela em que havia a PK e na tabela em que 
havia a FK (use comando DESCRIBE).','20/08/2010 14:20:00');
--#################################################################################################################################
INSERT INTO Mensagem VALUES (6634271,24121,'SCC0241','2010-02',Msgs.NEXTVAL,'Duvida T2','Professor o trabalho deve ser entregue na coteia?', SYSDATE);
INSERT INTO Mensagem VALUES (8903321,24121,'SCC0241','2010-02',Msgs.NEXTVAL,'Re: Duvida T2','Sim, o trabalho deve ser entregue via coteia.', SYSDATE);
--#################################################################################################################################
INSERT INTO Entrega VALUES (24121,'SCC0241','2010-02',1,1,EMPTY_BLOB(),NULL,SYSDATE);
INSERT INTO Entrega VALUES (20321,'SCC0203','2010-02',1,1,EMPTY_BLOB(),NULL,SYSDATE);
--#################################################################################################################################
INSERT INTO LogAcesso VALUES (24121,'SCC0241','2010-02',1,1223,8903321,Logs.NEXTVAL,SYSDATE);
INSERT INTO LogAcesso VALUES (24021,'SCC0240','2010-02',1,1223,6903321,Logs.NEXTVAL,SYSDATE);
INSERT INTO LogAcesso VALUES (33321,'SMA0333','2010-01',1,1223,231223,Logs.NEXTVAL,SYSDATE);
--#################################################################################################################################
