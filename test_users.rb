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
                    :birthdate => "1974-07-12", :address => "Kirkeveien 40", :postnumber => "0255",
                    :postplace => "Oslo", :email => "linn@feld.com", :mobilephone => "33445566",
                    :woman => true)

emp3 = Employee.new(:workplace => wor2, :firstname => "Ingunn", :lastname => "Aker",
                    :birthdate => "1970-05-22", :address => "Platous Gate 30", :postnumber => "0192",
                    :postplace => "Oslo", :email => "ingunn@aker.com", :mobilephone => "42424242",
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

pat4 = Patient.new(:workplace => wor2, :firstname => "Fritjof", :lastname => "Olsen",
                   :birthdate => "1932-05-13", :address => "Bergensgata 22", :postnumber => "0468",
                   :postplace => "Oslo", :woman => false)

pat1.save
pat2.save
pat3.save
pat4.save



# Tasks

tt1 = TaskTemplate.new(:name => "Støvsuge", 
                  :description => "Støvsug alle flater i leiligheten, og sørg for at støvsugerposen ikke er full")
                  
tt2 = TaskTemplate.new(:name => "Rydde", 
                      :description => "Fjern ting fra overflater. Plasser gjenstander slik at leiligheten framstår organisert")

tt3 = TaskTemplate.new(:name => "Dusje", 
                      :description => "Dusj og kle pasienten i rene klær")
                      
tt1.save
tt2.save
tt3.save


# Visit

vi1 = Visit.new(:patient => pat1, :employee =>emp1, :day=> 2.days.from_now, :start=> nil, :end=> nil)
vi2 = Visit.new(:patient => pat2, :employee =>emp1, :day=> 5.days.from_now, :start=> nil, :end=> nil)
vi3 = Visit.new(:patient => pat2, :employee =>emp2, :day=> 5.days.from_now, :start=> nil, :end=> nil)

vi1.save
vi2.save
vi3.save

# Messages

mes1 = Message.new(:date_sent => Time.now - 3.days, :employee => emp1, :text => "Du er flink!",
                   :read => true, :high_priority => false)

mes2 = Message.new(:date_sent => Time.now + 1.days, :employee => emp2, :text => "You're fired!",
                   :read => false, :high_priority => true)



mes1.save
mes2.save













