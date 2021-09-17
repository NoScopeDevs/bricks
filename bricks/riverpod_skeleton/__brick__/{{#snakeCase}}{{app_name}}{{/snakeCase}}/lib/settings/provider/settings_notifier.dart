part of 'settings_provider.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(SettingsState state) : super(state);

  void changeThemeMode(ThemeMode? themeMode) {
    state = SettingsState(themeMode: themeMode ?? ThemeMode.system);
  }
}
