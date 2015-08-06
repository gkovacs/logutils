// Generated by LiveScript 1.3.1
(function(){
  var util, exit_if_error, exit_with_error, exit_with_success, out$ = typeof exports != 'undefined' && exports || this;
  util = require('util');
  out$.exit_if_error = exit_if_error = function(message){
    if (message == null) {
      return;
    }
    return exit_with_error(message);
  };
  out$.exit_with_error = exit_with_error = function(message){
    var data;
    if (message == null) {
      message = '';
    }
    if (message.message != null) {
      data = message;
    } else {
      data = {
        message: message
      };
    }
    data.status = 'error';
    console.log(util.inspect(data, {
      depth: null
    }));
    return process.exit(1);
  };
  out$.exit_with_success = exit_with_success = function(message){
    var data;
    if (message == null) {
      message = '';
    }
    if (message.message != null) {
      data = message;
    } else {
      data = {
        message: message
      };
    }
    data.status = 'error';
    console.log(util.inspect(data, {
      depth: null
    }));
    return process.exit(0);
  };
}).call(this);
