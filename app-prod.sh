#!/bin/bash

# 環境変数の読み込み
. prod.env
# 環境変数が未定義の場合、処理中断
if [[ -z ${KURUMI_MAIL_PATH} || -z ${PADDLER} || -z ${FISH_DISH} ]]; then
    echo '- 環境変数が無効です.. '
    exit 1
fi
# 実行（`pkg`による、単一ファイル化版）
${PADDLER} ${KURUMI_MAIL_PATH} emlx | xargs ${FISH_DISH} -s='Yahoo! JAPAN - 確認コード'
