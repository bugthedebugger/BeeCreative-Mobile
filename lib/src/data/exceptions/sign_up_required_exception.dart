import 'package:BeeCreative/src/data/network/api_call.dart';

class SignUpRequiredException implements Exception {
  String message;
  SignUpRequiredException(
      {this.message = "Head over to ${ApiURL.serverUrl} and sign up."});
}
