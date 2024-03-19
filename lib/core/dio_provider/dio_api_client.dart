import 'dart:io';

import 'package:close_ai/constants/app_endpoints.dart';
import 'package:close_ai/core/config/environment_helper.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/preferences/preferences.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioApiClient {
  DioApiClient(
    this._dio,
    this._environmentHelper,
    this._preference,
    this._externalDio,
  ) {
    _dio.interceptors.add(AppInterceptor());
    _dio.options.baseUrl =
        _environmentHelper.getValue(EnvironmentKey.baseUrl) ?? '';
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    _externalDio.interceptors.add(AppInterceptor());
    _externalDio.options.connectTimeout = const Duration(seconds: 30);
    _externalDio.options.receiveTimeout = const Duration(seconds: 30);
  }
  final Dio _dio;
  final Dio _externalDio;
  final EnvironmentHelper _environmentHelper;
  final Preferences _preference;

  Future<T> httpGet<T>(
    String serviceName, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<dynamic>? response;

    try {
      final token = await _preference.getString(Preference.accessToken);

      _dio.options.headers = {
        'Accept': 'application/json',
        'responseType': ResponseType.json,
        'Authorization': 'Bearer $token',
      };

      final url = serviceName;
      response = await _dio.get(
        url,
        queryParameters: queryParameters,
      );
      _checkResponseIsOk(response);
      // if (kDebugMode) {
      //   debugPrint(response.data.toString());
      // }
    } catch (e) {
      _handleRequestError(e);
    }
    return response?.data as T;
  }

  Future<T> httpGetExternal<T>(
    String serviceName, {
    Map<String, dynamic>? param,
  }) async {
    Response<dynamic>? response;
    try {
      final token = await _preference.getString(Preference.accessToken);

      _externalDio.options.headers = {
        'Accept': 'application/json',
        'responseType': ResponseType.json,
        'Authorization': 'Bearer $token',
      };

      response = await _externalDio.get(serviceName, queryParameters: param);
      _checkResponseIsOk(response);
    } catch (e) {
      _handleRequestError(e);
    }
    return response!.data as T;
  }

  Future<T> httpPost<T>({
    required String serviceName,
    Map<String, dynamic>? data,
    FormData? formdata,
    Map<String, dynamic>? param,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<dynamic>? response;
    try {
      final token = await _preference.getString(Preference.accessToken);

      if (serviceName == AppEndpoints.login) {
        _dio.options.headers = {
          'Accept': 'application/json',
          'responseType': ResponseType.json,
        };
      } else {
        _dio.options.headers = {
          'Accept': 'application/json',
          'responseType': ResponseType.json,
          'Authorization': 'Bearer $token',
        };
      }
      final url = serviceName;

      response = await _dio.post(
        url,
        data: formdata ?? data,
        queryParameters: param,
      );
      if (kDebugMode) {
        debugPrint(response.toString());
      }
      _checkResponseIsOk(response);
    } catch (e) {
      _handleRequestError(e);
    }
    return response?.data as T;
  }

  Future<T?> httpDelete<T>(
    String serviceName, {
    Map<String, dynamic>? data,
  }) async {
    Response<dynamic>? response;
    final token = await _preference.getString(Preference.accessToken);
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    _dio.options.headers = {
      'Accept': 'application/json',
      'responseType': ResponseType.json,
      'Authorization': 'Bearer $token',
    };

    try {
      response = await _dio.delete<dynamic>(
        serviceName,
        data: data,
      );
      if (kDebugMode) {
        debugPrint(response.toString());
      }
      _checkResponseIsOk(response);
    } catch (e) {
      _handleRequestError(e);
    }

    return response?.data as T;
  }

  void _checkResponseIsOk(Response<dynamic> response) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) return;
    throw ApiError(response);
  }

  void _handleRequestError(dynamic error) {
    debugPrint(error.toString());

    if (error is SocketException) {
      final errorCode = error.osError!.errorCode;
      if (errorCode == 61 ||
          errorCode == 60 ||
          errorCode == 111 ||
          // Network is unreachable
          errorCode == 101 ||
          errorCode == 104 ||
          errorCode == 51 ||
          errorCode == 8 ||
          errorCode == 113 ||
          errorCode == 7 ||
          errorCode == 64) {
        throw ApiConnectionRefusedError(error);
      }
    }
    if (error is DioException) {
      try {
        final errors = error.response?.data['errors'] as Map<String, dynamic>;
        final firstError = errors.values.firstOrNull[0];

        throw ApiErrorResponse(message: firstError);
      } catch (e) {
        if (e is ApiErrorResponse) {
          rethrow;
        } else {
          try {
            final errorMsg = error.response?.data['message'] as String;
            throw ApiErrorResponse(message: errorMsg);
          } catch (e) {
            rethrow;
          }
        }
      }
    }
    throw error;
  }
}

class AppInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(err);
  }
}
