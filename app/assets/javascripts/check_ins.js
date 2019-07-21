$(document).ready(function(){

    $('#check_in_battery_id').parent().hide();
    $('#check_in_charger_id').parent().hide();

	var batts;
	var chars;

	batts = $('#check_in_battery_id').html();
	chars = $('#check_in_charger_id').html();

	$('#check_in_rider_id').change(function() {

		var rider;
		var batt_options;
		var char_options;

		rider = $('#check_in_rider_id :selected').text();
		
		batt_options = $(batts).filter('optgroup[label="' + rider + '"]').html();
		char_options = $(chars).filter('optgroup[label="' + rider + '"]').html();

		if (batt_options || char_options) {
	
			$('#check_in_battery_id').html(batt_options);
			$('#check_in_charger_id').html(char_options);
				return  $('#check_in_battery_id').parent().show(),
    					$('#check_in_charger_id').parent().show();
		} else {

			return $('#check_in_battery_id').parent().hide(),
				   $('#check_in_charger_id').parent().hide();

		};
    });
});