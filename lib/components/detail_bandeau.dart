import 'package:flutter/material.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/app_images.dart';

class BandeauDetail extends StatelessWidget {
  const BandeauDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          color: AppColors.gray1,
          child: IntrinsicHeight(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 44,
                  child: Container(
                    height: 50,
                    child: Image.asset(
                      AppImages.nutriscoreA,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: const VerticalDivider(
                    width: 5,
                    indent: 0,
                    endIndent: 5,
                    thickness: 1,
                    color: AppColors.gray2,
                  ),
                ),
                Expanded(
                  flex: 44,
                  child: Container(
                      color: AppColors.gray1,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Groupe Nova',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: AppColors.blueDark,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.0)),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Produit alimentaire et boissons ultra-transformés',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: AppColors.gray2,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: AppColors.gray1,
            child: Column(
              children: <Widget>[
                Divider(
                  height: 5,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: AppColors.gray2,
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'EcoScore',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        AppIcons.ecoscoreA,
                        color: AppColors.ecoScoreA,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'EcoScore',
                          style: TextStyle(
                            color: AppColors.gray2,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
