import 'dart:convert';

import 'package:gs02_energiaverde/model/eletroposto.dart';
import 'package:http/http.dart' as http;


const baseUrl = 'https://eletropostos.azurewebsites.net/';


class ApiServices {

   Future<Eletroposto> getEletroposto() async {  
    final endPoint = 'api/eletroposto';
    final url = '$baseUrl$endPoint';
    final response = await http.get(Uri.parse(url), headers:{});

    if (response.statusCode == 200) {
      return Eletroposto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load reviews');
    }
  }
}
