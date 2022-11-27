part of 'go_to_next_screens_bloc.dart';

abstract class GoToSignInScreenEvent extends Equatable {
  const GoToSignInScreenEvent();
}

class OpenSignInScreenEvent extends GoToSignInScreenEvent{
  @override
  List<Object> get props => [];
}

class OpenScanBottleScreenEvent extends GoToSignInScreenEvent{
  @override
  List<Object> get props => [];
}
