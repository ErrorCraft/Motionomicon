$data modify storage motion:data amount set value $(amount)
$execute store result score $(axis) MotionData run data get storage motion:data amount 10000
$data modify storage motion:data enchant_data.axis set value $(axis)
$function motion:apply/divide {\
  exponent: 1,\
  amount: 10000,\
  axis: '$(axis)'\
}
$function motion:apply/divide {\
  exponent: 0,\
  amount: 1000,\
  axis: '$(axis)'\
}
$function motion:apply/divide {\
  exponent: -1,\
  amount: 100,\
  axis: '$(axis)'\
}
$function motion:apply/divide {\
  exponent: -2,\
  amount: 10,\
  axis: '$(axis)'\
}
$function motion:apply/exact {\
  exponent: -3,\
  axis: '$(axis)'\
}
