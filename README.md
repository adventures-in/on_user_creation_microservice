# on_user_creation_microservice

Receive CloudEvents on user creation and save data to Firestore.

The service relies on auth user data being published to PubSub - currently (May 2021) there is no support for Firebase auth triggers with Eventarc so we must use our the custom Firebase extension[publish_new_user_data](https://github.com/Adventures-In/publish_new_user_data_firebase_extension).

See [How to connect a Cloud Function to a Dart microservice with Pub/Sub](https://docs.google.com/document/d/1my_JXczhuYlWiKRE59nc0XFHYudEFpymPeGNSJFIIsM)

## Using the microservice 

- in `lib/functions.dart` update PROJECT_ID and COLLECTION

## docs 

[generated_readme](docs/generated_readme.md)
