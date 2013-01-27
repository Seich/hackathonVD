// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require twitter/bootstrap
//= require_tree .

$.get("/complaints.json")
.done(
  function(data) { 
		var rangos = [['31-35',0], ['36-40',0], ['41-45',0], ['46-50',0]];
		$.each(data, function() {
			var dt = this.plaintiff.birthday;
			var age = Math.floor((new Date() - new Date(dt)) / 1000/ 3600/24/365);
			if (age <= 35)
			{
				rangos[0][1] += 1;
			}
			else if (age <= 40)
			{
				rangos[1][1] += 1;
			}
			else if (age <= 45)
			{
				rangos[2][1] += 1;
			}
			else if (age <= 50)
			{
				rangos[3][1] += 1;
			}
		})
		var chart = new JSChart('graph','pie');
		chart.setDataArray(rangos);
		chart.draw();
	});