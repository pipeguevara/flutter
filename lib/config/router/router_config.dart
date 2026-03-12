import 'package:exampple3/config/router/router_model.dart';
import 'package:exampple3/producto/producto_screen.dart';
import 'package:exampple3/screen/home/home_screen.dart';
import 'package:exampple3/screen/product/product_screen.dart';
import 'package:exampple3/screen/setting/setting_screen.dart';
import 'package:exampple3/screen/users/user_sreen.dart';

List<RouterModel> routerConfig = [
  RouterModel(name: "Home", title: "Home", description: "Esto es un home", patch: "/", widget: (contex, state)=>const HomeScreen()),
  RouterModel(name: "settings", title: "settings", description: "Esto es un setting", patch: "/settings", widget: (context,state)=>const SettingScreen()),
  RouterModel(name: "user", title: "user", description: "Esto es un user", patch: "/user", widget: (context,state)=>const UserSreen()),
  RouterModel(name: "products", title: "products", description: "Estos son los products", patch: "/product", widget: (context,state)=>const ProductScreen()),
  RouterModel(name: "dragon", title: "dragon", description: "Estos son los dragon", patch: "/dragon", widget: (context,state)=>const ProductoScreen())

];
