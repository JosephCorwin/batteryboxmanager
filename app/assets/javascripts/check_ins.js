jQuery(function(){

	var batts;
	var chars;

    $('#check_in_battery_id', '#check_in_charger_id').parent().hide();

	batts = $('#check_in_battery_id').html();
	chars = $('#check_in_charger_id').html();
	console.log(batts);
	console.log(chars);

	$('#check_in_battery_id').change(function() {

		var rider, batt_options;

		rider = ('#check_in_rider_id :selected').text();
		batt_options = $(batts).filter("optgroup[label=" + rider + "]").html();

		console.log(batt_options);

		if (batt_options) {
			$('#check_in_battery_id').html(batt_options);
			return $('#check_in_battery_id').parent().show();

		} else {
			$('#check_in_battery_id').empty();
			return $('#check_in_battery_id').parent().hide();
		};
    };

	$('#check_in_charger_id').change(function() {

		var rider, char_options;

		rider = ('#check_in_rider_id :selected').text();
		char_options = $(chars).filter("optgroup[label=" + rider + "]").html();

		console.log(char_options);

		if (char_options) {
			$('#check_in_charger_id').html(char_options);
			return $('#check_in_battery_id', '#check_in_charger_id').parent().show();

		} else {
			$('#check_in_charger_id').empty();
			return $('#check_in_battery_id', '#check_in_charger_id').parent().hide();
		};
	});
});