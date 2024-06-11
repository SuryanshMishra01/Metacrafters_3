# Decentralized Placements Management
This solidity program "Placement" is a smart contract to ensure the conduct fair placement drives in Universities. Here companies can register with their names and requirements and Students can reqister with their personal and academic info then students can apply in companies and if they fulfill the requirements then they are placed.

# Description
The program consists of:
1. 4 public state variables which will store the admin address, total registered students, total registered companies and total placed students respectively.
2. 2 struct that will store info about students(name, uid and score) and companies(name amd required_score).
3. "registerAsStudent" function that will register students for placement drives, if certain conditions are met.
4. "registerAsCompany" function that will register the companies for drives, which are following certain norms.
5. "ApplyforPlacement" function that will be called by different students to apply for placements in companies.
6. "totalStudentsleft" this function can be used by admin to check if there are any students left which are not placed yet.

# Getting Started
## Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/. Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the "myToken" file in my repo with a .sol extension. Now compile and deploy the program. All done !!
## Interacting with Program
![image](https://github.com/SuryanshMishra01/Metacrafters_3/assets/116947777/299e310a-fc86-4465-a9a8-342f8056c245)
After deployment, we can interact with the contract by calling the functions that will appear on the left as shown in the screenshot. Also, we can interact using different addresses provided by Remix IDE.
![image](https://github.com/SuryanshMishra01/Metacrafters_3/assets/116947777/909ffa30-d6e6-48d7-bd41-d4553b2a2f7b)

# Author 
Suryansh Mishra @suryanshmishra0704@gmail.com
# License 
This project is licensed under the GNU General Public License v3.0 - see the LICENSE.md file for details
