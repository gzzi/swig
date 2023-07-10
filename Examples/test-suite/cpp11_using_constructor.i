%module cpp11_using_constructor

%inline %{
// Public base constructors
struct PublicBase1 {
  PublicBase1(int i, const char* s) {}
  void meth() {}
};
struct PublicDerived1 : PublicBase1 {
  using PublicBase1::PublicBase1;
  using PublicBase1::meth;
};

struct PublicBase2 {
  PublicBase2(int i, const char* s) {}
  PublicBase2() {}
  void meth() {}
};
struct PublicDerived2 : PublicBase2 {
  using PublicBase2::PublicBase2;
  using PublicBase2::meth;
};

struct PublicBase3 {
  PublicBase3(int i, const char* s) {}
  PublicBase3() = default;
  void meth() {}
};
struct PublicDerived3 : PublicBase3 {
  using PublicBase3::PublicBase3;
  using PublicBase3::meth;
};

struct PublicBase4 {
  PublicBase4() = default;
  void meth() {}
};
struct PublicDerived4 : PublicBase4 {
  using PublicBase4::PublicBase4;
  using PublicBase4::meth;
};

// Protected base constructors
struct ProtectedBase1 {
protected:
  ProtectedBase1(int i, const char* s) {}
  void meth() {}
};
struct ProtectedDerived1 : ProtectedBase1 {
  using ProtectedBase1::ProtectedBase1;
  using ProtectedBase1::meth;
};

struct ProtectedBase2 {
protected:
  ProtectedBase2(int i, const char* s) {}
  ProtectedBase2() {}
  void meth() {}
};
struct ProtectedDerived2 : ProtectedBase2 {
  using ProtectedBase2::ProtectedBase2;
  using ProtectedBase2::meth;
};

struct ProtectedBase3 {
protected:
  ProtectedBase3(int i, const char* s) {}
  ProtectedBase3() = default;
  void meth() {}
};
struct ProtectedDerived3 : ProtectedBase3 {
  using ProtectedBase3::ProtectedBase3;
  using ProtectedBase3::meth;
};

struct ProtectedBase4 {
protected:
  ProtectedBase4() = default;
  void meth() {}
};
struct ProtectedDerived4 : ProtectedBase4 {
  using ProtectedBase4::ProtectedBase4;
  using ProtectedBase4::meth;
};

// Mix of public and overloaded constructors
struct MixedBase1 {
  MixedBase1(int i, const char* s) {}
  void meth() {}
};
struct MixedDerived1a : MixedBase1 {
  MixedDerived1a() : MixedBase1(0, 0) {}
  using MixedBase1::MixedBase1;
  using MixedBase1::meth;
};
struct MixedDerived1b : MixedBase1 {
  using MixedBase1::MixedBase1;
  MixedDerived1b() : MixedBase1(0, 0) {}
  using MixedBase1::meth;
};

struct MixedBase2 {
  MixedBase2(int i, const char* s) {}
  MixedBase2() {}
  void meth() {}
};
struct MixedDerived2a : MixedBase2 {
  MixedDerived2a(int i, const char* s) {}
  using MixedBase2::MixedBase2;
  using MixedBase2::meth;
};
struct MixedDerived2b : MixedBase2 {
  using MixedBase2::MixedBase2;
  MixedDerived2b(int i, const char* s) {}
  using MixedBase2::meth;
};
struct MixedDerived2c : MixedBase2 {
  using MixedBase2::MixedBase2;
  MixedDerived2c(int ii) : MixedBase2(ii, 0) {}
  using MixedBase2::meth;
};
struct MixedDerived2d : MixedBase2 {
  MixedDerived2d(int ii) : MixedBase2(ii, 0) {}
  using MixedBase2::MixedBase2;
  using MixedBase2::meth;
};

struct MixedBase3 {
  MixedBase3(int i, const char* s) {}
  MixedBase3() = default;
  void meth() {}
};
struct MixedDerived3a : MixedBase3 {
  MixedDerived3a(int i, const char* s) {}
  using MixedBase3::MixedBase3;
  using MixedBase3::meth;
};
struct MixedDerived3b : MixedBase3 {
  using MixedBase3::MixedBase3;
  MixedDerived3b(int i, const char* s) {}
  using MixedBase3::meth;
};
struct MixedDerived3c : MixedBase3 {
  using MixedBase3::MixedBase3;
  MixedDerived3c(int ii) : MixedBase3(ii, 0) {}
  using MixedBase3::meth;
};
struct MixedDerived3d : MixedBase3 {
  MixedDerived3d(int ii) : MixedBase3(ii, 0) {}
  using MixedBase3::MixedBase3;
  using MixedBase3::meth;
};

// Mix of protected base constructors and overloading
struct ProotBase1 {
  ProotBase1() {}
protected:
  ProotBase1(int i, const char* s) {}
  void meth() {}
};
struct ProotDerived1a : ProotBase1 {
  using ProotBase1::ProotBase1;
  using ProotBase1::meth;
};
struct ProotDerived1b : ProotBase1 {
  using ProotBase1::ProotBase1;
  ProotDerived1b(int i, const char* s) : ProotBase1(i, s) {}
  using ProotBase1::meth;
};
struct ProotDerived1c : ProotBase1 {
  ProotDerived1c(int i, const char* s) : ProotBase1(i, s) {}
  using ProotBase1::ProotBase1;
  using ProotBase1::meth;
};
struct ProotDerived1d : ProotBase1 {
  using ProotBase1::ProotBase1;
  ProotDerived1d(int ii) : ProotBase1(ii, 0) {}
  using ProotBase1::meth;
};
struct ProotDerived1e : ProotBase1 {
  ProotDerived1e(int ii) : ProotBase1(ii, 0) {}
  using ProotBase1::ProotBase1;
  using ProotBase1::meth;
};

struct ProotBase2 {
protected:
  ProotBase2(int i, const char* s) {}
  ProotBase2() {}
  void meth() {}
};
struct ProotDerived2a : ProotBase2 {
  ProotDerived2a(int i, const char* s) {}
  using ProotBase2::ProotBase2;
  using ProotBase2::meth;
};
struct ProotDerived2b : ProotBase2 {
  using ProotBase2::ProotBase2;
  ProotDerived2b(int i, const char* s) {}
  using ProotBase2::meth;
};
struct ProotDerived2c : ProotBase2 {
  ProotDerived2c(int i, const char* s) {}
  ProotDerived2c() {}
  using ProotBase2::ProotBase2;
  using ProotBase2::meth;
};
struct ProotDerived2d : ProotBase2 {
  ProotDerived2d(int i, const char* s) {}
  using ProotBase2::ProotBase2;
  ProotDerived2d() {}
  using ProotBase2::meth;
};
struct ProotDerived2e : ProotBase2 {
  using ProotBase2::ProotBase2;
  ProotDerived2e(int i, const char* s) {}
  ProotDerived2e() {}
  using ProotBase2::meth;
};
struct ProotDerived2f : ProotBase2 {
  using ProotBase2::ProotBase2;
  ProotDerived2f(int i, const char* s) {}
  ProotDerived2f() {}
  ProotDerived2f(int) {}
  using ProotBase2::meth;
};
%}

// Missing base
%warnfilter(SWIGWARN_TYPE_UNDEFINED_CLASS, SWIGWARN_PARSE_USING_UNDEF) HiddenDerived1;
%{
struct HiddenBase1 {
  HiddenBase1(int i, const char* s) {}
  HiddenBase1() {}
  void meth() {}
};
%}
%inline %{
struct HiddenDerived1 : HiddenBase1 {
  using HiddenBase1::HiddenBase1;
  using HiddenBase1::meth;
};
%}

// Typedefs and using declarations
%inline %{
struct TypedefBase1 {
  TypedefBase1(int i, const char* s) {}
  void meth() {}
};
struct TypedefDerived1 : TypedefBase1 {
  typedef TypedefBase1 Superclass;
  using Superclass::TypedefBase1;
};
void tester() {
    TypedefDerived1 td(0, "hi");
    td.meth();
}
%}
