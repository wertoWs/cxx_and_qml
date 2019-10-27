import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 500
    height: 500
    id: root

    Row{
        id: tools

        Button{
            text: "Clear"
            onClicked: {
                mouse.clear()
            }
        }
        Button{
            id: save
            text: "Save"
            onClicked: {
                mouse.save()
            }
        }

    }
     Canvas{
        id: canvas
        anchors.top: tools.bottom
        width: root.width
        height: (root.height -tools.height)
        property int lastX: 0
        property int lastY: 0


        onPaint:{
            //do cool stuff
            var ctx = getContext("2d")
            ctx.lineWidht= 2
            ctx.strokeStyle = color.red
            ctx.beginPath()
            ctx.moveTo(lastX,lastY)
            lastX = area.mouseX
            lastY = area.mouseY
            ctx.lineTo(lastX,lastY)
            ctx.stroke()
            mouse.add(lastX,lastY)
            mouse.test();
        }
        MouseArea{
            id: area
            anchors.fill: parent
            onPressed:{
                canvas.lastX = mouseX
                canvas.lastY = mouseY
            }
            onPositionChanged:{
                canvas.requestPaint()
            }
        }
    }
}
