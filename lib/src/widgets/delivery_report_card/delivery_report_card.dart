import 'package:BeeCreative/src/bloc/delivery_report_bloc/delivery_report_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/network/delivery_report_source.dart';
import 'package:flutter/material.dart';
import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:kiwi/kiwi.dart' as kiwi;

class DeliveryReportCard extends StatefulWidget {
  Schedule _schedule;
  DeliveryReportCard(Schedule schedule, {Key key}) : super(key: key) {
    this._schedule = schedule;
  }

  _DeliveryReportCardState createState() => _DeliveryReportCardState();
}

class _DeliveryReportCardState extends State<DeliveryReportCard> {
  int _rating = 0;
  final DeliveryReportBloc _deliveryReportBloc =
      kiwi.Container().resolve<DeliveryReportBloc>();

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _deliveryReportBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);

    return BlocBuilder(
      bloc: _deliveryReportBloc,
      builder: (context, DeliveryReportState state) {
        return Container(
          height: ScreenUtil().setHeight(212),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(AppColors.deliveryReportCard),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setWidth(10),
                      right: ScreenUtil().setWidth(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        FontAwesomeIcons.times,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Delivery Report",
                  style: AppFontStyles().textStyle20WhiteMedium,
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "How did the class go?",
                        style: AppFontStyles().textStyle15White,
                      ),
                      SizedBox(height: ScreenUtil().setHeight(5)),
                      Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().setWidth(210),
                        height: ScreenUtil().setHeight(55),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: ratingStars(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Center(
                child: Container(
                  width: ScreenUtil().setWidth(129),
                  child: RaisedButton(
                    color: Color(AppColors.deliveryReportSaveButton),
                    elevation: 0,
                    onPressed: () async {
                      _deliveryReportBloc.classDelivered(
                        widget._schedule,
                        true,
                        _rating,
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.save,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Save",
                          style: AppFontStyles().textStyle15White,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
            ],
          ),
        );
      },
    );
  }

  List<Widget> ratingStars() {
    List<Widget> stars = [];

    for (int i = 1; i <= 5; i++) {
      stars.add(
        GestureDetector(
          onTap: () => ratingController(i),
          child: Icon(
            Icons.star,
            size: 30,
            color: Color(
              colorController(i),
            ),
          ),
        ),
      );
    }

    return stars;
  }

  ratingController(rating) {
    _rating = rating;
    setState(() {});
  }

  colorController(int condition) {
    if (_rating >= condition)
      return AppColors.deliveryRatingColor;
    else
      return AppColors.unfilledStarColor;
  }
}
