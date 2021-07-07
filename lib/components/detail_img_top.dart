import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/layouts/navigator/navigator.dart';
import 'package:yuka/res/app_color.dart';

class ImgTopDetail extends StatelessWidget {
  const ImgTopDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
        builder: (BuildContext context, ProductState state) {
          // state.product!.nutriScore;
          return FractionallySizedBox(
            widthFactor: 1,
            child: Stack(
              children: <Widget>[
                Image.network(
                  state.product!.picture!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 400.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 320.0,
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
                            top: 8,
                            bottom: 4
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(state.product!.name!,
                              style: TextStyle(
                                fontFamily: 'Avenir',
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
                          child: Text(state.product!.brands!.join(','),
                              style: TextStyle(
                                  fontFamily: 'Avenir',
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
                          bottom: 16,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(state.product!.altName!,
                              style: TextStyle(
                                  fontFamily: 'Avenir',
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
    );
  }
}
