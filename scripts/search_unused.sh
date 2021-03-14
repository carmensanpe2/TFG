let N=0
let n=0

echo "Figuras no usadas:"
for fig in $(ls {svg,img}/*); do
	let N=N+1
	grep $fig tex/*.tex &> /dev/null
	if [[ $? == 1 ]]; then
		let n=n+1
		echo "   $fig";
	fi;
done

echo " "
echo $n figuras no usadas de $N
# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
