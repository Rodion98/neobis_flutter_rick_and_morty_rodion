import 'package:flutter/material.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/core/app/app.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/dependencies/di.dart';

void main() {
  setupDependencies();
  runApp(MyApp());
}
