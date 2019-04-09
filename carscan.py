import cv2
import requests
import base64
import json
import webbrowser
import datetime
import time

# Sample image file is available at http://plates.openalpr.com/ea7the.jpg

x = datetime.datetime.now()
fname=x.strftime("%Y%m%d%H%M")

cam = cv2.VideoCapture(0)

#Number Plate

cv2.namedWindow("Number Plate")

ret, frame = cam.read()
cv2.imshow("Number Plate", frame)

time.sleep(3)
img_plate = fname + 'nplate.png'
cv2.imwrite(img_plate, frame)
print("{} written!".format(img_plate))

cam.release()
IMAGE_PATH = img_plate
SECRET_KEY = 'sk_3baa6c7eb8485f0cd841221e'

with open(IMAGE_PATH, 'rb') as image_file:
    img_base64 = base64.b64encode(image_file.read())

url = 'https://api.openalpr.com/v2/recognize_bytes?recognize_vehicle=1&country=in&secret_key=%s' % (SECRET_KEY)
r = requests.post(url, data = img_base64)
res = json.loads(r.text)
result = res['results']
vNumber = result[0]['plate']
vMake = result[0]['vehicle']['make'][0]['name']
vType = result[0]['vehicle']['body_type'][0]['name']
print(vNumber )
print(vMake )
print(vType )

purl = 'http://sal.edu.in/gih2019/qrcode/?data=www.sal.edu.in/gih2019/dashboard?no='+vNumber+'&no='+vNumber+'&ttype=normal&vtype='+vType


response = requests.request("GET", purl)

webbrowser.open(purl)


