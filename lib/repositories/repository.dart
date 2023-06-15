import 'dart:convert';
import 'package:collaboration_crypto_app/models/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl =
      'https://648aec2917f1536d65e9f80c.mockapi.io/api/v1/markets/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Markets> markets = it.map((e) => Markets.fromJson(e)).toList();
        return markets;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
