import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text('Cadastro de Nascente')
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Nome',
                focusColor: Colors.blueAccent
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
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: (){
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Salvo com sucesso!')),
                  );
                }
              },
              child: const Text('Salvar'),
            ),
          )
        ],
      ),
    );
  }
}