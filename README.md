Discord
Join The Discord And Get 1 Free Extra Themes

https://discord.gg/VvcnT3J5CF
![Slice 4](https://github.com/one-developments/one_register-qb/assets/144623082/c1fa5ca6-9f78-481e-bd3d-d54aceefca58)

# one_register-qb
Register Menu For Fivem QB [FREE VERSION]

![image 6](https://github.com/one-developments/one_register-qb/assets/144623082/de8ce237-aa01-4a4d-b228-b971f7f433cb)



# 🌟 Premium Version

![Slice 2](https://github.com/one-developments/one_register-qb/assets/144623082/6487f819-6233-4c25-94d1-ddb1615e6955)



More Themes And Features You Can Buy Premium Version From Here https://one.tebex.io/ 

# Installing 

* in qb-multicharacter/client/main.lua add this code 

```lua
RegisterNUICallback('open_register' , function (data,cb)
    local cData = data.cid
    TriggerEvent('one_register:showRegister',cData)
    cb("ok")
end)
```

* in qb-multicharacter/html/index.html found this


```lua

play_character: function() {
                    if (this.selectedCharacter && this.selectedCharacter !== -1) {
                        var data = this.characters[this.selectedCharacter]

                        if (data !== undefined) {
                            axios.post('https://qb-multicharacter/selectCharacter', {
                                cData: data
                            });
                            setTimeout(function() {
                                viewmodel.show.characters = false
                            }, 500)
                        }
                        else {
                            this.registerData.firstname = undefined
                            this.registerData.lastname = undefined
                            this.registerData.nationality = undefined
                            this.registerData.gender = undefined
                            this.registerData.date = (new Date(Date.now() - (new Date()).getTimezoneOffset() * 60000)).toISOString().substr(0, 10)

                            this.show.characters = false
                            this.show.register = true
                        }
                    }

                },
```


AND REPLACE THIS 


```lua
play_character: function () {
          if (this.selectedCharacter && this.selectedCharacter !== -1) {
            var data = this.characters[this.selectedCharacter];

            if (data !== undefined) {
              axios.post("https://qb-multicharacter/selectCharacter", {
                cData: data,
              });
              setTimeout(function () {
                viewmodel.show.characters = false;
              }, 500);
            } else {
              this.show.characters = false;
              axios.post("https://qb-multicharacter/open_register", {
                cid: this.selectedCharacter,
              });
            }
          }
        },
```

