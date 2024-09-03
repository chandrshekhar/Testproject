
import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:testproject/core/constants/api_url.dart';
import 'api_response.dart';

class ApiClient {
  final Dio _dio = Dio();

  ApiClient() {
    _dio.options.baseUrl = ApiPaths.baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 15);
    _dio.options.receiveTimeout = const Duration(seconds: 15);

    //interceptor for add token
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers['Content-Type'] = 'application/json';

      handler.next(options);
    }, onError: (DioException e, handler) {
      if (e.response?.statusCode == 401) {}
      handler.next(e);
    }));
    _dio.interceptors.add(
      TalkerDioLogger(
        settings: TalkerDioLoggerSettings(
          printResponseData: true,
          printErrorHeaders: true,
          printRequestHeaders: true,
          printResponseHeaders: true,
          printErrorMessage: true,
          printRequestData: true,
          printErrorData: true,
          requestPen: AnsiPen()..yellow(),
          responsePen: AnsiPen()..green(),
          errorPen: AnsiPen()..red(),
        ),
      ),
    );
  }

  //GET REQUEST
  Future<ApiResponse<T>> getRequest<T>({
    required String endPoint,
    required T Function(Map<String, dynamic>) fromJson,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response =
          await _dio.get(endPoint, queryParameters: queryParameters);
      final data = fromJson(response.data);
      return ApiResponse<T>(data: data, statusCode: response.statusCode ?? 0);
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode ?? 0;
      final errorMessage = _handleDioError(e, statusCode);
      return ApiResponse<T>(errorMessage: errorMessage, statusCode: statusCode);
    }
  }

  //POST REQUEST
  Future<ApiResponse<T>> postRequest<T>({
    required String endPoint,
    Map<String, dynamic>? reqModel,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response = await _dio.post(endPoint, data: reqModel);
      final data = fromJson(response.data);
      return ApiResponse<T>(data: data, statusCode: response.statusCode ?? 0);
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode ?? 0;
      final errorMessage = _handleDioError(e, statusCode);
      return ApiResponse<T>(errorMessage: errorMessage, statusCode: statusCode);
    }
  }

  //handle error
  String _handleDioError(DioException error, int statusCode) {
    String errorMessage;
    switch (error.type) {
      case DioExceptionType.cancel:
        errorMessage = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = "Send timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        errorMessage = _handleStatusCode(statusCode);
        break;
      case DioExceptionType.unknown:
        errorMessage =
            "Connection to API server failed due to internet connection";
        break;
      default:
        errorMessage = "Unexpected error occurred";
        break;
    }
    return errorMessage;
  }

  String _handleStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return "Bad Request";
      case 401:
        return "Unauthorized";
      case 403:
        return "Forbidden";
      case 404:
        return "Not Found";
      case 500:
        return "Internal Server Error";
      case 503:
        return "Service Unavailable";
      default:
        return "Recive invalid status code $statusCode";
    }
  }
}
