CREATE TABLE [Matricula] (
  [id_matricula] int PRIMARY KEY,
  [data_matricula] date,
  [id_aluno] int,
  [id_turma] int
)
GO

CREATE TABLE [Aluno] (
  [id_aluno] int PRIMARY KEY,
  [nome] nvarchar(255),
  [idade] int,
  [quantidade_farda] int
)
GO

CREATE TABLE [Turma] (
  [id_turma] int PRIMARY KEY,
  [lista_alunos] nvarchar(255),
  [status] nvarchar(255),
  [disciplinas] nvarchar(255)
)
GO

CREATE TABLE [Professor] (
  [id_professor] int PRIMARY KEY,
  [nome] nvarchar(255),
  [disciplinas] nvarchar(255),
  [id_turma] int
)
GO

ALTER TABLE [Matricula] ADD FOREIGN KEY ([id_aluno]) REFERENCES [Aluno] ([id_aluno])
GO

ALTER TABLE [Matricula] ADD FOREIGN KEY ([id_turma]) REFERENCES [Turma] ([id_turma])
GO

ALTER TABLE [Professor] ADD FOREIGN KEY ([id_turma]) REFERENCES [Turma] ([id_turma])
GO
