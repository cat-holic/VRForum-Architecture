$.fn.mainMenu = function(options){
	var opts = $.extend(options);
	var menu = $(this);
	var menuList = menu.find('md1');
	var subMenu = menu.find('.subMenu');
	
	function showMenu(){
		subMenu.hide();
	}
}

$(".md1").on("click", function(){
	console.log("tt");
	subMenu = $(this).find('.subMenu');
	subMenu.attr('display', 'block');

});