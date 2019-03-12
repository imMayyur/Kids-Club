<%@ Page Title="" Language="C#" MasterPageFile="~/Application/MasterPageFlash.master" AutoEventWireup="true" CodeFile="MatchingPairs.aspx.cs" Inherits="Application_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        div#memory_board{
	        background:#CCC;
	        border:#999 2px solid;
	        width:800px;
	        height:530px;
	        padding:24px;
	        margin:0px auto;
        }
        div#memory_board > div{
	        background-image:url("../Images/ImgApplication/pink.png");
            background-repeat: repeat;
	        //background-color: pink;	
	        border:#000 1px solid;
	        width:71px;
	        height:71px;
	        float:left;
	        margin:10px;
	        padding:20px;
	        font-size:64px;
	        cursor:pointer;
	        text-align:center;
        }
    </style>
    <script>
        var memory_array = ['A','A','B','B','C','C','D','D','E','E','F','F','G','G','H','H','I','I','J','J','K','K','L','L'];
        var memory_values = [];
        var memory_tile_ids = [];
        var tiles_flipped = 0;
        Array.prototype.memory_tile_shuffle = function(){
            var i = this.length, j, temp;
            while(--i > 0){
                j = Math.floor(Math.random() * (i+1));
                temp = this[j];
                this[j] = this[i];
                this[i] = temp;
            }
        }
        function changeIamge()
        {
            document.getElementById("img1").src = "../Images/ImgApplication/congratulation.png";
        }
        function newBoard(){
	        tiles_flipped = 0;
	        var output = '';
            memory_array.memory_tile_shuffle();
	        for(var i = 0; i < memory_array.length; i++){
		        output += '<div id="tile_'+i+'" onclick="memoryFlipTile(this,\''+memory_array[i]+'\')"></div>';
	        }
	        document.getElementById('memory_board').innerHTML = output;
        }
        function memoryFlipTile(tile,val){
	        if(tile.innerHTML == "" && memory_values.length < 2){
	            tile.style.background = 'white';
		        tile.innerHTML = val;
		        if(memory_values.length == 0){
			        memory_values.push(val);
			        memory_tile_ids.push(tile.id);
		        } else if(memory_values.length == 1){
			        memory_values.push(val);
			        memory_tile_ids.push(tile.id);
			        if(memory_values[0] == memory_values[1]){
				        tiles_flipped += 2;
				        // Clear both arrays
				        memory_values = [];
            	        memory_tile_ids = [];
				        // Check to see if the whole board is cleared
				        if(tiles_flipped == memory_array.length){
				            alert("You wonthe game...generating new board");
				            changeImage();
					        document.getElementById('memory_board').innerHTML = "";
					        newBoard();
				        }
			        } else {
				        function flip2Back(){
				            // Flip the 2 tiles back over
				            var tile_1 = document.getElementById(memory_tile_ids[0]);
				            var tile_2 = document.getElementById(memory_tile_ids[1]);
				            tile_1.style.background = 'url("../Images/ImgApplication/blue.png")';
            	            tile_1.innerHTML = "";
            	            tile_2.style.background = 'url("../Images/ImgApplication/blue.png")';
            	            tile_2.innerHTML = "";
				            // Clear both arrays
				            memory_values = [];
            	            memory_tile_ids = [];
				        }
				        setTimeout(flip2Back, 700);
			        }
		        }
	        }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentFlash" Runat="Server">
    <div id="memory_board">
        <img id="img1" height="530" width="800" src="../Images/ImgApplication/congratulation.png"/>
    </div>
    <script>newBoard();</script>
</asp:Content>

