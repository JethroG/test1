import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_for_test/bottle_details_screen/models/tasting_note_model.dart';

part 'tasting_note_event.dart';
part 'tasting_note_state.dart';

class TastingNoteBloc extends Bloc<TastingNoteEvent, TastingNoteState> {
  TastingNoteBloc() : super(TastingNoteDataLoadedState(data: TastingNoteViewModel.tastingNoteViewModel)) {
    on<GetTastingNoteDataEvent>(_onGetListOfItems);
  }

_onGetListOfItems(TastingNoteEvent event,
    Emitter<TastingNoteState> emit)  async* {
  await Future.delayed(const Duration(seconds: 2), () {
    emit(TastingNoteDataLoadedState(
        data: TastingNoteViewModel.tastingNoteViewModel));
  });
}}