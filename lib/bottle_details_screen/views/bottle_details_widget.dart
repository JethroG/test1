import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_for_test/bottle_details_screen/bloc_detail_view/detail_view_bloc.dart';
import 'package:test_for_test/bottle_details_screen/models/details_view_model.dart';
import 'package:test_for_test/bottle_details_screen/views/detail_widget.dart';
import 'package:test_for_test/bottle_details_screen/views/history_widget.dart';
import 'package:test_for_test/bottle_details_screen/views/tasting_widget.dart';
import 'package:test_for_test/main_screen/main_screen_navigation.dart';
import 'package:test_for_test/utils/size_box_set.dart';

import '../../utils/color_scheme.dart';
import '../../utils/text_fonts.dart';

const String _close = 'assets/graphics/icon-button.svg';
final Widget _closeSvg = SvgPicture.asset(_close);

class BottleDetailsWidget extends StatefulWidget {
   BottleDetailsWidget({Key? key,required this.title}) : super(key: key);

  String title;

  @override
  State<BottleDetailsWidget> createState() => _BottleDetailsWidgetState();
}

class _BottleDetailsWidgetState extends State<BottleDetailsWidget>
    with SingleTickerProviderStateMixin{

  bool _isExpanded = false;
  late TabController _tabController;
  @override
  initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {

      _loadListOfDetailsData();
    });

  }
  _loadListOfDetailsData() async {
    BlocProvider.of<DetailViewBloc>(context)
        .add(GetDetailsDataEvent());
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
          bottomNavigationBar: Container(
              margin: EdgeInsets.fromLTRB(32, 16, 32, 16),
              child:
              TextButton(
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
              )),
          body: Container(
            margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizeHeight32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Genesis Collection',style: latoRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                            return const MainScreenNavigation(); // <- Navigating to second screen
                          }));
                        },
                        child:
                        _closeSvg)
                  ],
                ),
                sizeHeight16,
                Container(
                    color: primaryBlue,
                    child:
                    ExpansionTile(
                      backgroundColor: Colors.transparent,
                      onExpansionChanged: (value) {
                        setState(() {
                          _isExpanded = value;
                        });
                      },

                      title: Text('Genuine Bottle (Unopened)',style: latoRegularTextStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14
                      ),),

                      trailing: Icon(
                        _isExpanded?Icons.arrow_upward:Icons.arrow_downward,
                        color: primaryYellow,
                      ),
                      children: <Widget>[

                        Image.asset('assets/graphics/v2_one_cask_at_a_timeelite_bottle_front_labels_classic_render 2.png'),
                      ],
                    )),
                sizeHeight16,
                Expanded(child:
                Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  color: primaryBlue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Bottle 135/184',style:
                      latoRegularTextStyle.copyWith(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                        textAlign: TextAlign.left,),
                      sizeWidth8,
                      Text('${widget.title}',style:
                      latoRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                        textAlign: TextAlign.left,),
                      sizeHeight16,
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color:primaryBlueDark,
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                        child: TabBar(
                          controller: _tabController,
                          onTap: (_tabController) {},
                          // give the indicator a decoration (color and border radius)
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              7.0,
                            ),
                            color: primaryYellow,
                          ),
                          labelColor: Colors.white,
                          labelStyle: latoRegularTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                                text: 'Details'),
                            Tab(
                              text:'Tasting notes' ,
                            ),
                            Tab(
                              text:'History' ,
                            ),
                          ],
                        ),
                      ),
                      // tab bar view here
                      sizeHeight16,
                      Expanded(child:
                      Container(
                        width: double.infinity,

                        child:TabBarView(
                          controller: _tabController,
                          children: [

                            DetailsBottleWidget(),
                            HistoryWidget(),
                            TasteWidget(),
                          ],
                        ),
                      ))


                    ],
                  ),
                ))
              ],
            ),
          ),

        )
      ],
    );
  }

}


