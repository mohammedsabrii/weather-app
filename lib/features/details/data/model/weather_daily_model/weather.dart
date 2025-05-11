class Weather {
	int? code;
	String? icon;
	String? description;

	Weather({this.code, this.icon, this.description});

	factory Weather.fromJson(Map<String, dynamic> json) => Weather(
				code: json['code'] as int?,
				icon: json['icon'] as String?,
				description: json['description'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'code': code,
				'icon': icon,
				'description': description,
			};
}
