//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Student_management{

    struct student{
        int stud_id;
        string stud_name;
        string stud_dept;
    }

    student[] students;


    function addStudent(int id,string memory name, string memory dept) public {
        student memory stud = student(id,name,dept);
        students.push(stud);
    }

    function getStudent(int id) public view returns(string memory, string memory){
        for(uint i = 0;i<students.length;i++){
            student memory stud =  students[i];
            if(stud.stud_id == id){
                return(stud.stud_name,stud.stud_dept);
            }
        }

        return("Not found", "Not found");
    }
       
}
