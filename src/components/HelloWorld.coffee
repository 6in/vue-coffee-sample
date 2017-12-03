#import MyClass from '../webapi'
import yaml from 'js-yaml'
import Meter from './meter/meter'

export default {
	name: 'HelloWorld'
	components: {
		'my-canvas':
			template: '<div>hello custom component</div>'
		'dso-meter': Meter
	}
	created: ->
		console.log "created"
		me = this
		setInterval( ->
			me.line_speed_value += 5
		
		, 100)

	data: ->
		return {
			msg: 'hello oyabin 2017-11-25'
			datetime: ''
			rows: [
				{ name: 'sugimoto' }
				{ name: 'ohya' }
				{ name: 'manaka' }
				{ name: 'abe' }
			]
			
			line_speed: 'rotate(45) translate(-100,0)'
			line_speed_value: -100
			options1:
				title:
					text: ''
		}

	watch:
		line_speed_value: (newValue) ->
			#console.log {newValue}
			me = this
			#me.line_speed_value = 0 if me.line_speed_value >= 50
			value = newValue % 50
			me.line_speed = "rotate(45) translate(#{value},0)"

	methods:
		onClick: (event) ->
			me = this
			# thisはdataを指す
			console.log "hello",@msg
			# methodsもdataにバインドされる
			#@someMethod(event.srcElement)
			#@options.title.text = "タイトル変更"
			#me.rows.push(name:'someone')
			# new MyClass().someMethod1().then((ok)->
			# 	me.options1 = ok
			# )

			console.log yaml.load("""
abc:
  def: "ghi"
			""")

			console.log(me.$refs.white_line)
			me.line_speed_value += 5
			# me.line_speed_value = 0 if me.line_speed_value >= 50
			# me.line_speed = "rotate(45) translate(#{me.line_speed_value},0)"
			
		someMethod: (elm) ->
			#console.log new MyClass().someMethod1()

		}
