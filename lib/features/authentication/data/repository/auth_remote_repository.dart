import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/core/failure/failure.dart';
import 'package:walkwise/features/authentication/data/data_source/remote/auth_remote_datasource.dart';
import 'package:walkwise/features/authentication/domain/entity/auth_entity.dart';
import 'package:walkwise/features/authentication/domain/repository/auth_repository.dart';

final authRemoteRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthRemoteRepository(
    ref.read(authRemoteDataSourceProvider),
  );
});

class AuthRemoteRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRemoteRepository(this._authRemoteDataSource);

  @override
  Future<Either<Failure, bool>> login(String email, String password) {
    return _authRemoteDataSource.login(email, password);
  }

  @override
  Future<Either<Failure, bool>> register(AuthEntity user) {
    return _authRemoteDataSource.register(user);
  }

  
}
