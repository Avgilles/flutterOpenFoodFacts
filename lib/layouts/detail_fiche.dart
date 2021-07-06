import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/components/bloc_product.dart';
import 'package:yuka/components/detail_bandeau.dart';
import 'package:yuka/components/detail_button.dart';
import 'package:yuka/components/detail_img_top.dart';
import 'package:yuka/components/detail_realisation_data.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

// import '../product.dart';

class DetailFiche extends StatelessWidget {

  const DetailFiche({Key? key}) : super(key: key);

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
              productBloc.fetchProduct('5000159484695');
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
                              BandeauDetail(),
                              RealisationDataDetail(),
                              ButtonDetail(),
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
