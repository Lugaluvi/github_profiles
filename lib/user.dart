class User {
  User(
      {required this.id,
      required this.html_url,
      required this.login,
      required this.avatar_url,
      required this.name,
      required this.company,
      required this.location,
      required this.bio,
      required this.public_repos,
      required this.followers,
      required this.following});

  final int id;
  final String html_url;
  final String login;
  final String avatar_url;
  final String name;
  final String company;
  final String location;
  final String bio;
  final int public_repos;
  final int followers;
  final int following;

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json["id"],
      html_url: json["html_url"],
      login: json["login"],
      avatar_url: json["avatar_url"],
      name: json["name"],
      company: json["company"],
      location: json["location"],
      bio: json["bio"],
      public_repos: json["public_repos"],
      followers: json["followers"],
      following: json["following"]);
  }
