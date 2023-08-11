import 'package:flutter/material.dart';

class SourceHelpPage extends StatefulWidget{
  const SourceHelpPage({super.key});

  @override
  SourceHelpPageState createState() {
    return SourceHelpPageState();
  }
}

class SourceHelpPageState extends State<SourceHelpPage> {
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Hero(
          tag: 'Hero-phone-to-call-1',
          child: Material(
            child: ListTile(
              title: const Text('Telefone útil'),
              subtitle: const Text('mais detalhes...'),
              tileColor: Colors.blueAccent.shade100,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context ){
                    return Scaffold(
                      appBar: AppBar(title: const Text('Telefone útil')),
                      body: const Column(
                        children: [
                          ListTile(
                            title: Text('85478596'),
                          )
                        ],
                      ),
                    );
                  }
                ));
              },
            ),
          ),
        ),
        Hero(
          tag: 'Hero-phone-to-call-2',
          child: Material(
            child: ListTile(
              title: const Text('Telefone útil'),
              subtitle: const Text('mais detalhes...'),
              tileColor: Colors.blueAccent.shade200,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context ){
                    return Scaffold(
                      appBar: AppBar(title: const Text('Telefone útil')),
                      body: const Column(
                        children: [
                          ListTile(
                            title: Text('85478596'),
                          )
                        ],
                      ),
                    );
                  }
                ));
              },
            ),
          ),
        ),
        Hero(
          tag: 'Hero-phone-to-call-3',
          child: Material(
            child: ListTile(
              title: const Text('Telefone útil'),
              subtitle: const Text('mais detalhes...'),
              tileColor: Colors.blueAccent.shade100,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context ){
                    return Scaffold(
                      appBar: AppBar(title: const Text('Telefone útil')),
                      body: const Column(
                        children: [
                          ListTile(
                            title: Text('85478596'),
                          )
                        ],
                      ),
                    );
                  }
                ));
              },
            ),
          ),
        ),
        Hero(
          tag: 'Hero-phone-to-call-4',
          child: Material(
            child: ListTile(
              title: const Text('Telefone útil'),
              subtitle: const Text('mais detalhes...'),
              tileColor: Colors.blueAccent.shade200,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context ){
                    return Scaffold(
                      appBar: AppBar(title: const Text('Telefone útil')),
                      body: const Column(
                        children: [
                          ListTile(
                            title: Text('85478596'),
                          )
                        ],
                      ),
                    );
                  }
                ));
              },
            ),
          ),
        ),
        Hero(
          tag: 'Hero-phone-to-call-5',
          child: Material(
            child: ListTile(
              title: const Text('Telefone útil'),
              subtitle: const Text('mais detalhes...'),
              tileColor: Colors.blueAccent.shade100,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context ){
                    return Scaffold(
                      appBar: AppBar(title: const Text('Telefone útil')),
                      body: const Column(
                        children: [
                          ListTile(
                            title: Text('85478596'),
                          )
                        ],
                      ),
                    );
                  }
                ));
              },
            ),
          ),
        ),
      ],
    );
  }
}