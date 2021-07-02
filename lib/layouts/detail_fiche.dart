import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuka/components/detail_bandeau.dart';
import 'package:yuka/components/detail_button.dart';
import 'package:yuka/components/detail_img_top.dart';
import 'package:yuka/components/detail_realisation_data.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

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
              color: AppColors.blue,
            ),
          ),
        ),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: const Icon(Icons.arrow_back, color: AppColors.white),
            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      AppIcons.share,
                      color: AppColors.white,
                    ),
                  ))
            ],
          ),
          body: Container(
              color: AppColors.white,
              child: Column(
                children: <Widget>[
                  ImgTopDetail(),
                  BandeauDetail(),
                  RealisationDataDetail(),
                  ButtonDetail(),
                ],
              )),
        ));
  }
}
