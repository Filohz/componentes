import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview',name: 'Listview',icon: Icons.list_alt,screen: const Listview2Screen()),
    MenuOption(route: 'alert',name: 'Alert',icon: Icons.warning_amber_rounded,screen: const AlertScreen()),
    MenuOption(route: 'card',name: 'Card',icon: Icons.card_membership,screen: const CardScreen()),
    MenuOption(route: 'avatar',name: 'Avatar',icon: Icons.supervised_user_circle,screen: const AvatarScreen()),
    MenuOption(route: 'animated',name: 'Animated',icon: Icons.animation_sharp,screen: const AnimatedScreen()),
    MenuOption(route: 'inputs',name: 'inputs',icon: Icons.input_outlined,screen: const InputsScreen()),
    MenuOption(route: 'slider',name: 'slider and check',icon: Icons.check,screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context) =>const HomeScreen() });

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
