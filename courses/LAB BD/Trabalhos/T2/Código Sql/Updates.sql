--Atualizacao de 4 tuplas
UPDATE RecursoEletronico 
SET Nome = 'Aulas de audio' , 
	Descricao = 'Este recurso permite que o aluno ou�a novamente a aula ministrada pelo docente'
WHERE CodTipo = 3321;

--Delecao de 3 tuplas
DELETE FROM VinculoUsp
WHERE Ativo = 'Nao';

--4a
ALTER TABLE Disciplina
ADD NroCreditos NUMBER DEFAULT 4
	CHECK (NroCreditos IN (1,2,3,4,6));

ou
ALTER TABLE Disciplina
ADD NroCreditos NUMBER DEFAULT 4;

ALTER TABLE Disciplina
ADD CONSTRAINT NroCreditos CHECK (NroCreditos IN (1,2,3,4,6));
	
--4b
ALTER TABLE Matricula_se
ADD CONSTRAINT Nota CHECK (Nota >= 0);

--4c
--Drop sem cascade
 ALTER TABLE TipoRecurso
	DROP COLUMN   CodTipo;

	--Drop com cascade	
ALTER TABLE TipoRecurso
	DROP COLUMN   CodTipo  CASCADE CONSTRAINT;


--4di
ALTER TABLE Disciplina
DISABLE CONSTRAINT NroCreditos;

INSERT INTO Disciplina VALUES ('SSC0573','Projeto Supervisionado ou de Gradua��o I',
'Para os alunos que optarem por um est�gio em uma empresa, realiza��o de projeto em firma 
conveniada ou aprovada pelo ICMC, sob supervis�o do professor respons�vel pela disciplina e 
engajado em algum projeto na empresa, sob a responsabilidade de um supervisor na empresa. 
Ao final deve se executar uma monografia pormenorizada do projeto. Para aqueles que optarem 
por um projeto de gradua��o, elabora��o de um projeto em Ci�ncias de Computa��o ou 
Sistemas de Informa��o, sob a orienta��o de docente especialista. O Projeto deve compreender as 
fases de especifica��o e implementa��o e, quando for o caso, levantamento bibliogr�fico deve ser 
feito. Ao final deve ser escrita uma monografia pormenorizada do projeto.',12);

ALTER TABLE Disciplina
ENABLE CONSTRAINT NroCreditos;