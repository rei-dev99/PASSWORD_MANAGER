#!/bin/bash
echo "パスワードマネージャーへようこそ！"

i=0
while [ "$i" = 0 ]; do
    read -p "次の選択肢から入力してください(Add Password/Get Password/Exit)：" Action Password
    choice="${Action}${Password}"

    # ファイルへ保存
    if [ "$choice" = "AddPassword" ]; then
        read -p "サービス名を入力してください： " servicename
        read -p "ユーザー名を入力してください： " username
        read -p "パスワードを入力してください： " password
        echo "$servicename:$username:$password" >> information.txt
        echo "パスワードの追加は成功しました。"

    # パスワードの取得と表示
    elif [ "$choice" = "GetPassword" ]; then
        read -p "サービス名を入力してください： " servicename
        while read line
        do
            service=$(echo "$line" | cut -d':' -f1)
            user=$(echo "$line" | cut -d':' -f2)
            pass=$(echo "$line" | cut -d':' -f3)

            if [ "$servicename" = "$service" ]; then
                echo "サービス名: ${service}"
                echo "ユーザー名: ${user}"
                echo "パスワード: ${pass}"
                break
            fi
        done < "information.txt"

    # 終了
    elif [ "$choice" = "Exit" ]; then
        i=1
        echo "Thank you!"

    # 入力が間違えている場合
    else
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
    fi
done