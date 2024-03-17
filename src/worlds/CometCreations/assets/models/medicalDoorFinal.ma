//Maya ASCII 2024 scene
//Name: medicalDoorFinal.ma
//Last modified: Sat, Mar 16, 2024 06:18:01 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "60E3177B-46C0-A7F1-7E43-AB88F83862A1";
createNode transform -s -n "persp";
	rename -uid "77BB92CF-4963-6F75-96EA-229610CBBF40";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 63.324275810303675 24.227307471836212 1.2278207641095538 ;
	setAttr ".r" -type "double3" -14.738352728711806 85.800000000001447 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2251AD90-483A-DE41-B12D-399D8BE0D71E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 65.130075036199329;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.50628506481415614 7.6578673686957615 -3.3852441160830793 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7FE55499-4A4B-C21C-9A4D-34805096C331";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "69C4E580-4C28-3B15-753A-E89FCFAC32F9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "65DFA098-41F2-07F1-8C51-33947A297049";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6A64F21B-49E1-5F28-6579-ECB7D65D9C1C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 65.440488337953198;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "20DAB1FA-4D3D-1363-A6C3-E39328B0F901";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7818AC0B-4497-6DB5-A87D-E98EB32F5BDE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "door";
	rename -uid "477086E5-4A5B-10B7-62CD-DB9A9E783715";
	setAttr ".t" -type "double3" 0 9.2497541030495292 0 ;
	setAttr ".s" -type "double3" 0.92251544084890791 18.457511987782944 12.214530082258813 ;
createNode transform -n "transform5" -p "door";
	rename -uid "D1B103B5-45B7-12C2-8833-54A9DBFED970";
	setAttr ".v" no;
createNode mesh -n "doorShape" -p "transform5";
	rename -uid "2FEB9BBE-4CCF-10BF-9E7E-BDBC9CD55E9A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.0578060150146484 -0.13030397891998291 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "handleHolder";
	rename -uid "7C21A4E5-43BB-661B-CD24-F9A84F9ACD1A";
	setAttr ".t" -type "double3" 0.50628506481415614 7.708896307985297 -4.9028620454930882 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1 0.14347667059359634 1 ;
createNode transform -n "transform4" -p "handleHolder";
	rename -uid "CEBCD115-4D80-6A49-3BCD-C4B0E82F4E1E";
	setAttr ".v" no;
createNode mesh -n "handleHolderShape" -p "transform4";
	rename -uid "19276181-4A63-6229-2CE0-6FBA61990423";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "handle1";
	rename -uid "33CB4476-423F-2C63-078F-7D8FF02424B8";
	setAttr ".t" -type "double3" 1.5577260105613222 7.2799982433113648 -3.3761604387891886 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.30343518889926363 1.1978783678646221 0.30343518889926363 ;
createNode transform -n "transform1" -p "handle1";
	rename -uid "B9D443EC-46E0-FA60-7ACC-2898A52C9B2E";
	setAttr ".v" no;
createNode mesh -n "handleShape1" -p "transform1";
	rename -uid "74EE2802-47B1-1957-8A3F-EEAF0B09A6E9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "handle2";
	rename -uid "6708870D-4903-4191-097E-F48A93E4B346";
	setAttr ".t" -type "double3" 3.211007627876902 7.2799982433113648 -1.8815817654761258 ;
	setAttr ".r" -type "double3" 90 0 -90 ;
	setAttr ".s" -type "double3" 0.30343518889926363 1.1978783678646221 0.30343518889926363 ;
createNode transform -n "transform2" -p "handle2";
	rename -uid "66D42CFE-4589-1EF9-F864-BE82CE103D3B";
	setAttr ".v" no;
createNode mesh -n "handleShape2" -p "transform2";
	rename -uid "A72C42A0-4485-A4B1-3E87-8490DC70C61E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:39]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:7]" "f[24:39]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[16:23]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375 0.5 0.15625 0.5 0.84375 0.625 0.67551982 0.375 0.67551982 0.59375 0.67551982
		 0.5625 0.67551982 0.53125 0.67551982 0.5 0.67551982 0.46875 0.67551982 0.4375 0.67551982
		 0.40625 0.67551982 0.625 0.32557938 0.375 0.32557938 0.59375 0.32557938 0.5625 0.32557938
		 0.53125 0.32557938 0.5 0.32557938 0.46875 0.32557938 0.4375 0.32557938 0.40625 0.32557938;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0 0.70710671 0.93610597 -0.70710671 1 0.93610597 0 0.70710671 0.93610597 0.70710671
		 0 0.93610597 0.99999994 -0.70710671 0.93610597 0.70710671 -0.99999988 0.93610597 0
		 -0.70710671 0.93610597 -0.70710671 0 0.93610597 -0.99999988 0.70710671 -0.93024325 -0.70710671
		 1 -0.93024325 0 0.70710677 -0.93024325 0.70710677 0 -0.93024325 0.99999994 -0.70710671 -0.93024325 0.70710671
		 -0.99999988 -0.93024325 0 -0.70710671 -0.93024325 -0.70710671 0 -0.93024325 -0.99999988;
	setAttr -s 72 ".ed[0:71]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 26 0 1 33 0 2 32 0
		 3 31 0 4 30 0 5 29 0 6 28 0 7 27 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1 18 8 0 19 15 0
		 20 14 0 21 13 0 22 12 0 23 11 0 24 10 0 25 9 0 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1
		 23 24 1 24 25 1 25 18 1 26 18 0 27 19 0 28 20 0 29 21 0 30 22 0 31 23 0 32 24 0 33 25 0
		 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1 31 32 1 32 33 1 33 26 1;
	setAttr -s 40 -ch 144 ".fc[0:39]" -type "polyFaces" 
		f 4 0 17 71 -17
		mu 0 4 8 9 53 46
		f 4 1 18 70 -18
		mu 0 4 9 10 52 53
		f 4 2 19 69 -19
		mu 0 4 10 11 51 52
		f 4 3 20 68 -20
		mu 0 4 11 12 50 51
		f 4 4 21 67 -21
		mu 0 4 12 13 49 50
		f 4 5 22 66 -22
		mu 0 4 13 14 48 49
		f 4 6 23 65 -23
		mu 0 4 14 15 47 48
		f 4 7 16 64 -24
		mu 0 4 15 16 45 47
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35
		f 4 -49 40 -16 -42
		mu 0 4 38 36 25 24
		f 4 -50 41 -15 -43
		mu 0 4 39 38 24 23
		f 4 -51 42 -14 -44
		mu 0 4 40 39 23 22
		f 4 -52 43 -13 -45
		mu 0 4 41 40 22 21
		f 4 -53 44 -12 -46
		mu 0 4 42 41 21 20
		f 4 -54 45 -11 -47
		mu 0 4 43 42 20 19
		f 4 -55 46 -10 -48
		mu 0 4 44 43 19 18
		f 4 -56 47 -9 -41
		mu 0 4 37 44 18 17
		f 4 -65 56 48 -58
		mu 0 4 47 45 36 38
		f 4 -66 57 49 -59
		mu 0 4 48 47 38 39
		f 4 -67 58 50 -60
		mu 0 4 49 48 39 40
		f 4 -68 59 51 -61
		mu 0 4 50 49 40 41
		f 4 -69 60 52 -62
		mu 0 4 51 50 41 42
		f 4 -70 61 53 -63
		mu 0 4 52 51 42 43
		f 4 -71 62 54 -64
		mu 0 4 53 52 43 44
		f 4 -72 63 55 -57
		mu 0 4 46 53 44 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "handle3";
	rename -uid "5616CD6A-4E2D-4E01-9559-E493B3177874";
	setAttr ".t" -type "double3" -0.68883248555367738 0.40021554568354567 -1.5176178996076852 ;
	setAttr ".rp" -type "double3" 1.9371452116502863 7.279998225225218 -2.1816494945638314 ;
	setAttr ".sp" -type "double3" 1.9371452116502863 7.279998225225218 -2.1816494945638314 ;
createNode transform -n "transform7" -p "handle3";
	rename -uid "036FAB72-4102-FED8-F53A-1AA29507A8F6";
	setAttr ".v" no;
createNode mesh -n "handle3Shape" -p "transform7";
	rename -uid "14E89A81-4280-4056-39A7-27815DE9F2D1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.90521240234375 0.68150991201400757 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".pt";
	setAttr ".pt[0]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[1]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[2]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[3]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[4]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[5]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[6]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[7]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[8]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[9]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[10]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[11]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[12]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[13]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[14]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[15]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[17]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[18]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[19]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[20]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[21]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[22]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[23]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[24]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[25]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[26]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[27]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[28]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[29]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[30]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[31]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[32]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[33]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[34]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[35]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[36]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[37]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[38]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[39]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[40]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[41]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[42]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[43]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[44]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[45]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[46]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[47]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[48]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[50]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[51]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[52]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[53]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[54]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[55]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[56]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[57]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[58]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[59]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[60]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[61]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[62]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[63]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[64]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[65]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[66]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[67]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[68]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[69]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[70]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[71]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[72]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".pt[73]" -type "float3" -8.2701445e-07 0 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "handleHolder1";
	rename -uid "CF285D8F-45BF-3960-808B-00B57D4141A8";
	setAttr ".t" -type "double3" 0.50628506481415614 6.2766142767792479 -4.9028620454930882 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.4398964730017243 0.063114881352153235 0.4398964730017243 ;
createNode transform -n "transform3" -p "handleHolder1";
	rename -uid "43129DBD-48D9-CBC1-6FE8-2388B7B7E704";
	setAttr ".v" no;
createNode mesh -n "handleHolder1Shape" -p "transform3";
	rename -uid "E7264D71-4E80-466C-8B4F-938C8ED52877";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:7]" "f[16:31]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:15]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.99381495 0.0034383868
		 0.98551393 -5.9189815e-16 0.97721291 0.0034383868 0.97377455 0.011739386 0.97721291
		 0.020040385 0.98551393 0.023478772 0.99381495 0.020040385 0.9972533 0.011739386 0.7974878
		 0.059662204 0.79907596 0.059662204 0.80066407 0.059662204 0.80225223 0.059662204
		 0.8038404 0.059662204 0.80542856 0.059662204 0.80701673 0.059662204 0.8086049 0.059662204
		 0.81019306 0.059662204 0.7974878 0.078720167 0.79907596 0.078720167 0.80066407 0.078720167
		 0.80225223 0.078720167 0.8038404 0.078720167 0.80542856 0.078720167 0.80701673 0.078720167
		 0.8086049 0.078720167 0.81019306 0.078720167 0.99381495 0.029513352 0.98551393 0.026074965
		 0.97721291 0.029513352 0.97377455 0.037814353 0.97721291 0.04611535 0.98551393 0.049553737
		 0.99381495 0.04611535 0.9972533 0.037814353 0.98551393 0.011739386 0.98551393 0.037814353
		 0.81019306 0.076334201 0.7974878 0.076334201 0.8086049 0.076334201 0.80701673 0.076334201
		 0.80542856 0.076334201 0.8038404 0.076334201 0.80225223 0.076334201 0.80066407 0.076334201
		 0.79907596 0.076334201 0.81019306 0.061607257 0.7974878 0.061607257 0.8086049 0.061607257
		 0.80701673 0.061607257 0.80542856 0.061607257 0.8038404 0.061607257 0.80225223 0.061607257
		 0.80066407 0.061607257 0.79907596 0.061607257;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0 0.70710671 0.74960995 -0.70710671 1 0.74960995 0 0.70710677 0.74960995 0.70710677
		 0 0.74960995 0.99999994 -0.70710671 0.74960995 0.70710671 -0.99999988 0.74960995 0
		 -0.70710671 0.74960995 -0.70710671 0 0.74960995 -0.99999988 0.70710671 -0.79587996 -0.70710671
		 1 -0.79587996 0 0.70710677 -0.79587996 0.70710677 0 -0.79587996 0.99999988 -0.70710671 -0.79587996 0.70710671
		 -0.99999982 -0.79587996 0 -0.70710671 -0.79587996 -0.70710671 0 -0.79587996 -0.99999982;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 26 0 1 33 0 2 32 0
		 3 31 0 4 30 0 5 29 0 6 28 0 7 27 0 16 1 1 16 3 1 16 5 1 16 7 1 9 17 1 11 17 1 13 17 1
		 15 17 1 18 8 0 19 15 0 20 14 0 21 13 0 22 12 0 23 11 0 24 10 0 25 9 0 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 18 1 26 18 0 27 19 0 28 20 0 29 21 0 30 22 0
		 31 23 0 32 24 0 33 25 0 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1 31 32 1 32 33 1 33 26 1;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 0 17 63 -17
		mu 0 4 8 9 53 46
		f 4 1 18 62 -18
		mu 0 4 9 10 52 53
		f 4 2 19 61 -19
		mu 0 4 10 11 51 52
		f 4 3 20 60 -20
		mu 0 4 11 12 50 51
		f 4 4 21 59 -21
		mu 0 4 12 13 49 50
		f 4 5 22 58 -22
		mu 0 4 13 14 48 49
		f 4 6 23 57 -23
		mu 0 4 14 15 47 48
		f 4 7 16 56 -24
		mu 0 4 15 16 45 47
		f 4 -2 -25 25 -3
		mu 0 4 2 1 34 3
		f 4 -4 -26 26 -5
		mu 0 4 4 3 34 5
		f 4 -6 -27 27 -7
		mu 0 4 6 5 34 7
		f 4 -8 -28 24 -1
		mu 0 4 0 7 34 1
		f 4 -29 9 10 29
		mu 0 4 35 31 30 29
		f 4 -30 11 12 30
		mu 0 4 35 29 28 27
		f 4 -31 13 14 31
		mu 0 4 35 27 26 33
		f 4 -32 15 8 28
		mu 0 4 35 33 32 31
		f 4 -41 32 -16 -34
		mu 0 4 38 36 25 24
		f 4 -42 33 -15 -35
		mu 0 4 39 38 24 23
		f 4 -43 34 -14 -36
		mu 0 4 40 39 23 22
		f 4 -44 35 -13 -37
		mu 0 4 41 40 22 21
		f 4 -45 36 -12 -38
		mu 0 4 42 41 21 20
		f 4 -46 37 -11 -39
		mu 0 4 43 42 20 19
		f 4 -47 38 -10 -40
		mu 0 4 44 43 19 18
		f 4 -48 39 -9 -33
		mu 0 4 37 44 18 17
		f 4 -57 48 40 -50
		mu 0 4 47 45 36 38
		f 4 -58 49 41 -51
		mu 0 4 48 47 38 39
		f 4 -59 50 42 -52
		mu 0 4 49 48 39 40
		f 4 -60 51 43 -53
		mu 0 4 50 49 40 41
		f 4 -61 52 44 -54
		mu 0 4 51 50 41 42
		f 4 -62 53 45 -55
		mu 0 4 52 51 42 43
		f 4 -63 54 46 -56
		mu 0 4 53 52 43 44
		f 4 -64 55 47 -49
		mu 0 4 46 53 44 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCube1";
	rename -uid "12596D3F-40D2-1A49-6957-729A9829ABCE";
	setAttr ".t" -type "double3" 0.62485849436905849 6.2765688064852982 -4.8815834144021393 ;
	setAttr ".s" -type "double3" 0.080712748042669119 0.7185814029798353 0.12318614695745396 ;
createNode transform -n "transform6" -p "pCube1";
	rename -uid "F2C99E08-4C31-118C-0C7B-36AB5CBCA55E";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform6";
	rename -uid "D3B1950E-41BF-3E6B-3911-E1A7799B1AB7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 -0.7868721944361059 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "handle4";
	rename -uid "F376D9D8-48B6-EFDA-6626-A8A848D67978";
	setAttr ".rp" -type "double3" 1.1821758805161833 9.2497519027426378 0 ;
	setAttr ".sp" -type "double3" 1.1821758805161833 9.2497519027426378 0 ;
createNode mesh -n "handle4Shape" -p "handle4";
	rename -uid "C657A907-4A87-27F5-3C9C-869CC042A39B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dsm" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "389E54BD-4566-0DD1-097F-B9AE433D6211";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "15E42754-4F52-CC56-CFD4-599385E9E641";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "38CA0ECF-4E5F-C444-9CD6-F1962C71CCE6";
createNode displayLayerManager -n "layerManager";
	rename -uid "B8E0057C-4202-F448-1224-2DAFDD5573B1";
createNode displayLayer -n "defaultLayer";
	rename -uid "2E11C486-4B35-64C0-E0CD-C59ECCDA3103";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CE805758-4B00-4AD8-ACC9-55A9C3217DF3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "59B629B8-433A-D5E7-162A-F8BB59673CAD";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9B622B79-4033-8034-FCF1-6FA0A987DDDC";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C5279BBD-4772-005D-B47B-7A9271DBE30E";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D4547C3F-4389-4C95-E1AD-DB8C3CFFB4D0";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "2618581A-4A54-CF24-522F-259DC54B694E";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "8ACB9746-4F04-33AA-FFE8-8DBF62A59098";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "19B4F563-41BF-C3A8-638B-BDBE25B59F86";
	setAttr -s 5 ".e[0:4]"  0.0261252 0.97387499 0.97387499 0.0261252
		 0.0261252;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "5188E793-4F20-4F19-05E8-9DA8E6A13AC5";
	setAttr -s 7 ".e[0:6]"  0.97631902 0.0236811 0.0236811 0.0236811
		 0.97631902 0.97631902 0.97631902;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483632 -2147483640 -2147483639 -2147483630 -2147483643 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "20940E1F-4241-9D60-53A9-BFBDA7CC34A7";
	setAttr -s 7 ".e[0:6]"  0.0209697 0.97903001 0.97903001 0.97903001
		 0.0209697 0.0209697 0.0209697;
	setAttr -s 7 ".d[0:6]"  -2147483638 -2147483621 -2147483636 -2147483633 -2147483619 -2147483637 
		-2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "66BA28CA-4C70-30BF-49CA-E4B0108E6FCD";
	setAttr -s 9 ".e[0:8]"  0.0220838 0.977916 0.0220838 0.977916 0.977916
		 0.977916 0.0220838 0.0220838 0.0220838;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483627 -2147483610 -2147483626 -2147483625 -2147483606 
		-2147483630 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "3E8866E8-4551-AB74-5F5E-6381CA76FB77";
	setAttr -s 13 ".e[0:12]"  0.84377301 0.15622699 0.15622699 0.84377301
		 0.15622699 0.84377301 0.84377301 0.84377301 0.84377301 0.84377301 0.15622699 0.84377301
		 0.84377301;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483589 -2147483617 -2147483647 -2147483629 -2147483608 
		-2147483646 -2147483620 -2147483593 -2147483645 -2147483605 -2147483631 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "3F5C3CE5-41D9-74DB-79F6-CBA70A466EBE";
	setAttr -s 13 ".e[0:12]"  0.244947 0.75505298 0.75505298 0.244947 0.75505298
		 0.244947 0.244947 0.244947 0.244947 0.244947 0.75505298 0.244947 0.244947;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483587 -2147483586 -2147483647 -2147483584 -2147483608 
		-2147483646 -2147483620 -2147483593 -2147483645 -2147483578 -2147483631 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "AC9AF2B2-4B61-89C0-5F6B-309551C818F0";
	setAttr -s 13 ".e[0:12]"  0.66366303 0.66366303 0.66366303 0.336337
		 0.336337 0.336337 0.336337 0.336337 0.336337 0.66366303 0.66366303 0.66366303 0.66366303;
	setAttr -s 13 ".d[0:12]"  -2147483636 -2147483621 -2147483595 -2147483616 -2147483542 -2147483566 
		-2147483611 -2147483591 -2147483612 -2147483633 -2147483572 -2147483548 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "7365EEC4-4F12-FEBF-7C03-5FA4DA2BD718";
	setAttr -s 13 ".e[0:12]"  0.30547801 0.69452202 0.69452202 0.69452202
		 0.69452202 0.69452202 0.69452202 0.30547801 0.30547801 0.30547801 0.30547801 0.30547801
		 0.30547801;
	setAttr -s 13 ".d[0:12]"  -2147483616 -2147483538 -2147483539 -2147483540 -2147483529 -2147483530 
		-2147483531 -2147483612 -2147483591 -2147483611 -2147483566 -2147483542 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "69EFC0BA-44F9-D337-45C6-B3A9FFE9E145";
	setAttr -s 17 ".e[0:16]"  0.152541 0.84745902 0.84745902 0.84745902
		 0.84745902 0.84745902 0.84745902 0.152541 0.152541 0.152541 0.152541 0.152541 0.152541
		 0.84745902 0.84745902 0.152541 0.152541;
	setAttr -s 17 ".d[0:16]"  -2147483627 -2147483604 -2147483551 -2147483575 -2147483597 -2147483598 
		-2147483521 -2147483497 -2147483606 -2147483625 -2147483569 -2147483545 -2147483626 -2147483602 -2147483503 -2147483527 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "28561A35-4AAB-8B8D-1AC5-4A83680A4E8A";
	setAttr -s 17 ".e[0:16]"  0.524988 0.475012 0.475012 0.524988 0.524988
		 0.475012 0.475012 0.475012 0.475012 0.475012 0.475012 0.524988 0.524988 0.524988
		 0.524988 0.524988 0.524988;
	setAttr -s 17 ".d[0:16]"  -2147483604 -2147483492 -2147483477 -2147483503 -2147483602 -2147483480 
		-2147483481 -2147483482 -2147483483 -2147483484 -2147483485 -2147483521 -2147483598 -2147483597 -2147483575 -2147483551 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "C506EEAD-41D7-7841-98BC-29A07403C0CB";
	setAttr ".ics" -type "componentList" 1 "f[104]";
	setAttr ".ix" -type "matrix" 0.92251544084890791 0 0 0 0 18.457511987782944 0 0 0 0 12.214530082258813 0
		 0 9.2497541030495292 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.46125773 11.806282 -3.3010602 ;
	setAttr ".rs" 41094;
	setAttr ".ls" -type "double3" 0.88333332798970299 0.88333332798970299 0.88333332798970299 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.46125772042445395 8.2592933821292611 -4.6612728081676185 ;
	setAttr ".cbx" -type "double3" 0.46125772042445395 15.353270099639504 -1.9408476065444398 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "AC06C861-4B43-20DE-BA49-6E9B3B812D13";
	setAttr ".ics" -type "componentList" 1 "f[104]";
	setAttr ".ix" -type "matrix" 0.92251544084890791 0 0 0 0 18.457511987782944 0 0 0 0 12.214530082258813 0
		 0 9.2497541030495292 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.46125773 11.806281 -3.3010604 ;
	setAttr ".rs" 62408;
	setAttr ".lt" -type "double3" 0 -8.2514979815690291e-17 -0.67378594279706139 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.46125772042445395 8.6731075744533417 -4.5025816990607854 ;
	setAttr ".cbx" -type "double3" 0.46125772042445395 14.93945508220034 -2.0995390796726365 ;
createNode polySplit -n "polySplit11";
	rename -uid "F72875B5-4F74-1972-75D2-DD935318C095";
	setAttr -s 5 ".e[0:4]"  0.89922702 0.89922702 0.89922702 0.89922702
		 0.89922702;
	setAttr -s 5 ".d[0:4]"  -2147483420 -2147483419 -2147483415 -2147483417 -2147483420;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "D3A258FF-4358-6F01-4259-66B0D8F59866";
	setAttr -s 5 ".e[0:4]"  0.10466 0.10466 0.10466 0.10466 0.10466;
	setAttr -s 5 ".d[0:4]"  -2147483420 -2147483419 -2147483415 -2147483417 -2147483420;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "DFE6A214-43E7-23EA-3217-DE993885B3B1";
	setAttr -s 5 ".e[0:4]"  0.58753997 0.58753997 0.58753997 0.58753997
		 0.58753997;
	setAttr -s 5 ".d[0:4]"  -2147483404 -2147483403 -2147483402 -2147483401 -2147483404;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "D216D14A-479F-1827-EA27-0D9AB4D3711B";
	setAttr -s 27 ".e[0:26]"  0.057513099 0.057513099 0.942487 0.057513099
		 0.057513099 0.942487 0.942487 0.942487 0.942487 0.942487 0.942487 0.942487 0.942487
		 0.942487 0.942487 0.942487 0.057513099 0.057513099 0.057513099 0.057513099 0.057513099
		 0.057513099 0.942487 0.057513099 0.057513099 0.057513099 0.057513099;
	setAttr -s 27 ".d[0:26]"  -2147483540 -2147483539 -2147483462 -2147483442 -2147483538 -2147483516 
		-2147483505 -2147483506 -2147483507 -2147483508 -2147483434 -2147483422 -2147483398 -2147483390 -2147483406 -2147483414 -2147483418 -2147483408 
		-2147483392 -2147483400 -2147483426 -2147483470 -2147483509 -2147483531 -2147483530 -2147483529 -2147483540;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "F106FF92-40C8-5F6D-18AD-B598B19462FA";
	setAttr -s 27 ".e[0:26]"  0.076404199 0.92359602 0.92359602 0.076404199
		 0.92359602 0.92359602 0.92359602 0.92359602 0.92359602 0.076404199 0.92359602 0.92359602
		 0.92359602 0.92359602 0.92359602 0.92359602 0.076404199 0.076404199 0.076404199 0.076404199
		 0.076404199 0.076404199 0.076404199 0.076404199 0.076404199 0.076404199 0.076404199;
	setAttr -s 27 ".d[0:26]"  -2147483516 -2147483384 -2147483385 -2147483462 -2147483387 -2147483388 
		-2147483363 -2147483364 -2147483365 -2147483509 -2147483367 -2147483368 -2147483369 -2147483370 -2147483371 -2147483372 -2147483414 -2147483406 
		-2147483390 -2147483398 -2147483422 -2147483434 -2147483508 -2147483507 -2147483506 -2147483505 -2147483516;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "2089AAAB-49F0-10E9-359C-A4A5E8AF5021";
	setAttr -s 31 ".e[0:30]"  0.93865198 0.061347701 0.061347701 0.061347701
		 0.061347701 0.061347701 0.061347701 0.061347701 0.061347701 0.061347701 0.061347701
		 0.061347701 0.061347701 0.93865198 0.93865198 0.93865198 0.93865198 0.93865198 0.93865198
		 0.93865198 0.93865198 0.93865198 0.93865198 0.93865198 0.93865198 0.061347701 0.061347701
		 0.061347701 0.93865198 0.93865198 0.93865198;
	setAttr -s 31 ".d[0:30]"  -2147483492 -2147483460 -2147483445 -2147483446 -2147483447 -2147483448 
		-2147483449 -2147483424 -2147483397 -2147483389 -2147483405 -2147483416 -2147483347 -2147483295 -2147483413 -2147483407 -2147483391 -2147483399 
		-2147483421 -2147483485 -2147483484 -2147483483 -2147483482 -2147483481 -2147483480 -2147483456 -2147483457 -2147483308 -2147483360 -2147483477 
		-2147483492;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "F15E32A3-461D-D567-7CDD-2997912C875C";
	setAttr -s 11 ".e[0:10]"  0.71656197 0.283438 0.71656197 0.71656197
		 0.283438 0.71656197 0.283438 0.71656197 0.71656197 0.71656197 0.71656197;
	setAttr -s 11 ".d[0:10]"  -2147483428 -2147483342 -2147483300 -2147483427 -2147483236 -2147483423 
		-2147483290 -2147483352 -2147483425 -2147483248 -2147483428;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "17229368-4A03-F7EC-D2D2-9AA17FF33972";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483492 -2147483283 -2147483282 -2147483281 -2147483280 -2147483279 
		-2147483278 -2147483205 -2147483277 -2147483276 -2147483275 -2147483274 -2147483273 -2147483272 -2147483295 -2147483413 -2147483407 -2147483391 
		-2147483399 -2147483421 -2147483211 -2147483485 -2147483484 -2147483483 -2147483482 -2147483481 -2147483480 -2147483259 -2147483258 -2147483257 
		-2147483360 -2147483477 -2147483492;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "639D151A-47BD-8F9E-34BC-AFB0055F41FB";
	setAttr -s 21 ".e[0:20]"  0.62487602 0.37512401 0.37512401 0.37512401
		 0.62487602 0.62487602 0.62487602 0.37512401 0.37512401 0.37512401 0.37512401 0.37512401
		 0.37512401 0.37512401 0.62487602 0.62487602 0.62487602 0.62487602 0.62487602 0.62487602
		 0.62487602;
	setAttr -s 21 ".d[0:20]"  -2147483604 -2147483459 -2147483458 -2147483359 -2147483309 -2147483503 
		-2147483602 -2147483455 -2147483454 -2147483453 -2147483452 -2147483451 -2147483450 -2147483289 -2147483353 -2147483521 -2147483598 -2147483597 
		-2147483575 -2147483551 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "E602A95A-4E21-C2BD-FD24-5EAC889EA937";
	setAttr -s 21 ".e[0:20]"  0.89943397 0.100566 0.100566 0.100566 0.89943397
		 0.89943397 0.89943397 0.100566 0.100566 0.100566 0.100566 0.100566 0.100566 0.100566
		 0.89943397 0.89943397 0.89943397 0.89943397 0.89943397 0.89943397 0.89943397;
	setAttr -s 21 ".d[0:20]"  -2147483604 -2147483139 -2147483138 -2147483137 -2147483309 -2147483503 
		-2147483602 -2147483133 -2147483132 -2147483131 -2147483130 -2147483129 -2147483128 -2147483127 -2147483353 -2147483521 -2147483598 -2147483597 
		-2147483575 -2147483551 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "636EA10E-4FC4-7047-37BF-3280398934E0";
	setAttr ".ics" -type "componentList" 1 "f[284:290]";
	setAttr ".ix" -type "matrix" 0.92251544084890791 0 0 0 0 18.457511987782944 0 0 0 0 12.214530082258813 0
		 0 9.2497541030495292 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.46125773 5.071846 0 ;
	setAttr ".rs" 36184;
	setAttr ".lt" -type "double3" 0 3.5488490507719376e-17 0.28978551638258349 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.46125772042445395 4.8254969234756819 -6.1072650411294065 ;
	setAttr ".cbx" -type "double3" 0.46125772042445395 5.3181948682235269 6.1072650411294065 ;
createNode polySplit -n "polySplit21";
	rename -uid "02478C83-460E-AD4C-740D-E89CC95C4BC7";
	setAttr -s 23 ".e[0:22]"  0.85730702 0.142693 0.142693 0.142693 0.142693
		 0.142693 0.142693 0.142693 0.142693 0.85730702 0.85730702 0.85730702 0.85730702 0.85730702
		 0.85730702 0.85730702 0.85730702 0.142693 0.142693 0.142693 0.85730702 0.85730702
		 0.85730702;
	setAttr -s 23 ".d[0:22]"  -2147483139 -2147483103 -2147483087 -2147483088 -2147483089 -2147483029 
		-2147483034 -2147483039 -2147483044 -2147483050 -2147483055 -2147483062 -2147483059 -2147483130 -2147483131 -2147483132 -2147483133 -2147483097 
		-2147483098 -2147483099 -2147483137 -2147483138 -2147483139;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "E0185A03-4F41-9A64-C8DC-CB89F0FD1BE7";
	setAttr -s 23 ".e[0:22]"  0.212385 0.787615 0.787615 0.787615 0.787615
		 0.787615 0.787615 0.787615 0.787615 0.212385 0.212385 0.212385 0.212385 0.212385
		 0.212385 0.212385 0.212385 0.787615 0.787615 0.787615 0.212385 0.212385 0.212385;
	setAttr -s 23 ".d[0:22]"  -2147483139 -2147483027 -2147483026 -2147483025 -2147483024 -2147483023 
		-2147483022 -2147483021 -2147483020 -2147483050 -2147483055 -2147483062 -2147483059 -2147483130 -2147483131 -2147483132 -2147483133 -2147483011 
		-2147483010 -2147483009 -2147483137 -2147483138 -2147483139;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "6CE33C67-4B58-5200-482D-1A91994AD4B6";
	setAttr -s 21 ".e[0:20]"  0.71094298 0.28905699 0.28905699 0.71094298
		 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298
		 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298 0.71094298
		 0.71094298;
	setAttr -s 21 ".d[0:20]"  -2147483066 -2147482950 -2147482994 -2147483061 -2147483063 -2147483056 
		-2147483051 -2147483048 -2147483043 -2147483038 -2147483033 -2147483002 -2147482958 -2147483031 -2147483036 -2147483041 -2147483046 -2147483053 
		-2147483058 -2147483065 -2147483066;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "3B6DC5D3-45EB-2E79-B143-E39751E2CC84";
	setAttr -s 21 ".e[0:20]"  0.28427699 0.71572298 0.71572298 0.28427699
		 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699
		 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699 0.28427699
		 0.28427699;
	setAttr -s 21 ".d[0:20]"  -2147483066 -2147482939 -2147482938 -2147483061 -2147483063 -2147483056 
		-2147483051 -2147483048 -2147483043 -2147483038 -2147483033 -2147483002 -2147482958 -2147483031 -2147483036 -2147483041 -2147483046 -2147483053 
		-2147483058 -2147483065 -2147483066;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "393E4577-43DF-1419-C8A9-89AB829FD179";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "F12E2ECA-4A61-13C1-8BE0-FFA09F78484D";
	setAttr ".ics" -type "componentList" 8 "e[24]" "e[26]" "e[28]" "e[30]" "e[32]" "e[34]" "e[36]" "e[38]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit25";
	rename -uid "4559DA10-4F3D-0284-C008-7D996B94B705";
	setAttr -s 9 ".e[0:8]"  0.87480497 0.87480497 0.87480497 0.87480497
		 0.87480497 0.87480497 0.87480497 0.87480497 0.87480497;
	setAttr -s 9 ".d[0:8]"  -2147483632 -2147483625 -2147483626 -2147483627 -2147483628 -2147483629 
		-2147483630 -2147483631 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "7C64F0BF-414A-3CDC-953F-0C9D26F259C4";
	setAttr -s 9 ".e[0:8]"  0.116666 0.116666 0.116666 0.116666 0.116666
		 0.116666 0.116666 0.116666 0.116666;
	setAttr -s 9 ".d[0:8]"  -2147483632 -2147483625 -2147483626 -2147483627 -2147483628 -2147483629 
		-2147483630 -2147483631 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8A361B31-45BB-8F69-B469-788F5CBC36FD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1932\n            -height 1078\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1932\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1932\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C33AA29D-417F-A8A4-462A-D2B4A15D4974";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "8C47DFC0-4DB7-4D68-9E66-7EA18DC7846D";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit27";
	rename -uid "F2196F84-4079-5217-6DA7-1898B1DB2D99";
	setAttr -s 9 ".e[0:8]"  0.96805298 0.96805298 0.96805298 0.96805298
		 0.96805298 0.96805298 0.96805298 0.96805298 0.96805298;
	setAttr -s 9 ".d[0:8]"  -2147483632 -2147483625 -2147483626 -2147483627 -2147483628 -2147483629 
		-2147483630 -2147483631 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "C2EB1963-4143-934C-4CFA-EC842234D3A0";
	setAttr -s 9 ".e[0:8]"  0.036029398 0.036029398 0.036029398 0.036029398
		 0.036029398 0.036029398 0.036029398 0.036029398 0.036029398;
	setAttr -s 9 ".d[0:8]"  -2147483632 -2147483625 -2147483626 -2147483627 -2147483628 -2147483629 
		-2147483630 -2147483631 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "polyUnite1";
	rename -uid "997CB064-4508-C7D9-46D4-1DA09B3A7744";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "10EED762-475E-3644-0088-9BAB7A661FA4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "C4D1765D-4BF4-26DA-526C-EB87E18D5E60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "F334795D-4F24-A279-2540-C79A65743B4A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "C637A7B0-4401-A30B-8696-62BA44E896E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId4";
	rename -uid "EA0C7C70-4F11-07E1-21BD-998B51E262FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "985347E8-4864-11F4-6D82-BFBB1633E9F3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "CBA65367-415C-C747-E323-39AB41E6E106";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "42CF80E5-4754-EB5E-C21A-8BA86C9B5955";
	setAttr ".dc" -type "componentList" 2 "f[8:15]" "f[56:63]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "86BB48F5-4B1F-3ECD-5858-D9A334C4B31D";
	setAttr ".ics" -type "componentList" 2 "e[0:7]" "e[72:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 1;
	setAttr ".sv2" 42;
	setAttr ".d" 1;
createNode polySplit -n "polySplit29";
	rename -uid "020CC1A9-4934-65E8-5C58-DFBDC3766709";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483520 -2147483513 -2147483514 -2147483515 -2147483516 -2147483517 
		-2147483518 -2147483519 -2147483520;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube2";
	rename -uid "524F6003-4AF1-E7D7-663C-95BAA304B5A5";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit30";
	rename -uid "770F590B-48E3-7C1A-2D57-CD851A8EDCB6";
	setAttr -s 5 ".e[0:4]"  0.168089 0.83191103 0.83191103 0.168089 0.168089;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "AAB7D1D6-47C8-BD3F-E89C-23865F75D5D1";
	setAttr -s 5 ".e[0:4]"  0.231415 0.76858503 0.76858503 0.231415 0.231415;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483636 -2147483633 -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "032EBD33-4DC1-2CEA-C63C-F3ADEE16F0D5";
	setAttr -s 9 ".e[0:8]"  0.034799401 0.96520102 0.034799401 0.96520102
		 0.96520102 0.96520102 0.034799401 0.034799401 0.034799401;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483632 -2147483624 -2147483640 -2147483639 -2147483622 
		-2147483630 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit33";
	rename -uid "A525C403-4EA3-C6AE-4539-858FF59F32BE";
	setAttr -s 9 ".e[0:8]"  0.065895297 0.93410498 0.065895297 0.93410498
		 0.93410498 0.93410498 0.065895297 0.065895297 0.065895297;
	setAttr -s 9 ".d[0:8]"  -2147483640 -2147483618 -2147483632 -2147483620 -2147483613 -2147483614 
		-2147483622 -2147483639 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "FABC9DC5-4639-F858-DBF8-EFB31740993E";
	setAttr -s 13 ".e[0:12]"  0.81763703 0.182363 0.81763703 0.81763703
		 0.182363 0.81763703 0.81763703 0.182363 0.81763703 0.81763703 0.182363 0.81763703
		 0.81763703;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483605 -2147483593 -2147483647 -2147483629 -2147483623 
		-2147483646 -2147483589 -2147483609 -2147483645 -2147483621 -2147483631 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit35";
	rename -uid "2350A31E-48DD-EA59-639D-018665B64A7C";
	setAttr -s 13 ".e[0:12]"  0.12689801 0.87310201 0.12689801 0.12689801
		 0.87310201 0.12689801 0.12689801 0.87310201 0.12689801 0.12689801 0.87310201 0.12689801
		 0.12689801;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483587 -2147483593 -2147483647 -2147483584 -2147483623 
		-2147483646 -2147483581 -2147483609 -2147483645 -2147483578 -2147483631 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "28670D49-43EC-A469-6296-F0AD4D8F58BE";
	setAttr ".uopa" yes;
	setAttr -s 448 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.12500338 1.3561053e-05 -0.12500677
		 1.3561053e-05 -0.12500338 1.0164455e-05 -0.12500677 1.0164455e-05 -0.12500338 6.7669898e-06
		 -0.12500677 6.7669898e-06 -0.12500338 3.4291297e-06 -0.12500677 3.4291297e-06 -0.12500338
		 3.1664968e-08 -0.12500677 3.1664968e-08 -0.12501025 1.3561053e-05 -0.12501025 1.0164455e-05
		 -0.125 1.3561053e-05 -0.125 1.0164455e-05 -0.12500329 1.0164455e-05 -0.12500338 1.010485e-05
		 -0.12500329 1.3561053e-05 -0.12500338 9.1269612e-08 -0.12500677 9.1269612e-08 -0.12500685
		 1.3561053e-05 -0.12500677 1.010485e-05 -0.12500685 1.0164455e-05 -0.12500338 1.0253862e-05
		 -0.12500329 1.0253862e-05 -0.125 1.0253862e-05 -0.12500338 6.7073852e-06 -0.12500677
		 6.7073852e-06 -0.12501025 1.0253862e-05 -0.12500685 1.0253862e-05 -0.12500677 1.0253862e-05
		 -0.12500007 1.3561053e-05 -0.12500338 3.3695251e-06 -0.12500007 1.0253862e-05 -0.12500007
		 1.0164455e-05 -0.12500338 6.8563968e-06 -0.12500677 6.8563968e-06 -0.12501007 1.0164455e-05
		 -0.12501007 1.0253862e-05 -0.12500677 3.3695251e-06 -0.12501007 1.3561053e-05 -0.12500338
		 1.3488345e-05 -0.12500329 1.3488345e-05 -0.12500007 1.3488345e-05 -0.125 1.3488345e-05
		 -0.12500338 3.4887344e-06 -0.12500677 3.4887344e-06 -0.12501025 1.3488345e-05 -0.12501007
		 1.3488345e-05 -0.12500685 1.3488345e-05 -0.12500677 1.3488345e-05 -0.12500623 1.3561053e-05
		 -0.12500623 3.1664968e-08 -0.12500623 1.3488345e-05 -0.12500623 1.0253862e-05 -0.12500623
		 1.0164455e-05 -0.12500623 1.010485e-05 -0.12500623 6.8563968e-06 -0.12500623 6.7669898e-06
		 -0.12500623 6.7073852e-06 -0.12500623 3.4887344e-06 -0.12500623 3.4291297e-06 -0.12500623
		 3.3695251e-06 -0.12500623 9.1269612e-08 -0.12500408 1.3561053e-05 -0.12500408 3.1664968e-08
		 -0.12500408 1.3488345e-05 -0.12500408 1.0253862e-05 -0.12500408 1.0164455e-05 -0.12500408
		 1.010485e-05 -0.12500408 6.8563968e-06 -0.12500408 6.7669898e-06 -0.12500408 6.7073852e-06
		 -0.12500408 3.4887344e-06 -0.12500408 3.4291297e-06 -0.12500408 3.3695251e-06 -0.12500408
		 9.1269612e-08 -0.12500116 1.0164455e-05 -0.12500338 7.9590827e-06 -0.12500116 1.0253862e-05
		 -0.12500116 1.3490207e-05 -0.12500116 1.3561053e-05 -0.12500338 2.2370368e-06 -0.12500408
		 2.2370368e-06 -0.12500623 2.2370368e-06 -0.12500677 2.2370368e-06 -0.12500912 1.3561053e-05
		 -0.12500912 1.3488345e-05 -0.12500912 1.0253862e-05 -0.12500677 7.9590827e-06 -0.125009
		 1.0164455e-05 -0.12500623 7.9590827e-06 -0.12500408 7.9590827e-06 -0.1250004 1.3561053e-05
		 -0.12500338 3.0118972e-06 -0.1250004 1.3490207e-05 -0.1250004 1.0253862e-05 -0.1250004
		 1.0164455e-05 -0.12500338 7.1842223e-06 -0.12500408 7.1842223e-06 -0.12500623 7.1842223e-06
		 -0.12500677 7.1842223e-06 -0.12500989 1.0164455e-05 -0.12500966 1.0253862e-05 -0.12500966
		 1.3488345e-05 -0.12500677 3.0118972e-06 -0.12500966 1.3561053e-05 -0.12500623 3.0118972e-06
		 -0.12500408 3.0118972e-06 -0.12500329 1.07456e-05 -0.12500338 1.07456e-05 -0.12500408
		 1.07456e-05 -0.12500623 1.07456e-05 -0.12500677 1.07456e-05 -0.12500685 1.07456e-05
		 -0.12500912 1.07456e-05 -0.12500966 1.07456e-05 -0.12500995 1.07456e-05 -0.12500677
		 6.230548e-06 -0.12501025 1.07456e-05 -0.12500623 6.230548e-06 -0.12500408 6.230548e-06
		 -0.125 1.07456e-05 -0.12500338 6.230548e-06 -0.12500007 1.07456e-05 -0.1250004 1.07456e-05
		 -0.12500116 1.07456e-05 -0.12500338 1.2056902e-05 -0.12500329 1.2049451e-05 -0.12500116
		 1.2056902e-05 -0.1250004 1.2056902e-05 -0.12500007 1.2056902e-05 -0.125 1.2049451e-05
		 -0.12500338 4.9192458e-06 -0.12500408 4.9192458e-06 -0.12500623 4.9192458e-06 -0.12500677
		 4.9192458e-06 -0.12501025 1.2049451e-05 -0.12500995 1.2049451e-05 -0.12500966 1.2056902e-05
		 -0.12500912 1.2049451e-05 -0.12500685 1.2056902e-05 -0.12500677 1.2056902e-05 -0.12500623
		 1.2056902e-05 -0.12500408 1.2056902e-05 -0.12500966 1.07456e-05 -0.12500912 1.07456e-05
		 -0.12500912 1.2049451e-05 -0.12500966 1.2056902e-05 -0.12500966 1.07456e-05 -0.12500912
		 1.07456e-05 -0.12500912 1.2049451e-05 -0.12500966 1.2056902e-05 -0.12500912 1.07456e-05
		 -0.12500966 1.07456e-05 -0.12500966 1.2056902e-05 -0.12500912 1.2049451e-05 -0.12500912
		 1.07456e-05 -0.12500966 1.07456e-05 -0.12500966 1.2056902e-05 -0.12500912 1.2049451e-05
		 -0.12500912 1.07456e-05 -0.12500966 1.07456e-05 -0.12500966 1.2049451e-05 -0.12500912
		 1.2049451e-05 -0.1250011 1.0164455e-05 -0.12500338 7.8994781e-06 -0.1250011 1.0253862e-05
		 -0.1250011 1.07456e-05 -0.1250011 1.2049451e-05 -0.1250011 1.3488345e-05 -0.1250011
		 1.3561053e-05 -0.12500338 2.2966415e-06 -0.12500408 2.2966415e-06 -0.12500623 2.2966415e-06
		 -0.12500677 2.2966415e-06 -0.12500906 1.3561053e-05 -0.12500906 1.3486482e-05 -0.12500906
		 1.2049451e-05 -0.12500906 1.2049451e-05 -0.12500906 1.2049451e-05 -0.12500906 1.2049451e-05
		 -0.12500906 1.2049451e-05 -0.12500906 1.2049451e-05 -0.12500906 1.07456e-05 -0.12500906
		 1.07456e-05 -0.12500906 1.07456e-05 -0.12500906 1.07456e-05 -0.12500906 1.07456e-05
		 -0.12500906 1.07456e-05 -0.12500906 1.0253862e-05 -0.12500677 7.8994781e-06 -0.12500894
		 1.0164455e-05 -0.12500623 7.8994781e-06 -0.12500408 7.8994781e-06 -0.12500045 1.3561053e-05
		 -0.12500338 2.9522926e-06 -0.12500045 1.3488345e-05 -0.12500045 1.2056902e-05 -0.12500045
		 1.07456e-05 -0.12500045 1.0253862e-05 -0.12500045 1.0164455e-05 -0.12500338 7.243827e-06
		 -0.12500408 7.243827e-06 -0.12500623 7.243827e-06 -0.12500677 7.243827e-06 -0.12500983
		 1.0164455e-05 -0.12500983 1.0253862e-05 -0.12500983 1.07456e-05 -0.12500983 1.07456e-05
		 -0.12500983 1.07456e-05 -0.12500983 1.07456e-05 -0.12500983 1.07456e-05 -0.12500983
		 1.07456e-05 -0.12500983 1.2049451e-05 -0.12500983 1.2049451e-05 -0.12500983 1.2056902e-05
		 -0.12500983 1.2049451e-05 -0.12500983 1.2049451e-05 -0.12500983 1.2049451e-05 -0.12500983
		 1.3488345e-05 -0.12500677 2.9522926e-06 -0.12500983 1.3561053e-05 -0.12500623 2.9522926e-06
		 -0.12500408 2.9522926e-06 -0.12500329 1.1974946e-05 -0.12500338 1.1974946e-05 -0.12500408
		 1.1974946e-05 -0.12500623 1.1974946e-05 -0.12500677 1.1974946e-05 -0.12500685 1.1974946e-05
		 -0.12500912 1.1982396e-05 -0.12500912 1.1982396e-05 -0.12500912 1.1982396e-05 -0.12500912
		 1.1982396e-05 -0.12500912 1.1982396e-05 -0.12500912 1.1982396e-05 -0.12500906 1.1974946e-05
		 -0.12500983 1.1974946e-05 -0.12500966 1.1974946e-05 -0.12500966 1.1974946e-05 -0.12500966
		 1.1982396e-05 -0.12500966 1.1974946e-05 -0.12500966 1.1974946e-05 -0.12500966 1.1974946e-05
		 -0.12500995 1.1974946e-05 -0.12500677 4.9788505e-06 -0.12501025 1.1974946e-05 -0.12500623
		 4.9788505e-06 -0.12500408 4.9788505e-06 -0.125 1.1974946e-05;
	setAttr ".uvtk[250:447]" -0.12500338 4.9788505e-06 -0.12500007 1.1974946e-05
		 -0.1250004 1.1974946e-05 -0.12500045 1.1974946e-05 -0.1250011 1.1974946e-05 -0.12500116
		 1.1974946e-05 -0.12500912 1.07456e-05 -0.12500906 1.07456e-05 -0.12500983 1.07456e-05
		 -0.12500966 1.07456e-05 -0.12500966 1.1974946e-05 -0.12500966 1.2049451e-05 -0.12500983
		 1.2049451e-05 -0.12500906 1.2049451e-05 -0.12500912 1.2049451e-05 -0.12500912 1.1974946e-05
		 -0.12500329 1.1356547e-05 -0.12500338 1.1356547e-05 -0.12500408 1.1356547e-05 -0.12500623
		 1.1356547e-05 -0.12500677 1.1356547e-05 -0.12500685 1.1356547e-05 -0.12500912 1.1356547e-05
		 -0.12500912 1.1356547e-05 -0.12500912 1.1356547e-05 -0.12500912 1.1356547e-05 -0.12500912
		 1.1356547e-05 -0.12500912 1.1356547e-05 -0.12500912 1.1356547e-05 -0.12500906 1.1356547e-05
		 -0.12500983 1.1356547e-05 -0.12500966 1.1356547e-05 -0.12500966 1.1356547e-05 -0.12500966
		 1.1356547e-05 -0.12500966 1.1356547e-05 -0.12500966 1.1356547e-05 -0.12500966 1.1356547e-05
		 -0.12500966 1.1356547e-05 -0.12500995 1.1356547e-05 -0.12500677 5.6345016e-06 -0.12501025
		 1.1356547e-05 -0.12500623 5.6345016e-06 -0.12500408 5.6345016e-06 -0.125 1.1356547e-05
		 -0.12500338 5.6345016e-06 -0.12500007 1.1356547e-05 -0.1250004 1.1356547e-05 -0.12500045
		 1.1356547e-05 -0.1250011 1.1356547e-05 -0.12500116 1.1356547e-05 -0.12500338 1.2593344e-05
		 -0.12500329 1.2593344e-05 -0.12500116 1.2593344e-05 -0.1250011 1.2593344e-05 -0.12500045
		 1.2593344e-05 -0.1250004 1.2593344e-05 -0.12500007 1.2593344e-05 -0.125 1.2593344e-05
		 -0.12500338 4.382804e-06 -0.12500408 4.382804e-06 -0.12500623 4.382804e-06 -0.12500677
		 4.382804e-06 -0.12501025 1.2593344e-05 -0.12500995 1.2593344e-05 -0.12500966 1.2593344e-05
		 -0.12500972 1.2593344e-05 -0.12500906 1.2593344e-05 -0.12500912 1.2593344e-05 -0.12500685
		 1.2593344e-05 -0.12500677 1.2593344e-05 -0.12500623 1.2593344e-05 -0.12500408 1.2593344e-05
		 -0.12500338 1.2682751e-05 -0.12500329 1.2682751e-05 -0.12500116 1.2682751e-05 -0.1250011
		 1.2682751e-05 -0.12500045 1.2682751e-05 -0.1250004 1.2682751e-05 -0.12500007 1.2682751e-05
		 -0.125 1.2682751e-05 -0.12500338 4.3231994e-06 -0.12500408 4.3231994e-06 -0.12500623
		 4.3231994e-06 -0.12500677 4.3231994e-06 -0.12501013 1.2682751e-05 -0.12501007 1.2682751e-05
		 -0.12500966 1.2682751e-05 -0.12500983 1.2682751e-05 -0.12500906 1.2682751e-05 -0.12500912
		 1.2682751e-05 -0.12500685 1.2682751e-05 -0.12500677 1.2682751e-05 -0.12500623 1.2682751e-05
		 -0.12500408 1.2682751e-05 -0.12501025 1.2593344e-05 -0.12500995 1.2593344e-05 -0.12501007
		 1.2682751e-05 -0.12501013 1.2682751e-05 -0.12500966 1.2593344e-05 -0.12500966 1.2682751e-05
		 -0.12500972 1.2593344e-05 -0.12500983 1.2682751e-05 -0.12500906 1.2682751e-05 -0.12500906
		 1.2593344e-05 -0.12500912 1.2682751e-05 -0.12500912 1.2593344e-05 -0.12500685 1.2682751e-05
		 -0.12500685 1.2593344e-05 -0.12500677 1.2682751e-05 -0.12500677 1.2593344e-05 -0.12500329
		 1.266785e-05 -0.12500338 1.266785e-05 -0.12500408 1.266785e-05 -0.12500623 1.266785e-05
		 -0.12500677 1.266785e-05 -0.12500677 1.266785e-05 -0.12500685 1.266785e-05 -0.12500912
		 1.266785e-05 -0.12500906 1.266785e-05 -0.12500983 1.266785e-05 -0.12500966 1.266785e-05
		 -0.12501007 1.266785e-05 -0.12501013 1.266785e-05 -0.12500677 4.3231994e-06 -0.12501013
		 1.266785e-05 -0.12500623 4.3231994e-06 -0.12500408 4.3231994e-06 -0.125 1.266785e-05
		 -0.12500338 4.3231994e-06 -0.12500007 1.266785e-05 -0.1250004 1.266785e-05 -0.12500045
		 1.266785e-05 -0.1250011 1.266785e-05 -0.12500116 1.266785e-05 -0.12500329 1.2608245e-05
		 -0.12500338 1.2608245e-05 -0.12500408 1.2608245e-05 -0.12500623 1.2608245e-05 -0.12500677
		 1.2608245e-05 -0.12500677 1.2608245e-05 -0.12500685 1.2608245e-05 -0.12500912 1.2608245e-05
		 -0.12500906 1.2608245e-05 -0.12500983 1.2608245e-05 -0.12500966 1.2608245e-05 -0.12500995
		 1.2608245e-05 -0.12501025 1.2608245e-05 -0.12500677 4.382804e-06 -0.12501025 1.2608245e-05
		 -0.12500623 4.382804e-06 -0.12500408 4.382804e-06 -0.125 1.2608245e-05 -0.12500338
		 4.382804e-06 -0.12500007 1.2608245e-05 -0.1250004 1.2608245e-05 -0.12500045 1.2608245e-05
		 -0.1250011 1.2608245e-05 -0.12500116 1.2608245e-05 -0.12501025 1.2593344e-05 -0.12501013
		 1.2608245e-05 -0.12501013 1.266785e-05 -0.12501013 1.2682751e-05 -0.12500995 1.2682751e-05
		 -0.12500966 1.2682751e-05 -0.12500983 1.2682751e-05 -0.12500906 1.2682751e-05 -0.12500912
		 1.2682751e-05 -0.12500685 1.2682751e-05 -0.12500677 1.2682751e-05 -0.12500677 1.266785e-05
		 -0.12500677 1.2608245e-05 -0.12500677 1.2593344e-05 -0.12500685 1.2593344e-05 -0.12500912
		 1.2593344e-05 -0.12500906 1.2593344e-05 -0.12500972 1.2593344e-05 -0.12500966 1.2593344e-05
		 -0.12500995 1.2593344e-05 -0.12501025 1.2593344e-05 -0.12501025 1.2608245e-05 -0.12501025
		 1.266785e-05 -0.12501013 1.2682751e-05 -0.12500995 1.2682751e-05 -0.12500966 1.2682751e-05
		 -0.12500983 1.2682751e-05 -0.12500906 1.2682751e-05 -0.12500912 1.2682751e-05 -0.12500685
		 1.2682751e-05 -0.12500677 1.2682751e-05 -0.12500677 1.266785e-05 -0.12500677 1.2608245e-05
		 -0.12500677 1.2593344e-05 -0.12500685 1.2593344e-05 -0.12500912 1.2593344e-05 -0.12500906
		 1.2593344e-05 -0.12500983 1.2593344e-05 -0.12500966 1.2593344e-05 -0.12500995 1.2593344e-05;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "A419233A-4C83-48E2-7696-BCBE646FC8BB";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.56709331 0.045960624 0.32318777
		 0.045960624 0.56709331 -0.19794489 0.32318777 -0.19794489 0.56709331 -0.44185042
		 0.32318777 -0.44185042 0.56709331 -0.68575591 0.32318777 -0.68575591 0.56709331 -0.92966145
		 0.32318777 -0.92966145 0.079282224 0.045960624 0.079282224 -0.19794489 0.8109988
		 0.045960624 0.8109988 -0.19794489 0.60809118 -0.19794489 0.56709337 -0.23894271 0.60809112
		 0.045960624 0.56709331 -0.88866365 0.32318777 -0.88866365 0.28218997 0.045960624
		 0.32318777 -0.23894271 0.28218997 -0.19794489 0.76404297 0.045960624 0.56709331 -0.73271179
		 0.76404297 -0.19794489 0.56709331 -0.39489451 0.32318777 -0.39489451 0.12623817 -0.19794489
		 0.32318777 -0.73271179 0.12623817 0.045960624 0.56709331 0.037472818 0.60809112 0.037472934
		 0.76404297 0.037472818 0.8109988 0.037472934 0.56709331 -0.67726827 0.32318777 -0.67726827
		 0.079282224 0.037472934 0.12623817 0.037472934 0.28218997 0.037472818 0.32318777
		 0.037472818 0.8109988 -0.18243191 0.56709331 -0.45736334 0.76404297 -0.18243203 0.60809118
		 -0.18243191 0.56709331 -0.18243203 0.32318777 -0.18243203 0.28218997 -0.18243203
		 0.12623823 -0.18243191 0.32318777 -0.45736334 0.079282284 -0.18243191 0.36766708
		 0.045960624 0.36766708 -0.92966145 0.36766714 0.037472818 0.36766708 -0.18243203
		 0.36766708 -0.19794489 0.36766714 -0.23894271 0.36766708 -0.39489454 0.36766708 -0.44185042
		 0.36766714 -0.45736334 0.36766708 -0.67726827 0.36766708 -0.68575591 0.36766714 -0.73271179
		 0.36766708 -0.88866365 0.54178655 0.045960624 0.54178655 -0.92966145 0.54178655 0.037472818
		 0.54178655 -0.18243203 0.54178655 -0.19794489 0.54178649 -0.23894271 0.54178655 -0.39489454
		 0.54178655 -0.44185042 0.54178655 -0.45736334 0.54178655 -0.67726827 0.54178655 -0.68575591
		 0.54178655 -0.73271179 0.54178655 -0.88866365;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "DB427E9B-49EB-3F34-6AE2-339BAB88680C";
	setAttr ".uopa" yes;
	setAttr -s 81 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[1]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[2]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[3]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[4]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[5]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[6]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[7]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[8]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[9]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[10]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[12]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[13]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[14]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[15]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[16]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[17]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[28]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[29]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[30]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[31]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[32]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[33]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[34]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[35]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[36]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[37]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[38]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[39]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[40]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[41]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[42]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[43]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[44]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[45]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[46]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[47]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[48]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[49]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[50]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[51]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[52]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[53]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[54]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[55]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[56]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[57]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[58]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[59]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[60]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[61]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[62]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[72]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[73]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[74]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[75]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[76]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[77]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[78]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[79]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[80]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[81]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[82]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[83]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[84]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[85]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[86]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[87]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[88]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[89]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[90]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[91]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[92]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[93]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[94]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[95]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[96]" -type "float2" 0.45208737 0 ;
	setAttr ".uvtk[97]" -type "float2" 0.45208743 0 ;
	setAttr ".uvtk[98]" -type "float2" 0.45208737 0 ;
createNode polyFlipUV -n "polyFlipUV1";
	rename -uid "30E0A142-4801-36B9-7CC5-04ACC294C701";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:7]" "f[16:39]" "f[48:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.95208742889999998;
	setAttr ".pv" 0.5;
createNode polyTweak -n "polyTweak1";
	rename -uid "FD981F9F-4F93-C476-04B0-B49755B9EA07";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[8]" -type "float3" 4.4703484e-08 -5.9604645e-08 0.2415626 ;
	setAttr ".tk[9]" -type "float3" 7.4505806e-08 0 0.2415626 ;
	setAttr ".tk[10]" -type "float3" 4.4703484e-08 5.9604645e-08 0.2415626 ;
	setAttr ".tk[11]" -type "float3" 0 1.1920929e-07 0.2415626 ;
	setAttr ".tk[12]" -type "float3" -4.4703484e-08 5.9604645e-08 0.2415626 ;
	setAttr ".tk[13]" -type "float3" -7.4505806e-08 0 0.2415626 ;
	setAttr ".tk[14]" -type "float3" -4.4703484e-08 -5.9604645e-08 0.2415626 ;
	setAttr ".tk[15]" -type "float3" 0 -1.1920929e-07 0.2415626 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.24156272 ;
	setAttr ".tk[33]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[49]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.89065474 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.10533903 0 -0.16448721 ;
	setAttr ".tk[67]" -type "float3" 0.10533903 0 -0.16448721 ;
	setAttr ".tk[73]" -type "float3" 0.10533903 0 -0.16448721 ;
createNode polyFlipUV -n "polyFlipUV2";
	rename -uid "1392D435-4E8B-EED3-E589-D0A1039BFA8D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:7]" "f[16:39]" "f[48:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.95208742889999998;
	setAttr ".pv" 0.5;
createNode polyFlipUV -n "polyFlipUV3";
	rename -uid "37F5E6CD-42A5-74FE-2DAC-979CB191AC8E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:7]" "f[16:39]" "f[48:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.95208742889999998;
	setAttr ".pv" 0.5;
createNode polyFlipUV -n "polyFlipUV4";
	rename -uid "BBF02D33-4EEE-B8B2-5B57-C9B921A90128";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:7]" "f[16:39]" "f[48:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.95208742889999998;
	setAttr ".pv" 0.5;
createNode polyFlipUV -n "polyFlipUV5";
	rename -uid "72B44F8F-43D8-671B-8B2B-F3BBCEF03170";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:7]" "f[16:39]" "f[48:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.95208742889999998;
	setAttr ".pv" 0.5;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "B33DA084-45CD-B40D-AAE8-2FB04782E302";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[0:7]" "f[16:17]" "f[19:39]" "f[48:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1.6936392486095428 7.6802139282226562 -3.5784859657287598 ;
	setAttr ".ic" -type "double2" 1.0743499533898795 0.5 ;
	setAttr ".ps" -type "double2" 180 0.60687065124511719 ;
	setAttr ".r" 3.2374544143676758;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "A98C7A1D-467D-ABD5-533B-D9A7F7481680";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.2223533390000001;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV7";
	rename -uid "ACAB3CFA-4E93-7AC7-ADA7-C19FA697018C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.1945005660000001;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV8";
	rename -uid "38051749-4BD0-1E9D-3916-CFAEC979DFFF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.5540135500000001;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV9";
	rename -uid "9F034B8B-4B39-4A44-E539-96A12D25EA56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.552103639;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV10";
	rename -uid "139BD5B4-4782-DF6D-48E7-89A59B1EAA3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.8726470470000001;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV11";
	rename -uid "9AEF6B27-4F7A-1410-9B15-7B8B8C273899";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 2.156824946;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV12";
	rename -uid "72AB716F-4694-9743-DB04-90A9A1F95822";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[60]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 2.1536178590000001;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV13";
	rename -uid "E0DF1ED6-4FCC-0DD9-5EC9-3B97B9A4AC5F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.30871421100000002;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV14";
	rename -uid "731DE75E-4541-A518-8F6F-5ABCB35B124B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.32941550019999999;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV15";
	rename -uid "9527E69D-4F1B-B737-61CF-06806438D2CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[58]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 2.156824946;
	setAttr ".pv" 0.32322345670000002;
createNode polyFlipUV -n "polyFlipUV16";
	rename -uid "6515B846-4419-3308-DF3E-C6B62E7405D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.32941550019999999;
	setAttr ".pv" 0.32322345670000002;
createNode polyFlipUV -n "polyFlipUV17";
	rename -uid "CFEE5A2F-4422-9198-DB90-54990B7CDB89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.976264238;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV18";
	rename -uid "D97544AD-461C-4948-6FF3-719BE7FDE7E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.9870666269999999;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV19";
	rename -uid "826D153C-4F20-4F44-9330-66A1F5A2C062";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.976264238;
	setAttr ".pv" 0.32322345670000002;
createNode polyFlipUV -n "polyFlipUV20";
	rename -uid "CE3ED99C-4B60-0349-0A50-65B17FACA7CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.9547123909999999;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV21";
	rename -uid "61C4D50F-42DA-A267-419A-BAA054EF0C2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[69]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.8963267800000001;
	setAttr ".pv" 0.92677652840000002;
createNode polyFlipUV -n "polyFlipUV22";
	rename -uid "2179C17B-47F5-D8EF-DCFD-1C8F61C66F33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.906153679;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV23";
	rename -uid "B1D27E1E-4FE4-C04E-9119-6AB7E3795462";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[68]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.921759784;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV24";
	rename -uid "54CF6586-41F5-B953-7B76-69B8E26B7BBC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.952991784;
	setAttr ".pv" 0.67677652840000002;
createNode polyFlipUV -n "polyFlipUV25";
	rename -uid "1416FE08-4E58-C11C-A4C8-EF970FFAA241";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.906153679;
	setAttr ".pv" 0.32322345670000002;
createNode polyFlipUV -n "polyFlipUV26";
	rename -uid "B3878B97-4454-3E77-FE9F-FB9E172F323E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[67]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.921759784;
	setAttr ".pv" 0.32322345670000002;
createNode polyFlipUV -n "polyFlipUV27";
	rename -uid "BEEB9673-4482-7F01-9491-D5883BA33B17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.952991784;
	setAttr ".pv" 0.32322345670000002;
createNode polyFlipUV -n "polyFlipUV28";
	rename -uid "B88FB9EF-44D4-7886-5172-9DBAFC856137";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.5540135500000001;
	setAttr ".pv" 0.32322345670000002;
createNode polyFlipUV -n "polyFlipUV29";
	rename -uid "26CDC42C-4CA4-DA69-B03D-DD8E30873B90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.552103639;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV30";
	rename -uid "EA7AD847-416D-312E-456B-2692EFA4CE54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.8726470470000001;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV31";
	rename -uid "96BB4120-48A4-7F51-F090-BF87189B67A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.8963267800000001;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV32";
	rename -uid "A1AE4056-4A34-295E-B4DF-63AC3202B7D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.9547123909999999;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV33";
	rename -uid "E3D1588C-4088-3CE3-BEC4-06B6737AE587";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 2.1536178590000001;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV34";
	rename -uid "7BC3731F-48AB-65BD-DBA2-7FBF1C0D40DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.9870666269999999;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV35";
	rename -uid "DF3ABFC6-4706-3266-FB5D-E8A356D4E170";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.30871421100000002;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV36";
	rename -uid "E2269E1A-416F-2464-0C1F-0B96E9541609";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.2223533390000001;
	setAttr ".pv" 0.073223456739999998;
createNode polyFlipUV -n "polyFlipUV37";
	rename -uid "DE477F41-4B43-3956-53CF-389FDD73F5FE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68883248555367738 0.40021554568354567 -1.5176178996076852 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.9052124023;
	setAttr ".pv" 0.681509912;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "EAB8947E-40CA-103A-F497-C7ACDF15DB63";
	setAttr ".uopa" yes;
	setAttr -s 196 ".uvtk[0:195]" -type "float2" -1.031117916 -0.13808218
		 -1.018875599 -0.47147378 -1.0061731339 -0.47147378 -1.01830411 -0.13808218 -1.031117916
		 -0.80486536 -1.01830411 -0.80486536 -1.065461159 -0.9429611 -1.052788973 -0.9429611
		 -1.062228084 -0.77411073 -0.35852146 -0.798163 -1.067818165 -0.41977632 -0.373851
		 -0.44401231 -0.97058332 -0.066934884 -0.31111735 -0.090459242 -0.062718511 -0.610681
		 -0.082253635 -0.610681 -0.98277324 0.07951206 -0.30493981 0.054678421 0.15885293
		 -0.67123133 0.26361239 -0.62783855 0.3683719 -0.67123133 0.41176474 -0.77599084 0.3683719
		 -0.88075036 0.26361239 -0.9241432 0.15885293 -0.88075036 0.1154601 -0.77599084 0.26361239
		 -0.77599084 -0.85637516 0.054678421 -0.53034812 -0.13808218 -0.49927187 -0.13808218
		 -0.082253635 -0.60319191 -0.062718511 -0.60319191 -0.3013013 0.072327904 -0.95960647
		 -0.090459242 -0.33246595 -0.05737333 -0.99053055 -0.798163 -1.06109333 -0.44401231
		 -0.39308083 -0.42767209 -0.31987399 -0.78122514 -0.49770451 -0.9429611 -0.4694525
		 -0.9429611 -0.53034812 -0.80486536 -0.49927187 -0.80486536 -0.54242074 -0.47147378
		 -0.51062697 -0.47147378 0.63083988 -0.063973308 0.63876939 -0.39303258 0.64929074
		 -0.39303258 0.6415723 -0.063973308 0.63083988 -0.72209179 0.6415723 -0.72209179 0.60903245
		 -0.85839307 0.51837772 -0.91473603 0.55506474 -0.78122514 0.62043339 -0.75401568
		 0.64454877 -0.42048794 0.43579602 -0.40149534 0.43467021 -0.067967519 0.64047933
		 -0.060548984 0.62584525 0.072961874 0.62019044 0.072327904 0.28459895 0.059661441
		 0.17983943 0.016268633 0.28459895 -0.088490859 0.38935846 0.016268633 0.43275124
		 -0.088490859 0.38935846 -0.19325036 0.28459895 -0.23664318 0.17983943 -0.19325036
		 0.1364466 -0.088490859 -1.19862223 -0.13808218 -1.18745768 1.3561053e-05 -1.18258166
		 -0.059025586 -1.14622366 -0.40414071 -1.058398247 -0.7588135 -1.14233327 -0.9125787
		 -1.19862223 -0.80486536 -1.20242727 -0.47147378 -1.11596942 -0.13808218 -1.11302447
		 -0.47147378 -1.12770975 1.3561053e-05 -1.21517611 -0.059025586 -1.16551828 -0.40414071
		 -1.091687202 -0.7588135 -1.20182562 -0.9125787 -1.11596942 -0.80486536 -1.425138
		 0.06727238 -1.16041493 0.06727238 -1.326195 -0.079886161 -1.014267325 -0.079886161
		 -1.42941165 -0.43272763 -1.097990036 -0.43272763 -1.34085274 -0.78699231 -1.037814021
		 -0.78699231 -1.20385742 -0.9429611 -1.47242498 -0.9429611 -1.21294987 -0.80486536
		 -1.45076156 -0.80486536 -1.21603513 -0.47147378 -1.44294167 -0.47147378 -1.21294987
		 -0.13808218 -1.45076156 -0.13808218 -0.29773927 -0.78122514 -0.26217473 -0.9109264
		 -0.28870934 -0.9109264 -0.37876511 -0.75317585 -0.37255633 -0.42767209 -0.35575533
		 -0.75317585 -0.28990489 -0.43029541 -0.3950634 -0.78384846 -1.043552518 -0.78384846
		 -0.97714728 -0.43029541 -1.13185585 -0.75487977 -0.40147781 -0.93535095 -0.95291317
		 -0.93535095 -0.97756994 -0.81402844 -1.019496918 -0.9479292 -0.9663437 -0.81402844
		 -1.0072097778 -0.9479292 -1.0014519691 -0.41814455 -1.11080527 -0.77098596 -1.42273283
		 -0.77098596 -0.99064684 -0.41552126 -1.063876867 -0.92311126 -1.32859993 -0.92311126
		 -1.113796 -0.77332938 0.54394132 -0.78122514 0.62019044 -0.85839307 0.63194352 -0.75401568
		 0.52930725 -0.91473603 0.63306934 -0.42048794 0.44727546 -0.40149534 -1.13435197
		 -0.068846539 -1.33287358 -0.41814455 -1.15604401 -0.065103434 0.42316014 -0.067967519
		 0.65160275 -0.060548984 -1.1627363 -0.40404868 -0.98395461 -0.75446647 -1.0033710003
		 -0.75446647 -1.011445403 -0.41552126 -1.10150695 -0.90985197 -1.11771977 -0.90985197
		 -1.1326766 -0.77332938 -1.12219048 -0.056298904 -1.18353486 -0.40404868 -1.17546046
		 -0.065103434 -1.12770975 -0.9429611 -1.18999219 -0.77507365 -1.15739775 -0.77507365
		 -1.18745768 -0.9429611 -1.042068243 -0.91260207 -1.030149937 -0.77411073 -1.10449505
		 -0.91260207 -1.12028372 -0.75487977 -1.11105609 -0.42165643 -1.10034263 -0.42165643
		 -1.088107824 -0.75882238 -1.055578709 -0.75882238 -1.049660921 -0.41977632 -1.11713183
		 -0.40279213 -1.085769534 -0.41977632 -1.066474915 -0.41977632 -1.14864504 -0.069568783
		 -1.12784541 -0.40279213 -1.13707304 -0.069568783 -0.95029372 -0.40598094 -0.93213648
		 -0.40598094 -0.93805426 -0.066934884 -0.9663437 -0.13388723 -1.17143595 -0.065103464
		 -1.13814712 -0.065103464 -0.26198351 -0.082509503 -0.31033117 -0.05737333 -1.052788973
		 1.3561053e-05 -0.97756994 -0.13388723 -0.89399254 -0.082509503 -0.27476662 0.072327904
		 -1.019496918 1.3561053e-05 -1.0072097778 1.3561053e-05 -0.94050628 -0.058979228 -0.90842813
		 -0.058979228 -0.92034638 0.07951206 -1.065461159 1.3561053e-05 -1.22700953 0.078479394
		 -1.16751707 0.078479394 -1.14107132 -0.056298904 -1.47242498 1.3561053e-05 -1.43739069
		 -0.068846539 -1.10990143 0.080223687 -1.20385742 1.3561053e-05 -1.12611437 0.080223687
		 0.61491567 0.072961874 0.60903245 0.072327904 -0.49770451 1.3561053e-05 -0.4694525
		 1.3561053e-05;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "D2695C7B-439E-B25A-562E-138BDA1F451F";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk[0:53]" -type "float2" 0.25774324 -0.037945956 0.34935832
		 2.2526594e-06 0.4409734 -0.037945956 0.47892159 -0.12956104 0.4409734 -0.22117612
		 0.34935832 -0.25912434 0.25774324 -0.22117612 0.21979499 -0.12956104 0.5651961 -0.31248644
		 0.53755641 -0.31248644 0.50991672 -0.31248644 0.48227704 -0.31248644 0.45463735 -0.31248644
		 0.42699766 -0.31248644 0.39935797 -0.31248644 0.37171829 -0.31248644 0.3440786 -0.31248644
		 0.5651961 -0.64416271 0.53755641 -0.64416271 0.50991672 -0.64416271 0.48227704 -0.64416271
		 0.45463735 -0.64416271 0.42699766 -0.64416271 0.39935797 -0.64416271 0.37171829 -0.64416271
		 0.3440786 -0.64416271 0.31650549 -0.72544593 0.40812057 -0.68749774 0.49973565 -0.72544593
		 0.53768384 -0.81706101 0.49973565 -0.90867609 0.40812057 -0.94662434 0.31650549 -0.90867609
		 0.27855724 -0.81706101 0.34935832 -0.12956104 0.40812057 -0.81706101 0.3440786 -0.60263842
		 0.5651961 -0.60263842 0.37171829 -0.60263842 0.39935797 -0.60263842 0.42699766 -0.60263842
		 0.45463735 -0.60263842 0.48227704 -0.60263842 0.50991672 -0.60263842 0.53755641 -0.60263842
		 0.3440786 -0.34633729 0.5651961 -0.34633729 0.37171829 -0.34633729 0.39935797 -0.34633729
		 0.42699766 -0.34633729 0.45463735 -0.34633729 0.48227704 -0.34633729 0.50991678 -0.34633729
		 0.53755641 -0.34633729;
createNode polyUnite -n "polyUnite2";
	rename -uid "881D98CC-446E-F004-2643-258B3DED3B87";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "groupId6";
	rename -uid "3BF15AB1-4230-BF56-E464-A98FBE8EA5CF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "7B6A4C3D-4B0D-44B0-DE0C-1BB4A3BA06A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:53]";
createNode groupId -n "groupId7";
	rename -uid "2F22654D-4A5F-F678-A727-0992DC24C2A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "44434811-41B1-1063-7AAD-4D83F05317A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "1CA58F1B-48D4-1328-1336-B385F090E861";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:393]";
createNode groupId -n "groupId9";
	rename -uid "C673652D-4466-13A1-D6A0-58A6434C0B85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "D144DA41-4DAB-7CEF-FC12-2A92E7E9FF50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "176D5A5D-44E4-C2BB-BE42-34830B035D23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId11";
	rename -uid "DF90D0CE-4F1B-306F-8DBF-6DB00B992960";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "C65B57D6-40C8-CB1E-CCAE-11A468E23258";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "42BA3AF6-491D-DE8F-3861-BC8F7C9837FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "AC4CBFB1-4C64-75C7-31F8-3AB01BF45EF2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "B6B0DAF6-4738-53D3-9EC6-038E585A8262";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:591]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 14 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId8.id" "doorShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "doorShape.iog.og[0].gco";
connectAttr "groupParts4.og" "doorShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "doorShape.uvst[0].uvtw";
connectAttr "groupId9.id" "doorShape.ciog.cog[0].cgid";
connectAttr "groupId10.id" "handleHolderShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "handleHolderShape.iog.og[0].gco";
connectAttr "groupParts5.og" "handleHolderShape.i";
connectAttr "polyTweakUV5.uvtk[0]" "handleHolderShape.uvst[0].uvtw";
connectAttr "groupId11.id" "handleHolderShape.ciog.cog[0].cgid";
connectAttr "groupId3.id" "handleShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "handleShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "handleShape1.i";
connectAttr "groupId4.id" "handleShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "handleShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "handleShape2.iog.og[0].gco";
connectAttr "groupId2.id" "handleShape2.ciog.cog[0].cgid";
connectAttr "polyTweakUV4.out" "handle3Shape.i";
connectAttr "groupId5.id" "handle3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "handle3Shape.iog.og[0].gco";
connectAttr "polyTweakUV4.uvtk[0]" "handle3Shape.uvst[0].uvtw";
connectAttr "groupId12.id" "handleHolder1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "handleHolder1Shape.iog.og[0].gco";
connectAttr "groupId13.id" "handleHolder1Shape.ciog.cog[0].cgid";
connectAttr "groupId6.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts3.og" "pCubeShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "groupId7.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupParts6.og" "handle4Shape.i";
connectAttr "groupId14.id" "handle4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "handle4Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyExtrudeFace1.ip";
connectAttr "doorShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "doorShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polyExtrudeFace3.ip";
connectAttr "doorShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polyCylinder1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polyCylinder2.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "handleShape2.o" "polyUnite1.ip[0]";
connectAttr "handleShape1.o" "polyUnite1.ip[1]";
connectAttr "handleShape2.wm" "polyUnite1.im[0]";
connectAttr "handleShape1.wm" "polyUnite1.im[1]";
connectAttr "polySplit28.out" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "polyUnite1.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "groupParts2.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "handle3Shape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polySplit29.ip";
connectAttr "polyCube2.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polySplit35.ip";
connectAttr "polySplit24.out" "polyTweakUV1.ip";
connectAttr "polySplit35.out" "polyTweakUV2.ip";
connectAttr "polySplit29.out" "polyTweakUV3.ip";
connectAttr "polyTweak1.out" "polyFlipUV1.ip";
connectAttr "handle3Shape.wm" "polyFlipUV1.mp";
connectAttr "polyTweakUV3.out" "polyTweak1.ip";
connectAttr "polyFlipUV1.out" "polyFlipUV2.ip";
connectAttr "handle3Shape.wm" "polyFlipUV2.mp";
connectAttr "polyFlipUV2.out" "polyFlipUV3.ip";
connectAttr "handle3Shape.wm" "polyFlipUV3.mp";
connectAttr "polyFlipUV3.out" "polyFlipUV4.ip";
connectAttr "handle3Shape.wm" "polyFlipUV4.mp";
connectAttr "polyFlipUV4.out" "polyFlipUV5.ip";
connectAttr "handle3Shape.wm" "polyFlipUV5.mp";
connectAttr "polyFlipUV5.out" "polyCylProj1.ip";
connectAttr "handle3Shape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyFlipUV6.ip";
connectAttr "handle3Shape.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyFlipUV7.ip";
connectAttr "handle3Shape.wm" "polyFlipUV7.mp";
connectAttr "polyFlipUV7.out" "polyFlipUV8.ip";
connectAttr "handle3Shape.wm" "polyFlipUV8.mp";
connectAttr "polyFlipUV8.out" "polyFlipUV9.ip";
connectAttr "handle3Shape.wm" "polyFlipUV9.mp";
connectAttr "polyFlipUV9.out" "polyFlipUV10.ip";
connectAttr "handle3Shape.wm" "polyFlipUV10.mp";
connectAttr "polyFlipUV10.out" "polyFlipUV11.ip";
connectAttr "handle3Shape.wm" "polyFlipUV11.mp";
connectAttr "polyFlipUV11.out" "polyFlipUV12.ip";
connectAttr "handle3Shape.wm" "polyFlipUV12.mp";
connectAttr "polyFlipUV12.out" "polyFlipUV13.ip";
connectAttr "handle3Shape.wm" "polyFlipUV13.mp";
connectAttr "polyFlipUV13.out" "polyFlipUV14.ip";
connectAttr "handle3Shape.wm" "polyFlipUV14.mp";
connectAttr "polyFlipUV14.out" "polyFlipUV15.ip";
connectAttr "handle3Shape.wm" "polyFlipUV15.mp";
connectAttr "polyFlipUV15.out" "polyFlipUV16.ip";
connectAttr "handle3Shape.wm" "polyFlipUV16.mp";
connectAttr "polyFlipUV16.out" "polyFlipUV17.ip";
connectAttr "handle3Shape.wm" "polyFlipUV17.mp";
connectAttr "polyFlipUV17.out" "polyFlipUV18.ip";
connectAttr "handle3Shape.wm" "polyFlipUV18.mp";
connectAttr "polyFlipUV18.out" "polyFlipUV19.ip";
connectAttr "handle3Shape.wm" "polyFlipUV19.mp";
connectAttr "polyFlipUV19.out" "polyFlipUV20.ip";
connectAttr "handle3Shape.wm" "polyFlipUV20.mp";
connectAttr "polyFlipUV20.out" "polyFlipUV21.ip";
connectAttr "handle3Shape.wm" "polyFlipUV21.mp";
connectAttr "polyFlipUV21.out" "polyFlipUV22.ip";
connectAttr "handle3Shape.wm" "polyFlipUV22.mp";
connectAttr "polyFlipUV22.out" "polyFlipUV23.ip";
connectAttr "handle3Shape.wm" "polyFlipUV23.mp";
connectAttr "polyFlipUV23.out" "polyFlipUV24.ip";
connectAttr "handle3Shape.wm" "polyFlipUV24.mp";
connectAttr "polyFlipUV24.out" "polyFlipUV25.ip";
connectAttr "handle3Shape.wm" "polyFlipUV25.mp";
connectAttr "polyFlipUV25.out" "polyFlipUV26.ip";
connectAttr "handle3Shape.wm" "polyFlipUV26.mp";
connectAttr "polyFlipUV26.out" "polyFlipUV27.ip";
connectAttr "handle3Shape.wm" "polyFlipUV27.mp";
connectAttr "polyFlipUV27.out" "polyFlipUV28.ip";
connectAttr "handle3Shape.wm" "polyFlipUV28.mp";
connectAttr "polyFlipUV28.out" "polyFlipUV29.ip";
connectAttr "handle3Shape.wm" "polyFlipUV29.mp";
connectAttr "polyFlipUV29.out" "polyFlipUV30.ip";
connectAttr "handle3Shape.wm" "polyFlipUV30.mp";
connectAttr "polyFlipUV30.out" "polyFlipUV31.ip";
connectAttr "handle3Shape.wm" "polyFlipUV31.mp";
connectAttr "polyFlipUV31.out" "polyFlipUV32.ip";
connectAttr "handle3Shape.wm" "polyFlipUV32.mp";
connectAttr "polyFlipUV32.out" "polyFlipUV33.ip";
connectAttr "handle3Shape.wm" "polyFlipUV33.mp";
connectAttr "polyFlipUV33.out" "polyFlipUV34.ip";
connectAttr "handle3Shape.wm" "polyFlipUV34.mp";
connectAttr "polyFlipUV34.out" "polyFlipUV35.ip";
connectAttr "handle3Shape.wm" "polyFlipUV35.mp";
connectAttr "polyFlipUV35.out" "polyFlipUV36.ip";
connectAttr "handle3Shape.wm" "polyFlipUV36.mp";
connectAttr "polyFlipUV36.out" "polyFlipUV37.ip";
connectAttr "handle3Shape.wm" "polyFlipUV37.mp";
connectAttr "polyFlipUV37.out" "polyTweakUV4.ip";
connectAttr "polySplit26.out" "polyTweakUV5.ip";
connectAttr "handle3Shape.o" "polyUnite2.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite2.ip[1]";
connectAttr "doorShape.o" "polyUnite2.ip[2]";
connectAttr "handleHolderShape.o" "polyUnite2.ip[3]";
connectAttr "handleHolder1Shape.o" "polyUnite2.ip[4]";
connectAttr "handle3Shape.wm" "polyUnite2.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite2.im[1]";
connectAttr "doorShape.wm" "polyUnite2.im[2]";
connectAttr "handleHolderShape.wm" "polyUnite2.im[3]";
connectAttr "handleHolder1Shape.wm" "polyUnite2.im[4]";
connectAttr "polyTweakUV2.out" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "polyTweakUV1.out" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "polyTweakUV5.out" "groupParts5.ig";
connectAttr "groupId10.id" "groupParts5.gi";
connectAttr "polyUnite2.out" "groupParts6.ig";
connectAttr "groupId14.id" "groupParts6.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "handleShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handleShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handleShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handleShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handle3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "doorShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "doorShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handleHolderShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handleHolderShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handleHolder1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handleHolder1Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "handle4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
// End of medicalDoorFinal.ma
