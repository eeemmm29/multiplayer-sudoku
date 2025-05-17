@echo off
echo Starting Spring Boot backend...
start "Backend" cmd /k "cd .\multiplayersudoku\ && mvnw spring-boot:run"

echo Starting Next.js frontend...
start "Frontend" cmd /k "cd .\multiplayer-sudoku-frontend\ && npm run dev"

echo Both servers are running in new terminal windows.
