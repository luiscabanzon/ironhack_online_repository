var Rover = {
  name: "Rover-1",
  position: [0,0]}

var Rover2 = {
  name: "Rover-2",
  position: [8,8]}

obstacles = [[3,3],[6,7], [8,2]]

function move(rover) {
  course = prompt("Insert course:").toUpperCase();

  for (i = 0; i < course.length; i++){ //Loop to run each move command
    var no_obstacles = true

  switch(course[i]) {
    case 'N':
      var new_position = [(rover.position[0]+ 1)%10, rover.position[1]];
    break;
    case 'S':
      var new_position = [(rover.position[0] - 1)%10, rover.position[1]];
    break;
    case 'E':
      var new_position = [rover.position[0], (rover.position[1] + 1)%10];
    break;
    case 'W':
      var new_position = [rover.position[0], (rover.position[1] - 1)%10];
    break;
    default : console.log('Course not valid: ' + course[i]);
    break;over
  }

  for (j = 0; j < obstacles.length; j++) {
    // Checking if there is any obstacle in the new position
    if(obstacles[j][0] == new_position[0] && obstacles[j][1] == new_position[1]){
      console.log("Obstacle found in ["+ obstacles[j]+ "]! Location not reacheable.");
      no_obstacles = false
      break;
    }
  }
    // Checking if there is another rover in the new position
    if((Rover.position[0] == new_position[0] && Rover.position[1] == new_position[1]) ||
      (Rover2.position[0] == new_position[0] && Rover2.position[1] == new_position[1])){
      console.log("Another rover is already on position [" + new_position + "].")
      no_obstacles = false
    }

  if(no_obstacles){rover.position = new_position;}
  } // End of loop

  console.log('Current position of '+ rover.name +': [' + rover.position + ']');
}