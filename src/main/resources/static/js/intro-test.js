$(document).ready(function() {
		var Fullslide = function(){
				
				$('#bgpage').fullpage({				
					navigation: true,
					menu : '#nav',
					loopTop: true,	
					loopBottom: true,		
					'navigation': true,
				    'navigationPosition': 'right',		
					afterLoad: function(anchorLink, index){
						var ind = index-1;
						$('nav a').removeClass('active')
	                    $('nav a:eq('+ind+')').addClass('active');
	                    $('.section').addClass('motion')
					},				
					onLeave: function(index, nextIndex, direction){	
						$('.section').addClass('motion')	
						var lh = $('.text-large-wrap').height();
						var sh = $('.text-small-wrap').height();
						var bh = $('.more-btn').height();
										
						if(index == 1 && nextIndex == 2){
							if(direction == 'down'){							
								$('#section1').css({'background-position-y':'-120px'})						
								$('.text-large-wrap li:eq(0)').css({
									'top':-lh,
									'opacity':'0'
								});
								$('.text-large-wrap li:eq(1)').css({
									'top':-lh,
									'opacity':'1'
								});
								$('.text-small-wrap li:eq(0)').css({
									'top':-sh,
									'opacity':'0'
								});
								$('.text-small-wrap li:eq(1)').css({
									'top':-sh,
									'opacity':'1'
								})
								$('.more-btn li:eq(0)').css({
									'top':-bh,
									'opacity':'0'
								});
								$('.more-btn li:eq(1)').css({
									'top':-bh*2,
									'opacity':'1'
								})
								$('h1 .title').text('Product').css({'color':'#18191a'});
							} 
						} else if(index == 2){
							if(direction == 'up'){
								$('#section1').css({'background-position-y':'center'})											
								$('.text-large-wrap li:eq(0)').css({
									'top':'0px',
									'opacity':'1'
								});
								$('.text-large-wrap li:eq(1)').css({
									'top':'0px',
									'opacity':'0'
								})
								$('.text-small-wrap li:eq(0)').css({
									'top':'0px',
									'opacity':'1'
								});
								$('.text-small-wrap li:eq(1)').css({
									'top':'0px',
									'opacity':'0'
								});
								$('.more-btn li:eq(0)').css({
									'top':'0px',
									'opacity':'1'
								});
								$('.more-btn li:eq(1)').css({
									'top':'0px',
									'opacity':'0'
								})	
								$('h1 .title').text('Company').css({'color':'#fff'});						
							} else if(direction == 'down'){	
								$('#section2').css({'background-position-y':'-120px'})											
								$('.text-large-wrap li:eq(1)').css({
									'top':-lh*2,
									'opacity':'0'
								});
								$('.text-large-wrap li:eq(2)').css({
									'top':-lh*2,
									'opacity':'1'
								})
								$('.text-small-wrap li:eq(1)').css({
									'top':-sh*2,
									'opacity':'0'
								});
								$('.text-small-wrap li:eq(2)').css({
									'top':-sh*2,
									'opacity':'1'
								})
								$('.more-btn li:eq(1)').css({
									'top':-bh*3,
									'opacity':'0'
								});
								$('.more-btn li:eq(2)').css({
									'top':-bh*4,
									'opacity':'1'
								})
								$('h1 .title').text('Company').css({'color':'#18191a'});
								$('#section3').css({'background-position-y':'center'})
							}  
						} else if(index == 3){
							$('#section3').css({'background-position-y':'-120px'})
							if(direction == 'down'){							
								$('.text-large-wrap li:eq(2)').css({
									'top':-lh*3,
									'opacity':'0'
								});
								$('.text-large-wrap li:eq(3)').css({
									'top':-lh*3,
									'opacity':'1'
								})
								$('.text-small-wrap li:eq(2)').css({
									'top':-sh*3,
									'opacity':'0'
								});
								$('.text-small-wrap li:eq(3)').css({
									'top':-sh*3,
									'opacity':'1'
								})
								$('.more-btn li:eq(2)').css({
									'top':-bh*5,
									'opacity':'0'
								});
								$('.more-btn li:eq(3)').css({
									'top':-bh*6,
									'opacity':'1'
								})
								$('h1 .title').text('Product').css({'color':'#fff'});
							} else if(direction == 'up'){							
								$('.text-large-wrap li:eq(1)').css({
									'top':-lh,
									'opacity':'1'
								});
								$('.text-large-wrap li:eq(2)').css({
									'top':-lh,
									'opacity':'0'
								})
								$('.text-small-wrap li:eq(1)').css({
									'top':-sh,
									'opacity':'1'
								});
								$('.text-small-wrap li:eq(2)').css({
									'top':-sh,
									'opacity':'0'
								})
								$('.more-btn li:eq(1)').css({
									'top':-bh*2,
									'opacity':'1'
								});
								$('.more-btn li:eq(2)').css({
									'top':-bh*3,
									'opacity':'0'
								})
								$('h1 .title').text('Product').css({'color':'#18191a'});
								$('#section2').css({'background-position-y':'center'})
							}  
						} else if(nextIndex == 3){
							if(direction == 'up'){											
								$('.text-large-wrap li:eq(2)').css({
									'top':-lh*2,
									'opacity':'1'
								});
								$('.text-large-wrap li:eq(3)').css({
									'top':-lh*2,
									'opacity':'0'
								})
								$('.text-small-wrap li:eq(2)').css({
									'top':-sh*2,
									'opacity':'1'
								});
								$('.text-small-wrap li:eq(3)').css({
									'top':-sh*2,
									'opacity':'0'
								})
								$('.more-btn li:eq(2)').css({
									'top':-bh*4,
									'opacity':'1'
								});
								$('.more-btn li:eq(3)').css({
									'top':-bh*5,
									'opacity':'0'
								})
								$('h1 .title').text('Company').css({'color':'#18191a'});
								$('#section3').css({'background-position-y':'center'})
							} 
						} else if(index == 4 && nextIndex == 1){
							if(direction == 'up'){																			
								$('.text-large-wrap li:eq(0)').css({
									'top':0,
									'opacity':'1'
								});
								$('.text-large-wrap li:eq(3)').css({
									'top':lh,
									'opacity':'0'
								})
								$('.text-small-wrap li:eq(0)').css({
									'top':0,
									'opacity':'1'
								});
								$('.text-small-wrap li:eq(3)').css({
									'top':-sh*2,
									'opacity':'0'
								})
								$('.more-btn li:eq(0)').css({
									'top':0,
									'opacity':'1'
								});
								$('.more-btn li:eq(1)').css({
									'top':bh,
									'opacity':'0'
								})
								$('.more-btn li:eq(2)').css({
									'top':bh,
									'opacity':'0'
								})
								$('.more-btn li:eq(3)').css({
									'top':bh,
									'opacity':'0'
								})
								$('h1 .title').text('Company').css({'color':'#fff'});
								$('#section1').css({'background-position-y':'center'})
							} 
						} else if(index == 1 && nextIndex == 4){													
							if(direction == 'down'){
								$('.text-large-wrap li:eq(3)').css({
									'top':-lh*3,
									'opacity':'1'
								});
								$('.text-large-wrap li:eq(0)').css({
									'top':-lh*3,
									'opacity':'0'
								})	
								$('.text-small-wrap li:eq(3)').css({
									'top':-sh*3,
									'opacity':'1'
								});
								$('.text-small-wrap li:eq(0)').css({
									'top':-sh*3,
									'opacity':'0'
								})							
								$('.more-btn li:eq(2)').css({
									'top':-bh*5,
									'opacity':'0'
								});
								$('.more-btn li:eq(3)').css({
									'top':-bh*6,
									'opacity':'1'
								})
								$('h1 .title').text('Product').css({'color':'#fff'});
							}
						}
					}
					
				});
			}
			$(window).load(function(){Fullslide();})			
			$(window).resize(function(){
				$('.section').removeClass('motion')
			})

		});
