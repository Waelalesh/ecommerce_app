import 'package:ecommerce_app/imports.dart';
part 'api_resault.freezed.dart';

@Freezed()
abstract class ApiResault<T> with _$ApiResault<T> {
  const factory ApiResault.success(T data) = Success<T>;
  const factory ApiResault.failure(ApiErrorModel errorHandler) = Failure<T>;
}
