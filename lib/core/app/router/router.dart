// import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/characters_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/filter/presentation/filter_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/home/presentation/home_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/presentation/profile_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/search/presentation/search_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: FilterRoute.page,
          initial: true,
          path: '/',
        ),
        AutoRoute(
          page: CharactersRoute.page,
          path: '/characters',
        ),
        AutoRoute(
          page: SearchRoute.page,
          path: '/search',
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AutoRoute(
          page: MyHomeRoute.page,
          path: '/filter',
        ),
      ];
}
