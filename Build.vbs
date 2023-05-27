set ws = createobject("wscript.shell")
ws.run "cmd.exe /c vuepress build docs && BuildSuccess.vbs"