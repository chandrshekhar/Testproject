/// prototype of the response

class ApiResponse<T> {
  final T? data;
  final int statusCode;
  final String? errorMessage;
  ApiResponse({this.data, required this.statusCode, this.errorMessage});
}
