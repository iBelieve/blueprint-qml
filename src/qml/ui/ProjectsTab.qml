import QtQuick 2.5
import QtQuick.Layouts 1.3
import Material 0.3
import Material.ListItems 0.1 as ListItem
import Sphere 0.1
import "../components"

Tab {
    id: tab

    iconName: 'custom/cube'
    title: 'Projects'

    Column {
        anchors.fill: parent

        ListItem.Subheader {
            text: "Sonrise Software"
        }

        Flow {
            anchors {
                left: parent.left
                right: parent.right
                margins: 16
            }
            spacing: 16
            ProjectCard {
                text: "Blueprint"
                width: parent.width/3 - parent.spacing/2
            }

            ProjectCard {
                text: "Top Secret"
                width: parent.width/3 - parent.spacing/2
            }

            ProjectCard {
                text: "Other"
                width: parent.width/3 - parent.spacing/2
            }
        }

        ListItem.Subheader {
            text: "Quickly"
        }

        ListItem.Subheader {
            text: "Papyros"
        }
    }
}
