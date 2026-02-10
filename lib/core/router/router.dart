import 'package:auto_route/auto_route.dart';

import '../../presentation/presentation.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: TabBarRoute.page,
      children: [
        AutoRoute(path: 'counter', page: CounterRoute.page, initial: true),
        AutoRoute(path: 'logo', page: LogoRoute.page),
      ],
    ),
  ];
}
