import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_for_test/bottle_details_screen/bloc_detail_view/detail_view_bloc.dart';
import 'package:test_for_test/bottle_details_screen/bloc_tasting_note/tasting_note_bloc.dart';
import 'package:test_for_test/bottle_details_screen/views/bottle_details_widget.dart';
import 'package:test_for_test/bottle_details_screen/views/detail_widget.dart';
import 'package:test_for_test/bottle_details_screen/views/history_widget.dart';
import 'package:test_for_test/bottle_details_screen/views/tasting_widget.dart';
import 'package:test_for_test/main_screen/main_screen_navigation.dart';
import 'package:test_for_test/utils/size_box_set.dart';

import '../utils/color_scheme.dart';
import '../utils/text_fonts.dart';

const String _close = 'assets/graphics/icon-button.svg';
final Widget _closeSvg = SvgPicture.asset(_close);

class BottleDetailsScreen extends StatefulWidget {
  BottleDetailsScreen({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  State<BottleDetailsScreen> createState() => _BottleDetailsScreenState();
}

class _BottleDetailsScreenState extends State<BottleDetailsScreen> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final blocDetail = DetailViewBloc()..add(GetDetailsDataEvent());
    final blocTasting = TastingNoteBloc()..add(GetTastingNoteDataEvent());
    return MultiBlocProvider(
      providers: [
        BlocProvider<DetailViewBloc>(
            create: (context) => blocDetail,
            child: BottleDetailsWidget(
              title: widget.title,
            )),
        BlocProvider<TastingNoteBloc>(
            create: (context) => blocTasting,
            child: BottleDetailsWidget(
              title: widget.title,
            )),
      ],
      child: MaterialApp(
        home: BottleDetailsWidget(
          title: widget.title,
        ),
      ),
    );
  }
}
