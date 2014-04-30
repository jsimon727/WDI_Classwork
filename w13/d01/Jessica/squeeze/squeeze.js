var squeeze = function(string){
  double_letter = string.match(/(\w)(\1+)/)
  return string.replace(double_letter[1], "")
}

// function squeeze(string) {
//   var newString = "";
//   for(var i =0; i< string.length; i++) {
//     if (string[i] !== string[i-1] {
//       newString += string[i]
//     }
//   }
//   return newString
// }