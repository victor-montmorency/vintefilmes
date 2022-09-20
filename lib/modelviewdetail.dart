import 'package:flutter/material.dart';
import 'package:vintefilmes/repository.dart';
import 'DetailView/ViewDetail.dart';

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
            return const Center(child: Text("none"));
          case ConnectionState.active:
            print('case2');

            return const Center(child: Text("active"));
          case ConnectionState.waiting:
            print('case3');

            return const Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            print('case4');
            return bodycontent(snapshot.data);
        }
      },
    );
  }
}
