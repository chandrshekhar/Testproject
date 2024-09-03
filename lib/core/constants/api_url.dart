class ApiPaths {
  ApiPaths._();
  static final ApiPaths apiPath = ApiPaths._();
  factory ApiPaths() {
    return apiPath;
  }

  static const String baseUrl = 'https://polymersbazaar.com';
  static const String productList = "/products";
}
