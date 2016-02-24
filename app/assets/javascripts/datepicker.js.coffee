$(document).on 'page:change', ->
	$('.startdate-picker').datepicker({
		minDate: new Date(1900, 1, 1),
		maxDate: new Date(),
		changeMonth: true,
		changeYear: true,
		yearRange: '1900:+00'
		defaultDate: '2016_01_01'
	})