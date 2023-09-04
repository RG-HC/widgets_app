import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un simple booblean
final isDarkmodeProvider = StateProvider((ref) => false);

//Listado de colores
final colorListProvider = Provider((ref) => colorList);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = ESTADO = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {}
}
