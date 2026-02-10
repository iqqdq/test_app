import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cubit/logo_cubit.dart';

@RoutePage()
class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => LogoCubit(), child: const LogoView());
  }
}

class LogoView extends StatelessWidget {
  const LogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => context.read<LogoCubit>().toggleLogo(),
          child: BlocBuilder<LogoCubit, String>(
            builder: (context, logoPath) {
              return SvgPicture.asset(logoPath, width: 43.0, height: 42.0);
            },
          ),
        ),
      ),
    );
  }
}
