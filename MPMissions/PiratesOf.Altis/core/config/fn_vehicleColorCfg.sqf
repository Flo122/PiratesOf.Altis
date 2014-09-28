	

    /*
            File: fn_vehicleColorCfg.sqf
            Author: Bryan "Tonic" Boardwine
           
            Description:
            Master configuration for vehicle colors.
    */
    private["_vehicle","_ret","_path"];
    _vehicle = [_this,0,"",[""]] call BIS_fnc_param;
    if(_vehicle == "") exitWith {[]};
    _ret = [];
     
    switch (_vehicle) do
    {
            // Quad
            case "B_Quadbike_01_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
                            ["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
                            ["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
                    ];
            };
            // Offroader
            case "C_Offroad_01_F":
            {
                    _ret =
                    [
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
                            ["textures\cop\cop_offroad.jpg","cop"],
                            ["textures\medic\medic_offroad.jpg","med"],
                            ["textures\civ\civ_offroad_camo.jpg","civ"],
                            ["textures\civ\civ_offroad_dodge.jpg","civ"],
                            ["textures\civ\civ_offroad_gamer.jpg","civ"],
                            ["textures\civ\civ_offroad_morgan.jpg","civ"],
                            ["textures\civ\civ_offroad_sushi.jpg","civ"],
                            ["textures\civ\civ_offroad_weed.jpg","civ"],
                            ["textures\rebel\rebel_offroad.jpg","reb"],
                            ["textures\APH\APH_offroad.jpg","APH"]                 
                    ];
            };
            // Hatchback
            case "C_Hatchback_01_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
                            ["textures\civ\civ_hatchback_fire.jpg","civ"],
                            ["textures\civ\civ_hatchback_metallica.jpg","civ"],
                            ["textures\cop\cop_hatchback.jpg","cop"]
                           
                    ];
            };
            // Hatchback Sport
            case "C_Hatchback_01_sport_F":
            {
                    _path = "\a3\soft_f_gamma\Hatchback_01\data\";
                    _ret =
                    [
                            [_path + "hatchback_01_ext_sport01_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport02_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport03_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport04_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport05_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport06_co.paa","civ"],
                            ["textures\civ\civ_hatchback_fire.jpg","civ"],
                            ["textures\civ\civ_hatchback_metallica.jpg","civ"],
                            [_path + "hatchback_01_ext_sport04_co.jpg","cop"],
                            ["textures\cop\cop_hatchback.jpg","cop"]
                    ];
            };     
            // SUV
            case "C_SUV_01_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
                            ["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
                            ["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
                            ["textures\cop\cop_suv.jpg","cop"],
                            ["textures\medic\medic_suv.jpg","med"],
                            ["textures\civ\civ_suv_wm.jpg","civ"],
							["textures\civ\civ_suv_batman.jpg","civ"],
                            ["textures\civ\civ_suv_carbon.jpg","civ"],
                            ["textures\civ\civ_suv_carbonwhite.jpg","civ"],
                            ["textures\civ\civ_suv_fast.jpg","civ"],
                            ["textures\civ\civ_suv_ferrari.jpg","civ"],
                            ["textures\civ\civ_suv_skull.jpg","civ"],
                            ["textures\civ\civ_suv_yokohama.jpg","civ"],
                            ["textures\rebel\rebel_suv.jpg","reb"],
                            ["textures\civ\civ_suv_monster.jpg","civ"],
                            ["textures\cop\sek_suv.jpg","cop"],
                            ["textures\civ\civ_suv_jpg.jpg","sec"],
                            ["textures\civ\civ_suv_poa.jpg","civ"]
                    ];
            };
            // Truck
            case "C_Van_01_transport_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
                    ];
            };
            // Truck Box
            case "C_Van_01_box_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
                            ["textures\medic\medic_truck_0.jpg","med","textures\medic\medic_truck_1.jpg"]
                    ];
            };
            // Truck Fuel
            case "C_Van_01_fuel_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
                    ];
            };
            // Zamak
            case "I_Truck_02_covered_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
                            ["textures\civ\civ_zamak_weed_0.jpg","civ","textures\civ\civ_zamak_weed_1.jpg"],
                            ["textures\civ\civ_zamak_ereka_0.jpg","civ","textures\civ\civ_zamak_ereka_1.jpg"],
                            ["textures\civ\civ_zamak_redbull_0.jpg","civ","textures\civ\civ_zamak_redbull_1.jpg"]                  
                    ];
            };
            // Zamak
            case "I_Truck_02_transport_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
                            ["textures\civ\civ_zamak_weed_0.jpg","civ"],
                            ["textures\civ\civ_zamak_ereka_0.jpg","civ"],
                            ["textures\civ\civ_zamak_redbull_0.jpg","civ"]
                    ];
            };
            // HEMTT
            case "B_Truck_01_box_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
                            ["textures\civ\civ_hemtt_kitty_0.jpg","civ","textures\civ\civ_hemtt_kitty_1.jpg","textures\civ\civ_hemtt_kitty_1.jpg"],
                            ["textures\civ\civ_hemtt_devil_0.jpg","civ","textures\civ\civ_hemtt_devil_1.jpg","textures\civ\civ_hemtt_devil_1.jpg"]
                    ];
            };
            // HEMTT
            case "B_Truck_01_covered_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
                            ["textures\civ\civ_hemtt_kitty_0.jpg","civ","textures\civ\civ_hemtt_kitty_1.jpg","textures\civ\civ_hemtt_kitty_1.jpg"],
                            ["textures\civ\civ_hemtt_devil_0.jpg","civ","textures\civ\civ_hemtt_devil_1.jpg","textures\civ\civ_hemtt_devil_1.jpg"]
                    ];
            };
            // HEMTT
            case "B_Truck_01_transport_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
                            ["textures\civ\civ_hemtt_kitty_0.jpg","civ","textures\civ\civ_hemtt_kitty_1.jpg","textures\civ\civ_hemtt_kitty_1.jpg"],
                            ["textures\civ\civ_hemtt_devil_0.jpg","civ","textures\civ\civ_hemtt_devil_1.jpg","textures\civ\civ_hemtt_devil_1.jpg"]
                    ];
            };     
            // HEMTT
            case "B_Truck_01_mover_F":
            {
                    _ret =
                    [
                            ["textures\APH\APH_hemtt_0.jpg","APH"]
                    ];
            };
            // HEMTT
            case "B_Truck_01_ammo_F":
            {
                    _ret =
                    [
                            ["textures\civ\civ_hemtt_radio_0.jpg","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa","textures\civ\civ_hemtt_radio_2.jpg"]
                    ];
            };
            // Hummingbird
            case "B_Heli_Light_01_F":
            {
                    _ret =
                    [
                            ["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","reb"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
                            ["textures\cop\cop_hummingbird.jpg","cop"],
                            ["textures\medic\medic_hummingbird.jpg","med"],
                            ["textures\civ\civ_hummingbird_redbull.jpg","civ"],
                            ["textures\rebel\rebel_hummingbird.jpg","reb"],
                            ["#(ai,64,64,1)Fresnel(1.3,7)","sec"],
                            ["textures\APH\APH_hummingbird.jpg","APH"]
                    ];
            };
            // Orca
            case "O_Heli_Light_02_unarmed_F":
            {
                    _ret =
                    [
                            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
                            ["textures\cop\cop_orca.jpg","cop"],
                            ["textures\medic\medic_orca.jpg","med"],
                            ["textures\rebel\rebel_orca.jpg","reb"]
                    ];
            };
            // Ghosthawk
            case "B_Heli_Transport_01_F":
            {
                    _ret =
                    [
                            ["textures\cop\cop_ghosthawk_0.jpg","cop","textures\cop\cop_ghosthawk_1.jpg"],
                            ["textures\cop\sek_ghosthawk_0.jpg","cop","textures\cop\sek_ghosthawk_1.jpg"]
                    ];
            };
                    // Hellcat
            case "I_Heli_light_03_unarmed_F":
            {
                    _ret =
                    [
                            ["textures\cop\cop_hellcat.jpg","cop"],
                            ["textures\donator\donator_hellcat.jpg","civ"],
                            ["\a3\air_f_epb\Heli_Light_03\Data\heli_light_03_base_indp_co.paa","reb"]
                    ];
            };
            // Mohawk
            case "I_Heli_Transport_02_F":
            {
                    _path = "\a3\air_f_beta\Heli_Transport_02\Data\";
                    _ret =
                    [
                            [_path + "Skins\heli_transport_02_1_ion_co.paa","civ",_path + "Skins\heli_transport_02_2_ion_co.paa",_path + "Skins\heli_transport_02_3_ion_co.paa"],
                            [_path + "Skins\heli_transport_02_1_dahoman_co.paa","civ",_path + "Skins\heli_transport_02_2_dahoman_co.paa",_path + "Skins\heli_transport_02_3_dahoman_co.paa"],
                            [_path + "heli_transport_02_1_indp_co.paa","reb",_path + "heli_transport_02_2_indp_co.paa",_path + "heli_transport_02_3_indp_co.paa"],
                            ["textures\APH\APH_mohawk_0.jpg","APH","textures\APH\APH_mohawk_1.jpg","textures\APH\APH_mohawk_2.jpg"]
                    ];
            };             
            // Hunter
            case "B_MRAP_01_F":
            {
                    _ret =
                    [
                            ["textures\cop\cop_hunter_0.jpg","cop","textures\cop\cop_hunter_1.jpg"],
                            ["textures\cop\cop_hunter_2_0.jpg","cop","textures\cop\cop_hunter_2_1.jpg"],
                            ["textures\cop\sek_hunter_0.jpg","cop","textures\cop\sek_hunter_1.jpg"],
                            ["textures\donator\donator_hunter_0.jpg","civ","textures\donator\donator_hunter_1.jpg"],
                            ["textures\donator\donator_hunter2_0.jpg","civ","textures\donator\donator_hunter2_1.jpg"]
                    ];
            };
            // Hunter
            case "B_MRAP_01_hmg_F":
            {
                    _ret =
                    [
                            ["textures\cop\cop_hunter_0.jpg","cop","textures\cop\cop_hunter_1.jpg"],
                            ["textures\cop\cop_hunter_2_0.jpg","cop","textures\cop\cop_hunter_2_1.jpg"]
                    ];
            };     
            // Ifrit       
            case "O_MRAP_02_F":
            {
                    _ret =
                    [
                            ["textures\rebel\rebel_ifrit_braun_0.jpg","reb","textures\rebel\rebel_ifrit_braun_1.jpg"],
                            ["textures\rebel\rebel_ifrit_grau_0.jpg","reb","textures\rebel\rebel_ifrit_grau_1.jpg"]
                    ];
            };
            // Ifrit       
            case "O_MRAP_02_hmg_F":
            {
                    _ret =
                    [
                            ["textures\rebel\rebel_ifrit_braun_0.jpg","reb","textures\rebel\rebel_ifrit_braun_1.jpg"],
                            ["textures\rebel\rebel_ifrit_grau_0.jpg","reb","textures\rebel\rebel_ifrit_grau_1.jpg"]
                    ];
            };
            // Strider     
            case "I_MRAP_03_F":
            {
                    _ret =
                    [
                            ["textures\cop\sek_strider.jpg","cop"],
                            ["textures\civ\civ_strider_sec.jpg","sec"]
                    ];
            };
            // Strider HMG 
            case "I_MRAP_03_hmg_F":
            {
                    _ret =
                    [
                            ["textures\cop\sek_strider.jpg","cop"]
                    ];
            };
    };
     
    _ret;

