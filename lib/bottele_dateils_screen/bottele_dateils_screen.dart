import 'package:flutter/material.dart';
import 'package:test_for_test/utils/size_box_set.dart';

import '../utils/color_scheme.dart';
import '../utils/text_fonts.dart';

class BotteleDetailsScreen extends StatefulWidget {
  const BotteleDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BotteleDetailsScreen> createState() => _BotteleDetailsScreenState();
}

class _BotteleDetailsScreenState extends State<BotteleDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/graphics/back.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: TextButton(
            onPressed: () async {},
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryYellow, borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,color: Colors.black,),
                  sizeWidth8,
                  Text(
                    'Add to my collection',
                    textAlign: TextAlign.center,
                    style: eBGaramondRegularTextStyle.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
