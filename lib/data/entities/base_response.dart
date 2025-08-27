class BaseResponse<T> {
  final int? page;
  final T results;
  final int? totalPages;
  final int? totalResults;

  BaseResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
}
