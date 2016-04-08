import {field, register, Document} from 'sphere'

export class Project extends Document {
    @field('string') name

    constructor(name) {
        super()
        this.name = name
    }

    get plugins() {
        return Plugin.where({ projectId: this.id }).all
    }

    get stats() {
        return this.plugins
            .filter((plugin) => {
                return plugin.summary != null
            })
            .map((plugin) => {
                return {
                    iconSource: plugin.iconSource,
                    summary: plugin.summary
                }
            })
    }
}

export class Plugin extends Document {
    @field('string') projectId

    iconSource = 'icon://action/bug_report'

    get summary() {
        return '12 open issues'
    }
}

register(Project, Plugin)
