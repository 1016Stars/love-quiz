@echo off
chcp 65001 >nul
echo ================================
echo   问卷更新工具
echo ================================
echo.

REM 复制最新的问卷文件
copy /Y "..\loveanddeeperspace_quiz.html" "loveanddeeperspace_quiz.html" >nul
copy /Y "..\loveanddeeperspace_quiz_deep.html" "loveanddeeperspace_quiz_deep.html" >nul

echo [1/3] 文件已复制

REM 添加所有更改
git add -A
echo [2/3] 已暂存更改

REM 提交
git commit -m "Update quiz %date% %time:~0,8%"
echo [3/3] 已提交

REM 推送到GitHub
echo.
echo 正在推送到GitHub...
git push

echo.
echo ================================
echo   更新完成！
echo   网站会在1-2分钟后生效
echo ================================
pause