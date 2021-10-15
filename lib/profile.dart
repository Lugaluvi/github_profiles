import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String? profileName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://avatars.githubusercontent.com/u/54365855?v=4', width: 150, height: 150),
                SizedBox(height: 15.0),
                Text(
                  'Encontre um Dev',
                  style: GoogleFonts.poppins(
                    textStyle:
                    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Digite o nome do perfil do desenvolvedor no Github.',
                  style: GoogleFonts.lato(
                    textStyle:
                    TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.alternate_email, color: Colors.pink),
                      hintText: 'Ex: octocat',
                      fillColor: Colors.pink,
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.pink, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    onChanged: (value) {
                      profileName = value;
                    },
                  ),
                ),
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
                    'Procurar perfil',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.pink
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
