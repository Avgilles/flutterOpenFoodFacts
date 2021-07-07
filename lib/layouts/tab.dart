import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/components/detail_img_top.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

import 'navigator/navigator.dart';

class TabDetail extends StatelessWidget {

  const TabDetail({Key? key}) : super(key: key);

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
                  child: TabWidget(),
                );
              }
            }),
          ),
        ));
  }
}

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ImgTopDetail(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Table(
              border: TableBorder.symmetric(
                inside: BorderSide(width:1, color:AppColors.gray2)
                // color: AppColors.gray2,
              ),
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(6),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 32,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 32,
                        child: Text(
                          'Pour 100 g',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 32,
                        child: Text(
                          'Par part',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 32,
                        child: Text('Énergie',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                            )),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 32,
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 32,
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
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
