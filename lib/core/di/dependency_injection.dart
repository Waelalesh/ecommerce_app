// import 'package:dio/dio.dart';

// import '../../name/data/repos/login_repo.dart';
// import '../../name/logic/login_cubit.dart';
// import '../networking/api_service.dart';
// import '../networking/dio_factory.dart';
import 'package:ecommerce_app/features/otp/data/repos/otp_repo.dart';
import 'package:ecommerce_app/features/otp/logic/otp_cubit.dart';
import 'package:ecommerce_app/features/reset_password/data/repos/reset_password_repo.dart';
import 'package:ecommerce_app/features/reset_password/logic/reset_password_cubit.dart';
import 'package:ecommerce_app/imports.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  /// signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  /// Check Email
  getIt.registerLazySingleton<CheckEmailRepo>(() => CheckEmailRepo(getIt()));
  getIt.registerFactory<CheckEmailCubit>(() => CheckEmailCubit(getIt()));

  /// Otp
  getIt.registerLazySingleton<OtpRepo>(() => OtpRepo(getIt()));
  getIt.registerFactory<OtpCubit>(() => OtpCubit(getIt()));

  /// Reset Password
  getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepo(getIt()));
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));

  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
