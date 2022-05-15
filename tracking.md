## Work
Sheet 32 - 43
ShowBottomSheet
bottomNavigationbAse
JobPreferenceProvider
JobPreferenceCard
GridView

## Logic
1. If both Upcoming and Jobs offer has data then show buttons only, use diff colors for showing disablement
2. If only one then don't show buttons.
3. Profile if completed > 95% then show button, otherwise show banner

## Widgets used:
LayoutBuilder, SizedBox, FutureBuilder, CustomFutureBuilder, SafeArea, Padding, CircularPercentIndicator, CircleAvatar, SingleChildScrolledView, InkWell, IconButton, AlertDialog, TextButton, CustomAppBar,  GlobalKey, Icon, PrimaryButton, MediaQuery

MaterialApp, Provider, Expanded, Container, Row, Column, 

Align

## Known issues
1. RenderFlow error in 320 pixels width


## Urls
Scrum meeting: https://meet.google.com/fho-nwmo-hhk
Figma: https://www.figma.com/file/wg9zT6cRz8JmthaCillDZn/Jobs-In-Education---Developers?node-id=0%3A1
Time sheet: https://mail.google.com/mail/u/0/#label/ATPL+New+town+School/FMfcgzGljvKspkJkHTlbrzRjNjQrCKDx

## People
1. Prabhat Paul: Back end
2. Soumak: Product manager: In house: 9755942992
4. Jit Kumar: PHP:
5. Manas Maji: Flutter: contractor: 7003774191
6. Anshu: Owner of Vogerman company
7. Soumya Roy: Database: In House: 9038670047
8. Vivek: Front end web
9. Soumali: QA
## API
A2, me
D17: Summary, D series: Latest jobs, suggested jobs, 181: notifications

## 06-09-2021
1. Started flutter

## Learning hours
06-09-2021: 2
13-09-2021: 8
14-09-2021: 8
15-09-2021: 8

## Concept for Latest jobs (Same for Suggested jobs)
1. StateFul widget as "LatestJobs"
2. "JobsHeader": StateLess to show title and see all: Generic shared
3. "SelectButton": Stateless: Generic: Input-> isSelected, keyPrefix, label Design: Clickable by using InkWell, on theme of FilterButton with Ibuki emit of index
4. "SelectButtonBar": Creates a bar of select buttons based on post title, inside a Container -> ListView
5. "JobCard": Shows all ingredients of a role in a "Card".
6. "JobCardsView": A Container -> ListView, data from helper, uses "JobCard", Data is shown based on index, Input-> index
7.  The "SelectButton" emits index, caught by "LatestJobs"-> sets currentIndex and refreshes the widget

## Concept for Job preference selection
1. "JobPreferenceWidget": inputs jobPreferenceSelection object: outputs single card of post, locations, period, timing, offer
2. "JobPreferenceSelectionWidget": inputs jobPreferenceSelection object: composes isSelected and "JobPreferenceWidget" in a row and returns the row.
3. "JobPreferenceSelectionsWidget": inputs jobPreferenceSelections array: outputs a list of widgets by composing multiple "JobPreferenceSelectionWidget" in a map.

## Job preference bottom sheet

1. Create a JSON array of selectedJobPreferences: {
  post: '',
  locations: '',
  period: '',
  timing:'',
  offer:'',
  isSelected: true / false
}
2. Populate column dynamically from this JSON using builder

## Works
1. convert Chip to container. Like JobStatus

# Hours spent: Started work on 17-09-2021

## 01-10-2021: 2 hrs
## 30-09-2021: 9 hrs
## 29-09-2021: 10 hrs
## 28-09-2021: 5 hrs
## 27-09-2021: 10 hrs

## 25-09-2021: 3 hrs

## 24-09-2021: 9 Hrs

## 23-09-2021: 4 Hrs

## 22-09-2021: 7 Hrs

## 21-09-2021: 7 hrs
1. Planning and framework for Dashboard
2. Creation of AppBar

## 20-09-2021: 8 hrs
1. Project understanding
2. Mock data setup
3. Consuming mock data
## 20-09-2021
1. Two meetings: 3 hrs
2. Planning: 2 hrs

## 19-09-2021: 9 hrs
1. Project walk through and further understanding: 4 hrs
2. Created GitHub and project environments: 1 hrs
3. Created app_settings, messages and common utils: 3 hrs
4. started with messaging framework: 1 hr

## 18-09-2021: 10 hrs
1. Project walkthrough: 10 hrs

## 17-09-2021: 11 hrs
1. Earlier startup meeting before project start: 2.0 hours
2. Project startup meeting: 2 hrs
3. Platform and tools setup: 3 hrs
4. Project understanding: 4 hrs

# To Do:
1. Create a widget which downloads from an api and show it
2. Read static data from config.json in asset
3. Understanding Stateless widget
4. Layouts
5. Understand providers
6. Understand localStorage, Token storage
7. Routes
8. Dialogs
9. Practise with different widgets
10. Drawer
11. factory usage
12. Json handling
13. Stateless widget calling stateful widget
14. dio lib
15. provider
16. intl
17. using themedata

## To Do 1
1. 																Study Constraints etc. and tutorials from FLUtter site
2. See libraries from pubspec
3. 																Factory
4. Mixin
5. Provider
6. 																Routes navigation
7. 																Dio
8. 																Class superClass initialization with :
9. JSON handling
10. Local storage, token storage
11. intl lib

# git
## to add all files
	git add .
## to commit to server
	git commit -m "comments"
## list all branches
	git branch -a
## create new branch
	git branch sushant
## delete a branch
	git branch -d sushant
## to start working in new branch or switch branches
	git checkout personal-details
## merging: merges current branch with master
	git merge master



# tools
## keytool generate key
"C:\Program Files\Android\Android Studio\jre\bin\keytool" -genkey -v -keystore c:\Users\capit\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload

# KT
1. An introduction with flutter developer
3. Demo of working Web version of software so far
4. Demo / walkthrough of flutter version of software
5. Discuss API endpoints for Flutter application
5.5 Walkthrough the API's with postman
6. Flutter IOS?
9. Are you using custom fonts in Flutter app? I saw some fonts in pubspec.yaml file

## Setup procedures
1. Do not Download flutter SDK. use git clone https://github.com/flutter/flutter. This way you can avoid fatal error not a git repository
2. Android Studio setup
3. In android studio upgrade the SDK manager from tools menu
4. In command prompt execute flutter doctor --android-licenses
5. Finally run flutter doctor in command prompt. It should report no errors.
6. At upgrade change dir (cd c:\flutter; git pull)
7. Run 'flutter doctor' quite often

{
  "name": "Jason",
  "notificationCount": "2",
  "summary": {
    "saved": "10",
    "invited": "12",
    "applied": "14",
    "underProcess": "16"
  },
  "latestJobs": [
    {
      "post": "Chemistry Teacher",
      "details": [
        {
          "school": "DPS School",
          "fullPost": "Primary Chemistry Teacher",
          "location": "Kolkata",
          "minExperience": "3 Years Min.",
          "timing": "Full Time",
          "offer": "3.5 LPA Max."
        },
        {
          "school": "MGB School",
          "fullPost": "Intermediate Chemistry Teacher",
          "location": "Patna",
          "minExperience": "2 Years Min.",
          "timing": "Part Time",
          "offer": "1.5 LPA Max."
        },
        {
          "school": "Dehradoon School",
          "fullPost": "Senior Chemistry Teacher",
          "location": "Ranchi",
          "minExperience": "6 Years Min.",
          "timing": "Full Time",
          "offer": "7.5 LPA Max."
        }
      ]
    },
    {
      "post": "Maths teacher",
      "details": [
        {
          "school": "ADB School",
          "fullPost": "Primary Maths Teacher",
          "location": "Kolkata",
          "minExperience": "4 Years Min.",
          "timing": "Full Time",
          "offer": "3.5 LPA Max."
        },
        {
          "school": "Akash School",
          "fullPost": "Intermediate Maths Teacher",
          "location": "Dehradoon",
          "minExperience": "2 Years Min.",
          "timing": "Full Time",
          "offer": "4.5 LPA Max."
        },
        {
          "school": "MPS School",
          "fullPost": "Senior Maths Teacher",
          "location": "Delhi",
          "minExperience": "8 Years Min.",
          "timing": "Full Time",
          "offer": "9.5 LPA Max."
        }
      ]
    }
  ],
  "suggestedJobs": [
    {
      "post": "Chemistry Teacher",
      "details": [
        {
          "school": "DPS School",
          "fullPost": "Primary Chemistry Teacher",
          "location": "Kolkata",
          "minExperience": "3 Years Min.",
          "timing": "Full Time",
          "offer": "4.5 LPA Max."
        },
        {
          "school": "MGB School",
          "fullPost": "Intermediate Chemistry Teacher",
          "location": "Patna",
          "minExperience": "2 Years Min.",
          "timing": "Part Time",
          "offer": "4.5 LPA Max."
        },
        {
          "school": "Dehradoon School",
          "fullPost": "Senior Chemistry Teacher",
          "location": "Ranchi",
          "minExperience": "6 Years Min.",
          "timing": "Full Time",
          "offer": "7.5 LPA Max."
        }
      ]
    },
    {
      "post": "Maths teacher",
      "details": [
        {
          "school": "ADB School",
          "fullPost": "Primary Maths Teacher",
          "location": "Kolkata",
          "minExperience": "4 Years Min.",
          "timing": "Full Time",
          "offer": "3.5 LPA Max."
        },
        {
          "school": "Akash School",
          "fullPost": "Intermediate Maths Teacher",
          "location": "Dehradoon",
          "minExperience": "2 Years Min.",
          "timing": "Full Time",
          "offer": "4.5 LPA Max."
        },
        {
          "school": "MPS School",
          "fullPost": "Senior Maths Teacher",
          "location": "Delhi",
          "minExperience": "8 Years Min.",
          "timing": "Full Time",
          "offer": "9.5 LPA Max."
        }
      ]
    }
  ],
  "recentSearches": [
    "Chemistry Teacher",
    "TGT Chemistry",
    "PGT Maths",
    "GRAD Physics"
  ],
  "isProfile95PerComplete": true,
  "profileCompletionStatus": 96,
  "upcomingEvents": [
    {
      "type": "Interview Alert",
      "time": "Today 2 Pm",
      "roleFor": "Chemistry Teacher",
      "school": "DPS School",
      "address": "New Town Kolkata",
      "rounds": [
        "1st round - MCQ",
        "2ndround - Face to face"
      ]
    },
    {
      "type": "Interview Alert1",
      "time": "Today 4 Pm",
      "roleFor": "Physics Teacher",
      "school": "DPS School",
      "address": "New Town Kolkata",
      "rounds": [
        "1st round - MCQ",
        "2ndround - Face to face"
      ]
    },
    {
      "type": "Interview Alert2",
      "time": "Today 3 Pm",
      "roleFor": "Maths Teacher",
      "school": "DPS School",
      "address": "New Town Kolkata",
      "rounds": [
        "1st round - MCQ",
        "2ndround - Face to face"
      ]
    }
  ],
  "jobOffers": [
    {
      "school": "DPS School",
      "address": "New Town Kolkata",
      "roleFor": "Primary Chemistry Teacher",
      "classes": "VII-X Classes",
      "dateOfJoining": "30 June,2021",
      "offer": "6.5 LPA"
    },
    {
      "school": "Indira Gandhi School",
      "address": "Salt Lake Kolkata",
      "roleFor": "Primary Maths Teacher",
      "classes": "VIII-X Classes",
      "dateOfJoining": "01 April,2021",
      "offer": "8.5 LPA"
    }
  ]
}

## JSON output from ATPL
{
    "success": true,
    "error": null,
    "data": {
        "summary": {
            "saved": "04",
            "invitations": "13",
            "applied": "04",
            "underprocess": "01",
            "offered": "00"
        },
        "recentSearches": [
            {
                "keyword": "aca",
                "type": "title"
            },
            {
                "keyword": "academic",
                "type": "title"
            },
            {
                "keyword": "academic",
                "type": "global"
            },
            {
                "keyword": "computer science",
                "type": "global"
            },
            {
                "keyword": "CBSE School",
                "type": "global"
            },
            {
                "keyword": "tgt",
                "type": "global"
            },
            {
                "keyword": "pgt",
                "type": "global"
            },
            {
                "keyword": "physics",
                "type": "global"
            },
            {
                "keyword": "chemistry",
                "type": "global"
            },
            {
                "keyword": "education",
                "type": "global"
            },
            {
                "keyword": "Coordinator",
                "type": "GLOBAL"
            },
            {
                "keyword": "Academic Coordinator (Pre-School) for Pre-School",
                "type": "GLOBAL"
            }
        ],
        "upcomingEvents": [],
        "jobOffers": [],
        "latestJobs": [],
        "suggestedJobs": {
            "details": [
                {
                    "jobId": "yvywkbis",
                    "id": "103",
                    "forEntireGroup": "0",
                    "title": "test new job",
                    "description": "test",
                    "jobCategory": "35",
                    "institutionCat": "1",
                    "institutionCatAny": "0",
                    "institutionSubCat": "1",
                    "institutionSubCatOther": "",
                    "institutionSubCat2": "10",
                    "slug": "",
                    "metaTitle": "",
                    "subject": "45",
                    "subjectOther": "",
                    "minExperience": "3",
                    "maxSalary": "500000",
                    "noticePeriod": "15",
                    "employmentType": "4",
                    "expiryDate": "2022-12-31",
                    "createdDate": "2021-05-20 13:27:58",
                    "updatedDate": "2021-05-20 13:27:58",
                    "status": "1",
                    "cityName": "Chandigarh",
                    "companyName": null,
                    "institutionName": null,
                    "preferenceTitle": "TGT Bengali  Teacher for CBSE School",
                    "matching": "566600",
                    "skills": [
                        {
                            "id": "2",
                            "name": "Forecasting"
                        },
                        {
                            "id": "4",
                            "name": "Data mining"
                        }
                    ],
                    "saved": false,
                    "applied": false,
                    "vacancies": [
                        {
                            "country": "101",
                            "state": "6",
                            "city": "594",
                            "total_positions": "5"
                        }
                    ],
                    "countryObj": [
                        {
                            "id": "101",
                            "name": "India"
                        }
                    ],
                    "stateObj": [
                        {
                            "id": "6",
                            "name": "Chandigarh"
                        }
                    ],
                    "citiesObj": [
                        {
                            "id": "594",
                            "name": "Chandigarh"
                        }
                    ],
                    "employmentTypeObj": [
                        {
                            "id": "4",
                            "employment_type_name": "Full Time/Permanent",
                            "employment_type_slug": ""
                        }
                    ],
                    "applicants": 2,
                    "jobCategoryObj": {
                        "id": "35",
                        "name": "Academic"
                    },
                    "institutionCatObj": {
                        "id": "1",
                        "name": "School",
                        "label": "Board",
                        "slug": "school"
                    },
                    "institutionSubCatObj": {
                        "id": "1",
                        "name": "CBSE",
                        "label": "Board"
                    },
                    "institutionSubCat2Obj": {
                        "id": "10",
                        "institution_catid": "1",
                        "institution_subcatid": "1",
                        "name": "TGT",
                        "label": "Highest / Applicable Level"
                    },
                    "subjectObj": {
                        "id": "45",
                        "name": "Art and Design "
                    }
                },
                {
                    "jobId": "tp0qz15r",
                    "id": "61",
                    "forEntireGroup": "0",
                    "title": "TGT Accountancy Teacher for CBSE School",
                    "description": "desc",
                    "jobCategory": "35",
                    "institutionCat": "1",
                    "institutionCatAny": "0",
                    "institutionSubCat": "1",
                    "institutionSubCatOther": "",
                    "institutionSubCat2": "10",
                    "slug": "",
                    "metaTitle": "",
                    "subject": "10",
                    "subjectOther": "",
                    "minExperience": "1",
                    "maxSalary": "65555",
                    "noticePeriod": "45",
                    "employmentType": "4",
                    "expiryDate": "2022-12-31",
                    "createdDate": "2021-04-29 11:01:29",
                    "updatedDate": "2021-04-29 11:01:29",
                    "status": "1",
                    "cityName": "Kolkata",
                    "companyName": "My Group",
                    "institutionName": "Institution School",
                    "preferenceTitle": "TGT Bengali  Teacher for CBSE School",
                    "matching": "551600",
                    "skills": [
                        {
                            "id": "4",
                            "name": "Data mining"
                        }
                    ],
                    "saved": false,
                    "applied": false,
                    "vacancies": [
                        {
                            "country": "101",
                            "state": "41",
                            "city": "5583",
                            "total_positions": "2"
                        }
                    ],
                    "countryObj": [
                        {
                            "id": "101",
                            "name": "India"
                        }
                    ],
                    "stateObj": [
                        {
                            "id": "41",
                            "name": "West Bengal"
                        }
                    ],
                    "citiesObj": [
                        {
                            "id": "5583",
                            "name": "Kolkata"
                        }
                    ],
                    "employmentTypeObj": [
                        {
                            "id": "4",
                            "employment_type_name": "Full Time/Permanent",
                            "employment_type_slug": ""
                        }
                    ],
                    "applicants": 0,
                    "jobCategoryObj": {
                        "id": "35",
                        "name": "Academic"
                    },
                    "institutionCatObj": {
                        "id": "1",
                        "name": "School",
                        "label": "Board",
                        "slug": "school"
                    },
                    "institutionSubCatObj": {
                        "id": "1",
                        "name": "CBSE",
                        "label": "Board"
                    },
                    "institutionSubCat2Obj": {
                        "id": "10",
                        "institution_catid": "1",
                        "institution_subcatid": "1",
                        "name": "TGT",
                        "label": "Highest / Applicable Level"
                    },
                    "subjectObj": {
                        "id": "10",
                        "name": "Accountancy"
                    }
                }
            ],
            "summary": [
                {
                    "key": "title",
                    "keyValue": "test new job",
                    "counter": 1
                },
                {
                    "key": "title",
                    "keyValue": "TGT Accountancy Teacher for CBSE School",
                    "counter": 1
                },
                {
                    "key": "title",
                    "keyValue": "TGT Art and Design  Teacher for CBSE1",
                    "counter": 1
                }
            ]
        },
        "notificationCount": 2,
        "name": "pravat paul",
        "profileCompletionStatus": false,
        "isProfile95PerComplete": 55
    }
}