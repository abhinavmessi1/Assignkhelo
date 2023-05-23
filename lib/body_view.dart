import 'package:flutter/material.dart';
import 'carousel_view.dart';
import 'language_view.dart';
import 'custom_bottom_bar.dart';
import 'video_view.dart';
import 'user_list.dart';
import 'games_view.dart';
import 'custom_app_bar.dart';

class BodyView extends StatefulWidget {
  const BodyView({Key? key}) : super(key: key);

  @override
  State<BodyView> createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CarouselView(),
        SizedBox(
          height: 20,
        ),
        LanguageView(),
        SizedBox(
          height: 10,
        ),
        UserList(),
        SizedBox(
          height: 10,
        ),
        YoutubeVideoPlayer(),
        SizedBox(
          height: 10,
        ),
        GamesScreen(),
      ],
    );
  }
}
