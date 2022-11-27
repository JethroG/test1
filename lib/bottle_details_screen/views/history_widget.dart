import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_test/bottle_details_screen/bloc_tasting_note/tasting_note_bloc.dart';
import 'package:test_for_test/bottle_details_screen/models/tasting_note_model.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/utils/size_box_set.dart';
import 'package:video_player/video_player.dart';

import '../../utils/text_fonts.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
  return  _body();
  }
  _body() {
    return BlocBuilder<TastingNoteBloc, TastingNoteState>(
        builder: (BuildContext context, TastingNoteState state) {
          log(' tasting ${state}');
          if (state is TastingNoteDataLoadedState) {
           TastingNoteViewModel albums = state.data;
            log('$albums');
            return _list(albums);
          } else {
            return Container(
              color: primaryYellow,
              child: Text(''),
            );
          }
        });
  }
  Widget _list(TastingNoteViewModel data){
    return SingleChildScrollView(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tasting notes',
            style: eBGaramondRegularTextStyle.copyWith(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500
            ),),
          sizeHeight8,
          Text(
            'by Charles MacLean MBE',
            style: latoRegularTextStyle.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400
            ),),
          sizeHeight16,
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            color: primaryBlueDark,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nose',
                  style: eBGaramondRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),
                SizedBox(height: 8,),
                ListView.builder(
                  padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics:ScrollPhysics(),
                    itemCount:data.nose!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(data.nose![index].toString(),style: latoRegularTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),);
                    }),
              ],
            ),
          ),
          sizeHeight16,
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            color: primaryBlueDark,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Palate',
                  style: eBGaramondRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),
                sizeHeight16,
                ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics:ScrollPhysics(),
                    itemCount:data.palate!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(data.palate![index].toString(),style: latoRegularTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),);
                    }),

              ],
            ),
          ),
          sizeHeight16,
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            color: primaryBlueDark,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Finish',
                  style: eBGaramondRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),
                sizeHeight16,
                ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics:ScrollPhysics(),
                    itemCount:data.finish!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(data.finish![index].toString(),style: latoRegularTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),);
                    }),

              ],
            ),
          ),
          sizeHeight8,
        ],
      ));
  }
}
