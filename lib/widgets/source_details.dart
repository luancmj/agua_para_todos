import 'package:agua_para_todos/models/water_source.dart';
import 'package:flutter/material.dart';

class SourceDetail extends StatelessWidget {
  WaterSource source;
  SourceDetail({Key? key, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Wrap(
        children: [
          Image.network(
            source.image,
            height: 250,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24),
            child: Text(
              source.name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60, left: 24),
            child: Text(
              source.address
            ),
          ),
        ],
      );
  }
}