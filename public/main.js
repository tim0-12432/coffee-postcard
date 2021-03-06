const { app, BrowserWindow } = require("electron");

const path = require('path');
const isDev = require('electron-is-dev');

require("@electron/remote/main").initialize();

function createWindow() {
    const win = new BrowserWindow({
        autoHideMenuBar: true,
        width: 1080,
        height: 720,
        icon: path.join(__dirname, "/images/favicon.ico"),
        webPreferences: {
            contextIsolation: false,
            enableRemoteModule: true,
            nodeIntegration: true
        }
    });

    win.loadURL(
        isDev
          ? "http://localhost:3000"
          : `file://${path.join(__dirname, "../build/index.html")}`
    );
}

app.on("ready", createWindow);
app.on("window-all-closed", function() {
    if(process.platform !== "darwin") {
        app.quit();
    }
});
app.on("activate", function() {
    if(BrowserWindow.getAllWindows().length === 0) createWindow();
});