import 'package:flutter/material.dart';
import 'title_and_poster_view.dart';

class ColumnMovie {
  final String? titulo;
  final String? url;

  ColumnMovie({this.titulo, this.url});
  getColumn() {
    return Column(
      children: [
        MovieView(titulo: titulo).getTitulo(),
        Container(
            height: 300, width: 200, child: MovieView(url: url).getImage()),
        Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        Text(
          'Ver detalhes do filme',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
