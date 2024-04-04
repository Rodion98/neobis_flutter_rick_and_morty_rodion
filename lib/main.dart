import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/app.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/injection/injection.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/data_source/api.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/repository/character_repo.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/bloc/character_bloc.dart';

Future<void> main() async {
  // await initializeDependencies;
  runApp(BlocProvider(
    create: (context) => CharacterBloc(characterRepo: CharacterRepo()),
    child: MyApp(),
  ));
}
