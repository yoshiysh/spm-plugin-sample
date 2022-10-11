//
//  Plugin.swift
//  
//
//  Created by Yoshiki Hemmi on 2022/10/11.
//

import PackagePlugin

@main
struct Plugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        [
            .prebuildCommand(
                displayName: "Running SwiftGen",
                executable: try context.tool(named: "swiftgen").path,
                arguments: [
                    "config",
                    "run",
                    "--config", "\(context.package.directory.string)/../swiftgen.yml"
                ],
                environment: [
                    "OUTPUT_DIR": context.pluginWorkDirectory.string
                ],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
