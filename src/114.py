from urllib.request import urlopen, urlretrieve
from re import compile


def getHtml(url):
    """

    :url: TODO
    :returns: TODO

    """
    page = urlopen(url)
    html = page.read()
    return html


def writeTxt(html, filename):
    """

    :html: TODO
    :filename: TODO
    :returns: TODO

    """
    pageFile = open(filename, 'w')  # 以写的方式打开pageCode.txt
    pageFile.write(html)  # 写入
    pageFile.close()  # 开了记得关


def getImg(html):
    """TODO:

    :arg1: TODO
    :returns: TODO

    """
    reg = r'src="(.+?\.jpg)" width'
    regImg = compile(reg)
    imgUrlList = regImg.findall(html)
    x = 0
    for imgUrl in imgUrlList:
        urlretrieve(imgUrl, '%s.jpg' % x)
        x += 1


# html = getHtml('https://www.guazi.com/nj/buy/#bread')
# htmlStr = bytes.decode(html)
# writeTxt(htmlStr, 'guazi.htm')
getImg("guazi.htm")
