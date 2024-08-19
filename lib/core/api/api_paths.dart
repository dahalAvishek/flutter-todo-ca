class ApiPaths {
  ApiPaths._();

  static const String baseUrl = "https://api.todoist.com";
  static const String apiBaseUrl = "$baseUrl/rest/v2";
  static const String syncUrl = "$baseUrl/sync/v9/sync";
  static const String projectsUrl = "/projects";
  static const String sectionUrl = '/sections';
  static const String tasksUrl = '/tasks';
  static const String commentUrl = '/comments';
}
