import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/core/failure/failure.dart';
// import 'package:walkwise/features/authentication/data/repository/auth_local_repository.dart';
import 'package:walkwise/features/authentication/data/repository/auth_remote_repository.dart';
import 'package:walkwise/features/authentication/domain/entity/auth_entity.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return ref.read(authRemoteRepositoryProvider);
});

abstract class IAuthRepository {
  Future<Either<Failure, bool>> register(AuthEntity user);
  Future<Either<Failure, bool>> login(String email, String password);
  // Future<Either<Failure, String>> uploadProfilePicture(File file);
}

