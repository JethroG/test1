import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'go_to_next_screens_event.dart';
part 'go_to_next_screens_state.dart';

class GoToSignInScreenBloc extends Bloc<GoToSignInScreenEvent, GoToSignInScreenState> {
  GoToSignInScreenBloc() : super(GoToSignInScreenInitial()) {
    on<OpenSignInScreenEvent>(_onOpenSignInScreen);
    on<OpenScanBottleScreenEvent>(_onOpenScanBottleScreen);
  }
  _onOpenSignInScreen(OpenSignInScreenEvent event, Emitter<GoToSignInScreenState> emit) {
    emit(OpenSignInScreenState());
  }
  _onOpenScanBottleScreen(OpenScanBottleScreenEvent event, Emitter<GoToSignInScreenState> emit) {
    emit(OpenScanBottleScreenState());
  }
}
