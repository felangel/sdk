class MyClass {
  int fieldName;

  MyClass(this.fieldName);

  @pragma('dart2js:noInline')
  int get innerGetter => fieldName;

  @pragma('dart2js:tryInline')
  int get getterName => /*1:getterName(inlined)*/ innerGetter;
  // TODO(36841): The above entry should not be on the stack for a null
  // receiver.
}

@pragma('dart2js:noInline')
confuse(x) => x;

@pragma('dart2js:noInline')
sink(x) {}

main() {
  confuse(new MyClass(3));
  var m = confuse(null);
  sink(m. /*0:main*/ getterName);
  sink(m); // TODO(39998): Remove second use of 'm'.
}
