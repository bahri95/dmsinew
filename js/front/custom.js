/* Add here all your JS customizations */
jQuery(function ($) {
	$('#b_login_2').click(function (e) {
				e.preventDefault();
               // document.form_login2.submit();
			   document.getElementById("form_login2").submit();
            });
	$('#b_login_1').click(function (e) {
				e.preventDefault();
                //document.form_login1.submit();
				//alert('login submit');
				document.getElementById("form_login1").submit();
            });	
	
	$("#userid_1").keyup(function(event){
		if(event.keyCode == 13){
			$('#password_1').focus();
		}
	});
	$("#password_1").keyup(function(event){
		if(event.keyCode == 13){
			$('#b_login_1').click();
		}
	});

	$('#doc_title').val("");
	
	$("#userid_login").keyup(function(event){
		if(event.keyCode == 13){
			$('#password_login').focus();
		}
	});
	$("#password_login").keyup(function(event){
		if(event.keyCode == 13){
			$('#b_login_2').click();
		}
	});
	
	$("a.modal-link").fancybox({       
       'width'              : 600, 
       'height'             : 390,
       'autoScale'              : false,
        'transitionIn'      : 'none', 
        'overlayColor'      : '#000', 
        'overlayOpacity'    : 0.9, 
        'transitionOut'     : 'none', 
        'type'              : 'iframe', 
        'autoSize'      : false, 
        'allowfullscreen'   : 'true'
    });

    $(document).ready(function(){
	  $('.bxslider').bxSlider({
	  	 auto: true,
  		autoControls: false,
  		pager: false,
  		pause: 5000,
  		hideControlOnEnd: true,
  		 controls: false, 
  		 touchEnabled: true
	});
	});
	
	//text cari peta
	$("#nama_museum_cari").keyup(function(event){
		if(event.keyCode == 13){
			var url_museum_cari = $("#url_data_museum_cari").val() + '/' + $("#nama_museum_cari").val();
			ResetPetaMuseum(url_museum_cari);
		}
	});
	
	
	/* GRAFIK HOME */
	//dashboard grafik admin	
	if($('#dashboard-grafik-jenis').length > 0)
	{
		
		var options_charts = {
		chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Grafik Jumlah Koleksi Museum'
        },
		subtitle: {
					text: 'BERDASARKAN JENIS KOLEKSI'
			},
        tooltip: {
            pointFormat: '{series.name}: <b>{point.y}</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.y} koleksi ',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
		credits: {
					enabled: false
			},
        series: [{
            type: 'pie',
            name: 'Jenis Koleksi'
       		 }]
   		 };
		 
		 var url_data_grafik_jenis =  $('#url_data_grafik_jenis').val();
		
		$.getJSON(url_data_grafik_jenis,  function(data) {
			options_charts.series[0].data = data;
			$('#dashboard-grafik-jenis').highcharts(
				options_charts
			 );
			
			
		}).fail(function() {
			console.log("error ");
	 	 });
		 
		};
		
	//grafik admin museum terbanyak	
	if($('#dashboard-grafik-museum-terbanyak').length > 0)
	{
		
		var options_charts_museum_terbanyak = {
			chart: {
			height : 550,
            type: 'column'
        },
        title: {
					text: 'Grafik Jumlah Koleksi Berdasarkan Museum'
				},
		subtitle: {
					text: '10 BESAR MUSEUM TERATAS'
			},
        xAxis: {
            type: 'category',
            labels: {
                rotation: -90,
                style: {
                    fontSize: '10px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        yAxis: {
            min: 0,
			tickInterval: 1000,
			title: {
                text: 'Jumlah Koleksi'
            },
			opposite: true,
			 labels: {
                    align: 'left',
                    x: 3,
                    y: 16,
                    format: '{value:.,0f}'
                },
        },
        legend: {
            enabled: false
        },
        tooltip: {
            pointFormat: 'Jumlah Koleksi: <b>{point.y}</b>',
			useHTML: true
        },
		credits: {
					enabled: false
			},
		colors: ['#0CD5E4'],
		series: [{
            name: 'MUSEUM',
            dataLabels: {
					enabled: true,
					rotation: -90,
					color: '#FFFFFF',
					align: 'right',
					x: 4,
					y: 10,
					style: {
						fontSize: '13px',
						fontFamily: 'Verdana, sans-serif',
						textShadow: '0 0 3px black'
					}
				}
			
			}]
   		 };
		 
		 var url_data_grafik_museum =  $('#url_data_grafik_museum').val();
		
		$.getJSON(url_data_grafik_museum,  function(data) {
			options_charts_museum_terbanyak.series[0].data = data;
			$('#dashboard-grafik-museum-terbanyak').highcharts(
				options_charts_museum_terbanyak
			 );
			
			
		}).fail(function() {
			console.log("error ");
	 	 });
		 
		}; //end if elemen
		
		/* GRAFIK KONDISI */
		if($('#dashboard-grafik-kondisi-koleksi').length > 0)
		{
			///////
		var options_charts_kondisi_koleksi = {
				chart: {
					type: 'pie',
					options3d: {
						enabled: true,
						alpha: 90,
						beta: 0
					}
				},
				title: {
					text: 'GRAFIK KOLEKSI MUSEUM'
				},
					subtitle: {
						text: ' BERDASARKAN KONDISI'
					},
				credits: {
					enabled: false
				},
				tooltip: {
					pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				},
				plotOptions: {
					pie: {
						allowPointSelect: true,
						cursor: 'pointer',
						depth: 35,
						dataLabels: {
							enabled: true,
							format: '{point.name}'
						}
					}
				},
				series: [{
					type: 'pie',
					name: 'Kondisi Koleksi'
				}]
			};
		////////////////
			 var url_data_grafik_kondisi_koleksi =  $('#url_data_grafik_kondisi_koleksi').val();
		
				$.getJSON(url_data_grafik_kondisi_koleksi,  function(data) {
					options_charts_kondisi_koleksi.series[0].data = data;
					$('#dashboard-grafik-kondisi-koleksi').highcharts(
						options_charts_kondisi_koleksi
					 );
					
				}).fail(function() {
					console.log("error ");
				 });
		};// end if element exist
		
		/* GRAFIK KOLEKSI CB */
		if($('#dashboard-grafik-status-cb').length > 0)
		{
			///////
		var options_charts_status_cb = {
				 chart: {
				type: 'pie',
				options3d: {
					enabled: true,
					alpha: 45
				}
			},
			title: {
				text: 'GRAFIK KOLEKSI MUSEUM'
			},
			subtitle: {
				text: 'BERDASARKAN STATUS CAGAR BUDAYA'
			},
			credits: {
					enabled: false
			},
			plotOptions: {
				pie: {
					innerSize: 100,
					depth: 45
				}
			},
			series: [{
				name: 'Status CB'
					 }]
		};
		////////////////
			 var url_data_grafik_status_cb =  $('#url_data_grafik_status_cb').val();
		
				$.getJSON(url_data_grafik_status_cb,  function(data) {
					options_charts_status_cb.series[0].data = data;
					$('#dashboard-grafik-status-cb').highcharts(
						options_charts_status_cb 
					 );
					
					
				}).fail(function() {
					console.log("error ");
				 });
		};// end if element exist
		
		
		///* GRAFIK KOLEKSI PER PROPINSI *///
		if($('#dashboard-grafik-provinsi').length > 0)
		{
		var options_charts_propinsi = {
			chart: {
            type: 'column'
        },
        title: {
					text: 'GRAFIK KOLEKSI MUSEUM'
				},
		subtitle: {
					text: 'BERDASARKAN PROVINSI'
			},
        xAxis: {
            type: 'category',
            labels: {
                rotation: -45,
                style: {
                    fontSize: '8px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        yAxis: [{
            min: 0,
			tickInterval: 1000,
            title: {
                text: 'Jumlah Koleksi',
				x : -20
            },
			 labels: {
                    align: 'left',
                    x: -30,
                    y: 16,
                    format: '{value:.,0f}'
                },
        }, { // right y axis
                linkedTo: 0,
                gridLineWidth: 0,
                opposite: true,
                title: {
                    text: null
                },
                labels: {
                    align: 'right',
                    x: -3,
                    y: 16,
                    format: '{value:.,0f}'
                },
                showFirstLabel: false
            }],
        legend: {
            enabled: false
        },
        tooltip: {
            pointFormat: 'Jumlah Koleksi: <b>{point.y}</b>',
			useHTML: true
        },
		credits: {
					enabled: false
			},
		colors: ['#CC3399'],
		series: [{
            name: 'PROVINSI',
            dataLabels: {
					enabled: true,
					rotation: -90,
					color: '#FFFFFF',
					align: 'right',
					x: 4,
					y: 10,
					style: {
						fontSize: '13px',
						fontFamily: 'Verdana, sans-serif',
						textShadow: '0 0 3px black'
					}
				}
			
			}]
   		 };
		 
		 var url_data_grafik_provinsi =  $('#url_data_grafik_provinsi').val();
		
		$.getJSON(url_data_grafik_provinsi,  function(data) {
			options_charts_propinsi.series[0].data = data;
			$('#dashboard-grafik-provinsi').highcharts(
				options_charts_propinsi
			 );
			
			
		}).fail(function() {
			console.log("error ");
	 	 });
		 
		}; //end if elemen
		
		
		
		
		///josn marker map museum
		/*$.getJSON($('#url_data_museum').val(), function(data) {
		  $.each(data, function(key, val) {
								
		  	if(val.latitude.length > 0 && val.longtitude.length > 0){
				var latLng = new google.maps.LatLng(val.lat, val.lng); 
				// Creating a marker and putting it on the map
				var marker = new google.maps.Marker({
					position: latLng,
					title: val.title
				});
				marker.setMap(map);
			 }
          });
        });
		 function initialize() {
			var map;
			var radius = 8000;
			var mapOptions = {
				zoom: 5,
				center: new google.maps.LatLng(-2.548926,118.0148634)
			  };
			//var bounds = new google.maps.Circle({center: center, radius: radius}).getBounds();
			map = new google.maps.Map(document.getElementById("map_canvas"),
				mapOptions);
				
			//setMarkers(center, radius, map);
      }
	  */
	 	

		$('img#refresh').click(function() {  
				
				change_captcha();
		 });
		 
		 function change_captcha()
		 {
			var url_captcha_refresh = $('#url_captcha_refresh').val();
			document.getElementById('image_captcha').src= url_captcha_refresh + "?rnd=" + Math.random();
		 }
		
	
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