.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\advapi32.inc
include \masm32\include\kernel32.inc

includelib \masm32\lib\user32.lib
includelib \masm32\lib\advapi32.lib
includelib \masm32\lib\kernel32.lib

.data
szTitle db "GC Fix",0
szSuccess db "Fix completed!",0
szRegPath db "Software\\GraphiCode\\GC-PowerStation",0

.code
RegDeleteKeyRecursive proc hKeyRoot, lpszSubKey
    local hKey, lpszSubKeyName[256]:BYTE, dwSubKeyLen, dwIndex
    lea eax, hKey
    push eax
    push KEY_ENUMERATE_SUB_KEYS or DELETE
    push 0
    push lpszSubKey
    push hKeyRoot
    call RegOpenKeyExA
    cmp eax, ERROR_SUCCESS
    jne @exit
    mov dwIndex, 0
@enum_subkeys:
    mov dwSubKeyLen, 256
    lea eax, dwSubKeyLen
    push eax
    lea eax, lpszSubKeyName
    push eax
    push dwIndex
    push hKey
    call RegEnumKeyA
    cmp eax, ERROR_NO_MORE_ITEMS
    je @delete_self
    cmp eax, ERROR_SUCCESS
    jne @close_key
    lea eax, lpszSubKeyName
    push eax
    push hKey
    call RegDeleteKeyRecursive
    jmp @enum_subkeys
@delete_self:
    push hKey
    call RegCloseKey
    push lpszSubKey
    push hKeyRoot
    call RegDeleteKeyA
    jmp @exit
@close_key:
    push hKey
    call RegCloseKey
@exit:
    ret
RegDeleteKeyRecursive endp

start:
    push offset szRegPath
    push HKEY_CURRENT_USER
    call RegDeleteKeyRecursive
    
    ; Show message with system information icon
    push MB_OK or MB_ICONINFORMATION
    push offset szTitle
    push offset szSuccess
    push 0
    call MessageBoxA
    
    push 0
    call ExitProcess
end start