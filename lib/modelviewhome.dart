import 'package:flutter/material.dart';
import 'HomeView/listviewbuilder_home.dart';
import 'repository.dart';
import 'main.dart';

modelView() {
  return FutureBuilder<dynamic>(
      future: MoviesRepository().FetchMovies(),
      builder: ((context, snapshot) {
        Widget retorno;
        try {
          retorno = ListViewHome(snapshot.data).getlistview();
          return retorno;
        } catch (e) {
          retorno = Center(
            child: Text("Sem Conexão"),
          );
          return retorno;
        }
        ;
      }));
}
