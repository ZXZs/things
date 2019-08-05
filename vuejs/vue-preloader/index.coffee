app = new Vue {

	el: "#app",

	data: {
		loading: true,
	}

	mounted: ->
		setTimeout((=> this.loading = false), 1500);
}