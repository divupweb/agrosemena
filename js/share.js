(function($){$(function(){$('div.share').each(function(){u=$(this).attr('data-url');t=$(this).attr('data-title');f=$(this).attr('data-path');if(!f){function path(name){var sc=document.getElementsByTagName('script'),sr=new RegExp('^(.*/|)('+name+')([#?]|$)');for(var i=0,scL=sc.length;i<scL;i++){var m=String(sc[i].src).match(sr);if(m){if(m[1].match(/^((https?|file)\:\/{2,}|\w:[\/\\])/))return m[1];if(m[1].indexOf("/")==0)return m[1];b=document.getElementsByTagName('base');if(b[0]&&b[0].href)return b[0].href+m[1];else return document.location.pathname.match(/(.*[\/\\])/)[0]+m[1];}}return null;}f=path('share.js');}if(!u)u=location.href;if(!t)t=document.title;u=encodeURIComponent(u);t=encodeURIComponent(t);t=t.replace('\'','%27');var s=new Array('"#" onclick="window.open(\'http://www.facebook.com/sharer.php?u='+u+'&t='+t+'\', \'_blank\', \'scrollbars=0, resizable=1, menubar=0, left=200, top=200, width=550, height=440, toolbar=0, status=0\');return false" title="���������� � Facebook"','"#" onclick="window.open(\'https://plus.google.com/share?url='+u+'\', \'_blank\', \'scrollbars=0, resizable=1, menubar=0, left=200, top=200, width=550, height=440, toolbar=0, status=0\');return false" title="���������� � Google+"','"http://www.liveinternet.ru/journal_post.php?action=n_add&cnurl='+u+'&cntitle='+t+'" title="������������ � LiveInternet"','"http://www.livejournal.com/update.bml?event='+u+'&subject='+t+'" title="������������ � LiveJournal"','"http://connect.mail.ru/share?url='+u+'&title='+t+'" title="���������� � ���� ����@Mail.Ru"','"http://share.yandex.ru/go.xml?service=moikrug&url='+u+'&title='+t+'" title="���������� � ��� ����"','"#" onclick="window.open(\'http://www.odnoklassniki.ru/dk?st.cmd=addShare&st._surl='+u+'&title='+t+'\', \'_blank\', \'scrollbars=0, resizable=1, menubar=0, left=200, top=200, width=550, height=440, toolbar=0, status=0\');return false" title="�������� � �������������"','"#" onclick="window.open(\'http://twitter.com/share?text='+t+'&url='+u+'\', \'_blank\', \'scrollbars=0, resizable=1, menubar=0, left=200, top=200, width=550, height=440, toolbar=0, status=0\');return false" title="�������� � Twitter"','"#" onclick="window.open(\'http://vk.com/share.php?url='+u+'\', \'_blank\', \'scrollbars=0, resizable=1, menubar=0, left=200, top=200, width=554, height=421, toolbar=0, status=0\');return false" title="���������� � ��������"','"http://my.ya.ru/posts_add_link.xml?URL='+u+'&title='+t+'" title="���������� � �.��"');var l='';for(j=0;j<s.length;j++)l+='<a rel="nofollow" style="display:inline-block;vertical-align:bottom;width:24px;height:24px;margin:0 6px 6px 0;padding:0;outline:none;background:url('+f+'icons.png) -'+24*j+'px 0 no-repeat" href='+s[j]+' target="_blank"></a>';$(this).html('<span id="share">'+l+'</span>');})})})(jQuery);