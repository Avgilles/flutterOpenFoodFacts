import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuka/res/app_color.dart';

class IngredientsDetail extends StatelessWidget {
  const IngredientsDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.white,
        child: Column(
          children: <Widget>[
            Column(children: <Widget>[
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
                      '200g (égoutté 130g)',
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
              ),
            ]),
          ],
        ));
  }
}
