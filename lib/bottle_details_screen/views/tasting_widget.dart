import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_for_test/utils/color_scheme.dart';

import '../../utils/size_box_set.dart';
import '../../utils/text_fonts.dart';

const String _timeLine = 'assets/graphics/timeline.svg';
final Widget _timeLineSvg = SvgPicture.asset(_timeLine);

const String _paperLine = 'assets/graphics/Paperclip.svg';
final Widget _paperLineSvg = SvgPicture.asset(_paperLine);

class TasteWidget extends StatelessWidget {
  const TasteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          Container(
            color: primaryBlueDark,
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          sizeHeight16,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _timeLineSvg,
              SizedBox(
                width: 48,
              ),
              Container(
                child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Label',
                    style: latoRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),),
                  sizeHeight8,
                  Text(
                    'Finish',
                    style: eBGaramondRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                    ),),
                  sizeHeight16,
                  Text(
                    'Description',
                    style: latoRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  sizeHeight16,
                  Text(
                    'Description',
                    style: latoRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  sizeHeight16,

                  Container(
                    color: cardBackgroundBlue,
                    height: 100,
                    width: 180,
                    padding: EdgeInsets.all(8),
                    child:
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [

                            _paperLineSvg,
                            Text(
                              'Attachments',
                              style: latoRegularTextStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                              ),),

                          ],
                        ),
                        sizeHeight8,
                        Container(
                          width: 160,
                          height: 60,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int i) {
                              return Container(
                                height: 50,
                                child: Card(
                                  child: Container(
                                    height: 30,
                                    color: Colors.amber[100],
                                    child: const Center(child: Text('Image')),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],

                    ),
                  ),
                ],
              ))
            ],
          )
        ],
      ),
    ));
}
}
