import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/components/bloc_prof.dart';
import 'package:yuka/components/detail_img_top.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

// import '../product.dart';

class DetailCara1 extends StatelessWidget {

  final String barcode;

  const DetailCara1({required this.barcode});

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
            create:(_) {
              ProductBloc productBloc = ProductBloc();
              productBloc.fetchProduct(barcode);
              return productBloc;
            },
            child:BlocBuilder<ProductBloc, ProductState>(
                builder: (BuildContext context, ProductState state){
                  if(state.product == null) {
                    return Center(
                        child: CircularProgressIndicator()
                    );
                  } else {
                    return SingleChildScrollView(
                      child: Container(
                          color: AppColors.white,
                          child: Column(
                            children: <Widget>[
                              ImgTopDetail(),
                              Column(children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  color: AppColors.gray1,
                                  padding:  EdgeInsets.all(8.0),
                                    child: Text('Ingredients',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily:'Avenir',
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.blue,
                                      )
                                    )
                                ),
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
                                        'Légumes',
                                        style: TextStyle(
                                          fontFamily:'Avenir',
                                          color: AppColors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        '200g (égoutté 130g)',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily:'Avenir',
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
                                ///*👆 divider*/
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
                                        'Eau',
                                        style: TextStyle(
                                          fontFamily:'Avenir',
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
                                          fontFamily:'Avenir',
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
                                ///*👆 divider*/
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
                                        'Sucre',
                                        style: TextStyle(
                                          fontFamily:'Avenir',
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
                                          fontFamily:'Avenir',
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
                                ///*👆 divider*/
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
                                        'Garniture',
                                        style: TextStyle(
                                          fontFamily:'Avenir',
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
                                          fontFamily:'Avenir',
                                          color: AppColors.gray3,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                            ],
                          )),
                    );
                  }
                }
            ),
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
