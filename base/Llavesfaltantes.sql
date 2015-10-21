
alter table usuario add foreign key (idTipoUsuario) references tipoUsuariorio(idtipoUsuario);

alter table coordenadas add foreign key (idTipoCoordenadas) references cattipocoordenadas(idcattipocoordenadas);


alter table estacionamientos add foreign key (idServicios) references servicios(idservicios);



alter table datosestacionamientos add foreign key (idAsset) references asset(idasset);

alter table catubicacionesestacionamiento add foreign key (idCoordenadas) references coordenadas(idcoordenadas);
 