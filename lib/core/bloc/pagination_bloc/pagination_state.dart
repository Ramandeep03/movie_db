part of 'pagination_bloc.dart';

abstract class PaginationState<T> extends Equatable {
  const PaginationState();

  @override
  List<Object?> get props => [];
}

class PaginationInitial<T> extends PaginationState<T> {}

class PaginationInitialPageLoading<T> extends PaginationState<T> {}

class PaginationLoadingNextPage<T> extends PaginationState<T> {
  final List<T> previousItems;

  const PaginationLoadingNextPage({required this.previousItems});

  @override
  List<Object?> get props => [previousItems];
}

class PaginationLoaded<T> extends PaginationState<T> {
  final List<T> items;
  final List<T> newItems;
  final bool hasReachedEnd;

  const PaginationLoaded({
    required this.items,
    required this.newItems,
    required this.hasReachedEnd,
  });

  @override
  List<Object?> get props => [items, newItems, hasReachedEnd];
}

class PaginationError<T> extends PaginationState<T> {
  final String error;

  const PaginationError({required this.error});

  @override
  List<Object?> get props => [error];
}
