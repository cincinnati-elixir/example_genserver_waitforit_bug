# ExampleGenserverWaitforitBug

## Reproduction Steps
```
Erlang/OTP 20 [erts-9.0] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Interactive Elixir (1.5.0) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> ExampleGenserverWaitforitBug.start_link
{:ok, #PID<0.156.0>}
iex(2)> ExampleGenserverWaitforitBug.hello("world")
"Hello world"
iex(3)>
21:34:33.640 [error] ExampleGenserverWaitforitBug ExampleGenserverWaitforitBug received unexpected message in handle_info/2: {#PID<0.158.0>, 5000}
```
