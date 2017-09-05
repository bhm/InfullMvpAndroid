<?xml version="1.0"?>
<recipe>

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/src/mvp_folder/Application.kt.ftl"
                 to="${newFolder}/${applicationClass}.kt" />
    <open file="${newFolder}/${applicationClass}.kt" />

    <instantiate from="root/src/mvp_folder/di/ApplicationComponent.kt.ftl"
                 to="${newFolder}/di/${componentClass}.kt" />
    <open file="${newFolder}/di/${componentClass}.kt" />

    <instantiate from="root/src/mvp_folder/di/BuildersModule.kt.ftl"
                 to="${newFolder}/di/BuildersModule.kt" />

    <instantiate from="root/src/mvp_folder/di/Module.kt.ftl"
                 to="${newFolder}/di/${moduleClass}.kt" />

</recipe>
