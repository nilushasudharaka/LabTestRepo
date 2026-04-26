#!/bin/bash

# Item Manager MERN Application Startup Script

echo "Starting Item Manager Application..."

# Install backend dependencies
echo "Installing backend dependencies..."
cd backend
npm install

# Start backend server in the background
echo "Starting backend server..."
npm start &
BACKEND_PID=$!

# Go to frontend directory
cd ../frontend

# Install frontend dependencies
echo "Installing frontend dependencies..."
npm install

# Build frontend for production
echo "Building frontend..."
npm run build

# Start frontend server
echo "Starting frontend server..."
npm run preview

# Wait for all background processes
wait
