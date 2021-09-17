import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'settings_event.dart';
part 'settings_state.dart';

/// {@template settings_bloc}
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// {@macro settings_bloc}
  SettingsBloc() : super(const SettingsState(ThemeMode.system)) {
    on<SettingsThemeModeChanged>(_onSettingsThemeModeChanged);
  }

  void _onSettingsThemeModeChanged(
    SettingsThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) {
    emit(state.copyWith(themeMode: event.themeMode));
  }
}
