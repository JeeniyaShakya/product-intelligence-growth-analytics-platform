# Event Taxonomy

This document defines the events tracked in the **LearnLoop Product Intelligence & Growth Analytics Platform**.

These events are used for:

* Funnel Analysis
* User Activation Analysis
* Retention Analysis
* Revenue Analytics
* A/B Testing
* Product Dashboarding

## Event Definitions

| Event Name             | Category    | Description                |
| ---------------------- | ----------- | -------------------------- |
| landing_page_view      | Acquisition | User visits website        |
| signup_started         | Acquisition | User starts signup         |
| signup_completed       | Acquisition | User completes signup      |
| login                  | Engagement  | User logs in               |
| course_viewed          | Engagement  | User views course page     |
| course_enrolled        | Engagement  | User enrolls in course     |
| lesson_started         | Engagement  | User starts lesson         |
| lesson_completed       | Engagement  | User completes lesson      |
| quiz_attempted         | Engagement  | User attempts quiz         |
| quiz_completed         | Engagement  | User completes quiz        |
| subscription_started   | Revenue     | User begins checkout       |
| subscription_completed | Revenue     | User completes payment     |
| cancellation_requested | Revenue     | User requests cancellation |
| subscription_cancelled | Revenue     | Subscription cancelled     |
| churned                | Retention   | User inactive for 30+ days |
| certificate_earned     | Engagement  | User earns certificate     |
| profile_completed      | Activation  | User completes profile     |
| search_performed       | Engagement  | User uses search           |
| session_started        | Retention   | Session begins             |
| session_ended          | Retention   | Session ends               |
| app_reopened           | Retention   | User returns to platform   |

---

## Funnel Events

```text
landing_page_view
↓
signup_started
↓
signup_completed
↓
profile_completed
↓
course_enrolled
↓
lesson_completed
↓
subscription_completed
```

---

## Revenue Events

* subscription_started
* subscription_completed
* cancellation_requested
* subscription_cancelled

---

## Retention Events

* login
* session_started
* session_ended
* app_reopened
* lesson_completed
* certificate_earned

---

## Churn Definition

A user is considered churned when they remain inactive for more than 30 days.
