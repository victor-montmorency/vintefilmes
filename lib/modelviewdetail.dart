import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vintefilmes/DetailView/ViewDetail.dart';
import 'package:vintefilmes/repository.dart';
import 'dart:convert' show utf8;

class SecondRoute extends StatelessWidget {
  final int? id;

  const SecondRoute({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchdetail(id),
      builder: (context, snapshot) {
        print(id);
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
            return bodycontent(snapshot.data);
        }
      },
    );
  }
}

bodycontent(info) {
  return Column(
    children: [
      Image.network(
        info['poster_url'],
        errorBuilder: (context, error, stackTrace) => Container(
          width: 200,
          height: 300,
          child: Text('Não Foi Possível carregar a imagem'),
        ),
      ),
      Text(
        'Overview',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(info['overview']),
      Text('Budget: \$' + info['budget'].toString()),
      Text(info['genres'].toString()),
      Text(info['adult'] == true
          ? 'Filme inapropriado para crianças'
          : 'Filme livre'),
    ],
  );
}
