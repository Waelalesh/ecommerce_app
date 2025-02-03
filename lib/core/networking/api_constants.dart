class ApiConstants {
  static const String ip = "192.168.207.159:8000"; 
  static const String baseUrl = "http://$ip/api/"; 

  static const String login = "login";
  static const String signup = "register";
  static const String checkEamil = "check_email";
  static const String resetPassword = "updatePassword";
  static const String verificationCodeForResetPassword = "verifyOtp";
  static const String verificationCodeForRegister = "verifyOtpForRegeister";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
