import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon/models/webtoon_model.dart';
import 'package:webtoon/models/webtoon_detail_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    final uri = Uri.parse('$baseUrl/$today');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      return webtoons.map((webtoon) => WebtoonModel.fromJson(webtoon)).toList();
    }

    throw Error();
  }

  static Future<WebtoonDetailModel> getToonDetailById(String id) async {
    final uri = Uri.parse("$baseUrl/$id");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }

    throw Error();
  }
}
