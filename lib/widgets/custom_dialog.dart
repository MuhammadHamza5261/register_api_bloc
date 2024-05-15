import 'package:flutter/material.dart';
import 'package:register_api/styles/theme.dart';


class CustomPopup {

   showOrderTypes(BuildContext context, model ) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(10),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        'Thank You!',
                        style: AppTheme.appTheme.textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),

                    const SizedBox(
                      height: 7,
                    ),
                    _orderData(context,"Total Standing Orders",5),

                    const SizedBox(height: 15),
                    _orderData(context,"Total New Orders",10),
                    const SizedBox(height: 15),
                    _orderData(context,"Total Stat Orders",1),
                    const SizedBox(height: 15),

                    Center(
                        child: SizedBox(
                          width: 130, // Set the desired width
                          child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(0),
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            onPressed: () {

                              Navigator.pop(context);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const OrderListScreen()),
                              // );
                            },
                            child: Text(
                              'Close',
                              style: AppTheme.appTheme.textTheme.bodyText1
                                  ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const Positioned(
                  top: -50,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }


  Widget _orderData(BuildContext context, String title, int count){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            '$title: ',
            style: AppTheme.appTheme.textTheme.bodyText1
                ?.copyWith(color: Colors.grey),
          ),
        ),
        Expanded(
          child: Text(count.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

}