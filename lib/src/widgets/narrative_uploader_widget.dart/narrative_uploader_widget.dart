import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/widgets/thumbnail_widget/thumbnail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

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
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        FontAwesomeIcons.times,
                        size: ScreenUtil().setWidth(15),
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
                      return ThumbnailWidget(
                        gallery: widget.galleries[0],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Choose Date: ',
                        style: AppFontStyles(context).getTextStyle(
                          color: Color(AppColors.meltingCardColor),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        DateFormat.yMMMd().format(pickedDate),
                        style: AppFontStyles(context).getTextStyle(
                          color: Color(AppColors.meltingCardColor),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  child: TextFormField(
                    autovalidate: true,
                    validator: (value) =>
                        value.isEmpty ? 'Narrative title is required' : null,
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
                    validator: (value) =>
                        value.isEmpty ? 'Narrative is required' : null,
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
                        print('validated');
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
