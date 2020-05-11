import 'package:flutter_weather/models/models.dart';
import 'package:flutter_weather/view_models/temperature_view_model.dart';
import 'package:test/test.dart';

void main() {
  group('Temperature Model', () {
    test('Should create temp view from temperture model', () {
      var temp = new Temperature(
        minTemp: 0.0,
        maxTemp: 22.0,
        temp: 0.0,
      );
      final tempVm = TemperatureVM.fromModel(temp, TemperatureFormat.Fahrenheit);
      expect(tempVm.temp, '32°F');
      expect(tempVm.high, '72°F');
    });
  });
}