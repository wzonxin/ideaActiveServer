echo "download LicenseServer file"
wget https://github.com/wzonxin/ideaActiveServer/raw/master/IntelliJIDEALicenseServer_linux_amd64
chmod +x ./IntelliJIDEALicenseServer_linux_amd64
mv ./IntelliJIDEALicenseServer_linux_amd64 /usr/bin/IntelliJIDEALicenseServer_linux_amd64

echo "download service file"

wget https://github.com/wzonxin/ideaActiveServer/raw/master/IntelliJIDEALicenseServer.service
mv ./IntelliJIDEALicenseServer.service /usr/lib/systemd/system/IntelliJIDEALicenseServer.service
sudo systemctl enable IntelliJIDEALicenseServer.service
sudo systemctl start IntelliJIDEALicenseServer.service

echo "finish"
