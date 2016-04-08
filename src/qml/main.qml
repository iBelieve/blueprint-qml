import QtQuick 2.5
import QtQuick.Layouts 1.3
import Material 0.3
import "app.js" as App
import "ui"

ApplicationWindow {
    title: "Blueprint"
    visible: true
    width: 800
    height: 600

    theme {
        primaryColor: 'blue'
        accentColor: 'blue'
        tabHighlightColor: 'white'
    }

    initialPage: TabbedPage {
        title: 'Blueprint'
        actionBar.integratedTabBar: true

        actions: [
            Action {
                iconName: 'content/add'
                text: 'Create new project'
                onTriggered: newProjectDialog.show()
            },
            Action {
                iconName: 'action/settings'
                text: 'Settings'
            }
        ]

        // Tab {
        //     iconName: 'action/dashboard'
        //     title: 'Overview'
        // }
        //
        // Tab {
        //     iconName: 'action/list'
        //     title: 'Timeline'
        // }

        ProjectsTab {
            id: projectsTab
        }
    }

    InputDialog {
        id: newProjectDialog

        title: "Create New Project"
        placeholderText: "Project name"
        positiveButtonText: "Create"

        onAccepted: {
            new App.Project(text).save()
        }
    }
}
