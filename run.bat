@echo off
REM ——————————————————————————————
REM  Close any old Multiplayer Sudoku consoles
REM ——————————————————————————————
echo Closing previous Multiplayer Sudoku Backend console (if any)...
taskkill /F /FI "WINDOWTITLE eq Multiplayer Sudoku Backend*" >nul 2>&1

echo Closing previous Multiplayer Sudoku Frontend console (if any)...
taskkill /F /FI "WINDOWTITLE eq Multiplayer Sudoku Frontend*" >nul 2>&1

REM ——————————————————————————————
REM  Start new servers
REM ——————————————————————————————
echo Starting Multiplayer Sudoku Backend...
start "Multiplayer Sudoku Backend" cmd /k "cd .\multiplayersudoku\ && mvnw spring-boot:run"

echo Starting Multiplayer Sudoku Frontend...
start "Multiplayer Sudoku Frontend" cmd /k "cd .\multiplayer-sudoku-frontend\ && npm run dev"

echo Both servers are running in new terminal windows.
