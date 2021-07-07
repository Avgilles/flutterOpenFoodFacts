import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/layouts/navigator/navigator.dart';
import 'package:yuka/network/api_product.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/app_images.dart';

class BandeauDetail extends StatelessWidget {

  const BandeauDetail({
    Key? key,
  }) : super(key: key);

  // String imgPath;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
        builder: (BuildContext context, ProductState state) {
          String? imgPath;
          switch (state.product!.nutriScore) {
            case APIProductNutriscore.A:
                imgPath = AppImages.nutriscoreA;
              break;
            case APIProductNutriscore.B:
                imgPath = AppImages.nutriscoreB;
              break;
            case APIProductNutriscore.C:
                imgPath = AppImages.nutriscoreC;
              break;
            case APIProductNutriscore.D:
                imgPath = AppImages.nutriscoreD;
              break;
            case APIProductNutriscore.E:
                imgPath = AppImages.nutriscoreE;
              break;
          }
      return Column(
        children: <Widget>[
          Container(
            color: AppColors.gray1,
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(
                  top:24.0,
                  left:16,
                  bottom:24.0,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 44,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 64,
                          child: Image.asset(
                            imgPath!,
                            fit: BoxFit.contain,
                          ),
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
                                child: Text(state.product!.name! ,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily:'Avenir',
                                        color: AppColors.blueDark,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20.0)),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                      'Produit alimentaire et boissons ultra-transformés',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily:'Avenir',
                                    color: AppColors.gray2,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
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
          ),
          Divider(
            height: 5,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: AppColors.gray2,
          ),
          Container(
            color: AppColors.gray1,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left:16.0,
                        right:16.0,
                        top:24.0,
                    ),
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
                Padding(
                  padding: const EdgeInsets.only(
                    left:16.0,
                    right:16.0,
                    bottom:24.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        AppIcons.ecoscoreA,
                        color: AppColors.ecoScoreA,
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
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}
