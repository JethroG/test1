import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_test/utils/size_box_set.dart';
import 'package:test_for_test/utils/text_fonts.dart';

import '../../utils/color_scheme.dart';
import '../bloc_detail_view/detail_view_bloc.dart';
import '../models/details_view_model.dart';

class DetailsBottleWidget extends StatelessWidget {
  const DetailsBottleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return


          _body();



  }
  _body() {
    return BlocBuilder<DetailViewBloc, DetailViewState>(
        builder: (BuildContext context, DetailViewState state) {
          log(' details ${state}');
          if (state is DetailsDataLoadedState) {
            List<DetailsViewModel> albums = state.data;
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

  Widget _list(List<DetailsViewModel> albums) {
    return  ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: albums.length,
            itemBuilder: (ctx, index) {
              return GestureDetector(
                  onTap: () {
                      log('tap on item');
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    child:
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(albums[index].title.toString(),
                                    style: eBGaramondRegularTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left)),
                            Expanded(
                                child: Text(albums[index].desc.toString(),
                                    style: eBGaramondRegularTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.right)),
                          ],
                        )

                  ));
            });
  }
}
