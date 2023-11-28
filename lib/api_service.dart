
import 'package:country/users_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  var url = "https://jsonplaceholder.typicode.com/users";
  Future<List<UsersModel>> signUp() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
       return usersModelFromJson(response.body);
      }else{
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  // Future login(SignUpRequestModel model) async {
  //   try {
  //     var endpoint = "/api/login";
  //     final Map<String, String> headers = {'Content-Type': "application/json"};
  //     var response = await http.post(Uri.parse(url + endpoint),
  //         body: signUpModelToJson(model), headers: headers);
  //     if (response.statusCode == 200) {
  //       LoginResponse model = loginResponseFromJson(response.body);
  //       return model;
  //     }
  //   } catch (e) {
  //     return e;
  //   }
  // }
}
