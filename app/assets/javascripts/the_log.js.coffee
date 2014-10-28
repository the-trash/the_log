@TheLog = do ->
  init: ->
    console.log 'TheLog Init'

@log = -> try console.log arguments...

$ ->
  do TheLog.init
