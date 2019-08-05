app = new Vue {
	el: "#app",
	data : {
		hours: 0,
		minutes: 0,
		seconds: 0,

		timer: undefined,

		works: false,
		loaded: false,
	},
	methods : {
		stop: ->
			this.works = false; 
			clearTimeout(this.timer);
			window.navigator.vibrate([1000, 1000, 1000, 1000, 1000]); # for phones

			alert 'TIME IS OVER'

		useme: ->
			this.works = true;

			this.timer = setInterval((=>
				if this.works
					if this.seconds == this.minutes == this.hours == 0
						this.stop()
					else
						if this.seconds > 0
							this.seconds--
						else
							if this.minutes > 0
								this.minutes--
								this.seconds = 59
							else
								this.hours--
								this.minutes = 59
								this.seconds = 59
				),1000)
	}
}