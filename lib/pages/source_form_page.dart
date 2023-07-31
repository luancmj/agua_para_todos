
import 'package:agua_para_todos/models/water_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

// Define a custom Form widget.
class SourceFormPage extends StatefulWidget {
  const SourceFormPage({super.key});

  @override
  SourceFormPageState createState() {
    return SourceFormPageState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class SourceFormPageState extends State<SourceFormPage> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<SourceFormPageState>.
  final _formKey = GlobalKey<FormState>();
  bool light = false;
  final controllerName = TextEditingController();
  final controllerAddress = TextEditingController();
  final controllerIsPrivate = TextEditingController();
  final controllerImage = TextEditingController();

  Position? _currentPosition;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              'Cadastro de Nascente',
              style: TextStyle(
                fontSize: 16
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextFormField(
              controller: controllerName,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Nome',
                focusColor: Colors.blueAccent,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Informe um nome para a nascente';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextFormField(
              controller: controllerAddress,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Endereço',
                focusColor: Colors.blueAccent
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Informe um endereço para a nascente';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                const Text('Propriedade privada?'),
                Switch(
                  // This bool value toggles the switch.
                  value: light,
                  activeColor: Colors.blueAccent,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      light = value;
                    });
                  },
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                ElevatedButton.icon(
                  label: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Tirar Foto'),
                    ),
                  icon: const Icon(Icons.camera_alt),
                  onPressed: (){},
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('ou'),
                ),
                OutlinedButton.icon(
                  label: const Text('foto'),
                  icon: const Icon(Icons.camera_alt_outlined),
                  onPressed: (){},
                )
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: _getCurrentPosition,
              child: const Text('Cadastrar Nascente'),
            ),
          ),
        ],
      ),
    );
  }

  Future createSource(WaterSource source) async {
    //document on cloud firestore
    final docSource = FirebaseFirestore.instance.collection('sources').doc();

    source.id = docSource.id;

    final sourceJson = source.toJson();

    //create document and write data to Firebase
    await docSource.set(sourceJson);
  }

  Future<void> _getCurrentPosition() async {
    await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
    }).catchError((e) {
      debugPrint(e);
    });

    validateForm();

    createNewSource();
  }

  void validateForm() {
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Salvo com sucesso!')),
      );
    }
  }

  void createNewSource() {
    final source = WaterSource(
      name: controllerName.text,
      address: controllerAddress.text,
      isPrivate: light,
      latitude: _currentPosition!.latitude,
      longitude: _currentPosition!.longitude
    );
    
    createSource(source);
  }
}