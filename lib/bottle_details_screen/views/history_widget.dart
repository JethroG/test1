import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      child: Column(
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
                sizeHeight8,
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),

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
                sizeHeight8,
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),

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
                sizeHeight8,
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),

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
                sizeHeight8,
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),
                Text(
                  'Description',
                  style: latoRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
