String getAppropriateMessageFromFirebaseCode(String code) {
  switch (code) {
    case "operation-not-allowed":
      return "Anonymous auth hasn't been enabled for this project.";
    default:
      return "Unknown error.";
  }
}
