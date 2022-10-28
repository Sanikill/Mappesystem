void mouseReleased() {
  if (mouseX < 70) {
    clickbox(10, 10+60*0, 50, 50, "DRAG");
    clickbox(10, 10+60*1, 50, 50, "CHARACTER");
    clickbox(10, 10+60*2, 50, 50, "EDIT");
    clickbox(10, 10+60*3, 50, 50, "MOVE");
    clickbox(10, 10+60*4, 50, 50, "INTERACT");
    clickbox(10, 10+60*5, 50, 50, "ROOM");
    clickbox(10, 10+60*6, 50, 50, "DOOR");
    clickbox(10, 10+60*7, 50, 50, "WINDOW");
    clickbox(10, 10+60*8, 50, 50, "FIRE");
    clickbox(10, 10+60*9, 50, 50, "DELETE");
  } else {
   if (tool == "DRAG") {
     adjustX = adjustX - mouseX + width/2;
     adjustY = adjustY - mouseY + height/2;
   } /*
   if (tool == "CHARACTER") {
     
   }
   if (tool == "EDIT") {
     
   }
   if (tool == "MOVE") {
     
   }
   if (tool == "INTERACT") {
     
   }
   if (tool == "ROOM") {
     
   }
   if (tool == "DOOR") {
     
   }
   if (tool == "WINDOW") {
     
   }
   if (tool == "FIRE") {
     
   }
   if (tool == "DELETE") {
     
   }*/
   }
   println(tool);
   println(adjustX);
   println(adjustY);
}
