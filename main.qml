import QtQuick 2.11
import QtQuick.Window 2.12
import QtQuick.Templates 2.13
import QtQuick.Controls 2.13
import QtLocation 5.6
import QtPositioning 5.6



Window {
    id:main
    width: 480; height: 320
    color: "#df93969b"
    flags: Qt.Window | Qt.FramelessWindowHint | Qt.WindowFullscreen
    visible: true

    Image {
        id: image
        x: 186
        width: 91
        height: 45
        anchors.top: parent.top
        anchors.topMargin: 0
        fillMode: Image.PreserveAspectFit
        source: "images/logo.png"
    }

    SwipeView {
        id: swipeView
        x: 140
        y: 79
        width: 200
        height: 200
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 46
        currentIndex: 0
        anchors.fill:parent

        Page {
            id: page1
            Rectangle {
                id: rectangleBattery
                x: 403
                y: 1
                width: 74
                height: 70
                color: "#a70104e4"
                radius: 15
                border.color: "#0d1498"
                border.width: 5

                ProgressBar {
                    id: progressBar
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 34
                    anchors.top: parent.top
                    anchors.topMargin: 8
                    value: 0.5
                }

                Image {
                    id: image3
                    anchors.rightMargin: -2
                    anchors.leftMargin: -4
                    anchors.bottomMargin: -6
                    anchors.topMargin: 26
                    anchors.fill: parent
                    clip: true
                    fillMode: Image.PreserveAspectFit
                    source: "hiclipart.com.png"
                }
            }

            Rectangle {
                id: rectangleTotalKm
                x: 3
                y: 1
                width: 75
                height: 71
                color: "#a0120f0f"
                radius: 15
                border.color: "#191515"
                border.width: 5

                Text {
                    id: tdistance1
                    x: 6
                    y: 4
                    width: 53
                    height: 27
                    text: qsTr("100 ")
                    font.pixelSize: 28
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }

                Image {
                    id: image8
                    anchors.rightMargin: 2
                    anchors.bottomMargin: 2
                    anchors.leftMargin: 22
                    anchors.topMargin: 30
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "mission.png"
                }
            }

            Rectangle {
                id: rectangleTripKm
                x: 83
                y: 1
                width: 75
                height: 71
                color: "#a053f9f9"
                radius: 15
                border.color: "#057676"
                border.width: 5



                Image {
                    id: image5
                    x: -6
                    y: 13
                    width: 97
                    height: 50
                    clip: true
                    fillMode: Image.PreserveAspectFit
                    source: "pngtube.com-roadmap-png-4341369.png"
                }
                Text {
                    id: element19
                    x: 29
                    y: 8
                    width: 30
                    height: 21
                    text: qsTr("Km")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }

                Text {
                    id: tdistance2
                    x: 0
                    y: 8
                    width: 75
                    height: 19
                    text: qsTr("10")
                    font.pixelSize: 30
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }

                Text {
                    id: element20
                    x: -34
                    y: 10
                    width: 30
                    height: 21
                    text: qsTr("Km")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: rectangleHiz
                x: 164
                y: 1
                width: 75
                height: 71
                color: "#a0d05555"
                radius: 15
                border.color: "#592626"
                border.width: 5

                Text {
                    id: tdistance3
                    x: 0
                    y: 8
                    width: 75
                    height: 19
                    text: qsTr("12")
                    font.pixelSize: 40
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }

                Text {
                    id: element16
                    x: 45
                    y: 7
                    width: 30
                    height: 20
                    text: qsTr("Km/s")
                    font.pixelSize: 12
                }

                Image {
                    id: image4
                    width: 30
                    height: 30
                    clip: true
                    anchors.rightMargin: 10
                    anchors.leftMargin: 16
                    anchors.bottomMargin: 0
                    anchors.topMargin: 33
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "dashboard.png"
                }
            }

            Rectangle {
                id: rectangleOrtHiz
                x: 243
                y: 0
                width: 75
                height: 71
                color: "#a0f0f62f"
                radius: 15
                border.color: "#69690d"
                border.width: 5

                Text {
                    id: tdistance4
                    x: 5
                    y: 8
                    width: 75
                    height: 19
                    text: qsTr("9")
                    font.pixelSize: 40
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }

                Text {
                    id: element17
                    x: 28
                    y: 8
                    width: 30
                    height: 21
                    text: qsTr("Km/s")
                    font.pixelSize: 12
                }

                Image {
                    id: image6
                    anchors.leftMargin: 28
                    anchors.topMargin: 27
                    anchors.fill: parent
                    clip: true
                    fillMode: Image.PreserveAspectFit
                    source: "trzcacak.rs-statistics-icon-png-2224826.png"
                }
            }

            Rectangle {
                id: rectangleKalori
                x: 324
                y: 1
                width: 75
                height: 71
                color: "#a0c80112"
                radius: 15
                border.width: 5
                border.color: "#790a13"

                Text {
                    id: tdistance5
                    x: 0
                    y: 8
                    width: 75
                    height: 19
                    text: qsTr("120")
                    font.pixelSize: 30
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }

                Text {
                    id: element18
                    x: 48
                    y: 8
                    text: qsTr("KCal")
                    font.pixelSize: 12
                }

                Image {
                    id: image7
                    anchors.topMargin: 27
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "calorie.png"
                }
            }


            Rectangle {//mapin karesi
                id: rectangle8
                x: 38
                y: 78
                width: 400
                height: 175

                Plugin {
                    id: mapPlugin
                    name: "mapboxgl" // "mapboxgl", "esri", ...
                    // specify plugin parameters if necessary
                    // PluginParameter {
                    //     name:
                    //     value:
                    // }
                }

                Map{
                    id: map
                    opacity: 1
                    visible: true
                    anchors.fill:parent
                    center: QtPositioning.coordinate(59.91, 10.75) // Oslo
                    zoomLevel: 14
                }
            }


            Button {
                id: button3
                x: 394
                y: 215
                width: 85
                height: 51
                text: qsTr("[   ]")
                font.pointSize: 23
                font.wordSpacing: 0
                onClicked:{
                    swipeView.currentIndex=2;
                }

                Image {
                    id: image2
                    x: -2
                    y: 0
                    width: 87
                    height: 43
                    fillMode: Image.PreserveAspectFit
                    source: "images/konum-icon-png.png"
                }
            }

        }


        Page {
            id: page2
            enabled: false
            hoverEnabled: false
            Dashboard {
                anchors.topMargin: 50
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: element1
                x: 154
                y: 0
                width: 151
                height: 20
                text: qsTr("Göstergeler")
                visible: true
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 13
            }
        }

        Page {
            id: page3

            Text {
                id: element2
                x: 154
                y: 0
                width: 151
                height: 20
                text: qsTr("Harita")
                visible: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 13
                verticalAlignment: Text.AlignVCenter
                font.bold: true
            }



        }
        Page {
            id: page4

            ComboBox {

                id: profilComboBox
                x: 76
                y: 8
                width: 134
                height: 28
                font.pointSize: 15
                flat: false
                //displayText: "Profil Seçin"
                currentIndex: -2

                model: ["Mustafa","Ali"]



                //tiklandigi zaman secilen profilin bilgilerini gereken yerlere koyacak ve duzenle switchini enable yapacak


                onCurrentTextChanged:
                {
                    element6.text = model[currentIndex]
                    profilDuzenleSwitch.enabled = true


                }








            }

            Text {
                id: element21
                x: 10
                y: 13
                text: qsTr("Profil :")
                font.pixelSize: 20
            }

            Button {
                id: profilYeniProfilTusu
                x: 360
                y: 5
                width: 113
                height: 31
                text: qsTr("Yeni Profil")
                font.family: "Arial"
                font.pointSize: 15

                /*
                yeni profil tusuna basinca butonun texti olustur olacak, altinda vazgec butonu visible olcak
                kilo ve km sifirlanacak.manipule tuslari tiklanabilir olacak
                ayni tusa bi kere daha tiklayinca ( text = olustur halinde ise ) verileri alip profiller.txt ye yazacak
                vazgece tiklayinca eski veriler gelecek.
                Eski profilin hangisi oldugu ve bir onceki profilin hangisi oldugu txt nin son elemanı neyse o olarak bilinecek


                profiller.txt su sekilde olacak:

                  Mustafa
                  085
                  00150
                  Ahmet
                  070
                  000295
                  Mehmet
                  095
                  000122
                  bosSatir



                bu sekilde baslangicta hangi profilin konacagi ilk satirdaki isimden,
                profillerdeki isim kilo ve kilometre degerleri de isim = i*3 + 0
                                                                  kilo = i*3 + 1
                                                             kilometre = i*3 + 2

                indeksleriyle buluruz. Program baslarken bunlar txt den cekilip satir satir diziye konur, calisirken de bu indekslerden cekilir
                yeni profil eklerken de önce dizinin sonuna append yapılır, sonra dizidekiler txt ye yazılır.
                Yeni profil eklerken en sona her zaman bos bi satir birakmak önemli. Obur turlu cakismalar olur, sistem calismaz

                */



            }

            Text {
                id: element22
                x: 155
                y: 85
                width: 54
                height: 31
                text: qsTr("Kilo :")
                font.pixelSize: 25
            }

            Text {
                id: profilKiloYuzler
                x: 218
                y: 76
                width: 26
                height: 40
                text: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 35
            }

            Text {
                id: profilKiloOnlar
                x: 252
                y: 76
                width: 26
                height: 40
                text: qsTr("8")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 35
            }

            Text {
                id: profilKiloBirler
                x: 286
                y: 76
                width: 26
                height: 40
                text: qsTr("8")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 35
            }

            Text {
                id: element26
                x: 318
                y: 76
                text: qsTr("Kg.")
                font.pixelSize: 35
            }

            Button {
                id: profilKiloYuzlerArti
                x: 218
                y: 54
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                checkable: false
                font.pointSize: 7

                onClicked:
                    if(profilKiloYuzler.text < 9 )
                        profilKiloYuzler.text ++
            }

            Button {
                id: profilKiloOnlarArti
                x: 252
                y: 54
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKiloOnlar.text < 9 )
                        profilKiloOnlar.text ++
            }

            Button {
                id: profilKiloBirlerArti
                x: 286
                y: 54
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                font.pointSize: 7
                onClicked:
                    if(profilKiloBirler.text < 9 )
                        profilKiloBirler.text ++

            }

            Button {
                id: profilKiloYuzlerEksi
                x: 218
                y: 114
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKiloYuzler.text > 0 )
                        profilKiloYuzler.text --
            }

            Button {
                id: profilKiloOnlarEksi
                x: 252
                y: 114
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKiloOnlar.text > 0 )
                        profilKiloOnlar.text --
            }

            Button {
                id: profilKiloBirlerEksi
                x: 286
                y: 114
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKiloBirler.text > 0 )
                        profilKiloBirler.text --


            }

            Text {
                id: element23
                x: 18
                y: 184
                width: 209
                height: 31
                text: qsTr("Kat Edilen Mesafe:")
                font.pixelSize: 23
            }

            Text {
                id: profilKilometreBinler
                x: 252
                y: 177
                width: 26
                height: 40
                text: qsTr("0")
                font.pixelSize: 35
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: profilKilometreYuzler
                x: 286
                y: 177
                width: 26
                height: 40
                text: qsTr("8")
                font.pixelSize: 35
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: profilKilometreOnlar
                x: 320
                y: 177
                width: 26
                height: 40
                text: qsTr("8")
                font.pixelSize: 35
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: element27
                x: 386
                y: 177
                text: qsTr("Km.")
                font.pixelSize: 35
            }

            Button {
                id: profilKilometreBinlerArti
                x: 252
                y: 155
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreBinler.text < 9 )
                        profilKilometreBinler.text ++
            }

            Button {
                id: profilKilometreYuzlerArti
                x: 286
                y: 155
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreYuzler.text < 9 )
                        profilKilometreYuzler.text ++
            }

            Button {
                id: profilKilometreOnlarArti
                x: 320
                y: 155
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreOnlar.text < 9 )
                        profilKilometreOnlar.text ++
            }

            Button {
                id: profilKilometreBinlerEksi
                x: 252
                y: 215
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreBinler.text > 0 )
                        profilKilometreBinler.text --
            }

            Button {
                id: profilKilometreYuzlerEksi
                x: 286
                y: 215
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreYuzler.text > 0 )
                        profilKilometreYuzler.text --
            }

            Button {
                id: profilKilometreOnlarEksi
                x: 320
                y: 215
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreOnlar.text > 0 )
                        profilKilometreOnlar.text --
            }

            Text {
                id: profilKilometreOnbinler
                x: 218
                y: 177
                width: 26
                height: 40
                text: qsTr("0")
                font.pixelSize: 35
                horizontalAlignment: Text.AlignHCenter
            }

            Button {
                id: profilKilometreOnbinlerArti
                x: 218
                y: 155
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreOnbinler.text < 9 )
                        profilKilometreOnbinler.text ++
            }

            Button {
                id: profilKilometreOnbinlerEksi
                x: 218
                y: 215
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreOnbinler.text > 0 )
                        profilKilometreOnbinler.text --
            }

            Text {
                id: profilKilometreBirler
                x: 352
                y: 177
                width: 26
                height: 40
                text: qsTr("8")
                font.pixelSize: 35
                horizontalAlignment: Text.AlignHCenter
            }

            Button {
                id: profilKilometreBirlerArti
                x: 352
                y: 155
                width: 26
                height: 28
                text: qsTr("/\\")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreBirler.text < 9 )
                        profilKilometreBirler.text ++
            }

            Button {
                id: profilKilometreBirlerEksi
                x: 352
                y: 215
                width: 26
                height: 28
                text: qsTr("\\/")
                enabled: false
                font.pointSize: 7

                onClicked:
                    if(profilKilometreBirler.text > 0 )
                        profilKilometreBirler.text --
            }

            TextInput {
                id: yeniProfilIsimKutusu
                x: 18
                y: 58
                width: 80
                height: 20
                text: qsTr("İsim Giriniz")
                visible: false
                font.pixelSize: 12
            }

            Button {
                id: profilYeniProfilVazgecTusu
                x: 360
                y: 57
                width: 113
                height: 31
                text: qsTr("Vazgec")
                visible: false
                font.pointSize: 15
                font.family: "Arial"
            }

            Switch {
                id: profilDuzenleSwitch
                x: 227
                y: 1
                text: qsTr("Düzenle")
                enabled: false



                onClicked: if( profilDuzenleSwitch.checked ){ //eger checked ise tuslar aktif olacak

                               profilKiloBirlerArti.enabled = true
                               profilKiloOnlarArti.enabled = true
                               profilKiloYuzlerArti.enabled = true

                               profilKiloBirlerEksi.enabled = true
                               profilKiloOnlarEksi.enabled = true
                               profilKiloYuzlerEksi.enabled = true

                               profilKilometreBirlerArti.enabled = true
                               profilKilometreOnlarArti.enabled = true
                               profilKilometreYuzlerArti.enabled = true
                               profilKilometreBinlerArti.enabled = true
                               profilKilometreOnbinlerArti.enabled = true

                               profilKilometreBirlerEksi.enabled = true
                               profilKilometreOnlarEksi.enabled = true
                               profilKilometreYuzlerEksi.enabled = true
                               profilKilometreBinlerEksi.enabled = true
                               profilKilometreOnbinlerEksi.enabled = true

                               profilYeniProfilTusu.enabled = false



                           }
                           else if(profilDuzenleSwitch.checked == false){

                               profilKiloBirlerArti.enabled = false
                               profilKiloOnlarArti.enabled = false
                               profilKiloYuzlerArti.enabled = false

                               profilKiloBirlerEksi.enabled = false
                               profilKiloOnlarEksi.enabled = false
                               profilKiloYuzlerEksi.enabled = false

                               profilKilometreBirlerArti.enabled = false
                               profilKilometreOnlarArti.enabled = false
                               profilKilometreYuzlerArti.enabled = false
                               profilKilometreBinlerArti.enabled = false
                               profilKilometreOnbinlerArti.enabled = false

                               profilKilometreBirlerEksi.enabled = false
                               profilKilometreOnlarEksi.enabled = false
                               profilKilometreYuzlerEksi.enabled = false
                               profilKilometreBinlerEksi.enabled = false
                               profilKilometreOnbinlerEksi.enabled = false

                               profilYeniProfilTusu.enabled = true

                           }





            }

        }

        Rectangle {
            id: rectangle7
            x: 338
            y: 13
            width: 127
            height: 59
            color: "#a0d05555"
            radius: 15
            ProgressBar {
                id: progressBar1
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                value: 0.5
                anchors.bottomMargin: 34
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.rightMargin: 8
                anchors.topMargin: 8
                anchors.top: parent.top
            }

            Text {
                id: element9
                text: qsTr("Batarya Seviyesi")
                anchors.bottom: parent.bottom
                anchors.leftMargin: 21
                anchors.bottomMargin: 14
                anchors.right: parent.right
                font.pixelSize: 12
                anchors.left: parent.left
                anchors.rightMargin: 21
                anchors.topMargin: 31
                anchors.top: parent.top
            }
        }






    }


    Rectangle {
        id: rectangle2
        x: 0
        y: 46
        width: 480
        height: 274
        color: "#4f904444"
    }


    Button {
        id: button
        x: 446
        y: 146
        width: 34
        height: 53
        text: qsTr(">")
        onClicked:{

            if(swipeView.currentIndex==2)
                swipeView.currentIndex=0
            else if(swipeView.currentIndex==3)
                swipeView.currentIndex=3

            else swipeView.currentIndex++;

        }

    }


    Button {
        id: button2
        x: 0
        y: 146
        width: 34
        height: 53
        text: qsTr("<")
        onClicked:{

            if(swipeView.currentIndex==0)
                swipeView.currentIndex=2
            else if(swipeView.currentIndex==3)
                swipeView.currentIndex=3
            else swipeView.currentIndex--;
        }
    }


    Button {
        id: button1
        x: 373
        y: 5
        text: qsTr("        Ayarlar")
        padding: 6

        onClicked:{
            if(swipeView.currentIndex==3)
                swipeView.currentIndex=0
            else  swipeView.currentIndex=3;
        }

        Image {
            id: image1
            width: 42
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.top: parent.top
            visible: true
            clip: true
            source: "images/settings icon.png"
            fillMode: Image.PreserveAspectFit
        }
    }


    PageIndicator {
        count: 3
        currentIndex: swipeView.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: element3
        x: 263
        y: 5
        width: 68
        height: 19
        text: qsTr("Kangal")
        font.pixelSize: 16
        font.underline: false
        font.italic: false
        font.bold: true
        font.family: "Verdana"
        horizontalAlignment: Text.AlignHCenter
        fontSizeMode: Text.FixedSize
        renderType: Text.QtRendering
        textFormat: Text.AutoText

        Text {
            id: element4
            x: 4
            y: 17
            width: 60
            height: 19
            text: qsTr("BCU  V5.8 ")
            font.pixelSize: 14
        }
    }

    Text {
        id: element5
        x: 42
        y: 10
        width: 68
        height: 19
        text: qsTr("Kullanıcı:")
        renderType: Text.QtRendering
        font.family: "Verdana"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 13
        font.bold: false
        font.underline: false
        fontSizeMode: Text.FixedSize
        font.italic: false
        textFormat: Text.AutoText
    }

    Text {
        id: element6
        x: 50
        y: 23
        width: 61
        height: 20
        text: model [currentIndex]
        font.bold: true //qsTr("Mustafa")
        font.pixelSize: 16
    }

    Image {
        id: image9
        x: 0
        y: 3
        width: 54
        height: 40
        fillMode: Image.PreserveAspectFit
        source: "images/bicycle.png"
    }



}







/*##^##
Designer {
    D{i:6;anchors_height:272;anchors_width:265;anchors_x:-172;anchors_y:-30}D{i:9;anchors_height:68;anchors_width:100;anchors_x:5;anchors_y:22}
D{i:18;anchors_height:321;anchors_width:191;anchors_x:-31;anchors_y:-37}D{i:22;anchors_height:55;anchors_width:74;anchors_x:7;anchors_y:91}
D{i:26;anchors_height:354;anchors_width:249;anchors_x:-208;anchors_y:-12}
}
##^##*/
