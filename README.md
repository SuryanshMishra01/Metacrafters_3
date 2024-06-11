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
   
