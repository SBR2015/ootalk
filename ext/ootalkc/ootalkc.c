#include "ruby.h"

// prototype
void Init_ootalkc();
void prepare_int(VALUE a, int* result);
static VALUE nand(VALUE klass, VALUE a, VALUE b);
static VALUE nor(VALUE klass, VALUE a, VALUE b);

void
Init_ootalkc() {
  VALUE mOotalk = rb_define_module("OotalkC");
  rb_define_method(mOotalk, "ext_nand", nand, 2);
  rb_define_method(mOotalk, "ext_nor", nor, 2);
}

static VALUE
nand(VALUE klass, VALUE a, VALUE b)
{
  int left;
  int right;
  prepare_int(a, &left);
  prepare_int(b, &right);

  int result = !(left && right);
  if (result != 0){
    return Qtrue;
  }

  return Qfalse;
}

static VALUE
nor(VALUE klass, VALUE a, VALUE b)
{
  int left;
  int right;
  prepare_int(a, &left);
  prepare_int(b, &right);

  int result = !(left || right);
  if (result != 0){
    return Qtrue;
  }

  return Qfalse;
}

void
prepare_int(VALUE a, int *result)
{
  if(RTEST(a)){
    if(FIXNUM_P(a)){
      *result = NUM2INT(a);      
    } else {
      *result = 1;
    }
  } else {
      *result = 0;
  }  
}
