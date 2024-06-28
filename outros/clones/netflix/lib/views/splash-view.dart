import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:netflix/views/home-view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  double opacity = 0;
  AnimationController? _controller;
  Animation<double>? _animation;
  Future<void> fakeLoading() async {
    final player = AudioPlayer();
    player.setVolume(1);
    await player.play(
      
      UrlSource(
          'https://www.myinstants.com/media/sounds/nouveau-jingle-netflix.mp3'),
    );
    await Future.delayed(const Duration(seconds: 5));
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInOut,
    ));

    fakeLoading().then((_) {
      Navigator.of(context).pushReplacementNamed('/home');
    });

    Future.delayed(const Duration(milliseconds: 0))
        .then((value) => startAnimation());
  }

  void startAnimation() {
    setState(() {
      opacity = 1;
    });
    _controller?.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation!,
              builder: (context, child) {
                return ClipRect(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    widthFactor: _animation!.value,
                    child: Opacity(
                      opacity: opacity,
                      child: Image.asset(
                        'assets/images/logo-horizontal.png',
                        width: 280,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 34,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
