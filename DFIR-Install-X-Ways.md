# X-Ways Forensics - How to Install
This is a guide on how to install and license X-Ways Forensics (XWF).

## Software Download and Installation
I recommend you use Eric Zimmerman's X-Ways [installer program](https://f001.backblazeb2.com/file/EricZimmermanTools/XWFIM.zip). It will make downloading and installing X-Ways a lot simpler. If you want to download anything manually, then see manual section.

When you initially start the program it will prompt you to enter the download credentials, which rarely change, and are listed below. Please note that the [BYOD](https://www.x-ways.net/BYOD.html) version and the dongle version are two different downloads with different credentials.

**BYOD**
```
Username: byod
Password: L2x(w,Ra%f6
```

**Dongle**
```
Username: forensics
Password: H8akrZu3Cy
```

[[https://github.ibm.com/XFIR/DFIR-wiki/wiki/img/xwfim_creds.png]]

When you open the tool, it's fairly self explanatory - but the recommended settings I have are below:   
[[https://github.ibm.com/XFIR/DFIR-wiki/wiki/img/xwfim_settings.png]]

## Licensing
### Dongle
If you license XWF via a physical dongle then please make sure you download the correct version of XWF and then simply plug in your dongle and run the software.

### BYOD+
The EU team currently has three BYOD+ licenses. These are BYOD licenses that are licenced from XWF cloud servers. It means you have to have constance internet connection in order to use these licenses. XWF will ban us from using these if there are more than one person using a single BYOD+ license at a time so the EU team currently use a Trello board to track who has reserved these licenses and are currently using them.

The table below shows the current licenses and license strings. You license the BYOD+ version by copy and pasting the license string into the `Help -> BYOD` window.

| Current Owner | License String | String Valid Until | BYOD License Until | URL for New Code | Trello Card |
| --- | --- | --- | --- | --- | --- |
| Chris Mayhew | 2019-08-13-08B915F9358F.lic	 | 2019-08-13 | 	2019-10-12 | www.x-ways.net/BYOD/BYOD2.php?code=08B915F9358F364B68358373AF4ECCCFAF10 | https://trello.com/c/UAZkY5Id/494-byod-1 |
| Francisco Galian | 2019-08-12-08BCB247B794.lic	 | 2019-03-12 | 2020-11-10 | http://www.x-ways.com/BYOD/BYOD2.php?code=08BCB247B7942326CDEE8E4C2A7AC94A130D | https://trello.com/c/fNljPMz4/503-byod-2 |
| Francisco Galian | 2019-07-12-0887601BC1D0.lic | 2018-07-12 |	2020-11-10 | http://www.x-ways.com/BYOD/BYOD2.php?code=0887601BC1D07DF8C06F1FB07102F2984F7B | https://trello.com/c/ZBBhAGnb/504-byod-3 |

## Troubleshooting
###Help, my license code is not getting accepted and I get an error!
You better upgrade to version 19.8 or later because the bug is no longer present. If for any reason the bug persists try the following solution.

There is a bug that does not update the license code, and XWF will keep trying to license the program with the old code. This code is stored in the file WinHex.cfg. You have two options; delete the file and it will automatically be created again (but you lose any custom settings) OR you can open this file up in a text editor and do a file and replace on the old key with the new key.

This bug/error 22 will keep the old lic key whatever you do.

## Manual BYOD Download
[Software download](http://www.x-ways.com/xwb/xwb.zip) Please note, not identical to the dongle-based version!
[The separate viewer component](http://www.x-ways.net/res/viewer/xw_viewer.zip).
[MPlayer](www.x-ways.net/res/mplayer/). The version from 2015 seems recommendable.
[User manual](http://www.x-ways.net/winhex/manual.pdf)

Videos: https://www.youtube.com/playlist?list=PLB0pU0wP67A9LezmyZO5I6DnHPEWjgjOD
and https://www.youtube.com/playlist?list=PLB0pU0wP67A-_DeVFfswVlZuRTH4cWswQ
Installation tips: http://www.x-ways.net/winhex/setup.html
