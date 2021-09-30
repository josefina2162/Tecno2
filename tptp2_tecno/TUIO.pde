boolean verbose = false; // print console debug messages
boolean callback = true; // updates only after callbacks



// --------------------------------------------------------------
void addTuioObject(TuioObject tobj) {



}
void updateTuioObject (TuioObject tobj) {

 
}
void removeTuioObject(TuioObject tobj) {


}
// --------------------------------------------------------------
void addTuioCursor(TuioCursor tcur) {
}
void updateTuioCursor (TuioCursor tcur) {
}
void removeTuioCursor(TuioCursor tcur) {
}
// --------------------------------------------------------------
void addTuioBlob(TuioBlob tblb) {
}
void updateTuioBlob (TuioBlob tblb) {
}
void removeTuioBlob(TuioBlob tblb) {
}
// --------------------------------------------------------------
void refresh(TuioTime frameTime) {
  if (verbose) println("frame #"+frameTime.getFrameID()+" ("+frameTime.getTotalMilliseconds()+")");
  if (callback) redraw();
}
