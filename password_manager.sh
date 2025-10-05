#!/bin/bash
echo "パスワードマネージャーへようこそ！"
read -p "サービス名を入力してください： " servicename
read -p "ユーザー名を入力してください： " username
read -p "パスワードを入力してください： " password
echo "$servicename:$username:$password" >> information.txt
echo "Thank you!"