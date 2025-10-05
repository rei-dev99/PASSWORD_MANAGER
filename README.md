# パスワードマネージャー
アプレンティスの課題「パスワードマネージャー」

## 起動方法

### Dockerの設定
- Dockerfileとcompose.ymlに記述を行う。
- Dockerアプリを起動

### イメージのビルドを行う
```
docker compose up -d
```

### パスワードマネージャー実行
コンテナ内に入る
```
docker compose exec app bash
```

実行権限付与
```
chmod 777 ./password_manager.sh
```

実行
```
./password_manager.sh
```

## 参考
- [アプレンティスパスワードマネージャー課題](https://github.com/APPRENTICE-jp/apprentice-challenge/blob/12th/quest/linux/PASSWORD_MANAGER.md)
- [Docker Linux環境構築](https://zenn.dev/bloomer/articles/5fd4e929fdb77a)
