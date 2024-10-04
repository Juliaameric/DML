create database empresa02;
use empresa02;

create table funcionario_dados(
	codfunc int auto_increment primary key not null,
    nomefunc varchar(100) not null,
    sexofunc varchar(100) not null,
    bairrofunc varchar(100) not null,
    salfunc decimal(10,2) not null,
    setorfunc varchar(100) not null
);

insert into funcionario_dados(nomefunc,sexofunc,bairrofunc,salfunc,setorfunc)
values ("larissa menezes","f","jabaquara",1200.00,"markenting"),
		("selma nunes","f","grajau",3800.00,"vendas"),
		("leandro henrique","m","socorro",2950.00,"rh"),
        ("amelia jeremias","f","socorro",4200.00,"markenting"),
        ("claudio jorge silva","m","jabaquara",1480.00,"vendas"),
        ("luciano souza","m","pedreira",1000.00,"vendas"),
        ("gabriela santos nunes","f","jurubatuba",4150.00,"rh"),
        ("rafaela vieira jr","f","jabaquara",700.00,"markenting"),
        ("suzana cristina","f","grajau",5600.00,"producao"),
        ("sabrina oliveira castro","f","pedreira",2900.00,"markenting"),
        ("jarbas silvas nunes","m","jurubatuba",5300.00,"producao"),
        ("ralf borges","m","jabaquara",1600.00,"markenting");
	
select * from funcionario_dados;

SELECT sum(salfun) AS Soma_Salários
		from funcionario_dados;

select nomefun, setorfunc As Galera_do_Marketing
        from Funcionario
        having Galera_do_Marketing = "Marketing";
        
select setorfunc, avg(salfun) AS Média_de_Salários
        from funcionario_dados
        group by setorfunc
        order by Média_de_Salários desc;
        
 select  nomefun, bairrofun, salfun
        from funcionario_dados
        WHERE bairrofun = "Socorro"
        and salfun < 3000;
        