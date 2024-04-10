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
        child: CharactersScreen(
          status: args.status,
          gender: args.gender,
          key: args.key,
        ),
      );
    },
    FilterRoute.name: (routeData) {
      final args = routeData.argsAs<FilterRouteArgs>(
          orElse: () => const FilterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilterScreen(key: args.key),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(
          character: args.character,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [CharactersScreen]
class CharactersRoute extends PageRouteInfo<CharactersRouteArgs> {
  CharactersRoute({
    String? status,
    String? gender,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CharactersRoute.name,
          args: CharactersRouteArgs(
            status: status,
            gender: gender,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static const PageInfo<CharactersRouteArgs> page =
      PageInfo<CharactersRouteArgs>(name);
}

class CharactersRouteArgs {
  const CharactersRouteArgs({
    this.status,
    this.gender,
    this.key,
  });

  final String? status;

  final String? gender;

  final Key? key;

  @override
  String toString() {
    return 'CharactersRouteArgs{status: $status, gender: $gender, key: $key}';
  }
}

/// generated route for
/// [FilterScreen]
class FilterRoute extends PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          FilterRoute.name,
          args: FilterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static const PageInfo<FilterRouteArgs> page = PageInfo<FilterRouteArgs>(name);
}

class FilterRouteArgs {
  const FilterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FilterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    required ResultsEntity character,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            character: character,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    required this.character,
    this.key,
  });

  final ResultsEntity character;

  final Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{character: $character, key: $key}';
  }
}
