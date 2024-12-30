import 'package:test/test.dart';
import '../bin/ex_5_2.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  group('AlbumFetcher Tests', () {
    test('fetches album and returns correct data', () async {
       final dio = Dio();
      final dioAdapter = DioAdapter(dio: dio);
      const path = 'https://jsonplaceholder.typicode.com/albums/1';

       dioAdapter.onGet(
        path,
        (server) => server.reply(
          200,
          {
            "userId": 1,
            "id": 1,
            "title": "quidem molestiae enim"
          },
          // Reply would wait for one-sec before returning data.
          delay: const Duration(seconds: 0),
        ),
      );
      final album = await albumFetcher();
      expect(album.id, 1);
      expect(album.title, 'quidem molestiae enim');
    });
  });
}
