import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color_scheme.dart';
import '../../utils/size_box_set.dart';
import '../../utils/text_fonts.dart';
import 'bloc/my_collection_bloc.dart';
import 'models/glass_model.dart';

const String _bell = 'assets/graphics/bell.svg';
final Widget _bellSvg = SvgPicture.asset(_bell);

class MyCollectionWidget extends StatefulWidget {
  const MyCollectionWidget({Key? key}) : super(key: key);

  @override
  State<MyCollectionWidget> createState() => _MyCollectionWidgetState();
}

class _MyCollectionWidgetState extends State<MyCollectionWidget> {

  @override
  void initState() {
    super.initState();
    _loadListOfGlasses();
  }

  _loadListOfGlasses() async {
    BlocProvider.of<MyCollectionBloc>(context)
        .add(GetListOfMyCollectionEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: Container(
          margin: EdgeInsets.all(16),
          child:
          Column(
            children: [
              sizeHeight32,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My collection', style:
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
              ),
              sizeHeight16,
              _body(),
            ],
          )),
    );
  }

  _body() {
    return
      BlocBuilder<MyCollectionBloc, MyCollectionState>(
          builder: (BuildContext context, MyCollectionState state) {
            if (state is MyCollectionInitial) {
              List<GlassModel> albums = state.data;
              return _list(albums);
            }

            return Container(child: Text(''),);
          });
  }

  Widget _list(List<GlassModel> albums) {
    return
      Expanded(child:

      GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: albums.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2/3),
          itemBuilder: (ctx, index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    log('tap on item');
                  });
                },
                child:
                Container(
                  color: cardBackgroundBlue,
                  margin:EdgeInsets.all(8) ,
                  padding: const EdgeInsets.all(8),
                  child:

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child:
                      Image.asset(
                        'assets/graphics/v2_one_cask_at_a_timeelite_bottle_front_labels_classic_render 2.png',
                        height: 120,
                      )),
                      sizeHeight8,
                      Expanded(child:
                      Text(albums[index].title.toString(),
                          style: eBGaramondRegularTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,),
                          textAlign: TextAlign.left)),
                      sizeHeight8,
                      Expanded(child:
                      Text(albums[index].dateProduce.toString(),
                          style: eBGaramondRegularTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,),
                          textAlign: TextAlign.left)),
                      sizeHeight8,
                      Expanded(child:
                      Text(albums[index].rate.toString(),
                          style: eBGaramondRegularTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,),
                          textAlign: TextAlign.left)),

                    ],
                  ),


                ));
          }));
  }
}
