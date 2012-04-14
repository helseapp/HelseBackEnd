#Workplaces

wor1 = Workplace.new(:name => "Paulus Sykehjem", :address => "Sannergata 1B", :postnumber => "0577",:postplace => "Oslo", :telephone => "23422020")

wor2 = Workplace.new(:name => "Radiumhospitalet", :address => "Kirkeveien 166 ", :postnumber => "0477",
                     :postplace => "Oslo", :telephone => "23992043")
                     
wor1.save
wor2.save                    

#Employees

emp1 = Employee.new(:workplace => wor1, :firstname => "Marthe", :lastname => "Lomholt",
                    :birthdate => "1988-07-12", :address => "Mandalls Gate 18", :postnumber => "0190",
                    :postplace => "Oslo", :email => "marthelomholt@gmail.com", :mobilephone => "95218828",
                    :woman => true)

emp2 = Employee.new(:workplace => wor1, :firstname => "Josef", :lastname => "Nyhus",
                    :birthdate => "1958-02-11", :address => "Vogts Gate 4", :postnumber => "0420",
                    :postplace => "Oslo", :email => "josef@gmail.com", :mobilephone => "44556677",
                    :woman => false)

emp3 = Employee.new(:workplace => wor2, :firstname => "Linn", :lastname => "Feld",
                    :birthdate => "1974-07-12", :address => "Kirkeveien 40", :postnumber => "0255",
                    :postplace => "Oslo", :email => "linn@feld.com", :mobilephone => "33445566",
                    :woman => true)
emp1.save
emp2.save
emp3.save

#Patients

pat1 = Patient.new(:workplace => wor1, :firstname => "Gunnar", :lastname => "Jones",
                   :birthdate => "1910-02-13", :address => "Storgata 2", :postnumber => "0155",
                   :postplace => "Oslo", :woman => false)

pat2 = Patient.new(:workplace => wor1, :firstname => "Britt", :lastname => "Watne",
                   :birthdate => "1917-12-13", :address => "Pilestredet 49", :postnumber => "0255",
                   :postplace => "Oslo", :woman => true)

pat3 = Patient.new(:workplace => wor2, :firstname => "Sofie", :lastname => "Eller",
                   :birthdate => "1941-06-13", :address => "Holbergs Plass 13", :postnumber => "0355",
                   :postplace => "Oslo", :woman => true)

pat1.save
pat2.save
pat3.save