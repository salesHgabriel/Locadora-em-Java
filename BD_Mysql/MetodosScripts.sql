SELECT * FROM locadora05.user;

INSERT INTO `locadora05`.`user`
(`iduser`,
`nome`,
`senha`,
`end`,
`cpf`)
VALUES
(1,
'Gabriel',
'123',
'vila da folha',
'5655656');


SELECT * FROM locadora05.adm;

INSERT INTO `locadora05`.`adm`
(`idadm`,
`nome`,
`senha`)
VALUES
(1,
'naruto',
'123');


SELECT * FROM locadora05.grade_filmes;

INSERT INTO `locadora05`.`grade_filmes`
(`nome_filmes`,
`data_lancamento`,
`diretor`)
VALUES
('superman',
'2020-05-20',
'pedriana');

SELECT * FROM locadora05.filmes_vendidos;

INSERT INTO `locadora05`.`filmes_vendidos`
(`grade_filmes_nome`,
`grade_filmes_data`)
VALUES
('naruto',
'2000-08-18');


SELECT nome_filmes, data_lancamento
FROM grade_filmes
INNER JOIN filmes_vendidos;





