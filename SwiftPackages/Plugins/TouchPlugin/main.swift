import PackagePlugin
import Foundation

@main
struct TouchPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) throws -> [Command] {
        
        Diagnostics.remark("Build tool plugin started.")
        
        let fileName = "\(Date().timeIntervalSinceReferenceDate)"
        
        Diagnostics.remark("Attempting to run tool with filename: \(fileName)")
        Diagnostics.remark(fileName)
        
        let path = context.pluginWorkDirectory.string + "/" + fileName
        
        Diagnostics.remark("and path")
        Diagnostics.remark(path)
        
        return [
            Command.prebuildCommand(
                displayName: "Create a file!",
                executable: try context.tool(named: "touch").path,
                arguments: [path],
                environment: [:],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
