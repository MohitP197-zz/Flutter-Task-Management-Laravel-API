class Project {
  final String projectName;
  final String userId;
  final String status;
  final String description;
  final bool isComplete;

  // const Project(this.projectName, this.userId, this.status, this.isComplete);
  const Project(
      {this.projectName,
      this.userId,
      this.status,
      this.isComplete,
      this.description});
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
        projectName: "WhyGoNepal",
        userId: "Mohit Paudel",
        status: "Completed",
        isComplete: true,
        description:
            "WhyGoNepal is a travel and tour website for booking various hotels, rooms, renting vehicle, booking various tour packages, etc."),
    Project(
        projectName: "Hotels Nepal",
        userId: "Mohit Paudel",
        status: "Completed",
        isComplete: false,
        description:
            "Hotels Nepal is a project which acts as a portal for booking accomodations, hiring airport taxies and booking tickets for various flights."),
    Project(
        projectName: "Examsys",
        userId: "Nishu Roka",
        status: "Not-Started",
        isComplete: true,
        description:
            "Examsys is an Online Examination System where students can give exams according to the subjects they are being taught at their school or college. "),
    Project(
        projectName: "Doctor Appointment System",
        userId: "Ganesh Oli",
        status: "On-Going",
        isComplete: false,
        description:
            "Doctor Appointment System is for appointing various doctors based on the problem patient is sufferring."),
  ];
}
