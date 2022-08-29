import 'package:chris_ishida_site/core/models/product/product.dart';

class Products {
  static List<Product> list = [
    Product(
      title: 'Superconnector',
      subtitle:
          'A video sharing platform for venture backed founders and investors.',
      image: 'images/products/superconnector/group.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: [
        'Flutter',
        'Dart',
        'Google Cloud Services',
        'Mux',
      ],
      content: [
        ProductContent(
          type: ProductContentType.header,
          content: 'Superconnector Video App',
        ),
        ProductContent(
          type: ProductContentType.subheader,
          content:
              'Superconnector was built to connect venture backed founders and investors through short videos. It is a cross-platform mobile and web app built with Flutter and Google Cloud Services.',
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Superconnector started as a way to help founders connect during the beginning of Covid. We noticed that it was increasingly difficult to find the right people. Most social platforms have great content for startups but it can be hard to sift through all the noise. Superconnector created a vetted community of founders and investors that shared content through short clips. We chose video because it's so engaging and encourages authentic interactions.",
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        ),
        ProductContent(
          type: ProductContentType.header2,
          content: 'Lorem ipsum dolor sit amet',
        ),
        ProductContent(
          type: ProductContentType.subheader,
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        ),
        ProductContent(
          type: ProductContentType.image,
          content: "images/products/superconnector/group.png",
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        ),
      ],
    ),
    Product(
      title: 'SurgeryOS',
      subtitle:
          'A platform to help hospitals, surgery centers, and surgeons save money on medical devices.',
      image: 'images/products/surgeryos/landing.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: [
        'Ruby on Rails',
        'Angular',
        'Firebase',
        'AWS',
      ],
      content: [],
    ),
    Product(
      title: 'Locent',
      subtitle:
          'A web app to help leading technology companies and creators craft text marketing programs.',
      image: 'images/products/locent/sell-with-text.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: [
        'Javascript',
        'AWS',
        'Twilio',
      ],
      content: [],
    ),
    Product(
      title: 'ReferCare',
      subtitle: 'A technology platform for managing dental practices.',
      image: 'images/products/refercare/home.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: ['Flutter', 'Dart', 'AWS'],
      content: [],
    ),
    Product(
      title: 'Mills Novelty',
      subtitle: 'A mobile application for playing antique music machines.',
      image: 'images/products/mills/songs-player-iphone.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: [
        'Arduino',
        'C++',
        'Flutter',
        'BLE',
      ],
      content: [],
    ),
    // Product(
    //   title: 'Lo Messenger',
    //   subtitle: '',
    //   image: '',
    //   githubUrl: '',
    //   description: '',
    //   platforms: [],
    //   categories: [],
    //   technologies: [],
    // ),
    // Product(
    //   title: 'Introchat',
    //   subtitle: 'An app that quickly introduces people.',
    //   image: '',
    //   githubUrl: '',
    //   description: '',
    //   platforms: [],
    //   categories: [],
    //   technologies: [],
    // ),
  ];
}
