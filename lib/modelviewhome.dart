import 'package:flutter/material.dart';
import 'HomeView/listviewbuilder_home.dart';
import 'repository.dart';
import 'main.dart';

modelView() {
  return FutureBuilder<dynamic>(
      future: MoviesRepository().FetchMovies(),
      builder: ((context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            print('case1');
            return Center(child: Text("none"));
          case ConnectionState.active:
            print('case2');

            return Center(child: Text("active"));
          case ConnectionState.waiting:
            print('case3');

            return Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            print('case4');
            return ListViewHome(snapshot.data).getlistview();
          default:
            return Center(child: Text("done"));
        }
      }));
}
