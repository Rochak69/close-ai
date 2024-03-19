import 'package:close_ai/core/dio_provider/api_error.dart';

class ApiResponse<T> {
  const ApiResponse({this.message, this.data});

  final String? message;

  final T? data;
}

class ApiResponseForList<T> {
  ApiResponseForList({this.data, this.paginationInfo});

  ApiResponseForList.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <T>[]; // Initialize the list with the correct type T
      json['data'].forEach((dynamic v) {
        data!.add(v as T); // Typecast v as T and add it to the list
      });
    }
    paginationInfo = PaginationInfo.fromResponse(json);
  }
  List<T>? data;
  PaginationInfo? paginationInfo;

  ApiResponseForList<T> copyWith({
    List<T>? data,
  }) {
    return ApiResponseForList<T>(
      data: data ?? this.data,
    );
  }
}

class ApiErrorResponse extends AppError {
  ApiErrorResponse({super.message});
}

class PaginationInfo {
  PaginationInfo({
    this.currentPage,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory PaginationInfo.fromResponse(Map<String, dynamic> response) {
    return PaginationInfo(
      currentPage: response['current_page'],
      firstPageUrl: response['first_page_url'],
      from: response['from'],
      lastPage: response['last_page'],
      lastPageUrl: response['last_page_url'],
      nextPageUrl: response['next_page_url'],
      path: response['path'],
      perPage: response['per_page'],
      prevPageUrl: response['prev_page_url'],
      to: response['to'],
      total: response['total'],
    );
  }
  final int? currentPage;
  final String? firstPageUrl;
  final int? from;
  final int? lastPage;
  final String? lastPageUrl;
  final String? nextPageUrl;
  final String? path;
  final int? perPage;
  final String? prevPageUrl;
  final int? to;
  final int? total;
}
