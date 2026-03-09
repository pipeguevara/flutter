import 'package:exampple3/config/router/router_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class DrawerCoustom extends StatelessWidget {
  const DrawerCoustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...routerConfig.map((route) {
            return (ListTile(
              title: Text(route.title),
              subtitle: Text(route.description),
              trailing: Icon(Icons.abc_rounded),
              onTap: () {
                context.go(route.patch);
              },
            ));
          }),
        ],
      ),
    );
  }
}
