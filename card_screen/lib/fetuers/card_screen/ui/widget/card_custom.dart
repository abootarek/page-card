// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:card_screen/core/helper/sixbox.dart';
import 'package:card_screen/core/theme/colors.dart';
import 'package:card_screen/core/theme/style.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatefulWidget {
  const CardCustom({
    super.key,
    this.image,
    required this.title,
    required this.price,
  });
  final String? image;
  final String title;
  final String price;

  @override
  State<CardCustom> createState() => _CardCustomState();
}

class _CardCustomState extends State<CardCustom> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: ColorsApp.wight,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 9,
            offset: const Offset(3, 2), // changes position of shadow
          ),
        ],
      ),
      height: 140,
      width: double.infinity,
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: ColorsApp.brown,
          ),
          horixontalspace(20),
          Image.asset(
            widget.image!,
          ),
          horixontalspace(15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyles.font14Black700Wight,
              ),
              Text(
                widget.price,
                style: TextStyles.font16Black700Wight,
              ),
              Row(
                children: [
                  Text(
                    r'Delivery fee US $3',
                    style: TextStyles.font10Black700Wight,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (_counter == 0) {
                          _counter = 0;
                        } else {
                          _counter--;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.remove_from_queue_outlined,
                      color: ColorsApp.brown,
                    ),
                  ),
                  Container(
                      child: Text(
                    _counter.toString(),
                  )),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    },
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: ColorsApp.brown,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
