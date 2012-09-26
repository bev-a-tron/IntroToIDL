pro mghread, filename
print, 'hello from mghread!'
openr, lun, filename, /Get_Lun
print, lun
close, lun
end
;+
; NAME:
;     MGHREAD
; PURPOSE:
;     Read MGH formatted files.
; EXPLANATION:
;     Reads in header that's 512 bytes in length, with key-value pairs.
;     The header has information about the dimensions
;     of the array and the data type and endianness.
; CALLING SEQUENCE:
;     READ, filename
; INPUTS:
;     filename - path to file, string
; OUTPUTS:
;     IDL array with corresponding data type.
; FILE EXTENSION:
;     By convention, use the file extension .en
; EXAMPLE:
;     Read in an MGH file called data.en and save to variable called
;     mydata.
;
;     IDL> mydata = MGHread, 'data.en'
;+
;header = strarr(10)
;print, header
;free_lun, lun
