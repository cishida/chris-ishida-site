import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:flutter/foundation.dart';

class Products {
  static List<Product> list = [
    Product(
      title: 'Superconnector',
      subtitle:
          'A video sharing platform for venture backed founders and investors.',
      image:
          '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/superconnector/main.png',
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
          content: 'Superconnector Video Sharing App',
        ),
        ProductContent(
          type: ProductContentType.subheader,
          content:
              'Superconnector was built to connect venture backed founders and investors through short videos. It is a cross-platform mobile and web app built with Flutter and Google Cloud Services.',
        ),
        ProductContent(
          type: ProductContentType.image,
          content:
              "${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/superconnector/group.png",
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Superconnector started as a way to help founders connect during the beginning of Covid. We noticed that it was increasingly difficult to find the right people. Most social platforms have great content for startups but it can be hard to sift through all the noise. Superconnector created a vetted community of founders and investors that shared content through short clips. We chose video because it's so engaging and encourages authentic interactions.",
        ),
        ProductContent(
          type: ProductContentType.header2,
          content: 'The Technology',
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Superconnector was challenging to build because we needed to upload, download, and store significant amounts of video all while maintaining a seamless UX. I built the mobile application with Flutter for its cross-platform functionality and used Google’s Firestore and Cloud Functions for most of the backend that didn’t touch video. For video encoding, storing, and serving, we decided to use Mux, a video API. This allowed us to focus more on the UX. The app used a social network graph for connections that dictated which content would be served to each user. We needed videos to preload so that users could scroll quickly through without getting hung up waiting for buffering. We chose to support video of up to 1 minute in length which allowed the app to do a ton in the background like deciding what a user should see next and preparing those videos.",
        ),
      ],
    ),
    Product(
      title: 'SurgeryOS',
      subtitle:
          'A platform to help hospitals, surgery centers, and surgeons save money on medical devices.',
      image:
          '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/surgeryos/main.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: [
        'Ruby on Rails',
        'Angular',
        'Heroku',
        'AWS',
      ],
      content: [
        ProductContent(
          type: ProductContentType.header,
          content: 'SurgeryOS Web App / Algorithm',
        ),
        ProductContent(
          type: ProductContentType.subheader,
          content:
              'SurgeryOS was born out of surgeon frustration with medical device pricing. The goal of the business was to help hospitals, surgery centers, and surgeons save money on medical devices.',
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "SurgeryOS used a dynamic pricing algorithm for orthopedic implants - it calculated price using manufacturer, surgeon, surgery center, procedure, safety standard, and payer. We created SurgeryOS to help surgeons save money on medical devices while also improving the quality of their care. It was challenging because we had to coordinate thousands of data sources in real-time across a lot of really old systems as well as jump through all of the HIPAA red tape. Building a scalable, secure solution was difficult but extremely rewarding and we eventually processed millions of records.",
        ),
        ProductContent(
          type: ProductContentType.image,
          content:
              "${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/surgeryos/inventory.png",
        ),
        ProductContent(
          type: ProductContentType.header2,
          content: 'The Technology',
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "At the time I was most comfortable with Ruby on Rails and given the burden of security I decided to go with it as a backend solution. I chose Heroku to host because of its synergy with Rails. From the design phase, we knew the app was going to be incredibly interactive and used on the go so instead of Ruby for the frontend, I decided to use Angular, a Javascript framework that’s great for Single Page Applications. HIPAA compliance was a tough journey and getting approved to handle medical information in surgery centers and hospitals required audits and evaluations all around.",
        ),
      ],
    ),
    Product(
      title: 'Locent',
      subtitle:
          'A web app to help leading technology companies and creators craft text marketing programs.',
      image:
          '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/locent/main.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: [
        'Javascript',
        'AWS',
        'Twilio',
      ],
      content: [
        ProductContent(
          type: ProductContentType.header,
          content: 'Locent Web App / API',
        ),
        ProductContent(
          type: ProductContentType.subheader,
          content:
              "Locent was a YC company that we built to help leading technology companies and creators craft text marketing programs. It was an e-commerce platform that used Rails and Twilio.",
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Locent allowed small businesses and influencers to create marketing programs much like Mailchimp but for text messaging. Small businesses loved it because text messages convert significantly higher than channels like email. We saw things like signing up over a thousand customers and sending thousands of messages in a day.",
        ),
        ProductContent(
          type: ProductContentType.image,
          content:
              "${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/locent/clearcart.png",
        ),
        ProductContent(
          type: ProductContentType.header2,
          content: 'The Technology',
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Two main elements made up the platform. The web app and the messaging API. The web app was built on Rails. It created the marketing programs for users with customization options like content, frequency, tier, linking, and tracking. The API was built with a PostgreSQL database, Google Cloud Function triggers, and Twilio to handle sending the SMS.",
        ),
      ],
    ),
    Product(
      title: 'ReferCare',
      subtitle: 'A technology platform for managing dental practices.',
      image:
          '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/refercare/main.png',
      githubUrl: '',
      description: '',
      platforms: [],
      categories: [],
      technologies: ['Flutter', 'Dart', 'AWS'],
      content: [
        ProductContent(
          type: ProductContentType.header,
          content: 'ReferCare Dental Management Platform',
        ),
        ProductContent(
          type: ProductContentType.subheader,
          content:
              "ReferCare was built to solve the business side of dentistry so that dentists have more time to focus on patient care.",
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "ReferCare was not only designed to automate things like referrals and insurance claims but also aimed to integrate with other technologies already present in dentist offices. Things like payroll and patient intake typically have software solutions but managing a slew of disparate services takes time away from patient care.",
        ),
        ProductContent(
          type: ProductContentType.image,
          content:
              "${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/refercare/app-shop.png",
        ),
        ProductContent(
          type: ProductContentType.header2,
          content: 'The Technology',
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "I built ReferCare in Flutter for a fully cross platform application spanning iOS, Android, web, and desktop. For the backend, I chose to use Google’s Firebase for non-sensitive storage/operations and AWS for anything touching patient health information because they offer great security features for HIPAA compliance.",
        ),
      ],
    ),
    Product(
      title: 'Mills Novelty',
      subtitle: 'A mobile application for playing antique music machines.',
      image:
          '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/mills/main.png',
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
      content: [
        ProductContent(
          type: ProductContentType.header,
          content: 'Mills Novelty Music Player',
        ),
        ProductContent(
          type: ProductContentType.subheader,
          content:
              "The Mills Novelty Music Player is an ongoing side project that combines modern technology with antique music machines over 100 years old. It is a cross-platform application that uses bluetooth to talk to an Arduino microcontroller interfaced with music playing machines like Mills Violanos.",
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "Antique music machines like violanos, orchestrions, player pianos, and more are incredible feats of engineering to observe. They play many real instruments mechanically using rolls of paper to give the machine commands. However, the rolls are cumbersome and difficult to find. The Mills Novelty Music Player allows a user to play songs from their mobile device on the machine including previously unattainable features like playlists, skipping to a specific part of a track, playing modern songs, and more.",
        ),
        ProductContent(
          type: ProductContentType.image,
          content:
              "${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/mills/violano.jpeg",
        ),
        ProductContent(
          type: ProductContentType.header2,
          content: 'The Technology',
        ),
        ProductContent(
          type: ProductContentType.paragraph,
          content:
              "The music player is made of three different parts. The first part is a cross-platform Flutter application primarily used on mobile devices. This app allows a user to choose songs and albums, create and modify playlists, and connect to specific music machines. The app sends user commands over bluetooth to the machines. The second part is an Arduino microcontroller that listens to the Flutter app for commands and issues them to a circuit board that runs the machine. The Arduino uses an SD card to store songs to avoid any latency transmitting the song over bluetooth. The third part is a custom-made circuit board designed to interface with a variety of antique music machines.",
        ),
      ],
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
