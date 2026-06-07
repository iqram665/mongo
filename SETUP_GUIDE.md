# 🚀 Complete Setup Guide - MongoDB Project

## Prerequisites

You need to install two things:

### 1. Node.js (Required for the project)
- Download from: https://nodejs.org/
- Choose **LTS** version
- Install and restart your terminal

### 2. MongoDB (Required to store data)
- Option A: **Local Installation**
  - Download from: https://www.mongodb.com/try/download/community
  - Install and make sure `mongod` service is running
  
- Option B: **MongoDB Atlas (Cloud - Recommended for beginners)**
  - Create free account at: https://www.mongodb.com/cloud/atlas
  - Create a cluster
  - Get your connection string
  - Update `.env` file with your connection string

## Installation Steps

### Step 1: Verify Node.js Installation
Open PowerShell and run:
```powershell
node --version
npm --version
```

Both should show version numbers (no errors).

### Step 2: Run Automated Setup

**Option A: Using Batch File (Easiest)**
```
Double-click: setup.bat
```

**Option B: Using PowerShell**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\setup.ps1
```

**Option C: Manual**
```powershell
cd "f:\Programing code\mongo"
npm install
```

### Step 3: Configure MongoDB Connection

Edit `.env` file:

**For Local MongoDB:**
```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/myapp
NODE_ENV=development
```

**For MongoDB Atlas (Cloud):**
```env
PORT=5000
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/myapp
NODE_ENV=development
```

### Step 4: Start MongoDB

**If using Local MongoDB:**
```powershell
# Windows
"C:\Program Files\MongoDB\Server\7.0\bin\mongod.exe"

# Or if installed as Windows Service, it starts automatically
```

**If using MongoDB Atlas (Cloud):**
- No action needed, it's running in the cloud

### Step 5: Start the Server

```powershell
cd "f:\Programing code\mongo"
npm run dev
```

You should see:
```
MongoDB connected successfully
Server is running on port 5000
```

## Testing the API

### Option 1: Using Postman
1. Download Postman: https://www.postman.com/downloads/
2. Create New Request
3. Test endpoints below

### Option 2: Using curl in PowerShell
```powershell
# Get all users
curl http://localhost:5000/api/users

# Create a new user
$body = @{
    name = "John Doe"
    email = "john@example.com"
    age = 25
    city = "New York"
} | ConvertTo-Json

curl -X POST http://localhost:5000/api/users `
  -Header "Content-Type: application/json" `
  -Body $body
```

### Option 3: Using Thunder Client (VS Code)
1. Install "Thunder Client" extension in VS Code
2. Create requests and test

## API Endpoints

### Users API

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/users` | Get all users |
| GET | `/api/users/:id` | Get user by ID |
| POST | `/api/users` | Create new user |
| PUT | `/api/users/:id` | Update user |
| DELETE | `/api/users/:id` | Delete user |
| GET | `/api/health` | Server health check |

## Troubleshooting

### MongoDB Connection Error
- Make sure MongoDB is running
- Check `.env` file has correct `MONGODB_URI`
- For local: `mongodb://localhost:27017/myapp`

### Port Already in Use
- Change `PORT` in `.env` file
- Or kill process using the port

### npm install fails
- Delete `node_modules` folder
- Delete `package-lock.json` file
- Run `npm install` again

### Module not found errors
- Make sure `npm install` completed successfully
- Delete `node_modules` and `package-lock.json`
- Run `npm install` again

## Project Structure

```
mongodb-project/
├── config/
│   └── db.js              # MongoDB connection
├── models/
│   └── User.js            # User schema
├── controllers/
│   └── userController.js  # Business logic
├── routes/
│   └── userRoutes.js      # API endpoints
├── middleware/            # Custom middleware (empty for now)
├── server.js              # Main server file
├── package.json           # Dependencies
├── .env                   # Environment variables
├── .gitignore             # Git ignore file
├── README.md              # Documentation
└── SETUP_GUIDE.md         # This file
```

## Next Steps After Setup

1. ✅ Install Node.js
2. ✅ Run setup script
3. ✅ Configure MongoDB
4. ✅ Start server
5. 📝 Test API endpoints
6. 📦 Add more models and routes as needed
7. 🚀 Deploy to production

## Need Help?

- Check `README.md` for API documentation
- Review code in `controllers/userController.js`
- Check console output for error messages

Happy Coding! 🎉
