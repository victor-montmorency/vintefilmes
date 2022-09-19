import 'package:flutter_test/flutter_test.dart';
import 'package:vintefilmes/repository.dart';

void main() {
  test('funcionou', () async {
    final list = await MoviesRepositoryDetail().FetchMovies(240);
    print(list);
  });
}
