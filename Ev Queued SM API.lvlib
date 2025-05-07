<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="24008000">
	<Property Name="Alarm Database Computer" Type="Str">localhost</Property>
	<Property Name="Alarm Database Name" Type="Str">C__Program_Files__x86__National_Instruments_LabVIEW_2024_data</Property>
	<Property Name="Alarm Database Path" Type="Str">C:\Program Files (x86)\National Instruments\LabVIEW 2024\data</Property>
	<Property Name="Data Lifespan" Type="UInt">3650</Property>
	<Property Name="Database Computer" Type="Str">localhost</Property>
	<Property Name="Database Name" Type="Str">C__Program_Files__x86__National_Instruments_LabVIEW_2024_data</Property>
	<Property Name="Database Path" Type="Str">C:\Program Files (x86)\National Instruments\LabVIEW 2024\data</Property>
	<Property Name="Enable Alarms Logging" Type="Bool">true</Property>
	<Property Name="Enable Data Logging" Type="Bool">true</Property>
	<Property Name="NI.Lib.Description" Type="Str">Event-driven Queue State Machine (EDQSM) template in LabVIEW, designed to manage states and data via a queue. It includes three subVIs to create, enqueue, and dequeue states with attached data (using Variant for flexibility). The functional example features a simple interface with buttons that trigger events. The template is easily transformable into a traditional Queue State Machine (QSM) by removing the Wait state.</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str">https:/github.com/rnt-code/Event-Driven-Queued-State-Machine-EDQSM-</Property>
	<Property Name="NI.Lib.Icon" Type="Bin">*!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(]!!!*Q(C=\&gt;8"&lt;2MR%!813:!!O;K$1#V-#WJ",5Q,OPKI&amp;K9&amp;N;!7JA7VI";=JQVBZ"4F%#-ZG/O26X_ZZ$/87%&gt;M\6P%FXB^VL\_NHV=@X&lt;^39O0^N(_&lt;8NZOEH@@=^_CM?,3)VK63LD-&gt;8LS%=_]J'0@/1N&lt;XH,7^\SFJ?]Z#5P?=F,HP+5JTTF+5`Z&gt;MB$(P+1)YX*RU2DU$(![)Q3YW.YBG&gt;YBM@8'*\B':\B'2Z&gt;9HC':XC':XD=&amp;M-T0--T0-.DK%USWS(H'2\$2`-U4`-U4`/9-JKH!&gt;JE&lt;?!W#%;UC_WE?:KH?:R']T20]T20]\A=T&gt;-]T&gt;-]T?/7&lt;66[UTQ//9^BIHC+JXC+JXA-(=640-640-6DOCC?YCG)-G%:(#(+4;6$_6)]R?.8&amp;%`R&amp;%`R&amp;)^,WR/K&lt;75?GM=BZUG?Z%G?Z%E?1U4S*%`S*%`S'$;3*XG3*XG3RV320-G40!G3*D6^J-(3D;F4#J,(T\:&lt;=HN+P5FS/S,7ZIWV+7.NNFC&lt;+.&lt;GC0819TX-7!]JVO,(7N29CR6L%7,^=&lt;(1M4#R*IFV][.DX(X?V&amp;6&gt;V&amp;G&gt;V&amp;%&gt;V&amp;\N(L@_Z9\X_TVONVN=L^?Y8#ZR0J`D&gt;$L&amp;]8C-Q_%1_`U_&gt;LP&gt;WWPAO_0NB@$TP@4C`%`KH@[8`A@PRPA=PYZLD8Y![_ML^!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">604012544</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="OdbcAlarmLoggingTableName" Type="Str">NI_ALARM_EVENTS</Property>
	<Property Name="OdbcBooleanLoggingTableName" Type="Str">NI_VARIABLE_BOOLEAN</Property>
	<Property Name="OdbcConnectionRadio" Type="UInt">0</Property>
	<Property Name="OdbcConnectionString" Type="Str"></Property>
	<Property Name="OdbcCustomStringText" Type="Str"></Property>
	<Property Name="OdbcDoubleLoggingTableName" Type="Str">NI_VARIABLE_NUMERIC</Property>
	<Property Name="OdbcDSNText" Type="Str"></Property>
	<Property Name="OdbcEnableAlarmLogging" Type="Bool">false</Property>
	<Property Name="OdbcEnableDataLogging" Type="Bool">false</Property>
	<Property Name="OdbcPassword" Type="Str"></Property>
	<Property Name="OdbcReconnectPeriod" Type="UInt">0</Property>
	<Property Name="OdbcReconnectTimeUnit" Type="Int">0</Property>
	<Property Name="OdbcStringLoggingTableName" Type="Str">NI_VARIABLE_STRING</Property>
	<Property Name="OdbcUsername" Type="Str"></Property>
	<Property Name="SaveStatePeriod" Type="UInt">0</Property>
	<Property Name="Serialized ACL" Type="Bin">*!#!!!!!!!)!"1!&amp;!!!A1%!!!@````]!!".V&lt;H.J:WZF:#"C?82F)'&amp;S=G&amp;Z!!%!!1!!!!A)!!!!#!!!!!!!!!!</Property>
	<Property Name="Use Data Logging Database" Type="Bool">true</Property>
	<Item Name="controls" Type="Folder">
		<Item Name="Data.ctl" Type="VI" URL="../controls/Data.ctl"/>
		<Item Name="State &amp; Data Cluster.ctl" Type="VI" URL="../controls/State &amp; Data Cluster.ctl"/>
	</Item>
	<Item Name="support" Type="Folder">
		<Item Name="create queue.vi" Type="VI" URL="../support/create queue.vi"/>
		<Item Name="dequeue state &amp; data.vi" Type="VI" URL="../support/dequeue state &amp; data.vi"/>
	</Item>
	<Item Name="queue state &amp; data (Array).vi" Type="VI" URL="../support/queue state &amp; data (Array).vi"/>
	<Item Name="queue state &amp; data (Single).vi" Type="VI" URL="../support/queue state &amp; data (Single).vi"/>
	<Item Name="queue state &amp; data.vi" Type="VI" URL="../support/queue state &amp; data.vi"/>
</Library>
