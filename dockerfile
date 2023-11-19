FROM steamcmd/steamcmd:ubuntu-jammy
# Update image
RUN apt update
RUN apt upgrade -y

# Add user for non-root usage
adduser --disabled-password pzuser

# Prepare server's folder
mkdir /opt/pzserver
chown pzuser:pzuser /opt/pzserver

# Change current user
USER pzuser

# Clean the image
RUN apt autoremove -y