// ignore_for_file: public_member_api_docs

part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  const SettingsState(this.themeMode);

  final ThemeMode themeMode;

  @override
  List<Object?> get props => [themeMode];

  SettingsState copyWith({ThemeMode? themeMode}) {
    return SettingsState(
      themeMode ?? this.themeMode,
    );
  }
}
