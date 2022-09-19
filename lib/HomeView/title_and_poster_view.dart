import 'package:flutter/material.dart';

class MovieView {
  final String? url;
  final String? titulo;

  MovieView({this.url, this.titulo});

  getImage() {
    return Image.network(
      url!,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, error, stackTrace) => Container(
        height: 303,
        width: 203,
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Column(
            children: [
              Icon(
                Icons.image_not_supported_outlined,
              ),
              Text('Imagem não disponível'),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }

  getTitulo() {
    return Text(
      titulo!,
      style: TextStyle(color: Colors.white, fontSize: 12),
    );
  }
}
