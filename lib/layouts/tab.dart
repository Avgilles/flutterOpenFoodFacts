import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuka/components/detail_img_top.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

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
          body: TabWidget(),

        ));
  }
}

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: AppColors.white,
          child: Column(
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
                            padding: const EdgeInsets.all(16.0),
                            width: 32,
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            width: 32,
                            child: Text(
                              'Pour 100 g',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              'Par part',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w700),
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '293 kj',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text('Matières grasses',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '0.8 g',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text('Glucides',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '0.1 g',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text('Dont Sucres',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '0.8 g',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text('Fibre alimentaire',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '0.8 g',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text('Protéines',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '0.8 g',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text('Sel',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '0.8 g',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text('Matières grasses',
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
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '0.8 g',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: const EdgeInsets.only(top : 16.0, bottom: 16.0, left: 8.0, right: 8.0),
                            width: 32,
                            child: Text(
                              '?',
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
        ),
      ),
    );
  }
}

