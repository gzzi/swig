from cpp11_using_constructor import *


# Public base constructors
a = PublicDerived1(0, "hi").meth()
a = PublicDerived2().meth()
a = PublicDerived2(0, "hi").meth()
a = PublicDerived3().meth()
a = PublicDerived3(0, "hi").meth()
a = PublicDerived4().meth()

# Protected base constructors
# Cannot test these as the constructors are protected

# Mix of public and overloaded constructors
MixedDerived1a(0, "hi").meth()
MixedDerived1a().meth()
MixedDerived1b(0, "hi").meth()
MixedDerived1b().meth()

MixedDerived2a(0, "hi").meth()
MixedDerived2a().meth()
MixedDerived2b(0, "hi").meth()
MixedDerived2b().meth()

MixedDerived2c(0, "hi").meth()
MixedDerived2c().meth()
MixedDerived2c(0).meth()

MixedDerived2d(0, "hi").meth()
MixedDerived2d().meth()
MixedDerived2d(0).meth()

MixedDerived3a(0, "hi").meth()
MixedDerived3a().meth()
MixedDerived3b(0, "hi").meth()
MixedDerived3b().meth()

MixedDerived3c(0, "hi").meth()
MixedDerived3c().meth()
MixedDerived3c(0).meth()

MixedDerived3d(0, "hi").meth()
MixedDerived3d().meth()
MixedDerived3d(0).meth()

# Mix of protected base constructors and overloading
ProotDerived1a().meth()

ProotDerived1b(0, "hi").meth()
ProotDerived1b().meth()

ProotDerived1c(0, "hi").meth()
ProotDerived1c().meth()

ProotDerived1d(0).meth()
ProotDerived1d().meth()

ProotDerived1e(0).meth()
ProotDerived1e().meth()

ProotDerived2a(0, "hi").meth()

ProotDerived2b(0, "hi").meth()

ProotDerived2c(0, "hi").meth()
ProotDerived2c().meth()

ProotDerived2d(0, "hi").meth()
ProotDerived2d().meth()

ProotDerived2e(0, "hi").meth()
ProotDerived2e().meth()

ProotDerived2f(0, "hi").meth()
ProotDerived2f().meth()
ProotDerived2f(0).meth()

# Missing base
HiddenDerived1()
