<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Multi Music Player at www.rainbow.arch.scriptmania.com/scripts/music/ -->
<!-- begin code multi music player -->
<object id="multiplayer" codeBase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701" type="application/x-oleobject" height="0" standby="Loading Microsoft Windows Media Player components..." width="0" classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95">
<param NAME VALUE>
<param NAME="ShowControls" VALUE="0">
<param NAME="ShowStatusBar" VALUE="0">
<param NAME="ShowDisplay" VALUE="0">
<param NAME="DefaultFrame" VALUE="Slide">
<param NAME="Autostart" VALUE="1">
<param NAME="Loop" VALUE="True">
</object>
<form name="form">
<select name="playlist" size="1">

<!-- Add song info here -->
<option value="0">SONG TITLE-ARTIST NAME</option>
<option value="1">SONG TITLE-ARTIST NAME</option>
<option value="2">SONG TITLE-ARTIST NAME</option>
<option value="3">SONG TITLE-ARTIST NAME</option>
<option value="4">SONG TITLE-ARTIST NAME</option>
<option value="5">SONG TITLE-ARTIST NAME</option>

</select><br>
<input TYPE="BUTTON" NAME="multiplay" VALUE="play" OnClick="play(document.forms['form'].playlist);">
<input TYPE="BUTTON" NAME="multipause" VALUE="pause" OnClick="document.multiplayer.pause(); playstate=2;">
<input TYPE="BUTTON" NAME="multistop" VALUE="stop" OnClick="document.multiplayer.stop(); playstate=2;"></p>
</form>

<script language="JavaScript">
<!--
var playstate = 1;
shuffle = 1; // Set to 0 to always play first song in list
// Set to 1 to randomly choose the first song to play
songs=new Array();

// Add song URLs here
songs[0]="SONG URL";
songs[1]="SONG URL";
songs[2]="SONG URL";
songs[3]="SONG URL";
songs[4]="SONG URL";
songs[5]="SONG URL";

if (shuffle == 1) {
var randsg = Math.floor(Math.random()*songs.length);
document.multiplayer.FileName = songs[randsg];
document.multiplayer.scr = songs[randsg];
document.forms['form'].playlist.options[randsg].selected = true;
}
function play(list) {
if (playstate == 2) {
document.multiplayer.Play();
} else {
var snum = list.options[list.selectedIndex].value
document.multiplayer.FileName = songs[snum];
document.multiplayer.scr = songs[snum];
}
playstate = 1;
}
//-->
</script>
<!-- end code multi music player -->

</body>
</html>



<FORM><INPUT Type="button" VALUE="Back" onClick="history.go(-1);return true;"></FORM>