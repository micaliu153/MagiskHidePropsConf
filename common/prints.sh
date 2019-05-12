#!/system/bin/sh

# MagiskHide Props Config
# Copyright (c) 2018-2019 Didgeridoohan @ XDA Developers
# Licence: MIT

PRINTSV=55
PRINTSTRANSF=350

# Certified fingerprints
PRINTSLIST="
Asus Zenfone 2 Laser (6.0.1)=asus/WW_Z00L/ASUS_Z00L_63:6.0.1/MMB29P/WW_user_21.40.1220.2196_20180308:user/release-keys
Asus Zenfone 4 Max (7.1.1)=asus/WW_Phone/ASUS_X00HD_4:7.1.1/NMF26F/14.2016.1801.372-20180119:user/release-keys
Asus Zenfone Max M1 (8.0.0)=asus/WW_X00PD/ASUS_X00P_4:8.0.0/OPR1.170623.032/15.00.1811.91:user/release-keys__2018-11-05
Asus Zenfone Max Pro M1 (8.1.0)=asus/RU_X00TD/ASUS_X00T_6:8.1.0/OPM1/15.2016.1902.340-20190216:user/release-keys__2019-02-01 
Asus ZenPad S 8.0 (6.0.1)=asus/WW_P01M/P01M_3:6.0.1/MMB29P/WW_P01M-V5.6.0-20170608:user/release-keys
Elephone U Pro (8.0.0)=Elephone/U_Pro/U_Pro:8.0.0/Elephone_U_Pro_20180917/09172123:user/release-keys__2018-09-05
Essential PH-1 (9)=essential/mata/mata:9/PQ1A.190105.058/496:user/release-keys__2019-05-05
Google Nexus 4 (5.1.1)=google/occam/mako:5.1.1/LMY48T/2237560:user/release-keys
Google Nexus 5 (6.0.1)=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys
Google Nexus 5X (8.1.0)=google/bullhead/bullhead:8.1.0/OPM7.181205.001/5080180:user/release-keys__2018-12-05
Google Nexus 6 (7.1.1)=google/shamu/shamu:7.1.1/N6F27M/4299435:user/release-keys
Google Nexus 6P (8.1.0)=google/angler/angler:8.1.0/OPM7.181205.001/5080180:user/release-keys__2018-12-05
Google Nexus 7 2012 WiFi (5.1.1)=google/nakasi/grouper:5.1.1/LMY47V/1836172:user/release-keys
Google Nexus 7 2012 LTE (5.1.1)=google/nakasig/tilapia:5.1.1/LMY47V/1836172:user/release-keys
Google Nexus 7 2013 WiFi (6.0.1)=google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys
Google Nexus 7 2013 LTE (6.0.1)=google/razorg/deb:6.0.1/MOB30X/3036618:user/release-keys
Google Nexus 9 WiFi (7.1.1)=google/volantis/flounder:7.1.1/N9F27M/4333998:user/release-keys
Google Nexus 9 LTE (7.1.1)=google/volantisg/flounder_lte:7.1.1/N4F27P/4333386:user/release-keys
Google Nexus 10 (5.1.1)=google/mantaray/manta:5.1.1/LMY49J/2640980:user/release-keys
Google Pixel (8.1.0 & 9)=google/sailfish/sailfish:8.1.0/OPM2.171019.029/4657601:user/release-keys;google/sailfish/sailfish:9/PQ3A.190505.001/5373320:user/release-keys__2019-05-05
Google Pixel XL (8.1.0 & 9)=google/marlin/marlin:8.1.0/OPM2.171019.029/4657601:user/release-keys;google/marlin/marlin:9/PQ3A.190505.001/5373320:user/release-keys__2019-05-05
Google Pixel 2 (8.1.0 & 9)=google/walleye/walleye:8.1.0/OPM2.171019.029/4657601:user/release-keys;google/walleye/walleye:9/PQ3A.190505.001/5373320:user/release-keys__2019-05-05
Google Pixel 2 XL (8.1.0 & 9)=google/taimen/taimen:8.1.0/OPM4.171019.016.B1/4720843:user/release-keys;google/taimen/taimen:9/PQ3A.190505.001/5373320:user/release-keys__2019-05-05
Google Pixel 3 (9)=google/blueline/blueline:9/PQ3A.190505.002/5450365:user/release-keys__2019-05-05
Google Pixel 3 XL (9)=google/crosshatch/crosshatch:9/PQ3A.190505.002/5450365:user/release-keys__2019-05-05
Google Pixel C (8.1.0)=google/ryu/dragon:8.1.0/OPM8.190505.001/5373745:user/release-keys__2019-05-05
HTC 10 (6.0.1)=htc/HTCOneM10vzw/htc_pmewl:6.0.1/MMB29M/774095.8:user/release-keys
HTC U11 (8.0.0)=htc/ocndtwl_01405/htc_ocndtwl:8.0.0/OPR6.170623.013/1017190.2:user/release-keys
HTC U12 Plus (8.0.0)=htc/imeuhl_00617/htc_imeuhl:8.0.0/OPR1.170623.032/1041457.3:user/release-keys__2018-06-01
Huawei Honor 6X (8.0.0)=HONOR/BLN-AL10/HWBLN-H:8.0.0/HONORBLN-AL10/528(C00):user/release-keys
Huawei Honor 8X (8.1.0)=HONOR/JSN-L21RU/HWJSN-H:8.1.0/HONORJSN-L21/101(C10):user/release-keys__2018-10-01
Huawei Honor 9 (8.0.0 & 9)=HONOR/STF-L09/HWSTF:8.0.0/HUAWEISTF-L09/364(C432):user/release-keys;HONOR/STF-L09/HWSTF:9/HUAWEISTF-L09/157C432R1:user/release-keys__2019-02-01
Huawei Mate 10 (8.0.0)=HUAWEI/ALP-L29/HWALP:8.0.0/HUAWEIALP-L29S/143(C636):user/release-keys__2018-10-01
Huawei Mate 10 Pro (8.0.0)=HUAWEI/BLA-L29/HWBLA:8.0.0/HUAWEIBLA-L29S/137(C432):user/release-keys
Huawei Mate 20 Pro (9)=HUAWEI/LYA-L29/HWLYA:9/HUAWEILYA-L29/183AUSC636R1:user/release-keys
Huawei P8 Lite (8.0.0)=HUAWEI/PRA-LX1/HWPRA-H:8.0.0/HUAWEIPRA-LX1/401(C432):user/release-keys__2019-01-01
Huawei P9 (7.0)=HUAWEI/EVA-L09/HWEVA:7.0/HUAWEIEVA-L09/C432B502:user/release-keys
Huawei P9 Lite (7.0)=HUAWEI/VNS-L31/HWVNS-H:7.0/HUAWEIVNS-L31/C432B414:user/release-keys__2018-06-01
Huawei P9 Plus (7.0)=HUAWEI/VIE-L09/HWVIE:7.0/HUAWEIVIE-L09/C432B387:user/release-keys__2018-07-01
Huawei P20 (9)=HUAWEI/EML-L29/HWEML:9/HUAWEIEML-L29/197C432R1:user/release-keys__2019-01-01
Huawei P20 Pro (8.1.0 & 9)=HUAWEI/CLT-L29/HWCLT:8.1.0/HUAWEICLT-L29/128(C432):user/release-keys;HUAWEI/CLT-L09/HWCLT:9/HUAWEICLT-L09/203C432R1:user/release-keys__2019-02-01
Lenovo K6 Note (7.0)=Lenovo/karatep/K53a48:7.0/NRD90N/K53_S228_171114_ROW:user/release-keys
LeEco Le Pro3 (6.0.1)=LeEco/ZL1_NA/le_zl1:6.0.1/WEXNAOP5802101261S/letv01261206:user/release-keys
LG G2 BS980 (5.0.2)=lge/g2_vzw/g2:5.0.2/LRX22G/15046001715f9:user/release-keys
LG G4 H812 (6.0)=lge/p1_rgs_ca/p1:6.0/MRA58K/1601215569825:user/release-keys
LG G5 H850 (8.0.0)=lge/h1_global_com/h1:8.0.0/OPR1.170623.032/190380127377a:user/release-keys__2018-12-01
LG G5 H830 (8.0.0)=lge/h1_tmo_us/h1:8.0.0/OPR1.170623.032/182251913485f:user/release-keys__2018-08-01
LG G5 RS988 (7.0)=lge/h1_lra_us/h1:7.0/NRD90U/1707917149a1b:user/release-keys
LG G6 H870 (7.0 & 8.0.0)=lge/lucye_global_com/lucye:7.0/NRD90U/171732341982c:user/release-keys;lge/lucye_global_com/lucye:8.0.0/OPR1.170623.032/183301757502c:user/release-keys__2018-11-01
LG G6 H872 (8.0.0)=lge/lucye_tmo_us/lucye:8.0.0/OPR1.170623.032/183621644ce05:user/release-keys__2019_01-01
LG V20 H918 (8.0.0)=lge/elsa_tmo_us/elsa:8.0.0/OPR1.170623.032/1831917495b33:user/release-keys__2018-11-01
LG V20 H910 (8.0.0)=lge/elsa_att_us/elsa:8.0.0/OPR1.170623.032/181871124f959:user/release-keys__2018-06-01
LG V20 VS995 (8.0.0)=lge/elsa_vzw/elsa:8.0.0/OPR1.170623.032/183141449275f:user/release-keys__2018-10-01
LG V30 H930 (8.0.0)=lge/joan_global_com/joan:8.0.0/OPR1.170623.026/181381736b4e9:user/release-keys__2018-11-05
Motorola Moto C Plus (7.0)=motorola/panell_21_d/panell_d:7.0/NRD90M.03.040/040:user/release-keys
Motorola Moto E4 (7.1.1)=motorola/sperry_sprint/sperry:7.1.1/NCQ26.69-64/68:user/release-keys
Motorola Moto E4 Plus (7.1.1)=motorola/nicklaus_fn/nicklaus_fn:7.1.1/NMA26.42-156/183:user/release-keys
Motorola Moto E5 Play (8.0.0)=motorola/james_sprint/james:8.0.0/OCPS27.91-140-1/1:user/release-keys__2018-10-01
Motorola Moto E5 Plus (8.0.0)=motorola/hannah_sprint/hannah:8.0.0/OCPS27.91-32-4/4:user/release-keys__2018-10-01
Motorola Moto G4 (7.0)=motorola/athene/athene:7.0/NPJS25.93-14-13/3:user/release-keys
Motorola Moto G5 (7.0)=motorola/cedric/cedric:7.0/NPPS25.137-15-11/11:user/release-keys
Motorola Moto G5 Plus (7.0)=motorola/potter_n/potter_n:7.0/NPNS25.137-33-11/11:user/release-keys
Motorola Moto G5S (7.1.1 & 8.1.0)=motorola/montana/montana:7.1.1/NPPS26.102-49-8/6:user/release-keys;motorola/montana/montana:8.1.0/OPPS28.65-37-2-2/22d20:user/release-keys__2018-10-01
Motorola Moto G6 Play (8.0.0 & 9)=motorola/jeter_sprint/jeter:8.0.0/OCP27.91-23/23:user/release-keys;motorola/aljeter/aljeter:9/PPP29.55-25/08c6:user/release-keys__2019-01-01
Motorola Moto X4 (8.0.0)=motorola/payton/payton:8.0.0/OPWS27.57-25-6-10/12:user/release-keys
Motorola Moto Z2 Play (8.0.0)=motorola/albus/albus:8.0.0/OPS27.76-12-25/26:user/release-keys
Nextbook Ares 8A (6.0.1)=NextBook/NX16A8116K/NX16A8116K:6.0.1/MMB29M/V4.0.3:user/release-keys
Nokia 7 Plus (9)=Nokia/Onyx_00WW/B2N_sprout:9/PPR1.180610.011/00WW_3_22C:user/release-keys__2018-09-01
Nvidia Shield K1 (7.0)=nvidia/sb_na_wf/shieldtablet:7.0/NRD90M/1928188_1065.2559:user/release-keys
Nvidia Shield Tablet (7.0)=nvidia/wx_na_wf/shieldtablet:7.0/NRD90M/1928188_904.2811:user/release-keys
OnePlus 2 (6.0.1)=OnePlus/OnePlus2/OnePlus2:6.0.1/MMB29M/1447858500:user/release-keys
OnePlus X (6.0.1)=OnePlus/OnePlus/OnePlus:6.0.1/MMB29M/10281213:user/release-keys
OnePlus 3 (8.0.0)=OnePlus/OnePlus3/OnePlus3:8.0.0/OPR1.170623.032/1809142047:user/release-keys__2018-09-01
OnePlus 3T (8.0.0)=OnePlus/OnePlus3/OnePlus3T:8.0.0/OPR1.170623.032/1812060016:user/release-keys__2018-11-01
OnePlus 5 (8.1.0 & 9)=OnePlus/OnePlus5/OnePlus5:8.1.0/OPM1.171019.011/1809241512:user/release-keys__2018-09-01;OnePlus/OnePlus5/OnePlus5:9/PKQ1.180716.001/1812102249:user/release-keys__2018-12-01
OnePlus 5T (8.1.0 & 9)=OnePlus/OnePlus5T/OnePlus5T:8.1.0/OPM1.171019.011/1809241512:user/release-keys__2018-09-01;OnePlus/OnePlus5T/OnePlus5T:9/PKQ1.180716.001/1904191514:user/release-keys__2019-04-01
OnePlus 6 (8.1.0 & 9)=OnePlus/OnePlus6/OnePlus6:8.1.0/OPM1.171019.011/06140300:user/release-keys;OnePlus/OnePlus6/OnePlus6:9/PKQ1.180716.001/1809150000:user/release-keys__2018-09-05
OnePlus 6T (9)=OnePlus/OnePlus6T/OnePlus6T:9/PKQ1.180716.001/1901231231:user/release-keys__2019-01-01
OPPO Neo 7 A33w (5.1)=OPPO/A33w/A33w:5.1/LMY47I/1487829433:user/release-keys
OPPO Neo 7 A1603 (5.1)=OPPO/A1603/A1603:5.1/LMY47I/1489407760:user/release-keys
Razer Phone (8.1.0)=razer/cheryl/cheryl:8.1.0/OPM1.171019.011-RZR-180803/6033:user/release-keys__2018-07-05
Razer Phone 2 (8.1.0)=razer/cheryl2/aura:8.1.0/O-MR2-RC009-RZR-181124/2009:user/release-keys__2018-10-05
Samsung Galaxy A5 2015 (6.0.1)=samsung/a5ultexx/a5ulte:6.0.1/MMB29M/A500FUXXU1CPH3:user/release-keys
Samsung Galaxy A5 2017 (8.0.0)=samsung/a5y17ltexx/a5y17lte:8.0.0/R16NW/A520FXXU4CRE8:user/release-keys__2018-05-01
Samsung Galaxy A6 Plus (9)=samsung/a6pltedx/a6plte:9/PPR1.180610.011/A605GDXU3BSC6:user/release-keys__2019-03-01
Samsung Galaxy A8 Plus (7.1.1)=samsung/jackpot2ltexx/jackpot2lte:7.1.1/NMF26X/A730FXXU2ARD1:user/release-keys
Samsung Galaxy Grand Prime (5.0.2)=samsung/fortuna3gdtvvj/fortuna3gdtv:5.0.2/LRX22G/G530BTVJU1BPH4:user/release-keys
Samsung Galaxy J2 (5.1.1)=samsung/j23gdd/j23g:5.1.1/LMY48B/J200HXXU0AQK2:user/release-keys
Samsung Galaxy J3 (5.1.1)=samsung/j3xnltexx/j3xnlte:5.1.1/LMY47V/J320FNXXU0ARB1:user/release-keys
Samsung Galaxy J5 2015 (6.0.1)=samsung/j5nltexx/j5nlte:6.0.1/MMB29M/J500FNXXS1BQG1:user/release-keys
Samsung Galaxy J5 2016 (7.1.1)=samsung/j5xnltexx/j5xnlte:7.1.1/NMF26X/J510FNXXS2BRA2:user/release-keys
Samsung Galaxy J5 Prime (7.0)=samsung/on5xeltejv/on5xelte:7.0/NRD90M/G570FXXU1BQI6:user/release-keys
Samsung Galaxy J7 2017 (8.1.0)=samsung/j7y17ltexx/j7y17lte:8.1.0/M1AJQ/J730FXXU3BRK2:user/release-keys__2018-11-01
Samsung Galaxy J7 Prime (6.0.1)=samsung/on7xeltedd/on7xelte:6.0.1/MMB29K/G610FDDU1AQG2:user/release-keys
Samsung Galaxy Note 3 (5.0)=samsung/hltezh/hlte:5.0/LRX21V/N9005ZSUGPJ2:user/release-keys
Samsung Galaxy Note 4 (6.0.1)=samsung/trltexx/trlte:6.0.1/MMB29M/N910FXXS1DQH9:user/release-keys
Samsung Galaxy Note 5 (7.0)=samsung/nobleltejv/noblelte:7.0/NRD90M/N920CXXU3CQH6:user/release-keys
Samsung Galaxy Note 8 (8.0.0)=samsung/greatltexx/greatlte:8.0.0/R16NW/N950FXXU3CRC1:user/release-keys
Samsung Galaxy Note 10.1 2014 (5.1.1)=samsung/lt03wifixx/lt03wifi:5.1.1/LMY47X/P600XXUDOJ3:user/release-keys
Samsung Galaxy S3 Neo (4.4.4)=samsung/s3ve3gdd/s3ve3gdd:4.4.4/KTU84P/I9300IDDUBQE2:user/release-keys
Samsung Galaxy S4 (5.0.1)=samsung/jfltexx/jflte:5.0.1/LRX22C/I9505XXUHPF4:user/release-keys
Samsung Galaxy S4 Active (5.0.1)=samsung/jactiveltexx/jactivelte:5.0.1/LRX22C/I9295XXSDQD6:user/release-keys
Samsung Galaxy S5 (6.0.1)=samsung/k3gxx/k3g:6.0.1/MMB29K/G900HXXU1CPF2:user/release-keys
Samsung Galaxy S6 (7.0)=samsung/zerofltexx/zeroflte:7.0/NRD90M/G920FXXS5EQL1:user/release-keys
Samsung Galaxy S6 Edge (7.0)=samsung/zeroltexx/zerolte:7.0/NRD90M/G925FXXS5EQL1:user/release-keys
Samsung Galaxy S7 (8.0.0)=samsung/heroltexx/herolte:8.0.0/R16NW/G930FXXU2ERD5:user/release-keys
Samsung Galaxy S7 Edge (8.0.0)=samsung/hero2ltexx/hero2lte:8.0.0/R16NW/G935FXXS4ESC3:user/release-keys__2019-03-01
Samsung Galaxy S8 (8.0.0)=samsung/dreamltexx/dreamlte:8.0.0/R16NW/G950FXXU1CRC7:user/release-keys
Samsung Galaxy S8 Plus (8.0.0)=samsung/dream2ltexx/dream2lte:8.0.0/R16NW/G955FXXU1CRC7:user/release-keys
Samsung Galaxy S9 (8.0.0)=samsung/starltexx/starlte:8.0.0/R16NW/G960FXXU1ARCC:user/release-keys
Samsung Galaxy S9 Plus (8.0.0)=samsung/star2ltexx/star2lte:8.0.0/R16NW/G965FXXU1ARCC:user/release-keys
Samsung Galaxy S10 Plus (9)=samsung/beyond2qlteue/beyond2q:9/PPR1.180610.011/G975U1UEU1ASD3:user/release-keys__2019-03-01
Samsung Galaxy Tab S3 (LTE SM-T825) (8.0.0)=samsung/gts3lltexx/gts3llte:8.0.0/R16NW/T825XXU2BRL2:user/release-keys__2018-12-01
Sony Xperia X (8.0.0)=Sony/F5121/F5121:8.0.0/34.4.A.2.118/1631208121:user/release-keys__2018-09-01
Sony Xperia X Compact (8.0.0)=Sony/F5321/F5321:8.0.0/34.4.A.2.118/1631208121:user/release-keys__2018-09-01
Sony Xperia X Dual (8.0.0)=Sony/F5122/F5122:8.0.0/34.4.A.2.118/1631208121:user/release-keys__2018-09-01
Sony Xperia X Performance (8.0.0)=Sony/F8131/F8131:8.0.0/41.3.A.2.99/1455830589:user/release-keys
Sony Xperia X Performance Dual (8.0.0)=Sony/F8132/F8132:8.0.0/41.3.A.2.99/1455830589:user/release-keys
Sony Xperia XZ (8.0.0)=Sony/F8331/F8331:8.0.0/41.3.A.2.99/1455830589:user/release-keys
Sony Xperia XZ Dual (8.0.0)=Sony/F8332/F8332:8.0.0/41.3.A.2.99/1455830589:user/release-keys
Sony Xperia XZ Premium (8.0.0)=Sony/G8141/G8141:8.0.0/47.1.A.12.179/1909673090:user/release-keys
Sony Xperia XZ Premium Dual (8.0.0)=Sony/G8142/G8142:8.0.0/47.1.A.12.179/1909673090:user/release-keys
Sony Xperia XZ1 (8.0.0)=Sony/G8341/G8341:8.0.0/47.1.A.12.179/1909673090:user/release-keys
Sony Xperia XZ1 Compact (8.0.0 & 9)=Sony/G8441/G8441:8.0.0/47.1.A.12.179/1909673090:user/release-keys;Sony/G8441/G8441:9/47.2.A.2.33/3676206253:user/release-keys__2018-11-01
Sony Xperia XZ1 Dual (8.0.0)=Sony/G8342/G8342:8.0.0/47.1.A.12.179/1909673090:user/release-keys
Sony Xperia XZ2 (8.0.0)=Sony/H8216/H8216:8.0.0/51.1.A.3.159/620448843:user/release-keys
Sony Xperia XZ2 Compact (8.0.0)=Sony/H8314/H8314:8.0.0/51.1.A.3.159/620448843:user/release-keys
Sony Xperia XZ2 Compact Dual (8.0.0)=Sony/H8324/H8324:8.0.0/51.1.A.3.159/620448843:user/release-keys
Sony Xperia XZ2 Dual (8.0.0)=Sony/H8266/H8266:8.0.0/51.1.A.3.159/620448843:user/release-keys
Sony Xperia Z (5.1.1)=Sony/C6603/C6603:5.1.1/10.7.A.0.228/58103698:user/release-keys
Sony Xperia Z1 (5.1.1)=Sony/C6903/C6903:5.1.1/14.6.A.1.236/2031203603:user/release-keys
Sony Xperia Z2 (6.0.1)=Sony/D6503/D6503:6.0.1/23.5.A.1.291/2769308465:user/release-keys
Sony Xperia Z3 (6.0.1)=Sony/D6633/D6633:6.0.1/23.5.A.1.291/2769308465:user/release-keys
Sony Xperia Z3 Compact (6.0.1)=Sony/D5803/D5803:6.0.1/23.5.A.1.291/2769308465:user/release-keys
Sony Xperia Z3 Tablet Compact (6.0.1)=Sony/SGP621/SGP621:6.0.1/23.5.A.1.291/3706784398:user/release-keys
Sony Xperia Z4 Tablet LTE (7.1.1)=Sony/SGP771/SGP771:7.1.1/32.4.A.1.54/219395100:user/release-keys
Sony Xperia Z5 (7.1.1)=Sony/E6603/E6603:7.1.1/32.4.A.1.54/3761073091:user/release-keys
Sony Xperia Z5 Compact (7.1.1)=Sony/E5823/E5823:7.1.1/32.4.A.1.54/3761073091:user/release-keys
Sony Xperia Z5 Dual (7.1.1)=Sony/E6633/E6633:7.1.1/32.4.A.1.54/3761073091:user/release-keys
Sony Xperia Z5 Premium (7.1.1)=Sony/E6853/E6853:7.1.1/32.4.A.1.54/3761073091:user/release-keys
Sony Xperia Z5 Premium Dual (7.1.1)=Sony/E6883/E6883:7.1.1/32.4.A.1.54/3761073091:user/release-keys
Vodafone Smart Ultra 6 (5.1.1)=Vodafone/P839V55/P839V55:5.1.1/LMY47V/20161227.134319.15534:user/release-keys
Xiaomi Mi 3/4 (6.0.1)=Xiaomi/cancro/cancro:6.0.1/MMB29M/V9.5.2.0.MXDMIFA:user/release-keys
Xiaomi Mi 4C (7.0)=Xiaomi/libra/libra:7.0/NRD90M/V9.6.2.0.NXKCNFD:user/release-keys
Xiaomi Mi 5/5 Pro (7.0 & 8.0.0)=Xiaomi/gemini/gemini:7.0/NRD90M/V9.2.1.0.NAAMIEK:user/release-keys;Xiaomi/gemini/gemini:8.0.0/OPR1.170623.032/V9.6.1.0.OAAMIFD:user/release-keys
Xiaomi Mi 5S (7.0)=Xiaomi/capricorn/capricorn:7.0/NRD90M/V9.5.4.0.NAGMIFD:user/release-keys
Xiaomi Mi 5S Plus (6.0.1 & 7.0)=Xiaomi/natrium/natrium:6.0.1/MXB48T/V8.5.2.0.MBGMIED:user/release-keys;Xiaomi/natrium/natrium:7.0/NRD90M/V9.6.2.0.NBGMIFD:user/release-keys
Xiaomi Mi 6 (8.0.0)=Xiaomi/sagit/sagit:8.0.0/OPR1.170623.027/V9.2.3.0.OCAMIEK:user/release-keys
Xiaomi Mi 8 (8.1.0 & 9)=Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.5.0.OEAMIFA:user/release-keys;Xiaomi/dipper/dipper:9/PKQ1.180729.001/V10.2.3.0.PEAMIXM:user/release-keys__2019-02-01
Xiaomi Mi 9 (9)=Xiaomi/cepheus_eea/cepheus:9/PKQ1.181121.001/V10.2.17.0.PFAEUXM:user/release-keys__2019-03-01
Xiaomi Mi A1 (8.0.0 & 9)=xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/V.9.5.10.0.ODHMIFA:user/release-keys;xiaomi/tissot/tissot_sprout:9/PKQ1.180917.001/V10.0.4.0.PDHMIXM:user/release-keys_2019-01-05
Xiaomi Mi A2 (8.1.0 & 9)=xiaomi/jasmine/jasmine_sprout:8.1.0/OPM1.171019.011/V9.6.16.0.ODIMIFE:user/release-keys__2018-11-05;xiaomi/jasmine/jasmine_sprout:9/PKQ1.180904.001/V10.0.7.0.PDIMIXM:user/release-keys__2019-03-05
Xiaomi Mi A2 Lite (9)=xiaomi/daisy/daisy_sprout:9/PKQ1.180917.001/V10.0.1.0.PDLMIFJ:user/release-keys__2018-11-05
Xiaomi Mi Max (6.0.1)=Xiaomi/helium/helium:6.0.1/MMB29M/V8.2.3.0.MBDMIDL:user/release-keys
Xiaomi Mi Max 2 (7.1.1)=Xiaomi/oxygen/oxygen:7.1.1/NMF26F/V9.5.4.0.NDDMIFA:user/release-keys
Xiaomi Mi Max 3 (9)=Xiaomi/nitrogen/nitrogen:9/PKQ1.181007.001/V10.3.1.0.PEDMIXM:user/release-keys__2019-03-01
Xiaomi Mi Mix 2 (8.0.0)=Xiaomi/chiron/chiron:8.0.0/OPR1.170623.027/V10.2.2.0.ODEMIXM:user/release-keys__2018-12-01
Xiaomi Mi Mix 2S (8.0.0 & 9)=Xiaomi/polaris/polaris:8.0.0/OPR1.170623.032/V9.5.19.0.ODGMIFA:user/release-keys;Xiaomi/polaris/polaris:9/PKQ1.180729.001/V10.2.2.0.PDGMIXM:user/release-keys__2019-02-01
Xiaomi Mi Mix 3 (9)=Xiaomi/perseus/perseus:9/PKQ1.180729.001/V10.3.1.0.PEEMIXM:user/release-keys__2019-03-01
Xiaomi Mi Note 2 (7.0 & 8.0.0)=Xiaomi/scorpio/scorpio:7.0/NRD90M/V9.2.1.0.NADMIEK:user/release-keys;Xiaomi/scorpio/scorpio:8.0.0/OPR1.170623.032/V9.6.1.0.OADCNFD:user/release-keys
Xiaomi Mi Note 3 (8.1.0)=Xiaomi/jason/jason:8.1.0/OPM1.171019.019/V10.2.2.0.OCHMIXM:user/release-keys__2018-12-01
Xiaomi Mi Pad 4 (8.1.0)=Xiaomi/clover/clover:8.1.0/OPM1.171019.019/V10.1.1.0.ODJCNFI:user/release-keys__2018-10-01
Xiaomi Pocophone F1 (9)=Xiaomi/beryllium/beryllium:9/PKQ1.180729.001/V10.3.4.0.PEJMIXM:user/release-keys__2019-03-01
Xiaomi Redmi 3/3 Pro (5.1.1)=Xiaomi/ido/ido:5.1.1/LMY47V/V9.6.2.0.LAIMIFD:user/release-keys
Xiaomi Redmi 3S/X Prime (6.0.1)=Xiaomi/land/land:6.0.1/MMB29M/V9.5.1.0.MALMIFA:user/release-keys
Xiaomi Redmi 4 Prime (6.0.1)=Xiaomi/markw/markw:6.0.1/MMB29M/V9.5.3.0.MBEMIFA:user/release-keys
Xiaomi Redmi 4X (6.0.1)=Xiaomi/santoni/santoni:6.0.1/MMB29M/V8.5.4.0.MAMCNED:user/release-keys
Xiaomi Redmi 5A (7.1.2)=Xiaomi/riva/riva:7.1.2/N2G47H/V9.1.8.0.NCKMIEI:user/release-keys
Xiaomi Redmi Note 2 (5.0.2)=Xiaomi/hermes/hermes:5.0.2/LRX22G/V9.2.4.0.LHMMIEK:user/release-keys
Xiaomi Redmi Note 3 Pro (6.0.1)=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/V8.2.1.0.MHOCNDL:user/release-keys
Xiaomi Redmi Note 3 Pro SE (6.0.1)=Xiaomi/kate/kate:6.0.1/MMB29M/V8.1.3.0.MHRMIDI:user/release-keys
Xiaomi Redmi Note 4/4X (7.0)=xiaomi/mido/mido:7.0/NRD90M/V9.2.1.0.NCFMIEK:user/release-keys
Xiaomi Redmi Note 5/5 Plus (7.1.2 & 8.1.0)=xiaomi/vince/vince:7.1.2/N2G47H/V9.5.4.0.NEGMIFA:user/release-keys;xiaomi/vince/vince:8.1.0/OPM1.171019.019/V10.2.1.0.OEGMIXM:user/release-keys__2019-03-01
Xiaomi Redmi Note 5 Pro (8.1.0)=xiaomi/whyred/whyred:8.1.0/OPM1.171019.011/V10.0.6.0.OEIMIFH:user/release-keys__2018-11-01
Xiaomi Redmi Note 5A Lite (7.1.2)=xiaomi/ugglite/ugglite:7.1.2/N2G47H/V9.1.2.0.NDFMIEI:user/release-keys
Xiaomi Redmi Note 6 Pro (8.1.0)=xiaomi/tulip/tulip:8.1.0/OPM1.171019.011/V10.0.5.0.OEKMIFH:user/release-keys__2018-10-01
Xiaomi Redmi Note 7 (9)=xiaomi/lavender/lavender:9/PKQ1.180904.001/V10.2.7.0.PFGINXM:user/release-keys__2019-02-05
Xiaomi Redmi Y1 (7.1.2)=xiaomi/ugg/ugg:7.1.2/N2G47H/V9.6.2.0.NDKMIFD:user/release-keys__2018-07-01
ZTE Axon 7 (7.1.1 & 8.0.0)=ZTE/P996A01_N/ailsa_ii:7.1.1/NMF26V/20171211.005949:user/release-keys;ZTE/P996A01_O/ailsa_ii:8.0.0/OPR1.170623.032/20180815.171922:user/release-keys__2018-07-01
ZTE Blade (6.0.1)=ZTE/P809A50_MY_MAX/P809A50:6.0.1/MMB29M/20161017.095504:user/release-keys
ZTE Nubia Z17 (7.1.1)=nubia/NX563J/NX563J:7.1.1/NMF26X/eng.nubia.20171019.101529:user/release-keys
Zuk Z2 Pro (7.0)=ZUK/z2_row/z2_row:7.0/NRD90M/2.5.435_170525:user/release-keys
"
