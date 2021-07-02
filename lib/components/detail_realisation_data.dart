import 'package:flutter/material.dart';
import 'package:yuka/res/app_color.dart';

class RealisationDataDetail extends StatelessWidget {
  const RealisationDataDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 8,
          ),
          child: Row(children: <Widget>[
            Expanded(
              flex: 2,
              child: Text(
                'Quantité',
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '200g (égoutté 130g)',
                style: TextStyle(
                  color: AppColors.gray2,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Divider(
            height: 1,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: AppColors.gray2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 0,
          ),
          child: Row(children: <Widget>[
            Expanded(
              flex: 2,
              child: Text(
                'Vendu',
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                'France',
                style: TextStyle(
                  color: AppColors.gray2,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
