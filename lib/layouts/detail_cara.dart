import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/components/detail_img_top.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

import 'navigator/navigator.dart';


class DetailNutri extends StatelessWidget {

  const DetailNutri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          body: BlocProvider<ProductBloc>(
            create: (_) {
              ProductBloc productBloc = ProductBloc();
              productBloc.fetchProduct('5000159484695');
              return productBloc;
            },
            child: BlocBuilder<ProductBloc, ProductState>(
                builder: (BuildContext context, ProductState state) {
              if (state.product == null) {
                return Center(child: CircularProgressIndicator());
              } else {
                return SingleChildScrollView(
                  child: Container(
                      color: AppColors.white,
                      child: Column(
                        children: <Widget>[
                          ImgTopDetail(),
                          IntrinsicHeight(
                              child: Column(children: <Widget>[
                            /*---1---*/
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                bottom: 16.0,
                              ),
                              child: Row(children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Text('Matière grasse / lipides ',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: AppColors.blueDark)),
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Column(children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('0,8g',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('Faible quantité',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    )
                                  ]),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ]),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 90,
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                    color: AppColors.gray2,
                                  ),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ],
                            ),
                            /*___2___*/
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                bottom: 16.0,
                              ),
                              child: Row(children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Text('Matière grasse / lipides ',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: AppColors.blueDark)),
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Column(children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('0,8g',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('Faible quantité',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    )
                                  ]),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ]),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 90,
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                    color: AppColors.gray2,
                                  ),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ],
                            ),
                            /*---3---*/
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                bottom: 16.0,
                              ),
                              child: Row(children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Text('Matière grasse / lipides ',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: AppColors.blueDark)),
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Column(children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('0,8g',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('Faible quantité',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    )
                                  ]),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ]),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 90,
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                    color: AppColors.gray2,
                                  ),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ],
                            ),
                            /*---4---*/
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                bottom: 16.0,
                              ),
                              child: Row(children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Text('Matière grasse / lipides ',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: AppColors.blueDark)),
                                ),
                                Expanded(
                                  flex: 45,
                                  child: Column(children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('0,8g',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('Faible quantité',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: AppColors.nutriscoreA)),
                                    )
                                  ]),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ]),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(
                                  flex: 5,
                                ),
                                Expanded(
                                  flex: 90,
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                    color: AppColors.gray2,
                                  ),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                              ],
                            ),
                          ])),
                        ],
                      )),
                );
              }
            }),
          ),
        ));
  }
}
/*
class ProductHolder extends InheritedWidget {
  final Product product;

  const ProductHolder({
    required this.product,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

  static ProductHolder? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProductHolder>();
  }

  @override
  bool updateShouldNotify(ProductHolder old) => product != old.product;
}
*/
