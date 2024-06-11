// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Placement {
    address public admin; //Admin of College
    uint public totalRegStudents = 0; //this variable shows total students registered for Placements.
    uint public totalRegCompanies =0; // this indicates total companies came for drives
    uint public totalPlacedStudents = 0;
    
    constructor(){
        admin = msg.sender;
    }
    struct Student {
        uint  st_uid;
        string st_name;
        uint st_score;
    }
    struct Company{
        string C_name; // Company name
        uint req_score; // required Score(CGPA) expected from students
    }
    mapping(address => Student) public students;
    mapping(address => Company) public companies;

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this function");
        _;
    }
     modifier onlyStudent(){
        require(students[msg.sender].st_uid != 0,"Only Students can apply for placements");
        _;
     }
    function registerAsStudent(uint _uid, string memory _name, uint _score ) public {
          require(_score > 75,"You can not register [Score must be greater than 75]");

          students[msg.sender] = Student(_uid,_name,_score);
          totalRegStudents++;
          // Ensure the total registered students count is accurate
          assert(totalRegStudents > 0);

    }
    function registerAsCompany(string memory _name,uint _reqscore) public{
        require(_reqscore >60 && _reqscore <100,"Enter valid expected Score as per norms");
        companies[msg.sender]= Company(_name,_reqscore);
        totalRegCompanies++;   
        // Ensure the total registered companies count is accurate
        assert(totalRegCompanies > 0);       
    
    }

    function ApplyforPlacement(address _company)public onlyStudent{
        if(students[msg.sender].st_score < companies[_company].req_score){
            revert("Application rejected [Eligibility not met]"); // Check for the placement criteria.
        }
            totalPlacedStudents++;
            // Ensure the total placed students count is accurate
            assert(totalPlacedStudents <= totalRegStudents);
        
    }

    function totalStudentsleft() public view onlyAdmin returns(uint){
        uint studentsLeft = totalRegStudents - totalPlacedStudents;
        
        assert(totalRegStudents > 0);
        return studentsLeft;   
    }
   
}
