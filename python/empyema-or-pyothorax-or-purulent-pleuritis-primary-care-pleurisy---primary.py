# Chukwuma Iwundu, Clare MacRae, Eleftheria Vasileiou, 2023.

import sys, csv, re

codes = [{"code":"1231843013","system":"snomedct"},{"code":"22395010","system":"snomedct"},{"code":"301647018","system":"snomedct"},{"code":"301650015","system":"snomedct"},{"code":"301651016","system":"snomedct"},{"code":"301652011","system":"snomedct"},{"code":"301669013","system":"snomedct"},{"code":"301671013","system":"snomedct"},{"code":"3048161000006111","system":"snomedct"},{"code":"1231843013","system":"snomedct"},{"code":"H501400","system":"readv2"},{"code":"H501401","system":"readv2"},{"code":"H51..01","system":"readv2"},{"code":"H510400","system":"readv2"},{"code":"H510500","system":"readv2"},{"code":"H510600","system":"readv2"},{"code":"H510700","system":"readv2"},{"code":"H510800","system":"readv2"},{"code":"H51y000","system":"readv2"},{"code":"H51z000","system":"readv2"},{"code":"H51z100","system":"readv2"},{"code":"H51z200","system":"readv2"},{"code":"H501400","system":"readv2"},{"code":"H501401","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('empyema-or-pyothorax-or-purulent-pleuritis-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleurisy---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleurisy---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleurisy---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
