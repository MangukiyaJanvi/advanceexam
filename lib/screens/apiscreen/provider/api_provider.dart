import 'package:advanceexam/screens/apiscreen/model/api_model.dart';
import 'package:advanceexam/utils/api_helper.dart';
import 'package:flutter/widgets.dart';

class ApiProvider extends ChangeNotifier {
  HomeModel? homeModel;

  Future<void> JsonParsing() async {
    ApiHelper apiHelper = ApiHelper();
    homeModel= await apiHelper.GetApiCall();
    notifyListeners();
  }
}
