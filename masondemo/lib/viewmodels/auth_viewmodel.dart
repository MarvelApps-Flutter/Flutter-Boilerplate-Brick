import 'package:flutter_boilerplate/constants/enums/state_enums.dart';
import 'package:flutter_boilerplate/controllers/auth/auth_repository.dart';
import 'package:flutter_boilerplate/models/response/base_response_model.dart';
import 'package:flutter_boilerplate/utils/helper/helper_functions.dart';
import 'package:flutter_boilerplate/viewmodels/base_viewmodel.dart';
import '../models/request/login_request_model.dart';
import '../models/response/login_response_model.dart';

class AuthViewModel extends BaseViewModel {
  final _authRepo = AuthRepository();

  Future<APIResponse<LoginResponseModel>?> login(
      LoginRequestModel request) async {
    state = ViewState.busy;
    APIResponse<LoginResponseModel> response = await _authRepo.login(request);

    try {
      if (response.isSuccess == true) {
        // Any logic that needs to be implemented after successful login.
        response.data = LoginResponseModel.fromJson(response.completeResponse);
      } else {
        // Any logic that needs to be implemented after un-successful login.
      }
    } catch (err) {
      HelperFunctions().logger("$err");
    }

    state = ViewState.idle;

    return response;
  }
}
