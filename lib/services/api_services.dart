import 'package:weather_app/consts/strings.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/currentWeatherModel.dart';

var link =
    'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';

getCurrentWeather() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = currentWeatherDataFromJson(res.body.toString());
    return data;
  }
}
