{% extends '//bin/kernel/t/3/ix.sh' %}

{% block c_compiler %}
bin/gcc(gcc_ver=14,for_target={{host.gnu.three}})
bin/gcc(gcc_ver=14,for_target={{target.gnu.three}})
{% endblock %}

{% block bld_libs %}
lib/firmware/full
{% endblock %}

{% block amd_gpu %}
amdgpu/cyan_skillfish2_sdma.bin
amdgpu/arcturus_asd.bin
amdgpu/cyan_skillfish2_mec2.bin
amdgpu/arcturus_gpu_info.bin
amdgpu/cyan_skillfish2_sdma1.bin
amdgpu/arcturus_mec.bin
amdgpu/dimgrey_cavefish_ce.bin
amdgpu/arcturus_mec2.bin
amdgpu/dimgrey_cavefish_dmcub.bin
amdgpu/arcturus_rlc.bin
amdgpu/dimgrey_cavefish_me.bin
amdgpu/arcturus_sdma.bin
amdgpu/fiji_mc.bin
amdgpu/arcturus_smc.bin
amdgpu/fiji_me.bin
amdgpu/arcturus_sos.bin
amdgpu/fiji_mec.bin
amdgpu/arcturus_ta.bin
amdgpu/fiji_mec2.bin
amdgpu/arcturus_vcn.bin
amdgpu/fiji_pfp.bin
amdgpu/banks_k_2_smc.bin
amdgpu/fiji_rlc.bin
amdgpu/beige_goby_ce.bin
amdgpu/fiji_sdma.bin
amdgpu/beige_goby_dmcub.bin
amdgpu/fiji_sdma1.bin
amdgpu/beige_goby_me.bin
amdgpu/fiji_smc.bin
amdgpu/beige_goby_mec.bin
amdgpu/fiji_uvd.bin
amdgpu/beige_goby_mec2.bin
amdgpu/fiji_vce.bin
amdgpu/beige_goby_pfp.bin
amdgpu/green_sardine_asd.bin
amdgpu/beige_goby_rlc.bin
amdgpu/green_sardine_ce.bin
amdgpu/beige_goby_sdma.bin
amdgpu/green_sardine_dmcub.bin
amdgpu/beige_goby_smc.bin
amdgpu/green_sardine_me.bin
amdgpu/beige_goby_sos.bin
amdgpu/green_sardine_mec.bin
amdgpu/beige_goby_ta.bin
amdgpu/green_sardine_mec2.bin
amdgpu/beige_goby_vcn.bin
amdgpu/green_sardine_pfp.bin
amdgpu/bonaire_ce.bin
amdgpu/green_sardine_rlc.bin
amdgpu/bonaire_k_smc.bin
amdgpu/green_sardine_sdma.bin
amdgpu/bonaire_mc.bin
amdgpu/green_sardine_ta.bin
amdgpu/bonaire_me.bin
amdgpu/green_sardine_vcn.bin
amdgpu/bonaire_mec.bin
amdgpu/hainan_ce.bin
amdgpu/bonaire_pfp.bin
amdgpu/hainan_k_smc.bin
amdgpu/bonaire_rlc.bin
amdgpu/hainan_mc.bin
amdgpu/bonaire_sdma.bin
amdgpu/hainan_me.bin
amdgpu/bonaire_sdma1.bin
amdgpu/hainan_pfp.bin
amdgpu/bonaire_smc.bin
amdgpu/hainan_rlc.bin
amdgpu/bonaire_uvd.bin
amdgpu/hainan_smc.bin
amdgpu/bonaire_vce.bin
amdgpu/hawaii_ce.bin
amdgpu/carrizo_ce.bin
amdgpu/hawaii_k_smc.bin
amdgpu/carrizo_me.bin
amdgpu/hawaii_mc.bin
amdgpu/carrizo_mec.bin
amdgpu/hawaii_me.bin
amdgpu/carrizo_mec2.bin
amdgpu/hawaii_mec.bin
amdgpu/carrizo_pfp.bin
amdgpu/hawaii_pfp.bin
amdgpu/carrizo_rlc.bin
amdgpu/hawaii_rlc.bin
amdgpu/carrizo_sdma.bin
amdgpu/hawaii_sdma.bin
amdgpu/carrizo_sdma1.bin
amdgpu/hawaii_sdma1.bin
amdgpu/carrizo_uvd.bin
amdgpu/hawaii_smc.bin
amdgpu/carrizo_vce.bin
amdgpu/cyan_skillfish2_pfp.bin
amdgpu/cyan_skillfish2_ce.bin
amdgpu/dimgrey_cavefish_smc.bin
amdgpu/cyan_skillfish2_me.bin
amdgpu/cyan_skillfish2_rlc.bin
amdgpu/cyan_skillfish2_mec.bin
amdgpu/dimgrey_cavefish_mec.bin
amdgpu/dimgrey_cavefish_sos.bin
amdgpu/dimgrey_cavefish_mec2.bin
amdgpu/dimgrey_cavefish_ta.bin
amdgpu/dimgrey_cavefish_pfp.bin
amdgpu/dimgrey_cavefish_vcn.bin
amdgpu/dimgrey_cavefish_rlc.bin
amdgpu/dimgrey_cavefish_sdma.bin
amdgpu/hawaii_uvd.bin
amdgpu/fiji_ce.bin
amdgpu/hawaii_vce.bin
amdgpu/kabini_ce.bin
amdgpu/kabini_me.bin
amdgpu/kabini_mec.bin
amdgpu/kabini_pfp.bin
amdgpu/kabini_rlc.bin
amdgpu/kabini_sdma.bin
amdgpu/kabini_sdma1.bin
amdgpu/kabini_uvd.bin
amdgpu/kabini_vce.bin
amdgpu/kaveri_ce.bin
amdgpu/kaveri_me.bin
amdgpu/kaveri_mec.bin
amdgpu/kaveri_mec2.bin
amdgpu/kaveri_pfp.bin
amdgpu/kaveri_rlc.bin
amdgpu/kaveri_sdma.bin
amdgpu/kaveri_sdma1.bin
amdgpu/kaveri_uvd.bin
amdgpu/kaveri_vce.bin
amdgpu/mullins_ce.bin
amdgpu/mullins_me.bin
amdgpu/mullins_mec.bin
amdgpu/mullins_pfp.bin
amdgpu/mullins_rlc.bin
amdgpu/mullins_sdma.bin
amdgpu/mullins_sdma1.bin
amdgpu/mullins_uvd.bin
amdgpu/mullins_vce.bin
amdgpu/navi10_asd.bin
amdgpu/navi10_ce.bin
amdgpu/navi10_gpu_info.bin
amdgpu/navi10_me.bin
amdgpu/navi10_mec.bin
amdgpu/navi10_mec2.bin
amdgpu/navi10_pfp.bin
amdgpu/navi10_rlc.bin
amdgpu/navi10_sdma.bin
amdgpu/navi10_sdma1.bin
amdgpu/navi10_smc.bin
amdgpu/navi10_sos.bin
amdgpu/navi10_ta.bin
amdgpu/navi10_vcn.bin
amdgpu/navi12_asd.bin
amdgpu/navi12_ce.bin
amdgpu/navi12_dmcu.bin
amdgpu/navi12_gpu_info.bin
amdgpu/navi12_me.bin
amdgpu/navi12_mec.bin
amdgpu/navi12_mec2.bin
amdgpu/navi12_pfp.bin
amdgpu/navi12_rlc.bin
amdgpu/navi12_sdma.bin
amdgpu/navi12_sdma1.bin
amdgpu/navi12_smc.bin
amdgpu/navi12_sos.bin
amdgpu/navi12_ta.bin
amdgpu/navi12_vcn.bin
amdgpu/navi14_asd.bin
amdgpu/navi14_ce.bin
amdgpu/navi14_ce_wks.bin
amdgpu/navi14_gpu_info.bin
amdgpu/navi14_me.bin
amdgpu/navi14_me_wks.bin
amdgpu/navi14_mec.bin
amdgpu/navi14_mec2.bin
amdgpu/navi14_mec2_wks.bin
amdgpu/navi14_mec_wks.bin
amdgpu/navi14_pfp.bin
amdgpu/navi14_pfp_wks.bin
amdgpu/navi14_rlc.bin
amdgpu/navi14_sdma.bin
amdgpu/navi14_sdma1.bin
amdgpu/navi14_smc.bin
amdgpu/navi14_sos.bin
amdgpu/navi14_ta.bin
amdgpu/navi14_vcn.bin
amdgpu/navy_flounder_ce.bin
amdgpu/navy_flounder_dmcub.bin
amdgpu/navy_flounder_me.bin
amdgpu/navy_flounder_mec.bin
amdgpu/navy_flounder_mec2.bin
amdgpu/navy_flounder_pfp.bin
amdgpu/navy_flounder_rlc.bin
amdgpu/navy_flounder_sdma.bin
amdgpu/navy_flounder_smc.bin
amdgpu/navy_flounder_sos.bin
amdgpu/navy_flounder_ta.bin
amdgpu/navy_flounder_vcn.bin
amdgpu/oland_ce.bin
amdgpu/oland_k_smc.bin
amdgpu/oland_mc.bin
amdgpu/oland_me.bin
amdgpu/oland_pfp.bin
amdgpu/oland_rlc.bin
amdgpu/oland_smc.bin
amdgpu/oland_uvd.bin
amdgpu/picasso_asd.bin
amdgpu/picasso_ce.bin
amdgpu/picasso_gpu_info.bin
amdgpu/picasso_me.bin
amdgpu/picasso_mec.bin
amdgpu/picasso_mec2.bin
amdgpu/picasso_pfp.bin
amdgpu/picasso_rlc.bin
amdgpu/picasso_rlc_am4.bin
amdgpu/picasso_sdma.bin
amdgpu/picasso_ta.bin
amdgpu/picasso_vcn.bin
amdgpu/pitcairn_ce.bin
amdgpu/pitcairn_k_smc.bin
amdgpu/pitcairn_mc.bin
amdgpu/pitcairn_me.bin
amdgpu/pitcairn_pfp.bin
amdgpu/pitcairn_rlc.bin
amdgpu/pitcairn_smc.bin
amdgpu/pitcairn_uvd.bin
amdgpu/polaris10_ce.bin
amdgpu/polaris10_ce_2.bin
amdgpu/polaris10_k2_smc.bin
amdgpu/polaris10_k_mc.bin
amdgpu/polaris10_k_smc.bin
amdgpu/polaris10_mc.bin
amdgpu/polaris10_me.bin
amdgpu/polaris10_me_2.bin
amdgpu/polaris10_mec.bin
amdgpu/polaris10_mec2.bin
amdgpu/polaris10_mec2_2.bin
amdgpu/polaris10_mec_2.bin
amdgpu/polaris10_pfp.bin
amdgpu/polaris10_pfp_2.bin
amdgpu/polaris10_rlc.bin
amdgpu/polaris10_sdma.bin
amdgpu/polaris10_sdma1.bin
amdgpu/polaris10_smc.bin
amdgpu/polaris10_smc_sk.bin
amdgpu/polaris10_uvd.bin
amdgpu/polaris10_vce.bin
amdgpu/polaris11_ce.bin
amdgpu/polaris11_ce_2.bin
amdgpu/polaris11_k2_smc.bin
amdgpu/polaris11_k_mc.bin
amdgpu/polaris11_k_smc.bin
amdgpu/polaris11_mc.bin
amdgpu/polaris11_me.bin
amdgpu/polaris11_me_2.bin
amdgpu/polaris11_mec.bin
amdgpu/polaris11_mec2.bin
amdgpu/polaris11_mec2_2.bin
amdgpu/polaris11_mec_2.bin
amdgpu/polaris11_pfp.bin
amdgpu/polaris11_pfp_2.bin
amdgpu/polaris11_rlc.bin
amdgpu/polaris11_sdma.bin
amdgpu/polaris11_sdma1.bin
amdgpu/polaris11_smc.bin
amdgpu/polaris11_smc_sk.bin
amdgpu/polaris11_uvd.bin
amdgpu/polaris11_vce.bin
amdgpu/polaris12_32_mc.bin
amdgpu/polaris12_ce.bin
amdgpu/polaris12_ce_2.bin
amdgpu/polaris12_k_mc.bin
amdgpu/polaris12_k_smc.bin
amdgpu/polaris12_mc.bin
amdgpu/polaris12_me.bin
amdgpu/polaris12_me_2.bin
amdgpu/polaris12_mec.bin
amdgpu/polaris12_mec2.bin
amdgpu/polaris12_mec2_2.bin
amdgpu/polaris12_mec_2.bin
amdgpu/polaris12_pfp.bin
amdgpu/polaris12_pfp_2.bin
amdgpu/polaris12_rlc.bin
amdgpu/polaris12_sdma.bin
amdgpu/polaris12_sdma1.bin
amdgpu/polaris12_smc.bin
amdgpu/polaris12_uvd.bin
amdgpu/polaris12_vce.bin
amdgpu/raven2_asd.bin
amdgpu/raven2_ce.bin
amdgpu/raven2_gpu_info.bin
amdgpu/raven2_me.bin
amdgpu/raven2_mec.bin
amdgpu/raven2_mec2.bin
amdgpu/raven2_pfp.bin
amdgpu/raven2_rlc.bin
amdgpu/raven2_sdma.bin
amdgpu/raven2_ta.bin
amdgpu/raven2_vcn.bin
amdgpu/raven_asd.bin
amdgpu/raven_ce.bin
amdgpu/raven_dmcu.bin
amdgpu/raven_gpu_info.bin
amdgpu/raven_kicker_rlc.bin
amdgpu/raven_me.bin
amdgpu/raven_mec.bin
amdgpu/raven_mec2.bin
amdgpu/raven_pfp.bin
amdgpu/raven_rlc.bin
amdgpu/raven_sdma.bin
amdgpu/raven_ta.bin
amdgpu/raven_vcn.bin
amdgpu/renoir_asd.bin
amdgpu/renoir_ce.bin
amdgpu/renoir_dmcub.bin
amdgpu/renoir_gpu_info.bin
amdgpu/renoir_me.bin
amdgpu/renoir_mec.bin
amdgpu/renoir_mec2.bin
amdgpu/renoir_pfp.bin
amdgpu/renoir_rlc.bin
amdgpu/renoir_sdma.bin
amdgpu/renoir_ta.bin
amdgpu/renoir_vcn.bin
amdgpu/si58_mc.bin
amdgpu/sienna_cichlid_ce.bin
amdgpu/sienna_cichlid_dmcub.bin
amdgpu/sienna_cichlid_me.bin
amdgpu/sienna_cichlid_mec.bin
amdgpu/sienna_cichlid_mec2.bin
amdgpu/sienna_cichlid_pfp.bin
amdgpu/sienna_cichlid_rlc.bin
amdgpu/sienna_cichlid_sdma.bin
amdgpu/sienna_cichlid_smc.bin
amdgpu/sienna_cichlid_sos.bin
amdgpu/sienna_cichlid_ta.bin
amdgpu/sienna_cichlid_vcn.bin
amdgpu/stoney_ce.bin
amdgpu/stoney_me.bin
amdgpu/stoney_mec.bin
amdgpu/stoney_pfp.bin
amdgpu/stoney_rlc.bin
amdgpu/stoney_sdma.bin
amdgpu/stoney_uvd.bin
amdgpu/stoney_vce.bin
amdgpu/tahiti_ce.bin
amdgpu/tahiti_k_smc.bin
amdgpu/tahiti_mc.bin
amdgpu/tahiti_me.bin
amdgpu/tahiti_pfp.bin
amdgpu/tahiti_rlc.bin
amdgpu/tahiti_smc.bin
amdgpu/tahiti_uvd.bin
amdgpu/tonga_ce.bin
amdgpu/tonga_k_smc.bin
amdgpu/tonga_mc.bin
amdgpu/tonga_me.bin
amdgpu/tonga_mec.bin
amdgpu/topaz_ce.bin
amdgpu/tonga_mec2.bin
amdgpu/tonga_pfp.bin
amdgpu/tonga_rlc.bin
amdgpu/tonga_sdma.bin
amdgpu/tonga_sdma1.bin
amdgpu/tonga_smc.bin
amdgpu/tonga_uvd.bin
amdgpu/tonga_vce.bin
amdgpu/topaz_k_smc.bin
amdgpu/topaz_mc.bin
amdgpu/topaz_me.bin
amdgpu/topaz_mec.bin
amdgpu/topaz_mec2.bin
amdgpu/topaz_pfp.bin
amdgpu/topaz_rlc.bin
amdgpu/topaz_sdma.bin
amdgpu/topaz_sdma1.bin
amdgpu/topaz_smc.bin
amdgpu/vangogh_asd.bin
amdgpu/vangogh_ce.bin
amdgpu/vangogh_dmcub.bin
amdgpu/vangogh_me.bin
amdgpu/vangogh_mec.bin
amdgpu/vangogh_mec2.bin
amdgpu/vangogh_pfp.bin
amdgpu/vangogh_rlc.bin
amdgpu/vangogh_sdma.bin
amdgpu/vangogh_toc.bin
amdgpu/vangogh_vcn.bin
amdgpu/vega10_acg_smc.bin
amdgpu/vega10_asd.bin
amdgpu/vega10_ce.bin
amdgpu/vega10_gpu_info.bin
amdgpu/vega10_me.bin
amdgpu/vega10_mec.bin
amdgpu/vega10_mec2.bin
amdgpu/vega10_pfp.bin
amdgpu/vega10_rlc.bin
amdgpu/vega10_sdma.bin
amdgpu/vega10_sdma1.bin
amdgpu/vega10_smc.bin
amdgpu/vega10_sos.bin
amdgpu/vega10_uvd.bin
amdgpu/vega10_vce.bin
amdgpu/vega12_asd.bin
amdgpu/vega12_ce.bin
amdgpu/vega12_gpu_info.bin
amdgpu/vega12_me.bin
amdgpu/vega12_mec.bin
amdgpu/vega12_mec2.bin
amdgpu/vega12_pfp.bin
amdgpu/vega12_rlc.bin
amdgpu/vega12_sdma.bin
amdgpu/vega12_sdma1.bin
amdgpu/vega12_smc.bin
amdgpu/vega12_sos.bin
amdgpu/vega12_uvd.bin
amdgpu/vega12_vce.bin
amdgpu/vega20_asd.bin
amdgpu/vega20_ce.bin
amdgpu/vega20_me.bin
amdgpu/vega20_mec.bin
amdgpu/vega20_mec2.bin
amdgpu/vega20_pfp.bin
amdgpu/vega20_rlc.bin
amdgpu/vega20_sdma.bin
amdgpu/vega20_sdma1.bin
amdgpu/vega20_smc.bin
amdgpu/vega20_sos.bin
amdgpu/vega20_ta.bin
amdgpu/vega20_uvd.bin
amdgpu/vega20_vce.bin
amdgpu/vegam_ce.bin
amdgpu/vegam_me.bin
amdgpu/vegam_mec.bin
amdgpu/vegam_mec2.bin
amdgpu/vegam_pfp.bin
amdgpu/vegam_rlc.bin
amdgpu/vegam_sdma.bin
amdgpu/vegam_sdma1.bin
amdgpu/vegam_smc.bin
amdgpu/vegam_uvd.bin
amdgpu/vegam_vce.bin
amdgpu/verde_ce.bin
amdgpu/verde_k_smc.bin
amdgpu/verde_mc.bin
amdgpu/verde_me.bin
amdgpu/verde_pfp.bin
amdgpu/verde_rlc.bin
amdgpu/verde_smc.bin
amdgpu/verde_uvd.bin
amdgpu/yellow_carp_asd.bin
amdgpu/yellow_carp_ce.bin
amdgpu/yellow_carp_dmcub.bin
amdgpu/yellow_carp_me.bin
amdgpu/yellow_carp_mec.bin
amdgpu/yellow_carp_mec2.bin
amdgpu/yellow_carp_pfp.bin
amdgpu/yellow_carp_rlc.bin
amdgpu/yellow_carp_sdma.bin
amdgpu/yellow_carp_ta.bin
amdgpu/yellow_carp_toc.bin
amdgpu/yellow_carp_vcn.bin
amdgpu/aldebaran_mec.bin
amdgpu/aldebaran_mec2.bin
amdgpu/aldebaran_rlc.bin
amdgpu/aldebaran_sdma.bin
amdgpu/aldebaran_sjt_mec.bin
amdgpu/aldebaran_sjt_mec2.bin
amdgpu/aldebaran_smc.bin
amdgpu/aldebaran_sos.bin
amdgpu/aldebaran_ta.bin
amdgpu/aldebaran_vcn.bin
amdgpu/dcn_3_1_4_dmcub.bin
amdgpu/dcn_3_1_5_dmcub.bin
amdgpu/dcn_3_1_6_dmcub.bin
amdgpu/dcn_3_2_0_dmcub.bin
amdgpu/dcn_3_2_1_dmcub.bin
amdgpu/gc_10_3_6_ce.bin
amdgpu/gc_10_3_6_me.bin
amdgpu/gc_10_3_6_mec.bin
amdgpu/gc_10_3_6_mec2.bin
amdgpu/gc_10_3_6_pfp.bin
amdgpu/gc_10_3_6_rlc.bin
amdgpu/gc_10_3_7_ce.bin
amdgpu/gc_10_3_7_me.bin
amdgpu/gc_10_3_7_mec.bin
amdgpu/gc_10_3_7_mec2.bin
amdgpu/gc_10_3_7_pfp.bin
amdgpu/gc_10_3_7_rlc.bin
amdgpu/gc_11_0_0_imu.bin
amdgpu/gc_11_0_0_me.bin
amdgpu/gc_11_0_0_mec.bin
amdgpu/gc_11_0_0_mes.bin
amdgpu/gc_11_0_0_mes1.bin
amdgpu/gc_11_0_0_mes_2.bin
amdgpu/gc_11_0_0_pfp.bin
amdgpu/gc_11_0_0_rlc.bin
amdgpu/gc_11_0_0_rlc_1.bin
amdgpu/gc_11_0_1_imu.bin
amdgpu/gc_11_0_1_me.bin
amdgpu/gc_11_0_1_mec.bin
amdgpu/gc_11_0_1_mes.bin
amdgpu/gc_11_0_1_mes1.bin
amdgpu/sdma_6_0_0.bin
amdgpu/gc_11_0_1_mes_2.bin
amdgpu/sdma_5_2_7.bin
amdgpu/gc_11_0_1_pfp.bin
amdgpu/sdma_6_0_1.bin
amdgpu/gc_11_0_1_rlc.bin
amdgpu/sdma_6_0_2.bin
amdgpu/gc_11_0_2_imu.bin
amdgpu/sdma_6_0_3.bin
amdgpu/gc_11_0_2_me.bin
amdgpu/smu_13_0_10.bin
amdgpu/gc_11_0_2_mec.bin
amdgpu/smu_13_0_0.bin
amdgpu/gc_11_0_2_mes.bin
amdgpu/smu_13_0_6.bin
amdgpu/gc_11_0_2_mes1.bin
amdgpu/smu_13_0_7.bin
amdgpu/gc_11_0_2_mes_2.bin
amdgpu/vcn_4_0_0.bin
amdgpu/gc_11_0_2_pfp.bin
amdgpu/vcn_3_1_2.bin
amdgpu/gc_11_0_2_rlc.bin
amdgpu/vcn_4_0_2.bin
amdgpu/gc_11_0_3_imu.bin
amdgpu/vcn_4_0_3.bin
amdgpu/gc_11_0_3_me.bin
amdgpu/vcn_4_0_4.bin
amdgpu/gc_11_0_3_mec.bin
amdgpu/gc_11_0_3_mes1.bin
amdgpu/gc_11_0_3_mes_2.bin
amdgpu/gc_11_0_3_pfp.bin
amdgpu/gc_11_0_3_rlc.bin
amdgpu/gc_11_0_4_imu.bin
amdgpu/gc_11_0_4_me.bin
amdgpu/gc_11_0_4_mec.bin
amdgpu/gc_11_0_4_mes.bin
amdgpu/gc_11_0_4_mes1.bin
amdgpu/gc_11_0_4_mes_2.bin
amdgpu/gc_11_0_4_pfp.bin
amdgpu/gc_11_0_4_rlc.bin
amdgpu/gc_9_4_3_mec.bin
amdgpu/gc_9_4_3_rlc.bin
amdgpu/psp_13_0_0_sos.bin
amdgpu/psp_13_0_0_ta.bin
amdgpu/psp_13_0_10_sos.bin
amdgpu/psp_13_0_10_ta.bin
amdgpu/psp_13_0_11_ta.bin
amdgpu/psp_13_0_11_toc.bin
amdgpu/psp_13_0_4_ta.bin
amdgpu/psp_13_0_4_toc.bin
amdgpu/psp_13_0_5_asd.bin
amdgpu/psp_13_0_5_ta.bin
amdgpu/psp_13_0_5_toc.bin
amdgpu/psp_13_0_6_sos.bin
amdgpu/psp_13_0_6_ta.bin
amdgpu/psp_13_0_7_sos.bin
amdgpu/psp_13_0_7_ta.bin
amdgpu/psp_13_0_8_asd.bin
amdgpu/psp_13_0_8_ta.bin
amdgpu/psp_13_0_8_toc.bin
amdgpu/sdma_4_4_2.bin
amdgpu/sdma_5_2_6.bin
{% endblock %}

{% block firmware %}
{{super()}}

{% block mediatek %}
mediatek/mt8173/vpu_d.bin
mediatek/mt8173/vpu_p.bin
mediatek/mt8183/scp.img
mediatek/WIFI_MT7922_patch_mcu_1_1_hdr.bin
mediatek/BT_RAM_CODE_MT7922_1_1_hdr.bin
mediatek/BT_RAM_CODE_MT7961_1_2_hdr.bin
mediatek/mt7615_rom_patch.bin
mediatek/mt7610e.bin
mediatek/mt7925/WIFI_MT7925_PATCH_MCU_1_1_hdr.bin
mediatek/mt7925/BT_RAM_CODE_MT7925_1_1_hdr.bin
mediatek/mt7925/WIFI_RAM_CODE_MT7925_1_1.bin
mediatek/WIFI_MT7961_patch_mcu_1_2_hdr.bin
mediatek/WIFI_RAM_CODE_MT7922_1.bin
mediatek/WIFI_RAM_CODE_MT7961_1.bin
mediatek/mt7610u.bin
mediatek/mt7615_cr4.bin
mediatek/mt7615_n9.bin
mediatek/mt7622_rom_patch.bin
mediatek/mt7622_n9.bin
mediatek/mt7662u_rom_patch.bin
mediatek/mt7622pr2h.bin
mediatek/mt7650e.bin
mediatek/mt7662u.bin
mediatek/mt7988/i2p5ge-phy-pmb.bin
mediatek/mt7996/mt7996_eeprom.bin
mediatek/mt7996/mt7996_dsp.bin
mediatek/mt7996/mt7996_rom_patch.bin
mediatek/mt7996/mt7996_wa.bin
mediatek/mt7996/mt7996_wm.bin
mediatek/mt8186/scp.img
mediatek/mt8192/scp.img
mediatek/mt7663_n9_rebb.bin
mediatek/mt7663_n9_v3.bin
mediatek/mt7663pr2h.bin
mediatek/mt7663pr2h_rebb.bin
mediatek/mt7668pr2h.bin
mediatek/mt7915_eeprom.bin
mediatek/mt7915_eeprom_dbdc.bin
mediatek/mt7915_rom_patch.bin
mediatek/mt7915_wa.bin
mediatek/mt7915_wm.bin
mediatek/mt7916_eeprom.bin
mediatek/mt7916_rom_patch.bin
mediatek/mt7916_wa.bin
mediatek/mt7916_wm.bin
mediatek/mt8195/scp.img
mediatek/sof-tplg/sof-mt8186.tplg
mediatek/sof-tplg/sof-mt8195-mt6359-rt1019-rt5682-dts.tplg
mediatek/sof-tplg/sof-mt8195-mt6359-rt1019-rt5682.tplg
mediatek/sof/sof-mt8186.ldc
mediatek/sof/sof-mt8186.ri
mediatek/sof/sof-mt8195.ldc
mediatek/sof/sof-mt8195.ri
mediatek/mt7662_rom_patch.bin
mediatek/mt7601u.bin
mediatek/mt7650.bin
mediatek/mt7662.bin
mediatek/mt7986_eeprom_mt7975_dual.bin
mediatek/mt7981_rom_patch.bin
mediatek/mt7981_wa.bin
mediatek/mt7981_wm.bin
mediatek/mt7981_wo.bin
mediatek/mt7986_eeprom_mt7976_dbdc.bin
mediatek/mt7986_eeprom_mt7976.bin
mediatek/mt7986_wm_mt7975.bin
mediatek/mt7986_wa.bin
mediatek/mt7986_eeprom_mt7976_dual.bin
mediatek/mt7986_rom_patch.bin
mediatek/mt7986_rom_patch_mt7975.bin
mediatek/mt7986_wm.bin
mediatek/mt7986_wo_0.bin
mediatek/mt7986_wo_1.bin
{% endblock %}

{% block rtl_nic %}
rtl_nic/rtl8105e-1.fw
rtl_nic/rtl8106e-1.fw
rtl_nic/rtl8106e-2.fw
rtl_nic/rtl8107e-1.fw
rtl_nic/rtl8107e-2.fw
rtl_nic/rtl8125a-3.fw
rtl_nic/rtl8125b-1.fw
rtl_nic/rtl8125b-2.fw
rtl_nic/rtl8126a-2.fw
rtl_nic/rtl8153a-2.fw
rtl_nic/rtl8153a-3.fw
rtl_nic/rtl8153a-4.fw
rtl_nic/rtl8153b-2.fw
rtl_nic/rtl8153c-1.fw
rtl_nic/rtl8156a-2.fw
rtl_nic/rtl8156b-2.fw
rtl_nic/rtl8168d-1.fw
rtl_nic/rtl8168d-2.fw
rtl_nic/rtl8168e-1.fw
rtl_nic/rtl8168e-2.fw
rtl_nic/rtl8168e-3.fw
rtl_nic/rtl8168f-1.fw
rtl_nic/rtl8168f-2.fw
rtl_nic/rtl8168fp-3.fw
rtl_nic/rtl8168g-1.fw
rtl_nic/rtl8168g-2.fw
rtl_nic/rtl8168g-3.fw
rtl_nic/rtl8168h-1.fw
rtl_nic/rtl8168h-2.fw
rtl_nic/rtl8402-1.fw
rtl_nic/rtl8411-1.fw
rtl_nic/rtl8411-2.fw
{% endblock %}

{% block regulatory %}
regulatory.db
regulatory.bin
regulatory.db.p7s
{% endblock %}
{% endblock %}
