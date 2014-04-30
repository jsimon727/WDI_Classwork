var encode = function(string) {
  var encodedString = "";
  var loop = function(initial, add){
    for(var i = initial; i < string.length; i=i+add) {
      encodedString += string[i]
    }
  }
  
  loop(0,4);
  loop(1,2);
  loop(2,4);
  return encodedString
}

// function cipher(sentence){
//   sentence.split("")
//   line1 = []
//   line2 = []
//   line3 = []

//   for(var i= 0; i < sentence.length; i++){
//     if (i % 2 === 1){
//       line2.push(sentence[i])
//     }
//     else if (i % 3 === 0){
//       line3.push(sentence[i])
//     }
//     else { 
//       line1.push(sentence[i])
//     }
//   }
//   return line1.join("") + line2.join("") + line3.join("")
// }