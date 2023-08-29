import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la Comida',
      'Irure id ad reprehenderit commodo magna voluptate incididunt veniam nulla esse.',
      'assetes/image/1.png'),
  SlideInfo(
      'Entrega rapida', 'Est mollit culpa irure do.', 'assetes/image/2.png'),
  SlideInfo(
      'Disfruta la camida',
      'Nulla eiusmod Lorem reprehenderit non velit nisi.',
      'assetes/image/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
            title: slideData.title, 
            caption: slideData.caption, 
            imageUrl: slideData.imageUrl
            )
            ).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
     required this.title, 
     required this.caption, 
     required this.imageUrl
     });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
