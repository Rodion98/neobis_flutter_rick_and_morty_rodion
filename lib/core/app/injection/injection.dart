

// import 'package:get_it/get_it.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/core/app/injection/dio_client.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/core/app/shared/app_constants.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/data_source/api.dart';

// final sl = GetIt.instance;

// Future<void> initializeDependencies() async {
//   final dio = buildDioClient(Constnats.baseUrl);
//   sl.registerSingleton<ApiClient>(ApiClient(dio));

  // sl.registerSingleton<CharacterRepo>(CharacterRepoImpl(sl()));
  // sl.registerSingleton<GetCharacterUseCase>(GetCharacterUseCase(sl()));
  // sl.registerSingleton<CharacterBloc>(CharacterBloc(sl()));
// }