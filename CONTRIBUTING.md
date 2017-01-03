# How to contribute

This is a private Git repository and only members of esure's Digital Apps team are permitted to make changes to this Digital App. If you have any suggestions or you would like to report an issue then please contact the team. Contact details for the Digital Apps team can be found in the [AUTHORS.md](AUTHORS.md) file.


## Each change is a 'Story'

esure uses an Agile methodology to track all of its Digital App changes, with each change communicated as an 'Agile Story'. All stories within a Sprint must pass through the following 'life cycle' phases:

| To Do | In Progress | Review | Complete |
|--- | --- | --- | --- |
| Stories waiting to be started. | Stories currently being worked on by a team member. | Stories ready to be reviewed by another team member. | Stories considered complete. |

The status of each story is captured and displayed on a project team's Kanban board.


## Branching

The branching strategy used by the Digital Apps team is **Git-Flow**, however the following instructions outline a few additional steps added to help ensure all contributors communicate the status of their progress constantly. It is recommended that you familiarize yourself with Git-Flow before proceeding, [try this resource](http://nvie.com/posts/a-successful-git-branching-model/)

![Branching Strategy Image](CONTRIBUTING.flow.png "Digital Apps Branching Strategy")


### Historical Branches

Instead of a single master branch, our branching strategy uses two branches to record the history of the project. The `master` branch stores the official release history, and the `develop` branch serves as an integration branch for features. It’s also convenient to tag all commits in the master branch with a version number.

### Using Feature Branches to start a Story

When a new Agile story is assigned to a contributor a dedicated feature branch is required where all changes related to that story is developed. Ensuring that the changes related to that story remain 'self contained' and can be delivered independently.
At this point the story's status should be moved to 'in progress'.
> Instead of branching off of `master`, feature branches use `develop` as their parent branch. Features should never interact directly with `master`.

The developer should then look to make the necessary code and configuration changes within that branch only.

For further details on how to make code and configuration changes please see the Making code and configuration changes section below.

#### Pull Requests and Peer Reviews

Before a story can be considered complete and merged back into `develop` a Peer Review is required. To initiate a Peer Review a Pull Request should be opened allowing other developers and/or the technical team lead to review and approver the changes. All issues and comments should be recorded as comments on the GitHub platform.
The [PEER_REVIEW.md](PEER_REVIEW.md) checklist should be used to help with this process.
Once a Pull request has been opened the story's status can be set to 'In Review'.
> The `develop` branch should be configured to not accept Pull Requests until at least one other reviewer has approved the change. 

#### Completing a Story

When all of the changes have been approved, the story is merged back into `develop` and the status of a story can be set to 'Complete'.

##### Best Practices:

* `feature` can be only branched from `develop`.
* The peer review comments include evidence of approval and sign off.
* Only fully functional and complete features should be merged back into `develop`.
* Branch naming convention: anything except `master`, `develop`, `release-*`, or `hotfix-*`.

### Preparing for a Release with a Release Branch

Once `develop` has acquired enough features for a release (or a scheduled Sprint release date is approaching), the technical lead will fork a new release branch off of `develop`.

Creating this branch starts the next release cycle, so no new features can be added after this point.
> Only bug fixes, documentation generation, and other release-oriented tasks should go in this branch.

Once the release is ready to go into production, the release branch is merged into `master` and tagged with an appropriate version number. In addition, the release should also be merged back into `develop`, which may have progressed since the release was initiated.

This approach creates well-defined phases of development and release.

##### Best Practices:

* 'release' can only be branched from `develop`.
* 'release' must be merged back into `develop` and `master`.
* 'release' (and eventually 'master') should be tagged with a major version increment, e.g. 6.0 or 7.0.
* Branch naming convention: `release-*`.

### Implementing a Hotfix

'hotfix' is used to quickly patch production releases. This is the only branch that should fork directly off of `master`. As soon as the fix is complete, it should be merged into both `master` and `develop` (or the current `release` branch), and `master` should be tagged with an updated version number.

All Hotfix changes should still have an assigned story and should progress through the same stages as documented above.

> This approach should only be considered for critical maintenance issues.

##### Best Practices:

* 'hotfix' can only be branched from `master`.
* 'hotfix' must be merged back into both `master` and `develop`.
* 'master' should be tagged with a minor version increment, e.g. 0.2 or 0.3.
* Branch naming convention: `hotfix-*`


## Making code changes

All code and configuration changes should be made within the /app/ folder, and deployed to the /web/ folder using the **dev_workflow** scripts.

>This is necessary as the /web/ folder is created/updated by the Drupal 8 composer process at the point of install or update, overwriting any existing files.

The `./script/dev_workflow/update_now.sh` script performs a one time update.

While the `./script/dev_workflow/start.sh` uses a Grunt process to continuously 'watch' the /app/ folder, performing an update whenever it detects a change.


## Recommended Tool Set

The following suite of tools has been used to develop this Digital App. It's recommended that all contributers use the same tools to help reduce formating conflicts.

* Project Management: [JIRA](https://myesure.atlassian.com/), 
* Project Documentation: [Confluence](https://myesure.atlassian.com/), 
* Graphical: [Sketch](https://www.sketchapp.com),
* Development IDE: [Sublime](https://www.sublimetext.com),
* Git Client: [SourceTree](https://www.sourcetreeapp.com),
* Testing: None (Manual testing only)


