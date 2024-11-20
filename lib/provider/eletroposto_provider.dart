import 'package:flutter/material.dart';
import 'package:gs02_energiaverde/model/eletroposto.dart';
import 'package:gs02_energiaverde/services/api_services.dart';

class EletropostoProvider with ChangeNotifier {  

final ApiServices _apiServices = ApiServices();

  // ApiServices _service = [];
  // ApiServices get service => _service;

  List<Eletroposto> _eletroposto = []; 
  List<Eletroposto> get eletroposto => _eletroposto; 

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> listEletroposto() async {
    _isLoading = true;
    notifyListeners();
    try {
      _eletroposto = await _apiServices.getEletroposto();
    } catch (e) {
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
  
}