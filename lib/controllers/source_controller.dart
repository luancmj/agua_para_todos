import 'package:agua_para_todos/pages/source_map_page.dart';
import 'package:agua_para_todos/repositories/source_repository.dart';
import 'package:agua_para_todos/widgets/source_details.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SourceController extends ChangeNotifier {
  double lat = 0.0;
  double long = 0.0;
  String erro = '';
  late GoogleMapController _mapsController;
  Set<Marker> markers = <Marker>{};

  get mapsController => _mapsController;

  onMapCreated(GoogleMapController googleMapController) async {
    _mapsController = googleMapController;

    getPosition();

    loadSources();
  }

  getPosition() async {
    try{
      Position position = await _currentPosition();
      lat = position.latitude;
      long = position.longitude;
      _mapsController.animateCamera(CameraUpdate.newLatLng(LatLng(lat, long)));
    } catch(e){
      erro = e.toString();
    }
    notifyListeners();
  }

  loadSources(){
    final sources = SourcesRepository().sources; //load sources for database or API

    sources.forEach((source) /*async*/ {
      markers.add(
        Marker(
          markerId: MarkerId(source.name),
          position: LatLng(source.latitude, source.longitude),
          /* icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(),
            'images/source.png', //adicionar no assets do pubspec.yaml
            ), */
          onTap: () => {
            showModalBottomSheet(
              context: appKey.currentState!.context,
              builder: (context) => SourceDetail(source: source),
            )
          },
        ),
      );
    });

    notifyListeners();
  }

  Future<Position> _currentPosition() async {
    LocationPermission permission;
    bool active = await Geolocator.isLocationServiceEnabled();

    if(!active){
      return Future.error("Por favor, habilite a localização no aparelho.");
    }

    permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();

      if(permission == LocationPermission.denied){
        return Future.error("Você precisa autorizar o acesso à localização.");
      }
    }

    if(permission == LocationPermission.deniedForever){
      return Future.error("Você precisa autorizar o acesso à localização nas configurações do aparelho.");
    }

    return await Geolocator.getCurrentPosition();
  }
}