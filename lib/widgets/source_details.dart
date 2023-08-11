import 'package:agua_para_todos/models/water_source.dart';
import 'package:flutter/material.dart';


@immutable
class SourceDetail extends StatelessWidget {
  final WaterSource source;
  const SourceDetail({Key? key, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Wrap(
        direction: Axis.vertical,
        children: [
          Image.network(
            source.image,
            height: 250,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 24),
            child: Text(
              source.name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 3),
            child: Text(
              source.address
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 3),
            child: Text(
              '${source.latitude}, ${source.longitude}'
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 15),
            child: Text(
              source.isPrivate ? "Privada" : "Não privada"
            ),
          ),
        ],
      );
  }
}