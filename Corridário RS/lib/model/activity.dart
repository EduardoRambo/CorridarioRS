class Activity {
  int id;
  String name;
  String email;
  String day;
  String month;
  String hour;
  String city;
  String description;

  Activity(this.name, this.email, this.day, this.month, this.hour, this.city,
      this.description);

  Activity.fromMap(Map map) {
    id = map['id_column'];
    name = map['name_column'];
    email = map['email_column'];
    month = map['month_column'];
    day = map['day_column'];
    hour = map['hour_column'];
    city = map['city_column'];
    description = map['description_column'];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      "name_column": name,
      "email_column": email,
      "day_column": day,
      "month_column": month,
      "hour_column": hour,
      "city_column": city,
      "description_column": description,
    };
    if (id != null) map['id_column'] = id;
    return map;
  }

  @override
  String toString() {
    return 'Activity{id: $id, name: $name, email: $email, day: $day, month: $month, hour: $hour, city: $city, description: $description}';
  }
}
