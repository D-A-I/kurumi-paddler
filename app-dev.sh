#!/bin/bash

# 環境変数の読み込み
. dev.env
# 環境変数が未定義の場合、処理中断
if [[ -z ${NODE_PATH} || -z ${KURUMI_MAIL_PATH} || -z ${PADDLER} || -z ${FISH_DISH} ]]; then
    echo '- 環境変数が無効です.. '
    exit 1
fi
# 実行（`paddler`のオプション`-T`はテストモード。`walnut99.emlx`を必ず検出する）
${NODE_PATH} ${PADDLER} ${KURUMI_MAIL_PATH} emlx -T | xargs ${NODE_PATH} ${FISH_DISH} -s='Yahoo! JAPAN - 確認コード'
