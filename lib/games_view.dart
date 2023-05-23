import 'package:assigment/constants/constants.dart';
import 'package:assigment/data/dummydata.dart';
import 'package:assigment/modal/games_modal.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  bool showmore = false;
  List<Games> games = availableGames;
  List<String> gamesimage = Constants.gamesimagelist;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.amber, Colors.white],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Games",
                    style: TextStyle(
                        shadows: [
                          Shadow(color: Colors.black, offset: Offset(0, -5))
                        ],
                        decoration: TextDecoration.underline,

                        //  color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow)),
                  onPressed: () {
                    setState(() {
                      showmore = !showmore;
                    });
                  },
                  child: Text(
                    "show more",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: showmore ? games.length : 4,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(gamesimage[index])),
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [
                          games[index].color!.withOpacity(0.55),
                          games[index].color!.withOpacity(0.9),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )),
                  child: Text(
                    "${games[index].title}",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
