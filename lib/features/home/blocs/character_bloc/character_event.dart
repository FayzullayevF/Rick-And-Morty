sealed class CharacterEvent{}

final class CharacterLoad extends CharacterEvent{}

final class CharacterDetail extends CharacterEvent{
  final int id;
  CharacterDetail({required this.id});
}