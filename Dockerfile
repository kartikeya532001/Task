FROM ubuntu:22.04

# Setting working directory
WORKDIR /app  
# Copying current directory into the container at /app
COPY . .  
# Updating the OS and installing the required dependency 
RUN apt-get update 
RUN apt-get install -y fortune-mod cowsay 
RUN apt-get install -y netcat 

# Setting the PATH environment variable to include /usr/games for cowsay and fortune-mod
ENV PATH="/usr/games:$PATH"  

# Exposing the service on mentioned port
EXPOSE 4499   
# Command to Run the service.
CMD ["./wisecow.sh"]  
