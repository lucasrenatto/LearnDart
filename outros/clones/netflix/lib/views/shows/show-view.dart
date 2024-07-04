import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShowView extends StatefulWidget {
  const ShowView({super.key});

  @override
  State<ShowView> createState() => _ShowViewState();
}

class _ShowViewState extends State<ShowView> {
  late YoutubePlayerController _controllerTrailer;

  @override
  void initState() {
    _controllerTrailer = YoutubePlayerController(
      initialVideoId: '8z6bwb_mRec',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controllerTrailer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.monitor_rounded,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "50m2",
              child: YoutubePlayer(
                controller: _controllerTrailer,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Theme.of(context).colorScheme.secondary,
                progressColors: ProgressBarColors(
                  playedColor: Theme.of(context).colorScheme.secondary,
                  handleColor: Theme.of(context).colorScheme.secondary,
                ),
                onReady: () {
                  print("pronto");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 16,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "SÉRIE",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "50m²",
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Text("2024"),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        color: Colors.red,
                        width: 24,
                        height: 24,
                        child: const Center(
                          child: Text(
                            "16",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text("3 Temporadas"),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.hd_outlined,
                        size: 24,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.closed_caption_off,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () => print("clicou"),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 36,
                            color: Theme.of(context).colorScheme.background,
                          ),
                          Text(
                            "Assitir",
                            style: TextStyle(
                              fontSize: 22,
                              color: Theme.of(context).colorScheme.background,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () => print("clicou"),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 53, 53, 53),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download_sharp,
                            size: 36,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Baixar T1:E1",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Gölge, um assassino de aluguel que, ao trair seu poderoso chefe, se vê forçado a se esconder em uma pequena comunidade. Assumindo a identidade do filho de um alfaiate falecido, Gölge começa a descobrir uma nova vida enquanto lida com seu passado sombrio.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.add),
                          Text(
                            "Minha lista",
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        children: [
                          Icon(Icons.star_border),
                          Text("Classificar"),
                        ],
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        children: [
                          Icon(Icons.share),
                          Text("Compartilhe"),
                        ],
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        children: [
                          Icon(Icons.download_rounded),
                          Text("Baixar Temp 1"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
