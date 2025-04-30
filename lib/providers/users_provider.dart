import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_model.dart';
part 'users_provider.g.dart';

final dio = Dio();

@riverpod
Future<List<UserModel>> fetchUsers(Ref ref) async {
var response = await dio.get('https://api.github.com/users');
final data = (response.data as List).map((e) => UserModel.fromJson(e)).toList();
print(data);
return data;
}