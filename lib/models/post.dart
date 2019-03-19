import 'package:equatable/equatable.dart';

/*
Extendemos Equatable para que podamos comparar Mensajes posts; de forma predeterminada,
el operador de igualdad devuelve verdadero si y solo si esta y otra son la misma instancia.
 */

class Post extends Equatable {
  final int id;
  final String title;
  final String body;

  Post({this.id, this.title, this.body}) : super([id, title, body]);

  @override
  String toString() => 'Post { id: $id }';
}
