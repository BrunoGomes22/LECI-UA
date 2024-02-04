function userID = getID()
    prompt = 'Insert Tourist ID (1 to ??): ';
    userID = input(prompt);

    while floor(userID) ~= userID || userID < 1
        fprintf('Invalid input. Please try again.\n');
        userID = input(prompt);
    end

end