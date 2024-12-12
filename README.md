# ✨ DOA Exchange ✨

DOA Exchange is a Flutter-based mobile application that allows users to view exchange rates between selected currencies and update this data instantly. The app also provides graphical representation of the last 7 days' exchange rate movements. 🌍

## 🖼 Screenshots
![Simulator Screenshot - iPhone 15 Pro - 2024-12-12 at 15 03 27](https://github.com/user-attachments/assets/7b112098-a02e-48be-8e43-c1127e6f09f6)

![Simulator Screenshot - iPhone 15 Pro - 2024-12-12 at 15 03 29](https://github.com/user-attachments/assets/2482dccc-6865-44d3-8864-92ef6b7bb4e0)

![Simulator Screenshot - iPhone 15 Pro - 2024-12-12 at 15 03 37](https://github.com/user-attachments/assets/17b87605-1123-495d-80ab-8de6997ca6e2)

## 🌐 Features

- Instantly view exchange rates between USD, EUR, GBP, and TRY. 📈
- Update exchange rate data instantly with a button. 🔄
- Analyze the last 7 days' movements of a selected currency pair through a graphical interface. 🔼
- Modern and user-friendly Flutter application design. ✨

---

## ⚡ Technologies and Packages Used

This project is developed using the Flutter framework and includes the following Dart packages:

### State Management

- **GetX** (\`get: ^4.6.5\`) 🔨

### Dependency Injection

- **injectable** (\`injectable: ^1.5.4\`)
- **get_it** (\`get_it: ^7.2.0\`)

### Filesystem

- **path** (\`path: ^1.8.2\`)
- **path_provider** (\`path_provider: ^2.0.14\`)

### Networking

- **retrofit** (\`retrofit: ^3.3.1\`)
- **dio** (\`dio: ^4.0.6\`)
- **dio_cookie_manager** (\`dio_cookie_manager: any\`)

### JSON Serialization

- **json_annotation** (\`json_annotation: ^4.8.0\`)
- **freezed_annotation** (\`freezed_annotation: ^2.2.0\`)
- **json_serializable** (\`json_serializable: ^6.6.1\`)
- **freezed** (\`freezed: ^2.3.2\`)

---

## 📝 Data Provider

This project uses [FreeCurrencyAPI](https://api.freecurrencyapi.com) to fetch exchange rate data.

- **Monthly Limit:** 5000 requests
- **Rate Limit:** 10 requests per minute
