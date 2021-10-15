class Users {
  Users(
      {required this.id,
      required this.login,
      required this.avatar_url,
      required this.name,
      required this.company,
      required this.location,
      required this.bio,
      required this.followers,
      required this.following});

  final int id;
  final String login;
  final String avatar_url;
  final String name;
  final String company;
  final String location;
  final String bio;
  final int followers;
  final int following;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
      id: json["id"],
      login: json["login"],
      avatar_url: json["avatar_url"],
      name: json["name"],
      company: json["company"],
      location: json["location"],
      bio: json["bio"],
      followers: json["followers"],
      following: json["following"]);
}
