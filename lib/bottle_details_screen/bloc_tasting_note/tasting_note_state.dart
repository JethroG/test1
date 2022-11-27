part of 'tasting_note_bloc.dart';

abstract class TastingNoteState extends Equatable {
  const TastingNoteState();
  @override
  List<Object> get props => [];
}

class TastingNoteInitial extends TastingNoteState {

}

class TastingNoteDataLoadedState extends TastingNoteState {
  final TastingNoteViewModel data;
  TastingNoteDataLoadedState({required this.data});
}
