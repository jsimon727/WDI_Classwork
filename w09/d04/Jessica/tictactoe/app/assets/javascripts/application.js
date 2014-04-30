// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.board = new Array(new Array(3), new Array(3), new Array(3));
  this.xWins = 0;
  this.yWins = 0;
  this.ties = 0;
}

Game.prototype.mark = function(play, location) {
  if ( this.gameOver() ) {
    throw new Error("game over!");
  }

  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
    this.turnNumber++;
    this.nextTurn();
  };
  
}

Game.prototype.playAt = function(location) {
  return this.board[location.row][location.column]; 
}

Game.prototype.nextTurn = function() {
  this.turn = ( this.turn === "x" ? "o" : "x" )
};

Game.prototype.gameOver = function() {
  if (this.checkWinner() !== undefined) {
    return true;
  }

  if (this.turnNumber > 8) {
    $.post("/games", { won: "tie"});
    return true;
  }

  return false;
}

Game.prototype.checkWinner = function() {

  // FOR each row in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[i][0] === "x" ||
         this.board[i][0] === "o") &&
        (this.board[i][1] === this.board[i][2]) &&
        (this.board[i][1] === this.board[i][0]) ){
      return this.board[i][0];
    }
  }
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === "x" ||
         this.board[0][i] === "o") &&
        (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
      return this.board[0][i];
    }
  }
  // diagonal top left
  if( (this.board[0][0] === "x" ||
       this.board[0][0] === "o") &&
      (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    return this.board[1][1];
  }
  // diagonal top right
  if( (this.board[0][2] === "x" || 
       this.board[0][2] === "o") &&
      (this.board[0][2] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][0]) ){
    return this.board[1][1];
  }

}