import 'package:top_jobs/features/auth/data/models/user_model.dart';
import 'package:top_jobs/features/auth/domain/entities/user_entity.dart';

class UserMapper {
  static UserEntity userModelToEntity(UserModel user) {
    return UserEntity(
      id: user.id,
      name: user.name,
      phone: user.phone,
      email: user.name,
    );
  }
}
