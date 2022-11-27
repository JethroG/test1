part of 'detail_view_bloc.dart';

abstract class DetailViewState extends Equatable {
  const DetailViewState();
  @override
  List<Object> get props => [];
}

class DetailViewInitial extends DetailViewState {

}

class DetailsDataLoadedState extends DetailViewState {
  final List<DetailsViewModel> data;
  DetailsDataLoadedState({required this.data});
}
