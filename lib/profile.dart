import 'package:flutter/material.dart';
import 'package:github_profiles/search.dart';
import 'package:github_profiles/user.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Search();
                      }),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'Voltar a busca',
                    style: TextStyle(fontSize: 20.0, color: Colors.pink),
                  ),
                ),
                SizedBox(height: 10.0),
                CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        '${user.avatar_url.toString()}')),
                SizedBox(height: 15.0),
                Text(
                  user.name.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  user.bio.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_pin, color: Colors.pink),
                    Text(
                      user.location.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.apartment_sharp, color: Colors.pink),
                    Text(
                      user.company.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    SizedBox(
                      width: 140.0,
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.wb_cloudy_rounded),
                              Text(
                                user.public_repos.toString(),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Repositórios',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.star),
                              Text(
                                user.followers.toString(),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Seguidores',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120.0,
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.supervisor_account),
                              Text(
                                user.following.toString(),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Seguindo',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                TextButton(
                  onPressed: () async {
                    // Pokemon pokemon = await PokemonService.fetchPokemon(
                    //     pokemonName!.toLowerCase());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) {
                    //     return ResultScreen(pokemon: pokemon);
                    //   }),
                    // );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'Ir para o perfil',
                    style: TextStyle(fontSize: 20.0, color: Colors.pink),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
