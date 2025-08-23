part of 'pagination_bloc.dart';

abstract class PaginationEvent {
  const PaginationEvent();
}

class PaginationFetch extends PaginationEvent {
  final Map<String, dynamic>? filters;
  const PaginationFetch({this.filters});
}

class PaginationFetchNext extends PaginationEvent {
  const PaginationFetchNext();
}

class PaginationRefresh extends PaginationEvent {
  final Map<String, dynamic>? filters;
  const PaginationRefresh({this.filters});
}
