// import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// import '../../name/data/repos/login_repo.dart';
// import '../../name/logic/login_cubit.dart';
// import '../networking/api_service.dart';
// import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiServices
  // Dio dio = DioFactory.getDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // //login
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
