import 'package:flutter_bloc/flutter_bloc.dart';

class LogoCubit extends Cubit<String> {
  LogoCubit() : super('assets/icons/logo2.svg');

  void toggleLogo() => emit(
    'assets/icons/logo${state == 'assets/icons/logo2.svg' ? '3' : '2'}.svg',
  );
}
