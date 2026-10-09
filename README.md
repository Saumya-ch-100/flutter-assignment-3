# Assignment 3: Personal Identity Card using Flutter

**Course / Instructor:** Sneha Gaurav Gawas (Assistant Professor - Computer Science, Kharghar)  
**Total Points:** 10 points  

---

## 📌 Project Overview
This Flutter application creates a clean, modern **Personal Identity Card** adhering strictly to all mandatory widgets and the expected widget tree structure outlined in the assignment specification.

---

## 🧩 Mandatory Widgets Used
- ✅ `Scaffold`: Root screen container and layout structure.
- ✅ `AppBar`: Top application bar with title `"Personal Identity Card"`.
- ✅ `Container`: Used for the elevated identity card and bottom email badge.
- ✅ `Column`: Used for vertical layout within the ID card and for each statistic.
- ✅ `Row`: Used for the statistics row (Age, ID No., Blood Group) and the email row.
- ✅ `CircleAvatar`: Displays the profile avatar.
- ✅ `Text`: Renders the title, name, profession, location, statistics, and email.
- ✅ `Icon`: Material icons for age (cake), ID badge, blood group, and email.
- ✅ `SizedBox`: Provides appropriate vertical and horizontal spacing.

---

## 📋 Personal Information Configured

| Field | Value |
|---|---|
| **Name** | `Saumya C` *(Customizable in `IdCardScreen.name`)* |
| **Profession** | `Software Developer` |
| **Location** | `Mumbai, India` |
| **Age** | `21 Years` |
| **ID No.** | `ID2026001` |
| **Blood Group** | `O+` |
| **Email** | `saumyach100@gmail.com` *(or customizable in `IdCardScreen.email`)* |

---

## 🌳 Widget Structure

```text
Scaffold
│
├── AppBar
│
└── Center
    └── Container (Identity Card)
        └── Column
            ├── CircleAvatar (Profile picture)
            ├── Text → Name
            ├── Text → Profession
            ├── Text → Location
            ├── SizedBox (Spacing)
            ├── Row (Personal Statistics)
            │   ├── Column
            │   │   ├── Icon (Cake / Age)
            │   │   └── Text → Age
            │   ├── Column
            │   │   ├── Icon (Badge / ID No.)
            │   │   └── Text → ID No.
            │   └── Column
            │       ├── Icon (Bloodtype / Blood Group)
            │       └── Text → Blood Group
            ├── SizedBox (Spacing)
            └── Container (Email Badge)
                └── Row
                    ├── Icon → Email
                    └── Text → Email Address
```

---

## 🚀 How to Run

### Run Locally (Chrome Web or Desktop):
```bash
# Run on Chrome
flutter run -d chrome

# Run on macOS desktop
flutter run -d macos
```

### Run Tests:
```bash
flutter test
```
All widget tests verify 100% compliance with the mandatory widgets and required fields.
