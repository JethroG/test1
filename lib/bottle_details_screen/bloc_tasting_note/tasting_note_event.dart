part of 'tasting_note_bloc.dart';

abstract class TastingNoteEvent extends Equatable {
  const TastingNoteEvent();
  @override
  List<Object> get props => [];
}
class GetTastingNoteDataEvent extends TastingNoteEvent{
  GetTastingNoteDataEvent();
}