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

    switch(format) {
      case TemperatureFormat.Fahrenheit:
        return _formatFahrenheit(t);
      case TemperatureFormat.Celsius:
        return _formatCelsius(t);
    }
  }

  static String _formatFahrenheit(double temp) {
    double tempFahrenheit = (temp * (9/5)) + 32;
    return '${tempFahrenheit.round()}°F';
  }

  static String _formatCelsius(double temp) {
    return '${temp.round()}°C';
  }
}
