# 🚀 Flutter Project

A modern Flutter application with clean architecture for Movie DB.

---

## 📦 Flutter Version

This project was built and tested with:

```bash
Flutter 3.35.1 • Dart 3.9.0
```

Make sure you are using the correct Flutter version to avoid compatibility issues.
You can manage versions with [fvm](https://fvm.app/).

---

## 📚 Packages Used

Some of the main dependencies:

* **State Management**: flutter\_bloc
* **Networking**: dio / retrofit
* **Local Storage**: drift
* **Others**: dotenv

See the complete list in [`pubspec.yaml`](./pubspec.yaml).

---


## 🔑 Environment Variables

This project uses a `.env` file for API keys and configuration.
Create a `.env` file in the root directory:

```env
# API Keys
BASE_URL=https://api.example.com
API_KEY=your_api_key_here

```

👉 Never commit your `.env` file to Git.
Instead, add `.env.example` with dummy values for contributors.

---

## ⚙️ Setup & Installation

1. **Clone the repo**

   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Create `.env` file**

   * Copy `.env.example` to `.env`
   * Fill in the required keys

4. **Run the app**

   ```bash
   flutter run
   ```

---

