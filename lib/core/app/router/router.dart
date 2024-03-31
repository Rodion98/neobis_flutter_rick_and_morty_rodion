import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/characters_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/filter/presentation/filter_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/presentation/profile_screen.dart';
import 'package:rick_and_morty_api/rick_and_morty_api.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CharactersRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AutoRoute(
          page: FilterRoute.page,
          path: '/filter',
        )
      ];
}
