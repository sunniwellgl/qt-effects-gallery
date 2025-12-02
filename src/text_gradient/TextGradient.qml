import QtQuick

Item {
    readonly property int spacing: 20

    Text {
        id: _previousLyric
        text: "天青色等烟雨 而我在等你"
        font.pixelSize: 35

        layer.enabled: true
        layer.samplerName: "maskSource"
        layer.effect: ShaderEffect {
            property var colorSource: _previousLyricGradientRect;
            fragmentShader: "shaders/lineGradient.frag.qsb"
        }

        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: _currentLyric
        text: "炊烟袅袅升起 隔江千万里"
        font.pixelSize: 50
        color: "#d6d1bb"

        anchors {
            horizontalCenter: parent.horizontalCenter
            top: _previousLyric.bottom
            topMargin: spacing
        }
    }

    Text {
        id: _nextLyric
        text: "在瓶底书汉隶仿前朝的飘逸"
        font.pixelSize: 35

        layer.enabled: true
        layer.samplerName: "maskSource"
        layer.effect: ShaderEffect {
            property var colorSource: _nextLyricGradientRect;
            fragmentShader: "shaders/lineGradient.frag.qsb"
        }

        anchors{
            horizontalCenter: parent.horizontalCenter
            top: _currentLyric.bottom
            topMargin: spacing
        }
    }

    Rectangle {
        id: _previousLyricGradientRect;
        width: 10
        height: 10
        gradient: Gradient {
            GradientStop { position: 0; color: "#4d33322e" }
            GradientStop { position: 0.5; color: "#8041403b" }
            GradientStop { position: 1; color: "#59574e" }
        }
        visible: false; // should not be visible on screen.
        layer.enabled: true;
        layer.smooth: true
     }

    Rectangle {
        id: _nextLyricGradientRect;
        width: 10
        height: 10
        gradient: Gradient {
            GradientStop { position: 0; color: "#59574e" }
            GradientStop { position: 0.5; color: "#8041403b" }
            GradientStop { position: 1; color: "#4d33322e" }
        }
        visible: false; // should not be visible on screen.
        layer.enabled: true;
        layer.smooth: true
     }
}
