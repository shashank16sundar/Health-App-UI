import 'package:health_app/widgets/health_needs_widget.dart';

List<HealthNeedsCircularWidget> homeScreenListItems = [
  const HealthNeedsCircularWidget(
    imageUrl: 'appointment.png',
    imageDesc: 'Consult',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'hospital.png',
    imageDesc: 'Hospital',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'virus.png',
    imageDesc: 'Covid-19',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'more.png',
    imageDesc: 'More',
  ),
];

List<HealthNeedsCircularWidget> healthListItems = [
  const HealthNeedsCircularWidget(
    imageUrl: 'appointment.png',
    imageDesc: 'Consult',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'hospital.png',
    imageDesc: 'Hospital',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'virus.png',
    imageDesc: 'Covid-19',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'pill.png',
    imageDesc: 'Pharmacy',
  ),
];

List<HealthNeedsCircularWidget> specialNeedsListItems = [
  const HealthNeedsCircularWidget(
    imageUrl: 'blood.png',
    imageDesc: 'Donation',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'tooth.png',
    imageDesc: 'Dental',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'insurance.png',
    imageDesc: 'Insurance',
  ),
  const HealthNeedsCircularWidget(
    imageUrl: 'bill.png',
    imageDesc: 'Bill',
  ),
];

List<Map<String, dynamic>> doctorsID = [
  {
    'name': 'Dr. Skylar Korsgaard',
    'profession': 'Neurologist',
    'ratings': 4.2,
    'reviews': 208,
    'imageURL': 'doctor_3.jpg',
  },
  {
    'name': 'Dr. Ruben Vargas',
    'profession': 'Psychiatrist',
    'ratings': 4.7,
    'reviews': 162,
    'imageURL': 'doctor_2.jpg',
  },
  {
    'name': 'Dr. Vinay Pratap',
    'profession': 'Psychiatrist',
    'ratings': 4.1,
    'reviews': 312,
    'imageURL': 'doctor_1.jpg',
  },
];
