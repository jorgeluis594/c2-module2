def anchorize(text)
    text.gsub(/(http|https|ftp|ftps|file|smb|SMB|HTTP|HTTPS|FTPS|FTP|FILE):\/\/[\.\w\.\/\:]*/, '<a href="\0">\0</a>')
   end
   p anchorize('hello file://C:/world.txt !')