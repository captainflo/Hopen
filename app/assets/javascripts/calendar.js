function logo(img) {
  if (img.src.indexOf('hopenfamily-18')==-1) return; // already changed
  var d = new Date();
  var Today = d.getDate();
  var Month = d.getMonth();
  var src;
  if (Today >= 18) {
    src = "images/hopenfamily-18.png";
  } else if (Today <=18 ) {
    src = "images/doodles/blah2.png";
  }
  img.src=src;
}
