import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/delivery_report_bloc/delivery_report_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card.dart';
import 'package:BeeCreative/src/widgets/schedule_scaffold/scaffold_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'dart:async';

class ClassCancelledCard extends StatefulWidget {
  final Schedule _schedule;

  ClassCancelledCard(this._schedule);

  _ClassCancelledCardState createState() => _ClassCancelledCardState();
}

class _ClassCancelledCardState extends State<ClassCancelledCard> {
  String _classCancelledReason = "Strike";
  final List<String> radioValues = [
    "Strike",
    "School Event",
    "Vacation",
    "Other",
  ];
  String _submitData = "Strike";
  final _deliveryReportBloc = kiwi.Container().resolve<DeliveryReportBloc>();
  StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = _deliveryReportBloc.deliveryReportEvent.listen(
      (DeliveryReportEvent event) {
        if (event is SubmittingReport) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                child: LoadingCard(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              );
            },
          );
        } else if (event is DeliveryReportSubmitted) {
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
          Navigator.of(context).pop();
        } else if (event is DeliveryReportError) {
          Navigator.of(context).pop();
          scheduleHomeScaffoldKey.currentState.showSnackBar(
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
    _subscription.cancel();
    _deliveryReportBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);

    return Container(
      height: ScreenUtil().setHeight(342),
      width: ScreenUtil().setWidth(334),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(AppColors.classCancelledCard),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(10),
                  right: ScreenUtil().setWidth(10),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    FontAwesomeIcons.times,
                    color: Color(AppColors.classCancelledColor),
                    size: ScreenUtil().setWidth(10),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              "Class Cancelled",
              style: AppFontStyles(context).classCancelledTextStyle,
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(5)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20),
            ),
            child: Form(
              autovalidate: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Why was the class cancelled?",
                    style: AppFontStyles(context).textStyle15Black,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        groupValue: _classCancelledReason,
                        value: radioValues[0],
                        activeColor: Color(AppColors.classCancelledColor),
                        onChanged: _radioHandler,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(5),
                      ),
                      Text(
                        radioValues[0],
                        style: AppFontStyles(context).textStyle12Black,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        groupValue: _classCancelledReason,
                        value: radioValues[1],
                        activeColor: Color(AppColors.classCancelledColor),
                        onChanged: _radioHandler,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        radioValues[1],
                        style: AppFontStyles(context).textStyle12Black,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        groupValue: _classCancelledReason,
                        value: radioValues[2],
                        activeColor: Color(AppColors.classCancelledColor),
                        onChanged: _radioHandler,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        radioValues[2],
                        style: AppFontStyles(context).textStyle12Black,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        groupValue: _classCancelledReason,
                        value: radioValues[3],
                        activeColor: Color(AppColors.classCancelledColor),
                        onChanged: _radioHandler,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        radioValues[3],
                        style: AppFontStyles(context).textStyle12Black,
                      )
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(5)),
                  TextFormField(
                    enabled: (_classCancelledReason == radioValues[3])
                        ? true
                        : false,
                    validator: (value) {
                      if (_classCancelledReason == radioValues[3] &&
                          value.isEmpty) {
                        return 'Please enter a reason.';
                      } else {
                        _submitData = value;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(AppColors.partialBlack),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(AppColors.classCancelledColor),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(AppColors.classCancelledColor),
                        ),
                      ),
                      labelText: "Reason",
                      labelStyle: AppFontStyles(context).textStyle12Black,
                      counterStyle: AppFontStyles(context).textStyle12Black,
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(5)),
                  Center(
                    child: Container(
                      width: ScreenUtil().setWidth(129),
                      alignment: Alignment.center,
                      child: RaisedButton(
                        color: Color(AppColors.deliveryReportSaveButton),
                        elevation: 0,
                        onPressed: () {
                          _deliveryReportBloc.initiateDeliveryReport(
                            schedule: widget._schedule,
                            delivered: false,
                            comment: _submitData,
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
                              size: ScreenUtil().setWidth(13),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _radioHandler(value) {
    _classCancelledReason = value;
    _submitData = value;
    setState(() {});
  }
}
