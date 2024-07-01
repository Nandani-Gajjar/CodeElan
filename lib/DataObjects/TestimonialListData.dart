
class TestimonialList {
  const TestimonialList(
      {required this.image,
        required this.description,
        required this.name,
        required this.designation});

  final String image;
  final String description;
  final String name;
  final String designation;
}

const List<TestimonialList> testimonialData = <TestimonialList>[
  TestimonialList(
    image: 'ACMEMinds-Logo.png',
    description:
    'CodeElan Technologies team as they were very good in understanding existing application and suggested best automation framework for the project. I highly recommend CodeElan Technologies team and would collaborate with them for future projects.',
    name: 'Sandeep Mehra',
    designation: '(Director at AcmeMinds Private Limited)',
  ),
  TestimonialList(
    image: 'BanyanTree-Logo.png',
    description: 'CodeElan Technologies has been our testing partner for the last couple of years and has been an integral part of our team. They are our go-to team when it comes to quality testing.',
    name: 'Anant Kumar',
    designation: '(Founder and Owner)',
  ),
  TestimonialList(
    image: 'Idea-bridge-Logo.png',
    description:
    'We engaged CodeElan Technologies for QA for our product IdeaBridge. It has been a great experience working with them. Without a doubt, we are happy to recommend CodeElan Technologies for their work ethics and professionalism.',
    name: 'Samraat Sardesai',
    designation: '(Co-Founder)',
  ),
  TestimonialList(
    image: 'PlusInnovation-Logo.png',
    description: 'I am writing to recommend the services of CodeElan Technologies. CodeElan testing team has been working for our company for the last 3 years as our Testing Team.  I am confident in recommending CodeElan Technologies.',
    name: 'Andre Cardozo',
    designation: '(Co-founder and CTO)',
  ),
];


