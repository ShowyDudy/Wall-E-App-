class WallE {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  WallE(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
    this.images,
  });
}

List<WallE> wallEInfo = [
  WallE(1,
      name: 'Welcome!',
      iconImage: 'assets/image1.png',
      description:
          "Welcome to the Wall-E companion app designed by 99000 Vikings to work with your Wall-E. Here you can learn about various features, operations, and more about your robot. Furthermore, there is a camera that the user can use to take pictures and videos of the robots perspective at a glance by placing your phone on the robot.",
      images: ['https://i.imgur.com/QUpku3x.jpg', 'https://i.imgur.com/CAHzODY.jpg',
      ]),
  WallE(2,
      name: 'Controls',
      iconImage: 'assets/image2.png',
      description:
          "Wall-E can be controlled by downloading the “Blynk“ app, and then scanning a QR code that gives the user access to the controls. On the top of the layout, the user can choose two modes: manual control or autonomous mode. In manual mode the user can use the two sliders to control the left and right side of Wall-E.",
      images: ['https://i.imgur.com/Nz2tRkm.png', 'https://i.imgur.com/bV89pIq.png', 'https://i.imgur.com/kI5RAlE.png',

      ]),
  WallE(3,
      name: 'Features',
      iconImage: 'assets/image3.png',
      description:
          "The following list contains features of Wall-E:\n\n•	Autonomous driving\n\n•	Avoid obstacles without human assistant\n\n•	Ability to choose the most efficient path\n\n•	16x2 LCD to display any message",
      images: ['https://i.imgur.com/fDdUOKJ.jpg', 'https://i.imgur.com/Y9etRAv.jpg', 'https://i.imgur.com/9UwNSTg.jpg',

      ]),
  WallE(4,
      name: 'Operation',
      iconImage: 'assets/image4.png',
      description:
          "Hardware - The main chassis was built using Vex c-Channels. The first iteration of the design was approximately 16x8x20 inches. This was our chassis iteration but soon came to realize that this was a weak design and there were stability and tension issues neat the track support. Our next chassis was also made out of vex c-Channels but 16x8x16 inches to reduce the tension on the track system.\n\nSoftware – The main processing is done through the Arduino due. It handles data incoming data from the WI-FI card and sensors. It also sends the outputs to the motor controller and the LCD. The code was also designed to have two modes; manual and autonomous.\n\nElectrical – The circuit has 5 main parts; The brain (Arduino Due), the eyes (Ultrasonic sensors), the ears (Wi-fi chip), the mouth (LCD screen), and the legs (the motors). Everything except the motor is powered by 5V which runs through the central terminal. The motors can only be powered by 9V to provide the speed and torque its needs. Additionally, the motor direction and speed are controlled by the motor controller.",
      images: [
        'https://i.imgur.com/pX6faTw.jpg',
        'https://i.imgur.com/tr9S7TB.jpg',
        'https://i.imgur.com/SLheYoO.png',
      ]),
  WallE(5,
      name: 'Our Team',
      iconImage: 'assets/image5.png',
      description:
          "Our development team consists of six very talented individuals that dedicate a lot of time, resources, and love into the creation of our products. We have three software developers, two hardware/systems developers, and one businessperson.",
      images: [
        'https://i.imgur.com/VuRwlqA.png',
        'https://i.imgur.com/SM5ybUp.png',
        'https://i.imgur.com/qVCWs58.png',
        'https://i.imgur.com/E38qw8b.png',
        'https://i.imgur.com/BNnIyB4.png',
        'https://i.imgur.com/o8KuQId.png',
      ]),
  WallE(6,
      name: 'Reach Us',
      iconImage: 'assets/image6.png',
      description:
          "If you have any questions or concerns, please feel free to reach us. Giving us feedback will help us improve our applications and software to make it an even better experience for you. \n\nEmail:\nsupport@99000-development.ca \n\nPhone:\n1-(647)-449-9000",
      images: []),
  WallE(7,
      name: 'Donate!',
      iconImage: 'assets/image7.png',
      description:
      "If you liked our work, please consider donating to us. These will allow us to continue creating and developing many aesthetically pleasing applications and software, as well as improving our hardware for future products. All to make it a better experience for you, as a consumer. \n\nDonation link:\nwww.99000-development.ca/en/donate",
      images: ['https://i.imgur.com/pgbWTEg.jpg',]),
];

