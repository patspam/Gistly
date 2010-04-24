use Test::More tests => 1;

use strict;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Gistly;

my $background = {
    'http://www.thefreedictionary.com/Plack' => '<Html><head> 
<style  id=mainCSS>TD {font-size:10pt}</style> 
<LINK rel="stylesheet" type="text/css" href="http://img.tfd.com/t.css?090808"> 
<script src="http://img.tfd.com/dict2.js?090808" LANGUAGE=javascript></script> 
<script LANGUAGE=javascript>Domain=\'thefreedictionary.com\';PageLang=\'en\';Help=\'Help\'</script> 
<link rel="icon" href="http://img.tfd.com/favicon.ico" type="image/x-icon"> 
<link rel="search" type="application/opensearchdescription+xml" title="The Free Dictionary" href="http://www.thefreedictionary.com/_/open-search.xml"> 
<link rel="search" type="application/opensearchdescription+xml" title="The Free Library" href="http://www.thefreelibrary.com/_/static/open-search.xml"><base href="http://www.thefreedictionary.com/"> 
<link rel="canonical" href="http://www.thefreedictionary.com/Plack"> 
<title>Plack - definition of Plack by the Free Online Dictionary, Thesaurus and Encyclopedia.</title> 
<meta name="description" content="Definition of Plack in the Online Dictionary. Meaning of Plack.  Pronunciation of Plack. Translations of Plack. Plack synonyms, Plack antonyms. Information about Plack in the free online English dictionary and encyclopedia. "> 
<meta name="Keywords" content="Plack, online dictionary, thesaurus, dictionary, English dictionary, Plack definition, definition of Plack, legal, medical, encyclopedia, term, law, explanation, information"> 
 
<script>word=\'Plack\';WordListHost=\'w7.thefreedictionary.com\';SAYT.Tab=1</script> 
</head> 
<body ondblclick="dictionary()" onload="focus()" lang="en"><a style="display:none" href="/_/hp/Controls/printer-friendly.aspx?4788.721875" rel="nofollow">Printer Friendly</a><script>toolbar()</script> 
	<table width="100%" cellspacing=0 cellpadding=0><tr><td width=198 valign=top><a title="Dictionary, Encyclopedia and Thesaurus - The Free Dictionary" href="http://www.thefreedictionary.com/"><span class="img A" style="background-position:0 -209px;width:198px;height:65px;margin-top:12px;margin-right:5px">Dictionary, Encyclopedia and Thesaurus - The Free Dictionary</span></a><div style="font-size:11px;text-align:center;margin-top:5px;color:#5086B0">1,844,538,797 visitors served.</div></td><td valign=top><div id=topline><script>FontSize()</script> 
<a href="http://forum.thefreedictionary.com" title="Language forums" onclick="location=\'http://forum.thefreedictionary.com/go.ashx?lang=\'+PageLang;return false"><span class="img A" style="background-position:-112px -16px;width:16px">forum</span></a> 
<script>TopLinks(\'www.thefreedictionary.com\', \'http://www.google.com.au/ig/sharetab?source=atgt&atr=The%20Free%20Dictionary&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/search-module.xml%26row%3D1%26sect%3D1&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/wod-module.xml%26row%3D1%26sect%3D2&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/hangman-module.xml%26row%3D1%26sect%3D3&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/history-module.xml%26row%3D2%26sect%3D1&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/spellbee-module.xml%26row%3D2%26sect%3D2&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/matchup-module.xml%26row%3D2%26sect%3D3&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/quote-module.xml%26row%3D3%26sect%3D1&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/birthday-module.xml%26row%3D3%26sect%3D2&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/article-module.xml%26row%3D3%26sect%3D3&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/news-module.xml%26row%3D4%26sect%3D1\', \'Add to iGoogle\', \'Bookmark on Yahoo!\')</script> 
<a href="http://www.thefreedictionary.com/Word-of-the-Day.htm" title="Join mailing list"><span class="img A" style="background-position:-86px 0;width:13px;">mailing list</span></a> 
<a href="http://www.thefreedictionary.com/lookup.htm" title="Free Website Content - Webmaster tools"><span class="img A" style="background-position:-100px 0;width:14px">For webmasters</span></a> 
 
<span id=shp></span> 
<SCRIPT type="text/javascript"> 
addFav("Bookmark","Dictionary, Encyclopedia and Thesaurus - The Free Dictionary");
homepage(0,"Set as Home Page");
WriteSB();
</script> 
</div><table width="100%" cellspacing=0 cellpadding=0><tr><td nowrap> 
		<form style="margin: 5px 0 16px 15px" action="http://www.thefreedictionary.com/_/search.aspx" method=get id=f1 name=f1><input type=hidden name=charset value="utf-8"> 
	<div style="margin-bottom:3px;white-space:nowrap"><b> 
	<input type=radio onclick="_SearchBy(this)" name=SearchBy value=0 id=f1_tfd checked style="margin-left:-4px"><label for=f1_tfd>TheFreeDictionary</label> 
	<input type=radio onclick="_SearchBy(this)" name=SearchBy value=4 id=f1_Google><label for=f1_Google>Google</label> 
	<input type=radio onclick="_SearchBy(this)" name=SearchBy value=10 id=f1_LiveSearch><label for=f1_LiveSearch>Bing</label></b></div> 
	<div> 
	<input onDblClick="click_block=1" onclick="SAYT.Suggest(this,event)" onkeyup="saveCaret(this);SAYT.Suggest(this,event)" onmouseup="saveCaret(this)" onfocus="this.select()" name=Word id=f1Word value="Plack" size=50 autocomplete=off accesskey=s> 
	<input name="tab" type="hidden" value="1"> 
	<input type=submit value="Search" name=Search><a title="Help" class="help help5" href="http://www.thefreedictionary.com/_/help/help1.htm">?</a><span class="img A kbrd" onclick="ToggleKeyboard()"></span> 
	</div> 
	<div id=keyboard></div> 
	<div id=f1_tfd_searchby> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=0 id=f1_tfd_word checked style="margin-left:-4px"><label for=f1_tfd_word>Word / Article</label> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=1 id=f1_tfd_start><label for=f1_tfd_start>Starts with</label> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=2 id=f1_tfd_end><label for=f1_tfd_end>Ends with</label> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=3 id=f1_tfd_text><label for=f1_tfd_text>Text</label> 
	</div>	
	</form> 
		</td><td id=selfpromo><script>Translate()</script> 
<a href="http://forum.thefreedictionary.com" title="Language forums" onclick="location=\'http://forum.thefreedictionary.com/go.ashx?lang=\'+PageLang;return false"><span class="img A" style="background-position:-112px -16px;width:16px;height:13px"></span> <span style="color:red;font-weight:bold">New:</span> Language forums</a> 
</td> 
		</tr></table> 
		</td> 
	</tr></table> 
<TABLE class="Tabs ETabs" cellSpacing=0 cellPadding=0 width="100%"> 
<tr><TD class=activeTab valign=top><span class="img tab tab1"></span><DIV>Dictionary/<br>thesaurus</DIV></TD><TD class=greyTab valign=top><span class="img tab tab4"></span><DIV>Medical<br>dictionary</DIV></TD><TD class=greyTab valign=top><span class="img tab tab2"></span><DIV>Legal<br>dictionary</DIV></TD><TD class=greyTab valign=top><span class="img tab tab256"></span><DIV>Financial<br>dictionary</DIV></TD><TD class=greyTab valign=top><span class="img tab tab32"></span><DIV>Acronyms<br>&nbsp;</DIV></TD><TD class=greyTab valign=top><span class="img tab tab1024"></span><DIV>Idioms</DIV></TD><TD class=greyTab valign=top><span class="img tab tab8"></span><DIV>Encyclopedia</DIV></TD><TD class=inactiveTab valign=top><span class="img tab tab16"></span><A title="Plack in Wikipedia" href="http://encyclopedia.thefreedictionary.com/Plack" rel=nofollow><DIV>Wikipedia<br>encyclopedia</DIV></a></TD><TD id=TabSeparator valign=middle><a title="Help" onMouseOver="return m_over(\'Help\')" onMouseOut="m_out()" class="help help5" href="http://www.thefreedictionary.com/_/help/help3.htm#31">?</a></TD></TR></TABLE> 
</center> 
<table width="100%" cellpadding=0 cellspacing=0 id=HeaderTable> 
<tr><td id=MainTitle nowrap><h1>Plack  <script>playV2(\'en/US/dr/drskd3dgdsslhr\');playV2(\'en/UK/dr/drskd3dgdsslhr\')</script> </h1></td> 
 
<td valign=top width="100%" style="padding-top:6pt" nowrap>&nbsp;&nbsp;&nbsp;Also found in: <a href="http://encyclopedia.thefreedictionary.com/Plack" rel=nofollow>Wikipedia</a></td> 
 
<td id=Timer>0.06&nbsp;sec.</td></tr></table> 
<table width="100%" cellpadding=0 cellspacing=0 id=ContentTable><tr><td valign=top width="100%"> 
<style>DIV.Ov{width:550px}</style><script type="text/javascript"> 
OvResults=0;
ad_channel="8899949764";
AdsNum=3;
OriginalURL="http://www.thefreedictionary.com/Plack";
google_page_url=OriginalURL;
google_language = "en"; 
google_max_num_ads = \'20\';
window.onerror=myerror;	
kw2="Plack";
google_kw =kw2
kw = google_kw;
g_kw=1;
google_ad_channel=ad_channel;
</script> 
 
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script> 
<script>write_ads(AdsNum, 0, 1)</script><div id=MainTxt><table><tr><td valign=top nowrap><b>n.</b></td><td valign=top><b>1.</b></td><td>A small copper coin formerly current in Scotland, worth less than a cent.<div class=q>With not a <span class=myself>plack</span> in the pocket of the poet.<div class=author>- Prof. Wilson.</div> </div></td></tr></table><script>webster()</script></div><font style="font-size:1px"><br clear=all></font><br>How to thank TFD for its existence? <a href="mailto:?subject=TheFreeDictionary&body=">Tell a friend about us</a>, add a link to this page, <a href="http://www.google.com.au/ig/sharetab?source=atgt&atr=The%20Free%20Dictionary&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/search-module.xml%26row%3D1%26sect%3D1&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/wod-module.xml%26row%3D1%26sect%3D2&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/hangman-module.xml%26row%3D1%26sect%3D3&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/history-module.xml%26row%3D2%26sect%3D1&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/spellbee-module.xml%26row%3D2%26sect%3D2&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/matchup-module.xml%26row%3D2%26sect%3D3&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/quote-module.xml%26row%3D3%26sect%3D1&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/birthday-module.xml%26row%3D3%26sect%3D2&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/article-module.xml%26row%3D3%26sect%3D3&n_32=url%3Dhttp%253A//www.thefreedictionary.com/_/WoD/news-module.xml%26row%3D4%26sect%3D1" rel=nofollow>add the site to iGoogle</a>, or visit <a href="http://www.thefreedictionary.com/lookup.htm">webmaster\'s page for free fun content</a>.<script>SocialNetworks(\'Link to this page:\')</script><script>write_ads(AdsNum, 0, 2)</script></td> 
 
<td valign=top style="padding-left:5px" align=right><table width="100%" class=sbox1 cellspacing=0><tr><th nowrap> <a title="Help" class="help help7" href="http://www.thefreedictionary.com/_/help/help3.htm#321">?</a>Page tools</th></tr><tr><td><table cellspacing=0 cellpadding=0 width=\'100%\'><tr><td valign=top> 
	<a href="javascript:location=\'/p/Plack\'"><span class="img A ico ico_p"></span>Printer friendly</a><br> 
	<a href="javascript:location=\'/_/cite.htm?url=\'+encodeURIComponent(location.href)+\'&word=Plack&sourceName=general+English+dictionary+and+thesaurus&flag=17&tab=1&sources=\'+sources" onmouseover="return m_over(\'cite / link\')" onmouseout="m_out()"><span class="img A ico ico_c"></span>Cite / link</a><br> 
	<a href="mailto:?subject=Plack&body=%22Plack%22 from general English dictionary and thesaurus provided by thefreedictionary.com%0d%0a%0d%0aURL%3a http%3a%2f%2fwww.thefreedictionary.com%2fPlack"><span class="img A ico ico_e"></span>Email</a><br></td><td valign=top width=\'50%\'><a target=feedback href="http://app.thefreedictionary.com/feedback.aspx" onclick="open(\'http://app.thefreedictionary.com/feedback.aspx?url=\'+encodeURIComponent(document.location)+\'&ref=\'+encodeURIComponent(document.referrer), \'feedback\',\'width=630,height=370,resizable=1\');return false"><span class="img A ico ico_f"></span>Feedback</a><br><a target=_new href="http://www.definition-of.com/"><span class="img A ico ico_a"></span>Add definition</a> 
	</td><tr></table></td></tr></table><script>SelfAds()</script><script type="text/javascript">WriteRAd1(\'Related Ads\');WordList(\'My Word List\',\'Add current page to the list\');Charity(\'AU\')</script> 
	<div class=banner_ad><IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=300 HEIGHT=70 SRC="http://a.thefreedictionary.com/get.aspx?site=tfd-direct&size=120x60"></IFRAME></div> 
</td></tr></table><table id=DefandLit cellspacing=0 width="100%"><tr><th nowrap align=left width="48%"><a title="Help" onMouseOver="return m_over(\'Help\')" onMouseOut="m_out()" class="help help8" href="http://www.thefreedictionary.com/_/help/help3.htm#325">?</a><span class="img A toggle" id=toggle_span_9 onclick="toggle(9)"></span> Mentioned in</th><td rowspan=2 width=7>&nbsp;</td><th nowrap align=left><a title="Help" onMouseOver="return m_over(\'Help\')" onMouseOut="m_out()" class="help help8" href="http://www.thefreedictionary.com/_/help/help3.htm#324">?</a><span class="img A toggle" id=toggle_span_10 onclick="toggle(10)"></span> References in classic literature</th></tr><tr><td id=TDDef valign=top><div id=toggle_td_9> 
				<table width="100%" style="float:left"><tr><td valign=top><a href=placket>placket</a><br></td></tr></table></div><div style="font-size:1px;height:1px;">&nbsp;</div></td><td id=TDLit valign=top><div id=toggle_td_10><div class=lit>why he hath stolen every <span class=highlight>plack</span> of clothing off my back, if that be a wrong, and hath left me here in this sorry frock of white falding, so that I have shame to go back to my wife, lest she think that I have donned her old kirtle.<div class=lit_links><a href="http://doyle.thefreelibrary.com/The-White-Company">The White Company</a> by <a href="http://doyle.thefreelibrary.com/">Doyle, Sir Arthur Conan</a> <a class=LitContext href="http://doyle.thefreelibrary.com/The-White-Company/3-1#Plack">View in context</a></div></div><div class=MoreResults><a href="http://www.thefreelibrary.com/_/search/Search.aspx?By=0&SearchBy=4&Word=Plack">More results<span class="img A" style="width:12px;height:9px;margin-left:3pt;background-position:-207px -167px"></span></a></div></div><div style="font-size:1px;height:1px;">&nbsp;</div></td></tr></table><script>toggle_retrieve(9);toggle_retrieve(10);</script><table id=Browsers cellspacing=0 width="100%"><tr><th nowrap align=left width="24%" style="border-right:none"><span class="img A toggle" id=toggle_span_11 onclick="toggle(11)"></span> Dictionary/thesaurus browser</th><th style="border-left:none" align=right valign=top><a title="Help" onMouseOver="return m_over(\'Help\')" onMouseOut="m_out()" class="help help8" href="http://www.thefreedictionary.com/_/help/help3.htm#326">?</a></th> 
				<td rowspan=2 width=7></td> 
				<th nowrap align=left><a title="Help" onMouseOver="return m_over(\'Help\')" onMouseOut="m_out()" class="help help8" href="http://www.thefreedictionary.com/_/help/help3.htm#327">?</a><span class="img A toggle" id=toggle_span_12 onclick="toggle(12)"></span> Full browser</th></tr> 
				<tr><td id=TDBrandBrowser valign=top colspan=2><div id=toggle_td_11><div class=prev><span class="img imgprev"></span></div><a class=l href="Placido+Domingo">Placido Domingo</a><br><a class=l href="Placidyl">Placidyl</a><br><a class=l href="placing">placing</a><br><a class=l href="placings">placings</a><br><a class=l href="Placit">Placit</a><br><a class=l href="Placitory">Placitory</a><br><a class=l href="Placitum">Placitum</a><br><span class="img current"></span><b> Plack</b><br><a class=l href="placket">placket</a><br><a class=l href="placoderm">placoderm</a><br><a class=l href="Placodermal">Placodermal</a><br><a class=l href="Placodermata">Placodermata</a><br><a class=l href="Placodermi">Placodermi</a><br><a class=l href="Placoganoid">Placoganoid</a><br><a class=l href="Placoganoidei">Placoganoidei</a><br><div class=next><span class="img imgnext"></span></div></div><div style="font-size:1px;height:1px;">&nbsp;</div></td> 
				<td id=TDTotalBrowser valign=top><div id=toggle_td_12><table width="100%" cellpadding=0 cellspacing=0><tr><td width="33%"><div class=prev><span class="img imgprev"></span></div><span class="img tab tab2"></span><a href="http://legal-dictionary.thefreedictionary.com/placing+in+office">placing in office</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placing+of+Seamen+Convention" rel="nofollow">Placing of Seamen Convention</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placing+of+Seamen+Convention%2c+1920" rel="nofollow">Placing of Seamen Convention, 1920</a><br><span class="img tab tab1"></span><a href="http://www.thefreedictionary.com/placing+reflex">placing reflex</a><br><span class="img tab tab8"></span><a href="http://encyclopedia2.thefreedictionary.com/placing+reflex">placing reflex</a><br><span class="img tab tab4"></span><a href="http://medical-dictionary.thefreedictionary.com/placing+reflex">placing reflex</a><br><span class="img tab tab2"></span><a href="http://legal-dictionary.thefreedictionary.com/placing+reflex">placing reflex</a><br><span class="img tab tab64"></span><a href="http://encyclopedia.farlex.com/placing+reflex">placing reflex</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/placing+reflex" rel="nofollow">placing reflex</a><br><span class="img tab tab1"></span><a href="http://www.thefreedictionary.com/placing+response">placing response</a><br><span class="img tab tab8"></span><a href="http://encyclopedia2.thefreedictionary.com/placing+response">placing response</a><br><span class="img tab tab4"></span><a href="http://medical-dictionary.thefreedictionary.com/placing+response">placing response</a><br><span class="img tab tab2"></span><a href="http://legal-dictionary.thefreedictionary.com/placing+response">placing response</a><br><span class="img tab tab64"></span><a href="http://encyclopedia.farlex.com/placing+response">placing response</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/placing+response" rel="nofollow">placing response</a><br><span class="img tab tab1"></span><a href="http://www.thefreedictionary.com/placings">placings</a><br></td><td width="33%"><span class="img tab tab1"></span><a href="http://www.thefreedictionary.com/Placit">Placit</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placita+Olvera" rel="nofollow">Placita Olvera</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placitas" rel="nofollow">Placitas</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placitas%2c+New+Mexico" rel="nofollow">Placitas, New Mexico</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placitas%2c+NM" rel="nofollow">Placitas, NM</a><br><span class="img tab tab1"></span><a href="http://www.thefreedictionary.com/Placitory">Placitory</a><br><span class="img tab tab1"></span><a href="http://www.thefreedictionary.com/Placitum">Placitum</a><br><span class="img tab tab2"></span><a href="http://legal-dictionary.thefreedictionary.com/Placitum">Placitum</a><br><span class="img current"></span><b> Plack</b><br><span class="img tab tab1"></span><a href="placket">placket</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/placket" rel=nofollow>placket</a><br><span class="img tab tab1"></span><a href="plackets">plackets</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/plackets" rel=nofollow>plackets</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Plackett-Burman+design" rel=nofollow>Plackett-Burman design</a><br><span class="img tab tab4"></span><a href="http://medical-dictionary.thefreedictionary.com/Placobdella">Placobdella</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placochelys" rel=nofollow>Placochelys</a><br><span class="img tab tab8"></span><a href="http://encyclopedia2.thefreedictionary.com/placode">placode</a><br></td><td width="33%"><span class="img tab tab4"></span><a href="http://medical-dictionary.thefreedictionary.com/placode">placode</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/placode" rel=nofollow>placode</a><br><span class="img tab tab1"></span><a href="placoderm">placoderm</a><br><span class="img tab tab8"></span><a href="http://encyclopedia2.thefreedictionary.com/placoderm">placoderm</a><br><span class="img tab tab64"></span><a href="http://encyclopedia.farlex.com/placoderm">placoderm</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/placoderm" rel=nofollow>placoderm</a><br><span class="img tab tab1"></span><a href="Placodermal">Placodermal</a><br><span class="img tab tab1"></span><a href="Placodermata">Placodermata</a><br><span class="img tab tab1"></span><a href="Placodermi">Placodermi</a><br><span class="img tab tab8"></span><a href="http://encyclopedia2.thefreedictionary.com/Placodermi">Placodermi</a><br><span class="img tab tab64"></span><a href="http://encyclopedia.farlex.com/Placodermi">Placodermi</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placodermi" rel=nofollow>Placodermi</a><br><span class="img tab tab1"></span><a href="Placoderms">Placoderms</a><br><span class="img tab tab8"></span><a href="http://encyclopedia2.thefreedictionary.com/Placoderms">Placoderms</a><br><span class="img tab tab64"></span><a href="http://encyclopedia.farlex.com/Placoderms">Placoderms</a><br><span class="img tab tab16"></span><a href="http://encyclopedia.thefreedictionary.com/Placoderms" rel=nofollow>Placoderms</a><br><div class=next><span class="img imgnext"></span></div></td></tr></table></div><div style="font-size:1px;height:1px;">&nbsp;</div></td></tr></table><script>toggle_retrieve(11);toggle_retrieve(12);</script><div id=bottom_sep></div><center><table cellspacing=0 cellpadding=0><tr><td><a href="http://www.thefreedictionary.com"><span class="img A" style="background-position:0 -163px;width:119px;height:39px">Dictionary, Thesaurus, and Translations</span></a></td> 
	<td valign=top> 
	<form style="display:inline;margin-left:10px" action="http://www.thefreedictionary.com/_/search.aspx" method=get id=f2 name=f2><input name=tab type=hidden value="1"><input type=hidden name=charset value="utf-8"> 
	<div style="margin-bottom:3px;white-space:nowrap"><b> 
	<input type=radio onclick="_SearchBy(this)" name=SearchBy value=0 id=f2_tfd checked style="margin-left:-4px"><label for=f2_tfd>TheFreeDictionary</label> 
	<input type=radio onclick="_SearchBy(this)" name=SearchBy value=4 id=f2_Google><label for=f2_Google>Google</label></b></div> 
	<input onDblClick="click_block=1" onclick="SAYT.Suggest(this,event)" onkeyup="SAYT.Suggest(this,event)" name=Word value="" size=50 autocomplete=off> 
	<input type=submit value="Search" name=Search><a title="Help" class="help help5" href="http://www.thefreedictionary.com/_/help/help1.htm">?</a> 
	<div id=f2_tfd_searchby> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=0 id=f2_tfd_word checked style="margin-left:-4px"><label for=f2_tfd_word>Word / Article</label> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=1 id=f2_tfd_start><label for=f2_tfd_start>Starts with</label> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=2 id=f2_tfd_end><label for=f2_tfd_end>Ends with</label> 
	<input type=radio onclick="_SearchBy(this)" name=TFDBy value=3 id=f2_tfd_text><label for=f2_tfd_text>Text</label> 
	</div> 
	</form> 
	</td> 
</tr></table><br> 
<table cellspacing=0 cellpadding=0 id=FooterLinks><tr> 
<th nowrap>Free Tools:</th><td nowrap> 
<b>For surfers:</b> 
<a href="http://www.thefreedictionary.com/add2ie.htm">Free toolbar & extensions</a> |
<a href="http://www.thefreedictionary.com/Word-of-the-Day.htm">Word of the Day</a> |
<script type="text/javascript"> 
if (window.external)
document.write(\'<a href="javascript:AddFavorite(\\\'http://www.thefreedictionary.com/\\\',\\\'Dictionary, Thesaurus & Encyclopedia\\\')">Bookmark</a> |\')
</script> 
<a href="http://www.thefreedictionary.com/help.htm">Help</a> 
<br><b>For webmasters:</b> 
 
<a href="http://www.thefreedictionary.com/lookup.htm#sitecontent">Free content</a> |
<a href="http://www.thefreedictionary.com/lookup.htm#link">Linking</a> |
<a href="http://www.thefreedictionary.com/lookup.htm#searchbox">Lookup box</a> |
<a href="http://www.thefreedictionary.com/lookup.htm#script">Double-click lookup</a> |
 
<a href="http://www.farlex.com">Partner with us</a> 
</td><td style="padding:0"> 
<a href="http://www.thefreedictionary.com/no-popups.htm" title="This site does not tolerate popups, adware, spyware"><span class="img A" style="background-position:-15px -128px;width:65px;height:30px"></span></a> 
</td></tr></table></center> 
<center><div id=FooterCopy><span class="img A toggle" id=toggle_span_3 onclick="toggle(3)" style="vertical-align:-2px"></span> <a href="javascript:toggle(3)" onmouseover="return m_over(\'Discaimer\')" onmouseout="m_out()">Disclaimer</a> |
<a href="http://www.thefreedictionary.com/privacy-policy.htm">Privacy policy</a> |
<a target=feedback href="http://app.thefreedictionary.com/feedback.aspx" onclick="open(\'http://app.thefreedictionary.com/feedback.aspx?url=\'+escape(document.location)+\'&ref=\'+escape(document.referrer), \'feedback\',\'width=630,height=370,resizable=1\');return false">Feedback</a> | Copyright &copy; 2010 <a href="http://www.thefreedictionary.com/about.htm">Farlex, Inc.</a><div id=toggle_td_3>All content on this website, including dictionary, thesaurus, literature, geography, and other reference data is for informational purposes only. This information should not be considered complete, up to date, and is not intended to be used in place of a visit, consultation, or advice of a legal, medical, or any other professional. <a href="http://www.thefreedictionary.com/about.htm">Terms of Use</a>.</div> 
<script>toggle_retrieve(3)</script> 
</div><script>KWTrack(0)</script></center> 
</body></html> 
',
    'http://plackperl.org/' => '<html> 
<head> 
<meta equiv="Cotent-Type" content="text/html;charset=utf-8"/> 
<title>PSGI/Plack - Perl Superglue for Web Frameworks and Web Servers</title> 
<script type="text/javascript"> 
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src=\'" + gaJsHost + "google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E"));
</script> 
<script type="text/javascript"> 
try {
var pageTracker = _gat._getTracker("UA-52226-5");
pageTracker._trackPageview();
} catch(err) {}</script> 
<link rel="stylesheet" href="http://plackperl.org/screen.css"/> 
<style> 
h1 { margin-bottom: 0 }
p.tagline { color: #888; padding-bottom: 2em }
p.quote  { padding-bottom: 0 }
p.quoted { text-align: right; padding: 0; font-style: italic; padding-bottom: 1em }
</style> 
</head> 
<body> 
<div class="container"> 
 
<h1>PSGI/Plack</h1> 
<p class="tagline">Superglue interface between perl web application frameworks and web servers, just like Perl is the duct tape of the internet.</p> 
 
<p>PSGI is an <strong>interface</strong> between Perl web applications and web servers. PSGI is inspired by Python\'s <a href="http://www.python.org/dev/peps/pep-0333/">WSGI</a> and Ruby\'s <a href="http://rack.rubyforge.org/">Rack</a>.</p> 
<p>Plack is a Perl module and <strong>toolkit</strong> that contains PSGI middleware, utility modules and adapters to PSGI servers.</p> 
 
<p class="inline">The <a href="http://search.cpan.org/perldoc?PSGI">PSGI specification</a> and <a href="http://search.cpan.org/perldoc?PSGI::FAQ">Frequently Asked Questions</a> are available.</p> 
 
<h2 id="testimonials">What People Say</h2> 
 
<p class="quote">&quot;I love this... I think it\'s exactly the right answer to what I was looking for, for a really simple webapp.&quot;</p><p class="quoted">-Benjamin Trott, CTO and Co-founder of Six Apart</p> 
 
<p class="quote">&quot;Wow, this is nothing short of awesome. A big ++ to the entire PSGI/Plack team!&quot</p><p class="quoted">-Stevan Little, Infinity Interactive, Moose author</p> 
 
<p class="quote">&quot;This is something we\'ve needed for a long time: a clean and simple way to respond to HTTP requests without the cruft of CGI&quot;</p><p class="quoted">-Yuval Kogman, Infinity Interactive, KiokuDB developer</p> 
 
<p class="quote">&quot;PSGI (is) an absurdly simple, manifestly beautiful specification for an interface between Perl web apps and web servers.&quot; </p><p class="quoted">-Patrick Donelan, WebGUI developer</p> 
 
<p class="quote">&quot;Thanks for including us! We\'re very excited about a future where we don\'t have to worry about web server support&quot;</p><p class="quoted">-Jonathan Swartz, Mason author</p> 
 
<p class="quote">&quot;I \\N{HEAVY BLACK HEART} PSGI.&quot;</p><p class="quoted">-Simon Cozens, the author of Advanced Perl Programming</p> 
 
<p class="quote">&quot;miyagawa++ # fucking awesome&quot;</p><p class="quoted">-Matt S Trout, Shadowcat Systems, Catalyst and DBIx::Class developer</p> 
 
<h2 id="repositories">Repositories</h2> 
<ul> 
<li><a href="http://github.com/miyagawa/psgi-specs">PSGI specifications</a></li> 
<li><a href="http://github.com/miyagawa/Plack">Plack core</a></li> 
</ul> 
 
<h2 id="servers">Servers</h2> 
<dl> 
<dt><a href="http://search.cpan.org/dist/Plack">Plack</a> (adapters)</dt> 
<dd>Plack core includes HTTP::Server::PSGI, the standalone (prefork) HTTP server, a CGI runner (for running any PSGI application as a CGI script), a FastCGI daemon and Apache1 and 2 mod_perl handler.</dd> 
 
<dt>Misc Plack::Server adapters</dt> 
<dd>There are other PSGI server implementations and Plack adapters for them, to run PSGI applications on <a href="http://github.com/miyagawa/Plack-Server-AnyEvent">AnyEvent</a>, <a href="http://github.com/mala/Plack-Server-FCGI-EV">FCGI::EV</a>, <a href="http://github.com/typester/Plack-Server-Danga-Socket">Danga::Socket</a>, <a href="http://github.com/miyagawa/Plack-Server-Coro">Coro</a>, <a href="http://github.com/frodwith/plack-server-poe">POE</a> and <a href="http://github.com/miyagawa/Plack-Server-ServerSimple">HTTP::Server::Simple</a>. They are available as separate distributions.</dd> 
 
<dt><a href="http://github.com/miyagawa/Nomo">Nomo</a></dt> 
<dd>Nomo is a high-performance, superdaemon aware, preforking HTTP server that is compatible to PSGI. Using supervisors such as Server::Starter and ControlFreak, Nomo can benefir from features such as hot-deploy, graceful restart, dynamic worker pool configuration and UNIX socket sharing.</dd> 
 
<dt><a href="http://search.cpan.org/dist/Plack-Server-ReverseHTTP">ReverseHTTP</a></dt> 
<dd>ReverseHTTP server allows you to run a PSGI application on your desktop or inside the firewall but allows external access via <a href="http://www.reversehttp.net/">reversehttp.net</a> gateway.</dd> 
 
<dt><a href="http://github.com/spiritloose/mod_psgi/">mod_psgi</a></dt> 
<dd>mod_psgi is an Apache2 module that runs PSGI applications using an embedded Perl interpreter. Developed by Jiro Nishiguchi</dd> 
 
<dt><a href="http://github.com/sekimura/evpsgi">evpsgi</a></dt> 
<dd>evpsgi is an <a href="http://monkey.org/~provos/libevent/doxygen/evhttp_8h.html">evhttp</a> based http server that runs PSGI applications with the embedded Perl interpreter. Developed by Masayoshi Sekimura</dd> 
 
<dt><a href="http://www.danga.com/perlbal/">Perlbal</a></dt> 
<dd><a href="http://github.com/miyagawa/Perlbal-Plugin-PSGI">Perlbal::Plugin::PSGI</a> allows you to run PSGI applications on Perlbal. Note that because Perlbal runs in a non-blocking event loop (Danga::Socket), your application is also <strong>not supposed to block</strong>. If your application blocks (with database acesss or network I/O), do not use this plugin and instead run your PSGI application with the prefork Plack server and reverse proxy to the backend as usual.</dd> 
 
<dt><a href="http://www.nginx.eu/">nginx embedded perl</a></dt> 
<dd><a href="http://github.com/yappo/nginx-psgi-patchs">Kazuhiro Osawa\'s nginx patches</a> allows you to run PSGI applications on a Perl interpreter embedded <strong>inside</strong> nginx. This patch is considered <strong>highly experimental and not recommended</strong> for the production use. You\'re recommended to run your (possibly blocking) PSGI application with prefork/fastcgi servers and put nginx in front, and in that case you don\'t need this patch.</dd> 
 
<dt><a href="http://github.com/tokuhirom/p5-http-server-fast/">HTTP::Server::Fast</a></dt> 
<dd>HTTP::Server::Fast is a complete XS-based HTTP daemon to run PSGI applications, written by Tokuhiro Matsuno.</dd> 
 
</dl> 
 
<h2 id="frameworks">Frameworks</h2> 
 
<dl> 
<dt><a href="http://www.catalystframework.org/">Catalyst</a></dt> 
<dd>Catalyst is one of the most popular web application frameworks in Perl and has a support for PSGI through <a href="http://search.cpan.org/dist/Catalyst-Engine-PSGI">Catalyst::Engine::PSGI</a>.</dd> 
<dt><a href="http://cgi-app.org/">CGI::Application</a></dt> 
<dd>CGI::Application is a CGI.pm-based lightweight web framework. Any CGI::Application based applications can run as a PSGI application using <a href="http://search.cpan.org/dist/CGI-PSGI">CGI::PSGI</a> and <a href="http://search.cpan.org/dist/CGI-Application-PSGI">CGI::Application::PSGI</a>.</dd> 
<dt><a href="http://search.cpan.org/dist/HTTP-Engine">HTTP::Engine</a></dt> 
<dd>HTTP::Engine is a micro web application framework and is a &quot;father of PSGI/Plack&quot; since we owe lots of code and ideas. HTTP::Engine itself now has PSGI Interface support as an adapter since 0.03 on CPAN.</dd> 
<dt><a href="http://dancer.sukria.net">Dancer</a></dt> 
<dd>Dancer is a Sinatra-like micro web application framework and has supported PSGI since version 0.9904.</dd> 
<dt><a href="http://www.masonhq.com/">Mason</a></dt> 
<dd>Mason allows you to embed code in HTML templates and can now run on any PSGI supported web server using <a href="http://github.com/miyagawa/HTML-Mason-PSGIHandler">HTML::Mason::PSGIHandler</a></dd> 
<dt><a href="http://search.cpan.org/~beppu/Squatting/">Squatting</a></dt> 
<dd>Squatting is a Camping-inspired Web Microframework and has a support for PSGI through <a href="http://search.cpan.org/dist/Squatting-On-PSGI">Squatting::On::PSGI</a>.</dd> 
<dt><a href="http://search.cpan.org/~awwaiid/Continuity/">Continuity</a></dt> 
<dd>Continuity is a Coro based web server that supports Continuations. The <a href="http://github.com/awwaiid/Continuity/">Github repo</a> has an experimental Plack support.</dd> 
<dt><a href="http://maypole.perl.org/">Maypole</a></dt> 
<dd>Maypole is a Struts-inspired MVC web application frameworks built on top of Class::DBI ORM. Maypole applications can run as PSGI applications using <a href="http://github.com/miyagawa/Maypole-PSGI">Maypole::PSGI</a>.</dd> 
<dt><a href="http://github.com/miyagawa/Tatsumaki">Tatsumaki</a></dt> 
<dd>Tatsumaki is a web application framework built on top of Plack and AnyEvent: natively supports non-blocking I/O through psgi.streaming and psgi.nonblocking, non-blocking HTTP clients, long-poll Comet services and server push.</dd> 
<dt><a href="http://mojolicious.org/">Mojo and Mojolicious</a></dt> 
<dd>Mojolicious is django and Sinatra inspired web framework and has zero dependencies to non-core Perl modules. It has a native PSGI adapter since 0.999915 on CPAN.</dd> 
<!-- dt><a href="http://github.com/dann/angelos">Angelos</a></dt>
<dt><a href="http://github.com/typester/ark-perl">Ark</a></dt>
<dt><a href="http://github.com/spiritloose/Schenker">Schenker</a></dt>
<dt><a href="http://github.com/yusukebe/Noe">Noe</a></dt>
<dt><a href="http://github.com/nekokak/p5-Kamui">Kamui</a></dt --> 
 
</dt> 
 
<h2 id="applications">Applications</h2> 
 
<dl> 
<dt><a href="http://www.webgui.org/">WebGUI</a></dt> 
<dd><a href="http://blog.patspam.com/">Patrick Donelan</a> is working on <a href="http://blog.patspam.com/2009/plebgui-webgui-meets-plack">Plack support for WebGUI</a> on <a href="http://github.com/pdonelan/webgui">his github repo</a>.</dd> 
</dl> 
 
<h2 id="middlewares">Middleware and Utilities</h2> 
 
<dl> 
<dt><a href="http://search.cpan.org/dist/CGI-PSGI">CGI::PSGI</a></dt> 
<dd>CGI.pm subclass to handle PSGI env hash to provide a CGI.pm-compatible interface. Very useful to migrate CGI.pm-based web application frameworks to the PSGI interface.</dd> 
<dt><a href="http://search.cpan.org/dist/Plack-Request">Plack::Request</a></dt> 
<dd>Plack::Request and Plack::Response is a simple wrapper around PSGI environment hash and response array to access those values using an Object oriented API.</dd> 
<dt><a href="http://search.cpan.org/~nuffin/IO-Handle-Util/">IO::Handle::Util</a></dt> 
<dd>Utility module to create an IO::Handle-like object instantly with a simple interface.</dd> 
<dt><a href="http://search.cpan.org/~kazuho/HTTP-Parser-XS-0.02/">HTTP::Parser::XS</a></dt> 
<dd>Super fast XS-based PSGI compatible HTTP header parser, used in many Plack server implementations.</dd> 
<dt><a href="http://search.cpan.org/dist/CGI-Emulate-PSGI">CGI::Emulate::PSGI</a></dt> 
<dd>Run any CGI scripts (whether it uses CGI.pm or not) as a PSGI application by emulating a CGI environment. It does the opposite of CGI runner PSGI server impementation (Plack::Server::CGI). Also take a look at <a href="http://search.cpan.org/dist/CGI-Compile">CGI::Compile</a> which compiles an existing CGI scripts into a callable subroutine reference, best to be used with CGI::Emulate::PSGI.</dd> 
 
</dl> 
 
<h2 id="slides">Slides and Blog Posts</h2> 
 
<p class="inline">Note that some materials and technical details might be outdated.</p> 
 
<dl> 
<dt><a href="http://advent.plackperl.org/">Plack Advent Calendar</a></dt> 
<dd>24 days of Tips and tricks for PSGI and Plack</dd> 
<dt><a href="http://www.slideshare.net/miyagawa/plack-lpw-2009">PSGI and Plack</a><dt> 
<dd>Tatsuhiko Miyagawa at London Perl Workshop, December 2009</dd> 
<dt><a href="http://blog.patspam.com/2009/plebgui-webgui-meets-plack">PlebGUI: WebGUI meets Plack</a></dt> 
<dd>Patrick Donelan writes a good introduction for PSGI and Plack from the web application developers point of view.</dd> 
<dt><a href="http://www.simon-cozens.org/content/i-finally-get-psgi-and-plack">I finally get PSGI and Plack!</a></dt> 
<dd>Simon Cozens writes a great post about what PSGI is, by comparing it with HTTP::Engine.</dd> 
<dt><a href="http://www.slideshare.net/miyagawa/tatsumaki">Tatsumaki, Plack based non-blocking framework</a></dt> 
<dd>Tatsuhiko Miyagawa explains psgi.streaming interface to enable asynchronous requests in web frameworks. Screencast in Japanese is also <a href="http://vimeo.com/7897566">available</a>.</dd> 
<dt><a href="http://tokuhirom.github.com/talks/20090910-yapcasia2009-psgi-plack/">PSGI/Plack</a></dt> 
<dd>Tokuhiro Matsuno and Tatsuhiko Miyagawa at YAPC::Asia 2009 (Japanese).</dd> 
</dl> 
 
<h2 id="community">Community</h2> 
 
<p>Tatsuhiko Miyagawa\'s <a href="http://bulknews.typepad.com/">blog</a> and delicious bookmarks (<a href="http://delicious.com/miyagawa/psgi">PSGI</a> and <a href="http://delicious.com/miyagawa/plack">Plack</a>) have a lot of updated information and links to PSGI/Plack related entries. We\'re chatting on <a href="irc://irc.perl.org/#plack">#plack on irc.perl.org</a> and have a low-traffic <a href="http://groups.google.com/group/psgi-plack">mailing list</a>.
 
<div id="footer"> 
The PSGI spec and Plack are written by <a href="http://bulknews.typepad.com/">Tatsuhiko Miyagawa</a> and many contributors.<br/>Source code for this site is available on <a href="http://github.com/miyagawa/plackperl.org">github</a>.
</div> 
 
</div> 
</body> 
'
};

my $content =
'In conjunction with todayâs Christmas release of Padre, Iâd like to announce my latest Padre plugin: Padre::Plugin::Plack.
As the name suggests, Padre::Plugin::Plack adds Plack awareness to Padre. With the plugin installed, opening *.psgi files causes some special things to happen. PSGI files are really just ordinary Perl files, so Padre does its normal Perl lexing/syntax highlighting magic on them, but the real fun starts with the Plack-specific features that appear in the per-file graphical plackup control panel that shows up. The panel lets you run your web app in a Plack server at the click of a button, view server output, configure plackup options and launch a web browser on the appropriate port.
The great thing about Plack/PSGI is that unlike my previous plugin (Padre::Plugin::WebGUI) which was specific to a single web app (albeit a big one), this plugin can be used for any web app built in a web framework that supports Plack (Catalyst, CGI::Application, HTTP::Engine, etc..). This potential for cross-framework application is one of the motivating factors that makes developing Plack modules (Middleware etc..) so much fun.
The plugin turns on plackupâs ââreloadâ option by default, which conveniently causes the plack server to reload every time you modify your source files in Padre. This makes for quite a nice, if somewhat minimal âPlack IDEâ experience (this is version 0.01 after all).
The plugin integrates all of the Plack example âdot-psgiâ files as templates that can be used to create different types of Plack apps straight from the GUI menu.
The pre-populated list of Plack servers and the simple start/stop button makes for a nice way of exploring the Plack server ecosystem. You can use the other panel options to enter a specific port to run on, toggle auto-start mode and pass additional options to plackup (options that start with âââ are passed through to the backend server). 
The output panel is similar to the output panel that Padre normally displays when you execute Perl files, except that you get one panel per .psgi file meaning that you can run multiple plack servers simultaneously and independently view their output. The appropriate panel is automatically selected when you click on the corresponding file tab, and running processes are stopped when you close the tab.
It should be really easy to turn Padre::Plugin::Plack into new plugins that involve the same basic ingredients, namely  a file extension and an external command for running those files, with a per-file panel for command options and output. So I encourage anyone who has a similar plugin in mind to steal liberally from Padre::Plugin::Plack (as I did from Padre::Plugin::Catalyst â thanks garu++). Ruby Rack support comes to mind as a trivial example.
Make Padre your domain-specific IDE today';

my $summary = Gistly::summarise(
    background => $background,
    content    => $content,
    limit      => 3,
);

like( $summary, qr/padre/i, 'Summary has blah in it' );
