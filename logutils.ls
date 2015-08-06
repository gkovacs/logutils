require! {
  util
}

export log_with_status = (message, status) ->
  if not message?
     message = ''
  if message.message?
    data = message
  else
    data = {message: message}
  data.status = status
  console.log util.inspect(data, {depth: null})

export log_error = (message) ->
  log_with_status message, 'error'

export log_success = (message) ->
  log_with_status message, 'success'

export exit_if_error = (message) ->
  if not message?
    return
  exit_with_error(message)

export exit_with_error = (message) ->
  log_error message
  process.exit(1)

export exit_with_success = (message) ->
  log_success message
  process.exit(0)
