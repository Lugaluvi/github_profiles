import 'package:github_profiles/networking.dart';
import 'package:github_profiles/user.dart';

const usersUrl = 'https://api.github.com/users';

class GithubService {
  static Future<User> fetchUsers(String profileName) async {
    final String url = '$usersUrl/$profileName';
    final response = await NetworkHelper.getData(url);

    
    return User.fromJson(response);
  }
}
