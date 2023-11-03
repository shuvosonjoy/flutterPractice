import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Weather {
  final String city;
  final int temperature;
  final String condition;
  final int humidity;
  final double windSpeed;

  Weather({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.windSpeed,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json['city'],
      temperature: json['temperature'],
      condition: json['condition'],
      humidity: json['humidity'],
      windSpeed: json['windSpeed'].toDouble(),
    );
  }
}

class MyApp extends StatelessWidget {
  final List<Weather> weatherData = [
    Weather(
      city: "New York",
      temperature: 20,
      condition: "Clear",
      humidity: 60,
      windSpeed: 5.5,
    ),
    Weather(
      city: "Los Angeles",
      temperature: 25,
      condition: "Sunny",
      humidity: 50,
      windSpeed: 6.8,
    ),
    Weather(
      city: "London",
      temperature: 15,
      condition: "Partly Cloudy",
      humidity: 70,
      windSpeed: 4.2,
    ),
    Weather(
      city: "Tokyo",
      temperature: 28,
      condition: "Rainy",
      humidity: 75,
      windSpeed: 8.0,
    ),
    Weather(
      city: "Sydney",
      temperature: 22,
      condition: "Cloudy",
      humidity: 55,
      windSpeed: 7.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Information'),
        ),
        body: ListView.builder(
          itemCount: weatherData.length,
          itemBuilder: (context, index) {
            Weather weather = weatherData[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('City: ${weather.city}'),
                    Text('Temperature: ${weather.temperature}°C'),
                    Text('Condition: ${weather.condition}'),
                    Text('Humidity: ${weather.humidity}%'),
                    Text('Wind Speed: ${weather.windSpeed} m/s'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}