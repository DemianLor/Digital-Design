********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Wed Oct 02 23:59:42 2024
* L-Edit Version:		L-Edit Win64 16.01.20130408.01:22:50
*
* Rule Set Name:		
* TDB File Name:		C:\Daniel\UDG\7mo\Seminario de soluci�n de circuitos digitales\NAND3\NAND3\SetupONsemiC5.tdb
* Command File:		C:\Daniel\UDG\7mo\Seminario de soluci�n de circuitos digitales\NAND3\NAND3\mamis05.ext
* Cell Name:			NAND3_1mA
* Write Flat:			NO
********************************************************************************

.include modelos.sp

****************************************

M1 1 2 3 GND_ CMOSN l=6e-007 w=4.2e-006  $ (6.75 -24.0612 7.35 -19.8612)
M2 4 5 1 GND_ CMOSN l=6e-007 w=4.2e-006  $ (9.18 -24.0612 9.78 -19.8612)
M3 GND_ 6 4 GND_ CMOSN l=6e-007 w=4.2e-006  $ (11.61 -24.0612 12.21 -19.8612)
M4 VDD 2 3 VDD CMOSP l=6e-007 w=4.2e-006  $ (6.75 -9.9297 7.35 -5.7297)
M5 3 5 VDD VDD CMOSP l=6e-007 w=4.2e-006  $ (9.18 -9.9297 9.78 -5.7297)
M6 VDD 6 3 VDD CMOSP l=6e-007 w=4.2e-006  $ (11.61 -9.9297 12.21 -5.7297)
* Top level device count
* M(CMOSN)		3
* M(CMOSP)		3
* Number of devices:	6
* Number of nodes:	8


