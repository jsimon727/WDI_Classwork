var timer = document.querySelector("#timer")

var seconds = 0;
var intervalID;
var left = 0;

var start = document.querySelector("#start")
start.addEventListener("click", startTime);

var pause = document.querySelector("#pause")
pause.addEventListener("click", pauseTime);

var reset = document.querySelector("#reset")
reset.addEventListener("click", resetTime);

function startTime(){
  intervalID = setInterval(updateTime, 1000);
  left += 5
  timer.style.left = left +"px"
}

function updateTime(){
  seconds++;
  timer.innerText = "Time Elapsed: " + seconds
}

function pauseTime(){
  clearInterval(intervalID);
}

function resetTime(){
  seconds = 0
  timer.innerText = "Stop Watch";
  clearInterval(intervalID);
}









