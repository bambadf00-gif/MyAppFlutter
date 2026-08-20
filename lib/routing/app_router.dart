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
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(body: child, bottomNavigationBar: const NavBarBottom());
      },
      routes: [
        GoRoute(
          path: AppRoutes.home,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: AppRoutes.orders,
          builder: (context, state) => const OrdersPage(),
        ),
        GoRoute(
          path: AppRoutes.products,
          builder: (context, state) => const ProductsPage(),
        ),
      ],
    ),
  ],
);
