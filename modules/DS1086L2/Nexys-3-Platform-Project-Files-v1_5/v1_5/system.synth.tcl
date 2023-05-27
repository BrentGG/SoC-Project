proc pnsynth {} {
  cd C:/Designs/maxim/9_4_2012_nexys/Nexys3_v1_5/v1_5/system
  if { [ catch { xload xmp system.xmp } result ] } {
    exit 10
  }
  if { [catch {run netlist} result] } {
    return -1
  }
  return $result
}
if { [catch {pnsynth} result] } {
  exit -1
}
exit $result
