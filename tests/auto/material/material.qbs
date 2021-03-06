import qbs 1.0

QtGuiApplication {
    name: "tst_fluid_material"
    condition: project.autotestEnabled
    type: base.concat(["autotest"])

    Depends { name: "Qt"; submodules: ["gui", "testlib", "qmltest"] }

    cpp.defines: base.concat(['QUICK_TEST_SOURCE_DIR="' + product.sourceDirectory + '"'])

    files: ["*.cpp"]
}
