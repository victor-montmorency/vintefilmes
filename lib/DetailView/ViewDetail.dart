import 'package:flutter/material.dart';
import 'package:vintefilmes/modelviewdetail.dart';

viewDetail(info, title) {
  return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 32, 64, 81),
      ),
      body: SecondRoute(id: info));
}

bodycontent(info) {
  String genres = info['genres'].toString();
  return ListView(
    shrinkWrap: true,
    children: [
      Image.network(info['poster_url'],
          fit: BoxFit.fill,
          errorBuilder: (context, error, stackTrace) =>
              Image.network(info['backdrop_url'])),
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'original Title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          Text(
            info['original_title'],
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Overview',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          Text(
            info['overview'],
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Budget: \$${info['budget']}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Genres',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          Text(genres.substring(1, genres.length - 1),
              style: const TextStyle(fontSize: 18)),
          SizedBox(
            height: 25,
          ),
          Text(
            info['adult'] == true
                ? 'Filme não recomendado para menores de 18 anos'
                : 'Filme livre',
            style: TextStyle(fontSize: 30),
          ),
        ],
      )
    ],
  );
}
