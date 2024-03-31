// part of 'post_bloc.dart';

// enum PostStatus { initial, success, failure }

// @freezed
// class CharactersState with _$CharactersState {
//   const factory CharactersState({
//     required,
//   }) = CharactersState;

//   factory CharactersState.initial() {
//     return const CharactersState(
//       counter: 0,
//     );
//   }
// }

// final class CharactersState extends Equatable {
//   const CharactersState({
//     this.status = PostStatus.initial,
//     this.posts = const <Post>[],
//     this.hasReachedMax = false,
//   });

//   final PostStatus status;
//   final List<Post> posts;
//   final bool hasReachedMax;

//   CharactersState copyWith({
//     PostStatus? status,
//     List<Post>? posts,
//     bool? hasReachedMax,
//   }) {
//     return CharactersState(
//       status: status ?? this.status,
//       posts: posts ?? this.posts,
//       hasReachedMax: hasReachedMax ?? this.hasReachedMax,
//     );
//   }

//   @override
//   String toString() {
//     return '''PostState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }''';
//   }

//   @override
//   List<Object> get props => [status, posts, hasReachedMax];
// }
