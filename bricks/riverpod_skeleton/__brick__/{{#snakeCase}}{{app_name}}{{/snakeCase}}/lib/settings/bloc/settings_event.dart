part of 'settings_bloc.dart';

/// {@template settings_event}
/// Abstract class for [SettingsBloc] events.
/// {@endtemplate}
abstract class SettingsEvent extends Equatable {
  /// {@macro settings_event}
  const SettingsEvent();
}

/// {@template settings_theme_mode_changed}
/// User changes the app's current theme mode.
/// {@endtemplate}
class SettingsThemeModeChanged extends SettingsEvent {
  /// {@macro settings_theme_mode_changed}
  const SettingsThemeModeChanged(this.themeMode);

  /// New theme mode for the app.
  final ThemeMode themeMode;

  @override
  List<Object?> get props => [themeMode];
}
