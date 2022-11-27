import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/glass_model.dart';

part 'my_collection_event.dart';
part 'my_collection_state.dart';

class MyCollectionBloc extends Bloc<MyCollectionEvent, MyCollectionState> {
  MyCollectionBloc() : super(MyCollectionInitial(data: GlassModel.listOfGlasses)) {
    on<MyCollectionEvent>((event, emit) async* {
      if (event is GetListOfMyCollectionEvent) {
          await Future.delayed(const Duration(seconds: 1), () {
            emit(MyCollectionInitial(data: GlassModel.listOfGlasses));
          });
        }
      });
  }
}
