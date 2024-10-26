%Kamil Drożdż
%4. Udowodnić że dla każdego trójkąta suma kątów jest równa 180 stopni
function czySumaKatowRowna180()
    % Ilość losowych trójkątów do wygenerowania
    iloscTrojkatow = 1000;    
    % Margines błędu ze względu na zmiennoprzecinkowe
    marginesBledu = 1e-6;    
    % Inicjalizacja licznika trójkątów, których kąty sumują się do 180
    poprawneTrojkaty = 0;    
    for i = 1:iloscTrojkatow
        % Generowanie losowych kątów trójkąta
        kat1 = rand() * 180;
        kat2 = rand() * (180 - kat1);
        kat3 = 180 - kat1 - kat2;
        
        % Sprawdzenie, czy suma kątów jest równa 180 z uwzględnieniem marginesu błędu
        if abs(kat1 + kat2 + kat3 - 180) < marginesBledu
            poprawneTrojkaty = poprawneTrojkaty + 1;
        end
    end
    % Wyświetlenie wyniku
    fprintf('Liczba trójkątów, których kąty sumują się do 180: %d\n', poprawneTrojkaty);
end
%END