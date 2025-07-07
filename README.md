# LaravelAdmin

A Laravel 12 administration panel scaffolded with MySQL and the AdminLTE Bootstrap dashboard.

---

## 🚀 Requirements

-   **PHP** 8.2+
-   **Laravel** 12x
-   **Composer**
-   **MySQL**

---

## ⚡️ Quick Start

### 1. Clone the Repository

Choose your preferred method:

-   **HTTPS**
    ```bash
    git clone https://github.com/vanneth-dev/laraveladmin.git
    ```

Change into the project directory:

```bash
cd laraveladmin
```

### 2. Create Storage Folder

```bash
mkdir storage\framework\cache
mkdir storage\framework\sessions
mkdir storage\framework\views
mkdir storage\logs
```

### 3. Install Dependencies

```bash
composer install
```

### 4. Configure Environment & Database

-   Copy the example environment file and generate an application key:
    ```bash
    cp .env.example .env
    php artisan key:generate
    ```
-   Edit `.env` and update your database credentials:
    ```env
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=laraveladmin
    DB_USERNAME=your_mysql_user
    DB_PASSWORD=your_mysql_password
    ```
-   Create the database:
    ```sql
    CREATE DATABASE laraveladmin CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
    ```

### 5. Run Migrations

```bash
php artisan migrate
```

---

## 📝 Default Admin Credentials

You can use the following credentials to log in:

-   **Email:** `vanneth.dev@gmail.com`
-   **Password:** `123456`

---

## 🌐 Serve the Application

Start the development server:

```bash
php artisan serve
```

Visit [http://localhost:8000](http://localhost:8000) to access your admin panel.

---

## Contribution Policy

**Notice:** This project does **not accept pull requests**. Please do not submit PRs; they will be closed without review. You are welcome to fork and modify the code for your own use under the MIT License.

## 📝 Required Credit

Any public, private, or derivative use of this project **must retain the following credit** in the footer of the app, as per the license:

```html
<div>
    developer's <i class="fab fa-linkedin"></i>
    <a href="https://kh.linkedin.com/in/vanneth-tak-bb8179225" target="_blank"
        >linkedin</a
    >
</div>
```

## 📄 License

This project is open-source under the [MIT License](https://opensource.org/licenses/MIT).
