import 'dart:io';

import 'package:BeeCreative/src/data/exceptions/notification_exception.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:BeeCreative/src/data/network/notification_data_source.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  String fixture(String name) => File(
          '/home/bugthedebugger/Documents/Flutter Projects/BeeCreative Mobile/beecreative_mobile/test/data/fixtures/$name.json')
      .readAsStringSync();

  MockClient mockClient;
  NotificationDataSource dataSource;

  setUp(() {
    mockClient = MockClient();
    dataSource = NotificationDataSource(mockClient);
  });

  group('enableNotification', () {
    test(
      'returns Sucess and code:200 json when the call completes successfully',
      () async {
        when(
          mockClient.post(
            argThat(
              startsWith(ApiURL.notification),
            ),
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
              'Authorization': 'Bearer 123456',
            },
            body: {
              'time': '00:01:00',
            },
          ),
        ).thenAnswer((_) async {
          return http.Response(
            fixture('notification_enable_success'),
            200,
            headers: {'content-type': 'application/json; charset=utf-8'},
          );
        });

        bool result = await dataSource.enableNotification(
          token: '123456',
          time: '00:01:00',
        );

        expect(result, true);
      },
    );

    test(
      'throws NotificationException for invalid access token',
      () async {
        when(
          mockClient.post(
            argThat(
              startsWith(ApiURL.notification),
            ),
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
              'Authorization': 'Bearer 12345678',
            },
            body: {
              'time': '00:01:00',
            },
          ),
        ).thenAnswer((_) async {
          return http.Response(
            fixture('unauthenticated'),
            401,
            headers: {'content-type': 'application/json; charset=utf-8'},
          );
        });

        expect(
          dataSource.enableNotification(
            token: '12345678', //invalid token
            time: '00:01:00',
          ),
          throwsException,
        );
      },
    );

    test(
      'throws NotificationException when body parameter is invalid',
      () async {
        when(
          mockClient.post(
            argThat(
              startsWith(ApiURL.notification),
            ),
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
              'Authorization': 'Bearer 123456',
            },
            body: {
              'time': 'asdf',
            },
          ),
        ).thenAnswer((_) async {
          return http.Response(
            fixture('something-went-wrong'),
            400,
          );
        });

        expect(
          dataSource.enableNotification(
            token: '123456',
            time: 'asdf',
          ),
          throwsException,
        );
      },
    );
  });
}
