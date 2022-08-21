#!/bin/bash
# Name:              aufgabe-001.sh
#
# Max. Punkte:       8
#
# Themenbereich:     Suchen und ersetzen von Text
#
# Schreiben Sie ein  Script, das die folgenden Anforderungen erfüllt:
# Hauptfunktion:     Liest die  Datei test.txt:
#
#                    1 Zeilentext 1
#                    002 Zeilentext 2
#                    3. Zeilentext 3
#                    4) Zeilentext 4
#                    Zeilentext 5
#
#                    und gibt Zeilen ohne die Nummeierung am Zeilenanfang auf die
#                    Standardausgabe aus.
#                    Zeilen ohne Nummerierung am Zeilenanfang sollen
#                    unverändert ausgegeben werden.
#
#                    Die Datei wird als 1. Argument übergeben. Beispiel:
#                    ./aufgabe-001.sh test.txt
#                    hat die Ausgabe:
#                    Zeilentext 1
#                    Zeilentext 2
#                    Zeilentext 3
#                    Zeilentext 4
#                    Zeilentext 5
#
#                    Ohne Angabe einer Datei liest das Script von der
#                    Standardeingabe. Beispiel:
#                    cat test.txt |  ./aufgabe-001.sh
#
# Fehlerbehandlung:  Keine
#
# Einschränkungen:   1. Benennen Sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
#
# Hinweise:          Die Aufgabe kann mit einem einem einzigen Kommando
#                    gelöst werden. Sie können die Datei test.txt
#                    zum Testen verwenden
# ******************** Ihre Lösung: ********************
sed 's/^[0-9]*[.)]* //' $1
#sed 's/^.*Zeilentext/Zeilentext/' textfile2.txt


#!/bin/bash
# Name:              aufgabe-002.sh
#
# Max. Punktzahl:    34
#
# Themenbereich:     Automatisierter Test von Scripts, Protokollierung der
#                    Ausgaben auf stdout und stderr und des Exit-Codes
#
# Schreiben Sie  Script, das die folgenden Anforderungen erfüllt:
#
# Hauptfunktion:     a) Ein Kommando, das dem Script übergeben wird, wird
#                    im Script ausgeführt. Keinerlei Ausgaben des Kommandos
#                    sollen angezeigt werden.
#                    Stattdessen sollen sie zusammen  mit der Information,
#                    ob das Kommando erfolgreich war, in der Logdatei
#                    aufgabe-002.sh protokolliert werden.
#
#                    b) Die Logdatei wird in einem Verzeichnis angelegt,
#                    das in der Umgebungsvariablen LOGDIR festgelegt ist.
#                    Wenn LOGDIR leer ist oder nicht existiert, liegt die
#                    Logdatei im Home-Vereichnis des Benutzers.
# 
#                    c) Jeder Eintrag in der Logdatei beginnt mit einer
#                    Statuszeile. Sie enthält Datum und der Uhrzeit im Format
#                    JJJJ.MM.TT HH:MM:SS, das Kommando selbst und bei Erfolg
#                    des Kommandos das Wort SUCCESS, bei Misserfolg FAILURE.
#                    Nach FAILURE steht der Exit-Code des Kommandos.
#                    Anschliessend werden die Ausgaben des Kommandos in der
#                    Datei protokolliert.  Beachten Sie das genaue Format der
#                    Einträge in den folgenden Beispielen!
#
#                    Beispiel 1: Aufruf von ./aufgabe-002.sh pwd
#                    Die folgenden Zeilen werden an die Logdatei angehängt:
#                    2020.08.11 10:43:50 pwd SUCCESS
#                    /home/student/aufgaben
#
#                    Beispiel 2: Aufruf ist ./aufgabe-002.sh 'mkdir /student'
#                    Das mkdir-Kommando schlägt fehl.
#                    Die folgenden Zeilen werden an die Logdatei angehängt:
#                    2020.08.11 10:44:52 mkdir /student FAILURE Exit-Code: 1
#                    mkdir: cannot create directory ‘/student’: Permission denied
#
#                    d) Die Lösung soll auch funktionieren, wenn das übergebene
#                    Kommando Pipes enthält, z.B. beim Aufruf von
#                    ./aufgabe-002.sh 'ps | sort'
#
#                    e) Wenn das Kommando mehrere Zeilen ausgibt, sollen die
#                    ausgegebenen Zeilen auch im Logfile als einzelne Zeilen
#                    erscheinen
#
#                    f) Nach normaler Ausführung gibt Ihr Script den
#                    Exit-Code 0 zurück.
#
# Fehlerbehandlung:  g)  Wenn beim Aufruf des Scripts kein Kommando angegeben
#                    wurde, wird die folgende Fehlermeldung auf stderr ausgegeben:
#                    'usage: aufgabe-002.sh command'
#                    In diesem Fall wird abgebrochen und der Exit-Code 1
#                    zurückgegeben
#
#                    h)  Wenn nicht in die Logdatei geschrieben werden kann, wird
#                    die folgende Fehlermeldung auf stderr ausgegeben:
#                    'error: cannot write to logfile ', gefolgt von Pfad und
#                    Dateinamen der Logdatei. Das Script wird abgebrochen und der
#                    Exit-Code 2 zurückgegeben.
#
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
#
# Hinweise           Für eine nur teilweise den Anforderungen a-h entsprechende
#                    Lösung  können Teilpunkte erzielt werden
#                    Es ist möglich, die Aufgabe mit oder ohne Verwendung von
#                    temporären Dateien zu lösen
#
# ******************** Ihre Lösung: ********************

LOGDIR=${LOGDIR:=~/}
datum=$(date +'%Y.%m.%d %H:%M:%S')

if [ $# -gt 0 ];then

	command="$*"
else
	echo 'usage: aufgabe-002.sh command'
	exit 1
fi
if [ ! -w $LOGDIR/aufgabe-002.log ];then
	echo "error: cannot write to logfile $LOGDIR/aufgabe-002.log"
	exit 2
fi
exec >>$LOGDIR/aufgabe-002.log 2>&1

eval $command
ecode=$?

if [ $? -eq 0 ]
then
	echo "$datum $command SUCCESS"
else
	echo "$datum $command FAILURE $ecode" 
fi


######################### 
exit 2
then echo $datum  "${1}" SUCCESS >>$log 2>&1
${1} >>$log 2>&1

else
echo $datum "${1}" FAILURE ExitCode:$? >>$log 2>&1
${1} >>$log 2>&1
fi



LOGDIR=${LOGDIR:=~/}

logfile=aufgabe-002.sh
log=${LOGDIR}${logfile}
datum=`date +"%Y.%m.%d %H:%M:%S"`

echo "Logdir $LOGDIR"
echo "Logfile $logfile"

touch $log

if [ $# -eq 0 ];then
echo 'usage: aufgabe-002.sh command'
exit 1
fi

if [ ! -w $log ];then
echo "error: cannot write to logfile $log"
exit 2
fi

(${1}) >/dev/null 2>&1
if [ $? -eq 0 ]
then echo $datum  "${1}" SUCCESS >>$log 2>&1
${1} >>$log 2>&1

else
echo $datum "${1}" FAILURE ExitCode:$? >>$log 2>&1
${1} >>$log 2>&1
fi

cat $log
#!/bin/bash
# Name:              aufgabe-003.sh
#
# Max. Punkte:       30
#
# Themenbereich:     Benutzerverwaltung, Gruppenverwaltung, Datei-Berechtigungen
#
# Schreiben Sie ein Script, das die Kommandos enthält,  die die folgenden
# Anforderungen  erfüllen:
#
# Hauptfunktionen:   a) Legen Sie die  Gruppen teachers, students, class1 und # class2 an
#
#                    b) Legen Sie folgende  Benutzer mit home-Verzeichnis an:
#
#                    Account  | Passwort | PrimäreGruppe | Weitere Gruppen
#                    ----------------------------------------------------
#                    pat      | pat      | students      | class1
#                    may      | may      | students      | class1
#                    ben      | ben      | students      | class2
#                    joe      | joe      | students      | class2
#                    moe      | moe      | teachers      | sudo,class1,class2
#                    sue      | sue      | teachers      | sudo,class1,class2
#
#                    Die Shell für alle Benutzer soll /bin/bash sein
#
#                    c) Setzen Sie die Passwörter gemäss der Tabelle
#
#                    d) Zeigen Sie mit geeigneten Kommandos an, ob Gruppen,
#                      User und Passwörter korrekt eingerichtet sind
#
#                    e) Richten Sie die folgenden Verzeichnisse ein:
#
#                    /school/class1
#                    /school/class2
#                    /school/teachers/aufgaben
#                    /school/teachers/loesungen
#                    /home/moe/privat
#                    /home/sue/privat
#
#                    Stellen Sie die folgenden Bedingungen durch eine
#                    geeignete Zuweisung der Eigentümerschaft und
#                    Berechtigungen der Verzeichnissen sicher:
#                       f) Dateien in /school/class1 können nur von pat, may,
#                          moe und sue aufgelistet, angelegt, gelesen,
#                          gelöscht und geändert werden.
#                       g) Dateien in /school/class2 können nur von ben, joe,
#                          moe und sue aufgelistet, angelegt, gelesen,
#                          gelöscht und geändert werden.
#                       h) Dateien in /school/teachers/aufgaben können nur
#                          von moe und sue angelegt, gelöscht und geändert
#                          werden. Alle Benutzer können die Dateien auflisten
#                          und lesen.
#                       i) Dateien in /school/teachers/loesungen können nur
#                          von moe und sue aufgelistet, gelesen, angelegt,
#                          gelöscht und geändert werden.
#                       j) Dateien in /home/moe können nur von moe und sue
#                          aufgelistet und gelesen werden.
#                          Nur moe kann hier Dateien anlegen, löschen und
#                          verändern.
#                       k) Dateien in /home/sue können nur von moe und sue
#                          aufgelistet und gelesen werden.
#                          Nur sue kann hier Dateien anlegen, löschen und
#                          verändern.
#                       l) Auf die Dateien in /home/moe/privat kann nur moe
#                          zugreifen (Lesen, Schreiben, Löschen, Auflisten)
#                       m) Auf die Dateien in /home/sue/privat kann nur sue
#                          zugreifen (Lesen, Schreiben, Löschen, Auflisten)
#                    Anmerkung: Der account root hat natürlich überall alle
#                    Berechtigungen
#
# Hinweise:          Nehmen Sie an, dass das Script als root oder mit sudo
#                    ausgeführt wird. Sie brauchen also nicht sudo vor
#                    jedem Kommando angeben.
#
# ******************** Ihre Lösung: ********************




# 2 Punkte - Gruppen anlegen (Falls noch nicht vorhanden). Ihre Kommandos:
groupadd teachers
groupadd students
groupadd class1
groupadd class2

# 3 Punkte -  User Accounts anlegen. Ihre Kommandos:
#useradd -m username

#useradd -m username
#Usermod -aG pat students

useradd -m -g students -G class1 pat
useradd -m -g students -G class1 may
useradd -m -g students -G class2 ben
useradd -m -g students -G class2 joe
useradd -m -g teachers -G sudo,class1,class2 moe
useradd -m -g teachers -G sudo,class1,class2 sue


#Account  | Passwort | PrimäreGruppe | Weitere Gruppen
#pat      | pat      | students      | class1
#may      | may      | students      | class1
#ben      | ben      | students      | class2
#joe      | joe      | students      | class2
#moe      | moe      | teachers      | sudo,class1,class2
#sue      | sue      | teachers      | sudo,class1,class2


# 2 Punkte - Passwörter setzen. Ihre Kommandos:
#PW
usermod --password pat pat
usermod --password may may
usermod --password ben ben
usermod --password joe joe
usermod --password moe moe
usermod --password sue sue

echo pat:pat | chpasswd
echo may:may | chpasswd
echo ben:ben | chpasswd
echo joe:joe | chpasswd
echo moe:moe | chpasswd
echo sue:sue | chpasswd

# 3 Punkte - Bisherige Ergebnisse überprüfen. Ihre Kommandos:
ls -l /home
cat /etc/passwd
getent group teachers students class1 class1 sudo
getent passwd pat may ben joe moe sue
getent shadow pat may ben joe moe sue

# 4 Punkte - Verzeichnisse anlegen. Ihre Kommandos:
mkdir -p /school/class1
mkdir -p /school/class2
mkdir -p /school/teachers/aufgaben
mkdir -p /school/teachers/loesungen
mkdir /home/moe/privat
mkdir /home/sue/privat

# 12 Punkte - Besitzer, Gruppeni und Berechtigungen setzen. Ihre Kommandos:

chgrp class1 /school/class1
chmod g+w,o-x /school/class1
chgrp class2 /school/class2
chmod g+w,o-x /school/class2
chgrp -R teachers /school/teachers
chmod g+w /school/teachers
chmod o-rx /school/teachers/loesungen
chown moe /home/moe/privat
chmod go-rx /home/moe/privat
chown sue /home/sue/privat
chmod go-rx /home/sue/privat





#!/bin/bash
# Name:              aufgabe-004.sh
#
# Max. Punkte:       10
#
# Themenbereich:     Konfiguration von SSH-Logins
#
# Schreiben Sie  Script, das die folgenden Anforderungen erfüllt:
# Hauptfunktion:     a) Konfiguriert das System so, dass ein SSH-Login
#                       als Benutzer root möglich ist
#                    b) Das root-login soll sofort nach Ausführung
#                       des Scripts möglich sein.
#
# Fehlerbehandlung:  Keine
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
# Hinweise:          Die Aufgabe kann mit zwei Kommandois gelöst werden
#                    Die Lösung soll nicht-interaktiv erfolgen, d.h.
#                    nicht manuell mit einem Editor
#                    Nehmen Sie an, das Script wird mit
#                    root-Berechtigungen ausgeführt
#                    Wenn Sie den Erfolg  testen wollen, können Sie mit
#                    sudo passwd root ein Passwort für root setzen
#
#                    Vorsicht: Wenn Sie bei der Konfiguration einen
#                    Fehler machen, kann das dazu führen, dass Sie sich
#                    nicht mehr anmelden können!
#

# ******************** Ihre Lösung: ********************

sed -i 's/^PermitRootLogin no/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart


#!/bin/bash
# Name:              aufgabe-005.sh
#
# Max. Punkte:       4
#
# Themenbereich:     Systeminformationen abfragen
#
# Schreiben Sie  Script, das die folgenden Anforderungen erfüllt:
# Hauptfunktion:     a) Zeigt die Zeit des letzen Systemstarts an
#                    b) Die Form der Ausgabe ist (Beispiel):
#                      'Das System läuft seit 2020-08-13 15:17:15'
#
# Fehlerbehandlung:  Keine
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
# Hinweise:          Die Aufgabe kann mit einer Zeile gelöst werden,
#                    aber auch mit mehreren Zeilen
# ******************** Ihre Lösung: ********************


echo "Das System läuft seit $(uptime -s)"
#!/bin/bash
# Name:              aufgabe-006.sh
#
# Max. Punkte        10
#
# Themenbereich:     Shell-Funktionen definieren und nutzen
#
# Hauptfunktion      a) Erzeugen Sie eine Funktionsbibliothek mylib, in der
#                    die Funktion am_i_root() definiert wird.
#                    Sie prüft, ob sie vom user root aufgerufen wurde.
#                    Wenn ja, gibt sie den Wert 0 zurück, wenn nein 1.
#                    Die Datei mylib soll im Verzeichnis
#                    /home/student/loesungen liegen
#
#                    b) Schreiben Sie hier in aufgabe-006.sh die nötigen
#                       Anweisungen, um die Funktion zur Verfügung zu haben
#                       und zu testen.
#
#                    c) Wenn das Script als root aufgerufen wird, ist die
#                       Ausgabe:
#                       'You are root'
#                       Ansonsten ist die Ausgabe:
#                       'You are just a normal user, but mom loves you anyway'
#
# Fehlerbehandlung:  Keine
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
#
# Hinweise:          Zum Testen können Sie sudo oder su verwenden.
#                    Das Passwort des
#                    root-Users können Sie selbst mit sudo setzen.
# ******************** Ihre Lösung: ********************

# s_writable_dir prüft, ob das erste Argument der Funktion der Name eines Verzeichnisses ist
#am_i_root() {
#    if [ $(id -u) -eq 0 ]; then
#        return 0
#    fi
#    return 1
#}
#********************
source /home/student/mylib

if am_i_root; then
   echo 'You are root'
else
   echo 'You are just a normal user, but mom loves you anyway'
fi

#!/bin/bash
# Name:              aufgabe-7.sh
# Themen:            Kommandos zur Text-Manipulation in Dateien, if oder case
# Aufgabe:           Schreiben Sie eine Kommandozeile, die folgende Aufgabe erfüllt:
# Hauptfunktion:     In der Datei /etc/ssh/sshd_config soll die Einstellung, ob ein Login
#                    mit Passwort systemweit erlaubt oder verboten ist, geändert werden
#                    "PasswordAuthentication" ist das entsprechende Schlüsselwort in der Datei.
#                    a) PasswordAuthentication yes wird dort durch PasswordAuthentication no ersetzt,
#                       wenn das 1. Argument des Scripts "no" ist
#                    b) PasswordAuthentication no wird dort durch PasswordAuthentication yes ersetzt,
#                       wenn das 1. Argument des Scripts "yes" ist
#                    c) wenn das 1. Argument "status" ist, wird  Zeile aus /etc/ssh/sshd_config,
#                       die "PasswordAuthentication " enthält ausgegeben
#                    Nehmen Sie an, dass das Script als root oder mit sudo aufgerufen wurde und Sie
#                    somit die Berechtigung haben, die Datei zu ändern
# Beispiel:
#                    $ aufgabe-7.sh  yes
#                    $ aufgabe-7.sh  status
#                    PasswordAuthentication yes
#
#                    $ aufgabe-7.sh  no
#                    $ aufgabe-7.sh  status
#                    PasswordAuthentication no
#
# Fehlerbehandlung:  e) Prüfung, ob "yes","no" oder "status" angegeben wurde.
#                       Fehlermeldung auf stderr, falls nicht:
#                       "usage: aufgabe-7.sh yes|no|status"
#                    f) Im Fehlerfall: Beenden des Scripts mit dem Rückgabewert 1
#
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
#                    3. Verwenden sie keinen interaktiven Editor, sondern ein Kommando für die
#                       Änderung
# ******************** Ihre Lösung: ********************

status=$1
case $status in
  "yes")    sed -i 's/PasswordAuthentication *no/PasswordAuthentication yes/' /etc/ssh/sshd_config
            ;;
  "no")     sed -i 's/PasswordAuthentication *yes/PasswordAuthentication no/' /etc/ssh/sshd_config
            ;;
  "status") egrep 'PasswordAuthentication *(yes|no)' /etc/ssh/sshd_config
            ;;
  *)        echo "usage: $(basename $0) yes|no|status"
            exit 1
esac
