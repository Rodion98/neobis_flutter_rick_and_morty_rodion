import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/network/Api.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/src/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';
import 'package:rick_and_morty_api/rick_and_morty_api.dart';

@RoutePage()
class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: MyTextFiled(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              _buildCount(),
              SizedBox(
                height: 10,
              ),
              // _buildList(),
              _buildGrid()
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ));
  }

  Expanded _buildList() {
    return Expanded(
      child: FutureBuilder<List<Character>>(
        future: charactersClass.getAllCharacters(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError || snapshot.data == null) {
            return Center(child: Text('Error Loading Data.'));
          } else {
            var characters = snapshot.data!;
            return ListView.builder(
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 74,
                        width: 74,
                        child: Container(
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(characters[index].image),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            characters[index].status,
                            style: (characters[index].status == 'Alive')
                                ? AppTextStyle.aliveText10
                                : AppTextStyle.deadText10,
                          ),
                          Text(
                            characters[index].name,
                            style: AppTextStyle.nameInListText16,
                          ),
                          Text(
                            '${characters[index].species}, ${characters[index].gender}   ',
                            style: AppTextStyle.statusText12,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  Expanded _buildGrid() {
    return Expanded(
      child: FutureBuilder<List<Character>>(
        future: charactersClass.getAllCharacters(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError || snapshot.data == null) {
            return Center(child: Text('Error Loading Data.'));
          } else {
            var characters = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
              ),
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 110,
                        width: 110,
                        child: Container(
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(characters[index].image),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            characters[index].status,
                            style: (characters[index].status == 'Alive')
                                ? AppTextStyle.aliveText10
                                : AppTextStyle.deadText10,
                          ),
                          Text(
                            characters[index].name,
                            style: AppTextStyle.nameInListText16,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '${characters[index].species}, ${characters[index].gender}   ',
                            style: AppTextStyle.statusText12,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  Row _buildCount() {
    return Row(
      children: [
        Text(
          '${t.allPerson}: 200',
          style: AppTextStyle.allPersonsText10.copyWith(
            shadows: [
              BoxShadow(
                offset: Offset(3, 4),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        Assets.icons.tableView.svg(),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}

// class CharacterListView extends StatelessWidget {
//   const CharacterListView({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Character>>(
//       future: charactersClass.getAllCharacters(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError || snapshot.data == null) {
//           return Center(child: Text('Error Loading Data.'));
//         } else {
//           var characters = snapshot.data!;
//           return ListView.builder(
//             itemCount: characters.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(characters[index].name),
//                 subtitle: Text('Index Number - ${index + 1}'),
//               );
//             },
//           );
//         }
//       },
//     );
//   }
// }
