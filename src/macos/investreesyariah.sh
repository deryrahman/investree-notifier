#!/bin/bash

function responseCount {
    curl -s 'https://be.investree.id/loan/marketplace?page=1&loanType=2&paymentMethod=0&estimation=0&dueDate=0&loanAmountMin=&loanAmountMax=&product=1%2C2%2C3&rate=&limit=6' \
  -H 'authority: be.investree.id' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="90", "Google Chrome";v="90"' \
  -H 'x-investree-timestamp: 2021-05-07T09:15:56' \
  -H 'accept-language: id_ID' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36' \
  -H 'x-investree-key: 1c84afbe680fe3e6e71c305875d56632cb208a0aef763f17622b2c34527b090c' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'x-investree-token: null' \
  -H 'x-investree-signature: df8aa07026f5a5198ee0e52c217f5bdc8881035f2c1e3fc39994947899d1894c' \
  -H 'origin: https://investree.id' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://investree.id/' \
  --compressed | wc -m | xargs
}

if [ $(responseCount) -gt 130 ]; then
    osascript -e 'display notification "https://investree.id/" with title "Shariah borrower detected" sound name "Blow"'
fi
