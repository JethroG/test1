import 'package:flutter/material.dart';
import 'package:test_for_test/utils/size_box_set.dart';
import 'package:test_for_test/utils/text_fonts.dart';

class DetailsBottleWidget extends StatelessWidget {
  const DetailsBottleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Distillery',style: latoRegularTextStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Region',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Country',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Type',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Age statement',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Filled',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Bottled',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cask number',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ABV',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Size',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Finish',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Text('Text',style: latoRegularTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),

            ],
          ),
          sizeHeight32,
        ],
      ),
    );
  }
}
