class ApiStatus<T> {
  final _Status _status;
  final T? data;
  final String? error;

  const ApiStatus._(this._status, {this.data, this.error});

  /// Factory constructors
  const ApiStatus.initial() : this._(_Status.initial);
  const ApiStatus.loading() : this._(_Status.loading);
  const ApiStatus.success(T data) : this._(_Status.success, data: data);
  const ApiStatus.failure(String error) : this._(_Status.failure, error: error);

  /// Boolean Getters
  bool get isInitial => _status == _Status.initial;
  bool get isLoading => _status == _Status.loading;
  bool get isSuccess => _status == _Status.success;
  bool get isFailure => _status == _Status.failure;

  /// Pattern Matching
  R when<R>({
    required R Function() initialOrLoading,
    required R Function(T data) success,
    required R Function(String error) failure,
  }) {
    switch (_status) {
      case _Status.initial:
      case _Status.loading:
        return initialOrLoading();
      case _Status.success:
        return success(data as T);
      case _Status.failure:
        return failure(error!);
    }
  }

  R? whenOrNull<R>({
    R Function()? initial,
    R Function()? loading,
    R Function(T data)? success,
    R Function(String error)? failure,
  }) {
    switch (_status) {
      case _Status.initial:
        return initial?.call();
      case _Status.loading:
        return loading?.call();
      case _Status.success:
        return success?.call(data as T);
      case _Status.failure:
        return failure?.call(error!);
    }
  }

  R maybeWhen<R>({
    R Function()? initial,
    R Function()? loading,
    R Function(T data)? success,
    R Function(String error)? failure,
    required R Function() orElse,
  }) {
    switch (_status) {
      case _Status.initial:
        return initial?.call() ?? orElse();
      case _Status.loading:
        return loading?.call() ?? orElse();
      case _Status.success:
        return success?.call(data as T) ?? orElse();
      case _Status.failure:
        return failure?.call(error!) ?? orElse();
    }
  }
}

enum _Status { initial, loading, success, failure }
