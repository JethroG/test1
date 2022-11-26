import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'welcom_screen_event.dart';
part 'welcom_screen_state.dart';

class WelcomeScreenBloc extends Bloc<WelcomeScreenEvent, WelcomeScreenState> {
  WelcomeScreenBloc() : super(WelcomeScreenInitial()) {
    on<WelcomeScreenEvent>((event, emit) {

    });
  }
}
