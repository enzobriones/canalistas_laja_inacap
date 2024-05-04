import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<dynamic> getThingSpeakData() async {
  try {
    Dio dio = Dio();
    String url = 'https://api.thingspeak.com/channels/${dotenv.env['THINGSPEAK_CHANNEL']}/feeds.json?api_key=${dotenv.env['THINGSPEAK_API_KEY']}&results=10';
    Response response = await dio.get(url);
    return response.data;
  } catch (e) {
    print(e);
  }
}