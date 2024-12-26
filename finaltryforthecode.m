clc
clear

 
% setup arduino 
a = arduino('COM3','Mega2560');

% configure the pins
configurePin(a,'D53','Pullup');
configurePin(a,'D52','Pullup');
configurePin(a,'D51','Pullup');
configurePin(a,'D50','Pullup');

% configure servo
s = servo(a,'D22');


disp('When you want to unlock, put in password')

pressedNumbers = {};

% Prompt the user to press each button one at a time
while(true)
    firstNumber1 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    secondNumber1 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    thirdNumber1 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    fourthNumber1 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if firstNumber1 == 0 || secondNumber1 == 0 || thirdNumber1 == 0 || fourthNumber1 == 0
        if firstNumber1 == 0
            pressedNumbers{end + 1} = 11;
        elseif secondNumber1 == 0
            pressedNumbers{end + 1} = 12;
        elseif thirdNumber1 == 0
            pressedNumbers{end + 1} = 13;
        elseif fourthNumber1 == 0
            pressedNumbers{end + 1} = 14;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Prompt the user to press each button one at a time
while(true)
    firstNumber2 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    secondNumber2 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    thirdNumber2 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    fourthNumber2 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if firstNumber2 == 0 || secondNumber2 == 0 || thirdNumber2 == 0 || fourthNumber2 == 0
        if firstNumber2 == 0
            pressedNumbers{end + 1} = 21;
        elseif secondNumber2 == 0
            pressedNumbers{end + 1} = 22;
        elseif thirdNumber2 == 0
            pressedNumbers{end + 1} = 23;
        elseif fourthNumber2 == 0
            pressedNumbers{end + 1} = 24;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Prompt the user to press each button one at a time
while(true)
    firstNumber3 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    secondNumber3 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    thirdNumber3 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    fourthNumber3 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if firstNumber3 == 0 || secondNumber3 == 0 || thirdNumber3 == 0 || fourthNumber3 == 0
        if firstNumber3 == 0
            pressedNumbers{end + 1} = 31;
        elseif secondNumber3 == 0
            pressedNumbers{end + 1} = 32;
        elseif thirdNumber3 == 0
            pressedNumbers{end + 1} = 33;
        elseif fourthNumber3 == 0
            pressedNumbers{end + 1} = 34;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Prompt the user to press each button one at a time
while(true)
    firstNumber4 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    secondNumber4 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    thirdNumber4 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    fourthNumber4 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if firstNumber4 == 0 || secondNumber4 == 0 || thirdNumber4 == 0 || fourthNumber4 == 0
        if firstNumber4 == 0
            pressedNumbers{end + 1} = 41;
        elseif secondNumber4 == 0
            pressedNumbers{end + 1} = 42;
        elseif thirdNumber4 == 0
            pressedNumbers{end + 1} = 43;
        elseif fourthNumber4 == 0
            pressedNumbers{end + 1} = 44;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Display the pressed numbers
disp('Pressed Numbers:');
disp(pressedNumbers);


correctCode = {14,22,31,43}
if (isequal(pressedNumbers,correctCode) == true) % if 4,2,1,3 is pressed
    writePosition(s, 0.6)
    disp('correct code: unlocked')


    % focusing on the locking mechanism
% once the user presses one, then the locking phase will begin 
 disp('When you want to lock, put in password again')

% start lock
lockpressedNumbers = {};

% Prompt the user to press each button one at a time
while(true)
    lockfirstNumber1 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    locksecondNumber1 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    lockthirdNumber1 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    lockfourthNumber1 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if lockfirstNumber1 == 0 || locksecondNumber1 == 0 || lockthirdNumber1 == 0 || lockfourthNumber1 == 0
        if lockfirstNumber1 == 0
            lockpressedNumbers{end + 1} = 11;
        elseif locksecondNumber1 == 0
            lockpressedNumbers{end + 1} = 12;
        elseif lockthirdNumber1 == 0
            lockpressedNumbers{end + 1} = 13;
        elseif lockfourthNumber1 == 0
            lockpressedNumbers{end + 1} = 14;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Prompt the user to press each button one at a time
while(true)
    lockfirstNumber2 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    locksecondNumber2 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    lockthirdNumber2 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    lockfourthNumber2 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if lockfirstNumber2 == 0 || locksecondNumber2 == 0 || lockthirdNumber2 == 0 || lockfourthNumber2 == 0
        if lockfirstNumber2 == 0
            lockpressedNumbers{end + 1} = 21;
        elseif locksecondNumber2 == 0
            lockpressedNumbers{end + 1} = 22;
        elseif lockthirdNumber2 == 0
            lockpressedNumbers{end + 1} = 23;
        elseif lockfourthNumber2 == 0
            lockpressedNumbers{end + 1} = 24;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Prompt the user to press each button one at a time
while(true)
    lockfirstNumber3 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    locksecondNumber3 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    lockthirdNumber3 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    lockfourthNumber3 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if lockfirstNumber3 == 0 || locksecondNumber3 == 0 || lockthirdNumber3 == 0 || lockfourthNumber3 == 0
        if lockfirstNumber3 == 0
            lockpressedNumbers{end + 1} = 31;
        elseif locksecondNumber3 == 0
            lockpressedNumbers{end + 1} = 32;
        elseif lockthirdNumber3 == 0
            lockpressedNumbers{end + 1} = 33;
        elseif lockfourthNumber3 == 0
            lockpressedNumbers{end + 1} = 34;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Prompt the user to press each button one at a time
while(true)
    lockfirstNumber4 = readDigitalPin(a, 'D52'); %reads in 0 if 1 is pressed.
    locksecondNumber4 = readDigitalPin(a, 'D53'); % reads in 0 if 2 is pressed. 
    lockthirdNumber4 = readDigitalPin(a, 'D50'); % reads in 0 if 3 is pressed.
    lockfourthNumber4 = readDigitalPin(a, 'D51'); % reads in 0 if 4 is pressed.
    
    % Check if any of the pins are read as 0
    if lockfirstNumber4 == 0 || locksecondNumber4 == 0 || lockthirdNumber4 == 0 || lockfourthNumber4 == 0
        if lockfirstNumber4 == 0
            lockpressedNumbers{end + 1} = 41;
        elseif locksecondNumber4 == 0
            lockpressedNumbers{end + 1} = 42;
        elseif lockthirdNumber4 == 0
            lockpressedNumbers{end + 1} = 43;
        elseif lockfourthNumber4 == 0
            lockpressedNumbers{end + 1} = 44;
        end
        break; % Break out of the loop if any pin reads as 0
    end
end

% Display the pressed numbers
disp('Lock Pressed Numbers:');
disp(lockpressedNumbers);

if (isequal(lockpressedNumbers,correctCode) == true) % if 4,2,1,3 is pressed
    writePosition(s, 0.44)
    disp('correct code: locked')
end
end
