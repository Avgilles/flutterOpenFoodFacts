// enum ProductDetailsCurrentTab { summary, info, nutrition, nutritionalValues }

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/network/api_product.dart';
import 'package:yuka/network/network_api.dart';
import 'package:yuka/res/app_color.dart';
import 'package:yuka/res/app_icons.dart';

import '../../product.dart';
import '../detail_cara.dart';
import '../detail_cara_1.dart';
import '../detail_fiche.dart';
import '../tab.dart';

/// This is the stateful widget that the main application instantiates.
class NavTab extends StatefulWidget {
  const NavTab({Key? key}) : super(key: key);

  @override
  State<NavTab> createState() => _NavTabState();
}

/// This is the private State class that goes with NavTab.
class _NavTabState extends State<NavTab> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DetailFiche(),
    DetailCara1(),
    DetailNutri(),
    TabDetail(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return BlocProvider<ProductBloc>(
      create:(_) {
        ProductBloc productBloc = ProductBloc();
        productBloc.fetchProduct('5000159484695');
        return productBloc;
      },
      child: Theme(
          data: Theme.of(context).copyWith(
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.white,
              elevation: 0.0,
              centerTitle: false,
              iconTheme: IconTheme.of(context).copyWith(
                color: primaryColor,
              ),
            ),
          ),
          child: Scaffold(
            body: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(AppIcons.tabBarcode),
                  label: 'Fiche',
                ),
                BottomNavigationBarItem(
                  icon: Icon(AppIcons.tabFridge),
                  label: 'Carateristiques',
                ),
                BottomNavigationBarItem(
                  icon: Icon(AppIcons.tabNutrition),
                  label: 'Nutrition',
                ),
                BottomNavigationBarItem(
                  icon: Icon(AppIcons.tabArray),
                  label: 'Tableau',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: AppColors.blue,
              onTap: _onItemTapped,
            ),
          )),
    );
  }
}

enum ProductDetailsCurrentTab {summary, info, nutrition, nutritionalValues}

abstract class ProductEvent {}

class FetchProductEvent extends ProductEvent {
  final String barcode;

  FetchProductEvent(this.barcode);
}

// En sortie
abstract class ProductState {
  final Product? product;

  ProductState(this.product);
}

class InitialState extends ProductState {
  InitialState() : super(null);
}

class ProductAvailableState extends ProductState {
  ProductAvailableState(Product product) : super(product);
}

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  // Donner la valeur initiale
  ProductBloc() : super(InitialState());

  void fetchProduct(String barcode) {
    add(FetchProductEvent(barcode));
  }

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is FetchProductEvent) {
      String barcode = event.barcode;

      // NetworkProduct networkProduct = await OpenFoodFactsAPI(
      //   Dio(),
      //   baseUrl: 'https://api.formation-android.fr/v2/',
      // ).findProduct(barcode: barcode);

      APIGetProductResponse apiGetProductResponse = await OpenFoodFactsAPI(
        Dio(),
        baseUrl: 'https://api.formation-android.fr/v2/',
      ).findProduct(barcode: barcode);
      // println(networkProduct.response?.manufacturingCountries);
      // Requête
      yield ProductAvailableState(Product(
          barcode: barcode,
          name: apiGetProductResponse.response!.name,
          brands: apiGetProductResponse.response!.brands,
          picture: apiGetProductResponse.response!.picture,
          altName: apiGetProductResponse.response!.altName,
          quantity: apiGetProductResponse.response!.quantity,
          nutriScore: ProductNutriscore.A,
          // ecoScore: apiGetProductResponse.response!.ecoScore,
      ));
    }
  }
}
