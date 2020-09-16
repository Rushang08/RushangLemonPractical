# RUSHANG PRACTICAL


## Getting Started
Write an iOS app in Swift that lists Star Wars characters using the open API and targeted at iOS 13.0+
SWAPIApp lists the names of all Star Wars characters in alphabetical order (using the /api/people endpoint). Selecting a name on the list opens a detail view that displays their name, birth year, and physical attributes (height, mass, hair color, skin color, eye color and gender). The detail view also includes the name of all the films the character appears in and also the word count of the opening_crawl attribute for each film.

### Minimum Requirement

Swift - Version 5.0



### Environment

* There is one build environment available.

1) ZollEnproAedlink

### Software architectural pattern

MVVM : [Model–View–ViewModel]

### Features
- 

## List of  Third parties 
* for mapbox navigation: https://github.com/mapbox/mapbox-navigation-ios
* for mapbox geocoding: https://github.com/mapbox/MapboxGeocoder.swift
* for phone number kit: https://github.com/marmelroy/PhoneNumberKit
* for custom alerts: https://github.com/vikmeup/SCLAlertView-Swift


## Basic Information

Basic information module used for gathering user basic details.


- All type of users can enter their basic information namely, First name, Last name, email, organization, and phone number.

## Create Password
  
  - Users can set a password using this module.
  
## Address

The address module mainly used by volunteers.

- The volunteer can set up his/her location from the location picker.
- Volunteers can set up radius in meters or feet.

## Certificate

Certificate module used for collecting user's certification details.

- A volunteer can enter certificate Provider, certificate type and certificate issue date.
- Volunteers can also able to upload his/her certification image.

## AED Details

AED-Details module used for collecting information regarding AEDs

- Users can select the type of AED that, they possess.
- Users can Select AED location through the map.
- User can fill all basic details in this module.
- Users can select the type of AED, whether they have public or private AED.

## My Address

This module is used for updating the user location.

- Users can update existed location and radius values.

## Manage Certification

This module is used for Updating and adding new certificates.

- Users can alter existed certificate details.
- Users can add more than one certificate.
- Users can delete particular certificate details.

## Managed AEDs

This module is used for Management of AEDs

- Users can add More than one AED.
- Users can Change existed AED's data.
- Users can delete AED's Data

## Dashboard
- User can able to check the Near by AED and Volunteer.
- Show the Multiple SCA Alerts.

## Route
- User can able to check the multiple AED routes and also go with only SCA Alerts.
- User can able to go via AED and also, Select Direct Go To SCA.
- User is not able to accept SCA Alert if distance is greater then 10 minutes.

## SCA Alerts

Display the alerts on dashboard if any dispatcher generate the event for the Alerts then its should be display on the dashboard and Also user can able to swipe between multiple Alerts and Choose the alert which is feasible for user.

- User can able to swipe the Multiple Alerts.
- User can able to accept and decline the Alerts.
- User can received the Push notification in Background and kill mode.
- User can notify if other user is select the Alert and Arrived and SCA.

## Customise Navigation

- Display the Route of SCA Alerts via AED if user selected the AED.
- User can able to chek the nearby AED of SCA Alerts.
- And User can able to check the nearby AED Details and check the distance and ETA.
- User can able to check the multiple AED Details with swipe.

# List of  APIs
 * /signin (POST) - This api is used for Sign in particular user in the application.
 * /configurations (GET) - This api is used for getting available certification, radius values and AEDs .
 * /deleteImage (POST) - This api is used for deleting the certificate and AED images 
 * /uploadcertificate(POST) - This api is used for uploading the certificate images 
 * /users(POST) - This api is used for registering the users.
 * /uploadProfile(PUT) - This api is used for updating user profile picture.
 * /users(GET) - This api is used for retriving all users.
 * /users/{{userId}}(PUT) - This API is used for modifying particular users data.
 * /logout(POST) - This api used for logout current user.
 * /sendOTP(POST) - This api is used for sending OTP.
 * /verifyOTP(POST) - This api is used for verifying OTP.
 * /emailexists(POST) - This api is used for checking if user already exist or not.
 * /forgotPassword(POST) - This api is used for chage the password during login time if user does not remeber correct password.
 * /changePassword(PUT) - This API is used for changing the user current password.

## Authors and acknowledgment
Quark Studios Pvt Ltd.

## License
2020 Copyright Quark Studios Pvt Ltd. All Rights Reserved.


