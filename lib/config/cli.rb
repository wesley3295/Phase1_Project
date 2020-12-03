class Cli

    def start
logo
spaceing
        puts "Welcome to Legend"
        puts "Legend is an app that gives base statistics on Champions in the MOBA game League of Legends!"
        Api.data_of_champions
    main_menu
    end

    def main_menu
        puts "Type '1' for a list of Champions"
        puts "Type 'exit' to exit Legend"
        main_menu_options
    end

    def main_menu_options
            input = menu_input
         if input == "1"
spaceing 
            champ_select_logo
spaceing
            list_champions
            select_champion         
        elsif input == "exit"
                exits
        else
            main_menu
        end
    end

    def select_champion
        input = champion_input
        index = input.to_i - 1
        if index.between?(0, 151)
        champ = Champions.all[index]
        champ_base_stats(champ)
        elsif input == "exit"
            exits
        else
            invalid_option
        end
        select_champion
    end

    def champ_base_stats(champ)
spaceing
stats_logo
    spaceing
    puts "
         Name:#{champ.name}
         Title:#{champ.title}
         Difficulty:#{champ.difficulty}
         Magic Damage:#{champ.magic}
         Attack:#{champ.attack}
         Attack Damage:#{champ.attackdamage}
         Attack Range:#{champ.attackrange}
         Magic Resist:#{champ.spellblock}
         Armor:#{champ.armor}
         Defence:#{champ.defence}
         Health:#{champ.hp}
         Mana:#{champ.mp}
         Movement Speed:#{champ.movespeed}"
    end
  
    def list_champions
        Champions.all.each.with_index(1) do |champion, index|
            puts "#{index}. #{champion.name}"
        end
        # champ_detail_menu
    end

    def invalid_option
        puts "Invalid input. Please try again!"
    end
    
    def menu_input
       print "Enter here:" 
       gets.chomp
    end
    
    def champion_input
        print "Type the index of champion here:"
        gets.chomp
    end


    def exits
        puts "Thanks for choosing Legend!"
        lulu_logo
        exit
    end





























def lulu_logo
    puts"
                                                                                                      ````                 
                                                                                                                              `...````.`              
                                                                                                                            `,.     `````.``          
                                                                                                                           `:`    `` `.`  `.``        
                                                                                                                           ,   ```````.,,.``..``      
                                                                                                                          ``   ``.``````..````` .`    
                                                                                                                         `.  `....``...`````.``  ...` 
                                                                                                                         .  `.```.....```.`.````, `,``
                                                                                                                        .` `.`.,.......```.``````, `.`
                                                                                                                       `` `.......`````.,..``````.. ``
                                                                                                                       .``.`.`.........`.....`````,```
                                                                                                                       .`.`..,..,..```...```,.````.. `
                                                                                                                      .``.`,,.,,..,,,....,,..:``` ````
                                                                                                                     `.```,,,,,,,,,,:::,,.`..:````````
                                                                                                                    ```.``,..,.,,,:;;:,,,,,;.,: ```..`
                                                                                                                    ``.``.,.,,,:,;ii;;;;;;;:,`,`....,`
                                                                                                                   `.`.`..,,,.:;:::;,,..:;;:,.,..,.`.`
                                                                                                                  `.`.`.`,,:,:;::;.`   `.,::,.,.`.`.,`
                                                                                            ``                    .````...,,,:,::`     `.,.,.... ```. 
                                                                                            ``                   `. .``.....,,,:`       ,,.,.`..````` 
                         ``.`                                                          `    .`                   ,``.`.......:,.        .,.,.`.`` ````
                     ``.,;,,:.`                                                        ,`   .`                  `. ..`......,;,          :,,.`.``` . `
                    `.,...,,.:.,                                                       ..   ..`                 .``.``,....,::          `:,,.`.`````. 
                   `..` ```.i,`::..`                                                   ,`,  ,,.                 .`````.....::`           .,,..,`````` 
                 `..`     `..`:.,,.,`                                                  `.,` ,i:`               ```. ``...,::.            ,:,,,,.``.`  
               `..``       `  `::,.,:`                                                  :`, ,;;,               ```. ``..,:,,             .:,.,,.`.``  
             `.::,,,,.`       `,:;;..::`                                                ,,:,.;;,               ```````..,.,`             ,:..,,.```   
            `,;;. `,,,,.``   `````;i,.`.`                                               `:::.;;:.              ```````...,,              ,,...,.`.    
            ,::,,  ,,,,,,```   ````,i..`.,`                                              ,,:,i:;:              ``````..,,:.              ...,,.`.`    
          `,`.,,,  .::;`,,``` ``````.:,:..,.                                             :,,:i;:,`             ``````.,,,:`              ...,,``.     
          ,. `:,,` .,;,`,,:.``  `````,.;;.`.,.                                           `;:::;:,`             `````...,::               ,,`.,..`     
         :,:` ;;:``.:;.,,:...```````````,:...,,`                                          ;i::,:.`             `````...,,:              `,,`..,.      
        :,,,, ,;:,`.:;`,:.` `.``````````..::.`.,:                                         ,;i::,,.             ``.`.....,,              `,,`..,       
       .;,::: .;:,..:;.,:```.,``````````.:,;,`  .,`                                        :*i:.:,             ``.`..`..,.              `,.`,.`       
      `:,::::.`,:,,.,;,:,``.,:,````````````.i::``.,.`                                      `;*;,i,             `..``.``.,.              .,.`,,        
      .. .:;;:..,,,,.;,:,``,,,:.````````````.i*,.```.                                      .::::::   ,,`       ``.`..``.,`              .,``,,        
      :,` `,;::,.,,:.,,:,`.,:.`:```````````  `,,..``:,                                      ,:,;`,`.:,:        `..`..``.,.              .,``,.        
     `:,,.``::::,:::;:i:.`:,,``.``````````    .`:.```,:`                                    `.,,:,i:,,         `,``.`.`.,.              .,..,.        
     .;,,,:..:;,;,.``.:;,`:,.```.`````````` `  ,:;.`` ,:.                                  ,.,,;;`i:..          ,..,`.`.,.              .....`        
     ,.:;;::..:i.``    `:,,:````.```````````   ` .;,.` .,.`                                `.` ,i::.,           ....`.`.,.              .,....        
     ,  .::,:,:,`       `;:,````..``````````  `` `.:,.` .,,.`                                   :+..`           .,..`.`.,.              .,...,,`      
     .   `.:::i`         .,.`````.``````````  `````.:;.  `,,:.                                 `ii`             .,.,`...,.              ....`,..,,..``
    `;::.```,;:`         `,.``.``.`````````````......:;`   ,,,,,`                              ,i,              .,.,``.`..              ,``,.``` `` ``
    .;i;;;:..;.           `,.`..`..`````````........``.,`   ,i;,,`                             ;:.              ,:..`.,.,.              `.` `...``````
    ,:::::;i,;`            ..``.``.````````....````..````    ,*i:..                            :,,             `,:.``.,.,.                ..  ````````
    ,::,:::;i:             `,.````,```````.`.` `````,```    .i++*i:.                           `,,`            ,.:.``.,`..`                `.....`````
    ,.  `.::;`              .....`.```````,..``````..```  `,;:;*##i,                             ``           `:,,.` .``..`                           
   .,.  ``.:,               `...``..``````..`..```..,``  .;:..,.;+#:.                                        `:..````.` ``                            
  ,,;,`````,.                ,..`.`.``````,.::.```.`,```.:,`..,.,,i;,                                       `,,. ```..` ``                            
 ., .;::,``..                `,.```,.`````.,.````...,``.::.`.,.,,.:::.                                     `...`````,.  `                             
 .. .;;;;;:,`                 :.```,.```````````...,.`,:,,...,,,.,,.,.                                    `..`..``````  `                             
 ..  ::iiiii`                 ,.```,,```````.`....:.`,:::;:::,,;,,:..:`                                   ....,`.```.  ``                             
 `.  .:`.:;:                ` `,```.,````````....,,`.;::,.,.```.:,,:,:,                                  .......`..```                                
 ..`  :.`.,,              `.:;;;:;..:.```````....,`.;:;;;;::.`  .,`.i:,                                 .`. `.```  ``                                 
  .```,;:::.            .,..``  ``.,ii:`````....,..::,*i:,,:;,`  ``i#:,`                               .`.`..``` ```                                  
  `.```;;;*`           ,,  `,;;:,,,```.:```....,..::,;:.`````:;   `*ii,.                              ...`..``  .`                                    
   .```.:i;            `:` .``  `.,;;.`,```...,,`,:,,.``.```` ,.  `:,;:.                             `,.`..`` `.`                                     
   .`````,:             .i,`,`  `.,.,i.,.`....,`.:,,,.,iz++i`    ``:.;i,                            .,``...``.`                                       
    ,```.:.              `:.`:. `.,,:*;:,`...,.`:,:,.iWn;..`.`    `,.#+;                            ,``.````.`                                        
    `,..,.                 :,`;...,ii;`:.....,`,:,,:;z#.:..,:,   ``.:i,,`                          .``.``.`                                           
     `.`                    ;``;:,:+:``:....,`.:,:::,,:`.,`.:,`  ```:::,`                        `...`.`..                                            
                            `; `:;;z, .,...,`.:,,,;.```:`.,`..:  ```.:.`.                       ``..`.`.`                                             
                             ,i `,i+:.....,.`,,,:,:.````.,.,:::`    `.,,.                      ``....`.``                                             
                              ;: `.``,.`.,,`,:,,,i,````````````      .,`.                      `....`.``.``                                           
                               :,```,```.:`.:,,:;;,`````````   `     ;` `,                    `.`.....``` ``                                          
                                .;.:.```..`;:,,;;;.``````````   `` ```   ,                   `.`..`......` `.                                         
                              ` ..,:```.,`::;,:;i:.```````      ``````   `.                 `.`..`.,.````..```                                        
                                ,`.;.``,`::::::ii:.````   ` ``` ```,,..` `,                 ....`,,`...`. ````                                        
                                ,`,,.`.`:,,::;:i;,.``       ````.#*;::;. `.                `...`,...`   .`  ``                                        
                               `..:...`:,,::;;:*:,.```      ``````,,.,,``.`                ..,`,..`      ```.                                         
                               `,,,..`::.:;;;:;i:,.```      ````   `..```,                `.,`...          `                                          
                              `.....`:;,,;;:::*i:,..```      ``` ```````,.               ..,.`..                                                      
                             `...,.`;::,:;::::+;:,..````       ``  ````,:               `.,.`.``                                                      
                             ...,.`::,,::;::::*:::...```   `  ` ` ` ``ii,              `,,.`.``                                                       
                            `..,.`;:,,,:;:i::;+;:,,...``````````    .+*:,             `.,.`.``                                                        
                           `..,..;::,,:::;:;:ii::,,....````````````;*i;:,            `...``.                                                          
                          `..,..i;:,,::::;::;;;;:::.,,..`````````,+i;:::,           `.`.```                                                           
            `...         `,.,..*i;,,,;:,::;;;::*i;:,:,,...`````.;i*i:::::           ...``.`                                                           
            .```.`      `,.,..ii:,,,,:::::;;;.,i+*;:,,,,,,....:;;;i::,,,,          `...`.`                                                            
           .``..``      ,.,.,ii:,.,,:::;:;;i:.;,;+*ii;;:,,,,,,::,i;:,.,..         `...`..                                                             
          .``,.        ,.,`,;;:,:,,:::;::;;i,:;,,,i*+*+i:,,::;,::i::,.,,.         ..,``.                                                              
         ````,        ,.,..;;:,,,:,::::::;;i:i:,.,..,;:::::::`:.*i:,...,`        .`.``.                                                               
         ` `,,       `.,..;::,,,,::::;::;;iiii:,,...``..,,:,.`:.;i,:..,:        `...`.`                                                               
         .``,,`     `.,..i:,.,:,::;:,:::;;*;i;,,..``,.``````,`.:.:,,...,``      ...``.                                                                
         .``,..`   .,...i;:`.,:,;::::,::;;i;i::...````..````:`.;,:,,...,``     `..``.`                                                                
        `,.`,.,`  .,.,.i;:``,:::::,,:,,:ii*;;::,.``    `,,,.:``;.::,..,,``    ``..`.`                                                                 
         :..:,.:.,,.:.;::``,::,:::,,,:,;**ii::,,``     ..``.:``;`:,,..,, `    `..`.`                                                                  
         ,,.,,..,:.:.;;,` `,::,:;,,:::;i;+;i,:;,``    .`..`.:``:`:,,..,,     ...`.`                                                                   
         `,,.,,.,,:`:;:`  ,,;::::,::;,;*i*i:,,;:`    `..`.`.:``;,:,,..,.`   `,...`                                                                    
         `,,..:::,`.i:`  `,,;::;,::;;:;;+ii,,,:;.`   ..,.,`,:`.,,;,...,:`` `,.`..                                                                     
          .,,....``*;`   .,:;:;,,::::;:;+;;.,.,i.`   .,``,`,,`:.:,,`..,.;,`..`..                                                                      
          `.,,,.``:;`   `,,;:::,,::;:;;**;:,,..;:`  `....,`,,`;`:,.``.,.`:;.`..                                                                       
           `.,,,,,,`    .:,:::,.:::;;;;+;i,,...,;`  `..``, ...,`:..`..:.`,,``.`                                                                       
            ```.`      `:,::,:,,::;:;ii+;i:,..``:,   .,,`` ..,``:....`::`.:.:`                                                                        
                      `,:.::,,.:::;,ii*i:;;;:,...;   ``,,.``````;.....,:,`,:.                                                                         
                   ``.,::,:,,.,:,:;:i;+i;;;:,,,::;,    `..,...,,::..`.,::`.;`                                                                         
                  `..:;::::,,,,,:::;;i+::*:*;:,,..;`      ``.,::.,,;,..,::;`                                                                          
              ````,:,,:;::,,.,:,::;;;*i,:;i;,,,,,:.:`     `.,:,.```;i.,,,``                                                                           
            ```..,:,::;::::,.,,,:;,;i*:,;;i,.```   .;`   `.:::````.+;.,,.`      ```.`                                                                 
             ``.::::,::::::,,,.,:,::i*,,;i:..```    .;`  `.:;,````;i:.`..` .`..```..:                                                                 
             `...::::;:::::.,,.,:,::;i,,:;:,.```  `` ,;```,:;.`` ,,....,.:.`  `.:;,.`                                                                 
             `.,::::,:,:::,.,,,,,,::i;,,,:;;,``   ..`.:i``,:;.` `;.``       .,,;:,`                                                                   
          `...::,,,:,.,,,:,.:.,,,:,:i;,.,,:,``    .,,...;..;,`  ,;.``          ```.                                                                   
        ````..``,,,:.,..,::,:.,,,:.:i;,.....`     `...  `::*``  ,,.`        `,,,.`                                                                    
        ``````..,.,,,.`.;:::,,.:,:.;i;,.,::*,`     `` ``` ,+`   :i:`       `,;..                                                                      
      ````````..`,,`,..;i.,:,,,:,,,:*+++**i;+i.``   `.,,:.`.,  `i*,,`      `   `.,                                                                    
 `.``````````.`...`.,,:;;.,:,,,:,,,;i::,,...,*+:` `,;:. `.i:,: .ii``..`    ,;..``.                                                                    
````   ````.....``,:,,:::.,,:,::,,:;;,.,:;::,`:;;.::` ```  ,:,,,*. `  ```  .:                                                                         
 ````.``````````,,,;::::::,,,,:,,,:;i::;:...,;``.:`  ..`:;.   .:,       ````:`                                                                        
      `````.```.``.```.,::.,,,:.,,::;,..::,.``:,````,`   `;i.  ;,          .`,                                                                        
                      `,:,.,:,.,,:,:;,,``.::,``.:`.:`      `;:`;`           `.                                                                        
                        .:.,,,.,,:,,;``...``.,:,,;,.```  ..,,,;,             `                                                                        
                        `:,,,....`,,;`  `:;:,.`````.,::,,,.`.:,                                                                                       
                        `,:....`.`,,:`  `,*i;i;:,.``  ``..,:,.                                                                                        
                         `,,`....`.::.    :ii***+ii:::;:,,,`                                                                                          
                          ,:,``.`..,:.     `.,,;*i. `..``                                                                                             
                           .,......:,.                                                                                                                
                            ..,,...:.`                                                                                                                
                             ``.:..:.`                                                                                                                
                                `,,:`                                                                                                                 
                                 `,,                                                                                                                  
                                   ,`   "
end                                                                                                              
                                                                                                       

def stats_logo
puts "
 `i++:     .******,      :;      `******:    ,,     `i++;     .******,    :.      .*++.      ,+++`                                  
`z, `x.       z.        .nz         *;       #,    `z: `x.       #,       n`     i+` ,x     i+` i#                                  
+;   ;.      `n         z:z         x`      `x     *;   ;.      `x       .z     ;+    n    `x   `i                                  
n,           ;*        ii.z        ,z       ;*     z:           ;+       *;    .n          ,n                                       
 :n+:         z.      .z .z        +:       z.     ,n+:         z.       n`    +;           #zi`                                    
  .+n        `n       n:.:z        x`       `n       .+n        `n       .z     x`            `;x:                                   
     M`       i*     *+; ;*z       ,#       ;*          M`       ;*      *;     `x               i+                                   
i:   .n       z.     ,z   ,z        +:       z.    i:   .n       z.       n`    `x    *;   `#    z,                                   
;z  .n.      `n     `n.   ,z        x       `n     ;n  .z.      `n       ,z      n: `*+     x, `*+                                    
 i#+i`       .:     ,:    .;       `;       .:      ;#+*`        .:       ,,      `+++,      .+++,"
end
    def logo
    puts "       `                                                                                   
                          ```        ` ```                                                                                
             `,**************************;`                                                                               
            ` #+iiii*****++++########z##+x,                                                                               
              :n,`...,,::;;;i;iii;iiiii+zx:                                                                               
              `iz..,,;i++####z#zzz##z#zxMx:                                                                               
               `+#.::;i*++**+#++++##+++xMx:                                                                               
           `    .#*.i;;i*+*i***+*++*+*#Mxx:                                                                               
                `,z;,+ii*+******+**i**+xMM:                                                                               
                 `:x::#i**++*i**i*ii**#xxM:                                                                               
                 ``in:*#ii*i*iiiiiiii*+xMM;,,::::,,..``                                                                   
                  ``+z;#*;iii;;iiiiiii+xxMMxnnnnnnnnzz+i:.``                                                              
                  ``:x;++;;i;;;i;;;;ii*nxMWxz+####zzznxMMn#i.`                                                            
                    :x;*+;;;i;;i;;;;;iinxMWn#*+**+++++++znxMxzi.`                                                         
                    :x;*+;ii;;;i;;i;iiinxMWn#++**++++++++##znxMx+,`                                                       
                    :x;**;;;;;;;;;;;;;inxMWMnzzzzzzz#########+#nMM#,``                                                    
                    :xi**:;;;;;;;;i;;;inMM#OWWWWWWWMMMxnzz####++#nMM+.`                                                   
                    :xi**::;;;;;;;;;;;;nxW#@@###@@@@@@@WWMxnz##+++#xWx;``                                                 
                    :x;i*::;;;;;;;;;;;;zMW#@@@@@@@@@@@@##OWMnz##+++#xM#.`                                                
                `   :Mii*::;;;;;;;;;;;;zxM@@@@@@@@@@@@@@@@@@@WMnz##+##nMx,```                                             
                  `.nMi*+;:::;;;;;;;;:;zMW@W@@@@@@@@WWWWWMMMMW@WMx#####zMMi`                                              
                 `.n@Mi*+;:::;;;;;;::;;zxM@@@@@@@@@WWWMn++zxxMWW@WMxzzz##MM*`                                             
                `:nxWMi*+;::::;;;;:::;;zxW@@@@@@@WWWMM#;i+#znxMMWWWWxnzz#zMW+```                                          
                ,z#nWMi*+;:::::::;::::;zxM@@@@@@WWWWMx+i*++#znnxMMWWWMnz###xW+``                                          
              `,nz+nWM;*#i;;:::::;:::::#xW@@@@@WWWWMMMn**++##zznxxMM@WMn####xW+`                                          
              .z#+*zWMi*#i;;:::::;::::,+xW@@@@WWWWWMMMx**+++###znnxMWW@Wx####xMi`                                         
            ``z#+i*n@Mi*+i;;:::::;::,,,+xMW@@WWWWWWWMMM+*+++#####zxMW@@@Wx#+#zxW:```                                      
            `*z*ii*x@M;*+i;::::::::,,,,+xMWWWWWWWWWWMMM#*+++#++zxM@@@@@@#Wn#+zzMM,` `                                     
            :n*i;izW#M;*+;:::::::::,,,.*xMWMWWMMMMMWWWMz+++++#xWWW@@@@@@@@Wn##znWz`                                       
           .z+ii;#M@@M;*+;:::::::::,...*xMWMWWMMMMMWWWW#+#+#xWW@@@WWMxxMMW@MnzzzxWi`                                      
          `*z*i;*x@#OO;i*;::,::::,,,...*xMWMWWMMMMMWWWW#+#xWWWWWWMxxxxxxMM@@MnzzzxM,                                      
       ` `:n+i;;nW@@@M;i*;:::::,,,,....*xMWWWMMMMMMWWWW+zWWWWWMxnnnnxxxxMMW@WMnz#zW#`                                     
         `##iii+M@@W@M;i*:,::,,,,,,....*xM@@WWMMMMMMMWM+WWWWxnnnnnnnnxxxxMWW@Wxzz+xW;                                     
       ` ;x*iiix@@WW@M;**,,:,,,,,,...`.+xM#OWMMMMMMWWWxzWWMnnnnnnnnnnnxxxMWW@@Mz++#Wn`                                    
       ``nz*iizW@WWW@M;**,,,,,,,,,..```+xM#OWWMMMMWWWWnnMxznnnnnnnnnnxxxxMWWW@Wx***zM;                                    
        :x+ii*M@WWMW@M;**.,,,,......```+xM@@WWWWWWWWWMzxnnnnnnnnnnnxxxxxxMMWW@@W#**+xn``                                  
       `zz*iinW@WWMW@M;**.,,,,..,..````+xM@@WWWWWWWWWMznnnnnnnnnnxxxxxxxxMMWW@@@x+i*zW:`                                  
       .M#ii*M@WWMMW@M;**.,,,,.....````+xM@@WWWWWWWWWxznnnnnnnxxxxxxxxxxxMMWWW@@M+**+W+`                                  
       ix*ii#WWWMMxM@M;**.,:::,...`````+xW@@WWWWWWWWWnnxxnnnnxxxxxxxxxxxxMMMMWW@Wn*i*nx.                                  
      `nzii*x@WMxnzxWM;**.,:,.....`````*xM#OWWWWWWWWMznnnnnnxxxxxxxxxxxxxMMMMWW@@M+**#W;                                  
      ,M#;i+M#@@@WM@@M;*+,.,,.....`````*xM#OWWWWWWWWnnxxxxxxxxxxxxxxxxxxxMMMMWW@@W#+**M#`                                 
      ix*;izW#@@@@W@@M;*+,...,,,...````*xM@@WWWWWWWMznnxxxxxxxxxxxxxxxxxxMMMMWWW@@x+iinx.                                 
     `#ni;ix@#@@@@@@@M;*+:.,,,,,,,.````*xM@@WWWWWWMznxxxxxxxxxxxxxxxxxxxxMMMMWWW@@M+*i+M:                                 
     .nzii*M@#@@@@@@#M;*+:,,,,,:,,.````*xM@@WWWWWWxzxxxxxxxxxxxxxxxxxxxMMMMMMWWW@@W+*i*Mi                                 
     ,x#;i#W##@@@@@@#Mi**::,:,,::...```*xM@@WWWWMMznxxxxxxxxxxxxxxxxxxxMMMMMMMWWW@Wziiix#`                                
     ;M+;izW##@@@@@@@Mi**,:,,:,::,,.``.*xM@@WWWWMzzxxxxxxxxxxxxxxxxxxxxMMMMMMMWWW@Wn*i;zn`                                
    `*x*iin@##@@@@@@@M;**,:,,::,::,....*xM@@WWMWnzxxxxxxxxxxxxxxxxxxxxxMMMMMMMWWW@@x*i;#x.                                
    `+xii*x@#@@@@@@@#M;*+,,,,:;:::,....*xW@@WWMx#xxxxxxxxxxxxxMMMMMMxMMMMMMMMMMWWW@M*ii+x:                                
    `#nii*x@#@@@@@@@#M;**,,,,,::,,,,...*xW@@WMxzxxxxMMxMMMMMMMMMMMMMMMMMMMMMMMWWWW@W+;i*x;                                
    `zzii*M@#@@@@@@@@M;**,,,,,,:,,,,...*xM@@Wn#nxxMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWW@W+ii*x;                                
    .nz;i*M##@@@@@@@#M;**:,,,,,,,,,,,..*xW@WxzxMMMMMMMMMMMMMMMMMxxxxMMMMMMMMMMWWWW@W+ii*xi                                
    .xz;i*M##@@@@@@@#M;**:,,,:,::,,,,..*xW@MnxxMMMMMMMMMMMMMxxMxxxxxMMMMMMMMMMWWWW@W+i**x*                                
    .xzii+M##@@@@@@@#M;**::,,,,,::,,,..+xM@WMMMMMMMMMMMMMMMxxxxxxxxnnnxxxxxxxMMWW@@W#i**M*                                
    .xzii*M@#@@@@@@@#M;**:::,,,:::,,,..+xM@WMMMMMMMMMMMMMxxnnzz###zzxxMMWWWWWWWWW@@Wz++*M*                                
    `n#;;*M@#@@@@@@@#M;**:::::::,::,,,.+xM@@WMMMMMMMMMMxxnz###znxMWWW@@@@@@@@@@@@@#W#+++Mi                                
    `z#;;*M@#@@@@@@@#M;*+:::::::,::,,,,+xM@@WMMMMMMMMxxz##znxMWWWWWW@@@@@@@@@@@@@@@M#*++M;                                
    `#zii*M@#@@@@@@@#M;**::::::::::,,,,+xM@@WMMMMMMMxn#znMMWWWWWWWWW@@@@@@@@@@@@@@@W+*+#M;                                
    `+nii*x@@@WWWWW@@M;*+;::::::::::,,:+xW@@WMMWMMxnnnMWWWWWWWWWWW@@@@@@@@@@@@@@@@@M#+#zx:                                
    `in***n@@WMxMxxW@M;*+;;:::::::::,::+xW@@WMMMMxnxWWWWWWWWWWWWWW@@@@@@@@@@@@@@@#OM#zznx.                                
     ;x+**zW@@WMxxnM@M;*+;;:::::::::::;+xW@@WMMMxxWWWWWMWWWWWWWWWWWW@@@@@@@@@@@@##Ox##zxn`                                
     :x#**#M@@MMxxnM@M;*+;;;:;::::::::i#xW@WWMxxMWWWWWWWWWWWWWWW@@@@@@@@@@@@@@@@##Wn+##M#`                                
     .nz**+M@@MMxxxM@M:*+;;;;;;::::::;i#xW@WMxMWWWWWWWWWWWWWW@@@@@@@@@@@@@@@@@#@#OWz+##Wi                                 
     `#n+++nW@WMMxxM@M:*+;;;::::::::::i#xW@WMMWWWWWWWWWWWWWWW@@@@@@@@@@@@@@@@@@@#OW###zM:                                 
     `iM#++zM@WMMxxM@M:+#;;;;;;;::::::i+xW@@WWWWWWWWWWWWWWWW@@@@@@@@@@@@@@@@@@@@#Ox###xx.                                 
      ,xz+++n@WMMxxM@M:+z*;;;;;;;:::::;#xW@@WWWWWWWWWWWWWWW@@@@@@@@@@@@@@@@@@@@@#Wnz#zM#.                                 
      `nn+##nW@WMxxM@M:+n+iii;;;;:;;::;+nW@@WWWWWWWWWWWWW@@@@@@@@@@@@@@@@@@@@@@#OMz##zW;`                                 
      `*M###zn@WMMxM@M:+z*iiii;;;;;;:;i#xW@@WWWWWWWWWWWW@@@@@@@@@@@@WMn+*+#nxWW@@xz##xx.                                  
       .Mn###zWWWMMM@M:+z**iiiiii;;;;;i+nW@@WWWWWWWWWWW@@@@@@@@@@@@@M+*+#znMWWW@WnzzzW#`                                  
       `zx####n@WMMW@M:+z*iiiiii;i;;;ii+nW#OWWWWWWWWWW@@@@@@@@@@@@@@n+#znxMWWW@@MnzzxW:                                   
        :Mn##zzW@WMW@M:+#*iiiiiiii;;;ii+nW#OWWWWWWW@@W@@@@@@@@@@@@@z#nxxMWWW@WWnzzzMn`                                   
        `nxz##zn@@WW@M:+#*****iiiii;;i*+nW@@@WWWWWWW@W@@@@@@@@@@@@@WznxMMWWWW@WMnzzxW; `                                  
         iMnz#zzM@@@@M:+#+*****iiii;;i*+nW@@@WWWWMMWW@W@@@@@@@@@W@WnxMMMWWW@@@WxzznWn`                                    
         `zMzzzzzW@@@M:+#*****iiiii;;i**zW@@WWWxzzxMWWW@@@@W@@@WWxnxMMWWWW@@@WxxxnxW;`                                    
          :Mxzzzzn@@@M,++****iiiiii;;i**zW@@WMxnxMMxMWWW@@@@WWxnznMMMWWWWW@@@MznnM@#`                                     
          `+Wnzzzzx@@M,++****iiiiii;ii**zW@@WxMMMMMMMnxMMMxxnnnxMMWWWWWWW@@@MnnznWM,                                      
           .xMnzzzzW#M,*+i***iiiiii;ii**zW@WMMMMWWWMMMMMMMMMMMMWMMMWWWWW@@@MnnnnxW*`                                      
           `;Wxnzznx@M:+#****iiiiii;ii**zW@WWWWWWWWWMMWWWWWMMMWWWWWW@WWW@@WxzzznWz.                                       
        `   `*WxzzzxWx,*z***iiiii;iii***zW@@WWWWWWWMMWWWWMWWWWWWWWWW@@@WWWnzzzzWM,`                                       
             `zMnzzx@x.iz***iiiiiiii**i*zW@@WWWWWWWWWWWWWWWWWWWW@@@@@@@@WxnnnnMW;``   `                                   
              .xWnzx@x,+#*++iiiiii***;iiz@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWW@+,......`                                  
              `,MWnx@n.#n+++**iii**iiii*nW@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WMWWWWMM#`                                 
               `:xWM@x.#n+++****iiiiiiiizxxxxxMMMMMMMWWMMMMWWWWWMMMMMMMMMMMMMMxMMWWMxzW+`                                 
                `:xW@n.zx+++****i*iiii::;i;;::::::::;;::::::;:::::::::::::::::;i+zx+izn.`                                 
                  ,x@n.nx+#+**++**iiiiii;ii;;;:::::::::::::::::::::::::,::;;;;i*#xn+zx.`                                  
                  `:M+.nx#++*******iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii*+****#xx#nM:` `                                 
                ```;n.:xMx#++**++***iiiiiiiiiiiiiii*******iiiiiiiiiiii***+#++##nMzzW;`                                    
                  :x,,#xxz+++++****************iii***********ii*********++++#znMnnMi``                                    
                `:n:.#xnxn++###++***********************************++*+++##znMxnM+.                                      
              ` .z;.*xMxxnzzz####+++*+++++++*********++**********+++++++#+#zxMxnMz.`                                      
               .#*.izxxnn#########++++++++++++++++*++++++**+++++++++++#nz#znMMxMx.``                                      
              `+*.:#xxxnzzz#####++++++++++++++++++++++++++++####z#####znzznMMMMM,````                                     
             `*+.:zxMMxxxxxxxxxnnnnnnnnxxxxxxxxxxxxxxxxxxxxxxMMMMMMMxMMMMMWMMMW;`                                         
            `,n.ixMMMWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWMMMWWWWWWWWWWWWWWWWWMMMMzxWi` `                                        
           `ixzxMMWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWMM+` `                                         
            .;;;;;;;;;;;;;;;;;;;;;;;;;;;iiii*****iiii;;;;;;;;;;;;;;;;;;;;;;:```  ``  "                                    
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                           
    end     

def champ_select_logo
puts"                                                                                                                                              
                                                                                                                                                      
  `i**`      ;    .,       ,:       .i      ;,     :iii;`     `:       :*+,       i`   .,                                                    
 :z, ,x     ,#    *;      `nn       +@`    ;@,     n.``in     ;*     `z; .x,     :W;   *;                                                    
,z`   n`    #:    x`      +;n       nx`   .nx     .z   `x     z.    `n.   i*     #i#   n`                                                    
`n`    `     x    ,#      :+.n      ,#n`   zi+     *;   ;+    `n     #:    ;+    `n`x  ,#                                                     
i*          :x*ii*z:     `n`.n      +:z.  +;#,     x` `i#`    i*    .n     +;    ;+ x. +:                                                     
n.          #:````x`     #, .n      n #, :#`x     ,n**i,      n.    *i     x`    z. +; x`                                                     
x           x    ,#     ;z**+z     ,# #:.n`;+     +:         `n     z,    ;+    `n  :#,#                                                      
M    ;i    :+    +:    .n   .z     #: +;z. z,     x          ii     n.   .n`    ;*  `x+:                                                      
n:  ;z`    z,    x     z,   .z     x  *ni `n     ,#          n`     *+  ,z.     z.   nx                                                       
.#++;      +    .i    .i    .*    .i  :+  ,;     ;,         `*       +#+*`      *    ;i                                                       
                                                                                                                                            
                                                                                                                                        
 ;*+:      ,*****`    ;`        `*****:      ;++:     :******`    ;`      ,*+i       ;:    ;                                                
`z: `M`     n.         x         ;*`        .z: `x,      `x`      `x      +*` *+      xn   .z                                                
+;   i.    .n         :+         n.        `n.   *i      ,z       ;*     +;   `M     :+x`  *;                                                
n,         *i         #,        `n         #:            +:       z.    :#     x     #,z:  n`                                                
:x*,       x***:     `x         in***     .n             x`      `n     n.    ,z    `x i+ .z                                                 
  ,#z      .z         :+         n.        *i            ,#       ;*    `n     +;    :+ .n +:                                                 
    M      *;         z.        .n         z,            +:       n.    :#    `x     #,  x`x`                                                 
i:   .n     n`        `n         ii         z,   .#       x       `n     ;+    z:    `n   #i#                                                  
i#  .n.    .z         ;*         n`         i#  ,z.      :#       ii     `M` `#;     ;*   ;M:                                                  
*#+*`     :+****.    ;+****    `#****;      *#+i`        ;,       i`      :#+*.      ;.   `# "
end      

def spaceing

puts "
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end

end

                                                                                                
                                                                                                