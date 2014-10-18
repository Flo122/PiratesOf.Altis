waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["foreword","Vorwort"];
player createDiarySubject ["serverrules","Serverregeln"];
player createDiarySubject ["behavioral","Verhaltensregeln"];
player createDiarySubject ["penality","Bussgeldkatalog"];
player createDiarySubject ["changelog","Changelog"];
player createDiarySubject ["close","Schlusswort"];





/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

/*	Kopiervorlage
	player createDiaryRecord["",
		[
			"",
				"
				
				"
		]
	];
*/	





	player createDiaryRecord["foreword",
		[
			"Donator",
				"
				Wir haben auf unserem Server ein Donator-System. Der Donator-Status gilt jeweils für einen Monat und ist nach Bezahlung eines Mindestbetrages von 5 Euro verfügbar. Zahlungen im Voraus werden nicht akzeptiert.<br/>
				Als Donator erhältst du Zugriff auf den Donator-Shop und damit auf:<br/>
				- Tempest (Gerät) vergünstigt<br/>
				- Hellcat vergünstigt mit Donator-Skin<br/>
				- Limousine (Sport)<br/>
				- Hunter mit exklusivem Skin<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["foreword",
		[
			"Bank",
				"
				Wir haben die neue Bank von Altis Life 3.1.3.5 auf dem Server. Diese hat einige grundlegende Neuerungen.<br/>
				Es werden verschiedene Gegenstaende benoetigt:<br/>
				- Bolzenschneider<br/>
				- Sprengladung<br/>
				- ein Landfahrzeug<br/><br/>
				Ein Bankraub laeuft jetzt folgendermassen ab:<br/>
				1. Aufbrechen der Banktueren<br/>
				2. Aufbrechen der Tresorraumtueren<br/>
				3. Aufsprengen des Tresors<br/>
				4. Abtransport der geraubten Goldbarren (nur mit Bodenfahrzeug moeglich)<br/>
				5. Verkauf der Goldbarren beim Goldhaendler<br/><br/>
				Die Polizei muss die Tueren und den Tresor nach einem Bankraub reparieren, anderenfalls ist die Bank frei zugaenglich. Ist die Sprengladung plaziert, erscheint ein Timer, der den Explosionszeitpunkt anzeigt. Die Sprengladung muss vor Ablauf des Timers mithilfe des Bombenentschaerfers entschaerft werden.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["foreword",
		[
			"Spezielle Steuerungselemente",
				"
				Left Windows: Hauptinteraktionstaste (Items/Geld aufzuheben, mit Autos zu interagieren, mit Zivilisten zu interagieren)<br/>
				Z: Oeffnen des Spielermenues<br/>
				T: Fahrzeugkofferraum<br/>
				U: Oeffnen/Abschliessen von Fahrzeugen<br/>
				Tab: Spitzhacke benutzen<br/>
				Left Shift + G: Niederschlagen<br/>
				Left Shift + R: Fesseln<br/><br/>
				Left Shift + L: Blaulicht (als Polizist und Medic).<br/>
				F: Sirene (als Polizist und Medic)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["foreword",
		[
			"Daten",
				"
				- Filter: [GER] Pirates of Altis 3.1.3<br/>
				- IP: 78.143.16.231:2302<br/>
				- TS: ts.pirates-of-altis.de:13600<br/>
				- Forum: www.pirates-of-altis.de<br/>
				- Ansprechpartner: mysteryx, Hensball, Estagos, Murmel, Bartelona<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["foreword",
		[
			"Vorwort",
				"
				Das RP liegt uns besonders am Herzen, denn das ist es, was Altis Life so besonders macht. Wenn ihr der gleichen Meinung seid, seid ihr bei uns herzlich willkommen und wir werden alles daran setzen, euch das Spielerlebnis so spannend und abwechslungsreich wie moeglich zu gestalten. Damit das funktioniert, muessen wir jedoch einige Regeln aufstellen, die jeder Spieler unbedingt kennen sollten. Bitte respektiert diese, dann werden ihr und wir mit Sicherheit sehr viel Spass haben. Eure Pirates of Altis.<br/><br/>
				"
		]
	];




	
	player createDiaryRecord["serverrules",
		[
			"Kommunikationsregeln",
				"
				1. Im Sidechat darf nur geschrieben, nicht geredet werden.<br/>
				2. Spamming im Sidechat ist nicht erlaubt und kann mit einem Kick bestraft werden.<br/>
				3. Fuer Kommunikation im Sinne des RPs ist die InGame-Kommunikation vorhanden, nicht der TS. Ausnahmen sind Gangs, Clans, andere Organisationen und Zusammenschluesse und die Polizei.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"New Life",
				"
				Ein neues Leben beginnt, wenn man stirbt.<br/>
				Sollte man in einem Kampf gestorben sein, ist die Rueckkehr zum Ort des Geschehen (1500 Meter Umkreis) fuer 15 Minuten nicht gestattet. Dies gilt auch, wenn dieser Ort sich aendert.<br/>
				Nicht als New Life gelten:<br/>
				- Absichtlicher Selbstmord, um einer RP-Situation zu entkommen<br/>
				- Ein Tod durch RDM/VDM<br/>
				- Verwendung des Respawn-Buttons<br/>
				Tritt New Life in Kraft, darf keine Rache fuer Dinge aus dem vorherigen Leben genommen werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatch (RDM)", 
				"	
				Folgendes ist als RDM anzusehen:<br/>
				1. Grundloses absichtliches Erschiessen anderer Spieler<br/>
				2. Grundloses absichtliches Ueberfahren anderer Spieler (VDM)<br/>
				3. Grundloses Verursachen von Explosionen mit Personenschaden<br/>
				Auch eine Rebellenlizens berechtigt nicht zum wahllosen Toeten!<br/>
				Selbstverteidigung oder das Verteidigen von Freunden oder Gangmitgliedern gilt nicht als RDM.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Safezones",
				"
				Als Safezones sind folgende Bereiche inklusive eines Umkreises von 100 Metern definiert:<br/>
				- alle als solche auf der Map markierte Bereiche<br/>
				- Geldautomaten<br/>
				- Haendler (Markt, Gemischtwarenhaendler, Kleidungshaendler, Fahrzeughaendler, Waffenhaendler)<br/>
				- Garagen<br/>
				Safezones koennen jedoch in Absprache mit den Admins, wenn RP-technisch begruendet, kurzfristig ausser Kraft gesetzt werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Banngruende", 
				"			
				1.  Hacking<br/>
				2.  Cheating<br/>
				3.  Bugusing<br/>
				4.  Glitching<br/>
				5.  Duping<br/>
				6.  Nutzung offensichtlich gehackter Gegenstaende<br/>
				7.  RDM/VDM<br/>
				8.  Unangemessene Beleidigungen und rassistische Namen, Aeusserungen, Parolen<br/>
				9.  Jegliche Aktionen ohne RP-Hintergrund (fortwaehrendes Trolling) oder solche, um RP zu verhindern (absichtlicher Selbstmord, Combatlog)<br/>
				10. Missachtung der New Life-Regeln<br/>
				11. Dreimaliger Kick vom Server.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Allgemeine Informationen",
				"
				Die Serverregeln sind in Kurzform auch im TS im entsprechenden Channel der Eingangshalle zu finden.<br/><br/>
				"
		]
	];

	
	
	
	
	player createDiaryRecord["behavioral",
		[
			"Sanitaeter",
				"
				Sanitaeter sind fuer jedermanns Gesundheit verantwortlich. Sie sind daher dazu angehalten, jeden - unabhaengig von persoenlichen Vorlieben - so gut sie koennen, zu behandeln. Sie besitzen politische Immunitaet.<br/>
				Sanitaeter duerfen nicht:<br/>
				- sich auf einem Schlachtfeld aufhalten oder Gefallene während eines laufenden Gefechtes wiederbeleben. Sie muessen warten, bis das Gefecht zu Ende ist.<br/>
				- an einem Bankraub beteiligte Gefallene wiederbeleben.<br/>
				- Waffen tragen oder auf andere Art und Weise Gewalt ausueben.<br/>
				Missachtet ein Sanitaeter diese Regeln, ist seine politische Immunitaet aufgehoben.<br/>
				Verhalten nach einem Gefecht:<br/>
				- Sieg der Polizei: Wiederbelebung der Rebellen auf Anweisung der Polizei<br/>
				- Sieg der Rebellen: Warten auf Abzug der Rebellen vor der Wiederbelebung der Polizisten, ggf. Anweisungen der Rebellen befolgen<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Polizeiregeln",
				"
				Die Polizei ist folgendermassen untergliedert:<br/>
				1. Kadett<br/>
				2. Polizist<br/>
				3. Polizeimeister<br/>
				4. Bundespolizist<br/>
				5. SEK-Beamter<br/>
				6. Ausbilder<br/>
				7. Polizeidirektor<br/>
				Der ranghoechste Polizist ist fuer jedwede Einsatzleitung sowie fuer die Koordinierung und Aufteilung der Einsatzkraefte zustaendig. Anweisungen hoeherrangiger Polizisten ist unbedingt Folge zu leisten.<br/><br/>
				<br/><br/>
				An folgende Regeln muss sich jeder Polizist halten:<br/>
				1. Toetungen sind unter allen Umstaenden zu vermeiden. Eine Festnahme sollte immer oberste Prioritaet haben. Scharfe Waffen werden nur bei massivem gegnerischen Beschuss verwendet.<br/>
				2. Kavala muss jederzeit durch mindestens zwei Beamte gesichert sein.<br/>
				3. Anwärter duerfen sich nur in Kavala aufhalten, es sei denn, sie werden von einem hoeherrangigen Beamten zu etwas anderem aufgefordert.<br/>
				4. Die aktuelle SEK-Schicht darf hoechstens aus vier Beamten bestehen, nur einer darf mit einem Scharfschuetzengewehr ausgeruestet sein.<br/>
				5. Razzien duerfen nur vom SEK durchgefuehrt werden. Das SEK kann jedoch andere Beamte hinzuziehen, falls die maximale Beamtenzahl nicht erreicht ist.<br/>
				6. Rebellengebiete und illegale Gebiete (Drogengebiete etc.) duerfen nur bei Razzien betreten werden.<br/>
				7. Bei Geiselnahmen hat das Leben der Geisel oberste Prioritaet. NICHTS ist wichtiger als das Leben unschuldiger Buerger.<br/>
				8. Bankueberfaelle duerfen, falls noetig, mit toedlicher Gewalt verhindert werden.<br/>
				9. Streifen muessen aus mindestens zwei Beamten bestehen.<br/>
				10. Auch fuer Polizisten gilt New Life.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Waffengesetz",
				"
				Der Besitz von Waffen ist nicht gestattet.<br/>
				Ausgenommen von dieser Regelung sind die folgenden Waffen bei Besitz eines Waffenscheins:<br/>
				- Rook 40<br/>
				- ACP C2<br/>
				- Zubr .45 Revolver<br/>
				- PDW 2000<br/>
				Diese Waffen duerfen nur ausserhalb von Staedten offen getragen werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Rebellenregeln",
				"
				1. Als Rebell gilt man, wenn man ein Rebellenfahrzeug faehrt oder eine illegale Waffe traegt. Der Besitz der Rebellenlizens ist nicht strafbar.<br/>
				2. Rebellen sind nicht von den RDM-Regeln befreit!<br/>
				3. Rebellen sind Staatsfeinde, also bei Sichtung durch einen Zivilisten unverzueglich der Polizei zu melden und durch diese zu verhaften.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"illegale Substanzen",
				"
				Auf Altis wurde eine Prohibition ausgerufen. Darunter fallen:<br/>
				- Zigarren<br/>
				- Drogen (Marihuana, Heroin, Kokain)<br/>
				- Getraenke mit einem Alkoholgehalt von ueber 15 Prozent<br/>
				Jeglicher Abbau, Besitz, Konsum oder Handel der bzw. mit den genannten Substanzen ist verboten und wird dem Bussgeldkatalog entsprechend geahndet.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Strassen-/Luftverkehr",
				"
				Es gelten folgende Geschwindigkeitsbegrenzungen (unabhaengig von der Beschilderung):<br/>
				- 30 km/h an allen Marktplaetzen der Staedte<br/>
				- 50 km/h in allen Staedten<br/>
				- 70 km/h in allen anderen Ortschaften<br/>
				- auf Landstrassen herrscht keine Geschwindigkeitsbeschraenkung<br/>
				Die minimale Flughoehe ueber Staedten betraegt 200 Meter.<br/>
				Belaestigungen, Behinderungen, Gefaehrdungen und Beschaedigungen im Strassen-/Luftverkehr sind verboten und werden dem Bussgeldkatalog entsprechend geahndet.<br/>
				Das Fuehren illegaler Fahrzeuge ist nicht gestattet. Als solche zaehlen:<br/>
				- saemtliche Fahrzeuge mit Camouflage-Lackierung<br/>
				- saemtliche Polizeifahrzeuge<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Allgemeine Informationen",
				"
				- Als Staedte sind im Folgenden die Ortschaften Kavala, Pyrgos, Athira und Sofia anzusehen.<br/>
				- Der Besitz von Lizenzen, egal ob legal oder illegal, ist nicht strafbar.<br/>
				- Der Bussgeldkatalog ist detailliert im TS im entsprechenden Channel der Eingangshalle zu finden.<br/><br/>
				"
		]
	];
	
	
	
	
	
	player createDiaryRecord["penality",
		[
			"Gefaengniszeiten bei Nichtbezahlen der Strafe",
				"
				Das Ticket muss zweimal gegeben und abgelehnt werden, bevor der Betreffende inhaftiert werden darf.<br/>
				bis 10.000$:  5 Minuten<br/>
				bis 25.000$:  10 Minuten<br/>
				bis 50.000$:  15 Minuten<br/>
				bis 100.000$: 20 Minuten<br/>
				bis 150.000$: 25 Minuten<br/>
				bis 200.000$: 30 Minuten<br/>
				bis 250.000$: 35 Minuten<br/>
				bis 500.000$: 40 Minuten<br/>
				bis 750.000$: 50 Minuten<br/>
				ueber 1.000.000$: 60 Minuten<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Kapitalverbrechen",
				"
				Anstiftung zu einem Verbrechen: Bussgeld des Verbrechens : 2 + Inhaftierung (5 Minuten)<br/>
				Beschuss von Personen/bemannten Fahrzeugen: 20.000$+ Inhaftierung (10 Minuten)<br/>
				Beschuss mit Personenschaden: 75.000$+ Inhaftierung (15 Minuten)<br/>
				fahrlaessige Toetung: 100.000$ + Inhaftierung (20 Minuten)<br/>
				Mord: 200.000$ + Inhaftierung (30 Minuten)<br/>
				versuchte Entfuehrung: 50.000$<br/>
				Entfuehrung: 100.000$ + Inhaftierung (15 Minuten)<br/>
				versuchter Raub: 50.000$<br/>
				Raub: 100.000$ + Inhaftierung (10 Minuten)<br/>
				versuchter Bankraub: 75.000$ + Inhaftierung (15 Minuten)<br/>
				Bankraub: 150.000$ + Inhaftierung (20 Minuten)<br/>
				rebellische Uebernahme: 200.000$ + Inhaftierung (20 Minuten)<br/>
				Terrorismus: 600.000$ + Inhaftierung (40 Minuten)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Umgang mit der Polizei",
				"
				Beamtenbeleidigung: der Haerte der Beleidigung entsprechend zwischen 1.000$ und 15.000$<br/>
				Behinderung der Polzeiarbeit/Missachtung polizeilicher Anweisungen: 7.500$<br/>
				Befreiung festgesetzter Personen: 20.000$<br/>
				Fluchthilfe: 50.000$<br/>
				Gefaengnisausbruch: 75.000$ + Inhaftierung (Restzeit)<br/>
				Betreten einer Sperrzone: 10.000$<br/>
				Widerstand gegen die Staatsgewalt: 25.000$<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"illegale Gegenstaende/Substanzen",
				"
				Alkohol-/Drogenbesitz: Anzahl der betreffenden Gegenstaende x 500$<br/>
				Alkohol-/Drogenkonsum: 10.000$<br/>
				Alkohol-/Drogenhandel: 100.000$ (eine Anzahl ueber 10 gilt nicht mehr als Eigenbedarf)<br/>
				versuchter Taschendiebstahl: 7.500$<br/>
				Taschendiebstahl: 15.000$<br/>
				versuchter Fahrzeugdiebstahl: 10.000$<br/>
				Farhzeugdiebstahl: 20.000$<br/>
				Handel mit gestohlenen Fahrzeugen: Kaufpreis des Fahrzeugs x 2<br/>
				Handel mit Sprengstoffen: Anzahl der Schwarzpulversaecke/Kanonenkugeln x 5.000$, Anzahl der Piratenkugeln x 15.000$<br/><br/>
				Fuehren eines illegalen Fahrzeugs: 50.000$ + Beschlagnahmung/Zerstörung<br/><br/>
				offenes Tragen von Waffen in Staedten: 5.000$<br/>
				Besitz legaler Waffen ohne Waffenschein: 10.000$ + Beschlagnahmung<br/>
				Besitz illegaler Waffen: 50.000$ + Beschlagnahmung<br/>
				Abfeuern von Waffen (Selbstverteidigung ausgenommen): 30.000$ + Beschlagnahmung<br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Luftverkehr",
				"
				Fliegen ohne Pilotenschein: 30.000$<br/>
				Fliegen ohne Kollisionslichter: 10.000$<br/>
				Nichteinhaltung der Mindestflughoehe: 10.000$<br/>
				Landen innerhalb von Staedten/auf Strassen: 20.000$ (ausgenommen sind als solche gekennzeichnete Landebereiche)<br/>
				Fliegen unter Alkohol-/Drogeneinfluss: 100.000$<br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Strassenverkehr",
				"
				Geschwindigkeitsueberschreitungen:<br/>
				- 10 km/h: 2.000$ (gilt nur fuer Marktplaetze und Staedte)<br/>
				- 20 km/h: 5.000$<br/>
				- 50 km/h: 20.000$<br/>
				- 75 km/h: 50.000$<br/>
				- 100 km/h: 100.000$<br/>
				- 150 km/h: 150.000$<br/>
				- 200 km/h: 200.000$<br/>
				Ruhestoerung: 5.000$<br/>
				Fahren ohne Fahrerlaubnis: 10.000$<br/>
				Fahren ohne Licht: 2.500$<br/>
				Falschparken/Verkehrsbehinderung: 2.500$<br/>
				Fahren unter Alkohol-/Drogeneinfluss: 20.000$<br/>
				Verursachen eines Unfalls: 7.500$<br/>
				Verursachen eines Unfalls mit Personenschaden: 15.000$<br/>
				Fahrerflucht: 50.000$<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Allgemeine Informationen",
				"
				Als Staedte werden im Folgenden die Ortschaften Kavala, Pyrgos, Athira und Sofia bezeichnet.<br/><br/>
				"
		]
	];
	
	
	
	
	
	player createDiaryRecord["changelog",
		[
			"11.06.14",
				"
				Added: Altis Life 3.1.3<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"14.06.14",
				"
				Added: Autobahn Checkpoint<br/>
				Added: Checkpoints<br/>
				Added: Marktplatz<br/>
				Added: Zivilisten Skins<br/>
				Changed: Medic Skins<br/>
				Changed: Polizei Skins<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"15.06.14",
				"
				Added: Lizenzhaendler an den Marktplaetzen<br/>
				Added: Lizenzhaendler im Rebellen HQ<br/>
				Added: Safezones eingezeichnet<br/>
				Changed: Haendler zu Marktplaetzen zentriert<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"17.06.14",
				"
				Added: Rebellenspawn<br/>
				Added: Handschellensound<br/>
				Added: Einstellbare Gefaengniszeit<br/>
				Changed: Respawnzeit und erhoehte Respawnzeit auf Medic Request<br/>
				Bugfix: Sammelbug<br/>
				Bugfix: Medic kann nicht mehr auf WantedListe zugreifen<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"22.06.14",
				"
				Changed: Auf-/Abschliesssound geaendert<br/>
				Added: Hotkey (O) fuer Cops zum Oeffnen von Schranken<br/>
				Added: Alarmanlage<br/>
				Added: Entwaffnen fuer Cops (wenn festgenommen)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"23.06.14",
				"
				Added: Flashbang fuer SEK<br/>
				Added: Schalldaempfer fuer Rebellen<br/>
				Added: Abseilen aus Helikopter nun moeglich<br/>
				Changed: Willkommensnachricht<br/>
				Changed: Regeln auf dem Server<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"28.06.14",
				"
				Added: 3.1.3.5<br/>
				Added: Neue Bank<br/>
				Added: Sicherheitskameras in der Bank<br/>
				Added: Bolzenschneider<br/>
				Added: Sprengladung<br/>
				Added: Bombenentschaerfer<br/>
				Added: Rebellenmarkt<br/>
				Added: Tempomat<br/>
				Added: Als Rebell festnehmen und interagieren<br/>
				Added: Hinsetzen/Aufstehen<br/>
				Added: Kraftwerke<br/>
				Added: Zweite Sirene (Yelp)<br/>
				Added: Transportscript<br/>
				Added: Mehr Waffen und Zubehoer fuer Rebellen und Polizei<br/>
				Changed: Abbauvolumen wird dem Zufall ueberlassen<br/>
				Bugfix: CopLight<br/>
				Bugfix: Sounds<br/>
				Bugfix: Spitzhacke ueber Z-Menue mit Aktionstaste<br/>
				Diverse andere Bugfixes<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"29.06.14",
				"
				Added: Mohawk<br/>
				Diverse Bugfixes<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Allgemeine Informationen",
				"
				Der Changelog ist auch im TS im entsprechenden Channel der Eingangshalle zu finden.<br/><br/>
				"
		]
	];
	
	
	
	
	
	player createDiaryRecord["close",
		[
			"Edit",
				"
				edited by Bartelona
				"
		]
	];
	
	player createDiaryRecord["close",
		[
			"Links",
				"
				ArmA 3: www.arma3.com<br/>
				Altis Life: www.altisliferpg.com<br/>
				Pirates of Altis: www.pirates-of-altis.de<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["close",
		[
			"Schlusswort",
				"
					Trotz der vielen Regeln und Gebote, die leider unabdingbar sind, um den Spielspass zu erhalten, sind wir auch nur Menschen. Wenn ihr also Zweifel habt, ob etwas richtig abgelaufen ist oder wenn ihr Verbesserungsvorschlaege habt, zoegert bitte nicht, uns entweder im TS oder InGame anzusprechen und im Supportbereich zu warten, damit wir uns so schnell wie moeglich um euer Anliegen kuemmern koennen. Solltet ihr Fragen das Spiel betreffend haben, koennte euch auch der im TS vorhandene FAQ-Channel in der Eingangshalle helfen. Eure Pirates of Altis.<br/><br/>
				"
		]
	];