import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/core.dart';

@RoutePage()
class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [CounterRoute(), LogoRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _CustomTabButton(
                label: 'Page 1',
                color: AppColors.grey,
                onTap: () => tabsRouter.setActiveIndex(0),
              ),

              const SizedBox(width: 3.0),

              _CustomTabButton(
                label: 'Page 2',
                color: AppColors.pink,
                onTap: () => tabsRouter.setActiveIndex(1),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CustomTabButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _CustomTabButton({
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56.0,
        height: 23.0,
        color: color,
        child: Center(child: Text(label, style: TextStyle(fontSize: 12.0))),
      ),
    );
  }
}
