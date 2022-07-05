import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: BORRAR HOME
    MenuOption( route: 'listView1', name: 'Listview 1', screen: const Listview1Screen(), icon:  Icons.list_rounded),
    MenuOption( route: 'listView2', name: 'Listview 2', screen: const Listview2Screen(), icon:  Icons.list_alt ),
    MenuOption( route: 'card', name: 'Card', screen: const CardScreen(), icon:  Icons.card_membership_outlined),
    MenuOption( route: 'alert', name: 'Alert', screen: const AlertScreen(), icon:  Icons.warning_rounded),
    MenuOption( route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon:  Icons.supervised_user_circle),
    MenuOption( route: 'animated', name: 'Animated container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline),
    MenuOption( route: 'inputs', name: 'Text inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption( route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.slideshow),
    MenuOption( route: 'listviewbuilder', name: 'InfiniteScroll & Pull to Refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes ={}; 
    appRoutes.addAll({'home': (BuildContext context) => const  HomeScreen()});

    for (final option in menuOptions ) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
