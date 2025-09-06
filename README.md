# 🚀 FastAPI Project Structure — Best Practices

A modern, maintainable structure for FastAPI projects inspired by [Structuring a FastAPI Project: Best Practices](https://dev.to/mohammad222pr/structuring-a-fastapi-project-best-practices-53l6).

---

## 📂 Project Structure

```
fastapi_project/
│
├── app/                    # Main application package
│   ├── __init__.py
│   ├── main.py              # Application entry point
│   ├── config.py            # Settings & environment variables
│   │
│   ├── api/                 # API endpoints
│   │   ├── __init__.py
│   │   ├── v1/               # Versioned API
│   │   │   ├── __init__.py
│   │   │   ├── endpoints/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── users.py
│   │   │   │   ├── auth.py
│   │   │   │   └── items.py
│   │   │   └── routes.py
│   │   └── dependencies.py
│   │
│   ├── core/                # Core features & configs
│   │   ├── __init__.py
│   │   ├── security.py
│   │   ├── logging.py
│   │   └── events.py
│   │
│   ├── models/              # SQLAlchemy models
│   │   ├── __init__.py
│   │   ├── user.py
│   │   ├── item.py
│   │   └── ...
│   │
│   ├── schemas/             # Pydantic models
│   │   ├── __init__.py
│   │   ├── user.py
│   │   ├── item.py
│   │   └── ...
│   │
│   ├── db/                  # Database connection & utilities
│   │   ├── __init__.py
│   │   ├── base_class.py
│   │   └── session.py
│   │
│   ├── services/            # Business logic layer
│   │   ├── __init__.py
│   │   ├── user_service.py
│   │   └── ...
│   │
│   ├── tests/               # Test suite
│   │   ├── __init__.py
│   │   ├── test_users.py
│   │   └── test_items.py
│   │
│   └── utils/               # Helper functions
│       ├── __init__.py
│       ├── logger.py
│       └── email.py
│
├── .env                      # Environment variables
├── alembic/                  # Database migrations
├── requirements.txt
├── Dockerfile
└── README.md
```

---

## 🛠 Installation & Setup

### 1️⃣ Clone the repository

```bash
git clone https://github.com/shervinpouryazdanpanah/FastAPI-Project-Structure.git
cd fastapi-project
```

### 2️⃣ Create a virtual environment

```bash
python -m venv venv
source venv/bin/activate  # Linux & macOS
venv\Scripts\activate     # Windows
```

### 3️⃣ Install dependencies

```bash
pip install -r requirements.txt
```

### 4️⃣ Configure environment variables

Create a `.env` file in the project root:

```env
DATABASE_URL=postgresql://user:password@localhost:5432/dbname
SECRET_KEY=your_secret_key
ACCESS_TOKEN_EXPIRE_MINUTES=30
```

### 5️⃣ Run database migrations

```bash
alembic upgrade head
```

### 6️⃣ Run the application

```bash
uvicorn app.main:app --reload
```

---

## 🧩 Key Design Principles

- **Versioned API** — Keep different versions in separate folders (`api/v1`, `api/v2`) to support backward compatibility.
- **Separation of Concerns** — Split routes, services, models, and schemas into their own dedicated directories.
- **Dependency Injection** — Use `FastAPI Depends` to manage DB sessions, current user fetching, and service injections.
- **Configuration Management** — Store environment variables in `.env` and load them with `pydantic.BaseSettings`.
- **Database Migrations** — Use Alembic for consistent schema updates across environments.
- **Test-Driven Development (TDD)** — Keep a full `tests` module separate from application code.

---

## Key dependencies

| Package             | Purpose                   |
| ------------------- | ------------------------- |
| `fastapi`           | Web framework             |
| `uvicorn[standard]` | ASGI server               |
| `sqlalchemy`        | ORM & queries             |
| `asyncpg`           | Async Postgres driver     |
| `alembic`           | DB migrations             |
| `python-dotenv`     | Load `.env` configs       |
| `pydantic-settings` | Typed settings management |
| `passlib[bcrypt]`   | Secure password hashing   |
| `httpx`             | Async HTTP client         |
| `pytest`            | Testing framework         |

---

## 🧪 Running Tests

```bash
pytest
```

---

### Create Folder Structure

You can automatically generate the project’s directory and file layout in your current directory using this Bash script:

```bash
chmod +x create_fastapi_structure.sh
./create_fastapi_structure.sh
```

This will create all necessary folders and placeholder files to avoid import errors.

---

## 📜 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
