import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/components/detail_img_top.dart';
import 'package:yuka/components/ingredients_detail.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

import 'navigator/navigator.dart';

class DetailCara1 extends StatelessWidget {
  const DetailCara1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
        builder: (BuildContext context, ProductState state) {
      return Theme(
          data: Theme.of(context).copyWith(
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.white,
              elevation: 0.0,
              centerTitle: false,
              iconTheme: IconTheme.of(context).copyWith(
                color: AppColors.white,
              ),
            ),
          ),
          child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                actions: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          AppIcons.share,
                          color: AppColors.white,
                        ),
                      ))
                ],
              ),
              body: SingleChildScrollView(
                child: Container(
                  color: AppColors.white,
                  child: Column(
                    children: <Widget>[
                      ImgTopDetail(),
                      Container(
                          width: double.infinity,
                          color: AppColors.gray1,
                          padding: EdgeInsets.all(8.0),
                          child: Text('Ingredients',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w700,
                                color: AppColors.blue,
                              ))),
                      ProductData(titleIngredients: ''),

                      if (state.product!.ingredients!.isNotEmpty)
                        ...state.product!.ingredients!
                            .map((String ingredients) => ProductData(
                                  titleIngredients: ingredients,
                                )),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(children: <Widget>[
                          Container(
                              width: double.infinity,
                              color: AppColors.gray1,
                              padding: EdgeInsets.all(8.0),
                              child: Text('Subtance allergens',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.blue,
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 16,
                              bottom: 32,
                            ),
                            child: Row(children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Aucun',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    color: AppColors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  '',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    color: AppColors.gray3,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ]),
                          )
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(children: <Widget>[
                          Container(
                              width: double.infinity,
                              color: AppColors.gray1,
                              padding: EdgeInsets.all(8.0),
                              child: Text('Additifs',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.blue,
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 16,
                              bottom : 32,
                            ),
                            child: Row(children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Aucun',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    color: AppColors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  '',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    color: AppColors.gray3,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ]),
                          )
                        ]),
                      ),

                    ],
                  ),
                ),
              )));
    });
  }
}

class ProductData extends StatelessWidget {
  final String titleIngredients;

  const ProductData({required this.titleIngredients, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
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
              '',
              style: TextStyle(
                fontFamily: 'Avenir',
                color: AppColors.blue,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              titleIngredients,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: 'Avenir',
                color: AppColors.gray3,
                fontSize: 20,
                fontWeight: FontWeight.w500,
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
    ]);
  }
}
