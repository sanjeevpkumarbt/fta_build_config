stopping_image=`docker ps | grep apachetest:latest | awk '{print $1}'`
echo "-----------------------------"
echo "Stopping image $stopping_image"
echo "-----------------------------"
printf "\n\n"
docker stop $stopping_image
echo "-----------------------------"
echo "Building new image"
echo "-----------------------------"
docker build -t apachetest .
echo "-----------------------------"
echo "Completed building image"
echo "-----------------------------"
printf "\n\n"
echo "Running Image...."
docker run -itd -p 80:80 apachetest:latest
echo "-----------------------------"
echo "Build and Deploy Complete!!!"
echo "-----------------------------"
