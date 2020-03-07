" Strings, Templates, Numbers
syntax region  jsString           start=+\z(["']\)+  skip=+\\\%(\z1\|$\)+  end=+\z1+ end=+$+  contains=jsSpecial,@NoSpell extend
syntax region  jsTemplateString   start=+`+  skip=+\\`+  end=+`+     contains=jsTemplateExpression,jsSpecial,@NoSpell extend

" Objects
syntax region  jsObjectKeyString   contained start=+\z(["']\)+  skip=+\\\%(\z1\|$\)+  end=+\z1\|$+  contains=jsSpecial,@NoSpell skipwhite skipempty nextgroup=jsObjectValue
syntax region  jsObjectStringKey   contained start=+\z(["']\)+  skip=+\\\%(\z1\|$\)+  end=+\z1\|$+  contains=jsSpecial,@NoSpell extend skipwhite skipempty
