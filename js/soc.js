$(document).ready(function(){
$.get ("js/soc.php", function (data)
								{$("#soc").html(data);}, 
								"text");
});