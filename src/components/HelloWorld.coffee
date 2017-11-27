import MyClass from '../webapi'
import yaml from 'js-yaml'

export default {
	name: 'HelloWorld'
	components: {
		'my-canvas':
			template: '<div>hello custom component</div>'
	}
	created: ->
		console.log "created"
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
			options1:
				title:
					text: ''
		}

	methods:
		onClick: (event) ->
			me = this
			# thisはdataを指す
			console.log "hello",@msg
			# methodsもdataにバインドされる
			#@someMethod(event.srcElement)
			#@options.title.text = "タイトル変更"
			me.rows.push(name:'someone')
			new MyClass().someMethod1().then((ok)->
				me.options1 = ok
			)

			console.log yaml.load("""
abc:
  def: "ghi"
			""")

		someMethod: (elm) ->
			console.log new MyClass().someMethod1()

		}
