import 'package:exampple3/config/router/router_config.dart';
import 'package:exampple3/producto/producto_detail_screen.dart';
import 'package:exampple3/screen/home/home_screen.dart';
import 'package:exampple3/screen/shared/layout.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",

  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        String data = state.topRoute?.name ?? "Admin";
        return Layout(title: data, child: child);
      },

      routes: [
        ...routerConfig.map((e) {
          return GoRoute(path: e.patch, name: e.name, builder: e.widget);
        }),
      ],
    ),
    GoRoute(
      path: '/producto/:id',
      name: 'product_detail',
      builder: (context, state) {
        int id = int.parse( state.pathParameters['id']!);

        return ProductoDetailScreen(id :id);
      },
    ),
  ],
  errorBuilder: (context, state) => HomeScreen(),
);
