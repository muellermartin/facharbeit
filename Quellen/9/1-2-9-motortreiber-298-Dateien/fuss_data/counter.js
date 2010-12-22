
document.write('<a href="http://my-stats.info/18266" title="Kostenloser Counter ohne Anmeldung"><img src="http://my-stats.info/m/img/styles/0.png" style="border:none" alt="Counter ohne Anmeldung" /></a>');
function _m_TimeUpdate() {
 var _m_i = new Image();
 _m_i.src = 'http://my-stats.info/extend.php?id=18266&time=true';
}

if(window.addEventListener) {
	window.addEventListener('unload', _m_TimeUpdate, false);
} else {
	window.attachEvent('onunload', _m_TimeUpdate);
}
