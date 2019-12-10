class UserError implements Exception {
  final String message;
  UserError(this.message);
}

class Unauthenticated implements Exception {
  final String message = "Unauthenticated, please login again.";
}
