import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';

class AnimeshDialog extends StatelessWidget {
  final Widget child;

  AnimeshDialog({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(AppPhotos.animesh),
    );
  }
}
