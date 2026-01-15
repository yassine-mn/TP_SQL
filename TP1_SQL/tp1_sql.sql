create database tp1_sql;
use tp1_sql;

create table Client(
code_client int primary key,
nom varchar (50),
adresse varchar(100),
ville varchar(50)
);
create table Facture(
Num_Facture int primary key,
Date_Facture date,
Montant_Facture decimal(10,2),
Montant_Reste decimal(10,2),
code_client int,
foreign key (code_client) references Client(code_client)
);
create table Marchendise(
ref int primary key,
Designation varchar(100),
Prix_Unitaire decimal(10,2),
Quantite_Stock int
);
create table Contient(
ref int,
Num_Facture int,
Quantite_cmd int,
primary key(ref,Num_Facture),
foreign key(ref) references Marchandise(ref),
foreign key(Num_Facture)references Facture(Num_Facture)
);
