// Quick Start - Copy and paste these commands one by one

// 1. Create a new user
curl -X POST http://localhost:5000/api/users `
  -H "Content-Type: application/json" `
  -d '{
    "name": "John Doe",
    "email": "john@example.com",
    "age": 25,
    "city": "New York"
  }'

// 2. Get all users
curl http://localhost:5000/api/users

// 3. Get specific user (replace USER_ID with actual ID from response)
curl http://localhost:5000/api/users/USER_ID

// 4. Update user
curl -X PUT http://localhost:5000/api/users/USER_ID `
  -H "Content-Type: application/json" `
  -d '{
    "name": "Jane Doe",
    "age": 26
  }'

// 5. Delete user
curl -X DELETE http://localhost:5000/api/users/USER_ID

// 6. Health check
curl http://localhost:5000/api/health
