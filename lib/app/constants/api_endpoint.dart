class ApiEndpoints {
  ApiEndpoints._();

  static const Duration connectionTimeout = Duration(seconds: 1000);
  static const Duration receiveTimeout = Duration(seconds: 1000);
  static const String baseUrl = "http://10.0.2.2:5000/api/"; //in emulator

//  static const String baseUrl = "http://10.12.11.169:5000/api/"; //in device

  // ====================== Auth Routes ======================
  static const String login = "user/login";
  static const String register = "user/create";
  static const String imageUrl = "http://10.0.2.2:5000/products/";
  static const String uploadImage = "auth/uploadImage";
  static const String getProducts = "product/get-all";
  static const limitPage = 5;
}
