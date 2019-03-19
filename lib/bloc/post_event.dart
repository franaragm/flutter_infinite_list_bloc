import 'package:equatable/equatable.dart';

/*
Nuestro PostBloc solo responderá a un solo evento; Fetch que se enviará por la
capa de presentación cada vez que necesite más publicaciones para presentar.

PostBloc recibirá PostEvents y los convertirá a PostStates.
Hemos definido todos nuestros PostEvents (Fetch), así que
a continuación definamos nuestro PostState.

 */

abstract class PostEvent extends Equatable {}

class Fetch extends PostEvent {
  @override
  String toString() => 'Fetch';
}
