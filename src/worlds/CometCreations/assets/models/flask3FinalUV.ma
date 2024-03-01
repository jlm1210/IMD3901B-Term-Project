//Maya ASCII 2024 scene
//Name: flask3FinalUV.ma
//Last modified: Fri, Mar 01, 2024 11:36:41 AM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "F0AF8543-4764-AB3E-4AD9-4FABE3B35228";
createNode transform -s -n "persp";
	rename -uid "65D9CFEA-4D59-BABC-83C0-61A51F8B27B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6562486204128728 20.558496523617599 -12.655313161614487 ;
	setAttr ".r" -type "double3" -56.73835272967932 -519.79999999995039 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8892F73A-4A2C-D392-F6E0-C895E8AF6724";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.586365769369195;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B9300D6B-4B58-132D-72CE-91967696CB72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2AAF0FF7-4E6E-973F-D791-C38F285D28BD";
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
	rename -uid "2DD964BC-442B-B687-6197-7A942FB6D0D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2076FFBB-45C4-393A-C755-90B9FC272A58";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2919C41E-4931-4629-959B-91B9D98ED923";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2F513F52-400A-80E6-4732-E2AB9039E4B1";
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
createNode transform -n "pCylinder1";
	rename -uid "1A1906F0-4B5C-7EAC-927E-45825F69BCBC";
	setAttr ".rp" -type "double3" 0 3.3843797856048985 0 ;
	setAttr ".sp" -type "double3" 0 3.3843797856048985 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "55B95EC7-477C-F4C9-C704-8AA805E4BF98";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.5908428430557251 1.3391814231872559 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "polySurfaceShape1" -p "pCylinder1";
	rename -uid "021C49C3-43E0-BF57-4229-3EBAF5AF6BD0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 4 "f[0:7]" "f[12:35]" "f[61:68]" "f[93:116]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 4 "f[8:11]" "f[37:60]" "f[69:92]" "f[119:126]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.546875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 170 ".uvst[0].uvsp[0:169]" -type "float2" 0.375 0.5 0.40625
		 0.5 0.4375 0.5 0.46875 0.5 0.5 0.5 0.53125 0.5 0.5625 0.5 0.59375 0.5 0.625 0.5 0.375
		 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875 0.5625
		 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457
		 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375
		 0.5 0.84375 0.625 0.40625 0.375 0.40625 0.59375 0.40625 0.5625 0.40625 0.53125 0.40625
		 0.5 0.40625 0.46875 0.40625 0.4375 0.40625 0.40625 0.40625 0.625 0.59375 0.375 0.59375
		 0.59375 0.59375 0.5625 0.59375 0.53125 0.59375 0.5 0.59375 0.46875 0.59375 0.4375
		 0.59375 0.40625 0.59375 0.625 0.453125 0.375 0.453125 0.59375 0.453125 0.5625 0.453125
		 0.53125 0.453125 0.5 0.453125 0.46875 0.453125 0.4375 0.453125 0.40625 0.453125 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.61048543 0.95423543 0.5 1 0.38951457
		 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457
		 0.65625 0.84375 0.61048543 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.625 0.67661238
		 0.375 0.67661238 0.59375 0.67661238 0.5625 0.67661238 0.53125 0.67661238 0.5 0.67661238
		 0.46875 0.67661238 0.4375 0.67661238 0.40625 0.67661238 0.61048543 0.95423543 0.65625
		 0.84375 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457
		 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.61048543 0.73326457 0.5
		 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543
		 0.95423543 0.65625006 0.84375 0.61048543 0.73326457 0.5 0.6875 0.3895146 0.73326457
		 0.34375 0.84375 0.3895146 0.95423543 0.5 1 0.625 0.59896833 0.375 0.59896833 0.59375
		 0.59896833 0.5625 0.59896833 0.53125 0.59896833 0.5 0.59896833 0.46875 0.59896833
		 0.4375 0.59896833 0.40625 0.59896833 0.625 0.58464658 0.375 0.58464658 0.59375 0.58464658
		 0.5625 0.58464658 0.53125 0.58464658 0.5 0.58464658 0.46875 0.58464658 0.4375 0.58464658
		 0.40625 0.58464658 0.625 0.41100496 0.375 0.41100496 0.59375 0.41100496 0.5625 0.41100496
		 0.53125 0.41100496 0.5 0.41100496 0.46875 0.41100496 0.4375 0.41100496 0.40625 0.41100496
		 0.61048543 0.95423543 0.65625 0.84375 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 129 ".pt[0:128]" -type "float3"  0 4.0627608 0 0 4.0627608 
		0 0 4.0627608 0 0 4.0627608 0 0 4.0627608 0 0 4.0627608 0 0 4.0627608 0 0 4.0627608 
		0 -0.21096002 5.9475832 0.21096002 0 5.9475832 0.29834244 0.21095999 5.9475832 0.21095999 
		0.29834241 5.9475832 0 0.21095999 5.9475832 -0.21095999 0 5.9475832 -0.29834244 -0.21096005 
		5.9475832 -0.21096005 -0.29834247 5.9475832 0 0 2.2066023 0 0 2.2066023 0 0 2.2066023 
		0 0 2.2066023 0 0 2.2066023 0 0 2.2066023 0 0 2.2066023 0 0 2.2066023 0 -0.21095996 
		4.3709321 0.21095997 -0.29834247 4.3709321 0 -0.21095997 4.3709321 -0.21095997 1.2463935e-15 
		4.3709321 -0.29834244 0.21095996 4.3709321 -0.21095997 0.29834247 4.3709321 0 0.21095996 
		4.3709321 0.21095997 1.2463935e-15 4.3709321 0.29834247 0 3.1346815 0 0 3.1346815 
		0 0 3.1346815 0 0 3.1346815 0 0 3.1346815 0 0 3.1346815 0 0 3.1346815 0 0 3.1346815 
		0 -0.21096002 5.9475832 0.21096002 0 5.9475832 0.29834244 0.21096002 5.9475832 0.21096002 
		0.29834244 5.9475832 0 0.21096002 5.9475832 -0.21096002 0 5.9475832 -0.29834244 -0.21096005 
		5.9475832 -0.21096005 -0.29834247 5.9475832 0 -0.15495475 5.9475832 0.15495475 0 
		5.9475832 0.21913913 0.15495475 5.9475832 0.15495475 0.21913907 5.9475832 0 0.15495475 
		5.9475832 -0.15495475 0 5.9475832 -0.21913914 -0.15495481 5.9475832 -0.15495475 -0.21913913 
		5.9475832 -2.2228246e-09 0 2.5644577 0 0 2.5644577 0 0 2.5644581 0 0 2.5644581 0 
		0 2.5644584 0 0 2.5644584 0 0 2.5644584 0 0 2.5644584 0 0 2.5644581 0 -0.21095999 
		5.7644792 0.21095999 -0.29834247 5.7644792 0 -0.21096 5.7644792 -0.21096002 1.2463935e-15 
		5.7644792 -0.29834244 0.21095999 5.7644792 -0.21095999 0.29834241 5.7644792 0 0.21095999 
		5.7644792 0.21095999 1.2463935e-15 5.7644792 0.29834244 -0.19331288 5.9475832 0.19331288 
		-0.27338564 5.9475832 -7.0040762e-10 -0.19331293 5.9475832 -0.19331293 0 5.9475832 
		-0.27338564 0.19331288 5.9475832 -0.19331288 0.27338564 5.9475832 0 0.19331288 5.9475832 
		0.19331288 0 5.9475832 0.27338564 -0.16687527 5.9475832 0.16687527 -0.23599735 5.9475832 
		-1.749705e-09 -0.16687538 5.9475832 -0.16687527 0 5.9475832 -0.23599735 0.16687527 
		5.9475832 -0.16687527 0.23599729 5.9475832 0 0.16687527 5.9475832 0.16687527 0 5.9475832 
		0.23599732 -0.15495481 5.8096728 0.1549547 -0.21913914 5.8096728 -5.6947876e-08 -0.15495481 
		5.8096728 -0.15495481 0 5.8096728 -0.21913914 0.15495481 5.8096728 -0.15495481 0.21913911 
		5.8096728 0 0.15495481 5.8096728 0.15495481 0 5.8096728 0.21913914 -0.21095996 4.4586921 
		0.21095997 -0.29834247 4.4586921 0 -0.21095997 4.4586921 -0.21095997 1.2463935e-15 
		4.4586921 -0.29834247 0.21095996 4.4586921 -0.21095997 0.29834247 4.4586921 0 0.21095996 
		4.4586921 0.21095997 1.2463935e-15 4.4586921 0.29834247 -0.22275886 4.3060164 0.22275886 
		-0.31502876 4.3060164 4.9728793e-10 -0.22275886 4.3060164 -0.22275886 9.9457853e-10 
		4.3060164 -0.31502867 0.22275886 4.3060164 -0.22275886 0.3150287 4.3060164 4.9728793e-10 
		0.22275886 4.3060164 0.22275886 9.9457853e-10 4.3060164 0.31502867 0 2.3007457 0 
		0 2.3007457 0 0 2.3007457 0 0 2.3007457 0 0 2.3007457 0 0 2.3007457 0 0 2.3007457 
		0 0 2.3007457 0 0 3.1612611 0 0 3.1612613 0 0 3.1612616 0 0 3.1612616 0 0 3.1612616 
		0 0 3.1612616 0 0 3.1612613 0 0 3.1612611 0;
	setAttr -s 129 ".vt[0:128]"  1.11438894 0.287992 -1.11438906 -3.4331297e-08 0.287992 -1.57598341
		 -1.11438918 0.287992 -1.11438906 -1.57598341 0.287992 -1.7165648e-08 -1.11438918 0.287992 1.11438894
		 -3.4331297e-08 0.287992 1.57598352 1.11438906 0.287992 1.11438918 1.57598352 0.287992 -1.7165648e-08
		 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671 -0.99999988 1 0
		 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0 1.10840011 -0.49999988 -1.10715985
		 1.5675143 -0.49999988 0.001240219 1.10840023 -0.49999988 1.10964108 -3.3826492e-08 -0.49999988 1.56875432
		 -1.10840034 -0.49999988 1.10964072 -1.56751418 -0.49999988 0.001240219 -1.10840034 -0.49999988 -1.10715985
		 -3.4331297e-08 -0.49999988 -1.57598341 0.70710671 0.5 -0.70710671 1 0.5 0 0.70710677 0.5 0.70710677
		 0 0.5 0.99999994 -0.70710671 0.5 0.70710671 -0.99999988 0.5 0 -0.70710671 0.5 -0.70710671
		 0 0.5 -0.99999988 1.3545059 -0.106004 -1.35450602 1.91556013 -0.106004 -3.3707312e-08
		 1.35450602 -0.106004 1.35450613 -5.457164e-08 -0.106004 1.91556013 -1.35450625 -0.106004 1.3545059
		 -1.91556001 -0.106004 -3.3707312e-08 -1.35450625 -0.106004 -1.35450602 -5.457164e-08 -0.106004 -1.91556001
		 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671 -0.99999988 1 0
		 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0 0.51938558 1 -0.51938558
		 0 1 -0.7345221 -0.51938558 1 -0.51938558 -0.73452199 1 0 -0.51938558 1 0.51938558
		 0 1 0.73452216 0.51938564 1 0.51938558 0.7345221 1 7.4505806e-09 0.51938558 -0.3480801 -0.51937991
		 0 -0.3480801 -0.7345221 0 -0.34807992 1.4134987e-06 -0.51938558 -0.34807998 -0.51938558
		 -0.73452199 -0.34807986 0 -0.51938558 -0.34807986 0.51938558 0 -0.34807986 0.73452216
		 0.51938564 -0.34807986 0.51938558 0.7345221 -0.34807992 5.6614463e-06 0.70710671 0.9419325 -0.70710671
		 1 0.9419325 0 0.70710677 0.9419325 0.70710677 0 0.9419325 0.99999994 -0.70710671 0.9419325 0.70710671
		 -0.99999988 0.9419325 0 -0.70710671 0.9419325 -0.70710671 0 0.9419325 -0.99999988
		 0.64795613 1 -0.64795613 0.91634846 1 2.347663e-09 0.64795625 1 0.64795619 0 1 0.9163484
		 -0.64795613 1 0.64795613 -0.91634834 1 0 -0.64795613 1 -0.64795613 0 1 -0.9163484
		 0.55934131 1 -0.55934131 0.79102814 1 5.8647518e-09 0.55934143 1 0.55934131 0 1 0.79102814
		 -0.55934131 1 0.55934131 -0.79102802 1 0 -0.55934131 1 -0.55934131 0 1 -0.79102808
		 0.51938564 0.95626479 -0.51938546 0.73452216 0.95626479 1.908809e-07 0.51938564 0.95626479 0.51938564
		 0 0.95626479 0.73452222 -0.51938564 0.95626479 0.51938564 -0.73452204 0.95626479 0
		 -0.51938564 0.95626479 -0.51938564 0 0.95626479 -0.73452216 0.70710671 0.52783102 -0.70710671
		 1 0.52783102 0 0.70710677 0.52783102 0.70710677 0 0.52783102 0.99999988 -0.70710671 0.52783102 0.70710671
		 -0.99999988 0.52783102 0 -0.70710671 0.52783102 -0.70710671 0 0.52783102 -0.99999988
		 0.74665505 0.47941339 -0.74665505 1.05592978 0.47941339 -1.666836e-09 0.74665511 0.47941339 0.74665511
		 -3.333672e-09 0.47941339 1.055929661 -0.74665511 0.47941339 0.74665505 -1.055929661 0.47941339 -1.666836e-09
		 -0.74665511 0.47941339 -0.74665505 -3.333672e-09 0.47941339 -1.055929661 1.1333648 -0.46003333 -1.13225043
		 1.60281968 -0.46003333 0.0011144091 1.13336492 -0.46003333 1.13448 -3.593086e-08 -0.46003333 1.60393393
		 -1.13336504 -0.46003333 1.13447952 -1.60281956 -0.46003333 0.0011144091 -1.13336504 -0.46003333 -1.13225043
		 -3.6384456e-08 -0.46003333 -1.61042964 0.51938558 -0.0947202 -0.51938099 0.7345221 -0.09472008 4.5988272e-06
		 0.51938564 -0.094720021 0.51938558 0 -0.094720021 0.73452216 -0.51938558 -0.094720021 0.51938558
		 -0.73452199 -0.094720021 0 -0.51938558 -0.09472011 -0.51938558 0 -0.0947202 -0.7345221;
	setAttr -s 254 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 0 1 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 105 0 1 112 0 2 111 0 3 110 0
		 4 109 0 5 108 0 6 107 0 7 106 0 16 113 0 17 114 0 18 115 0 19 116 0 20 117 0 21 118 0
		 22 119 0 23 120 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0
		 24 97 0 25 98 0 26 99 0 27 100 0 28 101 0 29 102 0 30 103 0 31 104 0 24 25 1 25 26 1
		 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1 31 24 1 32 0 0 33 7 0 34 6 0 35 5 0 36 4 0
		 37 3 0 38 2 0 39 1 0 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 32 1
		 8 40 0 9 41 0 40 41 0 10 42 0 41 42 0 11 43 0 42 43 0 12 44 0 43 44 0 13 45 0 44 45 0
		 14 46 0 45 46 0 15 47 0 46 47 0 47 40 0 8 73 1 9 80 1 48 49 0 10 79 1 49 50 0 11 78 1
		 50 51 0 12 77 1 51 52 0 13 76 1 52 53 0 14 75 1 53 54 0 15 74 1 54 55 0 55 48 0 48 89 0
		 49 96 0 56 57 0 57 58 1 50 95 0 57 59 0 51 94 0 59 60 0 60 58 1 52 93 0 60 61 0 53 92 0
		 61 62 0 62 58 1 54 91 0 62 63 0 55 90 0 63 64 0 64 58 1 64 56 0 65 8 0 66 15 0 67 14 0
		 68 13 0 69 12 0 70 11 0 71 10 0 72 9 0 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1
		 71 72 1 72 65 1 73 81 1 74 82 1 75 83 1 76 84 1 77 85 1 78 86 1 79 87 1 80 88 1 73 74 1
		 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 73 1 81 48 1 82 55 1 83 54 1 84 53 1
		 85 52 1 86 51 1 87 50 1 88 49 1 81 82 1 82 83 1;
	setAttr ".ed[166:253]" 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 81 1 89 121 0
		 90 122 0 91 123 0 92 124 0 93 125 0 94 126 0 95 127 0 96 128 0 89 90 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 96 1 96 89 1 97 65 0 98 66 0 99 67 0 100 68 0 101 69 0
		 102 70 0 103 71 0 104 72 0 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1
		 103 104 1 104 97 1 105 24 0 106 25 0 107 26 0 108 27 0 109 28 0 110 29 0 111 30 0
		 112 31 0 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 105 1
		 113 32 0 114 33 0 115 34 0 116 35 0 117 36 0 118 37 0 119 38 0 120 39 0 113 114 1
		 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 113 1 22 17 1 21 18 1
		 121 56 0 122 64 0 123 63 0 124 62 0 125 61 0 126 60 0 127 59 0 128 57 0 121 122 1
		 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1 127 128 1 128 121 1;
	setAttr -s 127 -ch 508 ".fc[0:126]" -type "polyFaces" 
		f 4 0 17 219 -17
		mu 0 4 0 1 152 145
		f 4 1 18 218 -18
		mu 0 4 1 2 151 152
		f 4 2 19 217 -19
		mu 0 4 2 3 150 151
		f 4 3 20 216 -20
		mu 0 4 3 4 149 150
		f 4 4 21 215 -21
		mu 0 4 4 5 148 149
		f 4 5 22 214 -22
		mu 0 4 5 6 147 148
		f 4 6 23 213 -23
		mu 0 4 6 7 146 147
		f 4 7 16 212 -24
		mu 0 4 7 8 144 146
		f 4 -108 109 111 112
		mu 0 4 26 95 96 97
		f 4 -113 114 116 117
		mu 0 4 26 97 98 99
		f 4 -118 119 121 122
		mu 0 4 26 99 100 101
		f 4 -123 123 106 107
		mu 0 4 26 101 94 95
		f 4 -33 24 228 -26
		mu 0 4 29 27 153 155
		f 4 -34 25 229 -27
		mu 0 4 30 29 155 156
		f 4 -35 26 230 -28
		mu 0 4 31 30 156 157
		f 4 -36 27 231 -29
		mu 0 4 32 31 157 158
		f 4 -37 28 232 -30
		mu 0 4 33 32 158 159
		f 4 -38 29 233 -31
		mu 0 4 34 33 159 160
		f 4 -39 30 234 -32
		mu 0 4 35 34 160 161
		f 4 -40 31 235 -25
		mu 0 4 28 35 161 154
		f 4 -49 40 196 -42
		mu 0 4 38 36 135 137
		f 4 -50 41 197 -43
		mu 0 4 39 38 137 138
		f 4 -51 42 198 -44
		mu 0 4 40 39 138 139
		f 4 -52 43 199 -45
		mu 0 4 41 40 139 140
		f 4 -53 44 200 -46
		mu 0 4 42 41 140 141
		f 4 -54 45 201 -47
		mu 0 4 43 42 141 142
		f 4 -55 46 202 -48
		mu 0 4 44 43 142 143
		f 4 -56 47 203 -41
		mu 0 4 37 44 143 136
		f 4 -65 56 -8 -58
		mu 0 4 47 45 8 7
		f 4 -66 57 -7 -59
		mu 0 4 48 47 7 6
		f 4 -67 58 -6 -60
		mu 0 4 49 48 6 5
		f 4 -68 59 -5 -61
		mu 0 4 50 49 5 4
		f 4 -69 60 -4 -62
		mu 0 4 51 50 4 3
		f 4 -70 61 -3 -63
		mu 0 4 52 51 3 2
		f 4 -71 62 -2 -64
		mu 0 4 53 52 2 1
		f 4 -72 63 -1 -57
		mu 0 4 46 53 1 0
		f 4 237 34 35 36
		mu 0 4 33 30 31 32
		f 4 8 73 -75 -73
		mu 0 4 54 55 56 57
		f 4 9 75 -77 -74
		mu 0 4 58 59 60 61
		f 4 10 77 -79 -76
		mu 0 4 62 63 64 65
		f 4 11 79 -81 -78
		mu 0 4 66 67 68 69
		f 4 12 81 -83 -80
		mu 0 4 70 71 72 73
		f 4 13 83 -85 -82
		mu 0 4 74 75 76 77
		f 4 14 85 -87 -84
		mu 0 4 78 79 80 81
		f 4 15 72 -88 -86
		mu 0 4 82 83 84 85
		f 4 8 89 155 -89
		mu 0 4 24 23 118 111
		f 4 9 91 154 -90
		mu 0 4 23 22 117 118
		f 4 10 93 153 -92
		mu 0 4 22 21 116 117
		f 4 11 95 152 -94
		mu 0 4 21 20 115 116
		f 4 12 97 151 -96
		mu 0 4 20 19 114 115
		f 4 13 99 150 -98
		mu 0 4 19 18 113 114
		f 4 14 101 149 -100
		mu 0 4 18 25 112 113
		f 4 15 88 148 -102
		mu 0 4 25 24 111 112
		f 4 90 105 187 -105
		mu 0 4 86 87 134 127
		f 4 92 108 186 -106
		mu 0 4 87 88 133 134
		f 4 94 110 185 -109
		mu 0 4 88 89 132 133
		f 4 96 113 184 -111
		mu 0 4 89 90 131 132
		f 4 98 115 183 -114
		mu 0 4 90 91 130 131
		f 4 100 118 182 -116
		mu 0 4 91 92 129 130
		f 4 102 120 181 -119
		mu 0 4 92 93 128 129
		f 4 103 104 180 -121
		mu 0 4 93 86 127 128
		f 4 -133 124 -16 -126
		mu 0 4 104 102 17 16
		f 4 -134 125 -15 -127
		mu 0 4 105 104 16 15
		f 4 -135 126 -14 -128
		mu 0 4 106 105 15 14
		f 4 -136 127 -13 -129
		mu 0 4 107 106 14 13
		f 4 -137 128 -12 -130
		mu 0 4 108 107 13 12
		f 4 -138 129 -11 -131
		mu 0 4 109 108 12 11
		f 4 -139 130 -10 -132
		mu 0 4 110 109 11 10
		f 4 -140 131 -9 -125
		mu 0 4 103 110 10 9
		f 4 -149 140 164 -142
		mu 0 4 112 111 119 120
		f 4 -150 141 165 -143
		mu 0 4 113 112 120 121
		f 4 -151 142 166 -144
		mu 0 4 114 113 121 122
		f 4 -152 143 167 -145
		mu 0 4 115 114 122 123
		f 4 -153 144 168 -146
		mu 0 4 116 115 123 124
		f 4 -154 145 169 -147
		mu 0 4 117 116 124 125
		f 4 -155 146 170 -148
		mu 0 4 118 117 125 126
		f 4 -156 147 171 -141
		mu 0 4 111 118 126 119
		f 4 -165 156 -104 -158
		mu 0 4 120 119 86 93
		f 4 -166 157 -103 -159
		mu 0 4 121 120 93 92
		f 4 -167 158 -101 -160
		mu 0 4 122 121 92 91
		f 4 -168 159 -99 -161
		mu 0 4 123 122 91 90
		f 4 -169 160 -97 -162
		mu 0 4 124 123 90 89
		f 4 -170 161 -95 -163
		mu 0 4 125 124 89 88
		f 4 -171 162 -93 -164
		mu 0 4 126 125 88 87
		f 4 -172 163 -91 -157
		mu 0 4 119 126 87 86
		f 4 -181 172 246 -174
		mu 0 4 128 127 162 163
		f 4 -182 173 247 -175
		mu 0 4 129 128 163 164
		f 4 -183 174 248 -176
		mu 0 4 130 129 164 165
		f 4 -184 175 249 -177
		mu 0 4 131 130 165 166
		f 4 -185 176 250 -178
		mu 0 4 132 131 166 167
		f 4 -186 177 251 -179
		mu 0 4 133 132 167 168
		f 4 -187 178 252 -180
		mu 0 4 134 133 168 169
		f 4 -188 179 253 -173
		mu 0 4 127 134 169 162
		f 4 -197 188 132 -190
		mu 0 4 137 135 102 104
		f 4 -198 189 133 -191
		mu 0 4 138 137 104 105
		f 4 -199 190 134 -192
		mu 0 4 139 138 105 106
		f 4 -200 191 135 -193
		mu 0 4 140 139 106 107
		f 4 -201 192 136 -194
		mu 0 4 141 140 107 108
		f 4 -202 193 137 -195
		mu 0 4 142 141 108 109
		f 4 -203 194 138 -196
		mu 0 4 143 142 109 110
		f 4 -204 195 139 -189
		mu 0 4 136 143 110 103
		f 4 -213 204 48 -206
		mu 0 4 146 144 36 38
		f 4 -214 205 49 -207
		mu 0 4 147 146 38 39
		f 4 -215 206 50 -208
		mu 0 4 148 147 39 40
		f 4 -216 207 51 -209
		mu 0 4 149 148 40 41
		f 4 -217 208 52 -210
		mu 0 4 150 149 41 42
		f 4 -218 209 53 -211
		mu 0 4 151 150 42 43
		f 4 -219 210 54 -212
		mu 0 4 152 151 43 44
		f 4 -220 211 55 -205
		mu 0 4 145 152 44 37
		f 4 -229 220 64 -222
		mu 0 4 155 153 45 47
		f 4 -230 221 65 -223
		mu 0 4 156 155 47 48
		f 4 -231 222 66 -224
		mu 0 4 157 156 48 49
		f 4 -232 223 67 -225
		mu 0 4 158 157 49 50
		f 4 -233 224 68 -226
		mu 0 4 159 158 50 51
		f 4 -234 225 69 -227
		mu 0 4 160 159 51 52
		f 4 -235 226 70 -228
		mu 0 4 161 160 52 53
		f 4 -236 227 71 -221
		mu 0 4 154 161 53 46
		f 4 -237 38 39 32
		mu 0 4 29 34 35 27
		f 4 33 -238 37 236
		mu 0 4 29 30 33 34
		f 4 -247 238 -124 -240
		mu 0 4 163 162 94 101
		f 4 -248 239 -122 -241
		mu 0 4 164 163 101 100
		f 4 -249 240 -120 -242
		mu 0 4 165 164 100 99
		f 4 -250 241 -117 -243
		mu 0 4 166 165 99 98
		f 4 -251 242 -115 -244
		mu 0 4 167 166 98 97
		f 4 -252 243 -112 -245
		mu 0 4 168 167 97 96
		f 4 -253 244 -110 -246
		mu 0 4 169 168 96 95
		f 4 -254 245 -107 -239
		mu 0 4 162 169 95 94;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "left";
	rename -uid "A2A19F30-459B-4137-C79F-48AE90E61BBA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "8BC82FC5-47CC-511C-D4D8-19B9E416B19B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "949C48A7-40C5-01C4-5ADC-A19E250E41E0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "37DE1ACD-4B1C-71F8-1347-DE84ED6AD69D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "76C3FCEF-4FF0-DB44-E1A9-5D8DAF10FE66";
createNode displayLayerManager -n "layerManager";
	rename -uid "40957EA2-4485-FA18-E293-D793C7C8F3C4";
createNode displayLayer -n "defaultLayer";
	rename -uid "9A1A0B0E-4EE3-8048-0E14-B58F92FC2CF9";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "24B7592F-4F76-EB2E-AAF5-E18D388B0BC2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D49183EF-4B99-77D2-4698-139B299E4951";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A6BA2719-4C67-F18D-8805-35B7249DED97";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "D390B34F-4FC1-3520-914F-B298C1683D9B";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "FCFE304D-440E-8848-76E0-07928F3CAB71";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "73A3E141-4B1B-1FB2-6634-F5B0F04702E6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1AFE3F4A-4CBF-FEEF-F9D6-D9A5968CE12C";
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
	rename -uid "F720CA43-4B4B-A5D8-DDD2-B8B3AD453278";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "1E8B5A8C-46A1-7CAA-12EA-80B0994CC614";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[0:7]" "f[12:36]" "f[61:68]" "f[93:118]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.9604644775390625e-08 4.3270928263664246 5.9604644775390625e-08 ;
	setAttr ".ic" -type "double2" 3.1461599780552421 0.5 ;
	setAttr ".ps" -type "double2" 180 5.2409807443618774 ;
	setAttr ".r" 3.8311201333999634;
createNode polyNormal -n "polyNormal1";
	rename -uid "0361B176-452F-233A-251F-A08323709BC0";
	setAttr ".ics" -type "componentList" 1 "f[0:126]";
	setAttr ".nm" 2;
createNode polySplitEdge -n "polySplitEdge1";
	rename -uid "E67ECDDB-45DC-03D4-F041-D68EC0034EF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8:15]";
createNode polySplitVert -n "polySplitVert1";
	rename -uid "4DCD05F4-43B4-AC2C-A43E-9598E67D36D7";
	setAttr ".ics" -type "componentList" 1 "vtx[8:15]";
createNode polyChipOff -n "polyChipOff1";
	rename -uid "C3F0866E-4F9A-06EB-5AE5-11A77CBFAF3F";
	setAttr ".ics" -type "componentList" 1 "f[37:44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 40213;
	setAttr ".kft" no;
	setAttr ".dup" no;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "0C73B3E2-4474-3DE7-9460-14BE8EBF80E7";
	setAttr ".uopa" yes;
	setAttr -s 186 ".uvtk[0:185]" -type "float2" -2.1461916 -0.2803036 -2.1461916
		 -0.32638326 -2.28508925 -0.2803036 -2.28508925 -0.32638326 -2.42398691 -0.2803036
		 -2.42398691 -0.32638326 -2.56288481 -0.2803036 -2.56288481 -0.32638326 -2.70178246
		 -0.2803036 -2.70178246 -0.32638326 -2.84068012 -0.2803036 -2.84068012 -0.32638326
		 -2.97957778 -0.2803036 -2.97957778 -0.32638326 -0.26309282 -0.15973926 -2.97945476
		 -0.014216887 -2.8405931 -0.014216887 -2.70178246 -2.9802322e-08 -2.70178246 -0.014216887
		 -2.56298351 -2.9802322e-08 -2.56297159 -0.014216887 -2.4241271 -2.9802322e-08 -2.42410994
		 -0.014216887 -2.28518844 -2.9802322e-08 -2.28517628 -0.014216887 -2.1461916 -2.9802322e-08
		 -2.1461916 -0.014216887 -2.97957778 -0.33544725 -2.97957778 -0.34770092 -2.84068012
		 -0.33544725 -2.84068012 -0.34770092 -2.70178246 -0.33544725 -2.70178246 -0.34770092
		 -2.56288481 -0.33544725 -2.56288481 -0.34770092 -2.42398691 -0.33544725 -2.42398691
		 -0.34770092 -2.28508925 -0.33544725 -0.2060596 -0.10270602 -0.26309282 -0.079082072
		 -0.32012606 -0.10270602 -0.34375 -0.15973926 -0.32012606 -0.21677244 -0.26309282
		 -0.24039641 -0.2060596 -0.21677244 -0.18243566 -0.15973926 -0.2060596 -0.10270602
		 -0.26309282 -0.079082072 -0.32012606 -0.10270602 -0.34375 -0.15973926 -0.32012606
		 -0.21677244 -0.26309282 -0.24039641 -0.2060596 -0.21677244 -0.18243566 -0.15973926
		 -2.28508925 -0.34770092 -2.1461916 -0.33544725 -2.1461916 -0.34770092 -2.97957778
		 -0.1401518 -2.84068012 -0.1401518 -2.70178246 -0.1401518 -2.56288481 -0.1401518 -2.42398691
		 -0.1401518 -0.2060596 -0.10270602 -0.18243566 -0.15973926 -0.2060596 -0.21677244
		 -0.26309282 -0.24039641 -0.32012606 -0.21677244 -0.34375 -0.15973926 -0.32012606
		 -0.10270602 -0.26309282 -0.079082072 -0.2060596 -0.10270602 -0.18243566 -0.15973926
		 -0.2060596 -0.21677244 -0.26309282 -0.24039641 -0.32012606 -0.21677244 -0.34375 -0.15973926
		 -0.32012606 -0.10270602 -0.26309282 -0.079082072 -0.2060596 -0.10270602 -0.18243563
		 -0.15973926 -0.2060596 -0.21677244 -0.26309282 -0.24039641 -0.32012606 -0.21677244
		 -0.34375 -0.15973926 -0.32012606 -0.10270602 -0.26309282 -0.079082072 -2.28508949
		 -0.1401518 -2.1461916 -0.1401518 -2.97957778 -0.53002447 -2.97957778 -0.55559075
		 -2.84068012 -0.53002447 -2.84068012 -0.55559075 -2.70178246 -0.53002447 -2.70178246
		 -0.55559075 -2.56288481 -0.53002447 -2.56288481 -0.55559075 -2.42398691 -0.53002447
		 -2.42398691 -0.55559075 -2.28508925 -0.53002447 -2.28508925 -0.55559075 -2.1461916
		 -0.53002447 -0.26309282 -0.079082072 -0.32012606 -0.10270602 -0.34375 -0.15973926
		 -0.32012606 -0.21677244 -0.26309282 -0.24039641 -0.2060596 -0.21677244 -0.18243566
		 -0.15973926 -0.2060596 -0.10270602 -3.25737309 -0.2803036 -3.25737309 -0.32638326
		 -3.11837649 -2.9802322e-08 -3.25737309 -0.014216887 -3.25737309 -0.33544725 -3.25737309
		 -0.34770092 -3.25737309 -0.1401518 -3.11847568 -0.2803036 -3.25737309 -0.53002447
		 -3.25737309 -0.55559075 -3.11847568 -0.55559075 -3.11847568 -0.34770092 -3.11847568
		 -0.53002447 -3.11847568 -0.32638326 -3.11847568 -0.33544725 -3.11838865 -0.014216887
		 -3.11847568 -0.1401518 -2.97943783 -2.9802322e-08 -3.25737309 -2.9802322e-08 -3.39636993
		 -2.9802322e-08 -2.84058118 -2.9802322e-08 -0.2060596 -0.10270602 -0.2060596 -0.10270602
		 -3.11847568 -0.55559075 -0.26309282 -0.079082072 -2.1461916 -0.55559075 -0.26309282
		 -0.079082072 -0.32012606 -0.10270602 -2.28508925 -0.55559075 -0.32012606 -0.10270602
		 -0.34375 -0.15973926 -2.42398691 -0.55559075 -0.34375 -0.15973926 -0.32012606 -0.21677244
		 -2.56288481 -0.55559075 -0.32012606 -0.21677244 -0.26309282 -0.24039641 -2.70178246
		 -0.55559075 -0.26309282 -0.24039641 -0.2060596 -0.21677244 -2.84068012 -0.55559075
		 -0.2060596 -0.21677244 -0.18243566 -0.15973926 -2.97957778 -0.55559075 -0.18243566
		 -0.15973926 0.92864662 0 -0.071139574 0 -0.071139574 -0.9997862 0.92864662 -0.9997862
		 0.94592375 0 -0.053878665 0 -0.053878665 -0.99980247 0.94592375 -0.99980247 0.92000806
		 0 -0.079773188 0 -0.079773188 -0.99978125 0.92000806 -0.99978125 0.89409232 0 -0.10564935
		 0 -0.10564935 -0.99974167 0.89409232 -0.99974167 0.90273088 0 -0.097042143 0 -0.097042143
		 -0.99977303 0.90273088 -0.99977303 0.95456237 0 -0.04524231 0 -0.04524231 -0.99980462
		 0.95456237 -0.99980462 0.93728518 0 -0.062507153 0 -0.062507153 -0.99979234 0.93728518
		 -0.99979234 0.91136944 0 -0.088406742 0 -0.088406742 -0.99977618 0.91136944 -0.99977618;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "152890EC-4982-B2F9-0C34-B6AEC92F6FA3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[8:11]" "f[45:60]" "f[69:92]" "f[119:126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.9604644775390625e-08 4.5819803476333618 2.9802322387695312e-08 ;
	setAttr ".ic" -type "double2" 0.5 1.0872931685904819 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1.4690440893173218 1.4690442681312561 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "polyFlipUV1";
	rename -uid "385DAD4E-4ED4-86C3-D1DF-B0AA73E51A40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[8:11]" "f[45:60]" "f[69:92]" "f[119:126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.49999998509999999;
	setAttr ".pv" 1.0872931180000001;
createNode polyFlipUV -n "polyFlipUV2";
	rename -uid "3914A989-468D-61E9-C02C-31B7D0F4626F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[8:11]" "f[45:60]" "f[69:92]" "f[119:126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.49999998509999999;
	setAttr ".pv" 1.0872931480000001;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "03BCA867-4D4D-A0ED-7DF8-0E873EFB06FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86:87]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "E000C400-4CE1-854A-448B-CBB5A419B397";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[126]" "e[142]";
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "2DB78D0A-470F-6EF4-3E6F-3BAC83373E32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[45:52]" "f[69:84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.9802322387695312e-08 6.9475831985473633 5.9604644775390625e-08 ;
	setAttr ".ic" -type "double2" 1.5379591277344957 0.90904794120956334 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1.403315007686615 1.4033149480819702 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "polyFlipUV3";
	rename -uid "C4E2B109-4597-2E7D-D7BB-BA9484AB4C37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[92]" "f[126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.67677667740000003;
	setAttr ".pv" 1.4613298180000001;
createNode polyFlipUV -n "polyFlipUV4";
	rename -uid "8DC7E30C-4B63-46DD-3CCE-F589687B0B3C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[91]" "f[125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.32322320339999999;
	setAttr ".pv" 1.4613298180000001;
createNode polyFlipUV -n "polyFlipUV5";
	rename -uid "0ADC0F78-4F18-4AC3-4E3D-E6A6E32ADA92";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[90]" "f[124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.12596322600000001;
	setAttr ".pv" 1.2640699150000001;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "812C6C86-4663-44F9-2262-A59E09AFE3EC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[89]" "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.12596322600000001;
	setAttr ".pv" 0.91051644089999995;
createNode polyFlipUV -n "polyFlipUV7";
	rename -uid "1D64CC91-417A-65CD-3852-11931FC7EAA5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[88]" "f[122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.32322320339999999;
	setAttr ".pv" 0.71325635909999996;
createNode polyFlipUV -n "polyFlipUV8";
	rename -uid "5563B4D3-4186-A57A-3D7D-9DB4469072E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[87]" "f[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.67677667740000003;
	setAttr ".pv" 0.71325635909999996;
createNode polyFlipUV -n "polyFlipUV9";
	rename -uid "9C0F90AD-44D4-F747-A105-0DA239A9BD52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[86]" "f[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.87403666970000005;
	setAttr ".pv" 0.91051632169999996;
createNode polyFlipUV -n "polyFlipUV10";
	rename -uid "B0E5D332-4161-E30D-2715-78A7CFA30863";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[85]" "f[119]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.87403666970000005;
	setAttr ".pv" 1.264066398;
createNode polyCylProj -n "polyCylProj2";
	rename -uid "C4A4AE2A-429C-6CCB-0E36-ED801696994A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[53:60]" "f[85:92]" "f[119:126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.9604644775390625e-08 4.5819803476333618 2.9802322387695312e-08 ;
	setAttr ".ic" -type "double2" 1.1209190217639082 2.1783628868448601 ;
	setAttr ".ps" -type "double2" 180 4.7312057018280029 ;
	setAttr ".r" 1.4690442681312561;
createNode polyFlipUV -n "polyFlipUV11";
	rename -uid "DDD85D88-4FFD-F34B-1B31-52BC2F499E06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[53:60]" "f[85:92]" "f[119:126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
	setAttr ".up" yes;
	setAttr ".pu" 1.1209508779999999;
	setAttr ".pv" 2.1783628460000002;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "6455A35C-40A5-7578-4118-4EA3FEC13204";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.9604644775390625e-08 2.2163779735565186 2.9802322387695312e-08 ;
	setAttr ".ic" -type "double2" 2.6816855859531956 0.5 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1.4690440893173218 1.4690442681312561 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "DEF2AF97-4D02-9B88-72FC-23AD17B536F3";
	setAttr ".uopa" yes;
	setAttr -s 206 ".uvtk[14:205]" -type "float2" -1.74845147 -0.0047494769
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 -0.12095086 -1.23130429 -0.12095086 -1.2594614 -0.30429912 -1.23130429
		 -0.30429912 -1.2594614 -0.48764741 -1.23130429 -0.48764741 -1.2594614 -1.24564672
		 -0.71412826 -0.93382269 -0.83964658 -0.93431121 -0.80286735 -1.21984625 -0.68797976
		 -0.93406236 -0.83960062 -0.62489343 -0.70786679 -0.65124464 -0.68220556 -0.62509835
		 -0.70800674 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.49957329 -0.39627016 -0.53635174 -0.39675307
		 -0.49961895 -0.39651257 -0.63128704 -0.087278701 -0.65695298 -0.1136253 -0.63115251
		 -0.087476738 -0.94297665 0.038041607 -0.94248813 0.0012623221 -0.94273698 0.037995651
		 -1.25190592 -0.093738385 -1.22555459 -0.11939953 -1.25170088 -0.093598373 -1.37722611
		 -0.40533489 -1.34044766 -0.40485197 -1.37718034 -0.40509254 -1.24551225 -0.71432632
		 -1.18140209 -0.64867127 -1.28546309 -0.40422761 -0.67099571 -1.23130429 -0.67099571
		 -1.2594614 -1.18623543 -0.15783614 -0.85434401 -1.23130429 -0.94184273 -0.053725585
		 -0.85434401 -1.2594614 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 -0.69539714 -0.15293384 -1.037692308 -1.23130429 -0.59133625 -0.39737737 -1.037692308
		 -1.2594614 -0.6905638 -0.64376897 -1.22104049 -1.23130429 -0.93495661 -0.74787945
		 -1.22104049 -1.2594614 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.16406107 -0.63095188 -1.26066983 -0.40395075 0 0 -1.16851115
		 -0.17517319 0 0 -0.94155592 -0.078520969 -0.71273828 -0.17065322 0 0 -0.6161294 -0.39765429
		 -0.70828813 -0.62643194 0 0 -0.93524343 -0.72308415 0 0 -1.22103906 -1.83291197 -1.037692308
		 -1.83291185 0 0 -0.85434401 -1.83291185 -0.67099571 -1.83291185 0 0 -0.48764741 -1.83291185
		 -0.30429912 -1.83291197 0 0 -0.12095082 -1.83291197 -0.00032776594 0 -0.00032776594
		 0 -0.00032776594 -1.542503e-08 -0.00032776594 -1.542503e-08 -0.000649333 0 -0.000649333
		 0 -0.000649333 -2.9540388e-09 -0.000649333 -2.9540388e-09 -0.00016701221 0 -0.00016701221
		 0 -0.00016701221 2.9744115e-08 -0.00016701221 2.9744115e-08 0.00031530857 0 0.00031536818
		 0 0.00031536818 1.1146767e-08 0.00031530857 1.1146767e-08 0.00015455484 0 0.00015455484
		 0 0.00015455484 8.2945917e-09 0.00015455484 8.2945917e-09 -0.00081014633 0 -0.00081008673
		 0 -0.00081008673 1.268927e-08 -0.00081014633 1.268927e-08 -0.00048851967 0 -0.00048857927
		 0 -0.00048857927 -1.5657861e-08 -0.00048851967 -1.5657861e-08 -6.1988831e-06 0 -6.1988831e-06
		 0 -6.1988831e-06 -2.5655027e-08 -6.1988831e-06 -2.5655027e-08 -1.2210387 -1.96469724
		 -1.037692308 -1.96469724 -0.85434401 -1.96469724 -0.67099571 -1.96469724 -0.48764741
		 -1.96469724 -0.30429912 -1.96469724 -0.12095082 -1.96469736 -1.74845147 -0.44049037
		 -1.44033659 -0.31286514 -1.31271148 -0.0047502816 -1.44033659 0.30336446 -1.74845147
		 0.4309898 -2.056566238 0.30336446 -2.1841917 -0.0047469437 -2.056566238 -0.31286174
		 -1.4043889 -1.23130429 -1.5877372 -1.23130429 -1.5877372 -1.2594614 -1.4043889 -1.2594614
		 -1.58773708 -1.83291197 -1.40438795 -1.83291197 -1.58773708 -1.96469736 -1.40438747
		 -1.96469736;
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
	setAttr ".ro" yes;
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV2.out" "pCylinderShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
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
connectAttr "polySurfaceShape1.o" "polyCylProj1.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySplitEdge1.ip";
connectAttr "polySplitEdge1.out" "polySplitVert1.ip";
connectAttr "polySplitVert1.out" "polyChipOff1.ip";
connectAttr "pCylinderShape1.wm" "polyChipOff1.mp";
connectAttr "polyChipOff1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj1.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyFlipUV1.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV1.mp";
connectAttr "polyFlipUV1.out" "polyFlipUV2.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV2.mp";
connectAttr "polyFlipUV2.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyPlanarProj2.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyFlipUV3.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV3.mp";
connectAttr "polyFlipUV3.out" "polyFlipUV4.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV4.mp";
connectAttr "polyFlipUV4.out" "polyFlipUV5.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV5.mp";
connectAttr "polyFlipUV5.out" "polyFlipUV6.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyFlipUV7.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV7.mp";
connectAttr "polyFlipUV7.out" "polyFlipUV8.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV8.mp";
connectAttr "polyFlipUV8.out" "polyFlipUV9.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV9.mp";
connectAttr "polyFlipUV9.out" "polyFlipUV10.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV10.mp";
connectAttr "polyFlipUV10.out" "polyCylProj2.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyFlipUV11.ip";
connectAttr "pCylinderShape1.wm" "polyFlipUV11.mp";
connectAttr "polyFlipUV11.out" "polyPlanarProj3.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV2.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of flask3FinalUV.ma
