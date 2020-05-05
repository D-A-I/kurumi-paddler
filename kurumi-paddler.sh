#!/bin/bash

# 環境変数の読み込み
source .env

# 環境変数が未定義の場合、処理中断
if [[ -z ${PADDLER_PATH} || -z ${NODE_PATH} || -z ${KURUMI_MAIL_PATH} ]]; then
    echo '- 環境変数が無効です.. '
    exit 1
fi

# 実行
cd ${PADDLER_PATH} && ${NODE_PATH} ./dist/index.js ${KURUMI_MAIL_PATH} emlx

# 以下、emlxをUTF-8かつbase64でデコードする.. 予定
