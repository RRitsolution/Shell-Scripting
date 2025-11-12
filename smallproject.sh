##Author: Nirmal Shanker
##Author: mailId-nirmal.elex@gmail.com
##Date: 11-11-2025


<< SmallProject

Small Project developement with error handling

SmallProject


directory_preperation(){



echo "Prepeare for project directory"

if [ -d "devopsproject_error_handling" ] 
then 
	echo "directory devopsproject_error_handling already exists"

else 

        mkdir devopsproject_error_handling || {
		echo "Failed to create directory"

	return 1
}


fi



}




echo "change to directory ==>devopsproject_error_handling"

change_directory() {

   if cd devopsproject_error_handling 
      
   then
	  echo "changed directory & listing directories/files"
	  ls
   else 

     echo "need to check manual"

   fi  
}
          



echo "Install docker package && starting docker along with enabling docker"

docker_installation(){

	if ! sudo apt update && sudo apt upgrade -y && sudo apt install -y docker.io

	then

	echo "Docker installation got failed need manual check"
        return 1
        
	fi
        echo "✅ Docker installed successfully. Starting service..."
	sudo systemctl start docker
	sudo systemctl enable docker
	echo "🐳 Docker service is up and enabled on boot."


}



permission(){

	if ! sudo usermod -aG docker devops
	then 

		echo "print user devops group"

		id devops

	else
		echo "activate new group"
	
		newgrp docker



	fi

	}


Container_start(){ 

set -o pipefail

	echo "Starting nginx container "

        if ! docker run -dt --name nginx -p 80:80 nginx 2>&1 | tee -a dockerlog
	then


		echo "Docker service status: $(sudo systemctl status docker | awk -F" " 'NR==3 {print $3}')"
		echo "Printing sysyem logs last 10 lines "
                tail -n 10 /var/log/syslog
		return 1

	fi	

	}

	        
directory_preperation
change_directory
docker_installation
Container_start
