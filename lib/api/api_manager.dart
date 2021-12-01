import 'package:http/http.dart' as http;


class APIManager {
  void getHotellist() async {
    var client = http.get(Uri.parse('https://priceline-com.p.rapidapi.com/hotels'));
    print(client);
  }
}