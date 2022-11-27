import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/glass_model.dart';

part 'my_collection_event.dart';
part 'my_collection_state.dart';

class MyCollectionBloc extends Bloc<MyCollectionEvent, MyCollectionState> {
  MyCollectionBloc() : super(MyCollectionInitial(data: GlassModel.listOfGlasses)) {
    on<GetListOfMyCollectionEvent>(_onGetListOfItems);
    on<NavigateToBottleDetailsScreenEvent>(_onNavigationToDetailsScreen);
  }

  _onGetListOfItems(GetListOfMyCollectionEvent event,
      Emitter<MyCollectionState> emit)  async*{
      await Future.delayed(const Duration(seconds: 1), () {
        emit(MyCollectionInitial(data: GlassModel.listOfGlasses));
      });

  }
  _onNavigationToDetailsScreen(NavigateToBottleDetailsScreenEvent event, Emitter<MyCollectionState> emit) {
    emit(NavigateToBottleDetailsScreenState());
  }
}
