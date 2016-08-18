function CDVExit() {
	cordova.exec(
		function(winParam) {
			console.log('App should now be closed.')
		},
		function(error) {
     		console.log('The app could not be closed.')
		 },
		 "CDVExit",
		 "exitApp",
		 []
	 );
}

module.exports = CDVExit;
