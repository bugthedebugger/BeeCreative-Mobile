import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/narrative_bloc/narrative_bloc_export.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card_with_progress.dart';
import 'package:BeeCreative/src/widgets/thumbnail_widget/thumbnail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'dart:async';

class NarrativeUploaderWidget extends StatefulWidget {
  final List<Gallery> galleries;

  const NarrativeUploaderWidget({Key key, this.galleries}) : super(key: key);

  @override
  _NarrativeUploaderWidgetState createState() =>
      _NarrativeUploaderWidgetState();
}

class _NarrativeUploaderWidgetState extends State<NarrativeUploaderWidget> {
  DateTime pickedDate = DateTime.now();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final NarrativeBloc narrativeBloc = kiwi.Container().resolve<NarrativeBloc>();
  StreamSubscription sub;
  String narrative;
  String title;

  @override
  void initState() {
    sub = narrativeBloc.narrativeEventStream.listen(
      (onData) {
        if (onData is SyncNarrativeToGoogleDrive) {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: LoadingCardWithProgress(
                  galleryEventStream: narrativeBloc.narrativeEventStream,
                  doublePop: true,
                ),
              );
            },
          );
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    narrativeBloc?.dispose();
    sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setWidth(15),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            ScreenUtil().setWidth(15),
          ),
        ),
        width: ScreenUtil().setWidth(334),
        height: ScreenUtil().setHeight(480),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      iconSize: ScreenUtil().setWidth(15),
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        FontAwesomeIcons.times,
                        color: Color(AppColors.meltingCardColor),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Narrative',
                  style: AppFontStyles(context).getTextStyle(
                    color: Color(AppColors.meltingCardColor),
                    fontSize: 20,
                    weight: 'medium',
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(75),
                  width: ScreenUtil().setWidth(300),
                  child: GridView.builder(
                    itemCount: widget.galleries.length >= 3
                        ? 4
                        : widget.galleries.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 3)
                        return Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(5)),
                          child: Container(
                            width: ScreenUtil().setWidth(152),
                            height: ScreenUtil().setHeight(101),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                  spreadRadius: 1,
                                  color: Color(AppColors.shadowColor),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                '+${widget.galleries.length - 3}',
                                style: AppFontStyles(context).textStyle12White,
                              ),
                            ),
                          ),
                        );
                      else
                        return ThumbnailWidget(
                          gallery: widget.galleries[index],
                          count: -1,
                          thumbnailInfo: false,
                        );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    DateTime initialDate = DateTime.now();
                    DateTime firstDate =
                        initialDate.subtract(Duration(days: 7));
                    DateTime lastDate = initialDate.add(Duration(days: 7));
                    pickedDate = await showDatePicker(
                      context: context,
                      firstDate: firstDate,
                      lastDate: lastDate,
                      initialDate: initialDate,
                    );
                    if (pickedDate == null) {
                      pickedDate = initialDate;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: EdgeInsets.all(ScreenUtil().setHeight(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          DateFormat.yMMMd().format(pickedDate),
                          style: AppFontStyles(context).getTextStyle(
                            color: Color(AppColors.studentPresent),
                            fontSize: 15,
                            weight: 'medium',
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(5),
                          height: ScreenUtil().setHeight(20),
                        ),
                        Icon(
                          FontAwesomeIcons.edit,
                          size: ScreenUtil().setWidth(15),
                          color: Color(AppColors.studentPresent),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  child: TextFormField(
                    autovalidate: true,
                    validator: (value) {
                      if (value.isEmpty)
                        return 'Narrative title is required';
                      else
                        title = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title of narrative',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  child: TextFormField(
                    autovalidate: true,
                    maxLines: 5,
                    validator: (value) {
                      if (value.isEmpty)
                        return 'Narrative is required';
                      else
                        narrative = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Narrative',
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                SizedBox(
                  width: 129,
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        narrativeBloc.syncNarrativeToGoogleDrive(
                          date: pickedDate,
                          galleries: widget.galleries,
                          narrative: narrative,
                          narrativeName: title,
                        );
                      }
                    },
                    color: Color(AppColors.studentPresent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setWidth(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.save,
                          size: ScreenUtil().setWidth(15),
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Save',
                          style: AppFontStyles(context).textStyle15White,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
