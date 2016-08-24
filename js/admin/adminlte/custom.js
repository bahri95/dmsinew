/* Custom function REGMUS application support */
// data untuk grafik harga

$(function() {
		
	
	/* WYSIWYG HTML5 Bootstrap */
	$(".textarea").wysihtml5();
	
	/* CK Editor */
	if($('#ck_editor_text').length > 0 )
	{
		 CKEDITOR.replace('editor1');
	}
	
	
	
    /* checkbox list for delete */
	if($(".checked-all").length > 0)
	{
		
		$('input[type="checkbox"][name="checked-all"]').on('ifChecked', function(event){
		 	 $('input').iCheck('check');
		});
		
		
	}
	
	$('input#foto-cek').on('ifChecked', function(event){
		// alert(event.type + ' callback');
	});
	
	if($('.pagination').length > 0){
		//$('.pagination').addClass('')	;
	}
	
	$(".tanggal").datepicker({
            format: 'yyyy-mm-dd'
        });
	$("#tahun").datepicker( {
	    format: " yyyy", // Notice the Extra space at the beginning
	    viewMode: "years", 
	    minViewMode: "years"
	});
	 $('#bulan').datepicker( {
        format: " MM", // Notice the Extra space at the beginning
	    viewMode: "months", 
	    minViewMode: "months"
    });
	
	$(".tanggalpilih").datepicker({
			changeMonth: true,
			changeYear: true,
			yearRange: "-70:+10",
            showOn: 'both',
            buttonImage: '{/literal}{$BASEURL}{literal}doc/tmp/calendar.gif',
            buttonImageOnly: true,
            dateFormat: 'yy-mm-dd'
        });
	
	
	if($('#scrform').length > 0){
		if($('#search_status').val() == ''){
			$('#btnscr').click();
		}
	}
	
	function konfirmasi_delete(){
		tanya = confirm('Apakah anda yakin akan menghapus data ini!');
		if(tanya){
			return true;
		}else{
			return false;
		}
	}
    
	/* tabel list format datatable / grid */
	if($("#table_datagrid").length > 0)
	{
   		$('#table_datagrid').dataTable();
		
	}
	
	if($('#tabs-form').length > 0)
	{
			$('.alert').hide();
			$('#tab1_form_edit').click();
	}
	
	
	//dashboard grafik harga	


		
		
	
		
		



	
		
		
});

$(function () {
    $('#container').highcharts({
        data: {
            table: 'datatable'
        },
        chart: {
            type: 'column'
        },
        title: {
            text: 'Grafik Harga Gabungan'
        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Harga (Rupiah)'
            }
        },
         colors: ['#01DFD7', '#2EFE2E'],
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    this.point.y + ' ' + this.point.name.toLowerCase();
            }
        }
    });

     $('#container2').highcharts({
        data: {
            table: 'datatable2'
        },
        chart: {
            type: 'column'
        },
        title: {
            text: 'Grafik Harga Domestik'
        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Harga (Rupiah)'
            }
        },
        colors: ['#01DFD7'],
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    this.point.y + ' ' + this.point.name.toLowerCase();
            }
        }
    });

      $('#container3').highcharts({

        data: {
            table: 'datatable3'
        },
        chart: {
            type: 'column'

        },
        title: {
            text: 'Grafik Harga Ekspor'

        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Harga (Rupiah)'
            }

        },
        colors: ['#2EFE2E'],
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    this.point.y + ' ' + this.point.name.toLowerCase();
            }
        }
    });
});
jQuery(document).ready(function() {
    var btnUploadVideo=$('#uploader_video'), interval;
	var status=$('#statusupload');
	var url_upload = $('#url-upload').val();
	var id_vid = $('#id_video').val();
	var url_load = $('#vid_url').val();
	///alert(url_upload);
	//start uploader video script 
	if(btnUploadVideo.length > 0){
		new AjaxUpload(btnUploadVideo, {
			action: url_upload,
			name: 'video_file',
			data: {id_video: id_vid},
			onSubmit: function(file, ext){
				 if (! (ext && /^(flv|FLV|MP4)$/.test(ext))){ 
                	status.text('Hanya File dengan ext FLV yang dapat diupload !');
					return false;
				}
				status.text('Uploading').addClass('notification-ok'); 
				interval = window.setInterval(function(){
					var text = status.text();
					if (text.length < 17){
						status.text(text + '.');					
					} else {
						status.text('Uploading, harap menunggu');				
					}
				}, 200);
			},
			onComplete: function(file, response){
				//alert(response);
				window.clearInterval(interval);
				status.html('');
				status.text('');
				 var arr_result = response.split("-");
				//Add uploaded file to list
				if(arr_result[0]==="success"){
					status.removeClass('notification-error');
					status.html(file  + ", success di upload !" ).addClass('upload-ok');
					loadVideo(url_load);
				} else{
					status.html(file  + ", gagal di upload ! <br />" + response ).addClass('upload-error');	
					
				}
			}
			
		});//end video upload script
		
	}
});//
function tab_ajax_request(placeholder, url_target) {
			$('#' + placeholder).html('');
		    $('#' + placeholder).html('<center><div class="box" style="min-height:400px;"><div class="overlay"></div><div class="loading-img"></div></div></center>');
		    $('#' + placeholder).load(url_target);
}

function form_ajax_post(form_id, nama_data){
		 $(".alert").removeClass('alert-danger');
         $(".alert").removeClass('alert-success');
         $(".alert").show();
         $('#notification').html('Memproses...');
         jQuery.post($("#" + form_id).attr('action'),$("#" + form_id).serialize(),function(data){
                   if(data=='sukses'){
                             $('.alert').removeClass('alert-danger');
                             $('.alert').addClass('alert-success');
                             $('#notification').html('<p>Data ' + nama_data + ' berhasil disimpan</p>');
							 var page = document.location.href;
							 var loc = page.replace("#notif", "");
							document.location =  loc + '#notif';
                   }else{
                            $("#notification").html('');
                            $('.alert').removeClass('alert-success');
                            $('.alert').addClass('alert-danger');
                            $("#notification").html(data);
                    }
              return false;
        });

}

/// MODAL DIALOG BOX 
	function setModalBox(title,content,footer,$size)
        {
            document.getElementById('modal-bodyku').innerHTML=content;
            document.getElementById('myModalLabel').innerHTML=title;
            document.getElementById('modal-footerq').innerHTML=footer;
            if($size == 'large')
            {
                $('#myModal').attr('class', 'modal fade bs-example-modal-lg')
                             .attr('aria-labelledby','myLargeModalLabel');
                $('.modal-dialog').attr('class','modal-dialog modal-lg');
            }
            if($size == 'standart')
            {
                $('#myModal').attr('class', 'modal fade')
                             .attr('aria-labelledby','myModalLabel');
                $('.modal-dialog').attr('class','modal-dialog');
            }
            if($size == 'small')
            {
                $('#myModal').attr('class', 'modal fade bs-example-modal-sm')
                             .attr('aria-labelledby','mySmallModalLabel');
                $('.modal-dialog').attr('class','modal-dialog modal-sm');
            }
        }
		
	function open_modal( title, content, footer, size)
        {
            setModalBox(title,content,footer,size);
            $('#myModal').modal('show');
			document.getElementById("form-export").reset();
			 $("input[type='checkbox'][name='foto_export']:not(.simple), input[type='radio']:not(.simple)").iCheck({
				checkboxClass: 'icheckbox_minimal',
				radioClass: 'iradio_minimal'
			});
        }	

	/* lightbox */
	$(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
		event.preventDefault();
		$(this).ekkoLightbox();
	});
	
	
