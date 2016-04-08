import QtQuick 2.5
import QtQuick.Layouts 1.3
import Material 0.3
import Material.ListItems 0.1 as ListItem

Card {
    id: projectCard

    property var project
    property alias text: textLabel.text

    height: column.implicitHeight + 32

    ColumnLayout {
        id: column
        anchors {
            fill: parent
            margins: 8
        }

        Label {
            id: textLabel

            style: 'title'
        }

        RowLayout {
            Icon {
                name: "action/bug_report"
            }

            Label {
                text: "5 open issues"
            }
        }

        RowLayout {
            Icon {
                name: "toggle/star_half"
            }

            Label {
                text: "4.5 average rating"
            }
        }
    }
}
