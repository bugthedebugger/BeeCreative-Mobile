import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_bloc.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/pages/class_details/class_details.dart';
import 'package:BeeCreative/src/widgets/class_details_notification_card/class_details_notification_card.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_card.dart';
import 'package:BeeCreative/src/widgets/thumbnail_gallery/thumbnail_gallery.dart';
import 'package:flutter/material.dart';

class ClassDetailsPageWidget extends StatefulWidget {
  ClassDetailsPageWidget({
    Key key,
    @required this.data,
  }) : super(key: key);

  final ClassDetails data;

  @override
  _ClassDetailsPageWidgetState createState() => _ClassDetailsPageWidgetState();
}

class _ClassDetailsPageWidgetState extends State<ClassDetailsPageWidget>
    with AutomaticKeepAliveClientMixin {
  GalleryBloc galleryBloc;

  @override
  Widget build(BuildContext context) {
    galleryBloc = BlocProvider.of<GalleryBloc>(context);
    return ListView(
      children: <Widget>[
        ScheduleCard(
          schedule: widget.data.schedule,
          buttonLabel: 'See More',
          timeOfDay: widget.data.timeOfDay,
          openCard: true,
          function: null,
        ),
        ClassDetailsNotificationCard(schedule: widget.data.schedule),
        StreamBuilder<Map<DateTime, List<Gallery>>>(
          stream: galleryBloc.groupedGalleryStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ThumbnailGallery(galleries: snapshot.data);
            } else
              return Container();
          },
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
