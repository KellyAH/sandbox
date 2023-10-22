module SpellBook
  def castSpell(spell)
    puts "You casted the spell: #{spell}"
  end
end

class Wizard
  include SpellBook # mixin module to make it invokable by Athlete class obj.
  def flee
    puts "Ran away!"
  end
end

class Unicorn
  include SpellBook # mixin module to make it invokable by Athlete class obj.
  def gallop
    puts "galloped away!"
  end
end

class Monster
  def attack
    puts "Slash!"
  end
end

w = Wizard.new
m = Monster.new
u = Unicorn.new

w.flee
u.gallop
w.castSpell("firebolt")
u.castSpell("heal")
m.attack
m.castSpell # undefined method because module not 'mixed in'