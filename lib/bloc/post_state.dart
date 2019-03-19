import 'package:equatable/equatable.dart';
import 'package:flutter_infinte_list_bloc/models/models.dart';

abstract class PostState extends Equatable {
  PostState([List props = const []]) : super(props);
}

/*
PostUninitialized: le indicará a la capa de presentación que necesita mostrar un
spinner loading mientras se carga el lote inicial de publicaciones.
 */
class PostUninitialized extends PostState {
  @override
  String toString() => 'PostUninitialized';
}

class PostError extends PostState {
  @override
  String toString() => 'PostError';
}

/*
PostLoaded- le dirá a la capa de presentación que tiene contenido para mostrar
hasReachedMax- le dirá a la capa de presentación si ha alcanzado o no el número máximo de publicaciones
copyWith permite obtener una instancia de PostLoaded y actualizar sus propiedades.
 */
class PostLoaded extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  PostLoaded({this.posts, this.hasReachedMax }) : super([posts, hasReachedMax]);

  PostLoaded copyWith({List<Post> posts, bool hasReachedMax}) {
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() =>
      'PostLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}
