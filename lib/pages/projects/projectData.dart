class Project {
  final String projectName;
  final String userId;
  final String status;
  final bool isComplete;

  // const Project(this.projectName, this.userId, this.status, this.isComplete);
  const Project({this.projectName, this.userId, this.status, this.isComplete});
}

// var projectDetails = <Project>[
//   Project("WhyGoNEpal", "Mohit Paudel", "Completed", true),
//   Project("Ecommerce Website", "Mohit Paudel", "Completed", true),
//   Project("Examsys", "Nishu Roka", "Not-Started", false),
//   Project("Doctor Appointment System", "Ganesh Oli", "On-Going", false),
// ];

List projectDetails() {
  return [
    Project(
      projectName: "WhyGoNEpal",
      userId: "Mohit Paudel",
      status: "Completed",
      isComplete: true,
    ),
    Project(
      projectName: "Ecommerce Website",
      userId: "Mohit Paudel",
      status: "Completed",
      isComplete: false,
    ),
    Project(
      projectName: "Examsys",
      userId: "Nishu Roka",
      status: "Not-Started",
      isComplete: true,
    ),
    Project(
      projectName: "Doctor Appointment System",
      userId: "Ganesh Oli",
      status: "Not-Started",
      isComplete: false,
    ),
  ];
}
