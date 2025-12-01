import QtQuick
import Qt5Compat.GraphicalEffects

Item {
    Text {
        id: digitalSpeed
        color: "#ffffff"
        text: "40"
        font.pixelSize: 260
        renderType: Text.NativeRendering
        font.weight: Font.Bold
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: text1
            y: 35
            color: "#ffffff"
            text: qsTr("km/h")
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    ShaderEffectSource {
        id: digitalSpeedSource
        sourceItem: digitalSpeed
        textureSize: Qt.size(digitalSpeed.width / 2,
                             digitalSpeed.height / 2)
        visible: false
        textureMirroring: ShaderEffectSource.NoMirroring
    }

    FastBlur {
        id: blurEffect
        anchors.horizontalCenter: digitalSpeed.horizontalCenter
        anchors.top: digitalSpeed.bottom
        anchors.topMargin: -55
        width: digitalSpeed.width
        height: digitalSpeed.height
        source: digitalSpeedSource
        radius: 32
        opacity: 0.265
        z: -1
    }
}
