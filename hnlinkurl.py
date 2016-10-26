from BeautifulSoup import BeautifulSoup
import urllib2
import re

data = []
html_page = urllib2.urlopen("https://news.ycombinator.com/item?id=12785814")
soup = BeautifulSoup(html_page)
for link in soup.findAll('a'):
    if link.get("href")[0:7] == "http://" or link.get("href")[0:8] == "https://":
	data.append(link.get("href"))

finalString = ",".join(data)
print finalString
