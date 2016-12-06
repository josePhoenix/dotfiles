// Place this in ~/.jupyter/custom/custom.js
// Disables the '1'-'6' (header) hotkeys I always hit by accident
// and 'r' (raw) I never need
define([
  'base/js/namespace',
  'base/js/events'
], function(IPython, events) {
   events.on('app_initialized.NotebookApp', function() {
       Jupyter.keyboard_manager.command_shortcuts.remove_shortcut('1');
       Jupyter.keyboard_manager.command_shortcuts.remove_shortcut('2');
       Jupyter.keyboard_manager.command_shortcuts.remove_shortcut('3');
       Jupyter.keyboard_manager.command_shortcuts.remove_shortcut('4');
       Jupyter.keyboard_manager.command_shortcuts.remove_shortcut('5');
       Jupyter.keyboard_manager.command_shortcuts.remove_shortcut('6');
       Jupyter.keyboard_manager.command_shortcuts.remove_shortcut('r');
   });
});
