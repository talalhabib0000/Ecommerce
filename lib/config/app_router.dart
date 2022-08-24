import 'package:ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/cart/cart_screen.dart';
import '../screens/home/home_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // ignore: no_duplicate_case_values
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
            ));
  }
}
