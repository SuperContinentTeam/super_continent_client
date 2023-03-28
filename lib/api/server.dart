import 'package:super_continent_client/api/abstract.dart';

class APIServer {
  static DioAgent dioAgent = DioAgent("https://api.soleperson.xyz");

  static login(String username, String password) async {
    final response = await dioAgent.post("/login", {
      "username": username,
      "password": password,
    });

    if (response.data["code"] != 1) {
      throw Exception(response.data["result"].toString());
    }

    return response.data["result"];
  }
}
