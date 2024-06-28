import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              fit: BoxFit.fill,
              width: 18,
              height: 38,
              'assets/images/logo.png',
            ),
            const Text(
              "Séries",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Text(
              "Filmes",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Text(
              "Minha Lista",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Popular na Netflix",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/50-m2.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/black-af.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/dark.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/hauting.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/money-heist.jpg',
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Em Alta Agora",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/narcos.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/ozark.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/queens-gambit.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/the-100.jpg',
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Assista Novamente",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/the-blind.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/the-witcher.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/tiger-king.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          fit: BoxFit.fill,
                          height: 170,
                          width: 115,
                          'assets/images/covers/wednesday.jpg',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.home),
                Text("Início"),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white70,
                ),
                Text(
                  "Buscar",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.play_circle_outlined,
                  color: Colors.white70,
                ),
                Text(
                  "Em Breve",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.download_sharp,
                  color: Colors.white70,
                ),
                Text(
                  "Downloads",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white70,
                ),
                Text(
                  "Mais",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
