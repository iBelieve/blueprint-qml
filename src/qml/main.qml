import QtQuick 2.5
import QtQuick.Layouts 1.3
import Material 0.3
import "app.js" as App

ApplicationWindow {
    title: "Blueprint"
    visible: true
    width: 800
    height: 600

    theme {
        primaryColor: 'blue'
        accentColor: 'green'
        tabHighlightColor: 'white'
    }

    initialPage: TabbedPage {
        title: 'Blueprint'

        actions: [
            Action {
                iconName: 'content/add'
                text: 'Create new project'
            },
            Action {
                iconName: 'action/settings'
                text: 'Settings'
            }
        ]

        Tab {
            iconName: 'action/dashboard'
            title: 'Overview'
        }

        Tab {
            iconName: 'action/list'
            title: 'Timeline'
        }

        Tab {
            iconName: 'custom/cube'
            title: 'Projects'
        }
    }
}
