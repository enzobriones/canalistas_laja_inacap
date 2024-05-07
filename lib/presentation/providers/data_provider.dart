import 'dart:async';

import 'package:canalistas_laja_inacap/domain/models/chart_data.dart';
import 'package:canalistas_laja_inacap/services/location_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final thingSpeakDataProvider = StateNotifierProvider<ThingSpeakDataNotifier, AsyncValue<List<ChartData>>>((ref) {
  return ThingSpeakDataNotifier();
});

class ThingSpeakDataNotifier extends StateNotifier<AsyncValue<List<ChartData>>> {
  ThingSpeakDataNotifier(): super(const AsyncValue.loading()) {
    fetchData();
    _startTimer();
  }

  void fetchData() async {
    try {
      Dio dio = Dio();
      String url = 'https://api.thingspeak.com/channels/${dotenv.env['THINGSPEAK_CHANNEL']}/feeds.json?api_key=${dotenv.env['THINGSPEAK_API_KEY']}&results=10';
      Response response = await dio.get(url);
      List<ChartData> data = (response.data['feeds'] as List)
        .map((json) => ChartData.fromJson(json, getLocation('America/Santiago')))
        .toList();

      state = AsyncValue.data(data);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Timer? _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 10), (timer) {
      fetchData();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}