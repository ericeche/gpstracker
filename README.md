![gpstracker](https://raw.githubusercontent.com/nickfox/GpsTracker/master/gpstracker_small.png)Gps Tracker v5.1.1
-------------

##### Google Map Gps Cell Phone Tracker

Now available as a Wordpress plugin and Android client!

This project allows you to track cell phones periodically. For instance every minute or every five minutes. You can watch the cell phone being tracked in real time using Google Maps (and other map providers such as OpenStreetMaps) and you can store and reload routes easily. The map display page is built using bootstrap which makes the page responsive and also uses bootswatch which gives you the choice of 17 different themes. There are 4 clients, iOS, Android, Windows Phone and Java ME. 

You have the following choices server side:

1.  mysql -uroot -p
	* grant all privileges on gpstracker.* to gpstracker_user@'%' identified by 'gpstracker';
	* grant all privileges on gpstracker.* to gpstracker_user@'%' identified by 'gpstracker';

2.  PHP with 
  * MySQL = MariaDB
  * cd servers/php/mysql/
  * ./sql_deployment.sh ../../../.gps_db_conf.cnf

3.  MAC OS

  * www directory = /Library/WebServer/Documents 

  * soft link in above directory 

  		ln -s /Users/ericecheverri/GpsTracker/servers/php gpstracker

		gpstracker -> /Users/ericecheverri/GpsTracker/servers/php
 

Install Android app in phone:

1. Android must ve in same Vlan as server to test the following.

2. point your browser in the android to your server ip :
   http://192.168.1.8/gpstracker/displaymap.php ( map should show)

3. Run app with the android device attached. Every minute a DB transaction of the form :

		07-02 19:35:18.732 26848-26848/com.websmithing.gpstracker D/LocationService: http://192.168.1.8/gpstracker/updatelocation.php?date=2016-07-02%2B19%253A31%253A21&distance=0.0&latitude=42.306306306306304&phonenumber=aeb462a3-0f19-45a8-92eb-2fb478ff01c3&accuracy=6560&sessionid=f783e8b4-3df5-494b-85ae-73a601aee921&speed=0&extrainfo=0&eventtype=android&locationmethod=fused&longitude=-83.54161010535744&username=eric&direction=0

		07-02 19:35:18.732 26848-26848/com.websmithing.gpstracker E/LocationService: sendLocationDataToWebsite - success

		07-02 19:35:18.732 26848-26848/com.websmithing.gpstracker D/LocationService: Return Headers:

		07-02 19:35:18.732 26848-26848/com.websmithing.gpstracker E/LocationService: StatusCode: 200

		07-02 19:35:18.732 26848-26848/com.websmithing.gpstracker D/LocationService: Response: 2016-07-02 19:35:19

		07-02 19:35:18.732 26848-26848/com.websmithing.gpstracker E/LocationService: position: 42.306306306306304, -83.54161010535744 accuracy: 2000.0


By default the Tracker server is set up to use the included SQLite database.  If you want to use one of the other supported database systems, edit the dbconnect.php file. 

If you need help, please go to:

https://www.websmithing.com/gps-tracker/

Here is a quick start guide to help you set up Gps Tracker:

https://www.websmithing.com/2014/01/20/quick-start-guide-for-gpstracker-3/

