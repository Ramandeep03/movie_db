// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movies_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _GetMoviesService implements GetMoviesService {
  _GetMoviesService(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<BaseResponseModel<List<MovieModel>>> getNowPlayingMovies({
    bool includeAdult = false,
    bool includeVideo = true,
    String language = 'en-US',
    String sortBy = 'popularity.desc',
    String withReleaseType = '2|3',
    required DateTime minDate,
    required DateTime maxDate,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_adult': includeAdult,
      r'include_video': includeVideo,
      r'language': language,
      r'sort_by': sortBy,
      r'with_release_type': withReleaseType,
      r'release_date.gte': minDate.toIso8601String(),
      r'release_date.lte': maxDate.toIso8601String(),
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<List<MovieModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'discover/movie',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<MovieModel>> _value;
    try {
      _value = BaseResponseModel<List<MovieModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<MovieModel>(
                    (i) => MovieModel.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<MovieModel>>> getPopularMovies({
    bool includeAdult = false,
    bool includeVideo = true,
    String language = 'en-US',
    String sortBy = 'popularity.desc',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_adult': includeAdult,
      r'include_video': includeVideo,
      r'language': language,
      r'sort_by': sortBy,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<List<MovieModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'discover/movie',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<MovieModel>> _value;
    try {
      _value = BaseResponseModel<List<MovieModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<MovieModel>(
                    (i) => MovieModel.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<MovieModel>>> getTopRatedMovies({
    bool includeAdult = false,
    bool includeVideo = true,
    String language = 'en-US',
    String sortBy = 'vote_average.desc',
    String withReleaseType = '99,10755',
    int voteAverage = 200,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_adult': includeAdult,
      r'include_video': includeVideo,
      r'language': language,
      r'sort_by': sortBy,
      r'without_genres': withReleaseType,
      r'vote_count.gte': voteAverage,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<List<MovieModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'discover/movie',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<MovieModel>> _value;
    try {
      _value = BaseResponseModel<List<MovieModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<MovieModel>(
                    (i) => MovieModel.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<MovieModel>>> getUpcomingMovies({
    bool includeAdult = false,
    bool includeVideo = true,
    String language = 'en-US',
    String sortBy = 'popularity.desc',
    String withReleaseType = '2|3',
    required DateTime minDate,
    required DateTime maxDate,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_adult': includeAdult,
      r'include_video': includeVideo,
      r'language': language,
      r'sort_by': sortBy,
      r'with_release_type': withReleaseType,
      r'release_date.gte': minDate.toIso8601String(),
      r'release_date.lte': maxDate.toIso8601String(),
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<List<MovieModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'discover/movie',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<MovieModel>> _value;
    try {
      _value = BaseResponseModel<List<MovieModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<MovieModel>(
                    (i) => MovieModel.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
