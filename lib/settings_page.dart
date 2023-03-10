import 'package:flutter/material.dart';
import 'package:mywatchapp/display_and_brigtness.dart';
import 'package:mywatchapp/face_gallery_information.dart';
import 'package:mywatchapp/general_page.dart';

import 'package:flutter_blue/flutter_blue.dart';
import 'dart:convert';

import 'package:mywatchapp/notifications.dart';
import 'package:mywatchapp/set_time.dart';
import 'package:mywatchapp/sound_and_volume.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mywatchapp/test.dart';

import 'face_gallery_information_class.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
    // required this.test,
  });

  // final Function test;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<Todo> faceGalleryList = [
    const Todo(
        'Test 1',
        'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget risus purus. Suspendisse ullamcorper ut felis in tincidunt. Vestibulum finibus hendrerit dui, et tincidunt lectus feugiat non. Etiam eu placerat urna, sed fermentum elit. Sed dapibus nisl eleifend suscipit fringilla. Vestibulum sed lacinia sapien. Aenean feugiat fringilla purus. Etiam non arcu ante.',
        'images/faceGallery.png'),
    const Todo(
        'Test 2',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget risus purus. Suspendisse ullamcorper ut felis in tincidunt. Vestibulum finibus hendrerit dui, et tincidunt lectus feugiat non. Etiam eu placerat urna, sed fermentum elit. Sed dapibus nisl eleifend suscipit fringilla. Vestibulum sed lacinia sapien. Aenean feugiat fringilla purus. Etiam non arcu ante.',
        'images/faceGallery.png'),
    const Todo(
        'Test 3',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget risus purus. Suspendisse ullamcorper ut felis in tincidunt. Vestibulum finibus hendrerit dui, et tincidunt lectus feugiat non. Etiam eu placerat urna, sed fermentum elit. Sed dapibus nisl eleifend suscipit fringilla. Vestibulum sed lacinia sapien. Aenean feugiat fringilla purus. Etiam non arcu ante.',
        'images/faceGallery.png'),
    const Todo(
        'Test 4',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget risus purus. Suspendisse ullamcorper ut felis in tincidunt. Vestibulum finibus hendrerit dui, et tincidunt lectus feugiat non. Etiam eu placerat urna, sed fermentum elit. Sed dapibus nisl eleifend suscipit fringilla. Vestibulum sed lacinia sapien. Aenean feugiat fringilla purus. Etiam non arcu ante.',
        'images/faceGallery.png'),
    const Todo(
        'Test 5',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget risus purus. Suspendisse ullamcorper ut felis in tincidunt. Vestibulum finibus hendrerit dui, et tincidunt lectus feugiat non. Etiam eu placerat urna, sed fermentum elit. Sed dapibus nisl eleifend suscipit fringilla. Vestibulum sed lacinia sapien. Aenean feugiat fringilla purus. Etiam non arcu ante.',
        'images/faceGallery.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 10, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                "My Display",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(children: [
              SizedBox(
                child: Image.asset(
                  'images/mainphoto.png',
                  width: 130,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Testing",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(200, 34, 34, 34)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            // FlutterBlue flutterBlue = FlutterBlue.instance;
                            // List<BluetoothDevice> bondedDevices =
                            //     await flutterBlue.connectedDevices;
                            // late BluetoothDevice hmSoftDevice;

                            // // Find device named "HMSoft"
                            // for (BluetoothDevice device in bondedDevices) {
                            //   if (device.name == "HMSoft") {
                            //     hmSoftDevice = device;
                            //     break;
                            //   }
                            // }

                            // List<BluetoothService> services =
                            //     await hmSoftDevice.discoverServices();
                            // services.forEach((service) async {
                            //   // do something with service
                            //   if (service.uuid.toString() ==
                            //       "0000ffe0-0000-1000-8000-00805f9b34fb") {
                            //     var characteristics = service.characteristics;
                            //     for (BluetoothCharacteristic c
                            //         in characteristics) {
                            //       if (c.uuid.toString() ==
                            //           "0000ffe1-0000-1000-8000-00805f9b34fb") {
                            //         c.write(utf8.encode('A'));
                            //         List<int> value = await c.read();
                            //         List<int> sentance = [];

                            //         while (value.last != 92) {
                            //           print("test");

                            //           if (value.first == 47) {
                            //             sentance.addAll(
                            //                 value.sublist(1, value.length - 1));
                            //             c.write(utf8.encode('L'));
                            //             value = await c.read();

                            //             continue;
                            //           }

                            //           if (value.last == 42) {
                            //             print(String.fromCharCodes(value));
                            //             sentance.addAll(
                            //                 value.sublist(0, value.length - 1));

                            //             c.write(utf8.encode('L'));
                            //             value = await c.read();
                            //           }
                            //         }
                            //         sentance.addAll(
                            //             value.sublist(0, value.length - 1));
                            //         print(String.fromCharCodes(sentance));
                            //         sentance = [];
                            //       }
                            //       return;
                            //     }
                            //   }
                            // });

                            // Get services and characteristics of device "HMSoft"

                            // if (characteristic.uuid.toString() ==
                            //     '0000ffe1-0000-1000-8000-00805f9b34fb') {
                            //   characteristic.write(utf8.encode('A'));
                            //   List<int> value = await characteristic.read();
                            //   List<int> sentance = [];

                            //   while (value.last != 92) {
                            //     print("test");

                            //     if (value.first == 47) {
                            //       sentance.addAll(
                            //           value.sublist(1, value.length - 1));
                            //       characteristic.write(utf8.encode('L'));
                            //       value = await characteristic.read();

                            //       continue;
                            //     }

                            //     if (value.last == 42) {
                            //       print(String.fromCharCodes(value));
                            //       sentance.addAll(
                            //           value.sublist(0, value.length - 1));

                            //       characteristic.write(utf8.encode('L'));
                            //       value = await characteristic.read();
                            //     }
                            //   }
                            //   sentance.addAll(
                            //       value.sublist(0, value.length - 1));
                            //   print(String.fromCharCodes(sentance));
                            //   sentance = [];
                            // }
                            //   }
                            // }

                            // List<BluetoothService> services =
                            //     await hmSoftDevice.discoverServices();
                            // for (BluetoothService service in services) {
                            //   for (BluetoothCharacteristic characteristic
                            //       in service.characteristics) {
                            //     // Do something with the characteristic
                            //     List<int> value = await characteristic.read();
                            //     print(String.fromCharCodes(value));
                            //   }
                            // }

                            // var test = services[1].characteristics;
                            // for (int i = 0; i < test.length; i++) {
                            //   List<int> value = await test[i].read();
                            //   // ignore: avoid_print
                            //   print(String.fromCharCodes(value));
                            // }

                            testthis();

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const GeneralPage();
                                },
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "General",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ">",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            testthis();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const DisplayAndBrightness();
                                },
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Display & Brightness",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ">",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            testthis();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const SoundAndVolume();
                                },
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Sound & Volume",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ">",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(200, 34, 34, 34),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            testthis();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const Notifications();
                                },
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Notifications",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ">",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            testthis();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const SetTime();
                                },
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Set Time & Alarms",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ">",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                    top: 4,
                    bottom: 4,
                  ),
                  child: Text(
                    "Watch Faces",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 160.0,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.4,
                    reverse: false,
                    initialPage: 0,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          onTap: () {
                            testthis();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return FaceGalleryInformation(
                                    test: faceGalleryList[i - 1],
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              children: [
                                Image.asset(faceGalleryList[i - 1].photo),
                                Text(
                                  faceGalleryList[i - 1].title,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
