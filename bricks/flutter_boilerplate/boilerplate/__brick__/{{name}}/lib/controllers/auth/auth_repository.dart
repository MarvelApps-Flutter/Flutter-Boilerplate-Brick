import 'package:flutter_boilerplate/constants/api_constant.dart';
import 'package:flutter_boilerplate/controllers/base_api_controllers.dart';
import 'package:flutter_boilerplate/models/request/login_request_model.dart';
import 'package:flutter_boilerplate/models/response/base_response_model.dart';
import 'package:flutter_boilerplate/models/response/login_response_model.dart';

class AuthRepository {
  final _apiRoutes = APIRoutes();
  final _apiBase = APIBase();

  Future login(LoginRequestModel requestModel) async {
    APIResponse<LoginResponseModel>? response =
        await _apiBase.postRequest<LoginResponseModel>(_apiRoutes.demoRoute,
            data: requestModel.toJson());
    return response;
  }
}
