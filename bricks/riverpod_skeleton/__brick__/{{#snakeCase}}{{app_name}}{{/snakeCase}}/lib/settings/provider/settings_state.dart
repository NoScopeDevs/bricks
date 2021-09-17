// ignore_for_file: public_member_api_docs

part of 'settings_provider.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _SettingsState;
}
