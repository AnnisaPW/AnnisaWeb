part of '_index.dart';

class HttpDio {
  Dio? _dio;

  Future<HttpDio> init() async {
    _dio = Dio(
      BaseOptions(
        baseUrl: Config.values.apiHost,
      ),
    );
    initInterceptors();
    loggerx(HttpDio).i('success init for dio and interceptors.');
    return this;
  }

  void initInterceptors() {
    _dio!.interceptors.add(HttpAlice.alice.getDioInterceptor());
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requesOptions, handler) {
          final meth = requesOptions.method;
          final path = requesOptions.path;
          final para = requesOptions.queryParameters;
          final head = requesOptions.headers;
          final str1 = "REQUEST[$meth] => PATH: $path ";
          final str2 = "=> REQUEST VALUES: $para => HEADERS: $head";
          logger.i(str1 + str2);
          return handler.next(requesOptions);
        },
        onResponse: (response, handler) {
          final code = response.statusCode;
          final data = response.data;
          logger.i("RESPONSE[$code] => DATA: $data");
          return handler.next(response);
        },
        onError: (err, handler) {
          logger.i("Error[${err.response?.statusCode}]");
          return handler.next(err);
        },
      ),
    );
  }

  Options setOptionsHeader(String token) {
    if (token.isEmpty) {
      return Options(headers: {
        'Accept': 'application/json',
      });
    } else {
      return Options(headers: {
        'Accept': 'application/json',
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
    }
  }

  bool isResponseOK(dynamic res) {
    if (res != null) {
      if (res is Response) {
        return true;
      }
    }
    return false;
  }

  Future<dynamic> request({
    required String path,
    required CnEnumMethod method,
    Map<String, dynamic>? params,
    String token = '',
  }) async {
    Response response;

    try {
      if (method == CnEnumMethod.post) {
        response = await _dio!.post(
          path,
          queryParameters: params,
          options: setOptionsHeader(token),
        );
      } else if (method == CnEnumMethod.delete) {
        response = await _dio!.delete(
          path,
          options: setOptionsHeader(token),
        );
      } else if (method == CnEnumMethod.patch) {
        response = await _dio!.patch(
          path,
          options: setOptionsHeader(token),
        );
      } else {
        response = await _dio!.get(
          path,
          queryParameters: params,
          options: setOptionsHeader(token),
        );
      }

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something does wen't wrong");
      }
    } on SocketException catch (e) {
      logger.e(e);
      throw Exception("Not Internet Connection");
    } on FormatException catch (e) {
      logger.e(e);
      throw Exception("Bad response format");
    } on DioError catch (e) {
      logger.e(e);
      throw Exception(e);
    } catch (e) {
      logger.e(e);
      throw Exception("Something wen't wrong");
    }
  }
}
