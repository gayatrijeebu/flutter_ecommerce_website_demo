import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../models/phone/phone_model.dart';
import 'specification_field.dart';

class PhoneSpecificationsCard extends StatelessWidget {
  const PhoneSpecificationsCard({
    Key? key,
    required this.phone,
  }) : super(key: key);

  final PhoneModel phone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: CachedNetworkImage(
                  imageUrl: phone.imageUrl,
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: Colors.red.shade700,
                  ),
                  progressIndicatorBuilder: (context, url, downloadProgress) {
                    return CircularProgressIndicator(
                      value: downloadProgress.progress,
                    );
                  },
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // model
                    SpecificationField(
                      fieldName: 'Model',
                      fieldValue: phone.model,
                    ),
                    // soc
                    SpecificationField(
                      fieldName: 'Soc',
                      fieldValue: phone.soc,
                    ),
                    // ram
                    SpecificationField(
                      fieldName: 'Ram',
                      fieldValue: '${phone.ram} GB',
                    ),
                    // storage
                    SpecificationField(
                      fieldName: 'Storage',
                      fieldValue: phone.storage,
                    ),
                    // screen size
                    SpecificationField(
                      fieldName: 'Screen size',
                      fieldValue: '${phone.screenSize} inch',
                    ),
                    // camera
                    SpecificationField(
                      fieldName: 'Camera',
                      fieldValue: phone.camera,
                    ),
                    // sar
                    SpecificationField(
                      fieldName: 'SAR',
                      fieldValue: '${phone.sar} W/kg',
                    ),
                    // price
                    SpecificationField(
                      fieldName: 'Price',
                      fieldValue: '€${phone.price}',
                    ),
                    // quantity
                    SpecificationField(
                      fieldName: 'Stock',
                      fieldValue: '${phone.stock}',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
