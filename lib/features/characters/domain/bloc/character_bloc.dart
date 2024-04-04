import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/character.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/repository/character_repo.dart';
import 'package:rxdart/rxdart.dart';

part 'character_bloc.freezed.dart';
// part 'character_bloc.g.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepo characterRepo;
  CharacterBloc({required this.characterRepo})
      : super(const CharacterState.loading()) {
    on<_GetSearchCharacters>(
      _onSearch,
      transformer: (events, mapper) {
        return events
            .debounceTime(
              const Duration(milliseconds: 500),
            )
            .asyncExpand(mapper);
      },
    );
    on<_GetFilterCharacters>(_onFilter);
  }

  Future<void> _onSearch(
      _GetSearchCharacters event, Emitter<CharacterState> emit) async {
    emit(const CharacterState.loading());

    try {
      Character _characters = await characterRepo.getSearchCharacters(
        event.name!,
      );
      emit(CharacterState.success(character: _characters));
    } catch (_) {
      emit(const CharacterState.failure());
    }
  }

  Future<void> _onFilter(
      _GetFilterCharacters event, Emitter<CharacterState> emit) async {
    emit(const CharacterState.loading());

    try {
      Character _characters =
          await characterRepo.getFilterCharacters(event.gender!, event.status!);
      emit(CharacterState.success(character: _characters));
    } catch (_) {
      emit(const CharacterState.failure());
    }
  }
}







// const _postLimit = 20;
// const throttleDuration = Duration(milliseconds: 100);

// EventTransformer<E> throttleDroppable<E>(Duration duration) {
//   return (events, mapper) {
//     return droppable<E>().call(events.throttle(duration), mapper);
//   };
// }

// class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
//   CharactersBloc({required this.httpClient}) : super(const CharactersState()) {
//     on<CharactersFetched>(
//       _onPostFetched,
//       transformer: throttleDroppable(throttleDuration),
//     );
//   }


//   Future<void> _onGetCharacters(

//   )

//   final http.Client httpClient;

//   Future<void> _onPostFetched(
//     CharactersFetched event,
//     Emitter<CharactersState> emit,
//   ) async {
//     if (state.hasReachedMax) return;
//     try {
//       if (state.status == PostStatus.initial) {
//         final posts = await _fetchPosts();
//         return emit(
//           state.copyWith(
//             status: PostStatus.success,
//             posts: posts,
//             hasReachedMax: false,
//           ),
//         );
//       }
//       final posts = await _fetchPosts(state.posts.length);
//       posts.isEmpty
//           ? emit(state.copyWith(hasReachedMax: true))
//           : emit(
//               state.copyWith(
//                 status: PostStatus.success,
//                 posts: List.of(state.posts)..addAll(posts),
//                 hasReachedMax: false,
//               ),
//             );
//     } catch (_) {
//       emit(state.copyWith(status: PostStatus.failure));
//     }
//   }

//   Future<List<Post>> _fetchPosts([int startIndex = 0]) async {
//     final response = await httpClient.get(
//       Uri.https(
//         'jsonplaceholder.typicode.com',
//         '/posts',
//         <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
//       ),
//     );
//     if (response.statusCode == 200) {
//       final body = json.decode(response.body) as List;
//       return body.map((dynamic json) {
//         final map = json as Map<String, dynamic>;
//         return Post(
//           id: map['id'] as int,
//           title: map['title'] as String,
//           body: map['body'] as String,
//         );
//       }).toList();
//     }
//     throw Exception('error fetching posts');
//   }
// }
