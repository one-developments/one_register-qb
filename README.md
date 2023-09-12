
![Slice 4](https://github.com/one-developments/one_register-qb/assets/144623082/d641d7f5-9785-4e66-a55e-feb578014c40)


# one_register-qb
Register Menu For Fivem QB [FREE VERSION]

![image 6](https://github.com/one-developments/one_register-qb/assets/144623082/bcee6bd5-e19d-44d3-a842-a80de1de4c13)


# 🌟 Premium Version

![Slice 2](https://github.com/one-developments/one_register-qb/assets/144623082/37e3eab8-357c-41f4-a99b-8b79a2ece3e2)


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

