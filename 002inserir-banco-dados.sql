-- Como inserir dados em uma tabela

insert into carros (nome, marca, modelo, vendido, ano) 
values ('Civic', 'Honda', 'Sedan', FALSE, 2019);

/* 
 insere em uma tabela o valores selecionados de outra tabela muito útil.
*/

insert into carros_vendidos (nome, marca, vendido, ano)
select nome, marca, vendido, ano from carros where vendido == TRUE;