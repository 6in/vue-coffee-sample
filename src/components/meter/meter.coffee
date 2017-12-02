export default
  name: 'meter'
  props:
    "g_width":
      type: String
      default: "500"

    "height":
      type: String
      default: "250"

  data: () ->
    console.log @g_width

    dummy: 100
    scales: @makeScales(0, 180)
    center: @getCenter(@g_width, @height)

  methods:
    getWH: ->
      [ Number(@g_width),Number(@height) ]

    getCenter: () ->
      me = this
      wh = @getWH()
      w = wh[0]
      h = wh[1]
      console.log w,h
      
      cx = w / 2
      cy = h - 30
      #"translate(${cx},${cy}) rotate(90)"
      "translate(#{cx},#{cy}) rotate(90)"

    makeScales: (start,end) ->
      data = []
      wh = @getWH()
      w = wh[0]
      h = wh[1]
      moveValue = w / 2 - 60
      for x in [start..end] by 10
        x += 3
        color = if x > 120 then "red" else "orange"
        color = "" if x > 150
        data.push 
          rad: x
          color: color
          transform: "rotate(#{x}) translate(0,#{moveValue})"
      console.log data
      data