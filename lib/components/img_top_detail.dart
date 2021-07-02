import 'package:flutter/material.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_images.dart';

class ImgTopDetail extends StatelessWidget {
  const ImgTopDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Stack(
        children: <Widget>[
          Image.asset(
            AppImages.spaghetti,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400.0,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 350.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.white,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 24,
                    bottom: 4
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Spaghetti',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: 28.0,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 0,
                    bottom: 4,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Panzani',
                        style: TextStyle(
                            color: AppColors.gray2,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 0,
                    bottom: 24,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Pate bolo incroyable ptn',
                        style: TextStyle(
                            color: AppColors.gray3,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
