// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CharactersRoute.name: (routeData) {
      final args = routeData.argsAs<CharactersRouteArgs>(
          orElse: () => const CharactersRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CharactersScreen(key: args.key),
      );
    },
    FilterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FilterScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(
          key: args.key,
          character: args.character,
        ),
      );
    },
  };
}

/// generated route for
/// [CharactersScreen]
class CharactersRoute extends PageRouteInfo<CharactersRouteArgs> {
  CharactersRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CharactersRoute.name,
          args: CharactersRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static const PageInfo<CharactersRouteArgs> page =
      PageInfo<CharactersRouteArgs>(name);
}

class CharactersRouteArgs {
  const CharactersRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CharactersRouteArgs{key: $key}';
  }
}

/// generated route for
/// [FilterScreen]
class FilterRoute extends PageRouteInfo<void> {
  const FilterRoute({List<PageRouteInfo>? children})
      : super(
          FilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    required Character? character,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            character: character,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.character,
  });

  final Key? key;

  final Character? character;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, character: $character}';
  }
}
