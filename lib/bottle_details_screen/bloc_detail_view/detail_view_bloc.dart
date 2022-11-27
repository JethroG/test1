import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/details_view_model.dart';

part 'detail_view_event.dart';
part 'detail_view_state.dart';

class DetailViewBloc extends Bloc<DetailViewEvent, DetailViewState> {
  DetailViewBloc() : super(DetailsDataLoadedState(data: DetailsViewModel.listOfDetailsBottle)) {
    on<GetDetailsDataEvent>(_onGetListOfItems);
  }
}
_onGetListOfItems(GetDetailsDataEvent event,
    Emitter<DetailViewState> emit)  async*{
    await Future.delayed(const Duration(seconds: 2), () {
      emit(DetailsDataLoadedState(data: DetailsViewModel.listOfDetailsBottle));
    });
}
