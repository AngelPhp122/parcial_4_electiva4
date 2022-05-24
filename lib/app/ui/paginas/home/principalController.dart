import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial_4_electiva4/app/utilities/mapa_style.dart';
import 'package:flutter/widgets.dart';

class PrincipalController extends ChangeNotifier{

Map<MarkerId, Marker> _markers = {};

 final initialCameraPosition = 
  const CameraPosition(target: LatLng(13.6845738,-89.2334234));

Set<Marker> get markers => _markers.values.toSet();
PrincipalController();

void onMapCreated(GoogleMapController controller){
controller.setMapStyle(Mapstyle);
}

void onTap(LatLng position){
  final markerId = MarkerId(_markers.length.toString());
  final maker = Marker(markerId: markerId, position: position);
_markers[markerId] = maker;
notifyListeners();
  }
}