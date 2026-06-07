# MongoDB REST API Project

A Node.js REST API built with Express and MongoDB.

## Project Structure

```
├── config/          # Database connection configuration
├── models/          # Mongoose schemas
├── routes/          # API routes
├── controllers/     # Business logic
├── middleware/      # Custom middleware
├── server.js        # Entry point
├── package.json     # Dependencies
└── .env             # Environment variables
```

## Installation

1. **Install dependencies:**
```bash
npm install
```

2. **Ensure MongoDB is running** on your system (default: localhost:27017)

3. **Update `.env` file** if needed:
```
PORT=5000
MONGODB_URI=mongodb://localhost:27017/myapp
```

## Running the Project

**Development mode (with auto-reload):**
```bash
npm run dev
```

**Production mode:**
```bash
npm start
```

The server will run on `http://localhost:5000`

## API Endpoints

### Users
- `GET /api/users` - Get all users
- `GET /api/users/:id` - Get user by ID
- `POST /api/users` - Create new user
- `PUT /api/users/:id` - Update user
- `DELETE /api/users/:id` - Delete user

### Example: Create a User

```bash
curl -X POST http://localhost:5000/api/users \
  -H "Content-Type: application/json" \
  -d '{
    "name": "John Doe",
    "email": "john@example.com",
    "age": 25,
    "city": "New York"
  }'
```

## Testing the API

You can use:
- **Postman** - GUI tool for API testing
- **Thunder Client** - VS Code extension
- **curl** - Command line tool

## Next Steps

1. Install MongoDB locally or use MongoDB Atlas (cloud)
2. Run `npm install` to install dependencies
3. Start the server with `npm run dev`
4. Test the endpoints using Postman or curl

## Features

✓ Express.js server setup
✓ MongoDB connection with Mongoose
✓ CRUD operations for Users
✓ Error handling
✓ CORS enabled
✓ Environment configuration

Happy coding! 🚀
