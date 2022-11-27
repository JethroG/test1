part of 'my_collection_bloc.dart';

abstract class MyCollectionEvent  {
  const MyCollectionEvent();
}

class GetListOfMyCollectionEvent extends MyCollectionEvent{
  GetListOfMyCollectionEvent();
}

class NavigateToBottleDetailsScreenEvent extends MyCollectionEvent{
  NavigateToBottleDetailsScreenEvent();
}


