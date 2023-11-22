import 'package:dio/dio.dart';

class AppNetwork {
  static const API_VERSION = '2';

  static final AppNetwork _singleton = AppNetwork._();

  factory AppNetwork() => _singleton;

  AppNetwork._();

  Dio? dio;

  Dio createDioService(String? baseUrl) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl ?? "BASE_URL",
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        responseType: ResponseType.json,
        contentType: 'application/json',
      ),
    );

    return dio!;
  }

  //* <<< Method is for GET Request >>>>
  Future<dynamic> getRequest(
    String getRequestPath, {
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParameters,
    List<String>? paths,
    String? apiVersion,
  }) async {
    dynamic responseData;
    try {
      paths?.forEach((element) {
        getRequestPath += '/$element';
      });

      var request = await createDioService(baseUrl).get(
        getRequestPath,
        options: options,
        queryParameters: queryParameters,
      );

      if (request.statusCode == 200) {
        responseData = request.data;

        return responseData;
      } else {
        responseData = request.data;

        return responseData;
      }
    } catch (e) {
      // "Dio GET Catch Error PATH=$baseUrl$getRequestPath: " + e.toString());
    }
    return responseData;
  }

  //* <<< Method is for POST Request >>>>
  Future<dynamic> postRequest(
    String postRequestPath, {
    String? baseUrl,
    dynamic postData,
    Options? options,
    Map<String, dynamic>? queryParameters,
    List<String>? paths,
    String? apiVersion,
  }) async {
    dynamic postReceiveData;
    try {
      paths?.forEach((element) {
        postRequestPath += '/$element';
      });

      var request = await createDioService(baseUrl).post(
        postRequestPath,
        data: postData,
        options: options,
        queryParameters: queryParameters,
      );

      if (request.statusCode == 200) {
        postReceiveData = request.data;

        return postReceiveData;
      } else {
        postReceiveData = request.data;

        return postReceiveData;
      }
    } catch (e) {
      //Logger().e("Dio POST Catch Error PATH=$baseUrl$postRequestPath: " +
      // e.toString());
    }
    return postReceiveData;
  }


}
