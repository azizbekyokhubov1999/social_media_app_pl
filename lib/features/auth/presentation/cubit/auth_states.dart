/*
manage auth states
 */

import 'package:social_media_app_pl/features/auth/domain/entities/app_user.dart';

abstract class AuthState{}

//initial state
class AuthInitial extends AuthState{}

//loading state
class AuthLoading extends AuthState{}

//authenticated
class Authenticated extends AuthState{
  final AppUser user;
  Authenticated(this.user);
}

//unauthenticated
class Unauthenticated extends AuthState {}

// errors
class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}