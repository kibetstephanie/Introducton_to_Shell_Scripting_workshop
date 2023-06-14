#! /usr/bin/bash


echo "This program helps you understand the meening of different traffic light colors."
echo
read -p "Which traffic light color would you like to learn about? " TRAFFIC_LIGHT_COLOR

#Confirm that the input value is not empty
if [[ -z $TRAFFIC_LIGHT_COLOR ]]
then
  echo "Error: Traffic light color cannot be empty. Please enter a valid value"
  exit 1
fi

#Convert TRAFFIC_LIGHT_COLOR to lower case.
CURRENT_COLOR=${TRAFFIC_LIGHT_COLOR,,} # (,,) converts the variable to lower case

case $CURRENT_COLOR in
  "red" )
    echo "Danger!!! When you see a red traffic light you should not cross. Wait!"
    ;;
  "green" )
    echo "Safe. You can now cross the road. Green implies that the road is safe to cross"
    ;;
  "yellow" )
    echo "Prepare to stop. Yellow symbolizes that the light is about to turn red or green"
    ;;
  * ) # any other colour apart from red, green or yellow
    echo "Error: $TRAFFIC_LIGHT_COLOR is not a valid traffic light color"
    ;;
esac
