from bs4 import BeautifulSoup
import requests

# HTTP GET Request
req = requests.get(
    'https://finance.naver.com/marketindex/exchangeList.nhn')
# HTML 소스 가져오기
html = req.text
# BeautifulSoup으로 html소스를 python객체로 변환하기
# 첫 인자는 html소스코드, 두 번째 인자는 어떤 parser를 이용할지 명시.
# 이 글에서는 Python 내장 html.parser를 이용했다.
soup = BeautifulSoup(html, 'html.parser')
# print(soup.select('tbody > tr'))
counting = soup.select('tbody > tr > td.tit > a')
rate = soup.select('tbody > tr > td:nth-of-type(3)')
for title in counting:
    print(title.text.strip())
for title in rate:
    rate = title.text
    print(rate)
# for i in country[]:
    