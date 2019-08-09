import webbrowser
import sys
import requests
from selenium import webdriver

#Opens ISPC and Logs in 
user = 'proedel'
pswd = 'getpass()'
URL = 'https://ispc-public.varsityspirit.com/'
wb = webbrowser
driver = webdriver.Chrome()
driver.get(URL)


#session = requests.Session()
#data = {"user": user , "password": password}
#r = session.post(URL, data = data)

#wb.open(URL)

username = driver.find_element_by_id('c_ctl00_txtUsername')
username.clear()
username.send_keys(user)

password  = driver.find_element_by_id('c_ctl00_txtPassword')
password.clear()
password.send_keys(pswd)


submit = driver.find_element_by_name("c$ctl00$cmdLogin").click()
#newUser = driver.get('https://ispc-public.varsityspirit.com/(S(fdsxf2syqje0pzsxakrcikuf))/DESLDefault.aspx?tabid=11')

#new = input("Would you like to create a new user:  ")
#if new[0].lower() == 'y':/
