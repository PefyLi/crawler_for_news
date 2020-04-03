install.packages("rvest")
install.packages("magrittr")
library(rvest)
library(magrittr)
# 下載 Yahoo 首頁
page.source <- read_html("https://tw.yahoo.com/")

# 篩選出熱門關鍵字
hot.keywords <- html_nodes(page.source, ".keywords .Whs-nw")
html_text(hot.keywords)
hotKeywordTable <- data.frame(hotKeyWords = html_text(hot.keywords))

# 篩選出頭條新聞標題
news.title <- html_nodes(page.source, ".Va-tt")
html_text(news.title)
newsTable <- data.frame(title= html_text(news.title))

View(newsTable)
View(hotKeywordTable)