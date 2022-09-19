import 'package:flutter/material.dart';
import 'package:vintefilmes/modelviewdetail.dart';

viewDetail(info) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 64, 81),
      ),
      body: SecondRoute(id: info));
}
