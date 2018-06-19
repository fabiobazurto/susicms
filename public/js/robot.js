/**
 * Robot Animation
 * Version: 1
 * Library: animejs
 * This library move and float robot.
 *
 *
 */
var TIMEOUTWALK = 5000;
var FLOATDURATION = 800;
var floating;
var trackrobot = [
      { value: 150, duration: 8000, delay: 500, elasticity: 0 },
      { value: 0, duration: 8000, delay: 0, elasticity: 0 },
      { value: -150, duration: 8000, delay: 0, elasticity: 0 }    ];



var bubbleSize = anime({
      targets: ".bubble",

      marginTop: ['8.5rem', 0],
      marginLeft: ['-8.5rem', 0],
      duration: 800,
      easing: 'easeOutElastic'
    });

var createBody = anime({
  targets: 'svg #boddy',
  points:'80 15 120 40 110 90 80 100 60 90 30 47',
  easing: 'easeInOutExpo' });
var createArm = anime({
  targets: 'svg #boy',
  points:'30 47 20 55 30 95 40 80 50 47 ',
  easing: 'easeInOutExpo',
  complete: function(anim){
    //Open Shield
    var shield = anime({
      targets: 'svg #shield',
      points:'80 15 120 40 110 90 80 100 65 25',
      easing: 'easeInOutExpo' ,
    });

    //Float robot
    floating = anime({
      targets: 'svg .tibot',
      loop:true,
      translateY:{
	value:5,
	easing:'linear'
      },
      duration:FLOATDURATION,
      direction: 'alternate'
    });

    initialPosition();
  }
});



function initialPosition(){

  setTimeout(function(){
    var blinking = anime.timeline({
      targets: 'svg circle',
      delay: 500,
      duration: 500,
      //easing: 'easeOutExpo',
      direction: 'alternate',
      loop: true
    });

    blinking
    .add({
      translateX: '=+10',
    })
    .add({
      opacity: 0,
    })
    .add({
      opacity: 1,
    });

    //create timeline
    var timelineParameters = anime.timeline({direction: 'alternate'});
    //Move Tibot
    timelineParameters
    .add({
      targets: 'svg .tibot',
      backgroundColor: ["hsl(250, 75%, 50%)", "hsl(200, 50%, 50%)"],
      translateX:trackrobot,
      translateY: [
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 5, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      { value: 0, duration: FLOATDURATION, delay: 0, elasticity: 0 ,easing:'linear'},
      ],

      complete:function(){
	floating.restart();
	initialPosition();
      }
    });


  },TIMEOUTWALK);//settimeout
}
