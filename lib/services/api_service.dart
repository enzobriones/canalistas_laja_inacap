import 'package:canalistas_laja_inacap/domain/models/chart_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:timezone/timezone.dart';

Stream<List<ChartData>> getThingSpeakDataStream(Location location) async* {
  Dio dio = Dio();
  String url = 'https://api.thingspeak.com/channels/${dotenv.env['THINGSPEAK_CHANNEL']}/feeds.json?api_key=${dotenv.env['THINGSPEAK_API_KEY']}&results=10';

  while (true) {
    Response response = await dio.get(url);
    List<ChartData> data = (response.data['feeds'] as List)
      .map((json) => ChartData.fromJson(json, location))
      .toList();
    yield data;
    await Future.delayed(const Duration(seconds: 5));
  }
}