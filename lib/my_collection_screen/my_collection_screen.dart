import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/utils/text_fonts.dart';

const String _bell = 'assets/graphics/bell.svg';
final Widget _bellSvg = SvgPicture.asset(_bell);

class MyCollectionScreen extends StatefulWidget {
  const MyCollectionScreen({Key? key}) : super(key: key);

  @override
  State<MyCollectionScreen> createState() => _MyCollectionScreenState();
}

class _MyCollectionScreenState extends State<MyCollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body:Container(
        margin: EdgeInsets.all(16),
        child:
        Column(
        children: [
          SizedBox(height: 36,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My collection',style:
                eBGaramondRegularTextStyle.copyWith(color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 32),),
              Stack(
                children: <Widget>[
                  _bellSvg,
                  new Positioned(
                    right: 0,
                    bottom: 3,
                    child: new Container(
                      padding: EdgeInsets.all(1),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 8,
                        minHeight: 8,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
