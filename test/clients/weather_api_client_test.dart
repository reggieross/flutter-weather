import 'package:flutter_weather/clients/weather_api_client.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;


class MockClient extends Mock implements http.Client {}

void main() {
  group('Get Location ID', () {
    test('Should fetch woeid for a given city', () async {
      MockClient mockHttpClient = MockClient();
      when(mockHttpClient.get('https://www.metaweather.com/api/location/search/?query=Chicago'))
          .thenAnswer((_) async => http.Response('[{"title":"Chicago","location_type":"City","woeid":2379574,"latt_long":"41.884151,-87.632408"}]', 200));

      WeatherApiClient apiClient = new WeatherApiClient(httpClient: mockHttpClient);
      expect(await apiClient.getLocationId("Chicago"), 2379574);
    });
  });
}