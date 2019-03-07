import 'package:BeeCreative/src/bloc/delivery_report_bloc/delivery_report_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/widgets/schedule_scaffold/scaffold_key.dart';
import 'package:flutter/material.dart';
import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:kiwi/kiwi.dart' as kiwi;

class DeliveryReportCard extends StatefulWidget {
  final Schedule _schedule;
  int rating;
  DeliveryReportCard(this._schedule, {Key key}) : super(key: key) {
    if (_schedule.deliveryReport.rating != null)
      rating = _schedule.deliveryReport.rating;
    else
      rating = 0;
  }

  _DeliveryReportCardState createState() => _DeliveryReportCardState();
}

class _DeliveryReportCardState extends State<DeliveryReportCard> {
  int _rating;
  final DeliveryReportBloc _deliveryReportBloc =
      kiwi.Container().resolve<DeliveryReportBloc>();
  StreamSubscription _streamSubscription;

  void initState() {
    _rating = widget.rating;
    super.initState();
    _streamSubscription = _deliveryReportBloc.deliveryReportEvent.listen(
      (DeliveryReportEvent event) {
        if (event is SubmittingReport) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      SizedBox(width: 5),
                      Text("Submitting please wait ..."),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (event is DeliveryReportSubmitted) {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
          scheduleHomeScaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text("Delivery report submitted successfully."),
              action: SnackBarAction(
                label: "Ok",
                onPressed: () {},
              ),
            ),
          );
        } else if (event is DeliveryReportError) {
          Navigator.of(context).pop();
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Error submitting report: ${event.message}"),
              action: SnackBarAction(
                label: "Ok",
                onPressed: () {},
              ),
            ),
          );
          Navigator.of(context).pop();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
    _deliveryReportBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);

    return Container(
      height: ScreenUtil().setHeight(215),
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
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              "Delivery Report",
              style: AppFontStyles(context).textStyle20WhiteMedium,
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
                    style: AppFontStyles(context).textStyle15White,
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
                onPressed: () {
                  if (_rating != 0) {
                    _deliveryReportBloc.initiateDeliveryReport(
                      schedule: widget._schedule,
                      delivered: true,
                      rating: _rating,
                    );
                  }
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
                      style: AppFontStyles(context).textStyle15White,
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
  }

  List<Widget> ratingStars() {
    List<Widget> stars = [];

    for (int i = 1; i <= 5; i++) {
      stars.add(
        GestureDetector(
          onTap: () {
            _rating = i;
            setState(() {});
          },
          child: Icon(
            Icons.star,
            size: 30,
            color: Color(colorController(i, _rating)),
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

  colorController(int condition, int rating) {
    if (rating >= condition) {
      return AppColors.deliveryRatingColor;
    } else {
      return AppColors.unfilledStarColor;
    }
  }
}
