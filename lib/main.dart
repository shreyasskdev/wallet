import 'package:flutter/material.dart';
import 'package:wallet/pages/photo.dart';
import 'pages/collections.dart';
import 'pages/album.dart';
import 'package:go_router/go_router.dart';

import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Wallet",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const CollectionsPage(),
      routes: [
        GoRoute(
          path: "album/:name",
          builder: (context, state) => AlbumPage(
            name: state.pathParameters["name"]!,
          ),
        ),
        GoRoute(
          path: "photo/:url",
          pageBuilder: (context, state) => CustomTransitionPage(
            // transitionDuration: Duration(milliseconds: 500),
            child: PhotoView(
              url: state.pathParameters["url"]!,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                  opacity: CurveTween(curve: Curves.fastEaseInToSlowEaseOut)
                      .animate(animation),
                  child: child);
            },
          ),
        ),
      ],
    ),
  ],
);
