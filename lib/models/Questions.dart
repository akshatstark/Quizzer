class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Why is AWS more economical than traditional data centers for applications with varying compute workloads",
    "options": ['EC2 build on monthly basis', 'Users retain full administrative access', 'EC2 instances can be launched on demand', 'Users can handle peak workloads'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Which AWS service would simplify the migration of a database to AWS",
    "options": ['AWS Storage Gateway', 'AWS Database Migration Service (AWS DMS)', 'Amazon EC2', ' Amazon AppStream 2.0'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Which AWS offering enables users to find, buy, and immediately start using software solutions in their AWS environment",
    "options": ['AWS Config', 'AWS OpsWorks', 'AWS SDK', 'AWS Marketplace'],
    "answer_index": 4,
  },
  {
    "id": 4,
    "question": "Which AWS networking service enables a company to create a virtual network within AWS?",
    "options": ['AWS Config ', 'Amazon Route 53 ', 'AWS Direct Connect', 'Amazon Virtual Private Cloud (Amazon VPC)'],
    "answer_index": 4,
  },
  {
    "id": 5,
    "question": "5) Which of the following is an AWS responsibility under the AWS shared responsibility model",
    "options": ['Configuring third-party applications ', 'Maintaining physical hardware', 'Securing application access and data', 'Managing guest operating systems'],
    "answer_index": 2,
  },
];
