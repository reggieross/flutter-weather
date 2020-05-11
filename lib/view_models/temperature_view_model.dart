import 'package:equatable/equatable.dart';
import 'package:flutter_weather/models/models.dart';

class TemperatureVM extends Equatable {
  final String low;
  final String temp;
  final String high;

  const TemperatureVM({
    this.low,
    this.high,
    this.temp,
  });

  @override
  List<Object> get props => [
    low,
    temp,
    high,
  ];

  static TemperatureVM fromModel(Temperature temperature, TemperatureFormat format) {
    return TemperatureVM(
      low: _formattedTemperature(temperature.minTemp, format),
      high: _formattedTemperature(temperature.maxTemp, format),
      temp: _formattedTemperature(temperature.temp, format),
    );
  }

  static _formattedTemperature(double t, TemperatureFormat format) {
    if (t == null) {
      return '';
    }

    final degreeSymbol = format == TemperatureFormat.Celsius
        ? '°C'
        : '°F';

    final value = format == TemperatureFormat.Fahrenheit
      ? _convertCelsiusToFahrenheit(t)
      : t;

    return '${value.round()}$degreeSymbol';
  }

  static double _convertCelsiusToFahrenheit(double temp) {
    return (temp * (9/5)) + 32;
  }
}
