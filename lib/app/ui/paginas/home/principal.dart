import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial_4_electiva4/app/ui/paginas/home/principalController.dart';

class PrincipalPagina extends StatefulWidget {
  //PrincipalPagina({Key? key}) : super(key: key);

  @override
  State<PrincipalPagina> createState() => _PrincipalPaginaState();
}

class _PrincipalPaginaState extends State<PrincipalPagina> {
  
  final _controller = PrincipalController();
  static final Marker _kGooglePleMarker = Marker(
  markerId: MarkerId('hola'),
  infoWindow: InfoWindow(title: 'Arce'),
  icon: BitmapDescriptor.defaultMarker,
  position: LatLng(13.6845738,-89.2334234));
 
 static final Marker _kGooglePleMarker1 = Marker(
  markerId: MarkerId('hola'),
  infoWindow: InfoWindow(title: 'Salvador del mundo'),
  icon: BitmapDescriptor.defaultMarker,
  position: LatLng(13.7027926,-89.223017));

static final Marker _kGooglePleMarker2 = Marker(
  markerId: MarkerId('hola'),
  infoWindow: InfoWindow(title: 'Soyapango Centro'),
  icon: BitmapDescriptor.defaultMarker,
  position: LatLng(13.7035139,-89.1494341));
  @override
  Widget build(BuildContext context) {
 GoogleMapController mapController;
 
    return Scaffold(
      appBar: AppBar(
        title: Text('MovilSV'),
      ),
      body: Column(
        children: [SizedBox(
          width: 500,
          height: 500,
          child: GoogleMap(
            markers: {_kGooglePleMarker, _kGooglePleMarker1, _kGooglePleMarker2},
          onMapCreated: _controller.onMapCreated,
          initialCameraPosition: _controller.initialCameraPosition,
          
          //myLocationButtonEnabled: false,
          //scrollGesturesEnabled: true,
          //compassEnabled: true,
          //zoomGesturesEnabled: true,
          //mapType: MapType.hybrid,
          //onTap: _controller.onTap
          )
        )],
        
      )
    );
  }
}

