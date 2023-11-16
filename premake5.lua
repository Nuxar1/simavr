
if os.host() == "windows" then
	include "simavr/vendor/libelf"
end
project "simavr"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	links
	{
		"libelf",
	}

	files
	{
		"simavr/cores/avr/io.h",
		"simavr/cores/avr/io1200.h",
		"simavr/cores/avr/io2313.h",
		"simavr/cores/avr/io2323.h",
		"simavr/cores/avr/io2333.h",
		"simavr/cores/avr/io2343.h",
		"simavr/cores/avr/io43u32x.h",
		"simavr/cores/avr/io43u35x.h",
		"simavr/cores/avr/io4414.h",
		"simavr/cores/avr/io4433.h",
		"simavr/cores/avr/io4434.h",
		"simavr/cores/avr/io76c711.h",
		"simavr/cores/avr/io8515.h",
		"simavr/cores/avr/io8534.h",
		"simavr/cores/avr/io8535.h",
		"simavr/cores/avr/io86r401.h",
		"simavr/cores/avr/io90pwm1.h",
		"simavr/cores/avr/io90pwm161.h",
		"simavr/cores/avr/io90pwm216.h",
		"simavr/cores/avr/io90pwm2b.h",
		"simavr/cores/avr/io90pwm316.h",
		"simavr/cores/avr/io90pwm3b.h",
		"simavr/cores/avr/io90pwm81.h",
		"simavr/cores/avr/io90pwmx.h",
		"simavr/cores/avr/io90scr100.h",
		"simavr/cores/avr/ioa5272.h",
		"simavr/cores/avr/ioa5505.h",
		"simavr/cores/avr/ioa5702m322.h",
		"simavr/cores/avr/ioa5782.h",
		"simavr/cores/avr/ioa5790.h",
		"simavr/cores/avr/ioa5790n.h",
		"simavr/cores/avr/ioa5791.h",
		"simavr/cores/avr/ioa5795.h",
		"simavr/cores/avr/ioa5831.h",
		"simavr/cores/avr/ioa6285.h",
		"simavr/cores/avr/ioa6286.h",
		"simavr/cores/avr/ioa6289.h",
		"simavr/cores/avr/ioa6612c.h",
		"simavr/cores/avr/ioa6613c.h",
		"simavr/cores/avr/ioa6614q.h",
		"simavr/cores/avr/ioa6616c.h",
		"simavr/cores/avr/ioa6617c.h",
		"simavr/cores/avr/ioa664251.h",
		"simavr/cores/avr/ioa8210.h",
		"simavr/cores/avr/ioa8510.h",
		"simavr/cores/avr/ioat94k.h",
		"simavr/cores/avr/ioavr128da28.h",
		"simavr/cores/avr/ioavr128da32.h",
		"simavr/cores/avr/ioavr128da48.h",
		"simavr/cores/avr/ioavr128da64.h",
		"simavr/cores/avr/iocan128.h",
		"simavr/cores/avr/iocan32.h",
		"simavr/cores/avr/iocan64.h",
		"simavr/cores/avr/iocanxx.h",
		"simavr/cores/avr/iom103.h",
		"simavr/cores/avr/iom128.h",
		"simavr/cores/avr/iom1280.h",
		"simavr/cores/avr/iom1281.h",
		"simavr/cores/avr/iom1284.h",
		"simavr/cores/avr/iom1284p.h",
		"simavr/cores/avr/iom1284rfr2.h",
		"simavr/cores/avr/iom128a.h",
		"simavr/cores/avr/iom128rfa1.h",
		"simavr/cores/avr/iom128rfr2.h",
		"simavr/cores/avr/iom16.h",
		"simavr/cores/avr/iom1608.h",
		"simavr/cores/avr/iom1609.h",
		"simavr/cores/avr/iom161.h",
		"simavr/cores/avr/iom162.h",
		"simavr/cores/avr/iom163.h",
		"simavr/cores/avr/iom164.h",
		"simavr/cores/avr/iom164a.h",
		"simavr/cores/avr/iom164p.h",
		"simavr/cores/avr/iom164pa.h",
		"simavr/cores/avr/iom165.h",
		"simavr/cores/avr/iom165a.h",
		"simavr/cores/avr/iom165p.h",
		"simavr/cores/avr/iom165pa.h",
		"simavr/cores/avr/iom168.h",
		"simavr/cores/avr/iom168a.h",
		"simavr/cores/avr/iom168p.h",
		"simavr/cores/avr/iom168pa.h",
		"simavr/cores/avr/iom168pb.h",
		"simavr/cores/avr/iom169.h",
		"simavr/cores/avr/iom169a.h",
		"simavr/cores/avr/iom169p.h",
		"simavr/cores/avr/iom169pa.h",
		"simavr/cores/avr/iom16a.h",
		"simavr/cores/avr/iom16hva.h",
		"simavr/cores/avr/iom16hva2.h",
		"simavr/cores/avr/iom16hvb.h",
		"simavr/cores/avr/iom16hvbrevb.h",
		"simavr/cores/avr/iom16m1.h",
		"simavr/cores/avr/iom16u2.h",
		"simavr/cores/avr/iom16u4.h",
		"simavr/cores/avr/iom2560.h",
		"simavr/cores/avr/iom2561.h",
		"simavr/cores/avr/iom2564rfr2.h",
		"simavr/cores/avr/iom256rfr2.h",
		"simavr/cores/avr/iom3000.h",
		"simavr/cores/avr/iom32.h",
		"simavr/cores/avr/iom3208.h",
		"simavr/cores/avr/iom3209.h",
		"simavr/cores/avr/iom323.h",
		"simavr/cores/avr/iom324a.h",
		"simavr/cores/avr/iom324p.h",
		"simavr/cores/avr/iom324pa.h",
		"simavr/cores/avr/iom324pb.h",
		"simavr/cores/avr/iom325.h",
		"simavr/cores/avr/iom3250.h",
		"simavr/cores/avr/iom3250a.h",
		"simavr/cores/avr/iom3250p.h",
		"simavr/cores/avr/iom3250pa.h",
		"simavr/cores/avr/iom325a.h",
		"simavr/cores/avr/iom325p.h",
		"simavr/cores/avr/iom325pa.h",
		"simavr/cores/avr/iom328.h",
		"simavr/cores/avr/iom328p.h",
		"simavr/cores/avr/iom328pb.h",
		"simavr/cores/avr/iom329.h",
		"simavr/cores/avr/iom3290.h",
		"simavr/cores/avr/iom3290a.h",
		"simavr/cores/avr/iom3290p.h",
		"simavr/cores/avr/iom3290pa.h",
		"simavr/cores/avr/iom329a.h",
		"simavr/cores/avr/iom329p.h",
		"simavr/cores/avr/iom329pa.h",
		"simavr/cores/avr/iom32a.h",
		"simavr/cores/avr/iom32c1.h",
		"simavr/cores/avr/iom32hvb.h",
		"simavr/cores/avr/iom32hvbrevb.h",
		"simavr/cores/avr/iom32m1.h",
		"simavr/cores/avr/iom32u2.h",
		"simavr/cores/avr/iom32u4.h",
		"simavr/cores/avr/iom32u6.h",
		"simavr/cores/avr/iom406.h",
		"simavr/cores/avr/iom48.h",
		"simavr/cores/avr/iom4808.h",
		"simavr/cores/avr/iom4809.h",
		"simavr/cores/avr/iom48a.h",
		"simavr/cores/avr/iom48p.h",
		"simavr/cores/avr/iom48pa.h",
		"simavr/cores/avr/iom48pb.h",
		"simavr/cores/avr/iom64.h",
		"simavr/cores/avr/iom640.h",
		"simavr/cores/avr/iom644.h",
		"simavr/cores/avr/iom644a.h",
		"simavr/cores/avr/iom644p.h",
		"simavr/cores/avr/iom644pa.h",
		"simavr/cores/avr/iom644rfr2.h",
		"simavr/cores/avr/iom645.h",
		"simavr/cores/avr/iom6450.h",
		"simavr/cores/avr/iom6450a.h",
		"simavr/cores/avr/iom6450p.h",
		"simavr/cores/avr/iom645a.h",
		"simavr/cores/avr/iom645p.h",
		"simavr/cores/avr/iom649.h",
		"simavr/cores/avr/iom6490.h",
		"simavr/cores/avr/iom6490a.h",
		"simavr/cores/avr/iom6490p.h",
		"simavr/cores/avr/iom649a.h",
		"simavr/cores/avr/iom649p.h",
		"simavr/cores/avr/iom64a.h",
		"simavr/cores/avr/iom64c1.h",
		"simavr/cores/avr/iom64hve.h",
		"simavr/cores/avr/iom64hve2.h",
		"simavr/cores/avr/iom64m1.h",
		"simavr/cores/avr/iom64rfr2.h",
		"simavr/cores/avr/iom8.h",
		"simavr/cores/avr/iom8515.h",
		"simavr/cores/avr/iom8535.h",
		"simavr/cores/avr/iom88.h",
		"simavr/cores/avr/iom88a.h",
		"simavr/cores/avr/iom88p.h",
		"simavr/cores/avr/iom88pa.h",
		"simavr/cores/avr/iom88pb.h",
		"simavr/cores/avr/iom8a.h",
		"simavr/cores/avr/iom8hva.h",
		"simavr/cores/avr/iom8u2.h",
		"simavr/cores/avr/iomx8.h",
		"simavr/cores/avr/iomxx0_1.h",
		"simavr/cores/avr/iomxx4.h",
		"simavr/cores/avr/iomxxhva.h",
		"simavr/cores/avr/iotn10.h",
		"simavr/cores/avr/iotn11.h",
		"simavr/cores/avr/iotn12.h",
		"simavr/cores/avr/iotn13.h",
		"simavr/cores/avr/iotn13a.h",
		"simavr/cores/avr/iotn15.h",
		"simavr/cores/avr/iotn1634.h",
		"simavr/cores/avr/iotn167.h",
		"simavr/cores/avr/iotn20.h",
		"simavr/cores/avr/iotn22.h",
		"simavr/cores/avr/iotn2313.h",
		"simavr/cores/avr/iotn2313a.h",
		"simavr/cores/avr/iotn24.h",
		"simavr/cores/avr/iotn24a.h",
		"simavr/cores/avr/iotn25.h",
		"simavr/cores/avr/iotn26.h",
		"simavr/cores/avr/iotn261.h",
		"simavr/cores/avr/iotn261a.h",
		"simavr/cores/avr/iotn28.h",
		"simavr/cores/avr/iotn4.h",
		"simavr/cores/avr/iotn40.h",
		"simavr/cores/avr/iotn4313.h",
		"simavr/cores/avr/iotn43u.h",
		"simavr/cores/avr/iotn44.h",
		"simavr/cores/avr/iotn441.h",
		"simavr/cores/avr/iotn44a.h",
		"simavr/cores/avr/iotn45.h",
		"simavr/cores/avr/iotn461.h",
		"simavr/cores/avr/iotn461a.h",
		"simavr/cores/avr/iotn48.h",
		"simavr/cores/avr/iotn5.h",
		"simavr/cores/avr/iotn828.h",
		"simavr/cores/avr/iotn84.h",
		"simavr/cores/avr/iotn841.h",
		"simavr/cores/avr/iotn84a.h",
		"simavr/cores/avr/iotn85.h",
		"simavr/cores/avr/iotn861.h",
		"simavr/cores/avr/iotn861a.h",
		"simavr/cores/avr/iotn87.h",
		"simavr/cores/avr/iotn88.h",
		"simavr/cores/avr/iotn9.h",
		"simavr/cores/avr/iotnx4.h",
		"simavr/cores/avr/iotnx5.h",
		"simavr/cores/avr/iotnx61.h",
		"simavr/cores/avr/iousb1286.h",
		"simavr/cores/avr/iousb1287.h",
		"simavr/cores/avr/iousb162.h",
		"simavr/cores/avr/iousb646.h",
		"simavr/cores/avr/iousb647.h",
		"simavr/cores/avr/iousb82.h",
		"simavr/cores/avr/iousbxx2.h",
		"simavr/cores/avr/iousbxx6_7.h",
		"simavr/cores/avr/iox128a1.h",
		"simavr/cores/avr/iox128a1u.h",
		"simavr/cores/avr/iox128a3.h",
		"simavr/cores/avr/iox128a3u.h",
		"simavr/cores/avr/iox128a4u.h",
		"simavr/cores/avr/iox128b1.h",
		"simavr/cores/avr/iox128b3.h",
		"simavr/cores/avr/iox128c3.h",
		"simavr/cores/avr/iox128d3.h",
		"simavr/cores/avr/iox128d4.h",
		"simavr/cores/avr/iox16a4.h",
		"simavr/cores/avr/iox16a4u.h",
		"simavr/cores/avr/iox16c4.h",
		"simavr/cores/avr/iox16d4.h",
		"simavr/cores/avr/iox16e5.h",
		"simavr/cores/avr/iox192a3.h",
		"simavr/cores/avr/iox192a3u.h",
		"simavr/cores/avr/iox192c3.h",
		"simavr/cores/avr/iox192d3.h",
		"simavr/cores/avr/iox256a3.h",
		"simavr/cores/avr/iox256a3b.h",
		"simavr/cores/avr/iox256a3bu.h",
		"simavr/cores/avr/iox256a3u.h",
		"simavr/cores/avr/iox256c3.h",
		"simavr/cores/avr/iox256d3.h",
		"simavr/cores/avr/iox32a4.h",
		"simavr/cores/avr/iox32a4u.h",
		"simavr/cores/avr/iox32c3.h",
		"simavr/cores/avr/iox32c4.h",
		"simavr/cores/avr/iox32d3.h",
		"simavr/cores/avr/iox32d4.h",
		"simavr/cores/avr/iox32e5.h",
		"simavr/cores/avr/iox384c3.h",
		"simavr/cores/avr/iox384d3.h",
		"simavr/cores/avr/iox64a1.h",
		"simavr/cores/avr/iox64a1u.h",
		"simavr/cores/avr/iox64a3.h",
		"simavr/cores/avr/iox64a3u.h",
		"simavr/cores/avr/iox64a4u.h",
		"simavr/cores/avr/iox64b1.h",
		"simavr/cores/avr/iox64b3.h",
		"simavr/cores/avr/iox64c3.h",
		"simavr/cores/avr/iox64d3.h",
		"simavr/cores/avr/iox64d4.h",
		"simavr/cores/avr/iox8e5.h",
		"simavr/cores/avr/sfr_defs.h",
		"simavr/cores/sim_core_declare.h",
		"simavr/cores/sim_mega2560.h",
		"simavr/cores/sim_megax.h",
		"simavr/cores/sim_megax4.h",
		"simavr/cores/sim_megax8.h",
		"simavr/cores/sim_megaxm1.h",
		"simavr/cores/sim_tinyx4.h",
		"simavr/cores/sim_tinyx5.h",
		"simavr/lib_api.h",
		"simavr/sim/avr_acomp.h",
		"simavr/sim/avr_adc.h",
		"simavr/sim/avr_bitbang.h",
		"simavr/sim/avr_eeprom.h",
		"simavr/sim/avr_extint.h",
		"simavr/sim/avr_flash.h",
		"simavr/sim/avr_ioport.h",
		"simavr/sim/avr_lin.h",
		"simavr/sim/avr_spi.h",
		"simavr/sim/avr_timer.h",
		"simavr/sim/avr_twi.h",
		"simavr/sim/avr_uart.h",
		"simavr/sim/avr_usb.h",
		"simavr/sim/avr_usi.h",
		"simavr/sim/avr_watchdog.h",
		"simavr/sim/fifo_declare.h",
		"simavr/sim/sim_avr.h",
		"simavr/sim/sim_avr_types.h",
		"simavr/sim/sim_cmds.h",
		"simavr/sim/sim_core.h",
		"simavr/sim/sim_cycle_timers.h",
		"simavr/sim/sim_elf.h",
		"simavr/sim/sim_gdb.h",
		"simavr/sim/sim_hex.h",
		"simavr/sim/sim_interrupts.h",
		"simavr/sim/sim_io.h",
		"simavr/sim/sim_irq.h",
		"simavr/sim/sim_network.h",
		"simavr/sim/sim_regbit.h",
		"simavr/sim/sim_time.h",
		"simavr/sim/sim_utils.h",
		"simavr/sim/sim_vcd_file.h",
		"simavr/cores/sim_mega128.c",
		"simavr/cores/sim_mega1280.c",
		"simavr/cores/sim_mega1281.c",
		"simavr/cores/sim_mega1284.c",
		"simavr/cores/sim_mega128rfa1.c",
		"simavr/cores/sim_mega128rfr2.c",
		"simavr/cores/sim_mega16.c",
		"simavr/cores/sim_mega164.c",
		"simavr/cores/sim_mega168.c",
		"simavr/cores/sim_mega169.c",
		"simavr/cores/sim_mega16m1.c",
		"simavr/cores/sim_mega2560.c",
		"simavr/cores/sim_mega32.c",
		"simavr/cores/sim_mega324.c",
		"simavr/cores/sim_mega324a.c",
		"simavr/cores/sim_mega328.c",
		"simavr/cores/sim_mega328pb.c",
		"simavr/cores/sim_mega32u4.c",
		"simavr/cores/sim_mega48.c",
		"simavr/cores/sim_mega644.c",
		"simavr/cores/sim_mega64m1.c",
		"simavr/cores/sim_mega8.c",
		"simavr/cores/sim_mega88.c",
		"simavr/cores/sim_megax.c",
		"simavr/cores/sim_megax4.c",
		"simavr/cores/sim_megax8.c",
		"simavr/cores/sim_megaxm1.c",
		"simavr/cores/sim_tiny13.c",
		"simavr/cores/sim_tiny2313.c",
		"simavr/cores/sim_tiny2313a.c",
		"simavr/cores/sim_tiny24.c",
		"simavr/cores/sim_tiny25.c",
		"simavr/cores/sim_tiny4313.c",
		"simavr/cores/sim_tiny44.c",
		"simavr/cores/sim_tiny45.c",
		"simavr/cores/sim_tiny84.c",
		"simavr/cores/sim_tiny85.c",
		"simavr/cores/sim_tinyx4.c",
		"simavr/cores/sim_tinyx5.c",
		"simavr/cores/sim_usb162.c",
		"simavr/sim/avr_acomp.c",
		"simavr/sim/avr_adc.c",
		"simavr/sim/avr_bitbang.c",
		"simavr/sim/avr_eeprom.c",
		"simavr/sim/avr_extint.c",
		"simavr/sim/avr_flash.c",
		"simavr/sim/avr_ioport.c",
		"simavr/sim/avr_lin.c",
		"simavr/sim/avr_spi.c",
		"simavr/sim/avr_timer.c",
		"simavr/sim/avr_twi.c",
		"simavr/sim/avr_uart.c",
		"simavr/sim/avr_usb.c",
		"simavr/sim/avr_usi.c",
		"simavr/sim/avr_watchdog.c",
		"simavr/sim/run_avr.c",
		"simavr/sim/sim_avr.c",
		"simavr/sim/sim_cmds.c",
		"simavr/sim/sim_core.c",
		"simavr/sim/sim_cycle_timers.c",
		"simavr/sim/sim_dwarf.c",
		"simavr/sim/sim_elf.c",
		"simavr/sim/sim_gdb.c",
		"simavr/sim/sim_hex.c",
		"simavr/sim/sim_interrupts.c",
		"simavr/sim/sim_io.c",
		"simavr/sim/sim_irq.c",
		"simavr/sim/sim_utils.c",
		"simavr/sim/sim_vcd_file.c",
		"simavr/windows/windows_api.h",
		"simavr/autogenerated/sim_core_config.h",
		"simavr/autogenerated/sim_core_decl.h",
	}

	includedirs
	{
		"simavr/cores/sim",
		"simavr/sim",
		"simavr/windows",
		"simavr/autogenerated",

		"simavr/vendor/libelf/lib",
	}

	externalincludedirs 
	{
		"simavr/cores",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		defines { "HAVE_LIBELF" }

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++20"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
