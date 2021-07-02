import 'package:flutter/material.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

class ButtonDetail extends StatelessWidget {
  const ButtonDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 4),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.blueLight,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(AppIcons.checkmark, color: AppColors.white),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.white, // foreground
                  ),
                  onPressed: () {},
                  child: Text('Végétalien'),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 4),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.blueLight,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(AppIcons.close, color: AppColors.white),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.white, // foreground
                  ),
                  onPressed: () {},
                  child: Text('Végétarien'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
