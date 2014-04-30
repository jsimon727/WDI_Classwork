function sort(input){
  var indexes = [];
  for(var i = 0; i < input.length; i++){
   indexes.push({word: input[i], value:input.indexOf(input[i])})
  }

  indexes.sort(function (a,b) {
      if (a.word > b.word) {
        return 1;
      }
      if (a.word < b.word) {
        return -1;
      }
      return 0;
  })


