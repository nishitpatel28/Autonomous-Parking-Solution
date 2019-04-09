from sightengine.client import SightengineClient
import json

client = SightengineClient("1893902904", "XfbuaJp7JnSf3tUAqWbG")
output = client.check('face-attributes').set_file('nis.png')
male = output['faces'][0]['attributes']['male']
female = output['faces'][0]['attributes']['female']

if(male > female):
    print('male')

else:
    print('female')
