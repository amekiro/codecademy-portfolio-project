# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  #ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

a1 = Work.create( title: 'Duck in Lake Blausee', description: 'Duck photographed in Lake Blausee in Switzerland (June 2019)', image: 'https://lh3.googleusercontent.com/pw/AM-JKLV8CJFyzOWJamgWipfpBOF9YTPgBeDAykVrqjHQ0iRQOEt6SBPh-oMqM_-ZDd6VMHYWW4y-lchcuKr3lmUYGtYP9xSpvMHlyMI4fS6ArHcQky4BCebRUOzkPmD8Sx-rAMZ00uGOE1N6cKEDlyblR31D=w1454-h969-no?authuser=0' )
a2 = Work.create( title: 'Early Morning Meal', description: 'Sparrow photographed in Château de Chillon in Switzerland (June 2019)', image: 'https://lh3.googleusercontent.com/pw/AM-JKLUFdpI_KCgQHdoK_AaMe9ZxswxXp1PU5Jt8EFYGga9kavcpTOmw7ww8KTLgOoPTWwBD14Gi7STsoQi2bZm5dUHx0hZxtzTl2MrKZ-5-rMmhpEPU_y4dJsW0ZlzLRm5Zsa4cYHmYfQBJdkcrWljb6v3O=w1454-h969-no?authuser=0' )
a3 = Work.create( title: 'Happy Goat', description: 'Goat found at Heidiland in Switzerland (June 2019)', image: 'https://lh3.googleusercontent.com/pw/AM-JKLX7dUEETrzEt3axdFdYwsJxRB60lyfwGXsUwKIYGDd15qXKe5MxQacWiIB1S3YVgI5QevvOAm_ZiwWnfR_YngWhZRZWrzntI2MP3gpcjIBm27Ig456yL5VEsQNOjRkpYq-MBKRwOlJrBTDR8LC31k1d=w1414-h943-no?authuser=0')
a4 = Work.create( title: 'Sunset at Fuji', description: 'Sunset overlooking Mt. Fuji at Oshino Hakkai, Japan (November 2017)', image: 'https://lh3.googleusercontent.com/pw/AM-JKLVXZy2I3keYvntiXhtQajgAVXSMao35QJmIZZ1y_Ay4M4SMZiU9quVdxyMWf9SRCEAiooup6sHDVbScgi4hTncKHQKEYx2N7WMQDIEqy98kgcG1Ds7U7BXHTfgPoN6-QEbkmtBVM_4BVDtztzyu_egr=w1470-h715-no?authuser=0')
a6 = Work.create( title: 'Open Wide!', description: 'Seagull found on deck of Princess Cruise (May 2017)', image: 'https://lh3.googleusercontent.com/pw/AM-JKLUHsUeIL1QbHrobrZ6PSYP5Dto6I7ugSwxi8ncRO2n7CdVsLkMkGTJJ_sjT6f9vml3HwgQx5anf6DDeQmymglItn0L_6u3VXrlIv5b1jqzbZkRf2dcNxuSJbe2UycV2JZudK0sWfgPWbVbGzB0kJccl=w1414-h943-no?authuser=0')
a5 = Work.create( title: 'Time for a Dip', description: 'Sled dogs cooling out after a practice run in Juneau, Alaska (May 2017)', image: 'https://lh3.googleusercontent.com/pw/AM-JKLUFgI-o3wx_gvk-rdXSL_M1q14EN3Oiq8tCFtX9c0JWVmg8MuPp77Gwq4ijaAForilo6iWxQPVCoiKipesU3_c9funj7vQpghrXl6Vz2gSsJ4Fz3XJ8UGng4YZAt0ekMR2Rpm4_-m_FJDAicOH4vc8q=w1414-h943-no?authuser=0')