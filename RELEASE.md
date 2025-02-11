# Release-Model2450 UI

Use this collection of repositories for creating release Tag for the `Model2450 UI`.
<!-- TOC depthFrom:2 updateOnSave:true -->

- [Installing Sources](#installing-sources)
- [About Project Directory](#about-project-directory)
- [Update the changes](#update-the-changes)
- [Release procedure](#release-procedure)

<!-- /TOC -->

## Installing Sources

<strong>From a tar file</strong>

Unpack the tar file in a convenient directory, using <code>tar -xzf <em><strong>tarfile.tgz</strong></em> -C <em><strong>destdir</strong></em></code>.

Then change directory to the <code><em><strong>destdir</strong></em></code>.

<strong>From gitlab-x.mcci.com</strong>

Clone the repository from MCCI's gitlab-x server using the command:

```shell
git clone --recursive git@gitlab-x.mcci.com:Seenivasan/collection-Model2450 UI.git
```

Then change directories to the top level of the cloned repository.

## About Project Directory

* Source files - `collection-Model2450 UI/Model2450 UI/`
* User Guide and Release Notes   - `collection-Model2450 UI/doc/`
* Installer for Windows and Mac  - `collection-Model2450 UI/installer/`
* README.md  - `collection-Model2450 UI/`
* RELEASE.md - `collection-Model2450 UI/`

## Update the changes

<strong>Update the Source</strong>

The source linked as submodule, move to the source directory verify the required changes for the current release and commit the changes with the release message.

<strong>Update the User Guide Dcoument</strong>

Update the User guide document 'MCCI-Model2450 UI-UI-User-Guide' if needed and commit if any changes with release message.

For any changes in User Guide Document , it must be sent to MCCI document publish process.

<strong>Update the Installer</strong>

If any changes in installer script, update and commit the changes with release message.

<strong>Update the Readme.md</strong>

If any changes in installation and build procedure update the instructions in README.md and commit the changes with proper message.

<strong>Update the Release Notes</strong>

Update the Release notes with all updates made for the release and commit the changes with proper message.

For any changes in Release Notes , it must be sent to MCCI document publish process.


## Release procedure

To create a release Tag from a git repo, follow this procedure.

- Create a tag for the release in the top-level repository. Usually this is of the form `Vx.y.z`.

```shell
git checkout master
git tag -a vx.y.z -m "release-Vx.y.z"
git push origin --tags
```
