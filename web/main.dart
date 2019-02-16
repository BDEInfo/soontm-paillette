import 'dart:html';
import 'dart:core';
import 'dart:async';

var estimate = DateTime(2019, 2, 15, 22, 0).millisecondsSinceEpoch;
var days_q = document.querySelector('#days');
var hours_q = document.querySelector('#hours');
var min_q = document.querySelector('#minutes');
var ss_q = document.querySelector('#seconds');

void main() {
  var button = document.querySelector('#button');
  button.onClick.listen(goto);
  var timer = Timer.periodic(Duration(seconds: 1), countdown);
}

void countdown(Timer timer) {
  var now = DateTime.now().millisecondsSinceEpoch;
  var res = estimate - now;
  var dd = res / (1000 * 60 * 60 * 24);
  var hh = (res % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60);
  var mm = (res % (1000 * 60 * 60)) / (1000 * 60);
  var ss = (res % (1000 * 60 )) / 1000;
  
  days_q.innerHtml = dd.floor().toString();
  hours_q.innerHtml = hh.floor().toString();
  min_q.innerHtml = mm.floor().toString();
  ss_q.innerHtml = ss.floor().toString();
}

void goto(Event e) {
  window.open('https://www.facebook.com/events/2158277497758679/','Soirée paillette');
}