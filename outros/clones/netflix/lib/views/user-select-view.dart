import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserSelectView extends StatefulWidget {
  const UserSelectView({super.key});

  @override
  State<UserSelectView> createState() => _UserSelectViewState();
}

class _UserSelectViewState extends State<UserSelectView> {
  @override
  Widget build(BuildContext context) {
    var displayHeigth = MediaQuery.of(context).size.height;
    var displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: displayWidth * 0.3,
            ),
            Image.asset(
              'assets/images/logo-horizontal.png',
              width: displayWidth * 0.3,
            ),
            Container(
              width: displayWidth * 0.2,
            ),
            Container(
              width: displayWidth * 0.1,
              child: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.edit_outlined,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Quem está assistindo?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: displayHeigth * 0.6,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(2),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed('/core'),
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profile-pics/panda.jpg',
                            fit: BoxFit.cover,
                            width: 92,
                            height: 92,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Lucas'),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed('/core'),
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profile-pics/red-smile.jpg',
                            fit: BoxFit.cover,
                            width: 92,
                            height: 92,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('João'),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed('/core'),
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profile-pics/woman.jpg',
                            fit: BoxFit.cover,
                            width: 92,
                            height: 92,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Bruna'),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed('/core'),
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profile-pics/chicken.jpg',
                            fit: BoxFit.cover,
                            width: 92,
                            height: 92,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Flávio'),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        height: 92,
                        width: 92,
                        child: Icon(
                          Icons.add,
                          size: 48,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("Adicionar Perfil")
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
