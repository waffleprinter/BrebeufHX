import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// void main() {
//   runApp(Ressources());
// }


void openLink(String urlString) async {
  final Uri url = Uri.parse(urlString);
  try{
    await launchUrl(url);
  }
  catch(e){
    print("Error: $e");}}

// class Ressources extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       title: Center(child: Text("LIST OF RESOURCES",
//       style: TextStyle(
//           fontWeight: FontWeight.bold))),
//       backgroundColor: Colors.yellow[700],),
//       backgroundColor: Colors.yellow[300],
//       body: Center(child: MyDropdownButton()),
//     );
//   }
// }

class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {

  List<String> _options_women = [
  'Femmes + En Tech'
  'Leacross Foundation', 
  'Women In Sten Pilot Program',
  'YES Montreal',
  'IEEE Women In Engineering',
  'Joëlle Pineau',
  'Hypatia',
  'Beatrice Shilling',
  'Katherine Johnson',
  'Rosalind Franklin'];
  List<String> links_women = [
    'https://femmesentechmtl.ca/',
    'https://leacrossfoundation.ca/education-for-women/',
    'https://yesmontreal.ca/women-in-stem-pilot-program/',
    'https://yesadvancingwomen.com/about-us/',
    'http://ieeewiemontreal.polymtl.ca/events.html',
    'https://en.wikipedia.org/wiki/Jo%C3%ABlle_Pineau',
    'https://en.wikipedia.org/wiki/Hypatia',
    'https://en.wikipedia.org/wiki/Beatrice_Shilling',
    'https://en.wikipedia.org/wiki/Katherine_Johnson',
    'https://interestingengineering.com/science/greatest-women-in-stem'
    ];

  List<String> _options_people = [
  'Dr. Jane Cooke Wright (Doctor)',
  'Mary McMillan (Physical Therapist)',
  'Claude Bourgelat (Veterinarian)',
  'John Pemberton (Pharmacist)',
  'M. Visvesvaraya (Civil Engineer)',
  
  'Maria Montessori (Educator)',
  'David Ogilv (Marketing)',
  'Edith Kramer (Art Therapist)',
  'Walter Cronkite (Journalist)',
  'Steve Browne (HR)',
  
  'Abraham Lincoln (Lawyer)',
  'Marcie Pitt-Catsouphes (Social Worker)',
  'B. F. Skinner (Psychologist)',
  'Steve Jobs (Entrepreneur)',
  'Martha Ballard (Nurse)',

  'Paula Scher (Graphic Designer)',
  'Paul Gawman (3D Artist)',
  'Nick Park (Animator)',
  'John James Audubon (Scientific illustrator)',
  'Emily Lazar (Sound Engineer)',

  'Jack Kirby (Comic Book Artist)',
  'Joanna Gaines (Interior Designer)',
  'Jane Austen (Writer)',
  'Steven Spielberg (Film Director)',
  'Bob Dylan (Musician)',

  'Burt Rutan (Engineer)',
  'Shigeru Miyamoto (Video Game Designer)',
  'Tim Berners-Lee (Software Developper)',
  'Frank Lloyd Wright (Architect)',
  'Golan Levin (Data Visualist)'
  ];
  List<String> links_people = [
    'https://cfmedicine.nlm.nih.gov/physicians/biography_336.html',
   'https://www.storyterrace.com/blog/meet-mary-mcmillan-the-mother-of-modern-physical-therapy',
   'https://en.wikipedia.org/wiki/Claude_Bourgelat',
   'https://allthatsinteresting.com/john-pemberton-who-invented-coca-cola',
   'https://www.thefamouspeople.com/profiles/m-visvesvaraya-5290.php',

   'https://www.britannica.com/biography/Maria-Montessori',
   'https://www.britannica.com/biography/David-Ogilvy',
   'http://www.arttherapyblog.com/featured/reflecting-edith-kramer-art-therapy-pioneer-artist/',
   'https://www.biography.com/movies-tv/walter-cronkite',
   'https://www.sbrownehr.com/',
   
   'https://www.abrahamlincolnonline.org/lincoln/education/lawhighlights.htm',
   'https://www.bc.edu/bc-web/schools/ssw/faculty/faculty-directory/marcie-pitt-catsouphes.html',
   'https://www.verywellmind.com/b-f-skinner-biography-1904-1990-2795543',
   'https://www.biography.com/business-leaders/steve-jobs,',
   'https://newenglandhistoricalsociety.com/martha-ballard-good-as-best-doctorsedical-records-diary/',

   'https://www.pentagram.com/about/paula-scher',
   'https://paulgawman.com/',
   'https://en.wikipedia.org/wiki/Nick_Park',
   'https://www.britannica.com/biography/John-James-Audubon',
   'https://www.soundonsound.com/people/emily-lazar',

   'https://kirbymuseum.org/biography/',
   'https://en.wikipedia.org/wiki/Joanna_Gaines',
   'https://en.wikipedia.org/wiki/Jane_Austen',
   'https://www.biography.com/movies-tv/steven-spielberg',
   'https://www.biography.com/musicians/bob-dylan',

   'https://interestingengineering.com/engineers-directory/burt-rutan',
   'https://en.wikipedia.org/wiki/Shigeru_Miyamoto',
   'https://www.w3.org/People/Berners-Lee/',
   'https://franklloydwright.org/frank-lloyd-wright/',
   'https://www.flong.com/archive/bio/en/index.html'
   ];

  List<String> _options_organisms = [
    'Quebec Employment Assistance Programs',
    'CREMCN',
    'La Passerelle',
    'WorkInNonProfits',
    'Foundation List',
    'YES Employment and Entrepreneurship'];
  List<String> links_organisms = [
    'https://www.quebec.ca/en/employment/find-job-internship/employment-assistance-programs',
    'https://cremcn.org/en/home/',
    'https://ca.search.yahoo.com/search;_ylt=AwrirjSrHoJnXVMGAvrrFAx.;_ylc=X1MDMjExNDcyMTAwMwRfcgMyBGZyA21jYWZlZQRmcjIDc2ItdG9wBGdwcmlkA3RDOV9JcHhHU0NhV2ZIb1ZkdW8yc0EEbl9yc2x0AzAEbl9zdWdnAzAEb3JpZ2luA2NhLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMwBHFzdHJsAzMzBHF1ZXJ5A2NlbnRlcnMlMjB0aGF0JTIwaGVscCUyMHBlb3BsZSUyMGdldCUyMGpvYnMEdF9zdG1wAzE3MzY1ODA3ODc-?p=centers+that+help+people+get+jobs&fr=mcafee&type=E211CA885G0&fr2=sb-top',
    'https://workinnonprofits.ca/',
    'https://www.foundationlist.org/',
    'https://yesmontreal.ca/employment/'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Resources",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            DropdownButton<String>(
              hint: Text('Learn about an expert in the field',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black)          ),
              items: _options_people.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {openLink(links_people[_options_people.indexOf(newValue!)]);
              },
            ),
            SizedBox(height: 20),

            DropdownButton<String>(
              hint: Text('WOMEN IN STEM!!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black
              )),
              items: _options_women.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {openLink(links_women[_options_women.indexOf(newValue!)]);
              },
            ),
            SizedBox(height: 20),

            DropdownButton<String>(
              hint: Text('Organizations for job finding',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black)),
              items: _options_organisms.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {openLink(links_organisms[_options_organisms.indexOf(newValue!)]);
              },
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}