import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_test/bottom_navigation_bar_pages/my_collection_screen/bloc/my_collection_bloc.dart';

import 'my_collection_widget.dart';




class MyCollectionScreen extends StatefulWidget {
  const MyCollectionScreen({Key? key}) : super(key: key);

  @override
  State<MyCollectionScreen> createState() => _MyCollectionScreenState();
}

class _MyCollectionScreenState extends State<MyCollectionScreen> {


  @override
  Widget build(BuildContext context) {
    final bloc = MyCollectionBloc()
      ..add(GetListOfMyCollectionEvent());
    return BlocProvider<MyCollectionBloc>(
        create: (context) => bloc,
        child: MyCollectionWidget());
  }
}
