import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/results_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/characters_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/filter/presentation/filter_screen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/presentation/profile_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: CharactersRoute.page, path: '/', initial: true, children: []),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AutoRoute(page: FilterRoute.page, path: '/filter')
      ];
}
