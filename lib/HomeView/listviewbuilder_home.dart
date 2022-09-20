import 'package:flutter/material.dart';
import 'package:vintefilmes/DetailView/ViewDetail.dart';
import 'package:vintefilmes/modelviewdetail.dart';
import 'package:vintefilmes/model/model.dart';
import 'Column_each_movie.dart';

class ListViewHome {
  final List<MovieModel>? listafilmes;

  ListViewHome(this.listafilmes);

  getlistview() {
    return ListView.builder(
      itemCount: listafilmes!.length,
      itemBuilder: (context, index) {
        return FittedBox(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => viewDetail(
                        listafilmes![index].id!, listafilmes![index].title)),
              );
            },
            child: Container(
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(255, 59, 105, 120),
                padding: EdgeInsets.fromLTRB(3, 0, 3, 3),
                child: ColumnMovie(
                        titulo: listafilmes![index].title!,
                        url: listafilmes![index].posterUrl!)
                    .getColumn()),
          ),
        );
      },
    );
  }
}
