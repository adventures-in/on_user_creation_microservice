# on_user_creation_microservice

[Project Notes](https://enspyrco.notion.site/On-User-Creation-bff3b3391fb8405d921ce73b1d3647b8)

Receive CloudEvents on user creation and save data to Firestore.

The service relies on auth user data being published to PubSub - currently (May 2021) there is no support for Firebase auth triggers with Eventarc so we must use our the custom Firebase extension[publish_new_user_data](https://github.com/Adventures-In/publish_new_user_data_firebase_extension).

See [Connect a Cloud Function & Dart server with Pub/Sub](https://enspyr-resources.notion.site/Connect-a-Cloud-Function-Dart-server-with-Pub-Sub-e3ef54cbdd324d1f83c3673ddd157c26)

## Using the microservice 

- in `lib/functions.dart` update PROJECT_ID and COLLECTION

## docs 

[generated_readme](docs/generated_readme.md)
