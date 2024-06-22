------------------------------------------------------------------------------------------------------
# What is amback ? 
amback is a FiveM resource that help detect encrypted code and disable them before they get excuted. 

# FiveM Anti-Backdoor & Anti-Cipher Panel
Works currently only for QB-CORE freamware.
Protect your FiveM server from common backdoors and cipher panels with this essential tool.

## 🛡️ Features
- **Anti-Backdoor**: Detect and neutralize server-side script injections.
- **Anti-Cipher Panel**: Identify and block common cipher panels.
- **Continuous Monitoring**: Real-time defense against malicious activities.
- **Auto block**: Auto block codes that excuted using same pattrons in config.lua this search will include server/client sides. 

## 🚀 How to Install
1. Download the latest release from the [Releases](https://github.com/Os-De/amback/releases) page.
2. Extract the files into your FiveM resources folder.
3. Add `start amback` to your `server.cfg` file.

## Discord Community
Join our Discord community for support and updates:
[![Discord]](https://discord.gg/rrwAGe2wmU)


## 🤝 More than one encrypted code?

**uses**: all you need to do is add another "," to the end of code and re-enter the new lines if there is any. Example as below from config.lua

encryption = {
    "qBqdXAXsbBsNToHinnNpsofkZclMaQGXmyJTQpVKhLbRKFnupEhglyfYXfVNeIIuLbeNJS",
    "SIeHuNoanXgMHZNbCClmdbXZpoGUngkGYYlWOUNclUMHilsbqsqRxZfkMBeXQyRhAgCnKj",
    "HLvNmaWdrcuNEHFFJGgkbHSDKcRkgptIDJPhYfPBAUhpTpFEswxqwMDqYCFMdKhlbKMprl",
    "abcdefghigklmnoobkrstuvwxyzabcdefghigklmnoobkrstuvwxyz",
    "abcdefghigklmnoobkrstuvwxyzabcdefghigklmnoobkrstuvwxyz",
    "abcdefghigklmnoobkrstuvwxyzabcdefghigklmnoobkrstuvwxyz"
}

Important: Update Webpack and Yarn
The virus usually targets these files to reinstall itself randomly within scripts. Reinstall webpack and yarn to prevent the script from spreading.

Keep an eye on github github.com/Os-De/amback  for new software that update your Yarn/Webpack files automaticly in the near future. 




