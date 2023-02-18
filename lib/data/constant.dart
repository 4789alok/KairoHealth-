import 'package:get_storage/get_storage.dart';

final getStorage = GetStorage();

final List<String> listscroll = [
  "https://img.freepik.com/free-psd/medical-healthcare-poster-template_23-2148940481.jpg?w=2000"
  //     "https://venngage-wordpress.s3.amazonaws.com/uploads/2021/11/15-Medical-Poster-Templates-for-Patient-Education-Blog-Header.png"
  //     "https://rukminim1.flixcart.com/image/416/416/kah413k0/poster/s/9/c/medium-keep-your-hands-clean-educational-posters-medical-posters-original-imafsffuay6tyedw.jpeg?q=70"
  // "https://templates.designwizard.com/03d9e460-c944-11e7-93a5-719ecf802875.jpg"
  //"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/3df0d6105002533.5f6f657eb1b0b.jpg"
];
final List<String> listscrall = [
  "https://img.freepik.com/free-psd/medical-healthcare-poster-template_23-2148940481.jpg?w=2000"
  // "https://venngage-wordpress.s3.amazonaws.com/uploads/2021/11/15-Medical-Poster-Templates-for-Patient-Education-Blog-Header.png"
  //"https://rukminim1.flixcart.com/image/416/416/kah413k0/poster/s/9/c/medium-keep-your-hands-clean-educational-posters-medical-posters-original-imafsffuay6tyedw.jpeg?q=70"
  //"https://templates.designwizard.com/03d9e460-c944-11e7-93a5-719ecf802875.jpg"
  //  "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/3df0d6105002533.5f6f657eb1b0b.jpg"
];
final List<Map<String, dynamic>> listgreat = [
  {
    'image':
        'https://www.homage.sg/wp-content/uploads/2020/12/Homage-doctor-and-nurse.png',
    'title': 'General\nPhysician',
  },
  {
    'image':
        'https://i0.wp.com/www.micromd.com/wp-content/uploads/2021/09/obgyn-header-right.png?fit=640%2C613&ssl=1',
    'title': 'Obstetrics',
  },
  {
    'image':
        'https://i0.wp.com/www.micromd.com/wp-content/uploads/2021/09/urology-header-right-side.png?fit=640%2C600&ssl=1',
    'title': 'Urology',
  },
  {
    'image':
        'https://i0.wp.com/www.micromd.com/wp-content/uploads/2021/09/ent-header-right-side.png?fit=650%2C433&ssl=1',
    'title': 'ENT',
  },
  {
    'image':
        'https://www.manipalhospitals.com/uploads/specialities/content_photo/orthopedic-doctors-in-bangalore.jpeg',
    'title': 'Orthopaedics',
  },
  {
    'image': 'https://shmhpullur.com/img/dept/g5.jpg',
    'title': 'Dermatology',
  },
  {
    'image':
        'https://i0.wp.com/www.micromd.com/wp-content/uploads/2021/09/cardiology-header-right-side.png?fit=640%2C640&ssl=1',
    'title': 'Cardiology',
  },
  {
    'image':
        'https://practicetechsolutions.com/wp-content/uploads/2020/11/AdobeStock_374853074-Converted.png',
    'title': 'Gastroenterology',
  },
  {
    'image':
        'https://spshospitals.com/wp-content/uploads/2022/10/pediatric-neurology.png',
    'title': 'Neurology',
  },
  {
    'image':
        'https://www.manipalhospitals.com/jayanagar/uploads/specialities/best-pulmonologist-hospital-in-jayanagar.png',
    'title': 'Pulmonology',
  },
  {
    'image':
        'https://hvdeh.org/wp-content/uploads/2019/10/Homepage-Excellance-In-Quality-Eye-Care-1.png',
    'title': 'Ophthalmology',
  },
  {
    'image': 'https://zoiclinics.com/img/dentistry-hero.png',
    'title': 'Dentist',
  },
];
final List<Map<String, dynamic>> listcurated = [
  {
    'image':
        'https://pyt-images.imgix.net/images/web_app/staycation/usp-safety.png?dpr=2&auto=format,compress,enhance&q=20',
    'title': 'Curated',
  },
  {
    'image':
        'https://cdni.iconscout.com/illustration/premium/thumb/body-checkup-5472095-4573004.png',
    'title': 'Body checkup',
  },
  {
    'image':
        'https://wp-api.bajajfinservhealth.in/wp-content/uploads/2021/10/38.png',
    'title': 'Diabetes',
  },
  {
    'image':
        'https://images.squarespace-cdn.com/content/v1/5fed35371560fa17be9e8544/1611548406225-3MCECIYDGRQC4LDQRKV6/Thyroid+Treatments+South+Sydney+Medical+Specialists.png',
    'title': 'Thyroid',
  },
  {
    'image':
        'https://www.verywellhealth.com/thmb/o2KnUyaJhGtcgqAkTCBe3zaIHeQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/IlloDot_HeartDisease-1df9e9b2f2fd40c38e509d7a6a1f2feb.png',
    'title': 'Heart (cardiac)',
  },
  {
    'image':
        'https://www.kidneycenter.pitt.edu/files/stacks-image-1be143a-928x1200.png',
    'title': 'Kidney',
  },
  {
    'image':
        'https://aighospitals.com/wp-content/uploads/2020/05/Centre-of-Liver-Transplant.png',
    'title': 'Liver',
  },
  {
    'image':
        'https://www.bajajallianz.com/content/dam/bagic/index/health-category/health-category-critical-ill-women.png',
    'title': 'Womens health',
  },
];
// final List<Map<String, dynamic>> listDoctors = [
//   {
//     'image':
//         'https://res.cloudinary.com/doczo/image/upload/v1628964569/doctors/dr-v-s-v-kumar-chennai.png',
//     'title': 'Dr. Avinash Gupta',
//     'title1': 'NEUROLOGY',
//     'title2': 'Kairo Hospitals Seepat Road,Bilaspur',
//   },
//   {
//     'image':
//         'https://res.cloudinary.com/doczo/image/upload/v1628964569/doctors/dr-v-s-v-kumar-chennai.png',
//     'title': 'Dr. Avinash Gupta',
//     'title1': 'NEUROLOGY',
//     'title2': 'Kairo Hospitals Seepat Road,Bilaspur',
//   },
//   {
//     'image':
//         'https://res.cloudinary.com/doczo/image/upload/v1628964569/doctors/dr-v-s-v-kumar-chennai.png',
//     'title': 'Dr. Avinash Gupta',
//     'title1': 'NEUROLOGY',
//     'title2': 'Kairo Hospitals Seepat Road,Bilaspur',
//   },
//   {
//     'image':
//         'https://res.cloudinary.com/doczo/image/upload/v1628964569/doctors/dr-v-s-v-kumar-chennai.png',
//     'title': 'Dr. Avinash Gupta',
//     'title1': 'NEUROLOGY',
//     'title2': 'Kairo Hospitals Seepat Road,Bilaspur',
//   },
//   {
//     'image':
//         'https://res.cloudinary.com/doczo/image/upload/v1628964569/doctors/dr-v-s-v-kumar-chennai.png',
//     'title': 'Dr. Avinash Gupta',
//     'title1': 'NEUROLOGY',
//     'title2': 'Kairo Hospitals Seepat Road,Bilaspur',
//   },
// ];
