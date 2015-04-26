

var user = {}
var responses = []

function question1() {
  var name = prompt('What is your name?');
  user.name = name;
}

question1(); // don’t forget to call the function!




function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

// why do you need to convert the answer to lowercase?
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true;
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false;
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

question2();



function question3() {

  var Question = prompt('Which of the following is a framework based on Javascript: Django, Node, Flask, Sinatra')

// why do you need to convert the answer to lowercase?
	var answer = Question.toLowerCase();
	var q3
	switch (answer){
		case "django":
		q3 = false;
		break;
		case "node":
		q3 = true;
		break;
		case "flask":
		q3 = false;
		break;
		case "sinatra":
		q3 = false;
		break;
	
	default : return question3();
	};
  responses.push(q3); // add the true or false value to the responses array
};

question3();



function question4() {

  var Question = prompt('Which of the following is a framework based on Javascript: Django, Node, Flask, Sinatra')

// why do you need to convert the answer to lowercase?
	var answer = Question.toLowerCase();
	var q4
	switch (answer){
		case "django":
		q4 = false;
		break;
		case "node":
		q4 = true;
		break;
		case "flask":
		q4 = false;
		break;
		case "sinatra":
		q4 = false;
		break;
	
	default : return question4();
	};
  responses.push(q4); // add the true or false value to the responses array
};

question4();






function evaluate(responsesArray) {

var evaluation = responses.reduce(function(a,b) {return a + b});

// declare two variables to store the totals

// populate the “totals” variables from the “responsesArray”

// save the “totals” variables inside the user object

// call showResults
showResults(evaluation);
};

function showResults(message) {

// display the user results
alert("Right answers: " + message);
};

// call the function, passing it the responses array
evaluate(responses);