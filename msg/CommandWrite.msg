# Evidence for one normal cmd_vel callback, captured inside the WHILL driver.
# header.stamp is the ROS time immediately after a successful serial write returns.
# This is host-side write completion, NOT a WHILL acknowledgement or wire-drain time.
std_msgs/Header header
builtin_interfaces/Time received_at
builtin_interfaces/Time write_started_at
uint64 sequence_id
uint64 received_steady_time_ns
uint64 write_started_steady_time_ns
uint64 write_completed_steady_time_ns
# Cumulative telemetry queue overflows; serial commands are never dropped here.
uint64 dropped_events
geometry_msgs/Twist requested
# Quantized/clamped values encoded in the successful UART packet (ROS signs).
geometry_msgs/Twist applied
