import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mon_app/pages/home/home_page.dart';
import 'package:mon_app/pages/welcome/welcome_page.dart';
import 'package:mon_app/pages/login/login_page.dart';
import 'package:mon_app/pages/settings/settings.dart';
import 'package:mon_app/pages/orders/orders_page.dart';
import 'package:mon_app/pages/products/products_page.dart';
import 'package:mon_app/widgets/bottom_bar.dart';

import 'app_routes.dart';

final router = GoRouter(
  initialLocation: AppRoutes.welcome,
  routes: [
    GoRoute(
      path: AppRoutes.welcome,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoutes.settings,
      builder: (context, state) => const SettingsPage(),
    ),

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Bamba', style: TextStyle(color: Colors.blue)),
            actions: [
              IconButton(
                onPressed: () {
                  context.go(AppRoutes.settings);
                },
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          body: navigationShell,
          bottomNavigationBar: NavBarBottom(
            currentIndex: navigationShell.currentIndex,
            onTap: (index) => navigationShell.goBranch(index),
          ),
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.orders,
              builder: (context, state) => const OrdersPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.products,
              builder: (context, state) => const ProductsPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
