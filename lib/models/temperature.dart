import 'package:equatable/equatable.dart';

enum TemperatureFormat {
  Celsius,
  Fahrenheit,
}

class Temperature extends Equatable {
  final double minTemp;
  final double temp;
  final double maxTemp;

  const Temperature({
    this.minTemp,
    this.temp,
    this.maxTemp,
  });

  @override
  List<Object> get props => [
    minTemp,
    temp,
    maxTemp,
  ];

  static Temperature fromJson(dynamic weather) {
    final minTemp = weather['min_temp'] as double;
    final temp = weather['the_temp'] as double;
    final maxTemp = weather['max_temp'] as double;

    return Temperature(
      minTemp: minTemp,
      temp: temp,
      maxTemp: maxTemp,
    );
  }
}
