uses
  System;
const
  MAX_INT = Cardinal.MaxValue;
begin
  var uNumber : Cardinal;
  Console.WriteLine('Input an unsigned integer number');
  var bIsRightNumber := (Cardinal.TryParse(Console.ReadLine(), uNumber)) and
                     (uNumber <= MAX_INT);
  if (not bIsRightNumber) then
  begin
    Console.WriteLine('Invalid number format or number too big');
    Console.Read();
    exit();
  end;
  var strBinNum := '';
  var uTempVal := uNumber;
  while (uTempVal > 0) do
  begin
    var nBinNum := uTempVal mod 2;
    var chBinNum := chr(nBinNum+ord('0'));
    strBinNum := chBinNum + strBinNum;
    uTempVal := uTempVal div 2;
  end;
  if (strBinNum.Length = 0) then
  begin
    strBinNum := '0';
  end;
  Console.WriteLine
  (
    'The binary equavalent of the decimal number {0} is: {1}',
    uNumber, strBinNum
  );
  Console.Read();
end.