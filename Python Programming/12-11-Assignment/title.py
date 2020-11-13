print("Program to extract title")
import re
from urllib.request import urlopen

url = "https://en.wikipedia.org/wiki/Kasaragod"
open = urlopen(url)
html = open.read().decode("utf-8")

results = re.search("<title.*?>.*?</title.*?>", html, re.IGNORECASE)
title = results.group()
title = re.sub("<.*?>", "", title)
print(title)

#output
#Program to extract title
#Kasaragod - Wikipedia
