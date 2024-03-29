import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home',name: 'HomeScreen',icon: Icons.home,screen: const HomeScreen()),
    MenuOption(route: 'listview',name: 'listview',icon: Icons.list_alt,screen: const Listview2Screen()),
    MenuOption(route: 'alert',name: 'Alert',icon: Icons.warning_amber_rounded,screen: const AlertScreen()),
    MenuOption(route: 'card',name: 'Card Screen',icon: Icons.card_membership,screen: const CardScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
