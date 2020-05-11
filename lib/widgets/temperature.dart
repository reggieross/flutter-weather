import 'package:flutter/material.dart';
import 'package:flutter_weather/view_models/temperature_view_model.dart';

class Temperature extends StatelessWidget {
  final TemperatureVM temperature;

  Temperature({
    Key key,
    this.temperature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Text(
            '${temperature.temp}',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'max: ${temperature.high}°',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w100,
                color: Colors.red,
              ),
            ),
            Text(
              'min: ${temperature.low}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w100,
                color: Colors.red,
              ),
            )
          ],
        )
      ],
    );
  }
}
