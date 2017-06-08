%include "std_vector.i"
%include "std_map.i"
%include "stl.i"
%include "std_string.i"

typedef std::vector<std::string> vec_str;
%template(vec_str) std::vector<std::string>;

typedef std::map<std::string, float> map_str_float;
%template(map_str_float) std::map<std::string, float>;

typedef std::map<std::string, std::string> map_str_str;
%template(map_str_str) std::map<std::string, std::string>;

/* Any java package including upm_interfaces.i will import the
upm_interfaces java package in the JAVA source */
%typemap(javaimports) SWIGTYPE %{
import upm_interfaces.*;
%}
