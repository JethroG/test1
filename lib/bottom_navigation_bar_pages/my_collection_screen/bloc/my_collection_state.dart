part of 'my_collection_bloc.dart';

abstract class MyCollectionState extends Equatable {
  const MyCollectionState();
  @override
  List<Object> get props => [];
}

class MyCollectionInitial extends MyCollectionState {
  final List<GlassModel> data;
  MyCollectionInitial({required this.data});
}


