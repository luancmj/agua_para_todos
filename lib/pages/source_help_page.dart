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
              title: const Text('SEMA'),
              subtitle: const Text('mais detalhes...'),
              tileColor: Colors.blueAccent.shade100,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context ){
                    return Scaffold(
                      appBar: AppBar(title: const Text('Endereços e Contatos')),
                      body: const Column(
                        children: [
                          ListTile(
                            title: Text('Endereço Sede:'
                              'Av. dos Holandeses, n° 04, Quadra 06,'
                              'Edifício Manhattan,'
                              'Calhau São Luís - Maranhão'
                              'CEP: 65071-380.'
                            ),
                          ),
                          ListTile(
                            title: Text('Endereço Anexo:'
                              'Rua dos Búzios, Quadra 35, Lote 18,'
                              'Calhau São Luís - Maranhão'
                              'CEP: 65071-700'
                            ),
                          ),
                          ListTile(
                            title: Text('Telefone: (98) 31948900'
                              'Protocolo: (98) 31948909'
                              'Segunda a Sexta - 13h às 19h'
                              'ouvidoria@sema.ma.gov.br'
                            ),
                          ),
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