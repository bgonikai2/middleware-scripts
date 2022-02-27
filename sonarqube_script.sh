#!/bin/bash

    #Author : Belford Gonikai
    #Date : 27-Feb-2022

	## ---------- Description: Installation of Sonarqube on CentOS7-----------------

	echo "Sonarqube installation on Centos 7 in progress ..."
	sleep 3
	echo " Let's update the centos 7 Server first ..."
	sleep 1
	sudo yum update -y

	# downloading the necessary tools :

	sudo yum install java-11-openjdk-devel -y
	sudo yum install java-11-openjdk -y
	sudo yum install net-tools -y
	sudo yum install wget -y
	sudo yum install unzip -y

        # cd into /opt directory

	cd /opt 

	sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
	sudo unzip /opt/sonarqube-9.3.0.51899.zip
	sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
	cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
	./sonar.sh start
	echo
	echo "Installation was very successful !"
	echo "system starting Sonarqube now..."
	sleep 1
	echo "Below is your IP Address : "
	sudo ifconfig | grep 192.

	# Connect to the Sonarqube server on the browser using your Ip Address:9000
	#NB: Some servers have firewall enabled. So if you are not able to connect 
	#from the browser, then you might want to open the port 9000 with this command: 

	#Delette the pound sign at the beginnig of the both command below 
	#Proceed by running the program again

	#sudo firewall-cmd --permanent --add-port=9000/tcp
	#sudo firewall-cmd --reload
        



