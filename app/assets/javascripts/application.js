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
//= require wice_grid
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {

	var font = $('#new_advisory #advisory_kind_id').find("option:selected").text();
		$('#new_advisory #advisory_content').val("(" + font + "): ");

	$('#new_advisory #advisory_kind_id').change(function(){
		var font = $('#new_advisory #advisory_kind_id').find("option:selected").text();
			$('#new_advisory #advisory_content').val("(" + font + "): ");
	});

	$('.table-striped .edit_advisory .btn-success').val("未入库").parent().parent().parent().addClass('get-color');

	$('#datapick, #datepick').datepicker({
			dateFormat: 'yy/mm/dd',
			clearText: '清楚',
			closeText: '关闭',
			prevText: '前一个月',
			nextText: '后一个月',
			currentText: '今天',
			monthNames: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
			dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],
		});

});
