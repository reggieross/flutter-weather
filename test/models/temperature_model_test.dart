import 'package:flutter_weather/models/models.dart';
import 'package:test/test.dart';
import 'package:flutter_weather/models/weather.dart';
import 'dart:convert';

void main() {
  group('Temperature Model', () {
    test('Should create temp from json', () {
      var json = '{"min_temp":22.0, "the_temp":0.0, "max_temp":0.0}';
      final test = jsonDecode(json);
      final temp = Temperature.fromJson(test);
      expect(temp.temp, 0.0);
      expect(temp.maxTemp, 0.6);
    });
  });
}