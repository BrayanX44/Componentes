import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/animated_container_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/list_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAppRoutes(){
  return <String, WidgetBuilder>{
    '/'     : (BuildContext context) => HomePage    (),
    'alert' : (BuildContext context) => AlertPage   (),
    'avatar': (BuildContext context) => Avatare_Page(),
    'card'  : (BuildContext context) => CardPage    (),
    'animatedContainer'  : (BuildContext context) => AnimatedContainerPage(),
    'input' : (BuildContext context) => InputPage   (),
    'slider' : (BuildContext context)  => SliderPage  (),
    'list' : (BuildContext context)  => ListPage  (),
  };
}
