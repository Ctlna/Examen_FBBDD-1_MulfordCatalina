-- #####################
-- ### EVALUACION # 1 ###
-- #####################

create table Complejo_Deportivo(
id int auto_increment primary key,
jefe text,
areaOcupa decimal,
ubicacion text,
sede int,
deporte text,
presupuesto int
);
create table Complejo_Polideportivo(
id int auto_increment primary key,
jefe text,
areaOcupa int,
ubicacion text,
sede int,
deporte text,
presupuesto int,
areaDeporte int,
localizacion int
);
create table Evento(
id int auto_increment primary key,
fecha date,
participantes int,
duracion timestamp,
id_complejo int,
Equipamiento int,
comisionario int,
foreign key (id_complejo) references Complejo_Deportivo (id),
foreign key (id_complejo) references Complejo_Polideportivo (id),
foreign key (comisionario) references Comisionario (id),
foreign key (Equipamiento) references Equipamiento (orden)
);
create table Comisionario(
id int auto_increment primary key,
nombre text,
rol text
);
create table ITEM(
numero int auto_increment primary key,
articulo text,
costo int
);
create table Equipamiento(
orden int auto_increment primary key,
numItem int,
cantidad int,
foreign key (numItem) references ITEM (numero)
);

insert Complejo_Deportivo values (1,'Nelson Rivero',280,'Cumbre',4,'Basket',300000);
insert Complejo_Polideportivo values (5,"Claudia Lopez",678,'Rosales',7,'Tenis',650000,56,3);
insert Evento values (541,25/01/2024,56,25,1546,89);

show * from Evento;
-- Desarrollado por Catalina Mulford / ID.1.097.490.150
