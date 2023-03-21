class PostModel {
  final String image;
  final String title;
  final String date;
  final String description;
  int commentsNumber;
  PostModel({
    required this.image,
    required this.title,
    required this.date,
    required this.description,
    required this.commentsNumber,
  });
}

const String imgPath = "assets/images";

List<PostModel> posts = [
  PostModel(
    image: "$imgPath/posts_images/post1.jpg",
    title: "7th Generation Reqruitment",
    date: "6 November 2022",
    commentsNumber: 0,
    description:
        '''من البداية كانت رؤيتنا واضحة، بدأت من حيث تنفيذ الفكرة، وظلت تُبث في الأذهان لتستمر جهودنا، أجيال تعقبها أجيال، ونية مجددة دائمًا.
          بنعلن عن بداية فترة الـ Recruitment والّي من خلالها بنستقبل أفراد جديدة وجيل قادر إنه يسيب أثر وإفادة زي الّي اكتسبهم من ناس كتير قبله.
          https://cisteam.org/events/cis-7th-generation-recruitment
          #CIS_7th_Generation 
          #CIS_Team.''',
  ),
  PostModel(
      image: "$imgPath/posts_images/post2.jpg",
      title: "Our New Partner - Creativa Hub Mansoura",
      date: "25 October 2022",
      commentsNumber: 0,
      description:
          '''الرحلة تكتمل بوجود رفيق، لذلك يُسعدنا الإعلان عن شريكنا - Creativa Hub Mansoura - وهي مؤسسة بتهتم بتوفير العديد من الأنشطة والبرامج في ريادة الأعمال ودعم الإبتكار التكنولوجي وغيرها من المجالات، واللي بدورها بتساعد الشباب على تطوير مهاراتهم. 
‏ #CHESS_ENDGAME
‏ #CREATIVA_Hub_Mansoura
‏ #CIS_Team'''),
  PostModel(
      image: "$imgPath/posts_images/post3.jpg",
      title: "Technical Board 2023",
      date: "14 October 2022",
      commentsNumber: 0,
      description: '''“ Our new Mentors are ready to complete the journey “

مُتفقين دائمًا إن الأهم من اكتساب المعلومة هي إنها متقفش عندنا وبس، عشان كده جه وقت إننا نعلن عن المينتوز الجُدد الّي قرروا يكملوا الطريق، ويمهدوا طُرق جديدة لناس اكتر.

#Technical_Squads
#CIS_Team'''),
  PostModel(
      image: "$imgPath/posts_images/post4.jpg",
      title: "Board 2023",
      date: "10 October 2022",
      commentsNumber: 0,
      description:
          '''" نَخوضُ الدَربَ مُجَددًا، وَلِتَكُن معَالِمُه أفرادً سَائِرين نَحوكَ دَائِمًا "

بداية جديدة بنوايا طيبة، بنبدأها مع قادة جُدد قرروا يضيفوا و يسيبوا أثر جميل، زي الّي اكتسبوه من ناس كتير قبلهم.

#Board_2023
#CIS_Team'''),
  PostModel(
      image: "$imgPath/posts_images/post5.png",
      title: "CIS Campus",
      date: "31 August 2022",
      commentsNumber: 0,
      description:
          ''' وبكده نكون وصلنا لنهاية الجزء التيكنيكال من الـ Campus، في البوست ده تقدروا توصلوا لجميع الـ Roadmaps وتوضيحها مع كل مينتور.
بنتمنى تستفيدوا منها وتضيف ليكم🍃
English
https://github.com/CIS-Team/English-Group-2022

Frontend
https://github.com/CIS-Team/Front-End-Squad

Backend
https://github.com/CIS-Team/Backend-Technical-Group-2022

Android
https://github.com/CIS-Team/Android-Squad

Flutter
https://github.com/CIS-Team/Flutter-Squad

UI/UX
https://github.com/CIS-Team/UI-UX-Squad

Data science:
https://github.com/CIS-Team/Data-Science-Roadmap-2022

لينك البلاي ليست في أول كومنت⬇️

#CIS_Campus
#CIS_Team 
  '''),
  PostModel(
      image: "$imgPath/posts_images/post6.png",
      title: "Ramadan Kareem ❤️🌙",
      date: "2 April 2022",
      commentsNumber: 0,
      description:
          ''' نهنئكم بحلول شهر رمضان المبارك، أعاده اللّه علينا وعليكم باليُمنِ والبركات 🌙
'''),
];
