import 'package:test/test.dart';
import 'package:flutter_weather/models/weather.dart';
import 'dart:convert';

void main() {
  group('Weather Model', () {
    test('Should map abv to enum in weather', () {
      var json = '{"consolidated_weather":[{"weather_state_abbr":"sn"}]}';
      final test = jsonDecode(json);
      final weather = Weather.fromJson(test);
      expect(weather.condition, WeatherCondition.snow);
    });

    test(
        'Should map unexpected weather condition abv to unknown in weather', () {
      var json = '{"consolidated_weather":[{"weather_state_abbr":"blah"}]}';
      final test = jsonDecode(json);
      final weather = Weather.fromJson(test);
      expect(weather.condition, WeatherCondition.unknown);
    });
  });
}