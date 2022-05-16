import 'package:centre_source_assignment/model/datamodel.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<Welcome?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        "http://pixabay.com/api/?key=27419093-323ba2882e446230c31f0765e&q=yellow+flowers&image_type=photo&pretty=true"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    } else {
      return null;
    }
  }
}
