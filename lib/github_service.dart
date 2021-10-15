import 'package:github_profiles/networking.dart';
import 'package:github_profiles/users.dart';

const usersUrl = 'https://api.github.com/users/';

class GithubService {
  static Future<Users> fetchUsers(String username) async {
    final String url = '$usersUrl/$username';
    final response = await NetworkHelper.getData(url);

    return Users.fromJson(response);
  }
}
