 create database etec_has_func;
 go

 use etec_has_func;
 go

 create table cargo
	(
		cd_cargo	int				not null	primary key,
		ds_cargo	varchar(40)		not null
	);
go


create table departamento
	(
		cd_depto	int				not null	primary key,
		nm_depto	varchar(40)		not null,	
		sg_depto	varchar(5)		not null
	);
go


create table funcionario
	(
		cd_func			int				not null	primary key,
		nm_pnome_func	varchar(50)		not null,
		nm_unome_func	varchar(30)		not null,
		vl_salario		numeric(9,2)	not null,
		dt_inicio		date			not null,
		qt_dependente	numeric(2),
		end_func		varchar(150)	not null,
		cd_cargo		int				not null,
		cd_depto		int				not null,

		constraint Cargo_cd_cargo		foreign key(cd_cargo)	references cargo(cd_cargo),
		constraint Depto_cd_depto		foreign key(cd_depto)	references departamento(cd_depto)

	);
	
go


/*insert*/

insert into cargo (cd_cargo, ds_cargo)
	values (1,'analista'),
		   (2,'programador'),
		   (3,'contador'),
		   (4,'analista rh'),
		   (5,'vendedor'),
		   (6,'analista finaceiro'),
		   (7,'assistente administrativo');

go


insert into departamento (cd_depto, nm_depto, sg_depto)
	values (10,'contabilidade','ct'),
		   (20,'infromatica','inf'),
		   (30,'recursos humanos','rh'),
		   (40,'administrativo','adm'),
		   (50,'vendas','vda'),
		   (60,'finceiro','fin'),
		   (70,'pessoal','pes');
go


insert into funcionario (cd_func, cd_cargo, cd_depto, nm_pnome_func, nm_unome_func, dt_inicio, vl_salario, end_func)
	values	(1,4,50,'antonio','isaias','2015-05-01',3000,'Rua a, 115'),
			(2,1,50,'maria','santos','2015-06-01',2500,'Rua x, 30'),
			(3,4,50,'joao','silveiira','2015-06-02',3000,'Rua e, 20'),
			(4,4,50,'jose','silvaa','2015-06-02',3000,'Rua b, 04 '),
			(5,1,50,'amella','caetano','2015-06-03',2800,'Rua y, 10'),
			(6,3,30,'analicia','silveira','2015-06-03',3200,'Rua m , 15'),
			(7,2,20,'ana','silvaaa','2015-06-10',5530,'Rua j , 24'),
			(8,2,20,'joana','araujo','2015-06-30',4200,'Rua s , 10'),
			(9,5,60,'carlos','oliveira','2015-06-03',6000,'Rua n , 15'),
			(10,3,40,'oseias','santoos','2015-07-01',1200,'Rua t , 20'),
			(11,5,60,'otacilio','cristo','2015-07-01',6320,'Av q , 3'),
			(12,1,10,'vinicius','marcelino','2015-08-01',2900,'Rua k , 12');
go




select * from cargo
select * from departamento
select * from funcionario

drop database etec_has_func

