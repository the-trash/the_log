@TheLog = do ->
  init: ->
    @enable ||= $('[data-the-log]').length

@log = ->
  try
    if TheLog.enable
      console.log arguments...

$ -> do TheLog.init
