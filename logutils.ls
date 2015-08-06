require! {
  util
}

export exit_if_error = (message) ->
  if not message?
    return
  exit_with_error(message)

export exit_with_error = (message) ->
  if not message?
     message = ''
  if message.message?
    data = message
  else
    data = {message: message}
  data.status = 'error'
  console.log util.inspect(data, {depth: null})
  process.exit(1)

export exit_with_success = (message) ->
  if not message?
    message = ''
  if message.message?
    data = message
  else
    data = {message: message}
  data.status = 'error'
  console.log util.inspect(data, {depth: null})
  process.exit(0)
