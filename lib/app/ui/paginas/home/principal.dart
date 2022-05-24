import 'dart:ui';

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
  infoWindow: InfoWindow(title: 'Arce', snippet: 'Esta es una breve descripcion de la sucursal Arce'),
  icon: BitmapDescriptor.defaultMarker,
  position: LatLng(13.6845738,-89.2334234));
 
 static final Marker _kGooglePleMarker1 = Marker(
  markerId: MarkerId('hola'),
  infoWindow: InfoWindow(title: 'Salvador del mundo', snippet: 'Esta es una breve descripcion de la sucursal Salvador del Mundo'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  position: LatLng(13.7027926,-89.223017),
  );

static final Marker _kGooglePleMarker2 = Marker(
  markerId: MarkerId('hola'),
  infoWindow: InfoWindow(title: 'Soyapango Centro', snippet: 'Esta es una breve descripcion de la sucursal Soyacity'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
  position: LatLng(13.7035139,-89.1494341),
  );

static final Marker _kGooglePleMarker3 = Marker(
  markerId: MarkerId('hola'),
  infoWindow:  InfoWindow(title: 'San Jacinto', snippet: "Esta es una breve descripcion de sucursal San Jacinto"),
  
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  position: LatLng(13.6866886,-89.1886401));

  @override
  Widget build(BuildContext context) {
 GoogleMapController mapController;
 
    return Scaffold(
      appBar: AppBar(
        title: Text('MovilSV'),
      ),
      body: Column(
        children: [SizedBox(
          width: 360,
          height: 520,
          child: GoogleMap(
            markers: {_kGooglePleMarker, _kGooglePleMarker1, _kGooglePleMarker2, _kGooglePleMarker3},
          onMapCreated: _controller.onMapCreated,
          initialCameraPosition: _controller.initialCameraPosition,
          
          //myLocationButtonEnabled: false,
          //scrollGesturesEnabled: true,
          //compassEnabled: true,
          zoomGesturesEnabled: true,
          //mapType: MapType.hybrid,
          //onTap: _controller.onTap
          )
        )],
        
      )
    );
  }
}

