import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pagination_state.dart';
part 'pagintion_event.dart';

abstract class PaginationBloc<T>
    extends Bloc<PaginationEvent, PaginationState<T>> {
  PaginationBloc({this.pageSize = 10, PaginationState<T>? initialState})
    : super(initialState ?? PaginationInitial<T>()) {
    on<PaginationFetch>(_onFetch);
    on<PaginationFetchNext>(_onFetchNext);
    on<PaginationRefresh>(_onRefresh);
  }

  final int pageSize;
  int _page = 1;
  bool _hasReachedEnd = false;

  Future<List<T>> fetchItems({
    required int page,
    required int limit,
    Map<String, dynamic>? filters,
  });

  Future<void> _onFetch(
    PaginationFetch event,
    Emitter<PaginationState<T>> emit,
  ) async {
    _page = 1;
    _hasReachedEnd = false;
    emit(PaginationInitialPageLoading<T>());

    try {
      final items = await fetchItems(
        page: _page,
        limit: pageSize,
        filters: event.filters,
      );
      _hasReachedEnd = items.length < pageSize;

      emit(
        PaginationLoaded<T>(
          items: items,
          newItems: items,
          hasReachedEnd: _hasReachedEnd,
        ),
      );

      if (items.length < pageSize && items.isNotEmpty) {
        add(PaginationFetchNext());
      }
    } catch (e) {
      emit(PaginationError<T>(error: e.toString()));
    }
  }

  Future<void> _onFetchNext(
    PaginationFetchNext event,
    Emitter<PaginationState<T>> emit,
  ) async {
    if (_hasReachedEnd || state is PaginationLoadingNextPage<T>) return;

    final currentState = state;
    if (currentState is PaginationLoaded<T>) {
      emit(PaginationLoadingNextPage<T>(previousItems: currentState.items));
      _page += 1;

      try {
        final items = await fetchItems(page: _page, limit: pageSize);
        _hasReachedEnd = items.length < pageSize;

        emit(
          PaginationLoaded<T>(
            items: [...currentState.items, ...items],
            newItems: items,
            hasReachedEnd: _hasReachedEnd,
          ),
        );
      } catch (e) {
        emit(PaginationError<T>(error: e.toString()));
      }
    }
  }

  Future<void> _onRefresh(
    PaginationRefresh event,
    Emitter<PaginationState<T>> emit,
  ) async {
    add(PaginationFetch(filters: event.filters));
  }
}
