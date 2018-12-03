$(document).ready(function() {
//lang
$('.util > li:eq(0) > a').on('click',function(){		
	var view = $(this).next();
	if(view.is(':visible')){
		view.hide();
		$(this).find('>span.ion-android-arrow-dropup').attr('class','ion-android-arrow-dropdown')
	} else{
		view.show();
		$(this).find('>span.ion-android-arrow-dropdown').attr('class','ion-android-arrow-dropup')
	}
	return false;
})

mobileMenu.open()
// mobileMenu
$('.mobile-open-btn,.scroll-btn').on('click',function(){
	$('.mobile-menu-wrap').show();
	$('body').css({'overflow-y':'hidden'});
	$('.mobile-menu-wrap').touchToScroll();
	return false;
})
$('.mobile-close-btn').on('click',function(){
	mobileMenu.allClose()
	$('body').css({'overflow-y':'visible'});
	return false;
})
var Fullslide = function(){
		
		$('#bgpage').fullpage({				
			navigation: true,
			menu : '#nav',
			/*loopTop: true,	
			loopBottom: true,*/		
			'navigation': true,
		    'navigationPosition': 'right',		
			afterLoad: function(anchorLink, index){
				var ind = index;
				$('nav a').removeClass('active');
                $('nav a:eq('+ind+')').addClass('active');
                $('.section').addClass('motion')
			},				
			onLeave: function(index, nextIndex, direction){					
				$('.section').addClass('motion')	
				var lh = $('.text-large-wrap').height();
				var sh = $('.text-small-wrap').height();
				var bh = $('.more-btn').height();
								
				if(index == 1){							
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
						$('.mobile-logo .title').text('Product').css({'color':'#fff'});
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
						$('h1 .title,.mobile-logo .title').text('Company').css({'color':'#fff'});
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
						$('.mobile-logo .title').text('Company').css({'color':'#fff'});
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
						$('h1 .title,.mobile-logo .title').text('Product').css({'color':'#fff'});
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
						$('.mobile-logo .title').text('Product').css({'color':'#fff'});
						$('#section2').css({'background-position-y':'center'})
					}  
				} else if(index == 4){
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
				}
			}
			
		});
	}
	$(window).load(function(){
		Fullslide();
	})			
	$(window).resize(function(){
		$('.section').removeClass('motion')
	})

});


//mobile menu
var mobileMenu =  {
	open : function(){
		$('.mobile-mneu a').each(function(){			
			$(this).on('click',function(){
				var foldClass = ($(this).find('span').hasClass('ion-plus')) ? 'ion-minus' : 'ion-plus';
				$(this).find('>span').attr('class', foldClass).closest('li').toggleClass('active').siblings().each(function() {
					$(this).removeClass('active');
					$(this).find('a span').attr('class', 'ion-plus');			
				});		
			})			
		})	
	},
	allClose : function(){
		$('.mobile-mneu').removeClass('active').find('li').removeClass('active');
		$('.mobile-mneu').find('a span').attr('class', 'ion-plus');	
		$('.mobile-menu-wrap').hide();
	}
}
	