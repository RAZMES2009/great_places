import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String? _previewImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
            width: 1,
            color: Colors.grey,
          )),
          width: double.infinity,
          height: 170,
          alignment: Alignment.center,
          child: _previewImageUrl == null
              ? const Center(
                  child: Text('No location chosen'),
                )
              : Image.network(
                  _previewImageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              icon: const Icon(Icons.location_on),
              label: const Text('Current location'),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.map),
              label: const Text('Select on map'),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
