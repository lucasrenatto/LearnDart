import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowsView extends StatefulWidget {
  const ShowsView({super.key});

  @override
  State<ShowsView> createState() => _ShowsViewState();
}

class _ShowsViewState extends State<ShowsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
      child: Column(
        children: [
          Column(
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
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed('/show'),
                          child: Hero(
                            tag: "50m2",
                            child: Image.asset(
                              fit: BoxFit.fill,
                              height: 170,
                              width: 115,
                              'assets/images/covers/50-m2.jpg',
                            ),
                          ),
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
        ],
      ),
    );
  }
}
