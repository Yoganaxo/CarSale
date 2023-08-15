import 'package:flutter/material.dart';

class CarData2 extends StatelessWidget {
  final String pictureurl;
  final String brand;
  final String carmake;
  final String year;
  final String type;
  const CarData2(
      {super.key,
      required this.pictureurl,
      required this.brand,
      required this.carmake,
      required this.year,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(pictureurl),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white54,
                ),
                child: Text(
                  brand,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _CreateCarInfoRow(context: context, key: 'year', value: year),
                const SizedBox(
                  height: 4,
                ),
                _CreateCarInfoRow(
                    context: context, key: 'Car Model', value: carmake),
                const SizedBox(
                  height: 4,
                ),
                _CreateCarInfoRow(
                    context: context, key: 'Car State', value: type),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_CreateCarInfoRow(
    {required BuildContext context,
    required String key,
    required String value}) {
      return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(child: Text('$key:',
      style: Theme.of(context).textTheme.titleSmall,),
      ),
      const Spacer(),
      Text(
        value,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    ],
  );
    }
    
