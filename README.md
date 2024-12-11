# IBM-Mainframe-COBOL-Programming

This repository contains a COBOL programming project designed for IBM Mainframe systems. The project demonstrates the implementation of a **Merge-Sort Program** along with the corresponding JCL scripts for compilation and execution. This is a great reference for beginners and intermediate developers working with COBOL and mainframe environments.

---

## 📂 Project Structure

The project consists of the following files:

### COBOL Source Code
- **`MERGESRT.cbl`**: The COBOL program that performs a merge-sort operation. It reads data from three input files, merges and sorts the records, and writes the sorted output to a file.

### JCL Scripts
- **`COMPILE.jcl`**: JCL to compile and link the COBOL source code.
- **`EXEC.jcl`**: JCL to execute the compiled COBOL program.

---

## 🚀 How to Use

### Prerequisites
- Access to an IBM Mainframe environment or a Mainframe emulator (e.g., Hercules, z/OS on IBM Cloud).
- Familiarity with COBOL and JCL basics.

### Steps to Run
1. **Compile the COBOL Program**  
   Submit the `COMPILE.jcl` to compile and link the `MERGESRT.cbl` program.
   - Ensure that the `Z54915.LOADLIB` dataset exists or update the JCL to point to your load library.
   - Verify that the `COMPILE.jcl` completes with a return code of `CC=0000`.

2. **Prepare Input Datasets**  
   Create input datasets (`INPUT1`, `INPUT2`, and `INPUT3`) with appropriate test data.

3. **Execute the Program**  
   Submit the `EXEC.jcl` to execute the compiled program.
   - Ensure the input datasets exist and are accessible.
   - The sorted records will be written to the `OUTPUT` dataset specified in the JCL.

4. **Verify Output**  
   Check the output dataset for the sorted records and review job logs for any errors.

---

## 💻 COBOL Program Details

The COBOL program performs the following steps:
1. Opens three input files and a temporary sort file.
2. Reads records sequentially from the input files and writes them into the sort file.
3. Uses the `SORT` verb to sort the records by a key (ascending order).
4. Writes the sorted records to an output file.

---

## 📜 JCL Details

### `COMPILE.jcl`
- Compiles and links the COBOL program.
- Generates an executable load module.

### `EXEC.jcl`
- Executes the compiled COBOL program.
- Defines input and output datasets for the program.

---

## ⚙️ File Formats

- **Input Files**: Sequential datasets containing 80-character records.
- **Output File**: Sequential dataset with sorted 80-character records.

---

## 🛠 Troubleshooting

### Common Errors
1. **Return Code CC=0012 during Compilation**
   - Verify the `LKED.SYSLMOD` dataset is properly defined.
   - Ensure the system libraries (`SYS1.COBLIB`) are included.

2. **JCL Errors during Execution**
   - Ensure input datasets (`INPUT1`, `INPUT2`, `INPUT3`) exist with valid data.
   - Verify that the `STEPLIB` DD points to the correct load library.

---

## 📚 Resources

- [COBOL Basics](https://www.ibm.com/docs/en)
- [JCL Basics](https://www.ibm.com/docs/en)
- [Hercules Emulator](https://www.hercules-390.org/)

---

## Output

![Output](https://github.com/user-attachments/assets/0e234b46-2417-46f8-ae44-8455690efcac)
