import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:agua_para_todos/controllers/source_controller.dart';
import 'package:provider/provider.dart';

final appKey = GlobalKey();

class SourceMapPage extends StatelessWidget {
  const SourceMapPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: appKey,
      body: ChangeNotifierProvider<SourceController>(
        create: (context) => SourceController(),
        child: Builder(
          builder: (context){
            final local = context.watch<SourceController>();

            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(local.lat, local.long),
                zoom: 18,
              ),
              zoomControlsEnabled: true,
              mapType: MapType.normal,
              myLocationEnabled: true,
              onMapCreated: local.onMapCreated,
              markers: local.markers,
              );
          }
        ),
      ),
    );
  }
}