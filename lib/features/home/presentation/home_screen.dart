import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        GestureDetector(
          onTap: () {
            context.router.push(CharactersRoute());
            AutoRouter.of(context).push(ProfileRoute());
          },
          child: Text('ASDAS'),
        )
      ]),
      body: Text('sdf'),
    );
  }
}
