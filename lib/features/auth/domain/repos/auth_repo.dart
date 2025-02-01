
/*
Auth Repository - ushbu ilova uchun bajarilishi mumkin bo'lgan methodlarni belgilaydi
 */

import 'package:social_media_app_pl/features/auth/domain/entities/app_user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailPassword(
      String email, String password);

  Future<AppUser?> registerWithEmailPassword(
      String name, String email, String password);
  
  Future<void> logout();
  Future<AppUser?> getCurrentUser();

}