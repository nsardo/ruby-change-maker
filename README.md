# Ruby Change Maker
Given a currency amount (assuming US Currency ) returns that amount expressed as the least amount of change using the least number of bills, coins, or combination of bills and coins.
## ALL EXPLANATIONS ARE ASSUMING OS X OR LINUX

### To Run:
```      
cd into bin/ and type: './changemaker' (the file is already chmod'd)
```

### To Run Tests:
```
(require's cucumber)
cd into root directory ( 'changemaker/' ), then type: cucumber
```    

### NOTES:

* Source is in **lib/changemaker/**.
* **lib/changemaker.rb** is just some boot-strapping for cucumber.
* **features/support/** again, boot-strapping for cucumber.
