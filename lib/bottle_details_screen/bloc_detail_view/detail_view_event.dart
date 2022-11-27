part of 'detail_view_bloc.dart';

abstract class DetailViewEvent extends Equatable {
  const DetailViewEvent();
  @override
  List<Object> get props => [];
}

class GetDetailsDataEvent extends DetailViewEvent{
  GetDetailsDataEvent();
}