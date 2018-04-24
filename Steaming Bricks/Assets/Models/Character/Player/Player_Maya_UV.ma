//Maya ASCII 2017ff05 scene
//Name: Player_Maya_UV.ma
//Last modified: Sun, Apr 22, 2018 09:49:20 PM
//Codeset: 936
requires maya "2017ff05";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.1.0.2";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t 29.97fps;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201710312130-1018716";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "8E74BAB7-4DBD-FDDD-A116-1E96B2F78CC1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.6208516683285519 0.96037613976210423 2.7740791746417455 ;
	setAttr ".r" -type "double3" -362.13835291410174 23371.000000021577 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "930BB3A9-44F0-6719-03A7-85BDBA70C88E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 3.4628184950490781;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 30.366283416748047 51.84303092956543 -7.1085047721862793 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "39088D54-468B-911C-84FF-29966A620726";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.22527151717621607 10.001000000000001 -0.052627757681075825 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A9E943E7-421F-FD36-22FE-EC80F354C0AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 1.6000963441176519;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4C7A8F7B-445F-014E-6CFD-19BAC04DD29D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.11345828344471887 0.65925426465686043 10.005793988080653 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "835969FD-491D-BEFC-3A66-F4BD1C86617F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.076879040570887;
	setAttr ".ow" 1.2924844049577267;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 39.108192443847656 78.953590393066406 -7.1085052490234375 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "341F50C6-4FD2-6727-6524-E2A30D07E6D8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 0.53400167601038928 0.046605012807910226 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2DB3C74F-4BE0-55C4-A94F-2EB9F2579511";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 3.2192802062411974;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bottom";
	rename -uid "C06BABE0-43F9-5930-6C36-7FA05A7F654B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.020606572110516089 -1000.1 -1.0990171792275338 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "bottomShape" -p "bottom";
	rename -uid "6286D47B-4E62-8316-0908-BAA62F6C7609";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.8053469830753328;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
createNode transform -n "back";
	rename -uid "5C655196-40FB-0289-025E-059FC0419E1E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.031129704253038515 0.23259849917419406 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "5A44075E-4768-5BE7-195D-6CB8FC169313";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 0.98908388934779778;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode joint -n "Joint_Main";
	rename -uid "5C812B50-46FF-1FA5-CF81-F597326D2EB7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 -1.0000000000000002 0 0 1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.041198755945338075 58.207910400748624 -7.1435558983070528 1;
	setAttr ".radi" 1.6791979750562154;
createNode joint -n "Joint_Waist" -p "Joint_Main";
	rename -uid "D562A6BA-479C-275F-82B4-688C7FC2FD77";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 73.810793742973132 ;
	setAttr ".bps" -type "matrix" 0.96034622675362491 -0.27881019486395403 0 0 0.27881019486395403 0.96034622675362491 0 0
		 0 0 1 0 -0.041198755945338082 37.933326155306446 -7.143555898307052 1;
	setAttr ".radi" 1.0078062826252703;
createNode joint -n "Joint_Leg_Left" -p "Joint_Waist";
	rename -uid "D13DBFAB-4408-939B-552E-97986325F441";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.10817588130755228 -1.4210854715202004e-016 1.7763568394002505e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -70.342564484056041 ;
	setAttr ".bps" -type "matrix" 0.060495060401889678 -0.99816849663119112 0 0 0.99816849663119112 0.060495060401889678 0 0
		 0 0 1 0 10.34743118800024 34.917272300612574 -7.1435558983070502 1;
	setAttr ".radi" 1.3078655241627619;
createNode joint -n "Joint_Knee_Left" -p "Joint_Leg_Left";
	rename -uid "C63C6182-46BA-C093-077A-F18F267DC1A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.57625631526398469 ;
	setAttr ".bps" -type "matrix" 0.070530981060382816 -0.99750958928255951 0 0 0.99750958928255951 0.070530981060382816 0 0
		 0 0 1 0 11.352782472898189 18.328976099796254 -7.1435558983070528 1;
	setAttr ".radi" 1.3084333281731164;
createNode joint -n "Joint_Feet_Left" -p "Joint_Knee_Left";
	rename -uid "BF52E9D7-4DEC-03EE-A297-A0B9F39E9F17";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999879258172 0 -149.11047660741571 ;
	setAttr ".bps" -type "matrix" -0.57263258890055257 0.81981212367776779 8.2718061255302786e-025 0
		 0.81981212367776757 0.57263258890055235 2.107342446134461e-008 0 1.727624886081794e-008 1.2067329606299993e-008 -0.99999999999999978 0
		 12.525692305279145 1.7406798989799377 -7.1435558983070528 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "joint5_parentConstraint1" -p "Joint_Feet_Left";
	rename -uid "1BCCE94E-4B71-B024-3445-879720F31BD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle14W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0016821620303123198 0.0010175467423573891 
		-0.071435558983070524 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999879258172 -4.7393957994334661e-023 
		124.93400896676538 ;
	setAttr ".lr" -type "double3" -6.3141436072113367e-038 -3.791516639546771e-022 1.9083328088781097e-014 ;
	setAttr ".rst" -type "double3" 0.16629711011346912 5.3290705182007512e-017 8.8817841970012525e-018 ;
	setAttr ".rsrr" -type "double3" -6.3141436072113367e-038 -3.791516639546771e-022 
		1.9083328088781097e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint4_parentConstraint1" -p "Joint_Knee_Left";
	rename -uid "3EDC4384-4B7F-2F3F-FD89-92A6369BD9D9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle15W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.00013822571584197973 0.0021096243110299184 
		-0.071435558983070524 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -85.955514425818933 ;
	setAttr ".lr" -type "double3" 0 0 -3.4787316828507218e-014 ;
	setAttr ".rst" -type "double3" 0.16618733467146737 1.7763568394002505e-017 -2.6645352591003756e-017 ;
	setAttr ".rsrr" -type "double3" 0 0 9.7404487119820203e-015 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "joint3_orientConstraint1" -p "Joint_Leg_Left";
	rename -uid "A4E2B0DF-447A-A33C-92F3-01973984A67F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle16W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 86.531770741082909 ;
	setAttr ".o" -type "double3" 0 0 -86.531770741082894 ;
	setAttr -k on ".w0";
createNode joint -n "Joint_Leg_Right" -p "Joint_Waist";
	rename -uid "A75693E9-4307-F867-C187-0A90A154EAF0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.0966523469264218 -0.057721487530709652 1.7763568394002505e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 16.189206257026857 ;
	setAttr ".pa" -type "double3" 0 0 -6.3611093629270335e-015 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.6653345369377348e-016 0 0 -1.6653345369377348e-016 1.0000000000000002 0 0
		 0 0 1 0 -10.932504342339932 35.084830848095521 -7.1435558983070502 1;
	setAttr ".radi" 2;
createNode joint -n "Joint_Knee_Right" -p "Joint_Leg_Right";
	rename -uid "6A9F761A-4BC2-E891-FC48-96B8B4F0AEEE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 84.114012166971733 ;
	setAttr ".bps" -type "matrix" -0.10254927073755446 -0.99472792615428063 -1.224646799147353e-016 0
		 -0.99472792615428063 0.10254927073755457 0 0 1.2558663616364143e-017 1.2181903707873245e-016 -1 0
		 -11.770297079754851 17.993859004830259 -7.1435558983070528 1;
	setAttr ".radi" 1.2934131662351123;
createNode joint -n "Joint_Feet_Right" -p "Joint_Knee_Right";
	rename -uid "0401944A-4166-0BC5-768D-7286765E6549";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 84.114012166971719 ;
	setAttr ".pa" -type "double3" -7.0622500768802555e-031 -3.9203363205066218e-047 
		-6.3611093629270351e-015 ;
	setAttr ".bps" -type "matrix" 1 2.7755575615628914e-016 1.3502334353109949e-016 0
		 -4.9960036108132044e-016 1 1.218190370787324e-016 0 -1.3502334353109947e-016 -1.218190370787325e-016 1 0
		 -13.44588255458479 1.7406798989799057 -7.1435558983070528 1;
	setAttr ".radi" 1.2934131662351123;
createNode parentConstraint -n "joint8_parentConstraint1" -p "Joint_Feet_Right";
	rename -uid "F67D95C5-4266-A0E7-2082-07800DEBA576";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle12W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.00069119874900470891 0.00092304769680308547 
		-0.071435558983070524 ;
	setAttr ".tg[0].tor" -type "double3" 1.5890062672980573e-030 -1.4124500153760508e-030 
		1.3517357396219947e-014 ;
	setAttr ".lr" -type "double3" -7.0622500768802555e-031 -3.9203363205066218e-047 
		-6.3611093629270351e-015 ;
	setAttr ".rst" -type "double3" 0.16339321213878855 7.105427357601002e-017 -8.8817841970012525e-018 ;
	setAttr ".rsrr" -type "double3" -7.0622500768802555e-031 -3.9203363205066218e-047 
		-6.3611093629270351e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint7_parentConstraint1" -p "Joint_Knee_Right";
	rename -uid "D57948E9-40A3-57FE-2870-F4B77B8CBB2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle11W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.0012739127881583202 -0.00014972014357887532 
		-0.071435558983070524 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 84.114012166971733 ;
	setAttr ".rst" -type "double3" -0.008377927374149224 -0.17090971843265262 -1.7763568394002505e-017 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "joint6_orientConstraint1" -p "Joint_Leg_Right";
	rename -uid "90714E1D-4E5E-9267-5476-BE8BA94BEACF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle13W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -6.3611093629270335e-015 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint2_parentConstraint1" -p "Joint_Waist";
	rename -uid "331E92AB-4117-D0D1-3D9C-CB83A74271B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle10W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.00041198755945338075 -0.0014917317790555985 
		0.00048003038105608908 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -16.189206257026857 ;
	setAttr ".rst" -type "double3" 0.20274584245442165 -4.5102810375396984e-017 8.8817841970012525e-018 ;
	setAttr -k on ".w0";
createNode joint -n "Joint_Sholder" -p "Joint_Main";
	rename -uid "643BBCA3-412F-2C35-E482-3FB204100C86";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.23797827283622405 3.3382065470783376e-005 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 179.65081359610815 ;
	setAttr ".bps" -type "matrix" 0.0060944147241328971 0.99998142888214225 0 0 -0.99998142888214225 0.0060944147241328971 0 0
		 0 0 1 0 -0.037860549398265018 82.005737684371027 -7.1435558983070528 1;
	setAttr ".radi" 1.3137309765793614;
createNode joint -n "Joint_Neck" -p "Joint_Sholder";
	rename -uid "E24F1B6B-4056-A601-C261-39BD7944F5CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.083849379673516758 -1.3267165144270622e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 0.50744914422980925 ;
	setAttr ".pa" -type "double3" -180 180 179.99999999999997 ;
	setAttr ".bps" -type "matrix" -0.0027622023896239235 0.99999618511170296 1.2246467991473527e-016 0
		 0.99999618511170318 0.0027622023896239217 1.165187616354278e-032 0 -3.3827223150499866e-019 1.2246421272566108e-016 -1 0
		 0.013240740011036665 90.390519934051483 -7.1435558983070528 1;
	setAttr ".radi" 1.8593094898985669;
createNode joint -n "joint11" -p "Joint_Neck";
	rename -uid "3BB25722-4626-4F17-4AE4-81A40303DC08";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 0.15826274033790474 ;
	setAttr ".pa" -type "double3" -1.3776905032789054e-029 -6.8105194833282648e-033 
		-7.2233378586050316e-014 ;
	setAttr ".bps" -type "matrix" 1.8583225236401546e-015 -1.0000000000000004 4.6718907426038667e-022 0
		 1.0000000000000004 1.857021481033172e-015 -3.382722315047714e-019 0 3.3827223150477116e-019 4.6718907428503857e-022 1 0
		 -0.062112095522470649 117.67039933533407 -7.1435558983070466 1;
	setAttr ".radi" 1.8593094898985669;
createNode parentConstraint -n "joint11_parentConstraint1" -p "joint11";
	rename -uid "F916368C-444B-DA0C-0DEC-85AF7E0835FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.00062112095522470702 0.00052063839925807541 
		0.00048003038105613358 ;
	setAttr ".tg[0].tor" -type "double3" 8.0622757225322434e-030 1.4124500153760508e-030 
		-89.999999999999943 ;
	setAttr ".lr" -type "double3" -1.3776905032789054e-029 -6.8105194833282648e-033 
		-7.2233378586050316e-014 ;
	setAttr ".rst" -type "double3" 0.27279983471372277 -9.603429163007604e-017 -1.7763568394002505e-017 ;
	setAttr ".rsrr" -type "double3" -7.05673269400769e-030 -8.2895444818732937e-033 
		-8.62228495678e-015 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "joint10_orientConstraint1" -p "Joint_Neck";
	rename -uid "B7D20814-4302-4013-A592-A1BA6EBC9903";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 -89.84173725966204 ;
	setAttr ".o" -type "double3" -180 0 90.158262740337975 ;
	setAttr ".rsrr" -type "double3" -180 180 180 ;
	setAttr -k on ".w0";
createNode joint -n "Joint_Arm_Left" -p "Joint_Sholder";
	rename -uid "CA9950C0-4DFD-6B55-0CEC-2B8B82ADEAB5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.031966341536926846 -0.16123446638817146 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.650813596107966 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 3.4035274598664955e-015 0 0 -3.4035274598664955e-015 1.0000000000000004 0 0
		 0 0 1 0 16.06580504473715 78.710899925148581 -7.1435558983070528 1;
	setAttr ".radi" 0.6132375595265116;
createNode joint -n "Joint_Upper_Left" -p "Joint_Arm_Left";
	rename -uid "B644E979-4820-8C1C-F2CA-A48F299B59C9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.031892594841792285 1.4210854715202004e-016 8.8817841970012525e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 0 -68.158 ;
	setAttr ".bps" -type "matrix" 0.37204835137190106 -0.92821335060504895 0 0 0.92821335060504895 0.37204835137190106 0 0
		 0 0 1 0 19.255064528916378 78.71089992514861 -7.143555898307052 1;
	setAttr ".radi" 1.331595157028381;
createNode joint -n "Joint_Elbow_Left" -p "Joint_Upper_Left";
	rename -uid "8A0A071C-4242-37A1-6D35-DA8C4A8E74B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.1707750636921537 -4.263256414560601e-016 8.8817841970012525e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.37204835137190106 -0.92821335060504895 0 0 0.92821335060504895 0.37204835137190106 0 0
		 0 0 1 0 25.608722619126056 62.859330518200132 -7.1435558983070511 1;
	setAttr ".radi" 1.4332228492225865;
createNode joint -n "Joint_Fist_Left" -p "Joint_Elbow_Left";
	rename -uid "0ED67EE1-49F5-0918-0818-15B7E7C23C14";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.650813596107966 ;
	setAttr ".pa" -type "double3" 0 0 1.272221872585407e-014 ;
	setAttr ".bps" -type "matrix" 0.93046352959620893 0.36638452490705153 0 0 -0.36638452490705153 0.93046352959620893 0 0
		 0 0 1 0 32.677499181194648 45.226545445296196 -7.1435558983070511 1;
	setAttr ".radi" 1.4332228492225865;
createNode parentConstraint -n "joint15_parentConstraint1" -p "Joint_Fist_Left";
	rename -uid "9938119C-48F5-7808-9698-D8819D2A8ABD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0063345043231083763 -0.0054992657626098665 
		-0.0033125158699782277 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 178.88697176038883 ;
	setAttr ".lr" -type "double3" 0 0 1.272221872585407e-014 ;
	setAttr ".rst" -type "double3" 0.19042308418303358 -5.6843418860808016e-016 1.7763568394002505e-017 ;
	setAttr ".rsrr" -type "double3" 0 0 1.2722218725854067e-014 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "joint14_orientConstraint1" -p "Joint_Elbow_Left";
	rename -uid "0DC67238-459A-0E84-D517-C5957D81A9AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "joint13_orientConstraint1" -p "Joint_Upper_Left";
	rename -uid "2CA017A7-4533-BD6B-D38A-98B787C1ECD7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -68.158 ;
	setAttr -k on ".w0";
createNode joint -n "Joint_Arm_Right" -p "Joint_Sholder";
	rename -uid "1E9634BC-438C-A989-43EB-29ADA13C46E6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.03431189104033152 0.16376543889194436 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.4124500153760511e-030 89.394345150019305 ;
	setAttr ".bps" -type "matrix" -0.99986114003960014 0.016664352333999488 0 0 0.016664352333999488 0.99986114003960014 1.2246467991473532e-016 0
		 2.0407945745696204e-018 1.2244767447413198e-016 -1 0 -16.435011397262937 78.674417751563837 -7.1435558983070528 1;
	setAttr ".radi" 0.61394550787278968;
createNode joint -n "Joint_Upper_Right" -p "Joint_Arm_Right";
	rename -uid "CA6042F3-4EA9-E747-C2DB-F2A2D71EE21D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.032029464855406073 -2.8421709430404008e-016 8.8817841970012525e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.7433997533348874e-019 1.1692891597601688e-016 -0.95484125387235486 ;
	setAttr ".pa" -type "double3" 180 180 111.84199999999981 ;
	setAttr ".bps" -type "matrix" -0.37204835137189768 -0.92821335060505006 8.0478394603475241e-018 0
		 -0.92821335060505006 0.37204835137189768 1.6612684256220102e-016 0 -1.5719533856342628e-016 5.4337105863264962e-017 -1 0
		 -19.637513121781399 78.727792780305805 -7.1435558983070537 1;
	setAttr ".radi" 1.3317246136602687;
createNode joint -n "Joint_Elbow_Right" -p "Joint_Upper_Right";
	rename -uid "58B23ECD-45EE-64C7-B2EF-2893A5ED1107";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.1708000919743187 -7.1054273576010023e-016 -8.8817841970012525e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9440220565099062e-019 1.3685942891865168e-016 -0.1627716629914471 ;
	setAttr ".pa" -type "double3" 1.9933752794117347e-017 359.99999999999994 -6.8673579937553605e-033 ;
	setAttr ".bps" -type "matrix" -0.36940989091878573 -0.92926655621052634 -1.1255319218979422e-015 0
		 -0.92926655621052634 0.36940989091878573 1.6614903526897398e-016 0 2.6138588267182928e-016 1.1072962699620891e-015 -1 0
		 -25.992102385102712 62.873900214792471 -7.1435558983070528 1;
	setAttr ".radi" 1.4200734103702211;
createNode joint -n "Joint_Fist_Right" -p "Joint_Elbow_Right";
	rename -uid "A07CC345-43AB-100E-81B4-ABA7D13736E6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 90.511958066883082 ;
	setAttr ".pa" -type "double3" 6.2298606471249761e-014 4.2244412629495799e-016 -2.0355549961366507e-013 ;
	setAttr ".bps" -type "matrix" -0.92592869569482938 0.37769835912917632 1.7619929481916975e-016 0
		 -0.37769835912917643 -0.92592869569482938 -1.0015377300636922e-015 0 -2.1513117401675395e-016 -9.9390270861995346e-016 1 0
		 -32.907105321047858 45.424378907182742 -7.1435558983070626 1;
	setAttr ".radi" 1.4200734103702211;
createNode parentConstraint -n "joint19_parentConstraint1" -p "Joint_Fist_Right";
	rename -uid "8514D85F-4B7D-082E-22CA-10BE192AF766";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.00023773304398716277 -0.00077032238125369196 
		-0.0015335322289336873 ;
	setAttr ".tg[0].tor" -type "double3" -1.1410676631126995e-014 -1.1230621778902277e-016 
		89.650813596108151 ;
	setAttr ".lr" -type "double3" 6.2298606471249761e-014 4.2244412629495799e-016 -2.0355549961366507e-013 ;
	setAttr ".rst" -type "double3" 0.1878808593382427 -6.2527760746888817e-015 8.8817841970012525e-018 ;
	setAttr ".rsrr" -type "double3" 1.1410676631126994e-014 1.1230621778902642e-016 
		-1.2722218725854067e-014 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "joint18_orientConstraint1" -p "Joint_Elbow_Right";
	rename -uid "B0EA567E-4EF5-2309-719A-399E44180863";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 0.16277166299143783 ;
	setAttr ".o" -type "double3" 0 179.99999999999997 0.16277166299143783 ;
	setAttr ".rsrr" -type "double3" -9.221879476580595e-017 -1.309923418985161e-019 
		1.0541750191803681e-037 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "joint17_orientConstraint1" -p "Joint_Upper_Right";
	rename -uid "207641C9-4226-C897-22E4-5FB129B3F599";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 -6.5130032482146667e-015 111.84199999999981 ;
	setAttr ".o" -type "double3" 0 180 0 ;
	setAttr ".rsrr" -type "double3" 0 360 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint1_parentConstraint1" -p "Joint_Main";
	rename -uid "370BE7AB-46B7-4F95-CA26-F880CE29BA2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.00041198755945338075 -0.0013754415369358953 
		0.00048003038105608019 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".rst" -type "double3" -0.00041198755945338075 0.58207910400748619 -0.071435558983070524 ;
	setAttr -k on ".w0";
createNode transform -n "nurbsCircle9";
	rename -uid "12FD1098-4953-2318-D0B6-F4A77825235E";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0.58345454554442211 -0.071915589364126606 ;
	setAttr ".sp" -type "double3" 0 0.58345454554442211 -0.071915589364126606 ;
createNode nurbsCurve -n "nurbsCircleShape9" -p "nurbsCircle9";
	rename -uid "69E68DE3-488C-7BBB-03AB-C4B83810FCD9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.22420300863988421 0.58345454554442211 -0.29611859800401047
		-3.6174002515802022e-017 0.58345454554442211 -0.38898652490750274
		-0.22420300863988396 0.58345454554442211 -0.29611859800401058
		-0.31707093554337618 0.58345454554442211 -0.071915589364126703
		-0.22420300863988402 0.58345454554442211 0.15228741927575729
		-9.5539660873121426e-017 0.58345454554442211 0.24515534617924964
		0.22420300863988385 0.58345454554442211 0.15228741927575737
		0.31707093554337618 0.58345454554442211 -0.071915589364126439
		0.22420300863988421 0.58345454554442211 -0.29611859800401047
		-3.6174002515802022e-017 0.58345454554442211 -0.38898652490750274
		-0.22420300863988396 0.58345454554442211 -0.29611859800401058
		;
createNode transform -n "nurbsCircle1" -p "nurbsCircle9";
	rename -uid "CFA2DE3E-4851-40D5-686F-5C8EDCA6BA85";
	setAttr ".rp" -type "double3" 0.19278563430415152 0.78743908570406163 -0.070988288041316183 ;
	setAttr ".sp" -type "double3" 0.19278563430415152 0.78743908570406163 -0.070988288041316183 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "FE4D19D7-4E09-0600-4935-49967C6274A3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.19344058555930158 0.68809451060181415 -0.17033502207617346
		0.19278563430415152 0.78743908570406163 -0.21148578669088419
		0.19213068304900149 0.88678366080630899 -0.17033502207617349
		0.19185939335642502 0.92793353116185229 -0.070988288041316225
		0.19213068304900144 0.88678366080630899 0.02835844599354112
		0.19278563430415152 0.78743908570406163 0.069509210608251867
		0.19344058555930155 0.68809451060181437 0.028358445993541155
		0.193711875251878 0.64694464024627096 -0.070988288041316114
		0.19344058555930158 0.68809451060181415 -0.17033502207617346
		0.19278563430415152 0.78743908570406163 -0.21148578669088419
		0.19213068304900149 0.88678366080630899 -0.17033502207617349
		;
createNode transform -n "nurbsCircle2" -p "nurbsCircle1";
	rename -uid "9B43EF37-4929-CEF4-4816-39A0E6D9A400";
	setAttr ".rp" -type "double3" 0.3651735118396312 0.78743908570406163 -0.070988288041316183 ;
	setAttr ".sp" -type "double3" 0.3651735118396312 0.78743908570406163 -0.070988288041316183 ;
createNode nurbsCurve -n "nurbsCircleShape2" -p "nurbsCircle2";
	rename -uid "C470735C-449D-F67C-C21C-D69E74220EBD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.36582846309478129 0.68809451060181404 -0.17033502207617343
		0.36517351183963115 0.78743908570406151 -0.21148578669088416
		0.36451856058448107 0.88678366080630877 -0.17033502207617346
		0.36424727089190467 0.92793353116185229 -0.070988288041316211
		0.36451856058448107 0.88678366080630877 0.028358445993541138
		0.36517351183963115 0.78743908570406151 0.069509210608251881
		0.36582846309478129 0.68809451060181415 0.028358445993541172
		0.36609975278735762 0.64694464024627085 -0.0709882880413161
		0.36582846309478129 0.68809451060181404 -0.17033502207617343
		0.36517351183963115 0.78743908570406151 -0.21148578669088416
		0.36451856058448107 0.88678366080630877 -0.17033502207617346
		;
createNode transform -n "nurbsCircle3" -p "nurbsCircle2";
	rename -uid "813A2096-4AD1-9A36-AC24-0AAE920C3CA9";
	setAttr ".t" -type "double3" 0.55423843265241657 0.78655995233375275 -0.071145056800385881 ;
	setAttr ".r" -type "double3" 0 0 -89.236158164280852 ;
	setAttr ".s" -type "double3" 0.087698351973940908 0.087698351973940908 0.087698351973940908 ;
createNode nurbsCurve -n "nurbsCircleShape3" -p "nurbsCircle3";
	rename -uid "1D18B2EC-4D12-FA52-8737-F5A9FD350BDE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884707e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884707e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884713e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884707e-017 -0.78361162489122427
		;
createNode transform -n "nurbsCircle4" -p "nurbsCircle9";
	rename -uid "BAFCF2E1-49B9-A4CC-3916-AC8DC1A26824";
	setAttr ".rp" -type "double3" -0.19631871123928168 0.78751449989689182 -0.069902026754136939 ;
	setAttr ".sp" -type "double3" -0.19631871123928168 0.78751449989689182 -0.069902026754136939 ;
createNode nurbsCurve -n "nurbsCircleShape4" -p "nurbsCircle4";
	rename -uid "5ED12E62-47F0-146A-D31D-01BAA588B109";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.19613458655043237 0.69012604452183834 -0.16729065618406469
		-0.19631871123928168 0.78751449989689182 -0.20763034731486843
		-0.196502835928131 0.88490295527194518 -0.16729065618406477
		-0.19657910287142014 0.92524257430685919 -0.069902026754136981
		-0.196502835928131 0.88490295527194518 0.027486602675790863
		-0.19631871123928168 0.78751449989689182 0.067826293806594593
		-0.19613458655043237 0.69012604452183857 0.027486602675790898
		-0.19605831960714323 0.64978642548692434 -0.06990202675413687
		-0.19613458655043237 0.69012604452183834 -0.16729065618406469
		-0.19631871123928168 0.78751449989689182 -0.20763034731486843
		-0.196502835928131 0.88490295527194518 -0.16729065618406477
		;
createNode transform -n "nurbsCircle5" -p "nurbsCircle4";
	rename -uid "0B3252C9-4C39-4A14-68B4-9EB64638221B";
	setAttr ".rp" -type "double3" -0.36712681385501073 0.78751449989689182 -0.069902026754136939 ;
	setAttr ".sp" -type "double3" -0.36712681385501073 0.78751449989689182 -0.069902026754136939 ;
createNode nurbsCurve -n "nurbsCircleShape5" -p "nurbsCircle5";
	rename -uid "B118152D-4233-854C-449F-92859B546531";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.36694268916616141 0.69012604452183834 -0.16729065618406469
		-0.36712681385501073 0.78751449989689182 -0.20763034731486843
		-0.36731093854386004 0.88490295527194518 -0.16729065618406477
		-0.36738720548714915 0.92524257430685919 -0.069902026754136981
		-0.36731093854386004 0.88490295527194518 0.027486602675790863
		-0.36712681385501073 0.78751449989689182 0.067826293806594593
		-0.36694268916616141 0.69012604452183857 0.027486602675790898
		-0.36686642222287225 0.64978642548692434 -0.06990202675413687
		-0.36694268916616141 0.69012604452183834 -0.16729065618406469
		-0.36712681385501073 0.78751449989689182 -0.20763034731486843
		-0.36731093854386004 0.88490295527194518 -0.16729065618406477
		;
createNode transform -n "nurbsCircle6" -p "nurbsCircle5";
	rename -uid "D199405F-4A67-14B7-6B1B-91BDEBA7599B";
	setAttr ".rp" -type "double3" -0.55481759131989616 0.78751449989689182 -0.069902026754136939 ;
	setAttr ".sp" -type "double3" -0.55481759131989616 0.78751449989689182 -0.069902026754136939 ;
createNode nurbsCurve -n "nurbsCircleShape6" -p "nurbsCircle6";
	rename -uid "2ED6F11F-429A-3C3F-29CA-50A4F7F82FD6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.55470919612282088 0.73018139112582081 -0.12723523799225092
		-0.55481759131989616 0.78751449989689182 -0.15098343166147932
		-0.55492598651697156 0.84484760866796282 -0.12723523799225095
		-0.55497088527769622 0.86859575989395221 -0.069902026754136967
		-0.55492598651697156 0.84484760866796282 -0.012568815516022954
		-0.55481759131989616 0.78751449989689182 0.011179378153205457
		-0.55470919612282088 0.73018139112582092 -0.012568815516022935
		-0.55466429736209621 0.70643323989983131 -0.069902026754136898
		-0.55470919612282088 0.73018139112582081 -0.12723523799225092
		-0.55481759131989616 0.78751449989689182 -0.15098343166147932
		-0.55492598651697156 0.84484760866796282 -0.12723523799225095
		;
createNode transform -n "nurbsCircle8" -p "nurbsCircle9";
	rename -uid "E080D040-452F-9C0B-67D1-8885137F0011";
	setAttr ".rp" -type "double3" 0 0.90516189111793444 -0.071915589364126606 ;
	setAttr ".sp" -type "double3" 0 0.90516189111793444 -0.071915589364126606 ;
createNode nurbsCurve -n "nurbsCircleShape8" -p "nurbsCircle8";
	rename -uid "7084E003-4D1E-629B-EF29-5AA2649E7942";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.2384989586425926 0.90516189111793444 -0.3104145480067188
		-3.8480580534094318e-017 0.90516189111793444 -0.4092040512883407
		-0.23849895864259235 0.90516189111793444 -0.31041454800671897
		-0.33728846192421408 0.90516189111793444 -0.071915589364126703
		-0.23849895864259243 0.90516189111793444 0.1665833692784657
		-1.0163159613930541e-016 0.90516189111793444 0.26537287256008751
		0.23849895864259221 0.90516189111793444 0.16658336927846576
		0.33728846192421408 0.90516189111793444 -0.071915589364126439
		0.2384989586425926 0.90516189111793444 -0.3104145480067188
		-3.8480580534094318e-017 0.90516189111793444 -0.4092040512883407
		-0.23849895864259235 0.90516189111793444 -0.31041454800671897
		;
createNode transform -n "nurbsCircle7" -p "nurbsCircle8";
	rename -uid "99FE7EF7-4D00-4664-0952-B8A2BE7A5BA5";
	setAttr ".rp" -type "double3" 0 1.1761833549540828 -0.071915589364126606 ;
	setAttr ".sp" -type "double3" 0 1.1761833549540828 -0.071915589364126606 ;
createNode nurbsCurve -n "nurbsCircleShape7" -p "nurbsCircle7";
	rename -uid "78EFB79B-4DBD-7CC2-4DD4-54BE1C1D49E0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.30476756308188718 1.1761833549540828 -0.37668315244601325
		-4.9172679084636618e-017 1.1761833549540828 -0.50292201044592888
		-0.30476756308188685 1.1761833549540828 -0.37668315244601347
		-0.43100642108180226 1.1761833549540828 -0.071915589364126731
		-0.30476756308188696 1.1761833549540828 0.23285197371776015
		-1.2987064624426881e-016 1.1761833549540828 0.3590908317176757
		0.30476756308188668 1.1761833549540828 0.23285197371776026
		0.43100642108180226 1.1761833549540828 -0.071915589364126384
		0.30476756308188718 1.1761833549540828 -0.37668315244601325
		-4.9172679084636618e-017 1.1761833549540828 -0.50292201044592888
		-0.30476756308188685 1.1761833549540828 -0.37668315244601347
		;
createNode transform -n "nurbsCircle10" -p "nurbsCircle9";
	rename -uid "06C5B3DD-4E92-CC1D-61D5-9AA78AFC9CFF";
	setAttr ".rp" -type "double3" 0 0.38082499333212005 -0.071915589364126606 ;
	setAttr ".sp" -type "double3" 0 0.38082499333212005 -0.071915589364126606 ;
createNode nurbsCurve -n "nurbsCircleShape10" -p "nurbsCircle10";
	rename -uid "0C3481F2-43CB-2ECE-FCCF-B29507C7515A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.33794904561795563 0.38082499333212005 -0.4098646349820817
		-5.4526340661345073e-017 0.38082499333212005 -0.54984771306808289
		-0.33794904561795525 0.38082499333212005 -0.40986463498208187
		-0.47793212370395621 0.38082499333212005 -0.071915589364126759
		-0.33794904561795536 0.38082499333212005 0.26603345625382857
		-1.4401027625188964e-016 0.38082499333212005 0.4060165343398297
		0.33794904561795508 0.38082499333212005 0.26603345625382874
		0.47793212370395621 0.38082499333212005 -0.071915589364126356
		0.33794904561795563 0.38082499333212005 -0.4098646349820817
		-5.4526340661345073e-017 0.38082499333212005 -0.54984771306808289
		-0.33794904561795525 0.38082499333212005 -0.40986463498208187
		;
createNode transform -n "nurbsCircle13" -p "nurbsCircle10";
	rename -uid "6CC6C86F-4B2A-1747-BFF8-6FBBEF548F3A";
	setAttr ".rp" -type "double3" -0.10938544318741913 0.3506725129838496 0 ;
	setAttr ".sp" -type "double3" -0.10938544318741913 0.3506725129838496 0 ;
createNode nurbsCurve -n "nurbsCircleShape13" -p "nurbsCircle13";
	rename -uid "62C2446E-4CC6-512E-052A-0791B5A3B309";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.080664373508490914 0.3506725129838496 -0.19004981669590973
		-0.10938544318741916 0.3506725129838496 -0.26877102829787641
		-0.29943525988332892 0.3506725129838496 -0.19004981669590984
		-0.37815647148529552 0.3506725129838496 -7.7883119880504349e-017
		-0.29943525988332903 0.3506725129838496 0.19004981669590978
		-0.10938544318741922 0.3506725129838496 0.26877102829787647
		0.080664373508490594 0.3506725129838496 0.19004981669590987
		0.15938558511045725 0.3506725129838496 1.443574435996978e-016
		0.080664373508490914 0.3506725129838496 -0.19004981669590973
		-0.10938544318741916 0.3506725129838496 -0.26877102829787641
		-0.29943525988332892 0.3506725129838496 -0.19004981669590984
		;
createNode transform -n "nurbsCircle11" -p "nurbsCircle13";
	rename -uid "8A659AD5-447D-849D-D9B8-A0B8C1F71A15";
	setAttr ".rp" -type "double3" -0.11897688358570684 0.18008831019188143 0 ;
	setAttr ".sp" -type "double3" -0.11897688358570684 0.18008831019188143 0 ;
createNode nurbsCurve -n "nurbsCircleShape11" -p "nurbsCircle11";
	rename -uid "D7C8C01B-4BD0-8B49-CC24-8C85DC3A3A89";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.0012607418117907086 0.18008831019188143 -0.12023762539749734
		-0.11897688358570686 0.18008831019188143 -0.17004168054467655
		-0.23921450898320423 0.18008831019188143 -0.1202376253974974
		-0.28901856413038346 0.18008831019188143 -4.9273824914886135e-017
		-0.23921450898320429 0.18008831019188143 0.12023762539749738
		-0.11897688358570686 0.18008831019188143 0.17004168054467658
		0.0012607418117905132 0.18008831019188143 0.12023762539749744
		0.051064796958969733 0.18008831019188143 9.1329718326712693e-017
		0.0012607418117907086 0.18008831019188143 -0.12023762539749734
		-0.11897688358570686 0.18008831019188143 -0.17004168054467655
		-0.23921450898320423 0.18008831019188143 -0.1202376253974974
		;
createNode transform -n "nurbsCircle12" -p "nurbsCircle11";
	rename -uid "691AE901-4E20-8DB5-139C-D590A0193988";
	setAttr ".rp" -type "double3" -0.13515002429485259 0.016483751292996004 0 ;
	setAttr ".sp" -type "double3" -0.13515002429485259 0.016483751292996004 0 ;
createNode nurbsCurve -n "nurbsCircleShape12" -p "nurbsCircle12";
	rename -uid "984D5147-4FB7-24E1-9F1C-B8B4A1696E6C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.014912398897355048 0.016483751292996011 -0.12023762539749734
		-0.13515002429485262 0.016483751292996018 -0.17004168054467655
		-0.25538764969235006 0.016483751292996011 -0.1202376253974974
		-0.30519170483952918 0.016483751292996004 -4.9273824914886135e-017
		-0.25538764969235006 0.016483751292996 0.12023762539749738
		-0.13515002429485262 0.016483751292995993 0.17004168054467658
		-0.014912398897355244 0.016483751292996 0.12023762539749744
		0.034891656249823981 0.016483751292996004 9.1329718326712693e-017
		-0.014912398897355048 0.016483751292996011 -0.12023762539749734
		-0.13515002429485262 0.016483751292996018 -0.17004168054467655
		-0.25538764969235006 0.016483751292996011 -0.1202376253974974
		;
createNode transform -n "nurbsCircle16" -p "nurbsCircle10";
	rename -uid "DC581DF9-4BF6-0221-A9DD-1BA782E981A0";
	setAttr ".rp" -type "double3" 0.11366605044482386 0.34987137116094519 0 ;
	setAttr ".sp" -type "double3" 0.11366605044482386 0.34987137116094519 0 ;
createNode nurbsCurve -n "nurbsCircleShape16" -p "nurbsCircle16";
	rename -uid "6E231E42-4227-7B39-3D4E-5CA710C81192";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.30725441841586204 0.34987137116094519 -0.19358836797103784
		0.11366605044482382 0.34987137116094519 -0.27377529550231516
		-0.079922317526214093 0.34987137116094519 -0.19358836797103796
		-0.1601092450574913 0.34987137116094519 -7.9333231319470256e-017
		-0.079922317526214162 0.34987137116094519 0.19358836797103793
		0.11366605044482377 0.34987137116094519 0.27377529550231527
		0.30725441841586171 0.34987137116094519 0.19358836797103798
		0.38744134594713908 0.34987137116094519 1.4704524527719839e-016
		0.30725441841586204 0.34987137116094519 -0.19358836797103784
		0.11366605044482382 0.34987137116094519 -0.27377529550231516
		-0.079922317526214093 0.34987137116094519 -0.19358836797103796
		;
createNode transform -n "nurbsCircle15" -p "nurbsCircle16";
	rename -uid "6B8C077F-4EBC-17DD-D223-F8B2477C19ED";
	setAttr ".rp" -type "double3" 0.11366605044482386 0.18118013668693267 0 ;
	setAttr ".sp" -type "double3" 0.11366605044482386 0.18118013668693267 0 ;
createNode nurbsCurve -n "nurbsCircleShape15" -p "nurbsCircle15";
	rename -uid "0B4E5EB0-417D-6349-5C37-7EA9A92E76CF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23354301015597007 0.18118013668693267 -0.11987695971114601
		0.11366605044482384 0.18118013668693267 -0.16953162223955592
		-0.0062109092663222044 0.18118013668693267 -0.11987695971114606
		-0.055865571794732054 0.18118013668693267 -4.9126022778713437e-017
		-0.0062109092663222574 0.18118013668693267 0.11987695971114605
		0.11366605044482381 0.18118013668693267 0.16953162223955595
		0.2335430101559699 0.18118013668693267 0.11987695971114609
		0.28319767268437979 0.18118013668693267 9.1055765016044068e-017
		0.23354301015597007 0.18118013668693267 -0.11987695971114601
		0.11366605044482384 0.18118013668693267 -0.16953162223955592
		-0.0062109092663222044 0.18118013668693267 -0.11987695971114606
		;
createNode transform -n "nurbsCircle14" -p "nurbsCircle15";
	rename -uid "926C8D84-4D99-AF1C-4EA8-02A78E1145FE";
	setAttr ".rp" -type "double3" 0.12693908508310375 0.016389252247441987 0 ;
	setAttr ".sp" -type "double3" 0.12693908508310375 0.016389252247441987 0 ;
createNode nurbsCurve -n "nurbsCircleShape14" -p "nurbsCircle14";
	rename -uid "2BC2CDBB-48B2-B055-D4F9-38B6751D71A3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.2468160447942499 0.016389252247441994 -0.11987695971114595
		0.12693908508310373 0.016389252247441997 -0.16953162223955584
		0.0070621253719577127 0.016389252247441994 -0.11987695971114602
		-0.042592537156452101 0.016389252247441987 -4.9126022778713418e-017
		0.0070621253719576772 0.01638925224744198 0.11987695971114601
		0.1269390850831037 0.016389252247441977 0.16953162223955587
		0.24681604479424971 0.01638925224744198 0.11987695971114605
		0.29647070732265962 0.016389252247441987 9.1055765016044043e-017
		0.2468160447942499 0.016389252247441994 -0.11987695971114595
		0.12693908508310373 0.016389252247441997 -0.16953162223955584
		0.0070621253719577127 0.016389252247441994 -0.11987695971114602
		;
createNode transform -n "Hero";
	rename -uid "05CBFF6E-4E9D-16B6-7E96-9AB0DF790FBB";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.00062276599821508682 0.84554424285888674 -0.071608238220214851 ;
	setAttr ".sp" -type "double3" -0.00062276599821508682 0.84554424285888674 -0.071608238220214851 ;
createNode mesh -n "HeroShape" -p "Hero";
	rename -uid "C90B1042-4206-E724-EB2A-A5A9235809A2";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49998403958881177 0.51178626013771589 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "HeroShapeOrig1" -p "Hero";
	rename -uid "9A6D7E2C-427D-F7AB-2A6A-5096E546C3D0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1186 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.97607744 0.56003976 0.88838136
		 0.51607519 0.88894618 0.50864172 0.97247446 0.55500746 0.94987261 0.47446078 0.89979398
		 0.47461271 0.905882 0.47062248 0.95608604 0.47026092 0.76173651 0.46856397 0.76766992
		 0.47266763 0.74563408 0.55301332 0.74166441 0.55800498 0.82938945 0.5153932 0.82891548
		 0.50794721 0.81249052 0.47005892 0.81850898 0.47415757 0.85869199 0.5293982 0.78351718
		 0.47369891 0.85875732 0.52360976 0.8598268 0.36149216 0.85979897 0.36610079 0.85879707
		 0.38231581 0.82377082 0.47778159 0.8575269 0.51827848 0.85754132 0.51917017 0.86095387
		 0.3837809 0.95399058 0.5456748 0.83152282 0.50532413 0.93235695 0.47508949 0.76056826
		 0.54386747 0.95317996 0.54797792 0.88387299 0.50716883 0.89253724 0.48001811 0.93274879
		 0.47733861 0.82456219 0.47830483 0.83184755 0.50585753 0.76057315 0.54312301 0.78453654
		 0.47360283 0.8837688 0.50581223 0.89203382 0.4784196 0.50720513 0.15717292 0.50295806
		 0.1530003 0.5031054 0.1449219 0.51423419 0.15321147 0.50565004 0.16290742 0.51262367
		 0.16705003 0.4999603 0.16453999 0.499865 0.17265743 0.49575561 0.1603024 0.488671
		 0.16421843 0.49721014 0.15450764 0.4902907 0.15040815 0.55307943 0.14143229 0.53956079
		 0.14384276 0.53357911 0.13676375 0.5562194 0.1327126 0.56192595 0.15193456 0.57104737
		 0.15029418 0.55725437 0.16484761 0.56323582 0.17192629 0.5437355 0.1672574 0.54059052
		 0.17597562 0.53488874 0.15675503 0.52576745 0.15839565 0.49678612 0.20472753 0.46986234
		 0.20313406 0.47068954 0.18916503 0.49761271 0.19075891 0.52370936 0.20632064 0.52453589
		 0.19235161 0.38909221 0.19834763 0.36216879 0.19675079 0.36299729 0.18278193 0.38992047
		 0.1843788 0.41601551 0.19994378 0.41684353 0.18597522 0.44293892 0.20153946 0.44376659
		 0.18757084 0.54696274 0.13327217 0.56728035 0.14358974 0.55959105 0.14860809 0.54746425
		 0.14244044 0.52786875 0.14570874 0.53605962 0.14985913 0.52909219 0.16846323 0.53678155
		 0.16344512 0.54940987 0.17878053 0.54890865 0.16961217 0.56850392 0.16634393 0.56031334
		 0.16219422 0.25469542 0.77531528 0.24785852 0.73636997 0.31904602 0.73146355 0.32293177
		 0.75652301 0.27012825 0.81161857 0.33214974 0.78013027 0.29134202 0.84460664 0.34636807
		 0.80132651 0.31875205 0.87132168 0.36459661 0.81943071 0.3504771 0.89094388 0.38601589
		 0.83457518 0.25033188 0.69727242 0.26157188 0.66070247 0.3270545 0.67957568 0.32069778
		 0.70559549 0.24795413 0.18878222 0.2462852 0.22795963 0.24043083 0.23093081 0.24143815
		 0.18797255 0.26723647 0.14642906 0.26242328 0.14201927 0.29589152 0.11940193 0.29434657
		 0.11302471 0.34228158 0.12208271 0.34457517 0.11600876 0.37901855 0.14896393 0.38466263
		 0.14558983 0.27863181 0.26139736 0.32297277 0.27239084 0.32387829 0.27890635 0.27541173
		 0.26707363 0.20924187 0.43347859 0.20355129 0.46902871 0.12798882 0.46302569 0.13534546
		 0.415093 0.22137737 0.39787054 0.15070629 0.36851239 0.23755741 0.36593294 0.17387962
		 0.32547617 0.26472473 0.34598494 0.20528412 0.28839636 0.29142952 0.31907558 0.24147034
		 0.25742722 0.21331882 0.5015533 0.21860409 0.53933883 0.13911915 0.5571363 0.13028812
		 0.51141012 0.18040705 0.79813218 0.16938829 0.73977351 0.17708588 0.73944139 0.18766069
		 0.79557824 0.20696831 0.84923458 0.21193099 0.84324884 0.23273778 0.8937006 0.20430875
		 0.84414697 0.23863482 0.88913488 0.27571797 0.93340898 0.27982891 0.92704415 0.32844383
		 0.95614767 0.32830226 0.94840503 0.17463303 0.67948103 0.19672155 0.62542605 0.20237684
		 0.63105488 0.1820364 0.68149424 0.29410934 0.31562424 0.24721146 0.25498533 0.21866703
		 0.54373336 0.14194012 0.56264162 0.085619926 0.46024203 0.093829155 0.40490729 0.2165482
		 0.78622365 0.20783663 0.73804927 0.11159325 0.35148042 0.23665929 0.82965612 0.1385231
		 0.3017661 0.26164126 0.86990833 0.17481995 0.25806737 0.29603577 0.90231514 0.21812057
		 0.22212315 0.33661699 0.92272782 0.22536659 0.22020435 0.099068642 0.57042772 0.087454796
		 0.51629442 0.10350704 0.57637215 0.21158552 0.68918443 0.2279706 0.64489174 0.053752899
		 0.45834559 0.062766075 0.39754167 0.082174301 0.33884799 0.11220741 0.28399575 0.15194702
		 0.23518503 0.20079613 0.19491839 0.20916748 0.19319308 0.068906784 0.58098167 0.055393219
		 0.52025205 0.074344635 0.5874567 0.26927853 0.18877029 0.27057147 0.21704054 0.14515162
		 0.17144775 0.12906921 0.18514848 0.094968736 0.14601707 0.12095517 0.12468934 0.28161597
		 0.16264153 0.10635972 0.21118259 0.062925458 0.182621 0.30349803 0.14487743 0.094641805
		 0.22953367 0.045548081 0.21061182 0.3319242 0.14731121 0.28067493 0.36884189 0.24171257
		 0.3932929 0.35354185 0.16660976 0.31639004 0.34497881 0.31754017 0.33885789 0.29111469
		 0.23712397 0.32007492 0.24128103 0.25436401 0.53343725 0.2515974 0.53907752 0.23974037
		 0.49279261 0.22358418 0.44973302 0.13175285 0.90476239 0.11801863 0.86612201 0.14537132
		 0.82952261 0.16361761 0.85502005 0.26373911 0.5020802 0.24270868 0.45655203 0.24806929
		 0.45506001 0.26942682 0.50303936 0.16533887 0.096609354 0.18774587 0.11307836 0.16472137
		 0.16026378 0.16093576 0.098007679 0.085130215 0.83986127 0.11312091 0.80480206 0.25414658
		 0.55988169 0.25983334 0.56084061 0.044608831 0.83588588 0.083425522 0.79305333 0.043337584
		 0.2800312 0.023890495 0.2601335 0.024402142 0.25522137 0.086185813 0.2506659 0.21953869
		 0.5961709 0.22383833 0.60028076 0.10627759 0.78381014 0.12955308 0.78602725 0.16024518
		 0.80893594 0.16782522 0.83068073 0.099040508 0.67391562 0.10769463 0.65941709 0.11326599
		 0.66881096 0.11114454 0.68076968 0.089773178 0.69094491 0.1000495 0.69690442 0.08042717
		 0.70513904 0.091745377 0.70507371 0.25673771 0.46514225 0.27600241 0.51044607 0.30045176
		 0.47970557;
	setAttr ".uvst[0].uvsp[250:499]" 0.2991786 0.48609138 0.32444525 0.5123198
		 0.31953859 0.51415706 0.26842308 0.55611515 0.31485271 0.57012081 0.31106377 0.56621361
		 0.23507452 0.59260321 0.28293037 0.59368896 0.28440905 0.58640862 0.065085411 0.63057441
		 0.11541653 0.59736699 0.15465832 0.64004272 0.16176128 0.68277866 0.034152985 0.68028891
		 0.13089228 0.73976314 0.029933453 0.74214983 0.091192245 0.75595784 0.56779432 0.50003052
		 0.55680323 0.49781847 0.55673456 0.47331476 0.57504034 0.47656631 0.5459218 0.49929905
		 0.5387044 0.47587824 0.53617573 0.5043726 0.52242327 0.4840827 0.5284853 0.5125556
		 0.50923777 0.49727011 0.52352905 0.52305031 0.50013733 0.514431 0.52172375 0.53489065
		 0.49568558 0.53440237 0.5234375 0.54698563 0.49620581 0.55600309 0.52932072 0.55783987
		 0.50254917 0.57790232 0.59324074 0.53663969 0.5917964 0.52484417 0.61923695 0.51674843
		 0.62625122 0.53781128 0.5862422 0.51418209 0.6073494 0.49899149 0.57791233 0.50566387
		 0.59227705 0.48533535 0.55593538 0.44986153 0.58052683 0.4537425 0.53166771 0.45349932
		 0.50967026 0.46441889 0.49169874 0.48173332 0.47895956 0.50412941 0.47189951 0.53021812
		 0.47023916 0.55888367 0.47357464 0.58950806 0.6421957 0.50426006 0.65652418 0.53106117
		 0.62444162 0.48189926 0.60373259 0.46471596 0.55476665 0.42693663 0.5851326 0.43119192
		 0.52467918 0.4316678 0.49733353 0.44510651 0.47491598 0.46608734 0.45883322 0.49287558
		 0.44934464 0.52368212 0.44530582 0.55723333 0.44412041 0.59323311 0.66169167 0.48851919
		 0.68298769 0.51751852 0.6390872 0.46344852 0.61363935 0.44379997 0.55342531 0.40439701
		 0.58928633 0.40886307 0.51773643 0.41024208 0.48522997 0.42609072 0.45854282 0.45046759
		 0.43929863 0.48109865 0.42758751 0.51557446 0.42142582 0.55210304 0.41589832 0.58996201
		 0.67831421 0.47042131 0.70464659 0.49871635 0.65214348 0.44407606 0.62267876 0.42272091
		 0.55209827 0.38215828 0.59335661 0.38676357 0.51087046 0.38912678 0.47325563 0.40734911
		 0.44235706 0.43501091 0.42004013 0.4692049 0.40629911 0.50666046 0.39854622 0.544631
		 0.39026165 0.5812912 0.69287109 0.45086908 0.72117329 0.47665238 0.66443586 0.4242487
		 0.63143682 0.40166807 0.55102587 0.35985279 0.59787178 0.36470556 0.50404596 0.36793661
		 0.46113968 0.38863802 0.42591667 0.41976738 0.40052366 0.45771313 0.38493443 0.49811459
		 0.37624931 0.53673458 0.36767673 0.57015038 0.70705891 0.43112779 0.73381948 0.45382404
		 0.67721701 0.40462446 0.64076281 0.38079739 0.5546608 0.52667809 0.8411665 0.087754488
		 0.8651247 0.15006995 0.83140755 0.14751625 0.76660728 0.097476959 0.82606316 0.3444404
		 0.77287865 0.36131513 0.70931149 0.32258981 0.80270576 0.3198235 0.74223042 0.37713695
		 0.6892786 0.3606236 0.71296501 0.33958709 0.79491425 0.32451379 0.81737518 0.3096565
		 0.78822231 0.3594228 0.74303246 0.35977554 0.78584766 0.31108618 0.56016254 0.25378731
		 0.57667208 0.1978353 0.59897614 0.22651985 0.58191681 0.29340124 0.57439041 0.28739953
		 0.55799294 0.23930597 0.59593058 0.17258435 0.60081673 0.26219076 0.5520463 0.25513828
		 0.55438137 0.2031444 0.57466745 0.21506068 0.62267971 0.28427619 0.67649078 0.060842276
		 0.72990131 0.064166307 0.75708008 0.10244632 0.67846489 0.084275961 0.63991737 0.085216284
		 0.68408966 0.05798769 0.68782425 0.091034651 0.63771629 0.13214624 0.85018444 0.12500453
		 0.85747623 0.16918659 0.82688522 0.23809212 0.8215332 0.14194846 0.8054266 0.1785605
		 0.76701927 0.15004206 0.74535179 0.2915819 0.79260921 0.28047472 0.72944069 0.30257392
		 0.77210617 0.28275973 0.73768616 0.32475603 0.76179409 0.27861929 0.63977909 0.23159611
		 0.61185837 0.27445582 0.62256813 0.20503604 0.63873577 0.24597678 0.61569118 0.20245245
		 0.62972069 0.24308407 0.729702 0.14408302 0.67326736 0.12687671 0.71017838 0.12120938
		 0.68739986 0.13604569 0.79431629 0.19668329 0.78510761 0.15136051 0.78230667 0.22728431
		 0.75006104 0.19107664 0.74594975 0.24765286 0.7247076 0.26210696 0.68019009 0.28612572
		 0.66598797 0.24077114 0.66076756 0.21766853 0.64575386 0.16565943 0.70310116 0.16908252
		 0.74392414 0.14539361 0.7094698 0.21629053 0.55840921 0.76434135 0.57976532 0.7498579
		 0.59580755 0.78309345 0.57532454 0.79610729 0.63012743 0.88151073 0.64267588 0.87690258
		 0.64361811 0.9002161 0.61886597 0.88960743 0.52408171 0.84421349 0.50882292 0.8626852
		 0.48357105 0.8296814 0.50029993 0.81385708 0.49073315 0.66048813 0.47828972 0.63755798
		 0.49170923 0.62755203 0.49749327 0.64748001 0.69116306 0.72490597 0.71620941 0.72685528
		 0.71825218 0.76251793 0.69435167 0.76064682 0.53833628 0.77969742 0.55633831 0.81080341
		 0.66081762 0.86442089 0.67214394 0.86720371 0.67970943 0.89933968 0.67186356 0.90213776
		 0.82395363 0.74154377 0.82306004 0.78482342 0.80463886 0.78351688 0.81463814 0.7407589
		 0.71086025 0.5946331 0.68755388 0.59136391 0.68765163 0.58459401 0.71104956 0.58776283
		 0.63111925 0.76546764 0.62041092 0.72951508 0.63423157 0.7253828 0.65046215 0.76257706
		 0.65281487 0.8728466 0.66351461 0.90418625 0.46394873 0.84650517 0.49584532 0.87637997
		 0.48121405 0.88767242 0.45661736 0.85229778 0.70915174 0.60128903 0.68578577 0.59789872
		 0.61333227 0.77363491 0.60660839 0.73368931 0.46325445 0.61481857 0.47494125 0.61330414
		 0.68337107 0.86554527 0.69576311 0.86243153 0.70973063 0.8629055 0.69465828 0.88562393
		 0.78901482 0.73776722 0.78618526 0.77911758 0.76349783 0.77248669 0.76640368 0.73409748
		 0.4382062 0.66188574 0.45254207 0.65400982 0.4686178 0.67233849 0.45529366 0.672575
		 0.67036057 0.76077366 0.66549635 0.72425461 0.43477726 0.64317131 0.44006419 0.63149977
		 0.51784515 0.7976675 0.54007435 0.8261261 0.45676661 0.67606163 0.43999457 0.66384697;
	setAttr ".uvst[0].uvsp[500:749]" 0.45396543 0.65462875 0.47129941 0.67412567
		 0.43769455 0.63275337 0.43229461 0.64323044 0.65910149 0.58737326 0.65900278 0.59414244
		 0.63560581 0.59097385 0.63579416 0.58410358 0.66086912 0.58083797 0.63750315 0.57744741
		 0.48044419 0.63681507 0.46594608 0.61555004 0.47874844 0.61607409 0.49392343 0.62754917
		 0.489591 0.65941525 0.49579072 0.64761829 0.7402215 0.76630402 0.7429657 0.73036766
		 0.71040154 0.90083504 0.72296143 0.87067604 0.73158264 0.88404274 0.73739767 0.89922523
		 0.69185638 0.92305565 0.74343538 0.91277504 0.68148661 0.93390083 0.75632572 0.92220879
		 0.66707563 0.93045902 0.61254358 0.96558571 0.61810398 0.95061302 0.63933897 0.92251682
		 0.61544609 0.936656 0.61198568 0.90422058 0.61214256 0.92001438 0.68113565 0.83116055
		 0.69872046 0.82892704 0.66612482 0.83290386 0.65117645 0.83210945 0.63905716 0.84078789
		 0.62583685 0.84752274 0.60922718 0.85545826 0.59399891 0.86656094 0.58412218 0.88055038
		 0.57727194 0.90030289 0.57332134 0.9214201 0.56818533 0.93802452 0.55640888 0.95160103
		 0.77802467 0.87485504 0.79535103 0.87969875 0.76447678 0.86327362 0.74999523 0.84856033
		 0.73343134 0.83584023 0.71749592 0.82964325 0.67692471 0.7967453 0.6981802 0.79516315
		 0.65891933 0.79828453 0.6412859 0.79933071 0.62594557 0.80805016 0.61029768 0.81670666
		 0.59111357 0.82706928 0.57333231 0.84008884 0.56127644 0.85332108 0.54909801 0.87321377
		 0.53828049 0.89422894 0.52747059 0.91038704 0.5129652 0.92282772 0.79692745 0.82937908
		 0.81588745 0.83177757 0.77884197 0.82146263 0.75863457 0.8104496 0.73751974 0.8006134
		 0.72017527 0.79622936 0.53941679 0.74548817 0.55843925 0.73187447 0.52192354 0.7587719
		 0.59136009 0.60326052 0.61650085 0.59188747 0.62177944 0.61584616 0.60072136 0.62525558
		 0.57859945 0.71566772 0.46941614 0.80467033 0.48591042 0.78965473 0.50188494 0.77545452
		 0.45011568 0.81999397 0.53733444 0.62743759 0.56253815 0.61619854 0.57275772 0.63781309
		 0.55173588 0.64729977 0.69658613 0.69886494 0.71807337 0.70046139 0.67327452 0.69748592
		 0.52995205 0.62571055 0.55679369 0.61227012 0.56909657 0.63519245 0.54666901 0.64659035
		 0.64858341 0.69470119 0.58744526 0.59675193 0.61415958 0.5830574 0.62110138 0.6088869
		 0.59864235 0.62022495 0.7870903 0.70910931 0.81071186 0.71067047 0.76502895 0.70618057
		 0.74424028 0.70337105 0.61944389 0.66928148 0.63261604 0.66361284 0.63846779 0.6873908
		 0.62877178 0.69130707 0.59322739 0.68105745 0.60348511 0.70265245 0.58023739 0.68713427
		 0.59411716 0.70730066 0.43925726 0.75724506 0.42122829 0.77130604 0.40566981 0.74779701
		 0.42358696 0.73421097 0.45512724 0.74300766 0.43932521 0.72010422 0.46790075 0.73189354
		 0.45056486 0.71026516 0.48702097 0.71635723 0.4694066 0.69502449 0.50051689 0.70605659
		 0.4812851 0.6859827 0.51771402 0.69331932 0.49825335 0.67338562 0.53508711 0.67837524
		 0.5151124 0.6585083 0.61007977 0.64726543 0.6271143 0.63976383 0.5829916 0.65943146
		 0.56606674 0.66717815 0.45464277 0.78060913 0.43610132 0.79515266 0.47075415 0.76611805
		 0.48509121 0.75358868 0.50461054 0.73763561 0.519907 0.72598648 0.53763771 0.71295547
		 0.55577803 0.69747448 0.70772314 0.64481831 0.68674374 0.6430378 0.69247198 0.61582756
		 0.71291208 0.6175766 0.72359133 0.64607811 0.72645235 0.61861706 0.74877834 0.64868641
		 0.75145769 0.62123871 0.76453972 0.65059471 0.76490688 0.6228838 0.78537178 0.65300655
		 0.78525829 0.6252203 0.80563641 0.65377617 0.80462265 0.62552738 0.62103271 0.66723776
		 0.63548088 0.66025555 0.64339542 0.68572795 0.63217449 0.690768 0.59375763 0.6810596
		 0.60612583 0.70394731 0.5795784 0.68857431 0.59542751 0.71001661 0.66670227 0.63966846
		 0.6734457 0.61221695 0.70229244 0.67199612 0.68049049 0.67029095 0.7207365 0.67342281
		 0.74629593 0.67610836 0.7644825 0.67835903 0.78586292 0.68092823 0.80755901 0.6819849
		 0.60983467 0.64372647 0.62814522 0.6346367 0.58142471 0.65812063 0.56326294 0.66750562
		 0.65877485 0.66690636 0.44397616 0.37330914 0.4375062 0.3644793 0.44449031 0.3466652
		 0.45571578 0.3505491 0.43069565 0.35909581 0.4341644 0.34376836 0.4233498 0.35646164
		 0.42413265 0.3423866 0.41580516 0.35636282 0.41427487 0.34272814 0.4084698 0.3586365
		 0.40464902 0.34474134 0.40154892 0.36303651 0.39522713 0.34813297 0.39461994 0.36919367
		 0.38568527 0.35237825 0.38612741 0.37721431 0.37534761 0.35684407 0.41778547 0.36910164
		 0.41873032 0.3718009 0.41491175 0.37214243 0.41592318 0.37015271 0.39260483 0.23627615
		 0.40226448 0.23426819 0.40478224 0.24040318 0.40313131 0.24459434 0.40002525 0.24720955
		 0.39629734 0.24787742 0.39280581 0.24612308 0.39075595 0.24148071 0.40367866 0.25833899
		 0.39694631 0.25934362 0.40997595 0.25551987 0.41564906 0.25120157 0.42097253 0.24606746
		 0.37757474 0.25160885 0.3712486 0.2470665 0.38738137 0.23115963 0.38366246 0.25560153
		 0.39014715 0.25838357 0.40618384 0.2732842 0.39791954 0.274297 0.41425967 0.27123648
		 0.42214614 0.26838988 0.430053 0.26514179 0.3727392 0.27134413 0.36394608 0.26930046
		 0.38118327 0.27312005 0.38956028 0.27420431 0.40840429 0.2922771 0.39951998 0.29332593
		 0.41714728 0.29077345 0.42563069 0.28891265 0.43372023 0.2868371 0.37306714 0.29370484
		 0.36453921 0.2932699 0.38176721 0.29398829 0.39060771 0.29389948 0.41043258 0.30796075
		 0.40093029 0.30917019 0.4002502 0.30143964 0.40944397 0.30032718 0.41994697 0.30671376
		 0.41857523 0.29896855 0.42939436 0.30539495 0.42755187 0.29738438 0.43868768 0.30384022
		 0.43632162 0.2955026 0.44775426 0.30178303 0.44513953 0.29346326 0.38224888 0.31109738
		 0.37325078 0.31141979 0.37315953 0.30269164 0.38204718 0.30269116 0.39151263 0.31026894;
	setAttr ".uvst[0].uvsp[750:999]" 0.39109087 0.30225432 0.41265351 0.32723171
		 0.40246373 0.32877856 0.42299539 0.32637662 0.43352711 0.32615185 0.44436491 0.32619226
		 0.45580256 0.32572281 0.38215339 0.33298558 0.37151921 0.3346625 0.39235866 0.3308301
		 0.39776814 0.37200642 0.39024246 0.38033593 0.40365106 0.36581397 0.40966463 0.36141992
		 0.41616076 0.35920155 0.42284679 0.35932136 0.42923009 0.3619138 0.43476641 0.36722076
		 0.43905115 0.37630796 0.4031567 0.37585318 0.39717662 0.38283098 0.4071849 0.36932111
		 0.41164511 0.36523759 0.41667736 0.36323392 0.42186463 0.36334276 0.42661917 0.36562014
		 0.43016946 0.37020886 0.43096054 0.37758195 0.42339742 0.38373411 0.41966307 0.37605715
		 0.42158312 0.37433648 0.41576749 0.37478924 0.41987854 0.36909902 0.42164546 0.37013888
		 0.42247456 0.37205243 0.36430562 0.30218726 0.47063887 0.31160831 0.47228587 0.30871487
		 0.47962165 0.31463313 0.47799408 0.32007313 0.47316837 0.30535793 0.48019302 0.30918574
		 0.47350383 0.30173671 0.48013067 0.30376434 0.47337413 0.29795241 0.47960675 0.29835486
		 0.47277224 0.29411674 0.47866654 0.29297256 0.47170365 0.29038715 0.47731912 0.2876693
		 0.47023642 0.28690398 0.47556865 0.28249896 0.46842313 0.28375316 0.47337937 0.277493
		 0.46621406 0.2810427 0.47059226 0.27269483 0.46345532 0.27903402 0.46683168 0.26826835
		 0.45998096 0.27829134 0.46137369 0.26473904 0.46791637 0.31359649 0.4744668 0.32523489
		 0.48726213 0.31764388 0.4864639 0.32490373 0.4871788 0.31087732 0.48661184 0.30438745
		 0.48571193 0.29803622 0.48452115 0.29175901 0.48303831 0.28553486 0.48124671 0.27934933
		 0.47908378 0.27315867 0.4763726 0.26688492 0.47269416 0.26044083 0.46709561 0.25381088
		 0.48384321 0.33294487 0.4949621 0.31860185 0.49538517 0.32686925 0.49410594 0.31113982
		 0.49302661 0.30409169 0.49179506 0.29724216 0.49042356 0.29048061 0.48890042 0.283746
		 0.48720336 0.27698159 0.48528004 0.27008915 0.48300636 0.26288962 0.48009503 0.25506961
		 0.47585618 0.24602175 0.49481833 0.33671761 0.5025171 0.31782651 0.50426078 0.32627344
		 0.50089669 0.31022882 0.49935079 0.30305457 0.4978478 0.29607439 0.496364 0.28916645
		 0.49488068 0.28225839 0.49337769 0.27527845 0.4918319 0.2681036 0.49021184 0.26050639
		 0.48846781 0.25205958 0.48651183 0.24185622 0.506217 0.3364768 0.50972188 0.31544352
		 0.5126338 0.32326341 0.50744832 0.30824399 0.50552499 0.30135131 0.50382781 0.29458714
		 0.50230539 0.28785276 0.50093329 0.28109109 0.49970186 0.27424181 0.49862254 0.26719296
		 0.49776709 0.25973117 0.49734342 0.25146365 0.49791038 0.24161553 0.51687229 0.33231211
		 0.51635611 0.3114481 0.52003443 0.31789231 0.51364505 0.30517435 0.51148164 0.29898381
		 0.5096904 0.29279804 0.50820744 0.28657484 0.50701654 0.2802968 0.50611651 0.27394545
		 0.50554955 0.26745582 0.50546634 0.26068938 0.50626481 0.25342917 0.50888503 0.24538839
		 0.52563298 0.32452226 0.52213633 0.30563807 0.52589619 0.31006479 0.51934946 0.30084014
		 0.51715958 0.29583406 0.51540911 0.29066396 0.51406181 0.28536057 0.5131222 0.27997816
		 0.51259792 0.27456903 0.51253521 0.2691474 0.5131067 0.26369989 0.51473486 0.25825989
		 0.51826143 0.25309825 0.53135526 0.3135941 0.52651441 0.29729009 0.52927291 0.299299
		 0.5243057 0.29457998 0.52249229 0.29142928 0.52102482 0.28794622 0.51995623 0.28421664
		 0.51935446 0.28038096 0.519225 0.27659655 0.51955998 0.27297533 0.52044261 0.26961815
		 0.52208984 0.26672447 0.52481222 0.26473665 0.53274786 0.30004215 0.46576023 0.29563248
		 0.52696836 0.28270113 0.52307308 0.26708579 0.52132952 0.26990777 0.51423776 0.26375198
		 0.51605356 0.25839359 0.52033031 0.27321869 0.51347315 0.26915503 0.51986647 0.27681196
		 0.51334071 0.27455527 0.51985943 0.28058481 0.51366842 0.27996022 0.52032101 0.28442562
		 0.51441097 0.285353 0.52125108 0.28817743 0.51556218 0.29068172 0.5225873 0.2916981
		 0.51711917 0.2958926 0.52427948 0.29490024 0.51911998 0.30095559 0.52638137 0.29767823
		 0.5217222 0.3058331 0.52905607 0.29977727 0.52530742 0.31037509 0.53248894 0.30064189
		 0.53061569 0.31408548 0.52585542 0.26520425 0.51975095 0.25338125 0.50673878 0.26047999
		 0.5077939 0.25327986 0.50657845 0.2672199 0.5069102 0.27370235 0.50757802 0.28005797
		 0.50853884 0.28635138 0.50979114 0.29260159 0.5113529 0.29882461 0.51328444 0.30506629
		 0.51575863 0.31141031 0.5191896 0.31795824 0.52452582 0.32476068 0.510692 0.24536771
		 0.49910641 0.25924951 0.49898183 0.25100258 0.49969101 0.26670995 0.50051248 0.27376685
		 0.50149262 0.28063047 0.50261569 0.28741211 0.5038904 0.29417223 0.50533694 0.30096817
		 0.5070042 0.30790013 0.50900996 0.31515002 0.51162827 0.32304096 0.51552343 0.33220208
		 0.49989998 0.24121749 0.49155641 0.25975007 0.49012351 0.25127706 0.49289691 0.26737267
		 0.49417818 0.27457181 0.49542439 0.28157559 0.49665332 0.28850716 0.49788266 0.29543841
		 0.49912846 0.30244219 0.50040984 0.30964154 0.50175059 0.31726396 0.5031836 0.325737
		 0.50476491 0.33596659 0.48854208 0.24104768 0.4842968 0.26186436 0.48167837 0.25397342
		 0.48630238 0.26911443 0.48796976 0.27604622 0.48941648 0.28284207 0.49069083 0.2896021
		 0.4918142 0.29638386 0.49279428 0.30324757 0.49361563 0.31030464 0.49420017 0.31776494
		 0.49432486 0.32601184 0.49340707 0.33579695 0.4777832 0.24481261 0.477548 0.26560414
		 0.47411668 0.25905585 0.48002219 0.27194798 0.48195362 0.27818948 0.4835155 0.28441256
		 0.48476809 0.29066283 0.4857288 0.29695618 0.48639619 0.30331212 0.48672831 0.30979449
		 0.48656839 0.31653416 0.48551244 0.3237344 0.4826147 0.3316465 0.46878064 0.25225371
		 0.4715842 0.27118152 0.46799922 0.26663923 0.47418672 0.27605873 0.47618747 0.28112173;
	setAttr ".uvst[0].uvsp[1000:1185]" 0.47774434 0.28633267 0.47889578 0.29166096
		 0.47963828 0.29705393 0.4799661 0.30245906 0.47983348 0.30785912 0.47906864 0.31326222
		 0.47725302 0.31862056 0.47355568 0.32363337 0.46269095 0.26292896 0.46692526 0.27933604
		 0.46425045 0.27723712 0.46902716 0.28211421 0.47071987 0.28531605 0.47205561 0.28883702
		 0.47298574 0.29258892 0.4734472 0.29642937 0.47344005 0.30020207 0.47297615 0.30379555
		 0.47197711 0.30710655 0.47023356 0.30992857 0.46745133 0.31180993 0.46081764 0.27637255
		 0.5273571 0.28316844 0.4659493 0.29384577 0.43417442 0.35915816 0.43619859 0.34268987
		 0.44612145 0.34377378 0.44260561 0.36219943 0.45624626 0.34470129 0.45178068 0.36640203
		 0.38634974 0.37246788 0.37775457 0.35182917 0.38766366 0.34905696 0.39450777 0.36690962
		 0.39728153 0.34632868 0.40225422 0.36276567 0.40685481 0.34409732 0.40996289 0.35983992
		 0.4165253 0.3426615 0.41782242 0.35811841 0.42632347 0.34220076 0.42591184 0.35781395
		 0.41371852 0.37558997 0.41706645 0.37409556 0.4202674 0.37312615 0.42303348 0.37600005
		 0.40918601 0.24014753 0.40899605 0.24496651 0.40607917 0.24813843 0.40178967 0.24885499
		 0.39769381 0.24707681 0.39508349 0.24339652 0.39489371 0.23852491 0.40580338 0.23473155
		 0.39519995 0.26096979 0.40227342 0.26173437 0.38862115 0.25883144 0.3826493 0.25603372
		 0.37598902 0.25335413 0.38848877 0.23537612 0.42216045 0.25388241 0.42771131 0.2491948
		 0.41616648 0.25797439 0.40943468 0.26073813 0.39533603 0.27678448 0.40333289 0.27680439
		 0.38748151 0.27605948 0.37974852 0.27498609 0.37190861 0.27419254 0.42709672 0.27219257
		 0.43494952 0.27024001 0.41929334 0.274297 0.41136312 0.27594972 0.39641476 0.29504061
		 0.40442121 0.29476714 0.38857108 0.29495078 0.38095695 0.29466668 0.37358296 0.29466498
		 0.42816389 0.29206812 0.43564248 0.29116625 0.42042589 0.29315281 0.41247183 0.29411101
		 0.39651698 0.30993053 0.39659894 0.30263728 0.40477294 0.30224723 0.40501487 0.30938387
		 0.38821232 0.31011641 0.38863051 0.30268264 0.38019395 0.30956689 0.380952 0.30235106
		 0.43863034 0.30582082 0.43685389 0.2986632 0.44428194 0.29683906 0.44628978 0.30388749
		 0.43052077 0.30699271 0.42916954 0.299779 0.4221378 0.30787981 0.42119598 0.30074662
		 0.41359591 0.3086704 0.41302037 0.30158961 0.39584386 0.329166 0.40550613 0.32791036
		 0.3861382 0.33026743 0.37625867 0.33057672 0.44425046 0.32507271 0.45382249 0.3236143
		 0.43460536 0.32568324 0.4249081 0.32615125 0.41519457 0.32686019 0.43303549 0.36256063
		 0.42555815 0.36122048 0.41821158 0.36152363 0.41109073 0.36319518 0.40412045 0.36600649
		 0.3971262 0.37004256 0.39029187 0.37613547 0.44828105 0.37076044 0.44053495 0.36569917
		 0.43091035 0.36726284 0.42490572 0.36604488 0.41888118 0.36634266 0.41302425 0.36786246
		 0.40729946 0.37034774 0.40168411 0.37382078 0.39745432 0.37910557 0.44124091 0.37511981
		 0.43654931 0.37016845 0.42615062 0.37342048 0.42336959 0.37285292 0.4098736 0.37724721
		 0.40810883 0.37944186 0.42890882 0.37690949 0.42821538 0.37479508 0.42624664 0.37845933
		 0.42397988 0.3794713 0.37338394 0.30229086 0.51140141 0.14408541 0.50567126 0.15086842
		 0.49907827 0.15125036 0.49596047 0.14289999 0.5179255 0.15796614 0.5092144 0.1564436
		 0.50926089 0.17056131 0.50625372 0.1623373 0.49411583 0.1694026 0.49968672 0.16258144
		 0.48725748 0.15566969 0.49603844 0.1571064 0.44746038 0.1589793 0.44201827 0.16798115
		 0.42941105 0.14512324 0.43992808 0.14533484 0.4630422 0.15928018 0.46811682 0.16849446
		 0.47109342 0.1459347 0.48161066 0.14614725 0.46356285 0.1322884 0.46900553 0.12328678
		 0.4479796 0.13198864 0.44290462 0.12277412 0.50152254 0.19073534 0.50045943 0.20534801
		 0.47229564 0.20329952 0.47335804 0.18868697 0.52968669 0.19278502 0.52862346 0.20739734
		 0.38886356 0.18254948 0.3878026 0.19716227 0.35963869 0.19511843 0.36069894 0.18050563
		 0.41702843 0.18459368 0.41596746 0.19920647 0.44519329 0.18663955 0.44413173 0.20125222
		 0.46533966 0.12270829 0.46085095 0.13230959 0.4452343 0.13369635 0.43917084 0.12502104
		 0.48040771 0.14425564 0.46985126 0.14516819 0.46928608 0.16808426 0.46321797 0.15939718
		 0.44309568 0.17035556 0.44758797 0.16075861 0.42805457 0.14880896 0.43859863 0.14790308;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 920 ".vt";
	setAttr ".vt[0:165]"  0.21028151 1.11751127 0.12047065 -0.21028151 1.11751127 0.12047065
		 0.29274482 1.32958174 0.12047065 -0.29274482 1.32958174 0.12047065 0.29274482 1.32958174 0.13915373
		 -0.29274482 1.32958174 0.13915373 0.21028151 1.11751127 0.13915373 -0.21028151 1.11751127 0.13915373
		 -0.076690905 1.21951032 0.17652723 -0.076690905 1.21951032 0.19521032 -0.10019296 1.13451314 0.19521032
		 -0.10019296 1.13451314 0.17652723 7.0778849e-009 1.26071024 0.1974782 7.0778849e-009 1.26071024 0.21616127
		 7.0778849e-009 0.84329569 0.25337401 7.0778849e-009 0.84329569 0.23469093 0.076690905 1.21951032 0.17652723
		 0.076690905 1.21951032 0.19521032 0.10019296 1.13451314 0.19521032 0.10019296 1.13451314 0.17652723
		 0.26213533 0.52238512 -0.071085058 0.27930352 0.52931517 -0.10315248 0.31363976 0.54317516 -0.10315248
		 0.33080819 0.55010527 -0.071085051 0.31363976 0.54317516 -0.039017621 0.27930337 0.52931511 -0.039017629
		 0.27651748 0.48675534 -0.071085058 0.29368567 0.49368536 -0.10315248 0.32802191 0.50754535 -0.10315248
		 0.34519035 0.51447546 -0.071085051 0.32802191 0.50754535 -0.039017621 0.29368553 0.49368531 -0.039017629
		 0.25239205 0.48045784 -0.071085058 0.28102571 0.49201599 -0.12456837 0.33829322 0.51513231 -0.12456835
		 0.36692718 0.52669054 -0.071085036 0.33829322 0.51513231 -0.017601738 0.28102571 0.49201599 -0.017601777
		 0.24039848 0.51017022 -0.071085058 0.26903212 0.52172834 -0.12456837 0.32629967 0.54484469 -0.12456835
		 0.35493362 0.55640292 -0.071085036 0.32629967 0.54484469 -0.017601738 0.26903212 0.52172834 -0.017601777
		 0.19804214 0.53842622 -0.15255661 0.082389906 0.53842622 -0.26882216 -0.081600741 0.53842622 -0.26925641
		 -0.19786629 0.53842622 -0.15360415 -0.19830051 0.53842622 0.010386486 -0.082648277 0.53842622 0.12665206
		 0.081342392 0.53842622 0.12708625 0.19760795 0.53842622 0.011434021 0.14348781 0.83886904 -0.12871669
		 0.059673376 0.83886904 -0.21297579 -0.059172545 0.83886904 -0.21329033 -0.14343166 0.83886904 -0.12947589
		 -0.14374618 0.83886904 -0.010629959 -0.059931766 0.83886904 0.073629148 0.058914203 0.83886904 0.073943675
		 0.14317329 0.83886904 -0.0098707387 0.15998974 0.83844465 -0.13550092 0.077952765 0.83840853 -0.25818971
		 -0.077219851 0.83840853 -0.25860021 -0.15989754 0.83844465 -0.13634737 -0.1602481 0.83844465 -0.0038457108
		 -0.066803239 0.83844465 0.090095021 0.065698422 0.83844465 0.090445593 0.15963916 0.83844465 -0.0029992675
		 0.22081234 0.53901184 -0.16191782 0.091871604 0.53901184 -0.29154277 -0.090961933 0.53901184 -0.29202661
		 -0.2205869 0.53901184 -0.16308585 -0.22107068 0.53901184 0.019747734 -0.092129953 0.53901184 0.14937271
		 0.090703584 0.53901184 0.14985649 0.22032854 0.53901184 0.020915737 0.27209634 0.3818956 -0.18293697
		 0.11322638 0.3818956 -0.34264985 0.24449512 0.38118592 -0.17158973 0.10173311 0.38118592 -0.31510887
		 -0.11204567 0.3818956 -0.34324589 -0.10069836 0.38118592 -0.31564471 -0.27175862 0.3818956 -0.18437611
		 -0.2442176 0.38118592 -0.17288275 -0.27235466 0.3818956 0.04089573 -0.24475349 0.38118592 0.029548416
		 -0.11530709 0.3818956 0.19984795 -0.10381388 0.38118592 0.17230694 0.11361375 0.3818956 0.20045364
		 0.27150029 0.3818956 0.042334747 0.10226648 0.38118592 0.1728524 0.24395928 0.38118592 0.030841446
		 0.31589767 0.26271302 -0.20085903 0.13146555 0.26271302 -0.38626969 0.28410682 0.26269472 -0.18778935
		 0.11822762 0.26269472 -0.35454816 -0.13005279 0.26271302 -0.38696158 -0.11698307 0.26269472 -0.35517076
		 -0.31546357 0.26271302 -0.20252976 -0.28374192 0.26269472 -0.18929176 -0.31615922 0.26271302 0.058984682
		 -0.28436828 0.26269472 0.045914918 -0.1348542 0.26271302 0.24308799 -0.12161625 0.26269472 0.2113665
		 0.1329326 0.26271302 0.24379647 0.31520936 0.26271302 0.060655214 0.11986282 0.26269472 0.21200554
		 0.28348777 0.26269472 0.047417298 0.21418945 0.91296053 -0.15914416 0.08911375 0.91296053 -0.24029391
		 0.23848097 0.91233581 -0.1691308 0.099228822 0.91233581 -0.26453239 -0.088239193 0.91296053 -0.24076365
		 -0.098225825 0.91233581 -0.26505521 -0.21397842 0.91296053 -0.16027744 -0.23821694 0.91233581 -0.17039244
		 -0.21444771 0.91296053 0.017075252 -0.23873928 0.91233581 0.027061921 -0.090574034 0.94164824 0.14231251
		 -0.10068914 0.94102359 0.16655102 0.089185409 0.94164824 0.14278896 0.21372002 0.91296053 0.018208522
		 0.099172093 0.94102359 0.16708054 0.23795852 0.91233581 0.028323593 0.13874318 0.7059471 -0.38265541
		 0.070782907 0.70690691 -0.43494293 0.099228822 0.91233581 -0.47200432 0.19387925 0.91233581 -0.37399024
		 -0.069433421 0.70690691 -0.43395072 -0.098225802 0.91233581 -0.47252709 -0.13958901 0.7059471 -0.38021636
		 -0.19443691 0.91233581 -0.37965527 -0.24946541 0.91233581 -0.18698439 -0.17111003 0.69855285 -0.29369193
		 -0.070864752 0.70390624 -0.34489813 0.06935139 0.70390624 -0.34589034 0.16740151 0.69855285 -0.29608753
		 0.24669723 0.91233581 -0.18610382 0.099228822 0.91233581 -0.2839703 -0.098225839 0.91233581 -0.28449309
		 0.21805088 0.91233581 -0.22056361 0.078301981 0.91233581 -0.30997437 0.17222583 0.91233581 -0.37333965
		 0.0903726 0.91233581 -0.45673013 -0.077707671 0.91233581 -0.31038737 -0.0873641 0.91233581 -0.45774665
		 -0.21765503 0.91233581 -0.22001873 -0.16941574 0.91233581 -0.38048851 0.10932951 0.71545362 -0.3466602
		 0.040731706 0.71545362 -0.37400991 0.09895613 0.71545362 -0.39624625 0.047188483 0.71545362 -0.42327225
		 -0.040251628 0.71545362 -0.37394542 -0.0450725 0.71545362 -0.42338219 -0.10874481 0.71545362 -0.34482774
		 -0.096724398 0.71545362 -0.39677605 0.071276128 0.92532074 -0.11231092 0.041096687 0.92532074 -0.14249036
		 -0.00012917616 0.92532074 -0.15353678 -0.041355047 0.92532074 -0.14249036 -0.071534485 0.92532074 -0.11231092
		 -0.082580909 0.92532074 -0.071085058 -0.071534485 0.92532074 -0.02985918 -0.041355047 0.92532074 0.00032024382
		 -0.00012917616 0.92532074 0.011366653 0.041096687 0.92532074 0.00032024382;
	setAttr ".vt[166:331]" 0.071276128 0.92532074 -0.02985918 0.08232256 0.92532074 -0.071085058
		 0.13569178 0.96321958 -0.14950128 0.078287065 0.96321958 -0.20690602 -0.00012917616 0.96321958 -0.22791754
		 -0.078545421 0.96321958 -0.20690602 -0.13595013 0.96321958 -0.14950128 -0.15696166 0.96321958 -0.071085058
		 -0.13595013 0.96321958 0.0073311804 -0.078545421 0.96321958 0.064735912 -0.00012917616 0.96321958 0.085747413
		 0.078287065 0.96321958 0.064735912 0.13569178 0.96321958 0.0073311804 0.15670329 0.96321958 -0.071085058
		 0.18681236 1.022248507 -0.17901579 0.10780155 1.022248507 -0.25802657 -0.00012917616 1.022248507 -0.28694654
		 -0.10805991 1.022248507 -0.25802657 -0.18707073 1.022248507 -0.17901579 -0.21599063 1.022248507 -0.071085058
		 -0.18707073 1.022248507 0.036845665 -0.10805991 1.022248507 0.11585648 -0.00012917616 1.022248507 0.14477646
		 0.10780155 1.022248507 0.11585648 0.18681236 1.022248507 0.036845665 0.21573229 1.022248507 -0.071085058
		 0.21963376 1.096629024 -0.19796522 0.12675102 1.096629024 -0.29084796 -0.00012917616 1.096629024 -0.32484546
		 -0.12700933 1.096629024 -0.29084796 -0.21989208 1.096629024 -0.19796522 -0.25388953 1.096629024 -0.071085058
		 -0.21989208 1.096629024 0.055795137 -0.12700933 1.096629024 0.14867787 -0.00012917616 1.096629024 0.18267532
		 0.12675102 1.096629024 0.14867787 0.21963376 1.096629024 0.055795137 0.2536312 1.096629024 -0.071085058
		 0.23094322 1.17908108 -0.20449476 0.13328056 1.17908108 -0.30215743 -0.00012917616 1.17908108 -0.33790448
		 -0.13353892 1.17908108 -0.30215743 -0.23120156 1.17908108 -0.20449476 -0.26694858 1.17908108 -0.071085058
		 -0.23120156 1.17908108 0.062324639 -0.13353892 1.17908108 0.15998739 -0.00012917616 1.17908108 0.19573441
		 0.13328056 1.17908108 0.15998739 0.23094322 1.17908108 0.062324639 0.26669025 1.17908108 -0.071085058
		 0.21963376 1.26153255 -0.19796522 0.12675102 1.26153255 -0.29084796 -0.00012917616 1.26153255 -0.32484546
		 -0.12700933 1.26153255 -0.29084796 -0.21989208 1.26153255 -0.19796522 -0.25388953 1.26153255 -0.071085058
		 -0.21989208 1.26153255 0.055795137 -0.12700933 1.26153255 0.14867787 -0.00012917616 1.26153255 0.18267532
		 0.12675102 1.26153255 0.14867787 0.21963376 1.26153255 0.055795137 0.2536312 1.26153255 -0.071085058
		 0.18681236 1.33591342 -0.17901579 0.10780155 1.33591342 -0.25802657 -0.00012917616 1.33591342 -0.28694654
		 -0.10805991 1.33591342 -0.25802657 -0.18707073 1.33591342 -0.17901579 -0.21599063 1.33591342 -0.071085058
		 -0.18707073 1.33591342 0.036845665 -0.10805991 1.33591342 0.11585648 -0.00012917616 1.33591342 0.14477646
		 0.10780155 1.33591342 0.11585648 0.18681236 1.33591342 0.036845665 0.21573229 1.33591342 -0.071085058
		 -0.00012917616 0.91226166 -0.071085058 0.24767022 1.27536225 -0.21750088 0.082788944 1.22603977 -0.38357881
		 -0.08501488 1.3099966 -0.31682658 -0.26658112 1.24483216 -0.2732735 -0.25866199 1.28561711 -0.071085036
		 -0.24978313 1.23778749 0.131917 -0.088531837 1.28561711 0.1984964 0.09186253 1.24854374 0.22587496
		 0.2221043 1.28561711 0.090377048 0.30003768 1.23779821 -0.071085058 0.35533729 1.46841276 -0.37132603
		 0.091053426 1.34259343 -0.3517164 -0.1733931 1.504107 -0.47512358 -0.22820023 1.34259343 -0.23174681
		 -0.39194229 1.37733638 -0.070994131 -0.19668308 1.34259343 0.076257668 -0.1264935 1.52107 0.33190712
		 0.070135728 1.32818544 0.20954621 0.33976373 1.39780271 0.132579 0.24383213 1.34259343 -0.071085058
		 0.22772679 1.48681092 -0.23424721 0.088855416 1.48681092 -0.33514312 -0.084571265 1.48681092 -0.33159855
		 -0.22167023 1.48681092 -0.23424713 -0.26954803 1.41041994 -0.070994131 -0.1720462 1.48681092 0.063902281
		 -0.082798935 1.48681092 0.19315483 0.068552427 1.47574675 0.16657044 0.22241959 1.47252202 0.021367244
		 0.25332984 1.4768616 -0.070994161 0.12772654 1.58538449 -0.16159274 0.050658751 1.67480564 -0.29476967
		 -0.044602253 1.58538449 -0.21758576 -0.11574711 1.55352056 -0.16159274 -0.23741363 1.65963018 -0.070994154
		 -0.12562138 1.56217682 0.019604435 -0.052520569 1.53464198 0.062413026 0.050658751 1.64682186 0.18865333
		 0.12772654 1.56084836 0.013071404 0.26224732 1.62749147 -0.070994161 0.0030282631 1.59650636 -0.070994161
		 0.19737585 1.2856164 -0.21458092 0.075311035 1.2856164 -0.30326623 -0.075569436 1.2856164 -0.30326623
		 -0.19763428 1.2856164 -0.21458088 -0.24425888 1.2856164 -0.071085051 -0.19763424 1.2856164 0.072410814
		 -0.075569384 1.2856164 0.16109608 0.07531105 1.2856164 0.16109608 0.19737585 1.2856164 0.072410733
		 0.24400051 1.2856164 -0.071085066 -0.1551445 0.3494496 0.025492515 0.15488617 0.3494496 0.025492515
		 -0.13719779 0.81804961 0.012864189 0.13693944 0.81804961 0.012864189 -0.13719779 0.81804961 -0.1550343
		 0.13693944 0.81804961 -0.1550343 -0.1551445 0.3494496 -0.16766268 0.15488617 0.3494496 -0.16766268
		 -0.00012917616 0.81857485 0.077755243 -0.00012917616 0.81857485 -0.21992539 -0.00012917616 0.3494496 -0.22591229
		 -0.00012917616 0.3494496 0.083742179 -0.04581872 0.83525938 0.067101136 -0.04581872 0.83525938 -0.20927124
		 -0.028028283 0.3494496 -0.22277918 -0.028028283 0.3494496 0.080609053 -0.091508254 0.83449417 0.049415816
		 -0.091508254 0.83449417 -0.19158594 -0.10347273 0.3494496 -0.20900005 -0.10347273 0.3494496 0.06682995
		 0.091249906 0.8326602 0.044831313 0.091249906 0.8326602 -0.18700142 0.10321438 0.3494496 -0.20900005
		 0.10321438 0.3494496 0.06682995 0.04556036 0.83525938 0.067101136 0.04556036 0.83525938 -0.20927124
		 0.027769918 0.3494496 -0.22277918 0.027769918 0.3494496 0.080609053 -0.16182163 0.80302829 -0.10223751
		 -0.18442516 0.3494496 -0.10795301 -0.027570415 0.34944946 -0.12632519 -0.00012917616 0.34944946 -0.12976998
		 0.02731205 0.34944946 -0.12632519 0.18416679 0.3494496 -0.10795301 0.16156331 0.80302829 -0.10223751
		 0.095650174 0.86792588 -0.11442138 0.032700166 0.90533906 -0.11848268 -0.00012917616 0.90533906 -0.12152866
		 -0.03295853 0.90533906 -0.11848268 -0.095908545 0.86792588 -0.11442138;
	setAttr ".vt[332:497]" -0.16182163 0.80302829 -0.039932586 -0.18442516 0.3494496 -0.034217089
		 -0.027570415 0.34944946 -0.015844898 -0.00012917616 0.34944946 -0.012400133 0.02731205 0.34944946 -0.015844898
		 0.18416679 0.3494496 -0.034217089 0.16156331 0.80302829 -0.039932586 0.095650174 0.86792588 -0.027748728
		 0.032700166 0.90533906 -0.02368743 -0.00012917616 0.90533906 -0.020641461 -0.03295853 0.90533906 -0.02368743
		 -0.095908545 0.86792588 -0.027748728 0.15769044 0.70083815 0.019292621 0.10508388 0.71261764 0.057681732
		 0.052477349 0.71471286 0.079841614 -0.00012917616 0.70126146 0.091585308 -0.052735731 0.71471286 0.079841614
		 -0.10534225 0.71409589 0.061377831 -0.15794879 0.70083815 0.019292621 -0.18673782 0.68872756 -0.041497163
		 -0.18673782 0.68872756 -0.10067294 -0.15794879 0.70083815 -0.16146271 -0.10534225 0.71409589 -0.20354795
		 -0.052735731 0.71471286 -0.22201169 -0.00012917616 0.70126146 -0.23375541 0.052477349 0.71471286 -0.22201169
		 0.10508388 0.71261764 -0.19985186 0.15769044 0.70083815 -0.16146271 0.18647949 0.68872756 -0.10067294
		 0.18647949 0.68872756 -0.041497163 0.1719173 0.58369565 0.024506932 0.1145685 0.5917235 0.067867011
		 0.057219658 0.59315157 0.088701785 -0.00012917616 0.5839839 0.10100464 -0.057478037 0.59315157 0.088701785
		 -0.11482685 0.592731 0.070386007 -0.17217568 0.58369565 0.024506932 -0.20397724 0.57544184 -0.04176284
		 -0.20397724 0.57544184 -0.10040727 -0.17217568 0.58369565 -0.16667706 -0.11482685 0.592731 -0.21255611
		 -0.057478037 0.59315157 -0.2308719 -0.00012917616 0.5839839 -0.24317478 0.057219658 0.59315157 -0.2308719
		 0.1145685 0.5917235 -0.21003711 0.1719173 0.58369565 -0.16667706 0.20371893 0.57544184 -0.10040727
		 0.20371893 0.57544184 -0.04176284 0.16617905 0.46659943 0.026192665 0.11074299 0.47025222 0.069395408
		 0.0553069 0.47090179 0.086699829 -0.00012917616 0.4667308 0.098166123 -0.055565283 0.47090179 0.086699829
		 -0.11100136 0.4707109 0.070541531 -0.16643742 0.46659943 0.026192665 -0.19753449 0.46284425 -0.037866801
		 -0.19753449 0.46284425 -0.1043033 -0.16643742 0.46659943 -0.16836281 -0.11100136 0.4707109 -0.21271166
		 -0.055565283 0.47090179 -0.22886996 -0.00012917616 0.4667308 -0.24033627 0.0553069 0.47090179 -0.22886996
		 0.11074299 0.47025222 -0.21156549 0.16617905 0.46659943 -0.16836281 0.19727612 0.46284425 -0.1043033
		 0.19727612 0.46284425 -0.037866801 -0.21646816 0.016283035 -0.034217004 -0.13597359 0.016282883 -0.024939861
		 -0.13448213 0.016283035 0.027021943 -0.19545628 0.016283035 0.0061771777 -0.051344644 0.016282883 -0.022596473
		 -0.068340041 0.016283035 0.0098184971 -0.19545628 0.016283035 -0.14834709 -0.13448213 0.016283035 -0.16919197
		 -0.13597359 0.016282883 -0.11723018 -0.21646816 0.016283035 -0.10795301 -0.051344644 0.016282883 -0.11957362
		 -0.068340041 0.016283035 -0.15198861 0.12951212 0.016282883 -0.020438004 0.12698707 0.016283035 0.030052548
		 0.20380512 0.016283035 -0.033015564 0.18281944 0.016283035 0.0024247933 0.050051138 0.016282883 -0.024103642
		 0.072188266 0.016283035 0.0087310411 0.050051138 0.016282883 -0.11806646 0.12951212 0.016282883 -0.1217321
		 0.072188266 0.016283035 -0.15090118 0.12698707 0.016283035 -0.17222267 0.20380512 0.016283035 -0.10915454
		 0.18281944 0.016283035 -0.14459492 -0.05826211 0.099574737 0.027516136 -0.045401108 0.099574588 -0.020908585
		 -0.045401108 0.099574506 -0.12126151 -0.05826211 0.099574663 -0.16968627 -0.12672979 0.099574663 -0.17914398
		 -0.18537834 0.099574737 -0.15317598 -0.20845741 0.099574737 -0.10795301 -0.20845741 0.099574737 -0.034217022
		 -0.18537834 0.099574737 0.011006012 -0.12672979 0.099574737 0.036973953 -0.048184156 0.18286644 0.045213774
		 -0.03945753 0.18286629 -0.019220695 -0.03945753 0.18286614 -0.1229494 -0.048184156 0.18286629 -0.18738392
		 -0.11897743 0.18286629 -0.18909602 -0.17530037 0.18286644 -0.15800485 -0.20044667 0.18286644 -0.10795301
		 -0.20044667 0.18286644 -0.034217045 -0.17530037 0.18286644 0.015834846 -0.11897743 0.18286644 0.046925966
		 -0.038106222 0.26615798 0.062911414 -0.033513971 0.26615784 -0.017532807 -0.033513971 0.26615775 -0.12463729
		 -0.038106222 0.2661579 -0.20508154 -0.11122511 0.2661579 -0.19904803 -0.16522244 0.26615798 -0.16283375
		 -0.19243592 0.26615798 -0.10795301 -0.19243592 0.26615798 -0.034217071 -0.16522244 0.26615798 0.020663681
		 -0.11122511 0.26615798 0.056877937 0.12104388 0.099574663 0.039246902 0.17583615 0.099574663 0.0081917187
		 0.19889557 0.099574663 -0.033315945 0.19889557 0.099574663 -0.10885416 0.17583615 0.099574663 -0.15036185
		 0.12104388 0.099574663 -0.18141703 0.061083678 0.099574737 -0.1688707 0.044366371 0.099574588 -0.12013115
		 0.044366371 0.099574506 -0.022038955 0.061083678 0.099574663 0.026700554 0.11510071 0.18286629 0.048441239
		 0.16885281 0.18286629 0.013958645 0.19398598 0.18286629 -0.033616334 0.19398598 0.18286629 -0.10855377
		 0.16885281 0.18286629 -0.15612878 0.11510071 0.18286629 -0.19061136 0.049979094 0.18286644 -0.18684019
		 0.038681593 0.18286629 -0.12219582 0.038681593 0.18286614 -0.019974269 0.049979094 0.18286629 0.044670068
		 0.10915754 0.2661579 0.057635576 0.16186951 0.2661579 0.01972561 0.18907638 0.2661579 -0.033916712
		 0.18907638 0.2661579 -0.10825339 0.16186951 0.2661579 -0.16189571 0.10915754 0.2661579 -0.19980569
		 0.038874503 0.26615798 -0.20480968 0.032996822 0.26615784 -0.1242605 0.032996822 0.26615775 -0.017909585
		 0.038874503 0.2661579 0.062639579 0.17115211 0.76787204 -0.098050743 0.19615746 0.77796555 -0.10922031
		 0.2211628 0.78805906 -0.098050743 0.23152053 0.79224008 -0.071085058 0.2211628 0.78805906 -0.044119358
		 0.19615746 0.77796555 -0.032949802 0.17115211 0.76787204 -0.044119358 0.16079438 0.76369113 -0.071085058
		 0.3020182 0.47169614 -0.087559983 0.31729546 0.47786286 -0.094384119 0.3325727 0.48402962 -0.087559983
		 0.33890069 0.48658395 -0.071085058 0.3325727 0.48402962 -0.054610129 0.31729546 0.47786286 -0.047785994
		 0.3020182 0.47169614 -0.054610133 0.29569 0.46914169 -0.071085058;
	setAttr ".vt[498:663]" 0.29999009 0.52073455 -0.045666531 0.3166571 0.52746224 -0.053111453
		 0.3235608 0.53024894 -0.071085058 0.3166571 0.52746224 -0.089058667 0.29999009 0.52073455 -0.096503571
		 0.28332305 0.51400679 -0.089058667 0.27641937 0.5112201 -0.071085058 0.28332305 0.51400679 -0.053111438
		 0.28268462 0.5636065 -0.043547079 0.30074158 0.57089525 -0.051612772 0.3082206 0.57391417 -0.071085058
		 0.30074158 0.57089525 -0.090557344 0.28268462 0.5636065 -0.09862303 0.26462784 0.55631775 -0.090557344
		 0.25714865 0.55329877 -0.071085058 0.26462784 0.55631775 -0.051612768 0.26400384 0.60988557 -0.046141692
		 0.28035897 0.61648732 -0.053447433 0.28713408 0.61922216 -0.071085066 0.28035897 0.61648732 -0.088722676
		 0.26400384 0.60988557 -0.096028425 0.24764839 0.60328358 -0.088722676 0.24087387 0.60054898 -0.071085066
		 0.24764839 0.60328358 -0.053447429 0.24944916 0.64594287 -0.044359121 0.26697311 0.65301651 -0.052186966
		 0.27423218 0.65594667 -0.071085058 0.26697311 0.65301651 -0.089983135 0.24944916 0.64594287 -0.097810984
		 0.23192474 0.63886905 -0.089983135 0.22466613 0.635939 -0.071085058 0.23192474 0.63886905 -0.052186966
		 0.23076835 0.69222188 -0.03718872 0.25299445 0.70119357 -0.047116727 0.26220039 0.70490956 -0.071085066
		 0.25299445 0.70119357 -0.095053397 0.23076835 0.69222188 -0.10498139 0.20854241 0.68325025 -0.095053397
		 0.19933632 0.6795342 -0.071085066 0.20854241 0.68325025 -0.047116727 0.2134629 0.73509371 -0.035069264
		 0.23707847 0.74462628 -0.045618057 0.24686043 0.74857485 -0.071085058 0.23707847 0.74462628 -0.096552067
		 0.2134629 0.73509371 -0.10710085 0.18984711 0.72556108 -0.096552067 0.18006538 0.72161263 -0.071085058
		 0.18984711 0.72556108 -0.045618039 0.15896966 0.77347964 -0.071085058 0.16879173 0.7774443 -0.096656464
		 0.16879173 0.7774443 -0.04551363 0.1925042 0.78701597 -0.034921616 0.21621643 0.79658753 -0.045513641
		 0.22603844 0.80055219 -0.071085058 0.21621643 0.79658753 -0.096656464 0.1925042 0.78701597 -0.1072485
		 0.16491592 0.78640497 -0.071085058 0.17192657 0.78923488 -0.089336492 0.17192657 0.78923488 -0.05283362
		 0.18885094 0.79606646 -0.045273628 0.2057756 0.80289817 -0.05283362 0.21278602 0.80572802 -0.071085058
		 0.2057756 0.80289817 -0.089336492 0.18885094 0.79606646 -0.096896477 0.17876258 0.79951215 -0.071085058
		 0.18095337 0.8003965 -0.076787949 0.18095337 0.8003965 -0.065382168 0.18624145 0.80253106 -0.063019954
		 0.19152984 0.80466574 -0.065382168 0.19372001 0.8055498 -0.071085058 0.19152984 0.80466574 -0.076787949
		 0.18624145 0.80253106 -0.079150163 0.18624145 0.80253106 -0.071085058 0.25654534 0.62836289 -0.045228224
		 0.27349976 0.63520658 -0.052801523 0.28052232 0.63804132 -0.071085066 0.27349976 0.63520658 -0.089368589
		 0.25654534 0.62836289 -0.096941888 0.23959099 0.62151915 -0.089368589 0.23256813 0.61868441 -0.071085066
		 0.23959099 0.62151915 -0.05280152 0.29637909 0.49235591 -0.079127423 0.30183837 0.49455959 -0.085014857
		 0.3092961 0.49756995 -0.087169796 0.31675398 0.50058037 -0.085014857 0.32221329 0.50278401 -0.079127423
		 0.32421157 0.50359064 -0.071085058 0.32221329 0.50278401 -0.063042685 0.31675398 0.50058037 -0.057155263
		 0.3092961 0.49756995 -0.055000309 0.30183837 0.49455959 -0.057155263 0.29637909 0.49235591 -0.063042685
		 0.29438078 0.49154925 -0.071085058 0.28749359 0.48079637 -0.08638256 0.29787812 0.48498809 -0.097581103
		 0.3120636 0.4907141 -0.10168006 0.32624909 0.49644011 -0.097581103 0.33663344 0.50063193 -0.08638256
		 0.34043443 0.50216615 -0.071085058 0.33663344 0.50063193 -0.05578756 0.32624909 0.49644011 -0.044588994
		 0.3120636 0.4907141 -0.040490065 0.29787812 0.48498809 -0.044588994 0.28749359 0.48079637 -0.05578756
		 0.28369278 0.47926208 -0.071085058 0.2825563 0.46638513 -0.092140257 0.29684943 0.47215462 -0.10755374
		 0.31637391 0.48003578 -0.11319546 0.33589843 0.48791695 -0.10755374 0.35019156 0.49368644 -0.092140257
		 0.35542297 0.49579811 -0.071085058 0.35019156 0.49368644 -0.050029859 0.33589843 0.48791695 -0.034616373
		 0.31637391 0.48003578 -0.028974637 0.29684943 0.47215462 -0.034616373 0.2825563 0.46638513 -0.050029859
		 0.27732491 0.46427345 -0.071085058 0.28205049 0.45053315 -0.095836937 0.29885277 0.45731553 -0.11395656
		 0.32180527 0.46658039 -0.12058881 0.34475777 0.47584531 -0.11395656 0.36156005 0.48262763 -0.095836937
		 0.36771041 0.48511025 -0.071085058 0.36156005 0.48262763 -0.046333179 0.34475777 0.47584531 -0.028213549
		 0.32180527 0.46658039 -0.021581307 0.29885277 0.45731553 -0.028213549 0.28205049 0.45053315 -0.046333179
		 0.27590013 0.44805053 -0.071085058 0.28602517 0.43479195 -0.097110718 0.30369225 0.44192338 -0.11616284
		 0.32782593 0.45166504 -0.12313639 0.35195968 0.46140674 -0.11616284 0.36962676 0.46853814 -0.097110718
		 0.37609336 0.47114846 -0.071085058 0.36962676 0.46853814 -0.045059405 0.35195968 0.46140674 -0.02600728
		 0.32782593 0.45166504 -0.019033737 0.30369225 0.44192338 -0.02600728 0.28602517 0.43479195 -0.045059405
		 0.27955848 0.43218163 -0.071085058 0.29409188 0.42070228 -0.095836937 0.31089416 0.4274846 -0.11395656
		 0.33384666 0.43674949 -0.12058881 0.35679916 0.4460144 -0.11395656 0.37360147 0.4527967 -0.095836937
		 0.3797518 0.45527938 -0.071085058 0.37360147 0.4527967 -0.046333179 0.35679916 0.4460144 -0.028213549
		 0.33384666 0.43674949 -0.021581307 0.31089416 0.4274846 -0.028213549 0.29409188 0.42070228 -0.046333179
		 0.28794152 0.41821966 -0.071085058 0.30546042 0.40964335 -0.092140257 0.31975356 0.41541287 -0.10755374
		 0.33927804 0.42329404 -0.11319546 0.35880256 0.4311752 -0.10755374 0.37309569 0.43694472 -0.092140257
		 0.3783271 0.4390564 -0.071085058 0.37309569 0.43694472 -0.050029859 0.35880256 0.4311752 -0.034616373
		 0.33927804 0.42329404 -0.028974637 0.31975356 0.41541287 -0.034616373 0.30546042 0.40964335 -0.050029859
		 0.30022904 0.40753171 -0.071085058 0.31901839 0.40269807 -0.08638256;
	setAttr ".vt[664:829]" 0.32940292 0.4068898 -0.097581103 0.34358832 0.41261581 -0.10168006
		 0.35777381 0.41834182 -0.097581103 0.36815825 0.4225336 -0.08638256 0.37195915 0.42406785 -0.071085058
		 0.36815825 0.4225336 -0.05578756 0.35777381 0.41834182 -0.044588994 0.34358832 0.41261581 -0.040490065
		 0.32940292 0.4068898 -0.044588994 0.31901839 0.40269807 -0.05578756 0.31521758 0.40116379 -0.071085058
		 0.33343863 0.4005459 -0.079127423 0.338898 0.40274957 -0.085014857 0.34635574 0.40575993 -0.087169796
		 0.35381356 0.40877029 -0.085014857 0.35927284 0.41097397 -0.079127423 0.3612712 0.41178063 -0.071085058
		 0.35927284 0.41097397 -0.063042685 0.35381356 0.40877029 -0.057155263 0.34635574 0.40575993 -0.055000309
		 0.338898 0.40274957 -0.057155263 0.33343863 0.4005459 -0.063042685 0.33144036 0.39973924 -0.071085058
		 0.30834258 0.49993229 -0.071085058 0.34730935 0.40339753 -0.071085058 -0.33464047 0.40267074 -0.079127423
		 -0.3401041 0.40486374 -0.085014857 -0.3475678 0.40785941 -0.087169796 -0.35503146 0.41085511 -0.085014857
		 -0.36049512 0.41304809 -0.079127423 -0.36249506 0.41385078 -0.071085058 -0.36049512 0.41304809 -0.063042685
		 -0.35503146 0.41085511 -0.057155263 -0.3475678 0.40785941 -0.055000309 -0.3401041 0.40486374 -0.057155263
		 -0.33464047 0.40267074 -0.063042685 -0.33264056 0.40186805 -0.071085058 -0.3202244 0.40485132 -0.08638256
		 -0.3306171 0.4090226 -0.097581103 -0.34481379 0.41472077 -0.10168006 -0.35901052 0.42041892 -0.097581103
		 -0.36940318 0.42459023 -0.08638256 -0.37320706 0.42611703 -0.071085058 -0.36940318 0.42459023 -0.05578756
		 -0.35901052 0.42041892 -0.044588994 -0.34481379 0.41472077 -0.040490065 -0.3306171 0.4090226 -0.044588994
		 -0.3202244 0.40485132 -0.05578756 -0.31642056 0.40332451 -0.071085058 -0.30668011 0.41182327 -0.092140257
		 -0.32098454 0.41756466 -0.10755374 -0.34052449 0.42540744 -0.11319546 -0.36006442 0.43325019 -0.10755374
		 -0.37436894 0.43899164 -0.092140257 -0.37960437 0.441093 -0.071085058 -0.37436894 0.43899164 -0.050029859
		 -0.36006442 0.43325019 -0.034616373 -0.34052449 0.42540744 -0.028974637 -0.32098454 0.41756466 -0.034616373
		 -0.30668011 0.41182327 -0.050029859 -0.30144459 0.40972188 -0.071085058 -0.29533336 0.42290446 -0.095836937
		 -0.31214893 0.42965376 -0.11395656 -0.33511963 0.43887356 -0.12058881 -0.35809025 0.44809332 -0.11395656
		 -0.37490588 0.4548426 -0.095836937 -0.38106105 0.45731315 -0.071085058 -0.37490588 0.4548426 -0.046333179
		 -0.35809025 0.44809332 -0.028213549 -0.33511963 0.43887356 -0.021581307 -0.31214893 0.42965376 -0.028213549
		 -0.29533336 0.42290446 -0.046333179 -0.28917813 0.42043397 -0.071085058 -0.28729436 0.43700972 -0.097110718
		 -0.30497539 0.44410646 -0.11616284 -0.32912824 0.45380071 -0.12313639 -0.35328105 0.46349496 -0.11616284
		 -0.37096211 0.47059163 -0.097110718 -0.3774339 0.4731892 -0.071085058 -0.37096211 0.47059163 -0.045059405
		 -0.35328105 0.46349496 -0.02600728 -0.32912824 0.45380071 -0.019033737 -0.30497539 0.44410646 -0.02600728
		 -0.28729436 0.43700972 -0.045059405 -0.28082263 0.43441215 -0.071085058 -0.28335065 0.45275894 -0.095836937
		 -0.30016622 0.45950824 -0.11395656 -0.32313687 0.46872804 -0.12058881 -0.34610751 0.4779478 -0.11395656
		 -0.36292318 0.4846971 -0.095836937 -0.36907834 0.48716763 -0.071085058 -0.36292318 0.4846971 -0.046333179
		 -0.34610751 0.4779478 -0.028213549 -0.32313687 0.46872804 -0.021581307 -0.30016622 0.45950824 -0.028213549
		 -0.28335065 0.45275894 -0.046333179 -0.27719539 0.45028839 -0.071085058 -0.28388759 0.46860984 -0.092140257
		 -0.29819202 0.47435123 -0.10755374 -0.31773198 0.48219404 -0.11319546 -0.33727193 0.49003679 -0.10755374
		 -0.35157642 0.4957782 -0.092140257 -0.35681188 0.49787956 -0.071085058 -0.35157642 0.4957782 -0.050029859
		 -0.33727193 0.49003679 -0.034616373 -0.31773198 0.48219404 -0.028974637 -0.29819202 0.47435123 -0.034616373
		 -0.28388759 0.46860984 -0.050029859 -0.27865207 0.46650845 -0.071085058 -0.2888532 0.48301139 -0.08638256
		 -0.29924586 0.48718271 -0.097581103 -0.31344259 0.49288085 -0.10168006 -0.32763928 0.49857903 -0.097581103
		 -0.33803195 0.50275034 -0.08638256 -0.34183583 0.50427711 -0.071085058 -0.33803195 0.50275034 -0.05578756
		 -0.32763928 0.49857903 -0.044588994 -0.31344259 0.49288085 -0.040490065 -0.29924586 0.48718271 -0.044588994
		 -0.2888532 0.48301139 -0.05578756 -0.28504932 0.48148459 -0.071085058 -0.29776135 0.49455348 -0.079127423
		 -0.30322498 0.49674645 -0.085014857 -0.31068867 0.49974215 -0.087169796 -0.31815234 0.50273788 -0.085014857
		 -0.323616 0.50493079 -0.079127423 -0.32561597 0.50573355 -0.071085058 -0.323616 0.50493079 -0.063042685
		 -0.31815234 0.50273788 -0.057155263 -0.31068867 0.49974215 -0.055000309 -0.30322498 0.49674645 -0.057155263
		 -0.29776135 0.49455348 -0.063042685 -0.29576147 0.49375075 -0.071085058 -0.34851673 0.40549523 -0.071085058
		 -0.30973971 0.50210631 -0.071085058 -0.17396878 0.76809102 -0.098050743 -0.19899388 0.77813536 -0.10922031
		 -0.22401898 0.78817976 -0.098050743 -0.23438495 0.7923404 -0.071085058 -0.22401898 0.78817976 -0.044119358
		 -0.19899388 0.77813536 -0.032949802 -0.17396878 0.76809102 -0.044119358 -0.16360287 0.76393044 -0.071085058
		 -0.30425259 0.47165847 -0.087559983 -0.3195419 0.47779518 -0.094384119 -0.33483127 0.4839319 -0.087559983
		 -0.3411642 0.48647377 -0.071085058 -0.33483127 0.4839319 -0.054610129 -0.3195419 0.47779518 -0.047785994
		 -0.30425259 0.47165847 -0.054610133 -0.29791936 0.46911651 -0.071085058 -0.30232075 0.52070093 -0.045666531
		 -0.31900096 0.52739584 -0.053111453 -0.32591015 0.53016901 -0.071085058 -0.31900096 0.52739584 -0.089058667
		 -0.30232075 0.52070093 -0.096503571 -0.2856406 0.51400596 -0.089058667 -0.27873144 0.51123285 -0.071085058
		 -0.2856406 0.51400596 -0.053111438 -0.2850996 0.56360668 -0.043547079 -0.3031708 0.57085997 -0.051612772
		 -0.31065577 0.57386422 -0.071085058 -0.3031708 0.57085997 -0.090557344 -0.2850996 0.56360668 -0.09862303
		 -0.26702854 0.55635345 -0.090557344 -0.25954351 0.55334914 -0.071085058;
	setAttr ".vt[830:919]" -0.26702854 0.55635345 -0.051612768 -0.26650983 0.60992235 -0.046141692
		 -0.28287792 0.61649209 -0.053447433 -0.2896584 0.61921358 -0.071085066 -0.28287792 0.61649209 -0.088722676
		 -0.26650983 0.60992235 -0.096028425 -0.2501415 0.60335261 -0.088722676 -0.24336162 0.60063136 -0.071085066
		 -0.2501415 0.60335261 -0.053447429 -0.25202596 0.64600825 -0.044359121 -0.26956385 0.6530475 -0.052186966
		 -0.27682865 0.6559633 -0.071085058 -0.26956385 0.6530475 -0.089983135 -0.25202596 0.64600825 -0.097810984
		 -0.2344878 0.63896888 -0.089983135 -0.22722332 0.63605314 -0.071085058 -0.2344878 0.63896888 -0.052186966
		 -0.23343617 0.69232392 -0.03718872 -0.25567982 0.70125192 -0.047116727 -0.26489308 0.7049498 -0.071085066
		 -0.25567982 0.70125192 -0.095053397 -0.23343617 0.69232392 -0.10498139 -0.21119267 0.68339598 -0.095053397
		 -0.20197925 0.67969805 -0.071085066 -0.21119267 0.68339598 -0.047116727 -0.21621501 0.73522967 -0.035069264
		 -0.23984928 0.74471575 -0.045618057 -0.24963902 0.74864507 -0.071085058 -0.23984928 0.74471575 -0.096552067
		 -0.21621501 0.73522967 -0.10710085 -0.19258052 0.72574341 -0.096552067 -0.1827911 0.72181422 -0.071085058
		 -0.19258052 0.72574341 -0.045618039 -0.16179737 0.77372253 -0.071085058 -0.17162716 0.777668 -0.096656464
		 -0.17162716 0.777668 -0.04551363 -0.1953584 0.787193 -0.034921616 -0.21908939 0.796718 -0.045513641
		 -0.22891918 0.80066335 -0.071085058 -0.21908939 0.796718 -0.096656464 -0.1953584 0.787193 -0.1072485
		 -0.16776897 0.78663617 -0.071085058 -0.17478512 0.78945231 -0.089336492 -0.17478512 0.78945231 -0.05283362
		 -0.19172291 0.79625058 -0.045273628 -0.208661 0.80304909 -0.05283362 -0.21567692 0.80586511 -0.071085058
		 -0.208661 0.80304909 -0.089336492 -0.19172291 0.79625058 -0.096896477 -0.18164143 0.79971617 -0.071085058
		 -0.18383388 0.80059618 -0.076787949 -0.18383388 0.80059618 -0.065382168 -0.18912616 0.80272031 -0.063019954
		 -0.19441876 0.80484468 -0.065382168 -0.19661066 0.80572438 -0.071085058 -0.19441876 0.80484468 -0.076787949
		 -0.18912616 0.80272031 -0.079150163 -0.18912616 0.80272031 -0.071085058 -0.25908765 0.62841439 -0.045228224
		 -0.27605549 0.63522476 -0.052801523 -0.28308362 0.63804567 -0.071085066 -0.27605549 0.63522476 -0.089368589
		 -0.25908765 0.62841439 -0.096941888 -0.24211986 0.62160403 -0.089368589 -0.23509143 0.618783 -0.071085066
		 -0.24211986 0.62160403 -0.05280152 -0.2635349 0.52475405 -0.071085058 -0.28071675 0.5316503 -0.10315248
		 -0.31508014 0.54544282 -0.10315248 -0.33226216 0.5523392 -0.071085051 -0.31508014 0.54544282 -0.039017621
		 -0.2807166 0.53165025 -0.039017629 -0.27784702 0.48909608 -0.071085058 -0.29502881 0.49599236 -0.10315248
		 -0.32939219 0.50978488 -0.10315248 -0.34657422 0.51668125 -0.071085051 -0.32939219 0.50978488 -0.039017621
		 -0.29502866 0.4959923 -0.039017629 -0.25370929 0.48284584 -0.071085058 -0.28236562 0.49434769 -0.12456837
		 -0.33967847 0.51735145 -0.12456835 -0.36833507 0.52885342 -0.071085036 -0.33967847 0.51735145 -0.017601738
		 -0.28236562 0.49434769 -0.017601777 -0.2417741 0.51258171 -0.071085058 -0.27043042 0.52408355 -0.12456837
		 -0.32774326 0.54708731 -0.12456835 -0.35639989 0.55858928 -0.071085036 -0.32774326 0.54708731 -0.017601738
		 -0.27043042 0.52408355 -0.017601777;
	setAttr -s 1828 ".ed";
	setAttr ".ed[0:165]"  0 19 0 2 16 0 4 17 0 6 18 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 5 0 8 9 1 10 7 0 9 10 1 11 1 0 10 11 1 11 8 1 12 8 0
		 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 12 0 17 13 0 16 17 1 18 14 0
		 17 18 1 19 15 0 18 19 1 19 16 1 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 20 0 26 27 0
		 27 28 0 28 29 0 29 30 0 30 31 0 31 26 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 32 0
		 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 43 38 0 20 26 0 21 27 0 22 28 0 23 29 0 24 30 0
		 25 31 0 26 32 1 27 33 1 28 34 1 29 35 1 30 36 1 31 37 1 32 38 0 33 39 0 34 40 0 35 41 0
		 36 42 0 37 43 0 38 20 1 39 21 1 40 22 1 41 23 1 42 24 1 43 25 1 44 45 1 45 46 1 46 47 1
		 47 48 1 48 49 1 50 51 1 51 44 1 52 53 1 53 54 1 54 55 1 55 56 0 56 57 1 58 59 1 59 52 0
		 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 66 67 0 67 60 0 68 69 1 69 70 1 70 71 1 71 72 1
		 72 73 1 74 75 1 75 68 1 44 52 1 45 53 1 46 54 1 47 55 1 48 56 1 49 57 0 50 58 0 51 59 1
		 57 65 1 58 66 1 60 68 1 61 69 1 62 70 1 63 71 1 64 72 1 65 73 0 66 74 0 67 75 1 73 49 1
		 74 50 1 68 76 1 69 77 1 76 77 1 44 78 1 45 79 1 78 79 1 70 80 1 77 80 1 46 81 1 79 81 1
		 71 82 1 80 82 1 47 83 1 81 83 1 72 84 1 82 84 1 48 85 1 83 85 1 73 86 0 84 86 1 49 87 0
		 85 87 1 86 87 1 74 88 0 75 89 1 88 89 1 50 90 0 88 90 1 51 91 1 90 91 1 89 76 1 91 78 1
		 76 92 1 77 93 1;
	setAttr ".ed[166:331]" 92 93 0 78 94 1 92 94 1 79 95 1 94 95 0 93 95 1 80 96 1
		 93 96 0 81 97 1 95 97 0 96 97 1 82 98 1 96 98 0 83 99 1 97 99 0 98 99 1 84 100 1
		 98 100 0 85 101 1 99 101 0 100 101 1 86 102 0 100 102 0 87 103 0 101 103 0 102 103 0
		 88 104 0 89 105 1 104 105 0 90 106 0 104 106 0 91 107 1 106 107 0 105 107 1 105 92 0
		 107 94 0 52 108 1 53 109 1 108 109 0 60 110 1 108 110 1 110 111 1 109 111 1 54 112 1
		 109 112 0 111 113 1 112 113 1 55 114 1 112 114 0 63 115 1 113 115 1 114 115 1 56 116 1
		 114 116 1 64 117 1 115 117 0 116 117 1 57 118 0 116 118 0 65 119 0 117 119 0 118 119 0
		 58 120 0 59 121 1 120 121 0 66 122 0 120 122 0 67 123 1 122 123 0 121 123 1 121 108 1
		 123 110 0 60 136 0 61 135 1 124 125 0 111 138 1 125 126 1 110 137 0 127 126 0 124 127 1
		 62 134 1 125 128 0 113 139 1 128 129 1 126 129 0 63 133 0 128 130 0 115 132 0 130 131 1
		 129 131 0 132 131 0 133 130 0 132 133 0 134 128 1 133 134 0 135 125 1 134 135 0 136 124 0
		 135 136 0 137 127 0 136 137 1 137 138 1 138 139 1 139 132 1 137 140 1 138 141 1 140 141 0
		 127 142 1 140 142 0 126 143 1 142 143 0 139 144 1 141 144 0 129 145 1 143 145 0 132 146 1
		 144 146 0 131 147 1 145 147 0 146 147 0 140 148 0 141 149 1 148 149 0 142 150 1 148 150 0
		 143 151 1 150 151 0 149 151 1 144 152 1 149 152 0 145 153 1 151 153 0 152 153 1 146 154 0
		 152 154 0 147 155 1 153 155 0 154 155 0 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1
		 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1 166 167 1 167 156 1 168 169 1 169 170 1
		 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1
		 179 168 1 180 181 1 181 182 1 182 183 1 183 184 1;
	setAttr ".ed[332:497]" 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 180 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 200 1 200 201 1 201 202 1 202 203 1 203 192 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 204 1 216 217 1
		 217 218 1 218 219 1 219 220 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 216 1 228 229 0 229 230 0 230 231 0 231 232 0 232 233 0 233 234 0 234 235 0
		 235 236 0 236 237 0 237 238 0 238 239 0 239 228 0 156 168 1 157 169 1 158 170 1 159 171 1
		 160 172 1 161 173 1 162 174 1 163 175 1 164 176 1 165 177 1 166 178 1 167 179 1 168 180 1
		 169 181 1 170 182 1 171 183 1 172 184 1 173 185 1 174 186 1 175 187 1 176 188 1 177 189 1
		 178 190 1 179 191 1 180 192 1 181 193 1 182 194 1 183 195 1 184 196 1 185 197 1 186 198 1
		 187 199 1 188 200 1 189 201 1 190 202 1 191 203 1 192 204 1 193 205 1 194 206 1 195 207 1
		 196 208 1 197 209 1 198 210 1 199 211 1 200 212 1 201 213 1 202 214 1 203 215 1 204 216 1
		 205 217 1 206 218 1 207 219 1 208 220 1 209 221 1 210 222 1 211 223 1 212 224 1 213 225 1
		 214 226 1 215 227 1 216 228 1 217 229 1 218 230 1 219 231 1 220 232 1 221 233 1 222 234 1
		 223 235 1 224 236 1 225 237 1 226 238 1 227 239 1 240 156 1 240 157 1 240 158 1 240 159 1
		 240 160 1 240 161 1 240 162 1 240 163 1 240 164 1 240 165 1 240 166 1 240 167 1 241 242 0
		 242 243 0 243 244 0 244 245 0 245 246 0 246 247 0 247 248 0 248 249 0 249 250 0 250 241 0
		 251 252 0 252 253 0 253 254 0 254 255 0 255 256 1 256 257 0 257 258 0 258 259 0 259 260 1
		 260 251 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1;
	setAttr ".ed[498:663]" 267 268 0 268 269 1 269 270 0 270 261 1 271 272 0 272 273 0
		 273 274 1 274 275 0 275 276 0 276 277 1 277 278 0 278 279 0 279 280 0 280 271 0 241 251 0
		 242 252 1 243 253 1 244 254 1 245 255 1 246 256 1 247 257 0 248 258 1 249 259 0 250 260 1
		 251 261 0 252 262 1 253 263 0 254 264 1 255 265 0 256 266 1 257 267 0 258 268 1 259 269 0
		 260 270 1 261 271 1 262 272 0 263 273 1 264 274 1 265 275 0 266 276 1 267 277 1 268 278 0
		 269 279 1 270 280 0 271 281 1 272 281 0 273 281 1 274 281 0 275 281 0 276 281 1 277 281 0
		 278 281 0 279 281 0 280 281 1 241 282 1 242 283 1 282 283 0 243 284 1 283 284 0 244 285 1
		 284 285 0 245 286 1 285 286 0 246 287 1 286 287 0 247 288 1 287 288 0 248 289 1 288 289 0
		 249 290 1 289 290 0 250 291 1 290 291 0 291 282 0 292 311 1 294 308 1 296 309 1 298 310 1
		 292 386 1 293 380 1 294 332 1 295 338 1 296 353 1 297 359 1 298 321 1 299 325 1 300 316 1
		 301 317 1 300 341 1 302 318 0 301 356 1 303 319 0 302 323 1 303 383 1 304 300 1 305 301 1
		 304 342 1 306 302 0 305 355 1 307 303 0 306 322 0 307 384 1 308 304 1 309 305 1 308 343 1
		 310 306 1 309 354 1 311 307 1 311 385 1 312 295 1 313 297 1 312 339 1 314 299 1 313 358 1
		 315 293 1 315 381 1 316 312 1 317 313 1 316 340 1 318 314 1 317 357 1 319 315 1 318 324 0
		 319 382 1 320 296 1 321 333 1 320 352 1 322 334 0 323 335 1 322 323 1 324 336 0 323 324 1
		 325 337 1 326 297 1 325 396 1 327 313 1 326 327 1 328 317 1 327 328 1 329 301 1 328 329 1
		 330 305 1 329 330 1 331 309 1 330 331 1 331 320 1 332 320 1 333 292 1 332 351 1 334 307 0
		 335 303 1 334 335 1 336 319 0 335 336 1 337 293 1 338 326 1 337 397 1 339 327 1 338 339 1
		 340 328 1 339 340 1 341 329 1 340 341 1 342 330 1 341 342 1 343 331 1;
	setAttr ".ed[664:829]" 342 343 1 343 332 1 344 295 1 345 312 1 344 345 1 346 316 1
		 345 346 1 347 300 1 346 347 1 348 304 1 347 348 1 349 308 1 348 349 1 350 294 1 349 350 1
		 351 369 1 350 351 1 352 370 1 351 352 1 353 371 1 352 353 1 354 372 1 353 354 1 355 373 1
		 354 355 1 356 374 1 355 356 1 357 375 1 356 357 1 358 376 1 357 358 1 359 377 1 358 359 1
		 360 326 1 359 360 1 361 338 1 360 361 1 361 344 1 362 344 1 363 345 1 362 363 1 364 346 1
		 363 364 1 365 347 1 364 365 1 366 348 1 365 366 1 367 349 1 366 367 1 368 350 1 367 368 1
		 369 387 1 368 369 1 370 388 1 369 370 1 371 389 1 370 371 1 372 390 1 371 372 1 373 391 1
		 372 373 1 374 392 1 373 374 1 375 393 1 374 375 1 376 394 1 375 376 1 377 395 1 376 377 1
		 378 360 1 377 378 1 379 361 1 378 379 1 379 362 1 380 362 1 381 363 1 380 381 1 382 364 1
		 381 382 1 383 365 1 382 383 1 384 366 1 383 384 1 385 367 1 384 385 1 386 368 1 385 386 1
		 387 333 1 386 387 1 388 321 1 387 388 1 389 298 1 388 389 1 390 310 1 389 390 1 391 306 1
		 390 391 1 392 302 1 391 392 1 393 318 1 392 393 1 394 314 1 393 394 1 395 299 1 394 395 1
		 396 378 1 395 396 1 397 379 1 396 397 1 397 380 1 333 449 1 398 399 1 311 451 1 399 400 1
		 292 450 1 401 400 0 398 401 0 334 443 1 399 402 1 307 442 0 402 403 0 400 403 0 298 447 1
		 310 446 1 404 405 0 405 406 1 321 448 1 407 406 1 404 407 0 322 444 1 406 408 1 306 445 0
		 405 409 0 409 408 0 406 399 1 407 398 0 408 402 0 315 472 1 410 411 1 337 474 1 410 412 1
		 293 473 1 412 413 0 411 413 0 336 480 1 319 481 0 414 415 0 414 410 1 415 411 0 324 479 1
		 416 417 1 318 478 0 418 416 0 314 477 1 418 419 0 419 417 1 325 475 1 417 420 1 299 476 1
		 419 421 0 421 420 0 416 414 0 417 410 1 420 412 0 422 403 0 423 402 1;
	setAttr ".ed[830:995]" 422 423 1 424 408 1 423 424 1 425 409 0 424 425 1 426 405 1
		 425 426 1 427 404 1 426 427 1 428 407 1 427 428 1 429 398 1 428 429 1 430 401 1 429 430 1
		 431 400 1 430 431 1 431 422 1 432 422 0 433 423 1 432 433 1 434 424 1 433 434 1 435 425 0
		 434 435 1 436 426 1 435 436 1 437 427 1 436 437 1 438 428 1 437 438 1 439 429 1 438 439 1
		 440 430 1 439 440 1 441 431 1 440 441 1 441 432 1 442 432 0 443 433 1 442 443 1 444 434 1
		 443 444 1 445 435 0 444 445 1 446 436 1 445 446 1 447 437 1 446 447 1 448 438 1 447 448 1
		 449 439 1 448 449 1 450 440 1 449 450 1 451 441 1 450 451 1 451 442 1 452 411 1 453 413 1
		 452 453 1 454 412 1 453 454 1 455 420 1 454 455 1 456 421 1 455 456 1 457 419 1 456 457 1
		 458 418 1 457 458 1 459 416 1 458 459 1 460 414 1 459 460 1 461 415 1 460 461 1 461 452 1
		 462 452 1 463 453 1 462 463 1 464 454 1 463 464 1 465 455 1 464 465 1 466 456 1 465 466 1
		 467 457 1 466 467 1 468 458 0 467 468 1 469 459 1 468 469 1 470 460 1 469 470 1 471 461 0
		 470 471 1 471 462 1 472 462 1 473 463 1 472 473 1 474 464 1 473 474 1 475 465 1 474 475 1
		 476 466 1 475 476 1 477 467 1 476 477 1 478 468 0 477 478 1 479 469 1 478 479 1 480 470 1
		 479 480 1 481 471 0 480 481 1 481 472 1 482 483 1 483 484 1 484 485 1 485 486 1 486 487 1
		 487 488 1 488 489 1 489 482 1 490 491 0 491 492 0 492 493 0 493 494 0 494 495 0 495 496 0
		 496 497 0 497 490 0 482 543 1 483 542 1 484 541 1 485 540 1 486 539 1 487 538 1 488 545 1
		 489 544 1 498 495 1 499 494 1 498 499 1 500 493 1 499 500 1 501 492 1 500 501 1 502 491 1
		 501 502 1 503 490 1 502 503 1 504 497 1 503 504 1 505 496 1 504 505 1 505 498 1 506 498 1
		 507 499 1 506 507 1 508 500 1 507 508 1 509 501 1 508 509 1 510 502 1;
	setAttr ".ed[996:1161]" 509 510 1 511 503 1 510 511 1 512 504 1 511 512 1 513 505 1
		 512 513 1 513 506 1 514 506 1 515 507 1 514 515 1 516 508 1 515 516 1 517 509 1 516 517 1
		 518 510 1 517 518 1 519 511 1 518 519 1 520 512 1 519 520 1 521 513 1 520 521 1 521 514 1
		 522 571 1 523 572 1 522 523 1 524 573 1 523 524 1 525 574 1 524 525 1 526 575 1 525 526 1
		 527 576 1 526 527 1 528 577 1 527 528 1 529 578 1 528 529 1 529 522 1 530 522 1 531 523 1
		 530 531 1 532 524 1 531 532 1 533 525 1 532 533 1 534 526 1 533 534 1 535 527 1 534 535 1
		 536 528 1 535 536 1 537 529 1 536 537 1 537 530 1 538 530 1 539 531 1 538 539 1 540 532 1
		 539 540 1 541 533 1 540 541 1 542 534 1 541 542 1 543 535 1 542 543 1 544 536 1 543 544 1
		 545 537 1 544 545 1 545 538 1 489 546 1 482 547 1 546 547 1 488 548 1 548 546 1 487 549 1
		 549 548 1 486 550 1 550 549 1 485 551 1 551 550 1 484 552 1 552 551 1 483 553 1 553 552 1
		 547 553 1 546 554 1 547 555 1 554 555 1 548 556 1 556 554 1 549 557 1 557 556 1 550 558 1
		 558 557 1 551 559 1 559 558 1 552 560 1 560 559 1 553 561 1 561 560 1 555 561 1 554 562 1
		 555 563 1 562 563 1 556 564 1 564 562 1 557 565 1 565 564 1 558 566 1 566 565 1 559 567 1
		 567 566 1 560 568 1 568 567 1 561 569 1 569 568 1 563 569 1 568 570 1 570 564 1 566 570 1
		 570 563 1 571 514 1 572 515 1 571 572 1 573 516 1 572 573 1 574 517 1 573 574 1 575 518 1
		 574 575 1 576 519 1 575 576 1 577 520 1 576 577 1 578 521 1 577 578 1 578 571 1 579 580 1
		 580 581 1 581 582 1 582 583 1 583 584 1 584 585 1 585 586 1 586 587 1 587 588 1 588 589 1
		 589 590 1 590 579 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1 596 597 1 597 598 1
		 598 599 1 599 600 1 600 601 1 601 602 1 602 591 1 603 604 1 604 605 1;
	setAttr ".ed[1162:1327]" 605 606 1 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1
		 611 612 1 612 613 1 613 614 1 614 603 1 615 616 1 616 617 1 617 618 1 618 619 1 619 620 1
		 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 626 1 626 615 1 627 628 1 628 629 1
		 629 630 1 630 631 1 631 632 1 632 633 1 633 634 1 634 635 1 635 636 1 636 637 1 637 638 1
		 638 627 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 646 1 646 647 1
		 647 648 1 648 649 1 649 650 1 650 639 1 651 652 1 652 653 1 653 654 1 654 655 1 655 656 1
		 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 651 1 663 664 1 664 665 1
		 665 666 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1 673 674 1
		 674 663 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 680 681 1 681 682 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 675 1 579 591 1 580 592 1 581 593 1 582 594 1 583 595 1
		 584 596 1 585 597 1 586 598 1 587 599 1 588 600 1 589 601 1 590 602 1 591 603 1 592 604 1
		 593 605 1 594 606 1 595 607 1 596 608 1 597 609 1 598 610 1 599 611 1 600 612 1 601 613 1
		 602 614 1 603 615 1 604 616 1 605 617 1 606 618 1 607 619 1 608 620 1 609 621 1 610 622 1
		 611 623 1 612 624 1 613 625 1 614 626 1 615 627 1 616 628 1 617 629 1 618 630 1 619 631 1
		 620 632 1 621 633 1 622 634 1 623 635 1 624 636 1 625 637 1 626 638 1 627 639 1 628 640 1
		 629 641 1 630 642 1 631 643 1 632 644 1 633 645 1 634 646 1 635 647 1 636 648 1 637 649 1
		 638 650 1 639 651 1 640 652 1 641 653 1 642 654 1 643 655 1 644 656 1 645 657 1 646 658 1
		 647 659 1 648 660 1 649 661 1 650 662 1 651 663 1 652 664 1 653 665 1 654 666 1 655 667 1
		 656 668 1 657 669 1 658 670 1 659 671 1 660 672 1 661 673 1 662 674 1;
	setAttr ".ed[1328:1493]" 663 675 1 664 676 1 665 677 1 666 678 1 667 679 1 668 680 1
		 669 681 1 670 682 1 671 683 1 672 684 1 673 685 1 674 686 1 687 579 1 687 580 1 687 581 1
		 687 582 1 687 583 1 687 584 1 687 585 1 687 586 1 687 587 1 687 588 1 687 589 1 687 590 1
		 675 688 1 676 688 1 677 688 1 678 688 1 679 688 1 680 688 1 681 688 1 682 688 1 683 688 1
		 684 688 1 685 688 1 686 688 1 689 690 1 690 691 1 691 692 1 692 693 1 693 694 1 694 695 1
		 695 696 1 696 697 1 697 698 1 698 699 1 699 700 1 700 689 1 701 702 1 702 703 1 703 704 1
		 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1 711 712 1 712 701 1
		 713 714 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1 721 722 1
		 722 723 1 723 724 1 724 713 1 725 726 1 726 727 1 727 728 1 728 729 1 729 730 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 725 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 744 745 1 745 746 1 746 747 1 747 748 1 748 737 1
		 749 750 1 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1
		 758 759 1 759 760 1 760 749 1 761 762 1 762 763 1 763 764 1 764 765 1 765 766 1 766 767 1
		 767 768 1 768 769 1 769 770 1 770 771 1 771 772 1 772 761 1 773 774 1 774 775 1 775 776 1
		 776 777 1 777 778 1 778 779 1 779 780 1 780 781 1 781 782 1 782 783 1 783 784 1 784 773 1
		 785 786 1 786 787 1 787 788 1 788 789 1 789 790 1 790 791 1 791 792 1 792 793 1 793 794 1
		 794 795 1 795 796 1 796 785 1 689 701 1 690 702 1 691 703 1 692 704 1 693 705 1 694 706 1
		 695 707 1 696 708 1 697 709 1 698 710 1 699 711 1 700 712 1 701 713 1 702 714 1 703 715 1
		 704 716 1 705 717 1 706 718 1 707 719 1 708 720 1 709 721 1 710 722 1;
	setAttr ".ed[1494:1659]" 711 723 1 712 724 1 713 725 1 714 726 1 715 727 1 716 728 1
		 717 729 1 718 730 1 719 731 1 720 732 1 721 733 1 722 734 1 723 735 1 724 736 1 725 737 1
		 726 738 1 727 739 1 728 740 1 729 741 1 730 742 1 731 743 1 732 744 1 733 745 1 734 746 1
		 735 747 1 736 748 1 737 749 1 738 750 1 739 751 1 740 752 1 741 753 1 742 754 1 743 755 1
		 744 756 1 745 757 1 746 758 1 747 759 1 748 760 1 749 761 1 750 762 1 751 763 1 752 764 1
		 753 765 1 754 766 1 755 767 1 756 768 1 757 769 1 758 770 1 759 771 1 760 772 1 761 773 1
		 762 774 1 763 775 1 764 776 1 765 777 1 766 778 1 767 779 1 768 780 1 769 781 1 770 782 1
		 771 783 1 772 784 1 773 785 1 774 786 1 775 787 1 776 788 1 777 789 1 778 790 1 779 791 1
		 780 792 1 781 793 1 782 794 1 783 795 1 784 796 1 797 689 1 797 690 1 797 691 1 797 692 1
		 797 693 1 797 694 1 797 695 1 797 696 1 797 697 1 797 698 1 797 699 1 797 700 1 785 798 1
		 786 798 1 787 798 1 788 798 1 789 798 1 790 798 1 791 798 1 792 798 1 793 798 1 794 798 1
		 795 798 1 796 798 1 799 800 1 800 859 1 859 860 1 799 860 1 800 801 1 801 858 1 858 859 1
		 801 802 1 802 857 1 857 858 1 802 803 1 803 856 1 856 857 1 803 804 1 804 855 1 855 856 1
		 804 805 1 805 862 1 862 855 1 805 806 1 806 861 1 861 862 1 806 799 1 860 861 1 883 887 1
		 887 881 1 882 881 1 883 882 1 807 808 0 808 809 0 809 810 0 810 811 0 811 812 0 812 813 0
		 813 814 0 814 807 0 815 816 1 815 812 1 816 811 1 816 817 1 817 810 1 817 818 1 818 809 1
		 818 819 1 819 808 1 819 820 1 820 807 1 820 821 1 821 814 1 821 822 1 822 813 1 822 815 1
		 823 824 1 823 815 1 824 816 1 824 825 1 825 817 1 825 826 1 826 818 1 826 827 1 827 819 1
		 827 828 1 828 820 1 828 829 1 829 821 1 829 830 1 830 822 1 830 823 1;
	setAttr ".ed[1660:1825]" 831 832 1 831 823 1 832 824 1 832 833 1 833 825 1 833 834 1
		 834 826 1 834 835 1 835 827 1 835 836 1 836 828 1 836 837 1 837 829 1 837 838 1 838 830 1
		 838 831 1 839 840 1 839 888 1 888 889 1 840 889 1 840 841 1 889 890 1 841 890 1 841 842 1
		 890 891 1 842 891 1 842 843 1 891 892 1 843 892 1 843 844 1 892 893 1 844 893 1 844 845 1
		 893 894 1 845 894 1 845 846 1 894 895 1 846 895 1 846 839 1 895 888 1 847 848 1 847 839 1
		 848 840 1 848 849 1 849 841 1 849 850 1 850 842 1 850 851 1 851 843 1 851 852 1 852 844 1
		 852 853 1 853 845 1 853 854 1 854 846 1 854 847 1 855 847 1 856 848 1 857 849 1 858 850 1
		 859 851 1 860 852 1 861 853 1 862 854 1 806 863 1 863 864 1 799 864 1 805 865 1 865 863 1
		 804 866 1 866 865 1 803 867 1 867 866 1 802 868 1 868 867 1 801 869 1 869 868 1 800 870 1
		 870 869 1 864 870 1 863 871 1 871 872 1 864 872 1 865 873 1 873 871 1 866 874 1 874 873 1
		 867 875 1 875 874 1 868 876 1 876 875 1 869 877 1 877 876 1 870 878 1 878 877 1 872 878 1
		 871 879 1 879 880 1 872 880 1 873 881 1 881 879 1 874 882 1 875 883 1 876 884 1 884 883 1
		 877 885 1 885 884 1 878 886 1 886 885 1 880 886 1 887 880 1 885 887 1 888 831 1 889 832 1
		 890 833 1 891 834 1 892 835 1 893 836 1 894 837 1 895 838 1 896 897 0 896 902 0 902 903 0
		 897 903 0 897 898 0 903 904 0 898 904 0 898 899 0 904 905 0 899 905 0 899 900 0 905 906 0
		 900 906 0 900 901 0 906 907 0 901 907 0 901 896 0 907 902 0 902 908 1 908 909 0 903 909 1
		 909 910 0 904 910 1 910 911 0 905 911 1 911 912 0 906 912 1 912 913 0 907 913 1 913 908 0
		 908 914 0 914 915 0 909 915 0 915 916 0 910 916 0 916 917 0 911 917 0 917 918 0 912 918 0
		 918 919 0 913 919 0 919 914 0 914 896 1 915 897 1 916 898 1 917 899 1;
	setAttr ".ed[1826:1827]" 918 900 1 919 901 1;
	setAttr -s 924 -ch 3634 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 35 -2 -5
		mu 0 4 17 22 27 29
		f 4 1 30 -3 -7
		mu 0 4 0 1 2 3
		f 4 2 32 -4 -9
		mu 0 4 30 31 32 33
		f 4 3 34 -1 -11
		mu 0 4 4 5 6 7
		f 4 -12 -10 -8 -6
		mu 0 4 8 9 10 11
		f 4 10 4 6 8
		mu 0 4 4 7 0 3
		f 4 12 7 -14 -15
		mu 0 4 12 11 10 13
		f 4 -17 13 9 -16
		mu 0 4 34 35 36 37
		f 4 -19 15 11 -18
		mu 0 4 14 15 9 8
		f 4 -20 17 5 -13
		mu 0 4 38 39 28 26
		f 4 20 14 -22 -23
		mu 0 4 16 12 13 18
		f 4 -25 21 16 -24
		mu 0 4 25 24 35 34
		f 4 -27 23 18 -26
		mu 0 4 19 20 15 14
		f 4 -28 25 19 -21
		mu 0 4 23 21 39 38
		f 4 28 22 -30 -31
		mu 0 4 1 16 18 2
		f 4 -33 29 24 -32
		mu 0 4 32 31 24 25
		f 4 -35 31 26 -34
		mu 0 4 6 5 20 19
		f 4 -36 33 27 -29
		mu 0 4 27 22 21 23
		f 4 -37 60 42 -62
		mu 0 4 40 41 42 43
		f 4 -38 61 43 -63
		mu 0 4 44 40 43 45
		f 4 -39 62 44 -64
		mu 0 4 46 44 45 47
		f 4 -40 63 45 -65
		mu 0 4 48 46 47 49
		f 4 -41 64 46 -66
		mu 0 4 50 48 49 51
		f 4 -42 65 47 -61
		mu 0 4 41 50 51 42
		f 4 -43 66 48 -68
		mu 0 4 52 53 54 55
		f 4 -44 67 49 -69
		mu 0 4 56 52 55 57
		f 4 -45 68 50 -70
		mu 0 4 58 56 57 59
		f 4 -46 69 51 -71
		mu 0 4 60 58 59 61
		f 4 -47 70 52 -72
		mu 0 4 62 60 61 63
		f 4 -48 71 53 -67
		mu 0 4 53 62 63 54
		f 4 -49 72 54 -74
		mu 0 4 64 65 66 67
		f 4 -50 73 55 -75
		mu 0 4 68 64 67 69
		f 4 -51 74 56 -76
		mu 0 4 70 71 72 73
		f 4 -52 75 57 -77
		mu 0 4 74 70 73 75
		f 4 -53 76 58 -78
		mu 0 4 76 74 75 77
		f 4 -54 77 59 -73
		mu 0 4 65 76 77 66
		f 4 -55 78 36 -80
		mu 0 4 78 79 80 81
		f 4 -56 79 37 -81
		mu 0 4 82 78 81 83
		f 4 -57 80 38 -82
		mu 0 4 84 82 83 85
		f 4 -58 81 39 -83
		mu 0 4 86 84 85 87
		f 4 -59 82 40 -84
		mu 0 4 88 86 87 89
		f 4 -60 83 41 -79
		mu 0 4 79 88 89 80
		f 4 -85 112 91 -114
		mu 0 4 90 91 92 93
		f 4 -86 113 92 -115
		mu 0 4 94 90 93 95
		f 4 -87 114 93 -116
		mu 0 4 96 94 95 97
		f 4 -88 115 94 -117
		mu 0 4 98 96 97 99
		f 4 -89 116 95 -118
		mu 0 4 100 98 99 101
		f 4 -90 118 96 -120
		mu 0 4 102 103 104 105
		f 4 -91 119 97 -113
		mu 0 4 91 102 105 92
		f 4 -205 206 207 -209
		mu 0 4 106 107 108 109
		f 4 -211 208 211 -213
		mu 0 4 110 106 109 111
		f 4 -215 212 216 -218
		mu 0 4 112 110 111 113
		f 4 -220 217 221 -223
		mu 0 4 114 112 113 115
		f 4 -225 222 226 -228
		mu 0 4 116 114 115 117
		f 4 -231 232 234 -236
		mu 0 4 118 119 120 121
		f 4 -237 235 237 -207
		mu 0 4 107 118 121 108
		f 4 -99 122 105 -124
		mu 0 4 122 123 124 125
		f 4 -100 123 106 -125
		mu 0 4 126 122 125 127
		f 4 -101 124 107 -126
		mu 0 4 128 126 127 129
		f 4 -102 125 108 -127
		mu 0 4 130 128 129 131
		f 4 -103 126 109 -128
		mu 0 4 132 130 131 133
		f 4 -104 128 110 -130
		mu 0 4 134 135 136 137
		f 4 -105 129 111 -123
		mu 0 4 123 134 137 124
		f 4 -167 168 170 -172
		mu 0 4 138 139 140 141
		f 4 -174 171 175 -177
		mu 0 4 142 138 141 143
		f 4 -179 176 180 -182
		mu 0 4 144 145 143 146
		f 4 -184 181 185 -187
		mu 0 4 147 144 146 148
		f 4 -189 186 190 -192
		mu 0 4 149 147 148 150
		f 4 -195 196 198 -200
		mu 0 4 151 152 153 154
		f 4 -201 199 201 -169
		mu 0 4 139 151 154 140
		f 4 120 127 130 117
		mu 0 4 155 132 133 156
		f 4 -119 -132 -129 -122
		mu 0 4 157 158 136 135
		f 4 -106 132 134 -134
		mu 0 4 125 124 159 160
		f 4 84 136 -138 -136
		mu 0 4 91 90 161 162
		f 4 -107 133 139 -139
		mu 0 4 127 125 160 163
		f 4 85 140 -142 -137
		mu 0 4 90 94 164 161
		f 4 -108 138 143 -143
		mu 0 4 129 127 163 165
		f 4 86 144 -146 -141
		mu 0 4 94 96 166 164
		f 4 -109 142 147 -147
		mu 0 4 131 129 165 167
		f 4 87 148 -150 -145
		mu 0 4 96 98 168 166
		f 4 -110 146 151 -151
		mu 0 4 133 131 167 169
		f 4 88 152 -154 -149
		mu 0 4 98 100 170 168
		f 4 -131 150 154 -153
		mu 0 4 156 133 169 171
		f 4 -111 155 157 -157
		mu 0 4 137 136 172 173
		f 4 131 158 -160 -156
		mu 0 4 136 158 174 172
		f 4 89 160 -162 -159
		mu 0 4 103 102 175 176
		f 4 -112 156 162 -133
		mu 0 4 124 137 173 159
		f 4 90 135 -164 -161
		mu 0 4 102 91 162 175
		f 4 -135 164 166 -166
		mu 0 4 160 159 177 178
		f 4 137 169 -171 -168
		mu 0 4 162 161 141 140
		f 4 -140 165 173 -173
		mu 0 4 163 160 178 179
		f 4 141 174 -176 -170
		mu 0 4 161 164 143 141
		f 4 -144 172 178 -178
		mu 0 4 165 163 179 180
		f 4 145 179 -181 -175
		mu 0 4 164 166 146 143
		f 4 -148 177 183 -183
		mu 0 4 167 165 180 181
		f 4 149 184 -186 -180
		mu 0 4 166 168 148 146
		f 4 -152 182 188 -188
		mu 0 4 169 167 181 182
		f 4 153 189 -191 -185
		mu 0 4 168 170 150 148
		f 4 -155 187 191 -190
		mu 0 4 171 169 182 183
		f 4 -158 192 194 -194
		mu 0 4 173 172 184 185
		f 4 159 195 -197 -193
		mu 0 4 172 174 186 184
		f 4 161 197 -199 -196
		mu 0 4 176 175 154 153
		f 4 -163 193 200 -165
		mu 0 4 159 173 185 177
		f 4 163 167 -202 -198
		mu 0 4 175 162 140 154
		f 4 -92 202 204 -204
		mu 0 4 187 188 107 106
		f 4 240 242 -245 -246
		mu 0 4 189 190 191 192
		f 4 -93 203 210 -210
		mu 0 4 193 187 106 110
		f 4 247 249 -251 -243
		mu 0 4 190 194 195 191
		f 4 -94 209 214 -214
		mu 0 4 196 193 110 112
		f 4 252 254 -256 -250
		mu 0 4 194 197 198 195
		f 4 -95 213 219 -219
		mu 0 4 199 196 112 114
		f 4 101 220 -222 -216
		mu 0 4 128 130 200 201
		f 4 -96 218 224 -224
		mu 0 4 202 199 114 116
		f 4 102 225 -227 -221
		mu 0 4 130 132 203 200
		f 4 -121 223 227 -226
		mu 0 4 132 155 204 203
		f 4 -97 228 230 -230
		mu 0 4 205 206 119 118
		f 4 121 231 -233 -229
		mu 0 4 157 135 207 208
		f 4 103 233 -235 -232
		mu 0 4 135 134 209 207
		f 4 -98 229 236 -203
		mu 0 4 188 205 118 107
		f 4 104 205 -238 -234
		mu 0 4 134 123 210 209
		f 4 98 239 264 -239
		mu 0 4 211 212 213 214
		f 4 -208 243 267 -242
		mu 0 4 215 216 217 218
		f 4 -206 238 266 -244
		mu 0 4 219 220 221 222
		f 4 99 246 262 -240
		mu 0 4 212 223 224 213
		f 4 -212 241 268 -249
		mu 0 4 225 215 218 226
		f 4 100 251 260 -247
		mu 0 4 223 227 228 224
		f 4 215 253 258 -252
		mu 0 4 229 230 231 232
		f 4 -217 248 269 -254
		mu 0 4 233 225 226 234
		f 4 -259 256 -255 -258
		mu 0 4 232 231 198 197
		f 4 -261 257 -253 -260
		mu 0 4 224 228 235 236
		f 4 -263 259 -248 -262
		mu 0 4 213 224 236 237
		f 4 -265 261 -241 -264
		mu 0 4 214 213 237 238
		f 4 -267 263 245 -266
		mu 0 4 222 221 189 192
		f 4 -289 290 292 -294
		mu 0 4 239 240 241 242
		f 4 -296 293 297 -299
		mu 0 4 243 239 242 244
		f 4 -301 298 302 -304
		mu 0 4 245 243 244 246
		f 4 -268 270 272 -272
		mu 0 4 218 217 247 248
		f 4 265 273 -275 -271
		mu 0 4 217 249 250 247
		f 4 244 275 -277 -274
		mu 0 4 249 251 252 250
		f 4 -269 271 278 -278
		mu 0 4 226 218 248 253
		f 4 250 279 -281 -276
		mu 0 4 251 254 255 252
		f 4 -270 277 282 -282
		mu 0 4 234 226 253 256
		f 4 255 283 -285 -280
		mu 0 4 254 257 258 255
		f 4 -257 281 285 -284
		mu 0 4 257 234 256 258
		f 4 -273 286 288 -288
		mu 0 4 259 260 240 239
		f 4 274 289 -291 -287
		mu 0 4 260 261 241 240
		f 4 276 291 -293 -290
		mu 0 4 261 262 242 241
		f 4 -279 287 295 -295
		mu 0 4 263 259 239 243
		f 4 280 296 -298 -292
		mu 0 4 262 264 244 242
		f 4 -283 294 300 -300
		mu 0 4 265 263 243 245
		f 4 284 301 -303 -297
		mu 0 4 264 266 246 244
		f 4 -286 299 303 -302
		mu 0 4 266 265 245 246
		f 4 304 389 -317 -389
		mu 0 4 267 268 269 270
		f 4 305 390 -318 -390
		mu 0 4 268 271 272 269
		f 4 306 391 -319 -391
		mu 0 4 271 273 274 272
		f 4 307 392 -320 -392
		mu 0 4 273 275 276 274
		f 4 308 393 -321 -393
		mu 0 4 275 277 278 276
		f 4 309 394 -322 -394
		mu 0 4 277 279 280 278
		f 4 310 395 -323 -395
		mu 0 4 279 281 282 280
		f 4 311 396 -324 -396
		mu 0 4 281 283 284 282
		f 4 312 397 -325 -397
		mu 0 4 285 286 287 288
		f 4 313 398 -326 -398
		mu 0 4 286 289 290 287
		f 4 314 399 -327 -399
		mu 0 4 289 291 292 290
		f 4 315 388 -328 -400
		mu 0 4 291 267 270 292
		f 4 316 401 -329 -401
		mu 0 4 270 269 293 294
		f 4 317 402 -330 -402
		mu 0 4 269 272 295 293
		f 4 318 403 -331 -403
		mu 0 4 272 274 296 295
		f 4 319 404 -332 -404
		mu 0 4 274 276 297 296
		f 4 320 405 -333 -405
		mu 0 4 276 278 298 297
		f 4 321 406 -334 -406
		mu 0 4 278 280 299 298
		f 4 322 407 -335 -407
		mu 0 4 280 282 300 299
		f 4 323 408 -336 -408
		mu 0 4 282 284 301 300
		f 4 324 409 -337 -409
		mu 0 4 288 287 302 303
		f 4 325 410 -338 -410
		mu 0 4 287 290 304 302
		f 4 326 411 -339 -411
		mu 0 4 290 292 305 304
		f 4 327 400 -340 -412
		mu 0 4 292 270 294 305
		f 4 328 413 -341 -413
		mu 0 4 294 293 306 307
		f 4 329 414 -342 -414
		mu 0 4 293 295 308 306
		f 4 330 415 -343 -415
		mu 0 4 295 296 309 308
		f 4 331 416 -344 -416
		mu 0 4 296 297 310 309
		f 4 332 417 -345 -417
		mu 0 4 297 298 311 310
		f 4 333 418 -346 -418
		mu 0 4 298 299 312 311
		f 4 334 419 -347 -419
		mu 0 4 299 300 313 312
		f 4 335 420 -348 -420
		mu 0 4 300 301 314 313
		f 4 336 421 -349 -421
		mu 0 4 303 302 315 316
		f 4 337 422 -350 -422
		mu 0 4 302 304 317 315
		f 4 338 423 -351 -423
		mu 0 4 304 305 318 317
		f 4 339 412 -352 -424
		mu 0 4 305 294 307 318
		f 4 340 425 -353 -425
		mu 0 4 307 306 319 320
		f 4 341 426 -354 -426
		mu 0 4 306 308 321 319
		f 4 342 427 -355 -427
		mu 0 4 308 309 322 321
		f 4 343 428 -356 -428
		mu 0 4 309 310 323 322
		f 4 344 429 -357 -429
		mu 0 4 310 311 324 323
		f 4 345 430 -358 -430
		mu 0 4 311 312 325 324
		f 4 346 431 -359 -431
		mu 0 4 312 313 326 325
		f 4 347 432 -360 -432
		mu 0 4 313 314 327 326
		f 4 348 433 -361 -433
		mu 0 4 316 315 328 329
		f 4 349 434 -362 -434
		mu 0 4 315 317 330 328
		f 4 350 435 -363 -435
		mu 0 4 317 318 331 330
		f 4 351 424 -364 -436
		mu 0 4 318 307 320 331
		f 4 352 437 -365 -437
		mu 0 4 320 319 332 333
		f 4 353 438 -366 -438
		mu 0 4 319 321 334 332
		f 4 354 439 -367 -439
		mu 0 4 321 322 335 334
		f 4 355 440 -368 -440
		mu 0 4 322 323 336 335
		f 4 356 441 -369 -441
		mu 0 4 323 324 337 336
		f 4 357 442 -370 -442
		mu 0 4 324 325 338 337
		f 4 358 443 -371 -443
		mu 0 4 325 326 339 338
		f 4 359 444 -372 -444
		mu 0 4 326 327 340 339
		f 4 360 445 -373 -445
		mu 0 4 329 328 341 342
		f 4 361 446 -374 -446
		mu 0 4 328 330 343 341
		f 4 362 447 -375 -447
		mu 0 4 330 331 344 343
		f 4 363 436 -376 -448
		mu 0 4 331 320 333 344
		f 4 364 449 -377 -449
		mu 0 4 333 332 345 346
		f 4 365 450 -378 -450
		mu 0 4 332 334 347 345
		f 4 366 451 -379 -451
		mu 0 4 334 335 348 347
		f 4 367 452 -380 -452
		mu 0 4 335 336 349 348
		f 4 368 453 -381 -453
		mu 0 4 336 337 350 349
		f 4 369 454 -382 -454
		mu 0 4 337 338 351 350
		f 4 370 455 -383 -455
		mu 0 4 338 339 352 351
		f 4 371 456 -384 -456
		mu 0 4 339 340 353 352
		f 4 372 457 -385 -457
		mu 0 4 342 341 354 355
		f 4 373 458 -386 -458
		mu 0 4 341 343 356 354
		f 4 374 459 -387 -459
		mu 0 4 343 344 357 356
		f 4 375 448 -388 -460
		mu 0 4 344 333 346 357
		f 3 -305 -461 461
		mu 0 3 268 267 358
		f 3 -306 -462 462
		mu 0 3 271 268 358
		f 3 -307 -463 463
		mu 0 3 273 271 358
		f 3 -308 -464 464
		mu 0 3 275 273 358
		f 3 -309 -465 465
		mu 0 3 277 275 358
		f 3 -310 -466 466
		mu 0 3 279 277 358
		f 3 -311 -467 467
		mu 0 3 281 279 358
		f 3 -312 -468 468
		mu 0 3 283 281 358
		f 3 -313 -469 469
		mu 0 3 286 285 358
		f 3 -314 -470 470
		mu 0 3 289 286 358
		f 3 -315 -471 471
		mu 0 3 291 289 358
		f 3 -316 -472 460
		mu 0 3 267 291 358
		f 4 472 513 -483 -513
		mu 0 4 359 360 361 362
		f 4 473 514 -484 -514
		mu 0 4 363 364 365 366
		f 4 474 515 -485 -515
		mu 0 4 367 368 369 370
		f 4 475 516 -486 -516
		mu 0 4 371 372 373 374
		f 4 476 517 -487 -517
		mu 0 4 375 376 377 378
		f 4 477 518 -488 -518
		mu 0 4 379 380 381 382
		f 4 478 519 -489 -519
		mu 0 4 383 384 385 386
		f 4 479 520 -490 -520
		mu 0 4 387 388 389 390
		f 4 480 521 -491 -521
		mu 0 4 391 392 393 394
		f 4 481 512 -492 -522
		mu 0 4 395 396 397 398
		f 4 482 523 -493 -523
		mu 0 4 362 361 399 400
		f 4 483 524 -494 -524
		mu 0 4 366 365 401 402
		f 4 484 525 -495 -525
		mu 0 4 370 369 403 404
		f 4 485 526 -496 -526
		mu 0 4 374 373 405 406
		f 4 486 527 -497 -527
		mu 0 4 378 377 407 408
		f 4 487 528 -498 -528
		mu 0 4 382 381 409 410
		f 4 488 529 -499 -529
		mu 0 4 386 385 411 412
		f 4 489 530 -500 -530
		mu 0 4 390 389 413 414
		f 4 490 531 -501 -531
		mu 0 4 394 393 415 416
		f 4 491 522 -502 -532
		mu 0 4 398 397 417 418
		f 4 492 533 -503 -533
		mu 0 4 400 399 419 420
		f 4 493 534 -504 -534
		mu 0 4 402 401 421 419
		f 4 494 535 -505 -535
		mu 0 4 404 403 422 421
		f 4 495 536 -506 -536
		mu 0 4 406 405 423 422
		f 4 496 537 -507 -537
		mu 0 4 408 407 424 423
		f 4 497 538 -508 -538
		mu 0 4 410 409 425 424
		f 4 498 539 -509 -539
		mu 0 4 412 411 426 425
		f 4 499 540 -510 -540
		mu 0 4 414 413 427 426
		f 4 500 541 -511 -541
		mu 0 4 416 415 428 427
		f 4 501 532 -512 -542
		mu 0 4 418 417 420 428
		f 3 502 543 -543
		mu 0 3 420 419 429
		f 3 503 544 -544
		mu 0 3 419 421 429
		f 3 504 545 -545
		mu 0 3 421 422 429
		f 3 505 546 -546
		mu 0 3 422 423 429
		f 3 506 547 -547
		mu 0 3 423 424 429
		f 3 507 548 -548
		mu 0 3 424 425 429
		f 3 508 549 -549
		mu 0 3 425 426 429
		f 3 509 550 -550
		mu 0 3 426 427 429
		f 3 510 551 -551
		mu 0 3 427 428 429
		f 3 511 542 -552
		mu 0 3 428 420 429
		f 4 -473 552 554 -554
		f 4 -474 553 556 -556
		f 4 -475 555 558 -558
		f 4 -476 557 560 -560
		f 4 -477 559 562 -562
		f 4 -478 561 564 -564
		f 4 -479 563 566 -566
		f 4 -480 565 568 -568
		f 4 -481 567 570 -570
		f 4 -482 569 571 -553
		f 4 572 606 750 -577
		mu 0 4 430 431 432 433
		f 4 573 602 665 -579
		mu 0 4 434 435 436 437
		f 4 758 757 -576 -756
		mu 0 4 438 439 440 441
		f 4 775 777 -780 -781
		mu 0 4 442 443 444 445
		f 4 -653 654 773 -578
		mu 0 4 446 447 448 449
		f 4 645 576 752 751
		mu 0 4 450 430 433 451
		f 4 584 616 660 -587
		mu 0 4 452 453 454 455
		f 4 -762 764 763 -588
		mu 0 4 456 457 458 459
		f 4 -649 651 650 -590
		mu 0 4 460 461 462 463
		f 4 -592 589 621 744
		mu 0 4 464 465 466 467
		f 4 592 586 662 -595
		mu 0 4 468 452 455 469
		f 4 -760 762 761 -596
		mu 0 4 470 471 472 473
		f 4 -648 649 648 -598
		mu 0 4 474 475 461 460
		f 4 -600 597 591 746
		mu 0 4 476 477 465 464
		f 4 600 594 664 -603
		mu 0 4 435 468 469 436
		f 4 -758 760 759 -604
		mu 0 4 440 439 471 470
		f 4 -778 782 784 -786
		mu 0 4 444 443 478 479
		f 4 -607 605 599 748
		mu 0 4 432 431 477 476
		f 4 607 579 656 -610
		mu 0 4 480 481 482 483
		f 4 -766 768 767 -611
		mu 0 4 484 485 486 487
		f 4 -803 804 806 -808
		mu 0 4 488 489 490 491
		f 4 -614 612 577 740
		mu 0 4 492 493 446 449
		f 4 614 609 658 -617
		mu 0 4 453 480 483 454
		f 4 -764 766 765 -618
		mu 0 4 459 458 485 484
		f 4 -811 811 802 -813
		mu 0 4 494 495 489 488
		f 4 -622 619 613 742
		mu 0 4 467 466 493 492
		f 4 582 -754 756 755
		mu 0 4 441 496 497 438
		f 4 788 789 -792 -793
		mu 0 4 498 499 500 501
		f 4 -795 -790 796 797
		mu 0 4 502 500 499 503
		f 4 -628 -599 595 590
		mu 0 4 504 505 506 507
		f 4 -630 -591 587 620
		mu 0 4 508 504 507 509
		f 4 -815 -817 818 819
		mu 0 4 510 511 512 513
		f 4 -822 -820 823 824
		mu 0 4 514 510 513 515
		f 4 -633 -584 -768 770
		mu 0 4 516 517 487 486
		f 4 -635 631 -609 -634
		mu 0 4 518 519 520 521
		f 4 -637 633 -616 -636
		mu 0 4 522 518 521 523
		f 4 -639 635 -586 -638
		mu 0 4 524 522 523 525
		f 4 -641 637 -594 -640
		mu 0 4 526 524 527 528
		f 4 -643 639 -602 -642
		mu 0 4 529 526 528 530
		f 4 -644 641 -575 -623
		mu 0 4 531 529 530 532
		f 4 623 -752 754 753
		mu 0 4 496 450 451 497
		f 4 791 798 -776 -800
		mu 0 4 501 500 443 442
		f 4 -783 -799 794 800
		mu 0 4 478 443 500 502
		f 4 -650 -626 627 626
		mu 0 4 461 475 505 504
		f 4 -652 -627 629 628
		mu 0 4 462 461 504 508
		f 4 -812 -826 814 826
		mu 0 4 489 495 511 510
		f 4 -805 -827 821 827
		mu 0 4 490 489 510 514
		f 4 -655 -631 632 772
		mu 0 4 448 447 517 516
		f 4 -657 653 634 -656
		mu 0 4 483 482 519 518
		f 4 -659 655 636 -658
		mu 0 4 454 483 518 522
		f 4 -661 657 638 -660
		mu 0 4 455 454 522 524
		f 4 -663 659 640 -662
		mu 0 4 469 455 524 526
		f 4 -665 661 642 -664
		mu 0 4 436 469 526 529
		f 4 -666 663 643 -645
		mu 0 4 437 436 529 531
		f 4 -668 -669 666 -608
		mu 0 4 480 533 534 481
		f 4 -670 -671 667 -615
		mu 0 4 453 535 533 480
		f 4 -672 -673 669 -585
		mu 0 4 452 536 535 453
		f 4 -674 -675 671 -593
		mu 0 4 468 537 536 452
		f 4 -676 -677 673 -601
		mu 0 4 435 538 537 468
		f 4 -679 675 -574 -678
		mu 0 4 539 538 435 434
		f 4 -681 677 578 646
		mu 0 4 540 539 434 437
		f 4 -683 -647 644 624
		mu 0 4 541 540 437 531
		f 4 -685 -625 622 580
		mu 0 4 542 541 531 532
		f 4 574 604 -687 -581
		mu 0 4 532 530 543 542
		f 4 -689 -605 601 596
		mu 0 4 544 543 530 528
		f 4 -691 -597 593 588
		mu 0 4 545 544 528 527
		f 4 -693 -589 585 618
		mu 0 4 546 547 525 523
		f 4 -695 -619 615 611
		mu 0 4 548 546 523 521
		f 4 -697 -612 608 581
		mu 0 4 549 548 521 520
		f 4 -698 -699 -582 -632
		mu 0 4 519 550 549 520
		f 4 -700 -701 697 -654
		mu 0 4 482 551 550 519
		f 4 -702 699 -580 -667
		mu 0 4 534 551 482 481
		f 4 -704 -705 702 668
		mu 0 4 533 552 553 534
		f 4 -706 -707 703 670
		mu 0 4 535 554 552 533
		f 4 -708 -709 705 672
		mu 0 4 536 555 554 535
		f 4 -710 -711 707 674
		mu 0 4 537 556 555 536
		f 4 -712 -713 709 676
		mu 0 4 538 557 556 537
		f 4 -715 711 678 -714
		mu 0 4 558 557 538 539
		f 4 -717 713 680 679
		mu 0 4 559 558 539 540
		f 4 -719 -680 682 681
		mu 0 4 560 559 540 541
		f 4 -721 -682 684 683
		mu 0 4 561 560 541 542
		f 4 686 685 -723 -684
		mu 0 4 542 543 562 561
		f 4 -725 -686 688 687
		mu 0 4 563 562 543 544
		f 4 -727 -688 690 689
		mu 0 4 564 563 544 545
		f 4 -729 -690 692 691
		mu 0 4 565 566 547 546
		f 4 -731 -692 694 693
		mu 0 4 567 565 546 548
		f 4 -733 -694 696 695
		mu 0 4 568 567 548 549
		f 4 -734 -735 -696 698
		mu 0 4 550 569 568 549
		f 4 -736 -737 733 700
		mu 0 4 551 570 569 550
		f 4 -738 735 701 -703
		mu 0 4 553 570 551 534
		f 4 -740 -741 738 704
		mu 0 4 552 492 449 553
		f 4 -742 -743 739 706
		mu 0 4 554 467 492 552
		f 4 -744 -745 741 708
		mu 0 4 555 464 467 554
		f 4 -746 -747 743 710
		mu 0 4 556 476 464 555
		f 4 -748 -749 745 712
		mu 0 4 557 432 476 556
		f 4 -751 747 714 -750
		mu 0 4 433 432 557 558
		f 4 -753 749 716 715
		mu 0 4 451 433 558 559
		f 4 -755 -716 718 717
		mu 0 4 497 451 559 560
		f 4 -757 -718 720 719
		mu 0 4 438 497 560 561
		f 4 722 721 -759 -720
		mu 0 4 561 562 439 438
		f 4 -761 -722 724 723
		mu 0 4 471 439 562 563
		f 4 -763 -724 726 725
		mu 0 4 472 471 563 564
		f 4 -765 -726 728 727
		mu 0 4 458 457 566 565
		f 4 -767 -728 730 729
		mu 0 4 485 458 565 567
		f 4 -769 -730 732 731
		mu 0 4 486 485 567 568
		f 4 -770 -771 -732 734
		mu 0 4 569 516 486 568
		f 4 -772 -773 769 736
		mu 0 4 570 448 516 569
		f 4 -774 771 737 -739
		mu 0 4 449 448 570 553
		f 4 -573 778 886 -777
		mu 0 4 431 430 571 572
		f 4 -646 774 884 -779
		mu 0 4 430 450 573 571
		f 4 647 783 870 -782
		mu 0 4 574 575 576 577
		f 4 -606 776 887 -784
		mu 0 4 477 431 572 578
		f 4 575 787 878 -787
		mu 0 4 441 440 579 580
		f 4 -583 786 880 -791
		mu 0 4 496 441 580 581
		f 4 603 795 876 -788
		mu 0 4 440 470 582 579
		f 4 598 793 874 -796
		mu 0 4 583 584 585 586
		f 4 -624 790 882 -775
		mu 0 4 450 496 581 573
		f 4 625 781 872 -794
		mu 0 4 584 574 577 585
		f 4 652 805 932 -804
		mu 0 4 447 446 587 588
		f 4 -613 801 930 -806
		mu 0 4 446 493 589 587
		f 4 -651 808 946 -810
		mu 0 4 590 591 592 593
		f 4 -620 809 947 -802
		mu 0 4 493 466 594 589
		f 4 -621 815 942 -814
		mu 0 4 595 596 597 598
		f 4 617 817 940 -816
		mu 0 4 459 484 599 600
		f 4 610 822 938 -818
		mu 0 4 484 487 601 599
		f 4 583 820 936 -823
		mu 0 4 487 517 602 601
		f 4 -629 813 944 -809
		mu 0 4 591 595 598 592
		f 4 630 803 934 -821
		mu 0 4 517 447 588 602
		f 4 -831 828 -785 -830
		mu 0 4 603 604 605 606
		f 4 -833 829 -801 -832
		mu 0 4 607 603 606 608
		f 4 -835 831 -798 -834
		mu 0 4 609 607 608 610
		f 4 -837 833 -797 -836
		mu 0 4 611 612 613 614
		f 4 -839 835 -789 -838
		mu 0 4 615 611 614 616
		f 4 -841 837 792 -840
		mu 0 4 617 615 616 618
		f 4 -843 839 799 -842
		mu 0 4 619 617 618 620
		f 4 -845 841 780 -844
		mu 0 4 621 619 620 622
		f 4 -847 843 779 -846
		mu 0 4 623 621 622 624
		f 4 -848 845 785 -829
		mu 0 4 625 623 624 626
		f 4 -851 848 830 -850
		mu 0 4 627 628 604 603
		f 4 -853 849 832 -852
		mu 0 4 629 627 603 607
		f 4 -855 851 834 -854
		mu 0 4 630 629 607 609
		f 4 -857 853 836 -856
		mu 0 4 631 632 612 611
		f 4 -859 855 838 -858
		mu 0 4 633 631 611 615
		f 4 -861 857 840 -860
		mu 0 4 634 633 615 617
		f 4 -863 859 842 -862
		mu 0 4 635 634 617 619
		f 4 -865 861 844 -864
		mu 0 4 636 635 619 621
		f 4 -867 863 846 -866
		mu 0 4 637 636 621 623
		f 4 -868 865 847 -849
		mu 0 4 638 637 623 625
		f 4 -871 868 850 -870
		mu 0 4 577 576 628 627
		f 4 -873 869 852 -872
		mu 0 4 585 577 627 629
		f 4 -875 871 854 -874
		mu 0 4 586 585 629 630
		f 4 -877 873 856 -876
		mu 0 4 579 582 632 631
		f 4 -879 875 858 -878
		mu 0 4 580 579 631 633
		f 4 -881 877 860 -880
		mu 0 4 581 580 633 634
		f 4 -883 879 862 -882
		mu 0 4 573 581 634 635
		f 4 -885 881 864 -884
		mu 0 4 571 573 635 636
		f 4 -887 883 866 -886
		mu 0 4 572 571 636 637
		f 4 -888 885 867 -869
		mu 0 4 578 572 637 638
		f 4 -891 888 807 -890
		mu 0 4 639 640 641 642
		f 4 -893 889 -807 -892
		mu 0 4 643 639 642 644
		f 4 -895 891 -828 -894
		mu 0 4 645 643 644 646
		f 4 -897 893 -825 -896
		mu 0 4 647 645 646 648
		f 4 -899 895 -824 -898
		mu 0 4 649 647 648 650
		f 4 -901 897 -819 -900
		mu 0 4 651 649 650 652
		f 4 -903 899 816 -902
		mu 0 4 653 654 655 656
		f 4 -905 901 825 -904
		mu 0 4 657 653 656 658
		f 4 -907 903 810 -906
		mu 0 4 659 657 658 660
		f 4 -908 905 812 -889
		mu 0 4 640 661 662 641
		f 4 -911 908 890 -910
		mu 0 4 663 664 640 639
		f 4 -913 909 892 -912
		mu 0 4 665 663 639 643
		f 4 -915 911 894 -914
		mu 0 4 666 665 643 645
		f 4 -917 913 896 -916
		mu 0 4 667 666 645 647
		f 4 -919 915 898 -918
		mu 0 4 668 667 647 649
		f 4 -921 917 900 -920
		mu 0 4 669 668 649 651
		f 4 -923 919 902 -922
		mu 0 4 670 671 654 653
		f 4 -925 921 904 -924
		mu 0 4 672 670 653 657
		f 4 -927 923 906 -926
		mu 0 4 673 672 657 659
		f 4 -928 925 907 -909
		mu 0 4 664 674 661 640
		f 4 -931 928 910 -930
		mu 0 4 587 589 664 663
		f 4 -933 929 912 -932
		mu 0 4 588 587 663 665
		f 4 -935 931 914 -934
		mu 0 4 602 588 665 666
		f 4 -937 933 916 -936
		mu 0 4 601 602 666 667
		f 4 -939 935 918 -938
		mu 0 4 599 601 667 668
		f 4 -941 937 920 -940
		mu 0 4 600 599 668 669
		f 4 -943 939 922 -942
		mu 0 4 598 597 671 670
		f 4 -945 941 924 -944
		mu 0 4 592 598 670 672
		f 4 -947 943 926 -946
		mu 0 4 593 592 672 673
		f 4 -948 945 927 -929
		mu 0 4 589 594 674 664
		f 4 948 965 1062 -965
		mu 0 4 675 676 677 678
		f 4 949 966 1060 -966
		mu 0 4 676 679 680 677
		f 4 950 967 1058 -967
		mu 0 4 679 681 682 680
		f 4 951 968 1056 -968
		mu 0 4 681 683 684 682
		f 4 952 969 1054 -969
		mu 0 4 683 685 686 684
		f 4 953 970 1067 -970
		mu 0 4 685 687 688 686
		f 4 954 971 1066 -971
		mu 0 4 687 689 690 688
		f 4 955 964 1064 -972
		mu 0 4 689 691 692 690
		f 4 1118 1117 -1107 -1109
		mu 0 4 693 694 695 696
		f 8 956 957 958 959 960 961 962 963
		mu 0 8 697 698 699 700 701 702 703 704
		f 4 -975 972 -961 -974
		mu 0 4 705 706 702 701
		f 4 -977 973 -960 -976
		mu 0 4 707 705 701 700
		f 4 -979 975 -959 -978
		mu 0 4 708 707 700 699
		f 4 -981 977 -958 -980
		mu 0 4 709 708 699 698
		f 4 -983 979 -957 -982
		mu 0 4 710 711 712 697
		f 4 -985 981 -964 -984
		mu 0 4 713 710 697 704
		f 4 -987 983 -963 -986
		mu 0 4 714 713 704 703
		f 4 -988 985 -962 -973
		mu 0 4 706 714 703 702
		f 4 -991 988 974 -990
		mu 0 4 715 716 706 705
		f 4 -993 989 976 -992
		mu 0 4 717 715 705 707
		f 4 -995 991 978 -994
		mu 0 4 718 717 707 708
		f 4 -997 993 980 -996
		mu 0 4 719 718 708 709
		f 4 -999 995 982 -998
		mu 0 4 720 721 711 710
		f 4 -1001 997 984 -1000
		mu 0 4 722 720 710 713
		f 4 -1003 999 986 -1002
		mu 0 4 723 722 713 714
		f 4 -1004 1001 987 -989
		mu 0 4 716 723 714 706;
	setAttr ".fc[500:923]"
		f 4 -1007 1004 990 -1006
		mu 0 4 724 725 716 715
		f 4 -1009 1005 992 -1008
		mu 0 4 726 724 715 717
		f 4 -1011 1007 994 -1010
		mu 0 4 727 726 717 718
		f 4 -1013 1009 996 -1012
		mu 0 4 728 727 718 719
		f 4 -1015 1011 998 -1014
		mu 0 4 729 730 721 720
		f 4 -1017 1013 1000 -1016
		mu 0 4 731 729 720 722
		f 4 -1019 1015 1002 -1018
		mu 0 4 732 731 722 723
		f 4 -1020 1017 1003 -1005
		mu 0 4 725 732 723 716
		f 4 -1023 1020 1122 -1022
		mu 0 4 733 734 735 736
		f 4 -1025 1021 1124 -1024
		mu 0 4 737 733 736 738
		f 4 -1027 1023 1126 -1026
		mu 0 4 739 737 738 740
		f 4 -1029 1025 1128 -1028
		mu 0 4 741 739 740 742
		f 4 -1031 1027 1130 -1030
		mu 0 4 743 741 742 744
		f 4 -1033 1029 1132 -1032
		mu 0 4 745 746 747 748
		f 4 -1035 1031 1134 -1034
		mu 0 4 749 745 748 750
		f 4 -1036 1033 1135 -1021
		mu 0 4 734 749 750 735
		f 4 -1039 1036 1022 -1038
		mu 0 4 751 752 734 733
		f 4 -1041 1037 1024 -1040
		mu 0 4 753 751 733 737
		f 4 -1043 1039 1026 -1042
		mu 0 4 754 753 737 739
		f 4 -1045 1041 1028 -1044
		mu 0 4 755 754 739 741
		f 4 -1047 1043 1030 -1046
		mu 0 4 756 755 741 743
		f 4 -1049 1045 1032 -1048
		mu 0 4 757 758 746 745
		f 4 -1051 1047 1034 -1050
		mu 0 4 759 757 745 749
		f 4 -1052 1049 1035 -1037
		mu 0 4 752 759 749 734
		f 4 -1055 1052 1038 -1054
		mu 0 4 684 686 752 751
		f 4 -1057 1053 1040 -1056
		mu 0 4 682 684 751 753
		f 4 -1059 1055 1042 -1058
		mu 0 4 680 682 753 754
		f 4 -1061 1057 1044 -1060
		mu 0 4 677 680 754 755
		f 4 -1063 1059 1046 -1062
		mu 0 4 678 677 755 756
		f 4 -1065 1061 1048 -1064
		mu 0 4 690 692 758 757
		f 4 -1067 1063 1050 -1066
		mu 0 4 688 690 757 759
		f 4 -1068 1065 1051 -1053
		mu 0 4 686 688 759 752
		f 4 -956 1068 1070 -1070
		mu 0 4 691 689 760 761
		f 4 -955 1071 1072 -1069
		mu 0 4 689 687 762 760
		f 4 -954 1073 1074 -1072
		mu 0 4 687 685 763 762
		f 4 -953 1075 1076 -1074
		mu 0 4 685 683 764 763
		f 4 -952 1077 1078 -1076
		mu 0 4 683 681 765 764
		f 4 -951 1079 1080 -1078
		mu 0 4 681 679 766 765
		f 4 -950 1081 1082 -1080
		mu 0 4 679 676 767 766
		f 4 -949 1069 1083 -1082
		mu 0 4 676 675 768 767
		f 4 -1071 1084 1086 -1086
		mu 0 4 761 760 769 770
		f 4 -1073 1087 1088 -1085
		mu 0 4 760 762 771 769
		f 4 -1075 1089 1090 -1088
		mu 0 4 762 763 772 771
		f 4 -1077 1091 1092 -1090
		mu 0 4 763 764 773 772
		f 4 -1079 1093 1094 -1092
		mu 0 4 764 765 774 773
		f 4 -1081 1095 1096 -1094
		mu 0 4 765 766 775 774
		f 4 -1083 1097 1098 -1096
		mu 0 4 766 767 776 775
		f 4 -1084 1085 1099 -1098
		mu 0 4 767 768 777 776
		f 4 -1087 1100 1102 -1102
		mu 0 4 777 778 779 780
		f 4 -1089 1103 1104 -1101
		mu 0 4 769 771 695 781
		f 4 -1091 1105 1106 -1104
		mu 0 4 771 772 696 695
		f 4 -1093 1107 1108 -1106
		mu 0 4 772 773 693 696
		f 4 -1095 1109 1110 -1108
		mu 0 4 773 774 782 693
		f 4 -1097 1111 1112 -1110
		mu 0 4 774 775 783 782
		f 4 -1099 1113 1114 -1112
		mu 0 4 775 776 784 783
		f 4 -1100 1101 1115 -1114
		mu 0 4 776 777 780 784
		f 4 -1103 -1105 -1118 1119
		mu 0 4 780 781 695 694
		f 4 1116 -1119 -1111 -1113
		mu 0 4 783 694 693 782
		f 4 -1120 -1117 -1115 -1116
		mu 0 4 780 694 783 784
		f 4 -1123 1120 1006 -1122
		mu 0 4 736 735 725 724
		f 4 -1125 1121 1008 -1124
		mu 0 4 738 736 724 726
		f 4 -1127 1123 1010 -1126
		mu 0 4 740 738 726 727
		f 4 -1129 1125 1012 -1128
		mu 0 4 742 740 727 728
		f 4 -1131 1127 1014 -1130
		mu 0 4 747 785 730 729
		f 4 -1133 1129 1016 -1132
		mu 0 4 748 747 729 731
		f 4 -1135 1131 1018 -1134
		mu 0 4 750 748 731 732
		f 4 -1136 1133 1019 -1121
		mu 0 4 735 750 732 725
		f 4 1136 1245 -1149 -1245
		mu 0 4 786 787 788 789
		f 4 1137 1246 -1150 -1246
		mu 0 4 787 790 791 788
		f 4 1138 1247 -1151 -1247
		mu 0 4 790 792 793 791
		f 4 1139 1248 -1152 -1248
		mu 0 4 792 794 795 793
		f 4 1140 1249 -1153 -1249
		mu 0 4 794 796 797 795
		f 4 1141 1250 -1154 -1250
		mu 0 4 796 798 799 797
		f 4 1142 1251 -1155 -1251
		mu 0 4 798 800 801 799
		f 4 1143 1252 -1156 -1252
		mu 0 4 800 802 803 801
		f 4 1144 1253 -1157 -1253
		mu 0 4 802 804 805 803
		f 4 1145 1254 -1158 -1254
		mu 0 4 804 806 807 805
		f 4 1146 1255 -1159 -1255
		mu 0 4 806 808 809 807
		f 4 1147 1244 -1160 -1256
		mu 0 4 810 786 789 811
		f 4 1148 1257 -1161 -1257
		mu 0 4 789 788 812 813
		f 4 1149 1258 -1162 -1258
		mu 0 4 788 791 814 812
		f 4 1150 1259 -1163 -1259
		mu 0 4 791 793 815 814
		f 4 1151 1260 -1164 -1260
		mu 0 4 793 795 816 815
		f 4 1152 1261 -1165 -1261
		mu 0 4 795 797 817 816
		f 4 1153 1262 -1166 -1262
		mu 0 4 797 799 818 817
		f 4 1154 1263 -1167 -1263
		mu 0 4 799 801 819 818
		f 4 1155 1264 -1168 -1264
		mu 0 4 801 803 820 819
		f 4 1156 1265 -1169 -1265
		mu 0 4 803 805 821 820
		f 4 1157 1266 -1170 -1266
		mu 0 4 805 807 822 821
		f 4 1158 1267 -1171 -1267
		mu 0 4 807 809 823 822
		f 4 1159 1256 -1172 -1268
		mu 0 4 811 789 813 824
		f 4 1160 1269 -1173 -1269
		mu 0 4 813 812 825 826
		f 4 1161 1270 -1174 -1270
		mu 0 4 812 814 827 825
		f 4 1162 1271 -1175 -1271
		mu 0 4 814 815 828 827
		f 4 1163 1272 -1176 -1272
		mu 0 4 815 816 829 828
		f 4 1164 1273 -1177 -1273
		mu 0 4 816 817 830 829
		f 4 1165 1274 -1178 -1274
		mu 0 4 817 818 831 830
		f 4 1166 1275 -1179 -1275
		mu 0 4 818 819 832 831
		f 4 1167 1276 -1180 -1276
		mu 0 4 819 820 833 832
		f 4 1168 1277 -1181 -1277
		mu 0 4 820 821 834 833
		f 4 1169 1278 -1182 -1278
		mu 0 4 821 822 835 834
		f 4 1170 1279 -1183 -1279
		mu 0 4 822 823 836 835
		f 4 1171 1268 -1184 -1280
		mu 0 4 824 813 826 837
		f 4 1172 1281 -1185 -1281
		mu 0 4 826 825 838 839
		f 4 1173 1282 -1186 -1282
		mu 0 4 825 827 840 838
		f 4 1174 1283 -1187 -1283
		mu 0 4 827 828 841 840
		f 4 1175 1284 -1188 -1284
		mu 0 4 828 829 842 841
		f 4 1176 1285 -1189 -1285
		mu 0 4 829 830 843 842
		f 4 1177 1286 -1190 -1286
		mu 0 4 830 831 844 843
		f 4 1178 1287 -1191 -1287
		mu 0 4 831 832 845 844
		f 4 1179 1288 -1192 -1288
		mu 0 4 832 833 846 845
		f 4 1180 1289 -1193 -1289
		mu 0 4 833 834 847 846
		f 4 1181 1290 -1194 -1290
		mu 0 4 834 835 848 847
		f 4 1182 1291 -1195 -1291
		mu 0 4 835 836 849 848
		f 4 1183 1280 -1196 -1292
		mu 0 4 837 826 839 850
		f 4 1184 1293 -1197 -1293
		mu 0 4 839 838 851 852
		f 4 1185 1294 -1198 -1294
		mu 0 4 838 840 853 851
		f 4 1186 1295 -1199 -1295
		mu 0 4 840 841 854 853
		f 4 1187 1296 -1200 -1296
		mu 0 4 841 842 855 854
		f 4 1188 1297 -1201 -1297
		mu 0 4 842 843 856 855
		f 4 1189 1298 -1202 -1298
		mu 0 4 843 844 857 856
		f 4 1190 1299 -1203 -1299
		mu 0 4 844 845 858 857
		f 4 1191 1300 -1204 -1300
		mu 0 4 845 846 859 858
		f 4 1192 1301 -1205 -1301
		mu 0 4 846 847 860 859
		f 4 1193 1302 -1206 -1302
		mu 0 4 847 848 861 860
		f 4 1194 1303 -1207 -1303
		mu 0 4 848 849 862 861
		f 4 1195 1292 -1208 -1304
		mu 0 4 850 839 852 863
		f 4 1196 1305 -1209 -1305
		mu 0 4 852 851 864 865
		f 4 1197 1306 -1210 -1306
		mu 0 4 851 853 866 864
		f 4 1198 1307 -1211 -1307
		mu 0 4 853 854 867 866
		f 4 1199 1308 -1212 -1308
		mu 0 4 854 855 868 867
		f 4 1200 1309 -1213 -1309
		mu 0 4 855 856 869 868
		f 4 1201 1310 -1214 -1310
		mu 0 4 856 857 870 869
		f 4 1202 1311 -1215 -1311
		mu 0 4 857 858 871 870
		f 4 1203 1312 -1216 -1312
		mu 0 4 858 859 872 871
		f 4 1204 1313 -1217 -1313
		mu 0 4 859 860 873 872
		f 4 1205 1314 -1218 -1314
		mu 0 4 860 861 874 873
		f 4 1206 1315 -1219 -1315
		mu 0 4 861 862 875 874
		f 4 1207 1304 -1220 -1316
		mu 0 4 863 852 865 876
		f 4 1208 1317 -1221 -1317
		mu 0 4 865 864 877 878
		f 4 1209 1318 -1222 -1318
		mu 0 4 864 866 879 877
		f 4 1210 1319 -1223 -1319
		mu 0 4 866 867 880 879
		f 4 1211 1320 -1224 -1320
		mu 0 4 867 868 881 880
		f 4 1212 1321 -1225 -1321
		mu 0 4 868 869 882 881
		f 4 1213 1322 -1226 -1322
		mu 0 4 869 870 883 882
		f 4 1214 1323 -1227 -1323
		mu 0 4 870 871 884 883
		f 4 1215 1324 -1228 -1324
		mu 0 4 871 872 885 884
		f 4 1216 1325 -1229 -1325
		mu 0 4 872 873 886 885
		f 4 1217 1326 -1230 -1326
		mu 0 4 873 874 887 886
		f 4 1218 1327 -1231 -1327
		mu 0 4 874 875 888 887
		f 4 1219 1316 -1232 -1328
		mu 0 4 876 865 878 889
		f 4 1220 1329 -1233 -1329
		mu 0 4 878 877 890 891
		f 4 1221 1330 -1234 -1330
		mu 0 4 877 879 892 890
		f 4 1222 1331 -1235 -1331
		mu 0 4 879 880 893 892
		f 4 1223 1332 -1236 -1332
		mu 0 4 880 881 894 893
		f 4 1224 1333 -1237 -1333
		mu 0 4 881 882 895 894
		f 4 1225 1334 -1238 -1334
		mu 0 4 882 883 896 895
		f 4 1226 1335 -1239 -1335
		mu 0 4 883 884 897 896
		f 4 1227 1336 -1240 -1336
		mu 0 4 884 885 898 897
		f 4 1228 1337 -1241 -1337
		mu 0 4 885 886 899 898
		f 4 1229 1338 -1242 -1338
		mu 0 4 886 887 900 899
		f 4 1230 1339 -1243 -1339
		mu 0 4 887 888 901 900
		f 4 1231 1328 -1244 -1340
		mu 0 4 889 878 891 902
		f 3 -1137 -1341 1341
		mu 0 3 787 786 903
		f 3 -1138 -1342 1342
		mu 0 3 790 787 903
		f 3 -1139 -1343 1343
		mu 0 3 792 790 903
		f 3 -1140 -1344 1344
		mu 0 3 794 792 903
		f 3 -1141 -1345 1345
		mu 0 3 796 794 903
		f 3 -1142 -1346 1346
		mu 0 3 798 796 903
		f 3 -1143 -1347 1347
		mu 0 3 800 798 903
		f 3 -1144 -1348 1348
		mu 0 3 802 800 903
		f 3 -1145 -1349 1349
		mu 0 3 804 802 903
		f 3 -1146 -1350 1350
		mu 0 3 806 804 903
		f 3 -1147 -1351 1351
		mu 0 3 808 806 903
		f 3 -1148 -1352 1340
		mu 0 3 786 810 903
		f 3 1232 1353 -1353
		mu 0 3 891 890 904
		f 3 1233 1354 -1354
		mu 0 3 890 892 904
		f 3 1234 1355 -1355
		mu 0 3 892 893 904
		f 3 1235 1356 -1356
		mu 0 3 893 894 904
		f 3 1236 1357 -1357
		mu 0 3 894 895 904
		f 3 1237 1358 -1358
		mu 0 3 895 896 904
		f 3 1238 1359 -1359
		mu 0 3 896 897 904
		f 3 1239 1360 -1360
		mu 0 3 897 898 904
		f 3 1240 1361 -1361
		mu 0 3 898 899 904
		f 3 1241 1362 -1362
		mu 0 3 899 900 904
		f 3 1242 1363 -1363
		mu 0 3 900 901 904
		f 3 1243 1352 -1364
		mu 0 3 902 891 904
		f 4 1364 1473 -1377 -1473
		mu 0 4 905 906 907 908
		f 4 1365 1474 -1378 -1474
		mu 0 4 906 909 910 907
		f 4 1366 1475 -1379 -1475
		mu 0 4 909 911 912 910
		f 4 1367 1476 -1380 -1476
		mu 0 4 911 913 914 912
		f 4 1368 1477 -1381 -1477
		mu 0 4 913 915 916 914
		f 4 1369 1478 -1382 -1478
		mu 0 4 915 917 918 916
		f 4 1370 1479 -1383 -1479
		mu 0 4 917 919 920 918
		f 4 1371 1480 -1384 -1480
		mu 0 4 919 921 922 920
		f 4 1372 1481 -1385 -1481
		mu 0 4 921 923 924 922
		f 4 1373 1482 -1386 -1482
		mu 0 4 923 925 926 924
		f 4 1374 1483 -1387 -1483
		mu 0 4 925 927 928 926
		f 4 1375 1472 -1388 -1484
		mu 0 4 929 905 908 930
		f 4 1376 1485 -1389 -1485
		mu 0 4 908 907 931 932
		f 4 1377 1486 -1390 -1486
		mu 0 4 907 910 933 931
		f 4 1378 1487 -1391 -1487
		mu 0 4 910 912 934 933
		f 4 1379 1488 -1392 -1488
		mu 0 4 912 914 935 934
		f 4 1380 1489 -1393 -1489
		mu 0 4 914 916 936 935
		f 4 1381 1490 -1394 -1490
		mu 0 4 916 918 937 936
		f 4 1382 1491 -1395 -1491
		mu 0 4 918 920 938 937
		f 4 1383 1492 -1396 -1492
		mu 0 4 920 922 939 938
		f 4 1384 1493 -1397 -1493
		mu 0 4 922 924 940 939
		f 4 1385 1494 -1398 -1494
		mu 0 4 924 926 941 940
		f 4 1386 1495 -1399 -1495
		mu 0 4 926 928 942 941
		f 4 1387 1484 -1400 -1496
		mu 0 4 930 908 932 943
		f 4 1388 1497 -1401 -1497
		mu 0 4 932 931 944 945
		f 4 1389 1498 -1402 -1498
		mu 0 4 931 933 946 944
		f 4 1390 1499 -1403 -1499
		mu 0 4 933 934 947 946
		f 4 1391 1500 -1404 -1500
		mu 0 4 934 935 948 947
		f 4 1392 1501 -1405 -1501
		mu 0 4 935 936 949 948
		f 4 1393 1502 -1406 -1502
		mu 0 4 936 937 950 949
		f 4 1394 1503 -1407 -1503
		mu 0 4 937 938 951 950
		f 4 1395 1504 -1408 -1504
		mu 0 4 938 939 952 951
		f 4 1396 1505 -1409 -1505
		mu 0 4 939 940 953 952
		f 4 1397 1506 -1410 -1506
		mu 0 4 940 941 954 953
		f 4 1398 1507 -1411 -1507
		mu 0 4 941 942 955 954
		f 4 1399 1496 -1412 -1508
		mu 0 4 943 932 945 956
		f 4 1400 1509 -1413 -1509
		mu 0 4 945 944 957 958
		f 4 1401 1510 -1414 -1510
		mu 0 4 944 946 959 957
		f 4 1402 1511 -1415 -1511
		mu 0 4 946 947 960 959
		f 4 1403 1512 -1416 -1512
		mu 0 4 947 948 961 960
		f 4 1404 1513 -1417 -1513
		mu 0 4 948 949 962 961
		f 4 1405 1514 -1418 -1514
		mu 0 4 949 950 963 962
		f 4 1406 1515 -1419 -1515
		mu 0 4 950 951 964 963
		f 4 1407 1516 -1420 -1516
		mu 0 4 951 952 965 964
		f 4 1408 1517 -1421 -1517
		mu 0 4 952 953 966 965
		f 4 1409 1518 -1422 -1518
		mu 0 4 953 954 967 966
		f 4 1410 1519 -1423 -1519
		mu 0 4 954 955 968 967
		f 4 1411 1508 -1424 -1520
		mu 0 4 956 945 958 969
		f 4 1412 1521 -1425 -1521
		mu 0 4 958 957 970 971
		f 4 1413 1522 -1426 -1522
		mu 0 4 957 959 972 970
		f 4 1414 1523 -1427 -1523
		mu 0 4 959 960 973 972
		f 4 1415 1524 -1428 -1524
		mu 0 4 960 961 974 973
		f 4 1416 1525 -1429 -1525
		mu 0 4 961 962 975 974
		f 4 1417 1526 -1430 -1526
		mu 0 4 962 963 976 975
		f 4 1418 1527 -1431 -1527
		mu 0 4 963 964 977 976
		f 4 1419 1528 -1432 -1528
		mu 0 4 964 965 978 977
		f 4 1420 1529 -1433 -1529
		mu 0 4 965 966 979 978
		f 4 1421 1530 -1434 -1530
		mu 0 4 966 967 980 979
		f 4 1422 1531 -1435 -1531
		mu 0 4 967 968 981 980
		f 4 1423 1520 -1436 -1532
		mu 0 4 969 958 971 982
		f 4 1424 1533 -1437 -1533
		mu 0 4 971 970 983 984
		f 4 1425 1534 -1438 -1534
		mu 0 4 970 972 985 983
		f 4 1426 1535 -1439 -1535
		mu 0 4 972 973 986 985
		f 4 1427 1536 -1440 -1536
		mu 0 4 973 974 987 986
		f 4 1428 1537 -1441 -1537
		mu 0 4 974 975 988 987
		f 4 1429 1538 -1442 -1538
		mu 0 4 975 976 989 988
		f 4 1430 1539 -1443 -1539
		mu 0 4 976 977 990 989
		f 4 1431 1540 -1444 -1540
		mu 0 4 977 978 991 990
		f 4 1432 1541 -1445 -1541
		mu 0 4 978 979 992 991
		f 4 1433 1542 -1446 -1542
		mu 0 4 979 980 993 992
		f 4 1434 1543 -1447 -1543
		mu 0 4 980 981 994 993
		f 4 1435 1532 -1448 -1544
		mu 0 4 982 971 984 995
		f 4 1436 1545 -1449 -1545
		mu 0 4 984 983 996 997
		f 4 1437 1546 -1450 -1546
		mu 0 4 983 985 998 996
		f 4 1438 1547 -1451 -1547
		mu 0 4 985 986 999 998
		f 4 1439 1548 -1452 -1548
		mu 0 4 986 987 1000 999
		f 4 1440 1549 -1453 -1549
		mu 0 4 987 988 1001 1000
		f 4 1441 1550 -1454 -1550
		mu 0 4 988 989 1002 1001
		f 4 1442 1551 -1455 -1551
		mu 0 4 989 990 1003 1002
		f 4 1443 1552 -1456 -1552
		mu 0 4 990 991 1004 1003
		f 4 1444 1553 -1457 -1553
		mu 0 4 991 992 1005 1004
		f 4 1445 1554 -1458 -1554
		mu 0 4 992 993 1006 1005
		f 4 1446 1555 -1459 -1555
		mu 0 4 993 994 1007 1006
		f 4 1447 1544 -1460 -1556
		mu 0 4 995 984 997 1008
		f 4 1448 1557 -1461 -1557
		mu 0 4 997 996 1009 1010
		f 4 1449 1558 -1462 -1558
		mu 0 4 996 998 1011 1009
		f 4 1450 1559 -1463 -1559
		mu 0 4 998 999 1012 1011
		f 4 1451 1560 -1464 -1560
		mu 0 4 999 1000 1013 1012
		f 4 1452 1561 -1465 -1561
		mu 0 4 1000 1001 1014 1013
		f 4 1453 1562 -1466 -1562
		mu 0 4 1001 1002 1015 1014
		f 4 1454 1563 -1467 -1563
		mu 0 4 1002 1003 1016 1015
		f 4 1455 1564 -1468 -1564
		mu 0 4 1003 1004 1017 1016
		f 4 1456 1565 -1469 -1565
		mu 0 4 1004 1005 1018 1017
		f 4 1457 1566 -1470 -1566
		mu 0 4 1005 1006 1019 1018
		f 4 1458 1567 -1471 -1567
		mu 0 4 1006 1007 1020 1019
		f 4 1459 1556 -1472 -1568
		mu 0 4 1008 997 1010 1021
		f 3 -1365 -1569 1569
		mu 0 3 906 905 1022
		f 3 -1366 -1570 1570
		mu 0 3 909 906 1022
		f 3 -1367 -1571 1571
		mu 0 3 911 909 1022
		f 3 -1368 -1572 1572
		mu 0 3 913 911 1022
		f 3 -1369 -1573 1573
		mu 0 3 915 913 1022
		f 3 -1370 -1574 1574
		mu 0 3 917 915 1022
		f 3 -1371 -1575 1575
		mu 0 3 919 917 1022
		f 3 -1372 -1576 1576
		mu 0 3 921 919 1022
		f 3 -1373 -1577 1577
		mu 0 3 923 921 1022
		f 3 -1374 -1578 1578
		mu 0 3 925 923 1022
		f 3 -1375 -1579 1579
		mu 0 3 927 925 1022
		f 3 -1376 -1580 1568
		mu 0 3 905 929 1022
		f 3 1460 1581 -1581
		mu 0 3 1010 1009 1023
		f 3 1461 1582 -1582
		mu 0 3 1009 1011 1023
		f 3 1462 1583 -1583
		mu 0 3 1011 1012 1023
		f 3 1463 1584 -1584
		mu 0 3 1012 1013 1023
		f 3 1464 1585 -1585
		mu 0 3 1013 1014 1023
		f 3 1465 1586 -1586
		mu 0 3 1014 1015 1023
		f 3 1466 1587 -1587
		mu 0 3 1015 1016 1023
		f 3 1467 1588 -1588
		mu 0 3 1016 1017 1023
		f 3 1468 1589 -1589
		mu 0 3 1017 1018 1023
		f 3 1469 1590 -1590
		mu 0 3 1018 1019 1023
		f 3 1470 1591 -1591
		mu 0 3 1019 1020 1023
		f 3 1471 1580 -1592
		mu 0 3 1021 1010 1023
		f 4 1595 -1595 -1594 -1593
		mu 0 4 1024 1025 1026 1027
		f 4 1593 -1599 -1598 -1597
		mu 0 4 1027 1026 1028 1029
		f 4 1597 -1602 -1601 -1600
		mu 0 4 1030 1031 1032 1033
		f 4 1600 -1605 -1604 -1603
		mu 0 4 1033 1032 1034 1035
		f 4 1603 -1608 -1607 -1606
		mu 0 4 1035 1034 1036 1037
		f 4 1606 -1611 -1610 -1609
		mu 0 4 1037 1036 1038 1039
		f 4 1609 -1614 -1613 -1612
		mu 0 4 1039 1038 1040 1041
		f 4 1612 -1616 -1596 -1615
		mu 0 4 1041 1040 1025 1024
		f 4 1619 1618 -1618 -1617
		mu 0 4 1042 1043 1044 1045
		f 8 -1628 -1627 -1626 -1625 -1624 -1623 -1622 -1621
		mu 0 8 1046 1047 1048 1049 1050 1051 1052 1053
		f 4 1630 1624 -1630 1628
		mu 0 4 1054 1050 1049 1055
		f 4 1632 1623 -1631 1631
		mu 0 4 1056 1051 1050 1054
		f 4 1634 1622 -1633 1633
		mu 0 4 1057 1052 1051 1056
		f 4 1636 1621 -1635 1635
		mu 0 4 1058 1059 1052 1057
		f 4 1638 1620 -1637 1637
		mu 0 4 1060 1046 1053 1061
		f 4 1640 1627 -1639 1639
		mu 0 4 1062 1047 1046 1060
		f 4 1642 1626 -1641 1641
		mu 0 4 1063 1048 1047 1062
		f 4 1629 1625 -1643 1643
		mu 0 4 1055 1049 1048 1063
		f 4 1646 -1629 -1646 1644
		mu 0 4 1064 1054 1055 1065
		f 4 1648 -1632 -1647 1647
		mu 0 4 1066 1056 1054 1064
		f 4 1650 -1634 -1649 1649
		mu 0 4 1067 1057 1056 1066
		f 4 1652 -1636 -1651 1651
		mu 0 4 1068 1058 1057 1067
		f 4 1654 -1638 -1653 1653
		mu 0 4 1069 1060 1061 1070
		f 4 1656 -1640 -1655 1655
		mu 0 4 1071 1062 1060 1069
		f 4 1658 -1642 -1657 1657
		mu 0 4 1072 1063 1062 1071
		f 4 1645 -1644 -1659 1659
		mu 0 4 1065 1055 1063 1072
		f 4 1662 -1645 -1662 1660
		mu 0 4 1073 1064 1065 1074
		f 4 1664 -1648 -1663 1663
		mu 0 4 1075 1066 1064 1073
		f 4 1666 -1650 -1665 1665
		mu 0 4 1076 1067 1066 1075
		f 4 1668 -1652 -1667 1667
		mu 0 4 1077 1068 1067 1076
		f 4 1670 -1654 -1669 1669
		mu 0 4 1078 1069 1070 1079
		f 4 1672 -1656 -1671 1671
		mu 0 4 1080 1071 1069 1078
		f 4 1674 -1658 -1673 1673
		mu 0 4 1081 1072 1071 1080
		f 4 1661 -1660 -1675 1675
		mu 0 4 1074 1065 1072 1081
		f 4 1679 -1679 -1678 1676
		mu 0 4 1082 1083 1084 1085
		f 4 1682 -1682 -1680 1680
		mu 0 4 1086 1087 1083 1082
		f 4 1685 -1685 -1683 1683
		mu 0 4 1088 1089 1087 1086
		f 4 1688 -1688 -1686 1686
		mu 0 4 1090 1091 1092 1093
		f 4 1691 -1691 -1689 1689
		mu 0 4 1094 1095 1091 1090
		f 4 1694 -1694 -1692 1692
		mu 0 4 1096 1097 1095 1094
		f 4 1697 -1697 -1695 1695
		mu 0 4 1098 1099 1097 1096
		f 4 1677 -1700 -1698 1698
		mu 0 4 1085 1084 1099 1098
		f 4 1702 -1677 -1702 1700
		mu 0 4 1100 1082 1085 1101
		f 4 1704 -1681 -1703 1703
		mu 0 4 1102 1086 1082 1100
		f 4 1706 -1684 -1705 1705
		mu 0 4 1103 1088 1086 1102
		f 4 1708 -1687 -1707 1707
		mu 0 4 1104 1090 1093 1105
		f 4 1710 -1690 -1709 1709
		mu 0 4 1106 1094 1090 1104
		f 4 1712 -1693 -1711 1711
		mu 0 4 1107 1096 1094 1106
		f 4 1714 -1696 -1713 1713
		mu 0 4 1108 1098 1096 1107
		f 4 1701 -1699 -1715 1715
		mu 0 4 1101 1085 1098 1108
		f 4 1717 -1701 -1717 1607
		mu 0 4 1034 1100 1101 1036
		f 4 1718 -1704 -1718 1604
		mu 0 4 1032 1102 1100 1034
		f 4 1719 -1706 -1719 1601
		mu 0 4 1031 1103 1102 1032
		f 4 1720 -1708 -1720 1598
		mu 0 4 1026 1104 1105 1028
		f 4 1721 -1710 -1721 1594
		mu 0 4 1025 1106 1104 1026
		f 4 1722 -1712 -1722 1615
		mu 0 4 1040 1107 1106 1025
		f 4 1723 -1714 -1723 1613
		mu 0 4 1038 1108 1107 1040
		f 4 1716 -1716 -1724 1610
		mu 0 4 1036 1101 1108 1038
		f 4 1726 -1726 -1725 1614
		mu 0 4 1024 1109 1110 1041
		f 4 1724 -1729 -1728 1611
		mu 0 4 1041 1110 1111 1039
		f 4 1727 -1731 -1730 1608
		mu 0 4 1039 1111 1112 1037
		f 4 1729 -1733 -1732 1605
		mu 0 4 1037 1112 1113 1035
		f 4 1731 -1735 -1734 1602
		mu 0 4 1035 1113 1114 1033
		f 4 1733 -1737 -1736 1599
		mu 0 4 1033 1114 1115 1030
		f 4 1735 -1739 -1738 1596
		mu 0 4 1029 1116 1117 1027
		f 4 1737 -1740 -1727 1592
		mu 0 4 1027 1117 1109 1024
		f 4 1742 -1742 -1741 1725
		mu 0 4 1109 1118 1119 1110
		f 4 1740 -1745 -1744 1728
		mu 0 4 1110 1119 1120 1111
		f 4 1743 -1747 -1746 1730
		mu 0 4 1111 1120 1121 1112
		f 4 1745 -1749 -1748 1732
		mu 0 4 1112 1121 1122 1113
		f 4 1747 -1751 -1750 1734
		mu 0 4 1113 1122 1123 1114
		f 4 1749 -1753 -1752 1736
		mu 0 4 1114 1123 1124 1115
		f 4 1751 -1755 -1754 1738
		mu 0 4 1116 1125 1126 1117
		f 4 1753 -1756 -1743 1739
		mu 0 4 1117 1126 1118 1109
		f 4 1758 -1758 -1757 1741
		mu 0 4 1118 1127 1128 1119
		f 4 1756 -1761 -1760 1744
		mu 0 4 1119 1128 1044 1120
		f 4 1759 -1619 -1762 1746
		mu 0 4 1120 1044 1043 1121
		f 4 1761 -1620 -1763 1748
		mu 0 4 1121 1043 1042 1122
		f 4 1762 -1765 -1764 1750
		mu 0 4 1122 1042 1129 1123
		f 4 1763 -1767 -1766 1752
		mu 0 4 1123 1129 1130 1124
		f 4 1765 -1769 -1768 1754
		mu 0 4 1125 1131 1132 1126
		f 4 1767 -1770 -1759 1755
		mu 0 4 1126 1132 1127 1118
		f 4 -1771 1617 1760 1757
		mu 0 4 1127 1045 1044 1128
		f 4 1766 1764 1616 -1772
		mu 0 4 1131 1133 1134 1045
		f 4 1769 1768 1771 1770
		mu 0 4 1127 1132 1131 1045
		f 4 1773 -1661 -1773 1678
		mu 0 4 1083 1073 1074 1084
		f 4 1774 -1664 -1774 1681
		mu 0 4 1087 1075 1073 1083
		f 4 1775 -1666 -1775 1684
		mu 0 4 1089 1076 1075 1087
		f 4 1776 -1668 -1776 1687
		mu 0 4 1135 1077 1076 1089
		f 4 1777 -1670 -1777 1690
		mu 0 4 1095 1078 1079 1091
		f 4 1778 -1672 -1778 1693
		mu 0 4 1097 1080 1078 1095
		f 4 1779 -1674 -1779 1696
		mu 0 4 1099 1081 1080 1097
		f 4 1772 -1676 -1780 1699
		mu 0 4 1084 1074 1081 1099
		f 4 1783 -1783 -1782 1780
		mu 0 4 1136 1137 1138 1139
		f 4 1786 -1786 -1784 1784
		mu 0 4 1140 1141 1137 1136
		f 4 1789 -1789 -1787 1787
		mu 0 4 1142 1143 1141 1140
		f 4 1792 -1792 -1790 1790
		mu 0 4 1144 1145 1143 1142
		f 4 1795 -1795 -1793 1793
		mu 0 4 1146 1147 1145 1144
		f 4 1781 -1798 -1796 1796
		mu 0 4 1139 1138 1147 1146
		f 4 1800 -1800 -1799 1782
		mu 0 4 1148 1149 1150 1151
		f 4 1802 -1802 -1801 1785
		mu 0 4 1152 1153 1149 1148
		f 4 1804 -1804 -1803 1788
		mu 0 4 1154 1155 1153 1152
		f 4 1806 -1806 -1805 1791
		mu 0 4 1156 1157 1155 1154
		f 4 1808 -1808 -1807 1794
		mu 0 4 1158 1159 1157 1156
		f 4 1798 -1810 -1809 1797
		mu 0 4 1151 1150 1159 1158
		f 4 1812 -1812 -1811 1799
		mu 0 4 1160 1161 1162 1163
		f 4 1814 -1814 -1813 1801
		mu 0 4 1164 1165 1161 1160
		f 4 1816 -1816 -1815 1803
		mu 0 4 1166 1167 1168 1169
		f 4 1818 -1818 -1817 1805
		mu 0 4 1170 1171 1167 1166
		f 4 1820 -1820 -1819 1807
		mu 0 4 1172 1173 1171 1170
		f 4 1810 -1822 -1821 1809
		mu 0 4 1163 1162 1173 1172
		f 4 1823 -1781 -1823 1811
		mu 0 4 1174 1175 1176 1177
		f 4 1824 -1785 -1824 1813
		mu 0 4 1178 1179 1175 1174
		f 4 1825 -1788 -1825 1815
		mu 0 4 1180 1181 1179 1178
		f 4 1826 -1791 -1826 1817
		mu 0 4 1182 1183 1181 1180
		f 4 1827 -1794 -1827 1819
		mu 0 4 1184 1185 1183 1182
		f 4 1822 -1797 -1828 1821
		mu 0 4 1177 1176 1185 1184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "76DF48AD-4980-5438-5E0E-CE958CAD6EEE";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9EB49505-4581-2AD9-EB9F-DFBA5426391D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "428B7CA0-4A5F-62F5-D134-338356106932";
createNode displayLayerManager -n "layerManager";
	rename -uid "6093BBE2-4FD2-6D30-3EE0-F6A3D85FBCAD";
createNode displayLayer -n "defaultLayer";
	rename -uid "9A768F11-43AB-B9B7-E6CC-2886D15C44CC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EEDA8375-42FB-9C19-B99D-7A8CF814C24C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "083A13D2-49B3-1CF1-7916-1B8CD8333965";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5B2BAFB5-43C6-5F00-80BA-F58965AE33D1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1096\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.248751\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1096\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1096\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "20D171BD-4F36-374A-8AAF-64BF08EB5FE4";
	setAttr ".b" -type "string" "playbackOptions -min 1.248751 -max 376 -ast 1.248751 -aet 500 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "62F85EAD-4A62-8BAA-2C60-0D842BC9F538";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "2.1.0.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "B6206978-4C77-D977-84DD-5EB4A8D166AB";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "AD1A20D1-439A-EF1E-6698-A5817E609BA9";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "23158D58-44E5-CC85-5AB9-62957CCD861C";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTA -n "nurbsCircle8_rotateX";
	rename -uid "AFF8DF6D-4089-A0B9-DBC5-0EAF993EB056";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 0 30 -2.8764231951549388
		 60 0 90 -2.8764231951549388 120 0 150 -3.6477412195058956 180 0 230 0 250 0 255 -5.0742168061426574
		 295 -5.0742168061426574 305 0;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateY";
	rename -uid "B08C7FFC-49C4-6BF4-9B00-4E9B4F53C588";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 -37.931087624256527 180 38.529055942601993 230 0 250 0 255 0 295 0 305 0;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateZ";
	rename -uid "BAC3E59E-46B7-79D2-56CD-C1A68AE14EF6";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 2.2442009581638578 180 0 230 0 250 0 255 0 295 0 305 0;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_visibility";
	rename -uid "A2BCF5D2-486A-33F9-D512-47A7FFE0FC8C";
	setAttr ".tan" 5;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 230 1 250 1 255 1 295 1 305 1;
	setAttr -s 12 ".kit[0:11]"  9 9 9 1 1 1 1 1 
		9 9 9 9;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateX";
	rename -uid "4130150F-4552-73E0-7359-C69E9C9CE1BB";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 230 0 250 0 255 0 295 0 305 0;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateY";
	rename -uid "375309C5-486E-59AF-977A-DCB2204E77C6";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 230 0 250 0 255 0 295 0 305 0;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateZ";
	rename -uid "5437BE86-4AFF-FCC8-709C-69839A435E90";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 230 0 250 0 255 0 295 0 305 0;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleX";
	rename -uid "3EA4C61B-4034-EE85-2179-CABBF38285F6";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 230 1 250 1 255 1 295 1 305 1;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleY";
	rename -uid "F296CFD5-4776-6A74-6D12-119FC9F2A975";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 230 1 250 1 255 1 295 1 305 1;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleZ";
	rename -uid "31617D4D-4F37-A527-DC4E-11B1B46B21C4";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 230 1 250 1 255 1 295 1 305 1;
	setAttr -s 12 ".kit[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kot[3:11]"  1 1 1 1 1 18 18 18 
		18;
	setAttr -s 12 ".kix[3:11]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.66733333333333356 0.16683333333333294 1.3346666666666671 
		0.33366666666666589;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.16683333333333294 1.3346666666666671 0.33366666666666589 0.33366666666666589;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateX";
	rename -uid "4C8EA7C2-4DE9-95BB-8A1A-A3BC8AD55D2D";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 210 0 230.00000127423596 0 250 0 255 -4.4895124275985751e-015 265 -5.3679059050473869e-015
		 275 -4.4895124275985751e-015 285 -5.3679059050473869e-015 295 -4.4895124275985751e-015
		 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateY";
	rename -uid "8A28020A-47DA-1F06-70B1-37858B1410DB";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 210 0 230.00000127423596 0 250 0 255 -44.89178790111805 265 53.664449549054417
		 275 -44.89178790111805 285 53.664449549054417 295 -44.89178790111805 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateZ";
	rename -uid "0BEA7A7F-4F87-36A7-5C87-3AA4A0F41AE2";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 68.158 30 65.768981135839908
		 60 68.158 90 65.768981135839908 120 68.158 150 65.768981135839908 180 68.158 210 65.768981135839908
		 230.00000127423596 68.158 250 68.158 255 37.536061088984738 265 37.536061088984688
		 275 37.536061088984738 285 37.536061088984688 295 37.536061088984738 305 68.158;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_visibility";
	rename -uid "CEC94626-4B88-81D1-03F0-27BBD503CAB8";
	setAttr ".tan" 5;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 210 1 230.00000127423596 1 250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  9 9 9 1 1 1 1 1 
		1 9 9 9 1 1 1 9;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateX";
	rename -uid "D7985152-4821-F298-3283-29BE3FCE03FE";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 210 0 230.00000127423596 0 250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateY";
	rename -uid "DCD7F1EB-4491-13BE-44A7-0B9CF3179859";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 210 0 230.00000127423596 0 250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateZ";
	rename -uid "28252DF2-4BFF-92E5-98B7-E3BAE754AF05";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60 0 90 0 120 0
		 150 0 180 0 210 0 230.00000127423596 0 250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleX";
	rename -uid "BC2EAC27-4AFA-1609-F2C1-DDB005A19AB1";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 210 1 230.00000127423596 1 250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleY";
	rename -uid "988BCC48-4D45-8351-A626-0CBDEDE065E2";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 210 1 230.00000127423596 1 250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleZ";
	rename -uid "5A4F7F55-4684-D2BB-8D63-C0B3F369E9D6";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60 1 90 1 120 1
		 150 1 180 1 210 1 230.00000127423596 1 250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 18 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[3:15]"  0.95933333333333326 1.001 0.95933333333333326 
		1.001 0.95933333333333326 0.95933333333333326 0.66733329081632675 0.16683333333333294 
		0.33366666666666767 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1.001 1.0010000000000003 1.001 1.0010000000000003 
		1.001 0.95933333333333326 0.16683333333333294 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "478A4626-466B-C830-D1DD-1DBC2D21BFDD";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60.00000127423597 0
		 90 0 120.00000127423597 0 150 0 180.00000127423596 0 210 0 230.00000127423596 0 250 0
		 255 0 265 -4.8473284013862023e-015 275 0 285 -4.8473284013862023e-015 295 0 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "4DEBE207-4FA7-CE5B-E499-DF92C2972A59";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60.00000127423597 0
		 90 0 120.00000127423597 0 150 0 180.00000127423596 0 210 0 230.00000127423596 0 250 0
		 255 -36.159146108212141 265 48.993404236259472 275 -36.159146108212141 285 48.993404236259472
		 295 -36.159146108212141 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "A7C4D249-4743-C70C-E813-F0B9824F5423";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 -68.158 30 -65.665140977131315
		 60.00000127423597 -68.158 90 -65.665140977131315 120.00000127423597 -68.158 150 -65.665140977131315
		 180.00000127423596 -68.158 210 -65.665140977131315 230.00000127423596 -68.158 250 -68.158
		 255 -37.53599999999998 265 -37.536000000000115 275 -37.53599999999998 285 -37.536000000000115
		 295 -37.53599999999998 305 -68.158;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "A8737ECC-4DEE-3684-B650-3B9FA7E2AD6E";
	setAttr ".tan" 5;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60.00000127423597 1
		 90 1 120.00000127423597 1 150 1 180.00000127423596 1 210 1 230.00000127423596 1 250 1
		 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  9 9 1 1 1 1 1 1 
		1 9 9 9 1 1 1 9;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "6C17D885-455B-544A-5B6E-7082F2ECE84F";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60.00000127423597 0
		 90 0 120.00000127423597 0 150 0 180.00000127423596 0 210 0 230.00000127423596 0 250 0
		 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "44220E91-4F41-FC30-3999-BEB4FB01E7D2";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60.00000127423597 0
		 90 0 120.00000127423597 0 150 0 180.00000127423596 0 210 0 230.00000127423596 0 250 0
		 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "C2130880-4047-9DAB-3C64-9CB9078B5883";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 0 30 0 60.00000127423597 0
		 90 0 120.00000127423597 0 150 0 180.00000127423596 0 210 0 230.00000127423596 0 250 0
		 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "6AB05D43-4581-B1D2-48AD-CAB03F0485CD";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60.00000127423597 1
		 90 1 120.00000127423597 1 150 1 180.00000127423596 1 210 1 230.00000127423596 1 250 1
		 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "A6B72BAF-4B52-78B4-087F-A1BD674E3C5D";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60.00000127423597 1
		 90 1 120.00000127423597 1 150 1 180.00000127423596 1 210 1 230.00000127423596 1 250 1
		 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "A0174D03-44AA-881E-345D-87995E1AAFCA";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  1.2487512487512487 1 30 1 60.00000127423597 1
		 90 1 120.00000127423597 1 150 1 180.00000127423596 1 210 1 230.00000127423596 1 250 1
		 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 16 ".kit[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kot[0:15]"  18 18 1 1 1 1 1 1 
		1 18 18 18 1 1 1 18;
	setAttr -s 16 ".kix[2:15]"  0.95933333333333326 0.95933333333333326 
		0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 0.95933333333333326 
		0.66733329081632675 0.16683333333333294 0.33366666666666767 0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.33366666666666589;
	setAttr -s 16 ".kiy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[2:15]"  0.95933333333333326 1.0010000425170067 
		0.95933333333333326 1.0010000425170067 0.95933333333333326 1.0010000425170067 0.95933333333333326 
		0.16683333333333294 0.33366666666666767 0.33366666666666589 0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.33366666666666589;
	setAttr -s 16 ".koy[2:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_visibility";
	rename -uid "E17FEA70-4FBE-12F5-8B6F-E0A2A26579A1";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "nurbsCircle5_translateX";
	rename -uid "573625C5-47F0-EC7D-21F3-199542B6F291";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTL -n "nurbsCircle5_translateY";
	rename -uid "939E87A0-4431-2385-8CB0-828DE75EC320";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTL -n "nurbsCircle5_translateZ";
	rename -uid "82F4193E-494B-75FF-AE3E-7FB4E83A6C0F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTA -n "nurbsCircle5_rotateX";
	rename -uid "F402FDAB-4C38-31FD-7370-3B84DF119408";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTA -n "nurbsCircle5_rotateY";
	rename -uid "7C69EE66-4BF5-AE96-7BA6-D0AD6EA03321";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 4.8019270979815722
		 60 0;
createNode animCurveTA -n "nurbsCircle5_rotateZ";
	rename -uid "CF9CEA61-48AA-4FF7-1D9C-B19C4CB7779F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTU -n "nurbsCircle5_scaleX";
	rename -uid "8BDBB7A0-436C-79BE-9131-559BF6BF0040";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
createNode animCurveTU -n "nurbsCircle5_scaleY";
	rename -uid "496F7EDF-4221-66B7-45A7-01A5C9ED1953";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
createNode animCurveTU -n "nurbsCircle5_scaleZ";
	rename -uid "2385BB57-4708-CBE5-91DA-7A9487E7BD60";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
createNode animCurveTA -n "nurbsCircle2_rotateX";
	rename -uid "86496422-4C5C-8B2F-E7C1-E49B5C2109B4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTA -n "nurbsCircle2_rotateY";
	rename -uid "F67508D1-4C89-86B3-80DB-A2BE1B64C137";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 -4.691130754078066
		 60 0;
createNode animCurveTA -n "nurbsCircle2_rotateZ";
	rename -uid "467D764E-4C0A-0AB3-ED47-E3BF48F9BB97";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTU -n "nurbsCircle2_visibility";
	rename -uid "88E16E1D-4F3D-BADE-0219-84B70E83FE10";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "nurbsCircle2_translateX";
	rename -uid "24F2C24D-4717-BD7D-C976-EB9084071175";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTL -n "nurbsCircle2_translateY";
	rename -uid "D1456D0F-42C5-5040-F282-08AA8476957D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTL -n "nurbsCircle2_translateZ";
	rename -uid "6C3C6AF7-4A87-73F9-B9C6-3BBE13731029";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 0 30 0 60 0;
createNode animCurveTU -n "nurbsCircle2_scaleX";
	rename -uid "904F5034-4F14-BB5C-4FFC-C0978D9020E7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
createNode animCurveTU -n "nurbsCircle2_scaleY";
	rename -uid "D9469539-4F91-489A-87D7-49AF964286DE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
createNode animCurveTU -n "nurbsCircle2_scaleZ";
	rename -uid "29B1CA19-407D-63AA-9464-FB8750BF0CD4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1.2487512487512487 1 30 1 60 1;
createNode animCurveTA -n "nurbsCircle11_rotateX";
	rename -uid "3C8D0CB7-4D96-D603-1F73-B49CCEC3F2CF";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 0 30 14.385905545903583
		 60 0 100 0 130 14.385905545903583 160 0 250 0 255 28.182512130253549 295 28.182512130253549
		 305 0;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle11_rotateY";
	rename -uid "1DEE1D0F-4B23-C8B5-F917-148E4DD12300";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 0 30 0 60 0 100 0 130 0
		 160 0 250 0 255 0 295 0 305 0;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle11_rotateZ";
	rename -uid "2D4BF202-47DA-922B-B00E-4095DF893E6E";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 0 30 0 60 0 100 0 130 0
		 160 0 250 0 255 0 295 0 305 0;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_visibility";
	rename -uid "446E56B3-41A0-B819-A6BA-379069FD6E1F";
	setAttr ".tan" 5;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 1 30 1 60 1 100 1 130 1
		 160 1 250 1 255 1 295 1 305 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 1 1 9 9 
		9 9;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle11_translateX";
	rename -uid "1AC149C6-4271-3714-0AA5-1EACEE0E4D35";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 0 30 0 60 0 100 0 130 0
		 160 0 250 0 255 0 295 0 305 0;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle11_translateY";
	rename -uid "3AF726CF-4887-2E37-A7E7-4399A23EFBD3";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 0 30 0 60 0 100 0 130 0
		 160 0 250 0 255 0 295 0 305 0;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle11_translateZ";
	rename -uid "1EAABD7A-4FE6-F29D-27D5-D488EA15AEE2";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 0 30 0 60 0 100 0 130 0
		 160 0 250 0 255 0 295 0 305 0;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleX";
	rename -uid "BF1CCD71-4F04-7FE7-AB41-A58001BB65AB";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 1 30 1 60 1 100 1 130 1
		 160 1 250 1 255 1 295 1 305 1;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleY";
	rename -uid "25B5A610-4D28-7AE2-E724-578EC90AE844";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 1 30 1 60 1 100 1 130 1
		 160 1 250 1 255 1 295 1 305 1;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleZ";
	rename -uid "93C64056-4292-1D80-F699-08AE74E926A2";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1.2487512487512487 1 30 1 60 1 100 1 130 1
		 160 1 250 1 255 1 295 1 305 1;
	setAttr -s 10 ".kit[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  1 1 18 18 18 18;
	setAttr -s 10 ".kix[4:9]"  0.95933333333333326 1.3346666666666667 
		3.003 0.16683333333333294 1.3346666666666671 0.33366666666666589;
	setAttr -s 10 ".kiy[4:9]"  0 0 0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1.001 1.001 0.16683333333333294 1.3346666666666671 
		0.33366666666666589 0.33366666666666589;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_visibility";
	rename -uid "A098551B-48F6-39CB-C6BF-2F9208CDA793";
	setAttr ".tan" 5;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateX";
	rename -uid "322C1BCF-4905-9A1F-69EE-F090769BA5DF";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateY";
	rename -uid "FEDB06CA-4516-59EA-AE1B-0E834CC58FEE";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateZ";
	rename -uid "ABC3A684-4EFB-4B53-904D-A19E3E781569";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateX";
	rename -uid "22988EC4-4758-06AB-98C5-2E9A1BA94CF3";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 -52.156770143966298 265 41.476635706124931
		 275 -52.156770143966298 285 41.476635706124931 295 -52.156770143966298 305 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateY";
	rename -uid "77971EAA-44D8-3F35-B847-539D1635A2CB";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateZ";
	rename -uid "9EA16EEE-4BCE-063C-D82A-A9B0A7FD6735";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 305 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleX";
	rename -uid "872AC59F-44AC-E2FF-EF6F-A4A7D25C6D9E";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleY";
	rename -uid "AD26ADB0-4C3D-97E3-C76F-789A35908AB6";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleZ";
	rename -uid "0705DFF4-40F7-53CE-BD16-228434790B4F";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 305 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_visibility";
	rename -uid "9BD996D7-4539-00FF-73A7-28A3DB7C75C9";
	setAttr ".tan" 5;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 306 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateX";
	rename -uid "733D75A7-4459-AFC1-DA74-B9BCBF116978";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 306 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateY";
	rename -uid "77D81F3C-4E61-4A94-0E10-A39BCC07CF37";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 306 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateZ";
	rename -uid "338B9538-4EA0-BD97-A43A-77A9A974E6D5";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 306 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateX";
	rename -uid "5041B29F-42E4-A40B-D8BF-C09E1B28016B";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 40.103658050684054 265 -51.18598714700444
		 275 40.103658050684054 285 -51.18598714700444 295 40.103658050684054 306 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateY";
	rename -uid "AEDAB8F4-460B-81C3-9393-5BB1F52594E4";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 306 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateZ";
	rename -uid "D2C908E9-4596-BB8E-58EA-508EFA95D870";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 0 255 0 265 0 275 0 285 0 295 0 306 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleX";
	rename -uid "E496180D-40DA-8050-32D0-B9B1E33D0FBD";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 306 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleY";
	rename -uid "D5F9C7A4-4D77-DC30-2C1F-6CB5A8177506";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 306 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleZ";
	rename -uid "A2F8BB8F-4642-79A9-9B82-6B8DD021235E";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  250 1 255 1 265 1 275 1 285 1 295 1 306 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  0.16683333333333294 0.33366666666666767 
		0.16683333333333294 0.16683333333333294;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.33366666666666767 0.33366666666666589 
		0.33366666666666767 0.16683333333333294;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_visibility";
	rename -uid "F06FCB98-4F53-E8BA-CDE0-4F8186D4C239";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  250 1 255 1 295 1 305 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "nurbsCircle15_translateX";
	rename -uid "CB9BF34F-43CE-08E4-5778-30A441BE8CBB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 0 255 0 295 0 305 0;
createNode animCurveTL -n "nurbsCircle15_translateY";
	rename -uid "A4C71D32-41D4-EDEE-4B82-78AB2919D2A7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 0 255 0 295 0 305 0;
createNode animCurveTL -n "nurbsCircle15_translateZ";
	rename -uid "78F270D1-4F70-CA7C-A8D4-4B8565D7320A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 0 255 0 295 0 305 0;
createNode animCurveTA -n "nurbsCircle15_rotateX";
	rename -uid "018D8B0A-4DD5-1F37-257D-4EA14EA1BCB9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 0 255 23.454236581405468 295 23.454
		 305 0;
createNode animCurveTA -n "nurbsCircle15_rotateY";
	rename -uid "06AD9792-45B0-8532-17BF-6B98EA2B22AD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 0 255 0 295 0 305 0;
createNode animCurveTA -n "nurbsCircle15_rotateZ";
	rename -uid "A322C543-45D5-F4C2-052E-9794560B26CB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 0 255 0 295 0 305 0;
createNode animCurveTU -n "nurbsCircle15_scaleX";
	rename -uid "925432F7-4C37-C031-4953-A4AA0C7FAEFE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 1 255 1 295 1 305 1;
createNode animCurveTU -n "nurbsCircle15_scaleY";
	rename -uid "533CC0C2-4AA1-FEE0-1139-7DB4F02F0612";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 1 255 1 295 1 305 1;
createNode animCurveTU -n "nurbsCircle15_scaleZ";
	rename -uid "087797AC-4F23-15CA-F8C4-F886324D113F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  250 1 255 1 295 1 305 1;
createNode file -n "file1";
	rename -uid "7647B04A-467D-A743-4A99-B7ADA34B54BA";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "81BB718A-4BA0-D1C4-6CAD-DD88150EB797";
createNode checker -n "checker1";
	rename -uid "AAE91192-4076-3232-74F8-CF8F89F8ABCC";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "2D5C1C52-4B3D-2A79-F395-E3BDE8E3CF20";
	setAttr ".re" -type "float2" 4 4 ;
createNode objectSet -n "set1";
	rename -uid "7F1EC1B0-4377-134D-EAD1-93BBC2CBFC8D";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "7F7A5D7C-4D72-9A86-38BC-07ACA87D9F50";
	setAttr -s 249 ".bw";
	setAttr ".bw[11]" -1.#INF;
	setAttr ".bw[26]" 1;
	setAttr ".bw[28]" 1;
	setAttr ".bw[31]" 0.25;
	setAttr ".bw[62]" 1;
	setAttr ".bw[63]" 1;
	setAttr ".bw[64]" 1;
	setAttr ".bw[65]" 1;
	setAttr ".bw[66]" 1;
	setAttr ".bw[67]" 1;
	setAttr ".bw[68]" 1;
	setAttr ".bw[69]" 1;
	setAttr ".bw[70]" 1;
	setAttr ".bw[71]" 1;
	setAttr ".bw[72]" 1;
	setAttr ".bw[73]" 1;
	setAttr ".bw[74]" 1;
	setAttr ".bw[75]" 1;
	setAttr ".bw[220]" 1;
	setAttr ".bw[223]" 1;
	setAttr ".bw[224]" 1;
	setAttr ".bw[227]" 1;
	setAttr ".bw[228]" 1;
	setAttr ".bw[231]" 1;
	setAttr ".bw[232]" 1;
	setAttr ".bw[235]" 1;
	setAttr ".bw[236]" 1;
	setAttr ".bw[239]" 1;
	setAttr ".bw[240]" 1;
	setAttr ".bw[243]" 1;
	setAttr ".bw[244]" 1;
	setAttr ".bw[247]" 1;
	setAttr ".bw[248]" 1;
	setAttr ".bw[251]" 1;
	setAttr ".bw[252]" 1;
	setAttr ".bw[255]" 1;
	setAttr ".bw[256]" 1;
	setAttr ".bw[259]" 1;
	setAttr ".bw[260]" 1;
	setAttr ".bw[262]" 1;
	setAttr ".bw[263]" 1;
	setAttr ".bw[264]" 1;
	setAttr ".bw[266]" 1;
	setAttr ".bw[267]" 3.0532500985043162e-005;
	setAttr ".bw[268]" 2.9452388780957747e-005;
	setAttr ".bw[269]" 1.7487687664880501e-005;
	setAttr ".bw[270]" 1.9075359821875111e-005;
	setAttr ".bw[271]" 3.0175327930740087e-005;
	setAttr ".bw[272]" 1.8739385207213496e-005;
	setAttr ".bw[273]" 3.2652656833344535e-005;
	setAttr ".bw[274]" 2.2745469263772927e-005;
	setAttr ".bw[275]" 3.6648263510837193e-005;
	setAttr ".bw[276]" 2.9184633546163363e-005;
	setAttr ".bw[277]" 4.177263314814213e-005;
	setAttr ".bw[278]" 3.756398643875008e-005;
	setAttr ".bw[279]" 4.7554050861121845e-005;
	setAttr ".bw[280]" 4.7315632287411207e-005;
	setAttr ".bw[281]" 5.3459800137012586e-005;
	setAttr ".bw[282]" 5.7862860444872358e-005;
	setAttr ".bw[283]" 5.8759724077167932e-005;
	setAttr ".bw[284]" 7.6076524918695758e-005;
	setAttr ".bw[285]" 4.8408073645783158e-005;
	setAttr ".bw[286]" 4.264854201404579e-005;
	setAttr ".bw[287]" 3.8695543339851133e-005;
	setAttr ".bw[288]" 4.8980138529735001e-005;
	setAttr ".bw[289]" 3.7442448823208144e-005;
	setAttr ".bw[290]" 3.0025152158599832e-005;
	setAttr ".bw[291]" 3.3283162206869409e-005;
	setAttr ".bw[292]" 2.3357115356710187e-005;
	setAttr ".bw[293]" 1.0647350759677889e-005;
	setAttr ".bw[294]" 1.159485506262945e-005;
	setAttr ".bw[295]" 1.1535483251275033e-005;
	setAttr ".bw[296]" 1.420139412236225e-005;
	setAttr ".bw[297]" 2.1598312685491925e-005;
	setAttr ".bw[298]" 3.2533913215659514e-005;
	setAttr ".bw[299]" 4.5272543392052664e-005;
	setAttr ".bw[300]" 5.926939036613745e-005;
	setAttr ".bw[301]" 8.7410254997568639e-005;
	setAttr ".bw[302]" 3.2597708777336071e-005;
	setAttr ".bw[303]" 4.5684187931287548e-005;
	setAttr ".bw[304]" 2.1679337734883714e-005;
	setAttr ".bw[305]" 1.4273920862513606e-005;
	setAttr ".bw[306]" 6.3399229317603894e-006;
	setAttr ".bw[307]" 6.8593680968891206e-006;
	setAttr ".bw[308]" 6.9174593441989504e-006;
	setAttr ".bw[309]" 9.4864571736652954e-006;
	setAttr ".bw[310]" 1.4608731334687572e-005;
	setAttr ".bw[311]" 2.7038866337620085e-005;
	setAttr ".bw[312]" 4.2081133762053265e-005;
	setAttr ".bw[313]" 5.8463563511285946e-005;
	setAttr ".bw[314]" 9.1048000980713814e-005;
	setAttr ".bw[315]" 2.4911725556495546e-005;
	setAttr ".bw[316]" 3.9071564814856892e-005;
	setAttr ".bw[317]" 1.3964488935087936e-005;
	setAttr ".bw[318]" 9.1674791853338031e-006;
	setAttr ".bw[319]" 3.7016011368524109e-006;
	setAttr ".bw[320]" 4.1336779591761262e-006;
	setAttr ".bw[321]" 4.3020145165714442e-006;
	setAttr ".bw[322]" 6.2366625430614828e-006;
	setAttr ".bw[323]" 1.0795314638068022e-005;
	setAttr ".bw[324]" 2.1288415101767226e-005;
	setAttr ".bw[325]" 3.8122314330480019e-005;
	setAttr ".bw[610]" 0.00032148702220558076;
	setAttr ".bw[611]" 0.00054488342517018196;
	setAttr ".bw[612]" 0.00065473478542563785;
	setAttr ".bw[613]" 0.00047967588653713357;
	setAttr ".bw[614]" 0.00042660540097783626;
	setAttr ".bw[615]" 0.00046096747874822038;
	setAttr ".bw[616]" 0.00037150090691161534;
	setAttr ".bw[617]" 0.00041755294563318012;
	setAttr ".bw[618]" 0.00033306708692282857;
	setAttr ".bw[619]" 0.00035686424141571655;
	setAttr ".bw[620]" 0.00027353322269738165;
	setAttr ".bw[621]" 0.00031662738092610825;
	setAttr ".bw[622]" 0.00024117718519963555;
	setAttr ".bw[623]" 0.00026687240371549162;
	setAttr ".bw[624]" 0.00021657350543887637;
	setAttr ".bw[625]" 0.00022631886487719708;
	setAttr ".bw[626]" 0.00018751624111933434;
	setAttr ".bw[627]" 0.00016555751749823674;
	setAttr ".bw[628]" 0.00015090595076213244;
	setAttr ".bw[629]" 0.00018931928165465779;
	setAttr ".bw[630]" 0.00020444954819416432;
	setAttr ".bw[631]" 0.00072741519927019098;
	setAttr ".bw[632]" 0.00084103655330582594;
	setAttr ".bw[633]" 0.00061420362715854625;
	setAttr ".bw[634]" 0.00051631789932831892;
	setAttr ".bw[635]" 0.00043998291858280076;
	setAttr ".bw[636]" 0.00039447849760100052;
	setAttr ".bw[637]" 0.00034357613097894292;
	setAttr ".bw[638]" 0.00028310349358050919;
	setAttr ".bw[639]" 0.00016077797008971317;
	setAttr ".bw[640]" 0.00015730041158655865;
	setAttr ".bw[641]" 0.00011311286634565294;
	setAttr ".bw[642]" 0.00011482091195214527;
	setAttr ".bw[643]" 0.00016323852433906328;
	setAttr ".bw[644]" 0.00011583698488412946;
	setAttr ".bw[645]" 0.00016833285883366368;
	setAttr ".bw[646]" 0.00011839719064743297;
	setAttr ".bw[647]" 0.00017206001178444227;
	setAttr ".bw[648]" 0.00012000372209170266;
	setAttr ".bw[649]" 0.00017677064137632068;
	setAttr ".bw[650]" 0.00012250061230827591;
	setAttr ".bw[651]" 0.00017827379602096535;
	setAttr ".bw[652]" 0.00012310038405513417;
	setAttr ".bw[653]" 0.00020456596354098688;
	setAttr ".bw[654]" 0.00019092883991810635;
	setAttr ".bw[655]" 0.00024067962619637702;
	setAttr ".bw[656]" 0.00025690632094863258;
	setAttr ".bw[657]" 0.00023156174533767518;
	setAttr ".bw[658]" 0.00030838797020453588;
	setAttr ".bw[659]" 0.00024833722189175969;
	setAttr ".bw[660]" 0.00033209618331550474;
	setAttr ".bw[661]" 0.00015071968626521187;
	setAttr ".bw[662]" 0.00010958687907383267;
	setAttr ".bw[663]" 0.00021385963155002739;
	setAttr ".bw[664]" 0.00021052922201328806;
	setAttr ".bw[665]" 0.00021664614870166429;
	setAttr ".bw[666]" 0.00022189135745352175;
	setAttr ".bw[667]" 0.0002262872000139771;
	setAttr ".bw[668]" 0.00023130516605572799;
	setAttr ".bw[669]" 0.00023336897689094213;
	setAttr ".bw[670]" 0.00015864547417997286;
	setAttr ".bw[671]" 0.00014089202119437014;
	setAttr ".bw[672]" 0.0001867590758963273;
	setAttr ".bw[673]" 0.00020508913397100648;
	setAttr ".bw[674]" 0.00020391869436879226;
	setAttr ".bw[675]" 1.8557477648355996e-006;
	setAttr ".bw[676]" 1.5862826745483446e-006;
	setAttr ".bw[677]" 1.042639492570816e-006;
	setAttr ".bw[678]" 1.1611666611750293e-006;
	setAttr ".bw[679]" 1.421991551571691e-006;
	setAttr ".bw[680]" 9.5423478849571385e-007;
	setAttr ".bw[681]" 1.3416031338191899e-006;
	setAttr ".bw[682]" 9.3287064623884193e-007;
	setAttr ".bw[683]" 1.338587249334503e-006;
	setAttr ".bw[684]" 9.3808205084497896e-007;
	setAttr ".bw[685]" 1.4079744190700424e-006;
	setAttr ".bw[686]" 9.8392797130947698e-007;
	setAttr ".bw[687]" 1.5422522167906217e-006;
	setAttr ".bw[688]" 1.0874321062830968e-006;
	setAttr ".bw[689]" 1.7301538221276754e-006;
	setAttr ".bw[690]" 1.2169878074934478e-006;
	setAttr ".bw[691]" 2.0424999915196539e-006;
	setAttr ".bw[692]" 1.3532737694912641e-006;
	setAttr ".bw[693]" 1.7273453026532015e-006;
	setAttr ".bw[694]" 1.8097200567888927e-006;
	setAttr ".bw[695]" 1.8201428660440779e-006;
	setAttr ".bw[696]" 1.7594213617820968e-006;
	setAttr ".bw[697]" 6.6856969468445028e-008;
	setAttr ".bw[698]" 5.9400924934896898e-008;
	setAttr ".bw[699]" 8.2600322761542271e-008;
	setAttr ".bw[700]" 9.8588330123275417e-008;
	setAttr ".bw[701]" 1.085645775056433e-007;
	setAttr ".bw[702]" 1.1111229953732919e-007;
	setAttr ".bw[703]" 1.0442001014645799e-007;
	setAttr ".bw[704]" 8.6710784059976099e-008;
	setAttr ".bw[705]" 1.5102003150573631e-007;
	setAttr ".bw[706]" 1.5485241479935247e-007;
	setAttr ".bw[707]" 1.4026593878389088e-007;
	setAttr ".bw[708]" 1.237929433767429e-007;
	setAttr ".bw[709]" 1.0420787051977799e-007;
	setAttr ".bw[710]" 1.2534658766722972e-007;
	setAttr ".bw[711]" 1.0801888067180015e-007;
	setAttr ".bw[712]" 5.3471815283896745e-008;
	setAttr ".bw[713]" 1.4057744069587704e-007;
	setAttr ".bw[714]" 1.5119010700294946e-007;
	setAttr ".bw[715]" 2.0803147951492193e-007;
	setAttr ".bw[716]" 2.1189501300071315e-007;
	setAttr ".bw[717]" 2.0022005690224247e-007;
	setAttr ".bw[718]" 1.8936114491742918e-007;
	setAttr ".bw[719]" 1.7697064385484839e-007;
	setAttr ".bw[720]" 2.0063069372321535e-007;
	setAttr ".bw[721]" 1.928347325054834e-007;
	setAttr ".bw[722]" 2.0740529239054627e-007;
	setAttr ".bw[723]" 2.1154144692797441e-007;
	setAttr ".bw[724]" 3.2254871379749568e-007;
	setAttr ".bw[725]" 3.3055067554158764e-007;
	setAttr ".bw[726]" 3.1107680239221352e-007;
	setAttr ".bw[727]" 2.9688004485995856e-007;
	setAttr ".bw[728]" 2.8104483262176002e-007;
	setAttr ".bw[729]" 3.3344150440418321e-007;
	setAttr ".bw[730]" 3.3012321296961603e-007;
	setAttr ".bw[731]" 3.3560405544677823e-007;
	setAttr ".bw[732]" 3.3492648190966128e-007;
	setAttr ".bw[733]" 4.4220547474515218e-007;
	setAttr ".bw[734]" 4.5143275322510996e-007;
	setAttr ".bw[735]" 3.9245338605598014e-007;
	setAttr ".bw[736]" 3.839659815153666e-007;
	setAttr ".bw[737]" 4.3269170543415741e-007;
	setAttr ".bw[738]" 3.736004704154809e-007;
	setAttr ".bw[739]" 4.2262996556522545e-007;
	setAttr ".bw[740]" 3.6151419533956617e-007;
	setAttr ".bw[741]" 4.1076833568121117e-007;
	setAttr ".bw[742]" 3.4715736674030782e-007;
	setAttr ".bw[743]" 3.9507318562882124e-007;
	setAttr ".bw[744]" 3.3159841351906665e-007;
	setAttr ".bw[745]" 4.6613609928813716e-007;
	setAttr ".bw[746]" 4.6859582769309821e-007;
	setAttr ".bw[747]" 4.0200535411322762e-007;
	setAttr ".bw[748]" 4.0200171615020817e-007;
	setAttr ".bw[749]" 4.5981556587462193e-007;
	setAttr ".bw[750]" 3.986688728316261e-007;
	setAttr ".bw[751]" 7.0162525180938042e-007;
	setAttr ".bw[752]" 7.2522845827359011e-007;
	setAttr ".bw[753]" 6.8857764085448774e-007;
	setAttr ".bw[754]" 6.8514793637151823e-007;
	setAttr ".bw[755]" 6.8576457381782385e-007;
	setAttr ".bw[756]" 6.7860139358729498e-007;
	setAttr -s 920 ".wl";
	setAttr ".wl[0].w[9]"  1;
	setAttr ".wl[1].w[9]"  1;
	setAttr ".wl[2].w[9]"  1;
	setAttr ".wl[3].w[9]"  1;
	setAttr ".wl[4].w[9]"  1;
	setAttr ".wl[5].w[9]"  1;
	setAttr ".wl[6].w[9]"  1;
	setAttr ".wl[7].w[9]"  1;
	setAttr ".wl[8].w[9]"  1;
	setAttr ".wl[9].w[9]"  1;
	setAttr ".wl[10].w[9]"  1;
	setAttr ".wl[11].w[9]"  1;
	setAttr ".wl[12].w[9]"  1;
	setAttr ".wl[13].w[9]"  1;
	setAttr ".wl[14].w[9]"  1;
	setAttr ".wl[15].w[9]"  1;
	setAttr ".wl[16].w[9]"  1;
	setAttr ".wl[17].w[9]"  1;
	setAttr ".wl[18].w[9]"  1;
	setAttr ".wl[19].w[9]"  1;
	setAttr -s 3 ".wl[20].w[12:14]"  0.0015710927101570105 0.99214121548933387 
		0.0062876918005092446;
	setAttr -s 3 ".wl[21].w[12:14]"  0.0019325593825509431 0.99112394019811945 
		0.0069435004193295381;
	setAttr -s 3 ".wl[22].w[12:14]"  0.0025211568155408311 0.98960547813740007 
		0.0078733650470590565;
	setAttr -s 3 ".wl[23].w[12:14]"  0.0027254541423971249 0.98872423556641553 
		0.0085503102911872898;
	setAttr -s 3 ".wl[24].w[12:14]"  0.0023732169961748688 0.98930633992248251 
		0.0083204430813425736;
	setAttr -s 3 ".wl[25].w[12:14]"  0.0018089701559750899 0.99124358865064222 
		0.0069474411933826358;
	setAttr -s 3 ".wl[26].w[12:14]"  0.0012784555100994008 0.98922293356061464 
		0.0094986109292859288;
	setAttr -s 3 ".wl[27].w[12:14]"  0.0016077398003428796 0.98998050831586759 
		0.0084117518837893302;
	setAttr -s 3 ".wl[28].w[12:14]"  0.0025199002047891499 0.98833169181327052 
		0.0091484079819404446;
	setAttr -s 3 ".wl[29].w[12:14]"  0.0029042547075679606 0.98700719420078098 
		0.010088551091651139;
	setAttr -s 3 ".wl[30].w[12:14]"  0.0023409690786226375 0.98746182054619114 
		0.010197210375186099;
	setAttr -s 3 ".wl[31].w[12:14]"  0.0016300544009947512 0.98798611674174952 
		0.010383828857255872;
	setAttr -s 3 ".wl[32].w[12:14]"  0.0017761735859179683 0.98516816051137801 
		0.013055665902704041;
	setAttr -s 3 ".wl[33].w[12:14]"  0.0018171361769720197 0.98698224125883782 
		0.011200622564190127;
	setAttr -s 3 ".wl[34].w[12:14]"  0.0025511767008222588 0.98721502966478625 
		0.010233793634391556;
	setAttr -s 3 ".wl[35].w[12:14]"  0.0032285390367438236 0.98572396448420119 
		0.011047496479055135;
	setAttr -s 3 ".wl[36].w[12:14]"  0.0028727776315010012 0.98606978231629594 
		0.01105744005220312;
	setAttr -s 3 ".wl[37].w[12:14]"  0.0021649250371093874 0.98580654450769378 
		0.012028530455196791;
	setAttr -s 3 ".wl[38].w[12:14]"  0.0020617846668414953 0.98823567387820832 
		0.0097025414549501247;
	setAttr -s 3 ".wl[39].w[12:14]"  0.0021357511335458263 0.98813636642338654 
		0.0097278824430676106;
	setAttr -s 3 ".wl[40].w[12:14]"  0.0025561492211572971 0.98840690512967377 
		0.0090369456491690443;
	setAttr -s 3 ".wl[41].w[12:14]"  0.0030449315377614255 0.98741754080649269 
		0.0095375276557458522;
	setAttr -s 3 ".wl[42].w[12:14]"  0.0029113272927554575 0.98783886948201194 
		0.0092498032252326789;
	setAttr -s 3 ".wl[43].w[12:14]"  0.0023372059386283462 0.98906888009252103 
		0.0085939139688505917;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.46416118567046938;
	setAttr ".wl[44].w[8]" 0.53583881432953073;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.52830407575160698;
	setAttr ".wl[45].w[8]" 0.47169592424839302;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.59957841185186433;
	setAttr ".wl[46].w[8]" 0.40042158814813578;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.41449275780091477;
	setAttr ".wl[47].w[8]" 0.36916319482105148;
	setAttr ".wl[47].w[15]" 0.21634404737803353;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.3808534391813258;
	setAttr ".wl[48].w[8]" 0.36264082159086436;
	setAttr ".wl[48].w[15]" 0.25650573922780989;
	setAttr -s 3 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.3558679177285286;
	setAttr ".wl[49].w[8]" 0.41185584387909235;
	setAttr ".wl[49].w[15]" 0.23227623839237913;
	setAttr -s 3 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.34324327665578253;
	setAttr ".wl[50].w[8]" 0.41925396668708598;
	setAttr ".wl[50].w[11]" 0.23750275665713136;
	setAttr -s 2 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.4593327780055716;
	setAttr ".wl[51].w[8]" 0.5406672219944284;
	setAttr -s 2 ".wl[52].w";
	setAttr ".wl[52].w[8]" 0.62378818286000459;
	setAttr ".wl[52].w[11]" 0.37621181713999546;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.24793968146865725;
	setAttr ".wl[53].w[8]" 0.57368650679800359;
	setAttr ".wl[53].w[11]" 0.17837381173333913;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[0]" 0.30047191332382389;
	setAttr ".wl[54].w[8]" 0.52088581151193547;
	setAttr ".wl[54].w[15]" 0.17864227516424067;
	setAttr -s 3 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.15673490629943929;
	setAttr ".wl[55].w[8]" 0.53140731316965673;
	setAttr ".wl[55].w[15]" 0.31185778053090407;
	setAttr -s 3 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.16869819965100222;
	setAttr ".wl[56].w[8]" 0.51877515190208778;
	setAttr ".wl[56].w[15]" 0.31252664844691014;
	setAttr -s 3 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.18364249078253492;
	setAttr ".wl[57].w[8]" 0.54823136532373673;
	setAttr ".wl[57].w[15]" 0.2681261438937283;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.16898357354067534;
	setAttr ".wl[58].w[8]" 0.54956692593138801;
	setAttr ".wl[58].w[11]" 0.28144950052793671;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.15621193306734893;
	setAttr ".wl[59].w[8]" 0.52151188260229098;
	setAttr ".wl[59].w[11]" 0.32227618433036009;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[8]" 0.57437910443043527;
	setAttr ".wl[60].w[11]" 0.42562089556956473;
	setAttr -s 3 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.25307227040352831;
	setAttr ".wl[61].w[8]" 0.50188246035498263;
	setAttr ".wl[61].w[11]" 0.24504526924148909;
	setAttr -s 3 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.23772754497202869;
	setAttr ".wl[62].w[8]" 0.51883807141410088;
	setAttr ".wl[62].w[15]" 0.24343438361387046;
	setAttr -s 3 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.16580184182751456;
	setAttr ".wl[63].w[8]" 0.4904812038859811;
	setAttr ".wl[63].w[15]" 0.34371695428650417;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.17512769291274852;
	setAttr ".wl[64].w[8]" 0.49761195222601923;
	setAttr ".wl[64].w[15]" 0.32726035486123234;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.21092654702549379;
	setAttr ".wl[65].w[8]" 0.52158501848312966;
	setAttr ".wl[65].w[15]" 0.26748843449137644;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.2010678807022902;
	setAttr ".wl[66].w[8]" 0.52286129761197708;
	setAttr ".wl[66].w[11]" 0.27607082168573271;
	setAttr -s 2 ".wl[67].w";
	setAttr ".wl[67].w[8]" 0.59214888938333354;
	setAttr ".wl[67].w[11]" 0.4078511106166664;
	setAttr -s 2 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.5194548194123676;
	setAttr ".wl[68].w[8]" 0.4805451805876324;
	setAttr -s 2 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.50661089606956333;
	setAttr ".wl[69].w[8]" 0.49338910393043661;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.39829274307961271;
	setAttr ".wl[70].w[8]" 0.40496809261926447;
	setAttr ".wl[70].w[15]" 0.19673916430112282;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.4107861826497014;
	setAttr ".wl[71].w[8]" 0.33299150457356125;
	setAttr ".wl[71].w[15]" 0.25622231277673729;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.35392110907309243;
	setAttr ".wl[72].w[8]" 0.36386671706642693;
	setAttr ".wl[72].w[15]" 0.28221217386048064;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.3995506723047958;
	setAttr ".wl[73].w[8]" 0.3639009715918276;
	setAttr ".wl[73].w[15]" 0.23654835610337649;
	setAttr -s 2 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.51538155912519401;
	setAttr ".wl[74].w[8]" 0.48461844087480599;
	setAttr -s 2 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.4875245580344732;
	setAttr ".wl[75].w[8]" 0.51247544196552686;
	setAttr -s 2 ".wl[76].w[0:1]"  0.56109272022485635 0.43890727977514365;
	setAttr -s 2 ".wl[77].w";
	setAttr ".wl[77].w[0]" 0.658175472009219;
	setAttr ".wl[77].w[8]" 0.341824527990781;
	setAttr -s 2 ".wl[78].w[0:1]"  0.59331878171320263 0.40668121828679743;
	setAttr -s 2 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.67516461533136307;
	setAttr ".wl[79].w[8]" 0.32483538466863698;
	setAttr -s 3 ".wl[80].w";
	setAttr ".wl[80].w[0]" 0.5124978979161352;
	setAttr ".wl[80].w[1]" 0.23565590246459939;
	setAttr ".wl[80].w[8]" 0.25184619961926541;
	setAttr -s 3 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.52565973379728792;
	setAttr ".wl[81].w[1]" 0.24404759888199018;
	setAttr ".wl[81].w[8]" 0.23029266732072193;
	setAttr -s 2 ".wl[82].w[0:1]"  0.62370530396989532 0.37629469603010479;
	setAttr -s 2 ".wl[83].w[0:1]"  0.60061136303959317 0.39938863696040683;
	setAttr -s 2 ".wl[84].w[0:1]"  0.58500370813812641 0.41499629186187359;
	setAttr -s 2 ".wl[85].w[0:1]"  0.58092490525532459 0.41907509474467536;
	setAttr -s 2 ".wl[86].w";
	setAttr ".wl[86].w[0]" 0.67370819889531308;
	setAttr ".wl[86].w[8]" 0.32629180110468692;
	setAttr -s 2 ".wl[87].w";
	setAttr ".wl[87].w[0]" 0.65976050631165895;
	setAttr ".wl[87].w[8]" 0.34023949368834111;
	setAttr -s 2 ".wl[88].w";
	setAttr ".wl[88].w[0]" 0.66501345268061718;
	setAttr ".wl[88].w[8]" 0.33498654731938282;
	setAttr -s 2 ".wl[89].w[0:1]"  0.5332996833214001 0.4667003166785999;
	setAttr -s 2 ".wl[90].w";
	setAttr ".wl[90].w[0]" 0.6456866569784977;
	setAttr ".wl[90].w[8]" 0.3543133430215023;
	setAttr -s 2 ".wl[91].w[0:1]"  0.5534416842282599 0.4465583157717401;
	setAttr -s 2 ".wl[92].w[0:1]"  0.50029252849039219 0.49970747150960781;
	setAttr -s 2 ".wl[93].w[0:1]"  0.59079901502037946 0.40920098497962054;
	setAttr -s 2 ".wl[94].w[0:1]"  0.50866859816808285 0.49133140183191715;
	setAttr -s 2 ".wl[95].w[0:1]"  0.60234736528778632 0.39765263471221374;
	setAttr -s 2 ".wl[96].w[0:1]"  0.61095000111462805 0.38904999888537189;
	setAttr -s 2 ".wl[97].w[0:1]"  0.60407091579191363 0.39592908420808637;
	setAttr -s 2 ".wl[98].w[0:1]"  0.56091382407697854 0.43908617592302146;
	setAttr -s 2 ".wl[99].w[0:1]"  0.54915601869680364 0.45084398130319647;
	setAttr -s 2 ".wl[100].w[0:1]"  0.54179021941986238 0.45820978058013773;
	setAttr -s 2 ".wl[101].w[0:1]"  0.5326846200288774 0.46731537997112271;
	setAttr -s 2 ".wl[102].w[0:1]"  0.59671146810083053 0.40328853189916947;
	setAttr -s 2 ".wl[103].w[0:1]"  0.60378054002339088 0.39621945997660923;
	setAttr -s 2 ".wl[104].w[0:1]"  0.57835856384151096 0.42164143615848915;
	setAttr -s 2 ".wl[105].w[0:1]"  0.48238620544748623 0.51761379455251377;
	setAttr -s 2 ".wl[106].w[0:1]"  0.58403368021621627 0.41596631978378384;
	setAttr -s 2 ".wl[107].w[0:1]"  0.47054532872206434 0.52945467127793566;
	setAttr -s 2 ".wl[108].w";
	setAttr ".wl[108].w[8]" 0.59715549069565588;
	setAttr ".wl[108].w[11]" 0.40284450930434412;
	setAttr -s 3 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.15348671839408556;
	setAttr ".wl[109].w[8]" 0.59884897926758274;
	setAttr ".wl[109].w[11]" 0.24766430233833178;
	setAttr -s 2 ".wl[110].w";
	setAttr ".wl[110].w[8]" 0.56862527617649938;
	setAttr ".wl[110].w[11]" 0.43137472382350062;
	setAttr -s 2 ".wl[111].w";
	setAttr ".wl[111].w[8]" 0.63662965742611011;
	setAttr ".wl[111].w[11]" 0.36337034257388989;
	setAttr -s 3 ".wl[112].w";
	setAttr ".wl[112].w[0]" 0.1702689600628394;
	setAttr ".wl[112].w[8]" 0.59602312306721028;
	setAttr ".wl[112].w[15]" 0.23370791686995038;
	setAttr -s 3 ".wl[113].w";
	setAttr ".wl[113].w[0]" 0.14537186644093281;
	setAttr ".wl[113].w[8]" 0.58760747066696151;
	setAttr ".wl[113].w[15]" 0.2670206628921058;
	setAttr -s 2 ".wl[114].w";
	setAttr ".wl[114].w[8]" 0.60742884055168433;
	setAttr ".wl[114].w[15]" 0.39257115944831567;
	setAttr -s 2 ".wl[115].w";
	setAttr ".wl[115].w[8]" 0.57963860218147212;
	setAttr ".wl[115].w[15]" 0.42036139781852788;
	setAttr -s 3 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.092040985381005885;
	setAttr ".wl[116].w[8]" 0.56054027170705234;
	setAttr ".wl[116].w[15]" 0.34741874291194197;
	setAttr -s 2 ".wl[117].w";
	setAttr ".wl[117].w[8]" 0.59760523867786697;
	setAttr ".wl[117].w[15]" 0.40239476132213303;
	setAttr -s 3 ".wl[118].w";
	setAttr ".wl[118].w[0]" 0.1636001535585874;
	setAttr ".wl[118].w[8]" 0.56026580687281879;
	setAttr ".wl[118].w[15]" 0.27613403956859373;
	setAttr -s 3 ".wl[119].w";
	setAttr ".wl[119].w[0]" 0.1369946747519652;
	setAttr ".wl[119].w[8]" 0.55284005806584324;
	setAttr ".wl[119].w[15]" 0.31016526718219151;
	setAttr -s 3 ".wl[120].w";
	setAttr ".wl[120].w[0]" 0.13339177440115538;
	setAttr ".wl[120].w[8]" 0.56072244987319764;
	setAttr ".wl[120].w[11]" 0.30588577572564707;
	setAttr -s 2 ".wl[121].w";
	setAttr ".wl[121].w[8]" 0.59954202783496957;
	setAttr ".wl[121].w[11]" 0.40045797216503037;
	setAttr -s 3 ".wl[122].w";
	setAttr ".wl[122].w[0]" 0.14967305885874904;
	setAttr ".wl[122].w[8]" 0.55336406703409935;
	setAttr ".wl[122].w[11]" 0.29696287410715172;
	setAttr -s 2 ".wl[123].w";
	setAttr ".wl[123].w[8]" 0.59658789730533002;
	setAttr ".wl[123].w[11]" 0.40341210269466993;
	setAttr -s 2 ".wl[124].w";
	setAttr ".wl[124].w[8]" 0.5712454447323011;
	setAttr ".wl[124].w[11]" 0.42875455526769896;
	setAttr -s 3 ".wl[125].w";
	setAttr ".wl[125].w[0]" 0.24579660914486706;
	setAttr ".wl[125].w[8]" 0.46430597160683118;
	setAttr ".wl[125].w[11]" 0.28989741924830165;
	setAttr -s 2 ".wl[126].w";
	setAttr ".wl[126].w[8]" 0.60399247498781106;
	setAttr ".wl[126].w[11]" 0.39600752501218894;
	setAttr -s 2 ".wl[127].w";
	setAttr ".wl[127].w[8]" 0.54258435667530125;
	setAttr ".wl[127].w[11]" 0.4574156433246987;
	setAttr -s 3 ".wl[128].w";
	setAttr ".wl[128].w[0]" 0.25706107950603291;
	setAttr ".wl[128].w[8]" 0.49009360232906263;
	setAttr ".wl[128].w[15]" 0.2528453181649043;
	setAttr -s 3 ".wl[129].w";
	setAttr ".wl[129].w[0]" 0.18771919247722849;
	setAttr ".wl[129].w[8]" 0.46785866058974485;
	setAttr ".wl[129].w[15]" 0.3444221469330267;
	setAttr -s 3 ".wl[130].w";
	setAttr ".wl[130].w[0]" 0.18675333271279546;
	setAttr ".wl[130].w[8]" 0.46266658256898813;
	setAttr ".wl[130].w[15]" 0.35058008471821644;
	setAttr -s 2 ".wl[131].w";
	setAttr ".wl[131].w[8]" 0.54434662548823232;
	setAttr ".wl[131].w[15]" 0.45565337451176768;
	setAttr -s 2 ".wl[132].w";
	setAttr ".wl[132].w[8]" 0.57785901837632669;
	setAttr ".wl[132].w[15]" 0.42214098162367336;
	setAttr -s 2 ".wl[133].w";
	setAttr ".wl[133].w[8]" 0.57642851806026585;
	setAttr ".wl[133].w[15]" 0.42357148193973415;
	setAttr -s 3 ".wl[134].w";
	setAttr ".wl[134].w[0]" 0.22640911589189835;
	setAttr ".wl[134].w[8]" 0.49043206553548246;
	setAttr ".wl[134].w[15]" 0.28315881857261921;
	setAttr -s 3 ".wl[135].w";
	setAttr ".wl[135].w[0]" 0.24249242960533418;
	setAttr ".wl[135].w[8]" 0.50851846178695714;
	setAttr ".wl[135].w[11]" 0.24898910860770862;
	setAttr -s 2 ".wl[136].w";
	setAttr ".wl[136].w[8]" 0.57253960712850516;
	setAttr ".wl[136].w[11]" 0.42746039287149479;
	setAttr -s 2 ".wl[137].w";
	setAttr ".wl[137].w[8]" 0.56763693415212524;
	setAttr ".wl[137].w[11]" 0.43236306584787471;
	setAttr -s 3 ".wl[138].w";
	setAttr ".wl[138].w[0]" 0.17445259584232842;
	setAttr ".wl[138].w[8]" 0.5482088231351826;
	setAttr ".wl[138].w[11]" 0.27733858102248909;
	setAttr -s 3 ".wl[139].w";
	setAttr ".wl[139].w[0]" 0.19200090523936506;
	setAttr ".wl[139].w[8]" 0.54146918707918323;
	setAttr ".wl[139].w[15]" 0.26652990768145179;
	setAttr -s 2 ".wl[140].w";
	setAttr ".wl[140].w[8]" 0.57009313615881663;
	setAttr ".wl[140].w[11]" 0.42990686384118337;
	setAttr -s 3 ".wl[141].w";
	setAttr ".wl[141].w[0]" 0.23419843770967941;
	setAttr ".wl[141].w[8]" 0.51852563069246771;
	setAttr ".wl[141].w[11]" 0.24727593159785283;
	setAttr -s 2 ".wl[142].w";
	setAttr ".wl[142].w[8]" 0.54829315469554984;
	setAttr ".wl[142].w[11]" 0.45170684530445016;
	setAttr -s 2 ".wl[143].w";
	setAttr ".wl[143].w[8]" 0.58761789089130634;
	setAttr ".wl[143].w[11]" 0.41238210910869366;
	setAttr -s 3 ".wl[144].w";
	setAttr ".wl[144].w[0]" 0.25063047519912068;
	setAttr ".wl[144].w[8]" 0.49861106793486992;
	setAttr ".wl[144].w[15]" 0.25075845686600934;
	setAttr -s 3 ".wl[145].w";
	setAttr ".wl[145].w[0]" 0.23578715112510629;
	setAttr ".wl[145].w[8]" 0.47709845997218575;
	setAttr ".wl[145].w[15]" 0.28711438890270791;
	setAttr -s 2 ".wl[146].w";
	setAttr ".wl[146].w[8]" 0.57545795643833397;
	setAttr ".wl[146].w[15]" 0.42454204356166608;
	setAttr -s 2 ".wl[147].w";
	setAttr ".wl[147].w[8]" 0.55229927590637562;
	setAttr ".wl[147].w[15]" 0.44770072409362449;
	setAttr -s 3 ".wl[148].w";
	setAttr ".wl[148].w[0]" 0.21252517778386054;
	setAttr ".wl[148].w[8]" 0.46388435559586372;
	setAttr ".wl[148].w[11]" 0.32359046662027563;
	setAttr -s 3 ".wl[149].w";
	setAttr ".wl[149].w[0]" 0.30860505607695254;
	setAttr ".wl[149].w[8]" 0.4649935997053331;
	setAttr ".wl[149].w[11]" 0.22640134421771427;
	setAttr -s 3 ".wl[150].w";
	setAttr ".wl[150].w[0]" 0.24333683229086633;
	setAttr ".wl[150].w[8]" 0.44334778424230242;
	setAttr ".wl[150].w[11]" 0.31331538346683124;
	setAttr -s 3 ".wl[151].w";
	setAttr ".wl[151].w[0]" 0.2988302759400307;
	setAttr ".wl[151].w[8]" 0.45089695787709383;
	setAttr ".wl[151].w[11]" 0.25027276618287553;
	setAttr -s 3 ".wl[152].w";
	setAttr ".wl[152].w[0]" 0.30009203187966249;
	setAttr ".wl[152].w[8]" 0.44746779511479029;
	setAttr ".wl[152].w[15]" 0.25244017300554733;
	setAttr -s 3 ".wl[153].w";
	setAttr ".wl[153].w[0]" 0.31889273213411179;
	setAttr ".wl[153].w[8]" 0.44303121219614222;
	setAttr ".wl[153].w[15]" 0.23807605566974607;
	setAttr -s 3 ".wl[154].w";
	setAttr ".wl[154].w[0]" 0.21602320491723884;
	setAttr ".wl[154].w[8]" 0.46230925126648342;
	setAttr ".wl[154].w[15]" 0.32166754381627788;
	setAttr -s 3 ".wl[155].w";
	setAttr ".wl[155].w[0]" 0.24958696955689147;
	setAttr ".wl[155].w[8]" 0.44286274032699924;
	setAttr ".wl[155].w[15]" 0.30755029011610924;
	setAttr ".wl[156].w[9]"  1;
	setAttr ".wl[157].w[9]"  1;
	setAttr ".wl[158].w[9]"  1;
	setAttr ".wl[159].w[9]"  1;
	setAttr ".wl[160].w[9]"  1;
	setAttr ".wl[161].w[9]"  1;
	setAttr ".wl[162].w[9]"  1;
	setAttr ".wl[163].w[9]"  1;
	setAttr ".wl[164].w[9]"  1;
	setAttr ".wl[165].w[9]"  1;
	setAttr ".wl[166].w[9]"  1;
	setAttr -s 2 ".wl[167].w[9:10]"  0.99078605480256321 0.0092139451974368961;
	setAttr ".wl[168].w[9]"  1;
	setAttr ".wl[169].w[9]"  1;
	setAttr ".wl[170].w[9]"  1;
	setAttr ".wl[171].w[9]"  1;
	setAttr ".wl[172].w[9]"  1;
	setAttr ".wl[173].w[9]"  1;
	setAttr ".wl[174].w[9]"  1;
	setAttr ".wl[175].w[9]"  1;
	setAttr ".wl[176].w[9]"  1;
	setAttr ".wl[177].w[9]"  1;
	setAttr ".wl[178].w[9]"  1;
	setAttr ".wl[179].w[9]"  1;
	setAttr ".wl[180].w[9]"  1;
	setAttr ".wl[181].w[9]"  1;
	setAttr ".wl[182].w[9]"  1;
	setAttr ".wl[183].w[9]"  1;
	setAttr ".wl[184].w[9]"  1;
	setAttr ".wl[185].w[9]"  1;
	setAttr ".wl[186].w[9]"  1;
	setAttr ".wl[187].w[9]"  1;
	setAttr ".wl[188].w[9]"  1;
	setAttr ".wl[189].w[9]"  1;
	setAttr ".wl[190].w[9]"  1;
	setAttr ".wl[191].w[9]"  1;
	setAttr ".wl[192].w[9]"  1;
	setAttr ".wl[193].w[9]"  1;
	setAttr ".wl[194].w[9]"  1;
	setAttr ".wl[195].w[9]"  1;
	setAttr ".wl[196].w[9]"  1;
	setAttr ".wl[197].w[9]"  1;
	setAttr ".wl[198].w[9]"  1;
	setAttr ".wl[199].w[9]"  1;
	setAttr ".wl[200].w[9]"  1;
	setAttr ".wl[201].w[9]"  1;
	setAttr ".wl[202].w[9]"  1;
	setAttr ".wl[203].w[9]"  1;
	setAttr ".wl[204].w[9]"  1;
	setAttr ".wl[205].w[9]"  1;
	setAttr ".wl[206].w[9]"  1;
	setAttr ".wl[207].w[9]"  1;
	setAttr ".wl[208].w[9]"  1;
	setAttr ".wl[209].w[9]"  1;
	setAttr ".wl[210].w[9]"  1;
	setAttr ".wl[211].w[9]"  1;
	setAttr ".wl[212].w[9]"  1;
	setAttr ".wl[213].w[9]"  1;
	setAttr ".wl[214].w[9]"  1;
	setAttr ".wl[215].w[9]"  1;
	setAttr ".wl[216].w[9]"  1;
	setAttr ".wl[217].w[9]"  1;
	setAttr ".wl[218].w[9]"  1;
	setAttr ".wl[219].w[9]"  1;
	setAttr ".wl[220].w[9]"  1;
	setAttr ".wl[221].w[9]"  1;
	setAttr ".wl[222].w[9]"  1;
	setAttr ".wl[223].w[9]"  1;
	setAttr ".wl[224].w[9]"  1;
	setAttr ".wl[225].w[9]"  1;
	setAttr ".wl[226].w[9]"  1;
	setAttr ".wl[227].w[9]"  1;
	setAttr ".wl[228].w[9]"  1;
	setAttr ".wl[229].w[9]"  1;
	setAttr ".wl[230].w[9]"  1;
	setAttr ".wl[231].w[9]"  1;
	setAttr ".wl[232].w[9]"  1;
	setAttr ".wl[233].w[9]"  1;
	setAttr ".wl[234].w[9]"  1;
	setAttr ".wl[235].w[9]"  1;
	setAttr ".wl[236].w[9]"  1;
	setAttr ".wl[237].w[9]"  1;
	setAttr ".wl[238].w[9]"  1;
	setAttr ".wl[239].w[9]"  1;
	setAttr -s 2 ".wl[240].w[9:10]"  0.99877974162781125 0.0012202583721887133;
	setAttr ".wl[241].w[9]"  1;
	setAttr ".wl[242].w[9]"  1;
	setAttr ".wl[243].w[9]"  1;
	setAttr ".wl[244].w[9]"  1;
	setAttr ".wl[245].w[9]"  1;
	setAttr ".wl[246].w[9]"  1;
	setAttr ".wl[247].w[9]"  1;
	setAttr ".wl[248].w[9]"  1;
	setAttr ".wl[249].w[9]"  1;
	setAttr ".wl[250].w[9]"  1;
	setAttr ".wl[251].w[9]"  1;
	setAttr ".wl[252].w[9]"  1;
	setAttr ".wl[253].w[9]"  1;
	setAttr ".wl[254].w[9]"  1;
	setAttr ".wl[255].w[9]"  1;
	setAttr ".wl[256].w[9]"  1;
	setAttr ".wl[257].w[9]"  1;
	setAttr ".wl[258].w[9]"  1;
	setAttr ".wl[259].w[9]"  1;
	setAttr ".wl[260].w[9]"  1;
	setAttr ".wl[261].w[9]"  1;
	setAttr ".wl[262].w[9]"  1;
	setAttr ".wl[263].w[9]"  1;
	setAttr ".wl[264].w[9]"  1;
	setAttr ".wl[265].w[9]"  1;
	setAttr ".wl[266].w[9]"  1;
	setAttr ".wl[267].w[9]"  1;
	setAttr ".wl[268].w[9]"  1;
	setAttr ".wl[269].w[9]"  1;
	setAttr ".wl[270].w[9]"  1;
	setAttr ".wl[271].w[9]"  1;
	setAttr ".wl[272].w[9]"  1;
	setAttr ".wl[273].w[9]"  1;
	setAttr ".wl[274].w[9]"  1;
	setAttr ".wl[275].w[9]"  1;
	setAttr ".wl[276].w[9]"  1;
	setAttr ".wl[277].w[9]"  1;
	setAttr ".wl[278].w[9]"  1;
	setAttr ".wl[279].w[9]"  1;
	setAttr ".wl[280].w[9]"  1;
	setAttr ".wl[281].w[9]"  1;
	setAttr ".wl[282].w[9]"  1;
	setAttr ".wl[283].w[9]"  1;
	setAttr ".wl[284].w[9]"  1;
	setAttr ".wl[285].w[9]"  1;
	setAttr ".wl[286].w[9]"  1;
	setAttr ".wl[287].w[9]"  1;
	setAttr ".wl[288].w[9]"  1;
	setAttr ".wl[289].w[9]"  1;
	setAttr ".wl[290].w[9]"  1;
	setAttr ".wl[291].w[9]"  1;
	setAttr -s 3 ".wl[292].w";
	setAttr ".wl[292].w[0]" 0.12052385782755413;
	setAttr ".wl[292].w[1]" 0.34408752341509402;
	setAttr ".wl[292].w[5]" 0.53538861875735189;
	setAttr -s 3 ".wl[293].w[0:2]"  0.22891703708974523 0.71278296322615942 
		0.058299999684095383;
	setAttr -s 3 ".wl[294].w";
	setAttr ".wl[294].w[0]" 0.13171982247775807;
	setAttr ".wl[294].w[8]" 0.63925050992335197;
	setAttr ".wl[294].w[15]" 0.22902966759889007;
	setAttr -s 3 ".wl[295].w";
	setAttr ".wl[295].w[0]" 0.11421762913332041;
	setAttr ".wl[295].w[8]" 0.65425590225873775;
	setAttr ".wl[295].w[11]" 0.23152646860794199;
	setAttr -s 3 ".wl[296].w";
	setAttr ".wl[296].w[0]" 0.12238635187401997;
	setAttr ".wl[296].w[8]" 0.63456149433645281;
	setAttr ".wl[296].w[15]" 0.24305215378952724;
	setAttr -s 2 ".wl[297].w";
	setAttr ".wl[297].w[8]" 0.70470263082861384;
	setAttr ".wl[297].w[11]" 0.29529736917138621;
	setAttr -s 3 ".wl[298].w";
	setAttr ".wl[298].w[0]" 0.11567613019476537;
	setAttr ".wl[298].w[1]" 0.33498025535684772;
	setAttr ".wl[298].w[5]" 0.54934361444838697;
	setAttr -s 3 ".wl[299].w[0:2]"  0.20426803726202536 0.73743196305387926 
		0.058299999684095383;
	setAttr -s 2 ".wl[300].w";
	setAttr ".wl[300].w[0]" 0.48431310932971833;
	setAttr ".wl[300].w[8]" 0.51568689067028173;
	setAttr -s 2 ".wl[301].w";
	setAttr ".wl[301].w[0]" 0.45618279671426204;
	setAttr ".wl[301].w[8]" 0.5438172032857379;
	setAttr -s 2 ".wl[302].w[0:1]"  0.4494439576737087 0.5505560423262913;
	setAttr -s 3 ".wl[303].w[0:2]"  0.42478057651963752 0.5169194237962671 
		0.058299999684095383;
	setAttr -s 2 ".wl[304].w";
	setAttr ".wl[304].w[0]" 0.30226310421231228;
	setAttr ".wl[304].w[8]" 0.69773689578768772;
	setAttr -s 2 ".wl[305].w";
	setAttr ".wl[305].w[0]" 0.27011937930283053;
	setAttr ".wl[305].w[8]" 0.72988062069716941;
	setAttr -s 3 ".wl[306].w";
	setAttr ".wl[306].w[0]" 0.35760891446331983;
	setAttr ".wl[306].w[1]" 0.44952691199901862;
	setAttr ".wl[306].w[5]" 0.19286417353766167;
	setAttr -s 3 ".wl[307].w";
	setAttr ".wl[307].w[0]" 0.37693120396156582;
	setAttr ".wl[307].w[1]" 0.43009259161414848;
	setAttr ".wl[307].w[5]" 0.19297620442428579;
	setAttr -s 3 ".wl[308].w";
	setAttr ".wl[308].w[0]" 0.25380894998471065;
	setAttr ".wl[308].w[8]" 0.61967040661378081;
	setAttr ".wl[308].w[15]" 0.12652064340150865;
	setAttr -s 3 ".wl[309].w";
	setAttr ".wl[309].w[0]" 0.2240170368745589;
	setAttr ".wl[309].w[8]" 0.62755125895220931;
	setAttr ".wl[309].w[15]" 0.14843170417323184;
	setAttr -s 3 ".wl[310].w";
	setAttr ".wl[310].w[0]" 0.23534320455362914;
	setAttr ".wl[310].w[1]" 0.3635187751224489;
	setAttr ".wl[310].w[5]" 0.40113802032392204;
	setAttr -s 3 ".wl[311].w";
	setAttr ".wl[311].w[0]" 0.26565594605283327;
	setAttr ".wl[311].w[1]" 0.34023113637165914;
	setAttr ".wl[311].w[5]" 0.39411291757550765;
	setAttr -s 3 ".wl[312].w";
	setAttr ".wl[312].w[0]" 0.21225614493724687;
	setAttr ".wl[312].w[8]" 0.65301439792005189;
	setAttr ".wl[312].w[11]" 0.13472945714270118;
	setAttr -s 3 ".wl[313].w";
	setAttr ".wl[313].w[0]" 0.21421121444544469;
	setAttr ".wl[313].w[8]" 0.63205068358857464;
	setAttr ".wl[313].w[11]" 0.15373810196598064;
	setAttr -s 3 ".wl[314].w[0:2]"  0.33515154500473504 0.60654845531116952 
		0.058299999684095383;
	setAttr -s 3 ".wl[315].w[0:2]"  0.34452338851327524 0.59717661180262938 
		0.058299999684095383;
	setAttr -s 2 ".wl[316].w";
	setAttr ".wl[316].w[0]" 0.27369467984558343;
	setAttr ".wl[316].w[8]" 0.72630532015441662;
	setAttr -s 2 ".wl[317].w";
	setAttr ".wl[317].w[0]" 0.26284948721735191;
	setAttr ".wl[317].w[8]" 0.73715051278264809;
	setAttr -s 3 ".wl[318].w[0:2]"  0.39753618618646619 0.54416381412943848 
		0.058299999684095383;
	setAttr -s 3 ".wl[319].w[0:2]"  0.39034076700705556 0.55135923330884906 
		0.058299999684095383;
	setAttr -s 3 ".wl[320].w";
	setAttr ".wl[320].w[8]" 0.6955756152663406;
	setAttr ".wl[320].w[15]" 0.3028908537318904;
	setAttr ".wl[320].w[16]" 0.0015335310017690063;
	setAttr -s 3 ".wl[321].w";
	setAttr ".wl[321].w[1]" 0.30044768843294367;
	setAttr ".wl[321].w[5]" 0.64102155223865098;
	setAttr ".wl[321].w[6]" 0.058530759328405284;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[0]" 0.25646308707138965;
	setAttr ".wl[322].w[1]" 0.48822847727449464;
	setAttr ".wl[322].w[5]" 0.2553084356541156;
	setAttr -s 3 ".wl[323].w";
	setAttr ".wl[323].w[0]" 0.3340603824600395;
	setAttr ".wl[323].w[1]" 0.58555933365220125;
	setAttr ".wl[323].w[5]" 0.08038028388775921;
	setAttr -s 3 ".wl[324].w[0:2]"  0.22315382796338362 0.5050298426505293 
		0.27181632938608702;
	setAttr -s 3 ".wl[325].w[1:3]"  0.82784450508091711 0.058299999684095383 
		0.11385549523498756;
	setAttr -s 2 ".wl[326].w";
	setAttr ".wl[326].w[8]" 0.65155616673010508;
	setAttr ".wl[326].w[11]" 0.34844383326989486;
	setAttr -s 2 ".wl[327].w";
	setAttr ".wl[327].w[8]" 0.81201442611393948;
	setAttr ".wl[327].w[11]" 0.18798557388606055;
	setAttr -s 2 ".wl[328].w";
	setAttr ".wl[328].w[0]" 0.090679021478183922;
	setAttr ".wl[328].w[8]" 0.90932097852181604;
	setAttr -s 2 ".wl[329].w";
	setAttr ".wl[329].w[0]" 0.17416286589442037;
	setAttr ".wl[329].w[8]" 0.82583713410557957;
	setAttr -s 2 ".wl[330].w";
	setAttr ".wl[330].w[0]" 0.10493763561639793;
	setAttr ".wl[330].w[8]" 0.89506236438360209;
	setAttr -s 2 ".wl[331].w";
	setAttr ".wl[331].w[8]" 0.85623256057795316;
	setAttr ".wl[331].w[15]" 0.14376743942204689;
	setAttr -s 3 ".wl[332].w";
	setAttr ".wl[332].w[8]" 0.68607531908404185;
	setAttr ".wl[332].w[15]" 0.31256007401768016;
	setAttr ".wl[332].w[16]" 0.001364606898277998;
	setAttr -s 3 ".wl[333].w";
	setAttr ".wl[333].w[1]" 0.35403261066249914;
	setAttr ".wl[333].w[5]" 0.60086887450648818;
	setAttr ".wl[333].w[6]" 0.045098514831012827;
	setAttr -s 3 ".wl[334].w";
	setAttr ".wl[334].w[0]" 0.25463214694717484;
	setAttr ".wl[334].w[1]" 0.47020486673093015;
	setAttr ".wl[334].w[5]" 0.27516298632189506;
	setAttr -s 3 ".wl[335].w[0:2]"  0.33130525090302454 0.58799877243360432 
		0.080695976663371027;
	setAttr -s 3 ".wl[336].w[0:2]"  0.22746057943188361 0.5210375044498875 
		0.25150191611822897;
	setAttr -s 3 ".wl[337].w[1:3]"  0.81187308008917569 0.058299999684095383 
		0.1298269202267289;
	setAttr -s 2 ".wl[338].w";
	setAttr ".wl[338].w[8]" 0.70575520506911404;
	setAttr ".wl[338].w[11]" 0.29424479493088596;
	setAttr -s 2 ".wl[339].w";
	setAttr ".wl[339].w[8]" 0.85820071552550292;
	setAttr ".wl[339].w[11]" 0.14179928447449711;
	setAttr -s 2 ".wl[340].w";
	setAttr ".wl[340].w[0]" 0.10720856860087555;
	setAttr ".wl[340].w[8]" 0.89279143139912454;
	setAttr -s 2 ".wl[341].w";
	setAttr ".wl[341].w[0]" 0.19038570811962441;
	setAttr ".wl[341].w[8]" 0.80961429188037559;
	setAttr -s 2 ".wl[342].w";
	setAttr ".wl[342].w[0]" 0.10412870605143486;
	setAttr ".wl[342].w[8]" 0.89587129394856513;
	setAttr -s 2 ".wl[343].w";
	setAttr ".wl[343].w[8]" 0.82643324973147958;
	setAttr ".wl[343].w[15]" 0.1735667502685205;
	setAttr -s 2 ".wl[344].w";
	setAttr ".wl[344].w[8]" 0.64141239215525814;
	setAttr ".wl[344].w[11]" 0.35858760784474186;
	setAttr -s 3 ".wl[345].w";
	setAttr ".wl[345].w[0]" 0.38945863491251742;
	setAttr ".wl[345].w[8]" 0.44576662808983331;
	setAttr ".wl[345].w[11]" 0.16477473699764936;
	setAttr -s 3 ".wl[346].w";
	setAttr ".wl[346].w[0]" 0.49809137330217851;
	setAttr ".wl[346].w[8]" 0.42795110979682438;
	setAttr ".wl[346].w[11]" 0.073957516900996986;
	setAttr -s 2 ".wl[347].w";
	setAttr ".wl[347].w[0]" 0.75901053506715022;
	setAttr ".wl[347].w[8]" 0.24098946493284981;
	setAttr -s 3 ".wl[348].w";
	setAttr ".wl[348].w[0]" 0.55406624193044784;
	setAttr ".wl[348].w[8]" 0.38735216911086423;
	setAttr ".wl[348].w[15]" 0.058581588958687966;
	setAttr -s 3 ".wl[349].w";
	setAttr ".wl[349].w[0]" 0.43485121399207544;
	setAttr ".wl[349].w[8]" 0.41522563940658347;
	setAttr ".wl[349].w[15]" 0.14992314660134096;
	setAttr -s 3 ".wl[350].w";
	setAttr ".wl[350].w[0]" 0.26235812176772377;
	setAttr ".wl[350].w[8]" 0.47061794405559643;
	setAttr ".wl[350].w[15]" 0.2670239341766798;
	setAttr -s 3 ".wl[351].w";
	setAttr ".wl[351].w[8]" 0.59569663145456953;
	setAttr ".wl[351].w[15]" 0.40131556209299224;
	setAttr ".wl[351].w[16]" 0.0029878064524382353;
	setAttr -s 3 ".wl[352].w";
	setAttr ".wl[352].w[8]" 0.56814151842004246;
	setAttr ".wl[352].w[15]" 0.4283981737415623;
	setAttr ".wl[352].w[16]" 0.0034603078383952379;
	setAttr -s 3 ".wl[353].w";
	setAttr ".wl[353].w[0]" 0.27621486513068116;
	setAttr ".wl[353].w[8]" 0.44425204271840663;
	setAttr ".wl[353].w[15]" 0.27953309215091221;
	setAttr -s 3 ".wl[354].w";
	setAttr ".wl[354].w[0]" 0.40626051387545148;
	setAttr ".wl[354].w[8]" 0.41247532175345603;
	setAttr ".wl[354].w[15]" 0.18126416437109255;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[0]" 0.50772193012893208;
	setAttr ".wl[355].w[8]" 0.41038288378258714;
	setAttr ".wl[355].w[15]" 0.081895186088480801;
	setAttr -s 2 ".wl[356].w";
	setAttr ".wl[356].w[0]" 0.74325426313245424;
	setAttr ".wl[356].w[8]" 0.25674573686754582;
	setAttr -s 3 ".wl[357].w";
	setAttr ".wl[357].w[0]" 0.49730386573728053;
	setAttr ".wl[357].w[8]" 0.42267277539737957;
	setAttr ".wl[357].w[11]" 0.080023358865339816;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[0]" 0.39546023157286769;
	setAttr ".wl[358].w[8]" 0.42145640866610989;
	setAttr ".wl[358].w[11]" 0.18308335976102244;
	setAttr -s 2 ".wl[359].w";
	setAttr ".wl[359].w[8]" 0.59817567184102538;
	setAttr ".wl[359].w[11]" 0.40182432815897456;
	setAttr -s 2 ".wl[360].w";
	setAttr ".wl[360].w[8]" 0.54880657787274933;
	setAttr ".wl[360].w[11]" 0.45119342212725067;
	setAttr -s 2 ".wl[361].w";
	setAttr ".wl[361].w[8]" 0.58875003069625198;
	setAttr ".wl[361].w[11]" 0.41124996930374796;
	setAttr -s 2 ".wl[362].w";
	setAttr ".wl[362].w[0]" 0.66472419400040372;
	setAttr ".wl[362].w[8]" 0.33527580599959628;
	setAttr -s 2 ".wl[363].w";
	setAttr ".wl[363].w[0]" 0.7157636444583958;
	setAttr ".wl[363].w[8]" 0.28423635554160426;
	setAttr -s 3 ".wl[364].w";
	setAttr ".wl[364].w[0]" 0.71145515387137792;
	setAttr ".wl[364].w[1]" 0.11235138463695642;
	setAttr ".wl[364].w[8]" 0.17619346149166573;
	setAttr -s 3 ".wl[365].w";
	setAttr ".wl[365].w[0]" 0.79016103216821165;
	setAttr ".wl[365].w[1]" 0.15051934486446997;
	setAttr ".wl[365].w[8]" 0.059319622967318408;
	setAttr -s 3 ".wl[366].w";
	setAttr ".wl[366].w[0]" 0.76043882429062204;
	setAttr ".wl[366].w[1]" 0.087409731184755854;
	setAttr ".wl[366].w[8]" 0.15215144452462212;
	setAttr -s 3 ".wl[367].w";
	setAttr ".wl[367].w[0]" 0.62691024598823797;
	setAttr ".wl[367].w[8]" 0.2401093627657637;
	setAttr ".wl[367].w[15]" 0.13298039124599828;
	setAttr -s 3 ".wl[368].w";
	setAttr ".wl[368].w[0]" 0.61710748375092128;
	setAttr ".wl[368].w[8]" 0.38011300986934032;
	setAttr ".wl[368].w[16]" 0.0027795063797384501;
	setAttr -s 3 ".wl[369].w";
	setAttr ".wl[369].w[1]" 0.49418123351080218;
	setAttr ".wl[369].w[8]" 0.5016575259562035;
	setAttr ".wl[369].w[16]" 0.0041612405329942703;
	setAttr -s 2 ".wl[370].w";
	setAttr ".wl[370].w[1]" 0.99389573431474099;
	setAttr ".wl[370].w[16]" 0.00610426568525896;
	setAttr -s 3 ".wl[371].w";
	setAttr ".wl[371].w[0]" 0.67967791384195198;
	setAttr ".wl[371].w[8]" 0.31773984111736303;
	setAttr ".wl[371].w[16]" 0.0025822450406849384;
	setAttr -s 3 ".wl[372].w";
	setAttr ".wl[372].w[0]" 0.62443709256582636;
	setAttr ".wl[372].w[8]" 0.22598269482404024;
	setAttr ".wl[372].w[15]" 0.14958021261013343;
	setAttr -s 3 ".wl[373].w";
	setAttr ".wl[373].w[0]" 0.72995069169996363;
	setAttr ".wl[373].w[1]" 0.10852422603557742;
	setAttr ".wl[373].w[8]" 0.16152508226445905;
	setAttr -s 3 ".wl[374].w";
	setAttr ".wl[374].w[0]" 0.77913314371736186;
	setAttr ".wl[374].w[1]" 0.15939225610986815;
	setAttr ".wl[374].w[8]" 0.061474600172770039;
	setAttr -s 3 ".wl[375].w";
	setAttr ".wl[375].w[0]" 0.71085967331448774;
	setAttr ".wl[375].w[1]" 0.12099540328913895;
	setAttr ".wl[375].w[8]" 0.16814492339637338;
	setAttr -s 2 ".wl[376].w";
	setAttr ".wl[376].w[0]" 0.72618610699287134;
	setAttr ".wl[376].w[8]" 0.27381389300712872;
	setAttr -s 2 ".wl[377].w[0:1]"  0.64547614433822387 0.35452385566177613;
	setAttr ".wl[378].w[1]"  1;
	setAttr ".wl[379].w[1]"  1;
	setAttr -s 2 ".wl[380].w[0:1]"  0.34699198561652622 0.65300801438347389;
	setAttr -s 2 ".wl[381].w[0:1]"  0.59442345313816092 0.40557654686183919;
	setAttr -s 2 ".wl[382].w[0:1]"  0.63462435996122735 0.36537564003877276;
	setAttr -s 2 ".wl[383].w[0:1]"  0.61979036316977809 0.38020963683022196;
	setAttr -s 2 ".wl[384].w[0:1]"  0.70046520422256175 0.29953479577743825;
	setAttr -s 2 ".wl[385].w[0:1]"  0.63744178511634975 0.36255821488365031;
	setAttr -s 2 ".wl[386].w[0:1]"  0.35245098242657968 0.64754901757342043;
	setAttr -s 2 ".wl[387].w";
	setAttr ".wl[387].w[1]" 0.9972836710225309;
	setAttr ".wl[387].w[16]" 0.002716328977469117;
	setAttr -s 2 ".wl[388].w[0:1]"  0.20271230174416041 0.79728769825583956;
	setAttr -s 2 ".wl[389].w[0:1]"  0.3865891870184871 0.6134108129815129;
	setAttr -s 2 ".wl[390].w[0:1]"  0.60886050430676164 0.39113949569323841;
	setAttr -s 2 ".wl[391].w[0:1]"  0.65886525963997367 0.34113474036002628;
	setAttr -s 2 ".wl[392].w[0:1]"  0.61383068226711168 0.38616931773288832;
	setAttr -s 2 ".wl[393].w[0:1]"  0.637999143886811 0.36200085611318894;
	setAttr -s 2 ".wl[394].w[0:1]"  0.56311237862640617 0.43688762137359383;
	setAttr -s 2 ".wl[395].w[0:1]"  0.32055461571904698 0.67944538428095302;
	setAttr ".wl[396].w[1]"  1;
	setAttr ".wl[397].w[1]"  1;
	setAttr -s 3 ".wl[398].w[5:7]"  0.033106286001699813 0.59803352170242563 
		0.36886019229587458;
	setAttr -s 3 ".wl[399].w[5:7]"  0.015937616795794356 0.56380984193398098 
		0.4202525412702246;
	setAttr -s 3 ".wl[400].w[5:7]"  0.062872175250766285 0.59879196426308423 
		0.33833586048614955;
	setAttr -s 3 ".wl[401].w[5:7]"  0.049330141825058807 0.6046412011341662 
		0.34602865704077518;
	setAttr -s 3 ".wl[402].w[5:7]"  0.046367135662821572 0.57994479710855174 
		0.37368806722862674;
	setAttr -s 3 ".wl[403].w[5:7]"  0.088817297071207502 0.59529087340822739 
		0.31589182952056521;
	setAttr -s 3 ".wl[404].w[5:7]"  0.040268912905053848 0.60503984288217905 
		0.35469124421276721;
	setAttr -s 3 ".wl[405].w[5:7]"  0.055724181611076298 0.59961755396771221 
		0.3446582644212115;
	setAttr -s 3 ".wl[406].w[5:7]"  0.012239627528818122 0.56747275479408998 
		0.42028761767709177;
	setAttr -s 3 ".wl[407].w[5:7]"  0.02082304013052504 0.59665870971475854 
		0.38251825015471641;
	setAttr -s 3 ".wl[408].w[5:7]"  0.054328940603104475 0.5895465298173963 
		0.35612452957949908;
	setAttr -s 3 ".wl[409].w[5:7]"  0.084521621429407057 0.60711799236291841 
		0.30836038620767436;
	setAttr -s 3 ".wl[410].w[2:4]"  0.0098700515902565948 0.5668430922633515 
		0.42328685614639194;
	setAttr -s 3 ".wl[411].w[2:4]"  0.053900176568740549 0.60671863356433808 
		0.33938118986692123;
	setAttr -s 3 ".wl[412].w[2:4]"  0.020221023898843584 0.59705475563220856 
		0.38272422046894788;
	setAttr -s 3 ".wl[413].w[2:4]"  0.038449992547258498 0.61272900146016429 
		0.3488210059925772;
	setAttr -s 3 ".wl[414].w[2:4]"  0.040465715338218917 0.59988845870893426 
		0.35964582595284683;
	setAttr -s 3 ".wl[415].w[2:4]"  0.076893875967939784 0.60978237561475135 
		0.31332374841730887;
	setAttr -s 3 ".wl[416].w[2:4]"  0.028421616861801915 0.59852740734851273 
		0.37305097578968532;
	setAttr -s 3 ".wl[417].w[2:4]"  0.0090822497053076982 0.56875584194822937 
		0.42216190834646283;
	setAttr -s 3 ".wl[418].w[2:4]"  0.065652000036544728 0.61870649887720774 
		0.31564150108624767;
	setAttr -s 3 ".wl[419].w[2:4]"  0.048727431165938986 0.61014686764354176 
		0.34112570119051927;
	setAttr -s 3 ".wl[420].w[2:4]"  0.029469875049056748 0.60774459037778572 
		0.36278553457315749;
	setAttr -s 3 ".wl[421].w[2:4]"  0.041824039487649775 0.61629701552996896 
		0.34187894498238119;
	setAttr -s 3 ".wl[422].w[5:7]"  0.29638118456800694 0.57453185792705519 
		0.12908695750493779;
	setAttr -s 3 ".wl[423].w[5:7]"  0.16205116086204419 0.61366942658364265 
		0.22427941255431313;
	setAttr -s 3 ".wl[424].w[5:7]"  0.21529769760287151 0.61179363531571651 
		0.17290866708141189;
	setAttr -s 3 ".wl[425].w[5:7]"  0.29296450728756424 0.58478032306676186 
		0.12225516964567404;
	setAttr -s 3 ".wl[426].w[5:7]"  0.21971396973486285 0.59806657753762937 
		0.18221945272750784;
	setAttr -s 3 ".wl[427].w[5:7]"  0.19123395108521987 0.60873367096986286 
		0.20003237794491718;
	setAttr -s 3 ".wl[428].w[5:7]"  0.12064105957483788 0.63281949062034137 
		0.24653944980482076;
	setAttr -s 3 ".wl[429].w[5:7]"  0.18481798166184843 0.61646673245424322 
		0.19871528588390841;
	setAttr -s 3 ".wl[430].w[5:7]"  0.20712698045712835 0.60796733305257866 
		0.18490568649029296;
	setAttr -s 3 ".wl[431].w[5:7]"  0.23341639140677245 0.59200294495545391 
		0.1745806636377738;
	setAttr -s 3 ".wl[432].w";
	setAttr ".wl[432].w[1]" 0.096464756779475178;
	setAttr ".wl[432].w[5]" 0.5250687031304242;
	setAttr ".wl[432].w[6]" 0.37846654009010045;
	setAttr -s 3 ".wl[433].w[5:7]"  0.40925343256118113 0.52474065997671293 
		0.066005907462105995;
	setAttr -s 3 ".wl[434].w";
	setAttr ".wl[434].w[1]" 0.062272465051657351;
	setAttr ".wl[434].w[5]" 0.46940585487964981;
	setAttr ".wl[434].w[6]" 0.46832168006869274;
	setAttr -s 3 ".wl[435].w";
	setAttr ".wl[435].w[1]" 0.1131709226526962;
	setAttr ".wl[435].w[5]" 0.51108114207390976;
	setAttr ".wl[435].w[6]" 0.37574793527339417;
	setAttr -s 3 ".wl[436].w";
	setAttr ".wl[436].w[1]" 0.060498503463097562;
	setAttr ".wl[436].w[5]" 0.48999124263275129;
	setAttr ".wl[436].w[6]" 0.44951025390415122;
	setAttr -s 3 ".wl[437].w[5:7]"  0.48428306702599039 0.45411931559016983 
		0.061597617383839912;
	setAttr -s 3 ".wl[438].w[5:7]"  0.39599720328916194 0.51765378690116182 
		0.086349009809676344;
	setAttr -s 3 ".wl[439].w[5:7]"  0.48327167258154785 0.45921110732398784 
		0.057517220094464402;
	setAttr -s 3 ".wl[440].w[5:7]"  0.49301603073260231 0.45383749229709852 
		0.0531464769702992;
	setAttr -s 3 ".wl[441].w";
	setAttr ".wl[441].w[1]" 0.056589877640246686;
	setAttr ".wl[441].w[5]" 0.50344118588097153;
	setAttr ".wl[441].w[6]" 0.43996893647878188;
	setAttr -s 3 ".wl[442].w";
	setAttr ".wl[442].w[0]" 0.16999770555146679;
	setAttr ".wl[442].w[1]" 0.32583132853202501;
	setAttr ".wl[442].w[5]" 0.50417096591650812;
	setAttr -s 3 ".wl[443].w";
	setAttr ".wl[443].w[1]" 0.19396958527967978;
	setAttr ".wl[443].w[5]" 0.53893681293754048;
	setAttr ".wl[443].w[6]" 0.26709360178277974;
	setAttr -s 3 ".wl[444].w";
	setAttr ".wl[444].w[1]" 0.28099760764183457;
	setAttr ".wl[444].w[5]" 0.51289162567065893;
	setAttr ".wl[444].w[6]" 0.20611076668750658;
	setAttr -s 3 ".wl[445].w";
	setAttr ".wl[445].w[0]" 0.16201651201250791;
	setAttr ".wl[445].w[1]" 0.35324396277352221;
	setAttr ".wl[445].w[5]" 0.4847395252139699;
	setAttr -s 3 ".wl[446].w";
	setAttr ".wl[446].w[1]" 0.225637974568762;
	setAttr ".wl[446].w[5]" 0.57584927282293186;
	setAttr ".wl[446].w[6]" 0.19851275260830631;
	setAttr -s 3 ".wl[447].w";
	setAttr ".wl[447].w[1]" 0.1647589565189688;
	setAttr ".wl[447].w[5]" 0.63694631804026347;
	setAttr ".wl[447].w[6]" 0.19829472544076773;
	setAttr -s 3 ".wl[448].w";
	setAttr ".wl[448].w[1]" 0.097096201666038551;
	setAttr ".wl[448].w[5]" 0.65254707339033236;
	setAttr ".wl[448].w[6]" 0.25035672494362926;
	setAttr -s 3 ".wl[449].w";
	setAttr ".wl[449].w[1]" 0.14774257921666178;
	setAttr ".wl[449].w[5]" 0.65815327106087285;
	setAttr ".wl[449].w[6]" 0.19410414972246529;
	setAttr -s 3 ".wl[450].w";
	setAttr ".wl[450].w[1]" 0.17593457099033136;
	setAttr ".wl[450].w[5]" 0.62277318971723394;
	setAttr ".wl[450].w[6]" 0.20129223929243473;
	setAttr -s 3 ".wl[451].w";
	setAttr ".wl[451].w[1]" 0.21509566129545252;
	setAttr ".wl[451].w[5]" 0.58423752056541289;
	setAttr ".wl[451].w[6]" 0.20066681813913462;
	setAttr -s 3 ".wl[452].w[2:4]"  0.22116831027779829 0.60328704266204047 
		0.17554464706016124;
	setAttr -s 3 ".wl[453].w[2:4]"  0.18537868452874556 0.63408282162639129 
		0.18053849384486315;
	setAttr -s 3 ".wl[454].w[2:4]"  0.11252778108116403 0.65751482810310569 
		0.22995739081573038;
	setAttr -s 3 ".wl[455].w[2:4]"  0.17287410691133068 0.6466143828758989 
		0.1805115102127704;
	setAttr -s 3 ".wl[456].w[2:4]"  0.19356699197750726 0.62606868784475855 
		0.18036432017773416;
	setAttr -s 3 ".wl[457].w[2:4]"  0.20557319852079636 0.62040273317870098 
		0.17402406830050274;
	setAttr -s 3 ".wl[458].w[2:4]"  0.26807154734452782 0.60562264863937854 
		0.1263058040160937;
	setAttr -s 3 ".wl[459].w[2:4]"  0.13943915352535172 0.63856077127144573 
		0.22200007520320261;
	setAttr -s 3 ".wl[460].w[2:4]"  0.20676774104115359 0.61613204700086244 
		0.17710021195798381;
	setAttr -s 3 ".wl[461].w[2:4]"  0.29670103497473604 0.57716668443118557 
		0.12613228059407822;
	setAttr -s 3 ".wl[462].w[1:3]"  0.056872416492970541 0.50359072074701194 
		0.43953686276001752;
	setAttr -s 3 ".wl[463].w[2:4]"  0.48153694308321399 0.46823008087343182 
		0.050232976043354319;
	setAttr -s 3 ".wl[464].w[2:4]"  0.38149162600190167 0.55146246915100461 
		0.067045904847093857;
	setAttr -s 3 ".wl[465].w[2:4]"  0.47402570382737796 0.47746385998508273 
		0.048510436187539349;
	setAttr -s 3 ".wl[466].w[2:4]"  0.48089903570258857 0.46635543316438116 
		0.052745531133030377;
	setAttr -s 3 ".wl[467].w[1:3]"  0.063118691327681442 0.47355749985491197 
		0.46332380881740648;
	setAttr -s 3 ".wl[468].w[1:3]"  0.10943199626052756 0.50652563056320887 
		0.38404237317626366;
	setAttr -s 3 ".wl[469].w[2:4]"  0.40716701559440616 0.52652638417713526 
		0.066306600228458579;
	setAttr -s 3 ".wl[470].w[1:3]"  0.074258742753763332 0.47785295928730154 
		0.4478882979589352;
	setAttr -s 3 ".wl[471].w[1:3]"  0.11704760509065867 0.52510111775380441 
		0.35785127715553688;
	setAttr -s 3 ".wl[472].w[1:3]"  0.2190053632975574 0.58924911893894893 
		0.19174551776349366;
	setAttr -s 3 ".wl[473].w[1:3]"  0.16914377027578464 0.63357548930309415 
		0.19728074042112134;
	setAttr -s 3 ".wl[474].w[1:3]"  0.10551465739574598 0.63637217009086633 
		0.25811317251338778;
	setAttr -s 3 ".wl[475].w[1:3]"  0.15270665556792387 0.65448044488577617 
		0.19281289954629988;
	setAttr -s 3 ".wl[476].w[1:3]"  0.17987863513109698 0.6170689127911877 
		0.20305245207771519;
	setAttr -s 3 ".wl[477].w[1:3]"  0.23256690006746267 0.5642542053614541 
		0.20317889457108318;
	setAttr -s 3 ".wl[478].w[1:3]"  0.35818671303705002 0.49505990270969896 
		0.14675338425325099;
	setAttr -s 3 ".wl[479].w[1:3]"  0.21809390680362065 0.53244042852367734 
		0.24946566467270215;
	setAttr -s 3 ".wl[480].w[1:3]"  0.30854668021460258 0.50040342691828876 
		0.19104989286710866;
	setAttr -s 3 ".wl[481].w[1:3]"  0.36490343046238605 0.49206237993708901 
		0.14303418960052483;
	setAttr -s 3 ".wl[482].w";
	setAttr ".wl[482].w[8]" 0.18564485141531806;
	setAttr ".wl[482].w[11]" 0.37441640281115451;
	setAttr ".wl[482].w[12]" 0.43993874577352737;
	setAttr -s 3 ".wl[483].w";
	setAttr ".wl[483].w[8]" 0.061733066319075519;
	setAttr ".wl[483].w[11]" 0.35350326806554921;
	setAttr ".wl[483].w[12]" 0.58476366561537541;
	setAttr -s 3 ".wl[484].w";
	setAttr ".wl[484].w[8]" 0.007022307249232404;
	setAttr ".wl[484].w[11]" 0.33203374458172336;
	setAttr ".wl[484].w[12]" 0.66094394816904423;
	setAttr -s 3 ".wl[485].w";
	setAttr ".wl[485].w[8]" 0.0006272645604157715;
	setAttr ".wl[485].w[11]" 0.32304443926520099;
	setAttr ".wl[485].w[12]" 0.67632829617438317;
	setAttr -s 3 ".wl[486].w";
	setAttr ".wl[486].w[8]" 0.010655074902272585;
	setAttr ".wl[486].w[11]" 0.34697945935701585;
	setAttr ".wl[486].w[12]" 0.64236546574071152;
	setAttr -s 3 ".wl[487].w";
	setAttr ".wl[487].w[8]" 0.095359147886043244;
	setAttr ".wl[487].w[11]" 0.36566640660285549;
	setAttr ".wl[487].w[12]" 0.5389744455111013;
	setAttr -s 3 ".wl[488].w";
	setAttr ".wl[488].w[8]" 0.24789379444772452;
	setAttr ".wl[488].w[11]" 0.36575585266776406;
	setAttr ".wl[488].w[12]" 0.38635035288451136;
	setAttr -s 3 ".wl[489].w";
	setAttr ".wl[489].w[8]" 0.28799346972065248;
	setAttr ".wl[489].w[11]" 0.37456592712240716;
	setAttr ".wl[489].w[12]" 0.3374406031569403;
	setAttr -s 3 ".wl[490].w[12:14]"  1.1712753723544699e-005 0.97200409583697389 
		0.027984191409302497;
	setAttr -s 3 ".wl[491].w[12:14]"  1.990981077949726e-005 0.97203524595770119 
		0.027944844231519474;
	setAttr -s 3 ".wl[492].w[12:14]"  3.1281044394658442e-005 0.97392885812280827 
		0.026039860832796975;
	setAttr -s 3 ".wl[493].w[12:14]"  3.3768438673361937e-005 0.97709790344072456 
		0.022868328120602209;
	setAttr -s 3 ".wl[494].w[12:14]"  3.2944141758232745e-005 0.9781558496486944 
		0.021811206209547386;
	setAttr -s 3 ".wl[495].w[12:14]"  2.2964095034507081e-005 0.98029931912146651 
		0.019677716783498996;
	setAttr -s 3 ".wl[496].w[12:14]"  1.5269613405585453e-005 0.9823628958613817 
		0.017621834525212824;
	setAttr -s 3 ".wl[497].w[12:14]"  6.7712830589044771e-006 0.97323616643863697 
		0.02675706227830434;
	setAttr -s 3 ".wl[498].w[12:14]"  0.00429632159773415 0.98700892199355172 
		0.008694756408713953;
	setAttr -s 3 ".wl[499].w[12:14]"  0.0056536017920848468 0.98527996181653221 
		0.0090664363913829284;
	setAttr -s 3 ".wl[500].w[12:14]"  0.0061933675505061146 0.98345238076954089 
		0.010354251679953;
	setAttr -s 3 ".wl[501].w[12:14]"  0.0056799907418060656 0.98223307534093129 
		0.012086933917262567;
	setAttr -s 3 ".wl[502].w[12:14]"  0.0048718458779970124 0.98241426305572688 
		0.012713891066276146;
	setAttr -s 3 ".wl[503].w[12:14]"  0.0056686029958718485 0.9812605646414273 
		0.013070832362700695;
	setAttr -s 3 ".wl[504].w[12:14]"  0.0058307645150459664 0.98493148537472885 
		0.0092377501102251271;
	setAttr -s 3 ".wl[505].w[12:14]"  0.0041893543901998457 0.98905196522391503 
		0.0067586803858850708;
	setAttr -s 3 ".wl[506].w[12:14]"  0.052993292852995207 0.94559499094087296 
		0.001411716206131837;
	setAttr -s 3 ".wl[507].w[12:14]"  0.057312030164430393 0.9412694388763464 
		0.001418530959223122;
	setAttr -s 3 ".wl[508].w[12:14]"  0.056508341976503708 0.94167815875183403 
		0.0018134992716622462;
	setAttr -s 3 ".wl[509].w[12:14]"  0.052463672965540817 0.94555056731200449 
		0.001985759722454585;
	setAttr -s 3 ".wl[510].w[12:14]"  0.052185102082056206 0.94559752716905254 
		0.0022173707488913068;
	setAttr -s 3 ".wl[511].w[12:14]"  0.053742762756296837 0.94434845385034527 
		0.0019087833933578659;
	setAttr -s 3 ".wl[512].w[12:14]"  0.045670147006172244 0.9533080474695742 
		0.0010218055242533926;
	setAttr -s 3 ".wl[513].w[12:14]"  0.043875006716993646 0.95497324233557934 
		0.0011517509474270422;
	setAttr -s 3 ".wl[514].w[12:14]"  0.23561209969052371 0.76438557867891466 
		2.3216305616206047e-006;
	setAttr -s 3 ".wl[515].w[12:14]"  0.23295181350821786 0.76704660758184851 
		1.5789099338790533e-006;
	setAttr -s 3 ".wl[516].w[12:14]"  0.22697098469116175 0.77302680507981347 
		2.2102290248333143e-006;
	setAttr -s 3 ".wl[517].w[12:14]"  0.22186776738084768 0.77812891164915732 
		3.3209699950093768e-006;
	setAttr -s 3 ".wl[518].w[12:14]"  0.22055072278118398 0.7794471544054381 
		2.122813377727337e-006;
	setAttr -s 3 ".wl[519].w[12:14]"  0.20341821242548302 0.7965807341329092 
		1.0534416077217184e-006;
	setAttr -s 3 ".wl[520].w[12:14]"  0.19114132827704244 0.80885730685836099 
		1.3648645964855523e-006;
	setAttr -s 3 ".wl[521].w[12:14]"  0.21716212493421946 0.78283581284447168 
		2.0622213087733162e-006;
	setAttr -s 3 ".wl[522].w[11:13]"  0.00036919820746191304 0.7494597958597331 
		0.250171005932805;
	setAttr -s 3 ".wl[523].w[11:13]"  0.00039145799083861363 0.7462474350299142 
		0.25336110697924719;
	setAttr -s 3 ".wl[524].w[11:13]"  0.00056581049401884843 0.74801702494205802 
		0.2514171645639231;
	setAttr -s 3 ".wl[525].w[11:13]"  0.0005705040586409892 0.73970409768564294 
		0.25972539825571594;
	setAttr -s 3 ".wl[526].w[11:13]"  0.00035804072914758281 0.72423618832694792 
		0.27540577094390456;
	setAttr -s 3 ".wl[527].w[11:13]"  0.00026613159376038029 0.72292132379195972 
		0.27681254461427995;
	setAttr -s 3 ".wl[528].w[11:13]"  0.00031784418858619892 0.75187438308699084 
		0.24780777272442306;
	setAttr -s 3 ".wl[529].w[11:13]"  0.00038257932312295208 0.76137187240006665 
		0.23824554827681049;
	setAttr -s 3 ".wl[530].w[11:13]"  0.023899440367823824 0.90475132474445152 
		0.071349234887724697;
	setAttr -s 3 ".wl[531].w[11:13]"  0.023167934740602546 0.90866777185443148 
		0.068164293404965881;
	setAttr -s 3 ".wl[532].w[11:13]"  0.022471989636074313 0.90934555662415861 
		0.068182453739767238;
	setAttr -s 3 ".wl[533].w[11:13]"  0.021143689251690519 0.90740306194441978 
		0.071453248803889827;
	setAttr -s 3 ".wl[534].w[11:13]"  0.021479201389731879 0.90534703933673011 
		0.073173759273538003;
	setAttr -s 3 ".wl[535].w[11:13]"  0.022738863206741042 0.90824790370146158 
		0.069013233091797369;
	setAttr -s 3 ".wl[536].w[11:13]"  0.024012687075716611 0.91236200721063998 
		0.063625305713643276;
	setAttr -s 3 ".wl[537].w[11:13]"  0.02481646801661205 0.90730394140729664 
		0.067879590576091248;
	setAttr -s 3 ".wl[538].w";
	setAttr ".wl[538].w[8]" 0.068745883880047071;
	setAttr ".wl[538].w[11]" 0.14464677750157889;
	setAttr ".wl[538].w[12]" 0.78660733861837384;
	setAttr -s 3 ".wl[539].w";
	setAttr ".wl[539].w[8]" 0.013866704172620066;
	setAttr ".wl[539].w[11]" 0.13904422822782081;
	setAttr ".wl[539].w[12]" 0.84708906759955904;
	setAttr -s 3 ".wl[540].w[11:13]"  0.12926920062142974 0.86227685298985235 
		0.008453946388717935;
	setAttr -s 3 ".wl[541].w[11:13]"  0.12812117357035543 0.86362816260917585 
		0.0082506638204687486;
	setAttr -s 3 ".wl[542].w";
	setAttr ".wl[542].w[8]" 0.012838967478788859;
	setAttr ".wl[542].w[11]" 0.13718323732851212;
	setAttr ".wl[542].w[12]" 0.84997779519269889;
	setAttr -s 3 ".wl[543].w";
	setAttr ".wl[543].w[8]" 0.064108185451695471;
	setAttr ".wl[543].w[11]" 0.1437083032810216;
	setAttr ".wl[543].w[12]" 0.79218351126728292;
	setAttr -s 3 ".wl[544].w";
	setAttr ".wl[544].w[8]" 0.12153077965750306;
	setAttr ".wl[544].w[11]" 0.14843900465188223;
	setAttr ".wl[544].w[12]" 0.73003021569061477;
	setAttr -s 3 ".wl[545].w";
	setAttr ".wl[545].w[8]" 0.12548046594689971;
	setAttr ".wl[545].w[11]" 0.14877201502171472;
	setAttr ".wl[545].w[12]" 0.72574751903138568;
	setAttr -s 3 ".wl[546].w";
	setAttr ".wl[546].w[8]" 0.34632921934190247;
	setAttr ".wl[546].w[11]" 0.4951103463214484;
	setAttr ".wl[546].w[12]" 0.15856043433664924;
	setAttr -s 3 ".wl[547].w";
	setAttr ".wl[547].w[8]" 0.22782290663732083;
	setAttr ".wl[547].w[11]" 0.52971944336047128;
	setAttr ".wl[547].w[12]" 0.24245765000220787;
	setAttr -s 3 ".wl[548].w";
	setAttr ".wl[548].w[8]" 0.24206345829321385;
	setAttr ".wl[548].w[11]" 0.50439972018887469;
	setAttr ".wl[548].w[12]" 0.25353682151791129;
	setAttr -s 3 ".wl[549].w";
	setAttr ".wl[549].w[8]" 0.057292104406469951;
	setAttr ".wl[549].w[11]" 0.52043589052655048;
	setAttr ".wl[549].w[12]" 0.42227200506697943;
	setAttr -s 3 ".wl[550].w";
	setAttr ".wl[550].w[8]" 0.002623320324353843;
	setAttr ".wl[550].w[11]" 0.47167298213706166;
	setAttr ".wl[550].w[12]" 0.52570369753858459;
	setAttr -s 3 ".wl[551].w";
	setAttr ".wl[551].w[8]" 0.00067602380245009399;
	setAttr ".wl[551].w[11]" 0.44297622440180318;
	setAttr ".wl[551].w[12]" 0.55634775179574669;
	setAttr -s 3 ".wl[552].w";
	setAttr ".wl[552].w[8]" 0.014249758543366473;
	setAttr ".wl[552].w[11]" 0.46146779451461428;
	setAttr ".wl[552].w[12]" 0.52428244694201931;
	setAttr -s 3 ".wl[553].w";
	setAttr ".wl[553].w[8]" 0.085698729844195659;
	setAttr ".wl[553].w[11]" 0.50183904075324304;
	setAttr ".wl[553].w[12]" 0.41246222940256128;
	setAttr -s 3 ".wl[554].w";
	setAttr ".wl[554].w[8]" 0.27973178816736732;
	setAttr ".wl[554].w[11]" 0.56648407985404059;
	setAttr ".wl[554].w[12]" 0.15378413197859209;
	setAttr -s 3 ".wl[555].w";
	setAttr ".wl[555].w[8]" 0.19803551197067704;
	setAttr ".wl[555].w[11]" 0.5917882250555514;
	setAttr ".wl[555].w[12]" 0.21017626297377151;
	setAttr -s 3 ".wl[556].w";
	setAttr ".wl[556].w[8]" 0.13644610615767458;
	setAttr ".wl[556].w[11]" 0.62017855279421952;
	setAttr ".wl[556].w[12]" 0.2433753410481059;
	setAttr -s 3 ".wl[557].w";
	setAttr ".wl[557].w[8]" 0.01753039682245381;
	setAttr ".wl[557].w[11]" 0.59423324552312717;
	setAttr ".wl[557].w[12]" 0.38823635765441905;
	setAttr -s 3 ".wl[558].w";
	setAttr ".wl[558].w[8]" 0.0006462663416837265;
	setAttr ".wl[558].w[11]" 0.52149093536815294;
	setAttr ".wl[558].w[12]" 0.47786279829016343;
	setAttr -s 3 ".wl[559].w";
	setAttr ".wl[559].w[8]" 0.00044089425057794413;
	setAttr ".wl[559].w[11]" 0.49888962044311241;
	setAttr ".wl[559].w[12]" 0.50066948530630973;
	setAttr -s 3 ".wl[560].w";
	setAttr ".wl[560].w[8]" 0.010701356736579843;
	setAttr ".wl[560].w[11]" 0.52637726947447383;
	setAttr ".wl[560].w[12]" 0.46292137378894638;
	setAttr -s 3 ".wl[561].w";
	setAttr ".wl[561].w[8]" 0.062637546444250361;
	setAttr ".wl[561].w[11]" 0.58562058123904037;
	setAttr ".wl[561].w[12]" 0.35174187231670928;
	setAttr -s 3 ".wl[562].w";
	setAttr ".wl[562].w[8]" 0.11542718361414735;
	setAttr ".wl[562].w[11]" 0.66426123565168793;
	setAttr ".wl[562].w[12]" 0.2203115807341646;
	setAttr -s 3 ".wl[563].w";
	setAttr ".wl[563].w[8]" 0.11813676069160171;
	setAttr ".wl[563].w[11]" 0.63859017657965056;
	setAttr ".wl[563].w[12]" 0.24327306272874785;
	setAttr -s 3 ".wl[564].w";
	setAttr ".wl[564].w[8]" 0.032043328359558448;
	setAttr ".wl[564].w[11]" 0.67308288268859839;
	setAttr ".wl[564].w[12]" 0.29487378895184319;
	setAttr -s 3 ".wl[565].w";
	setAttr ".wl[565].w[8]" 0.00075342149132929083;
	setAttr ".wl[565].w[11]" 0.60802267465817139;
	setAttr ".wl[565].w[12]" 0.39122390385049938;
	setAttr -s 3 ".wl[566].w";
	setAttr ".wl[566].w[8]" 0.00035872450109549164;
	setAttr ".wl[566].w[11]" 0.55476703108945769;
	setAttr ".wl[566].w[12]" 0.44487424440944678;
	setAttr -s 3 ".wl[567].w";
	setAttr ".wl[567].w[8]" 0.00033694183356754512;
	setAttr ".wl[567].w[11]" 0.54611988681929124;
	setAttr ".wl[567].w[12]" 0.45354317134714106;
	setAttr -s 3 ".wl[568].w";
	setAttr ".wl[568].w[8]" 0.0029709130047839072;
	setAttr ".wl[568].w[11]" 0.58096939152155158;
	setAttr ".wl[568].w[12]" 0.41605969547366467;
	setAttr -s 3 ".wl[569].w";
	setAttr ".wl[569].w[8]" 0.038367341129670621;
	setAttr ".wl[569].w[11]" 0.62837709704564726;
	setAttr ".wl[569].w[12]" 0.33325556182468208;
	setAttr -s 3 ".wl[570].w";
	setAttr ".wl[570].w[8]" 0.018496328732075247;
	setAttr ".wl[570].w[11]" 0.62949607070224123;
	setAttr ".wl[570].w[12]" 0.35200760056568359;
	setAttr -s 3 ".wl[571].w[11:13]"  6.4255958245550972e-006 0.49957716360174526 
		0.50041641080243016;
	setAttr -s 3 ".wl[572].w[11:13]"  8.7789604543173858e-006 0.4892866780640262 
		0.51070454297551937;
	setAttr -s 3 ".wl[573].w[11:13]"  6.14291699430133e-006 0.48642239551554545 
		0.51357146156746025;
	setAttr -s 3 ".wl[574].w[11:13]"  2.8428046437807824e-006 0.48196882067866842 
		0.51802833651668778;
	setAttr -s 3 ".wl[575].w[11:13]"  2.0375899332620351e-006 0.46599186033381951 
		0.53400610207624721;
	setAttr -s 3 ".wl[576].w[11:13]"  1.6181989177690742e-006 0.44079537327602236 
		0.55920300852505989;
	setAttr -s 3 ".wl[577].w[11:13]"  2.3266757149703388e-006 0.46159346377840721 
		0.53840420954587787;
	setAttr -s 3 ".wl[578].w[11:13]"  3.6815769898644644e-006 0.50008902044557269 
		0.49990729797743755;
	setAttr -s 3 ".wl[579].w[12:14]"  5.5470498031453062e-005 0.83322226356694351 
		0.16672226593502507;
	setAttr -s 3 ".wl[580].w[12:14]"  5.5465248481897735e-005 0.83272672363574429 
		0.16721781111577383;
	setAttr -s 3 ".wl[581].w[12:14]"  5.5477772611710392e-005 0.83752366115785459 
		0.16242086106953374;
	setAttr -s 3 ".wl[582].w[12:14]"  5.5526790229239145e-005 0.84247693525747425 
		0.15746753795229654;
	setAttr -s 3 ".wl[583].w[12:14]"  5.5569250598504177e-005 0.84485937223887697 
		0.15508505851052456;
	setAttr -s 3 ".wl[584].w[12:14]"  5.5675540266685791e-005 0.84292970777551113 
		0.15701461668422204;
	setAttr -s 3 ".wl[585].w[12:14]"  5.580978333284042e-005 0.83746395077743496 
		0.16248023943923226;
	setAttr -s 3 ".wl[586].w[12:14]"  5.5824976172425709e-005 0.83467040099734235 
		0.16527377402648519;
	setAttr -s 3 ".wl[587].w[12:14]"  5.5794052993649584e-005 0.83446607070245116 
		0.16547813524455521;
	setAttr -s 3 ".wl[588].w[12:14]"  5.5773117162509854e-005 0.83298942490066374 
		0.16695480198217397;
	setAttr -s 3 ".wl[589].w[12:14]"  5.5682120206714991e-005 0.83170016392810264 
		0.16824415395169054;
	setAttr -s 3 ".wl[590].w[12:14]"  5.5539177769359601e-005 0.83329699785050615 
		0.16664746297172442;
	setAttr -s 3 ".wl[591].w[12:14]"  1.3324967050229587e-005 0.85182257811769124 
		0.1481640969152585;
	setAttr -s 3 ".wl[592].w[12:14]"  1.3346675885296562e-005 0.86108900341517536 
		0.13889764990893941;
	setAttr -s 3 ".wl[593].w[12:14]"  1.3503094871697891e-005 0.86923001583283743 
		0.13075648107229093;
	setAttr -s 3 ".wl[594].w[12:14]"  1.3624758795814861e-005 0.87094472734751738 
		0.12904164789368686;
	setAttr -s 3 ".wl[595].w[12:14]"  1.3792812908781995e-005 0.87103031645656293 
		0.12895589073052829;
	setAttr -s 3 ".wl[596].w[12:14]"  1.4324337791638118e-005 0.85695679010761272 
		0.14302888555459556;
	setAttr -s 3 ".wl[597].w[12:14]"  1.455289988107388e-005 0.84745961033766515 
		0.15252583676245365;
	setAttr -s 3 ".wl[598].w[12:14]"  1.4206328970015988e-005 0.85434444800370635 
		0.14564134566732365;
	setAttr -s 3 ".wl[599].w[12:14]"  1.3963057096833822e-005 0.85768168048340032 
		0.14230435645950282;
	setAttr -s 3 ".wl[600].w[12:14]"  1.387678821939298e-005 0.85231998741283588 
		0.14766613579894469;
	setAttr -s 3 ".wl[601].w[12:14]"  1.3614699979763487e-005 0.85082716398206393 
		0.14915922131795628;
	setAttr -s 3 ".wl[602].w[12:14]"  1.3390029402579049e-005 0.85046498265472747 
		0.14952162731586982;
	setAttr -s 3 ".wl[603].w[12:14]"  1.1718953726417142e-006 0.77089190047862011 
		0.22910692762600732;
	setAttr -s 3 ".wl[604].w[12:14]"  1.410012465333056e-006 0.78680126770625936 
		0.21319732228127533;
	setAttr -s 3 ".wl[605].w[12:14]"  1.7347375665623979e-006 0.78743833140482922 
		0.21255993385760433;
	setAttr -s 3 ".wl[606].w[12:14]"  1.8845515481860069e-006 0.78909309680371431 
		0.21090501864473746;
	setAttr -s 3 ".wl[607].w[12:14]"  2.4769555409109033e-006 0.78524644625589501 
		0.21475107678856414;
	setAttr -s 3 ".wl[608].w[12:14]"  3.3399713899970112e-006 0.76270419961942137 
		0.23729246040918883;
	setAttr -s 3 ".wl[609].w[12:14]"  3.0938780949171331e-006 0.76694611743227126 
		0.23305078868963389;
	setAttr -s 3 ".wl[610].w[12:14]"  2.3063613175244403e-006 0.78137107646531168 
		0.21862661717337062;
	setAttr -s 3 ".wl[611].w[12:14]"  2.1338869628439455e-006 0.7782544446153169 
		0.22174342149772008;
	setAttr -s 3 ".wl[612].w[12:14]"  1.9035873335998202e-006 0.77134177544453686 
		0.22865632096812943;
	setAttr -s 3 ".wl[613].w[12:14]"  1.4001461703667463e-006 0.76513808892466872 
		0.23486051092916091;
	setAttr -s 3 ".wl[614].w[12:14]"  1.1947068307500936e-006 0.75638845228770868 
		0.24361035300546052;
	setAttr -s 3 ".wl[615].w[12:14]"  1.1221481319334119e-006 0.64858890783816736 
		0.35140997001370072;
	setAttr -s 3 ".wl[616].w[12:14]"  1.4614836082223937e-006 0.65534076085970028 
		0.34465777765669148;
	setAttr -s 3 ".wl[617].w[12:14]"  1.6825050149080159e-006 0.65809656925325921 
		0.34190174824172587;
	setAttr -s 3 ".wl[618].w[12:14]"  1.9495657333644792e-006 0.67390961627789814 
		0.32608843415636829;
	setAttr -s 3 ".wl[619].w[12:14]"  2.7452392124507201e-006 0.67537055650662758 
		0.32462669825416018;
	setAttr -s 3 ".wl[620].w[12:14]"  3.2530068193945343e-006 0.66626550580790167 
		0.3337312411852788;
	setAttr -s 3 ".wl[621].w[12:14]"  2.7284353809308172e-006 0.67297088504092395 
		0.32702638652369526;
	setAttr -s 3 ".wl[622].w[12:14]"  2.3037555197241564e-006 0.67081486367678689 
		0.32918283256769326;
	setAttr -s 3 ".wl[623].w[12:14]"  2.2782945879296562e-006 0.66040552942125597 
		0.33959219228415616;
	setAttr -s 3 ".wl[624].w[12:14]"  1.6921734745375256e-006 0.65157175224128394 
		0.34842655558524138;
	setAttr -s 3 ".wl[625].w[12:14]"  1.1286213749844318e-006 0.63146742442623904 
		0.3685314469523861;
	setAttr -s 3 ".wl[626].w[12:14]"  1.0046304478032497e-006 0.62722985474638759 
		0.37276914062316452;
	setAttr -s 3 ".wl[627].w[12:14]"  1.0492169823660447e-006 0.55375400908712513 
		0.44624494169589246;
	setAttr -s 3 ".wl[628].w[12:14]"  1.2066456234141642e-006 0.55312917104658121 
		0.44686962230779553;
	setAttr -s 3 ".wl[629].w[12:14]"  1.3670345416343716e-006 0.56555068255664587 
		0.43444795040881257;
	setAttr -s 3 ".wl[630].w[12:14]"  1.7470396244040607e-006 0.58842004247756063 
		0.4115782104828149;
	setAttr -s 3 ".wl[631].w[12:14]"  2.3782065128248113e-006 0.59640716897338342 
		0.40359045282010375;
	setAttr -s 3 ".wl[632].w[12:14]"  2.6800486574391251e-006 0.59389290807306028 
		0.40610441187828222;
	setAttr -s 3 ".wl[633].w[12:14]"  2.5018831504806982e-006 0.58842630038680621 
		0.4115711977300433;
	setAttr -s 3 ".wl[634].w[12:14]"  2.3006522111471176e-006 0.57730033828705729 
		0.42269736106073152;
	setAttr -s 3 ".wl[635].w[12:14]"  1.9637633961481439e-006 0.566274298062587 
		0.43372373817401683;
	setAttr -s 3 ".wl[636].w[12:14]"  1.3189913423423116e-006 0.55160290672176704 
		0.44839577428689054;
	setAttr -s 3 ".wl[637].w[12:14]"  9.5241209839558432e-007 0.5380503487364493 
		0.46194869885145234;
	setAttr -s 3 ".wl[638].w[12:14]"  9.4867163028342434e-007 0.54429107963364409 
		0.45570797169472554;
	setAttr -s 3 ".wl[639].w[12:14]"  8.3594733028456884e-007 0.51084221278410402 
		0.48915695126856573;
	setAttr -s 3 ".wl[640].w[12:14]"  9.1522793423428025e-007 0.51054280325931034 
		0.4894562815127555;
	setAttr -s 3 ".wl[641].w[12:14]"  1.0816365083981771e-006 0.52098076835243579 
		0.47901815001105569;
	setAttr -s 3 ".wl[642].w[12:14]"  1.3842986266415391e-006 0.53296136660061422 
		0.46703724910075933;
	setAttr -s 3 ".wl[643].w[12:14]"  1.8664156478516507e-006 0.53603790337803658 
		0.46396023020631555;
	setAttr -s 3 ".wl[644].w[12:14]"  2.2072323027651658e-006 0.53303651824375597 
		0.46696127452394132;
	setAttr -s 3 ".wl[645].w[12:14]"  2.14229065211017e-006 0.52795894614513905 
		0.47203891156420885;
	setAttr -s 3 ".wl[646].w[12:14]"  1.7563182167927418e-006 0.52169571552804317 
		0.47830252815373991;
	setAttr -s 3 ".wl[647].w[12:14]"  1.3547309297078006e-006 0.51399588275688379 
		0.4860027625121866;
	setAttr -s 3 ".wl[648].w[12:14]"  9.73234602276195e-007 0.50787487980927293 
		0.49212414695612477;
	setAttr -s 3 ".wl[649].w[12:14]"  8.3936334345069413e-007 0.50789118200961747 
		0.49210797862703909;
	setAttr -s 3 ".wl[650].w[12:14]"  8.3872961048963116e-007 0.51186617065511697 
		0.48813299061527243;
	setAttr -s 3 ".wl[651].w[12:14]"  6.6084980218890498e-007 0.50078726896968928 
		0.49921207018050862;
	setAttr -s 3 ".wl[652].w[12:14]"  7.4689129742769158e-007 0.50119813483588693 
		0.49880111827281565;
	setAttr -s 3 ".wl[653].w[12:14]"  8.3710531272235044e-007 0.50374638215925349 
		0.49625278073543383;
	setAttr -s 3 ".wl[654].w[12:14]"  9.9783962795657322e-007 0.50554166944256107 
		0.49445733271781089;
	setAttr -s 3 ".wl[655].w[12:14]"  1.3051310650234378e-006 0.50552086088629711 
		0.49447783398263789;
	setAttr -s 3 ".wl[656].w[12:14]"  1.4659564462277305e-006 0.5047445001299492 
		0.49525403391360462;
	setAttr -s 3 ".wl[657].w[12:14]"  1.3477708115199164e-006 0.50380003675470986 
		0.49619861547447874;
	setAttr -s 3 ".wl[658].w[12:14]"  1.0202949550397165e-006 0.50223799182442019 
		0.49776098788062467;
	setAttr -s 3 ".wl[659].w[12:14]"  8.0243218292292847e-007 0.50074104796742902 
		0.499258149600388;
	setAttr -s 3 ".wl[660].w[12:14]"  6.6889338968402751e-007 0.50079978179357276 
		0.49919954931303767;
	setAttr -s 3 ".wl[661].w[12:14]"  6.3949969887962947e-007 0.50210433896984208 
		0.49789502153045911;
	setAttr -s 3 ".wl[662].w[12:14]"  6.3617371590710769e-007 0.50222284954281649 
		0.49777651428346764;
	setAttr -s 3 ".wl[663].w[12:14]"  5.6331753103502389e-007 0.49999971834123447 
		0.49999971834123447;
	setAttr -s 3 ".wl[664].w[12:14]"  6.1288719478443892e-007 0.49999969355640261 
		0.49999969355640261;
	setAttr -s 3 ".wl[665].w[12:14]"  6.3207113972274841e-007 0.49999968396443017 
		0.49999968396443017;
	setAttr -s 3 ".wl[666].w[12:14]"  7.1096631972650064e-007 0.4999996445168402 
		0.4999996445168402;
	setAttr -s 3 ".wl[667].w[12:14]"  8.0652747522805468e-007 0.49999959673626243 
		0.49999959673626243;
	setAttr -s 3 ".wl[668].w[12:14]"  8.366604684649506e-007 0.49999958166976582 
		0.49999958166976582;
	setAttr -s 3 ".wl[669].w[12:14]"  7.5851282974197204e-007 0.49999962074358517 
		0.49999962074358517;
	setAttr -s 3 ".wl[670].w[12:14]"  6.0780520968010602e-007 0.4999996960973952 
		0.4999996960973952;
	setAttr -s 3 ".wl[671].w[12:14]"  5.3990002162614209e-007 0.49999973004998921 
		0.49999973004998921;
	setAttr -s 3 ".wl[672].w[12:14]"  4.9048756631788215e-007 0.50014170109430189 
		0.49985780841813171;
	setAttr -s 3 ".wl[673].w[12:14]"  4.8359431156342686e-007 0.50031532541471291 
		0.49968419099097544;
	setAttr -s 3 ".wl[674].w[12:14]"  5.1065524778089927e-007 0.50017511318661889 
		0.49982437615813324;
	setAttr -s 3 ".wl[675].w[12:14]"  5.290728000202667e-007 0.49999973546359999 
		0.49999973546359999;
	setAttr -s 3 ".wl[676].w[12:14]"  5.5326466886114029e-007 0.49999972336766563 
		0.49999972336766563;
	setAttr -s 3 ".wl[677].w[12:14]"  5.8013300360138432e-007 0.49999970993349813 
		0.49999970993349813;
	setAttr -s 3 ".wl[678].w[12:14]"  6.2956722378707231e-007 0.49999968521638805 
		0.49999968521638805;
	setAttr -s 3 ".wl[679].w[12:14]"  6.5366816387128012e-007 0.49999967316591798 
		0.49999967316591798;
	setAttr -s 3 ".wl[680].w[12:14]"  6.4202015086926596e-007 0.49999967898992459 
		0.49999967898992459;
	setAttr -s 3 ".wl[681].w[12:14]"  5.9748782014115599e-007 0.49999970125608989 
		0.49999970125608989;
	setAttr -s 3 ".wl[682].w[12:14]"  5.5141098687042965e-007 0.49999972429450656 
		0.49999972429450656;
	setAttr -s 3 ".wl[683].w[12:14]"  5.1236750597724343e-007 0.49999974381624707 
		0.49999974381624707;
	setAttr -s 3 ".wl[684].w[12:14]"  4.7549448633013008e-007 0.49999976225275689 
		0.49999976225275689;
	setAttr -s 3 ".wl[685].w[12:14]"  4.6806743357419261e-007 0.49999976596628321 
		0.49999976596628321;
	setAttr -s 3 ".wl[686].w[12:14]"  4.9103131022444161e-007 0.49999975448434492 
		0.49999975448434492;
	setAttr -s 3 ".wl[687].w[12:14]"  8.7154645824267206e-005 0.79181390820435682 
		0.20809893714981892;
	setAttr -s 3 ".wl[688].w[12:14]"  5.6946831919771037e-007 0.49999971526584036 
		0.49999971526584036;
	setAttr -s 3 ".wl[689].w[16:18]"  7.2237823167340726e-007 0.49999969016332479 
		0.49999958745844358;
	setAttr -s 3 ".wl[690].w[16:18]"  6.8905015988783224e-007 0.49999971582171748 
		0.49999959512812264;
	setAttr -s 3 ".wl[691].w[16:18]"  6.5789267700470812e-007 0.49999969755224061 
		0.49999964455508245;
	setAttr -s 3 ".wl[692].w[16:18]"  5.8437037269786733e-007 0.49999971225547679 
		0.49999970337415045;
	setAttr -s 3 ".wl[693].w[16:18]"  5.2637669267572011e-007 0.49999973681165361 
		0.49999973681165361;
	setAttr -s 3 ".wl[694].w[16:18]"  5.0806554505080864e-007 0.49999974596722746 
		0.49999974596722746;
	setAttr -s 3 ".wl[695].w[16:18]"  5.5430453151655812e-007 0.49999972284773425 
		0.49999972284773425;
	setAttr -s 3 ".wl[696].w[16:18]"  5.9293858030862963e-007 0.49999970353070983 
		0.49999970353070983;
	setAttr -s 3 ".wl[697].w[16:18]"  5.9232616942136669e-007 0.49999970383691528 
		0.49999970383691528;
	setAttr -s 3 ".wl[698].w[16:18]"  6.1907698205771203e-007 0.49999969046150894 
		0.49999969046150894;
	setAttr -s 3 ".wl[699].w[16:18]"  7.2848525470172621e-007 0.49999963575737272 
		0.49999963575737272;
	setAttr -s 3 ".wl[700].w[16:18]"  7.8713417133419476e-007 0.49999961889611166 
		0.49999959396971699;
	setAttr -s 3 ".wl[701].w[16:18]"  8.130207209654998e-007 0.50028222643368503 
		0.499716960545594;
	setAttr -s 3 ".wl[702].w[16:18]"  8.4301439731615615e-007 0.50012677372429737 
		0.49987238326130545;
	setAttr -s 3 ".wl[703].w[16:18]"  7.6567484657835489e-007 0.49999967005219031 
		0.49999956427296316;
	setAttr -s 3 ".wl[704].w[16:18]"  6.290639682082694e-007 0.49999969397943472 
		0.49999967695659708;
	setAttr -s 3 ".wl[705].w[16:18]"  5.8941987814935025e-007 0.49999970529006099 
		0.49999970529006099;
	setAttr -s 3 ".wl[706].w[16:18]"  6.3770901915060473e-007 0.50061766732599633 
		0.49938169496498436;
	setAttr -s 3 ".wl[707].w[16:18]"  7.0135551036934347e-007 0.50111168471663836 
		0.4988876139278513;
	setAttr -s 3 ".wl[708].w[16:18]"  6.6688008006526757e-007 0.50049987555526043 
		0.49949945756465952;
	setAttr -s 3 ".wl[709].w[16:18]"  6.6703224469784842e-007 0.49999966648387767 
		0.49999966648387767;
	setAttr -s 3 ".wl[710].w[16:18]"  7.6287132600040911e-007 0.499999618564337 
		0.499999618564337;
	setAttr -s 3 ".wl[711].w[16:18]"  8.7828570676956061e-007 0.49999957167407416 
		0.4999995500402189;
	setAttr -s 3 ".wl[712].w[16:18]"  8.4766779131198066e-007 0.5001566284318103 
		0.49984252390039829;
	setAttr -s 3 ".wl[713].w[16:18]"  1.0031750894552437e-006 0.50147122887662599 
		0.49852776794828452;
	setAttr -s 3 ".wl[714].w[16:18]"  1.0579835525839197e-006 0.50041521765586328 
		0.49958372436058418;
	setAttr -s 3 ".wl[715].w[16:18]"  8.8404967525226252e-007 0.5008767493173899 
		0.4991223666329348;
	setAttr -s 3 ".wl[716].w[16:18]"  7.5864314491159871e-007 0.50235110400963678 
		0.49764813734721836;
	setAttr -s 3 ".wl[717].w[16:18]"  8.3128496549176062e-007 0.50412520638998903 
		0.4958739623250456;
	setAttr -s 3 ".wl[718].w[16:18]"  9.1058026332807015e-007 0.5075183649970777 
		0.49248072442265894;
	setAttr -s 3 ".wl[719].w[16:18]"  8.5087213204354734e-007 0.50678118569751995 
		0.49321796343034796;
	setAttr -s 3 ".wl[720].w[16:18]"  7.6976964663377263e-007 0.50306592209755197 
		0.49693330813280145;
	setAttr -s 3 ".wl[721].w[16:18]"  8.7289718140370795e-007 0.502130509694525 
		0.49786861740829347;
	setAttr -s 3 ".wl[722].w[16:18]"  9.7104865503945744e-007 0.50183653546250084 
		0.498162493488844;
	setAttr -s 3 ".wl[723].w[16:18]"  9.5311802970370576e-007 0.50120386270645656 
		0.49879518417551366;
	setAttr -s 3 ".wl[724].w[16:18]"  9.4383057034156361e-007 0.50157966768586992 
		0.49841938848355971;
	setAttr -s 3 ".wl[725].w[16:18]"  1.2534850991731568e-006 0.51105390761132263 
		0.48894483890357815;
	setAttr -s 3 ".wl[726].w[16:18]"  1.2355879557839026e-006 0.51143231001412559 
		0.48856645439791857;
	setAttr -s 3 ".wl[727].w[16:18]"  1.0533092360071053e-006 0.51614899069521381 
		0.48384995599555031;
	setAttr -s 3 ".wl[728].w[16:18]"  1.1396741513022885e-006 0.52130210505037422 
		0.47869675527547445;
	setAttr -s 3 ".wl[729].w[16:18]"  1.3190956620942163e-006 0.52543495453798916 
		0.47456372636634869;
	setAttr -s 3 ".wl[730].w[16:18]"  1.2514588942325571e-006 0.52662356936122046 
		0.4733751791798852;
	setAttr -s 3 ".wl[731].w[16:18]"  1.0740757356381686e-006 0.51959702245756845 
		0.48040190346669598;
	setAttr -s 3 ".wl[732].w[16:18]"  1.098213819888855e-006 0.51556966650932856 
		0.48442923527685161;
	setAttr -s 3 ".wl[733].w[16:18]"  1.2632166431809819e-006 0.51463367347692623 
		0.48536506330643059;
	setAttr -s 3 ".wl[734].w[16:18]"  1.2255864569967055e-006 0.51158513848685361 
		0.48841363592668935;
	setAttr -s 3 ".wl[735].w[16:18]"  1.1606858405884379e-006 0.50921716678948359 
		0.49078167252467586;
	setAttr -s 3 ".wl[736].w[16:18]"  1.1716740583747048e-006 0.51037358069161576 
		0.48962524763432586;
	setAttr -s 3 ".wl[737].w[16:18]"  1.5544442454575767e-006 0.56176657041367151 
		0.43823187514208289;
	setAttr -s 3 ".wl[738].w[16:18]"  1.5385518598215402e-006 0.56529294810685515 
		0.43470551334128488;
	setAttr -s 3 ".wl[739].w[16:18]"  1.5625442092934891e-006 0.57069068617965157 
		0.42930775127613902;
	setAttr -s 3 ".wl[740].w[16:18]"  1.7687684713315352e-006 0.57183322713662121 
		0.42816500409490749;
	setAttr -s 3 ".wl[741].w[16:18]"  1.8552558589948423e-006 0.5681205655388476 
		0.43187757920529329;
	setAttr -s 3 ".wl[742].w[16:18]"  1.6128067962062118e-006 0.56110903643213406 
		0.43888935076106977;
	setAttr -s 3 ".wl[743].w[16:18]"  1.523421576016965e-006 0.55718225768369944 
		0.44281621889472461;
	setAttr -s 3 ".wl[744].w[16:18]"  1.6615237844582156e-006 0.5553112652472616 
		0.44468707322895401;
	setAttr -s 3 ".wl[745].w[16:18]"  1.778248807905131e-006 0.55010979582466712 
		0.44988842592652512;
	setAttr -s 3 ".wl[746].w[16:18]"  1.625262708440344e-006 0.54696781294859753 
		0.45303056178869411;
	setAttr -s 3 ".wl[747].w[16:18]"  1.4778469422007785e-006 0.54811027356273712 
		0.45188824859032051;
	setAttr -s 3 ".wl[748].w[16:18]"  1.4755780413737522e-006 0.5546997565273637 
		0.44529876789459483;
	setAttr -s 3 ".wl[749].w[16:18]"  1.9019080268879993e-006 0.66564584311640007 
		0.33435225497557292;
	setAttr -s 3 ".wl[750].w[16:18]"  1.987328404845375e-006 0.66380756584674205 
		0.33619044682485316;
	setAttr -s 3 ".wl[751].w[16:18]"  1.997045920213007e-006 0.6611263917518686 
		0.33887161120221115;
	setAttr -s 3 ".wl[752].w[16:18]"  2.1572659896259216e-006 0.6483330017684108 
		0.35166484096559963;
	setAttr -s 3 ".wl[753].w[16:18]"  2.1713119418854542e-006 0.6392282274503055 
		0.36076960123775254;
	setAttr -s 3 ".wl[754].w[16:18]"  1.959852253371058e-006 0.64426863669055146 
		0.35572940345719517;
	setAttr -s 3 ".wl[755].w[16:18]"  2.05332455190785e-006 0.64912842361701673 
		0.35086952305843139;
	setAttr -s 3 ".wl[756].w[16:18]"  2.1995708685276942e-006 0.6384774072194821 
		0.3615203932096494;
	setAttr -s 3 ".wl[757].w[16:18]"  2.1571687556610484e-006 0.63380346694331402 
		0.36619437588793036;
	setAttr -s 3 ".wl[758].w[16:18]"  1.8711660852052194e-006 0.64061252550695058 
		0.35938560332696418;
	setAttr -s 3 ".wl[759].w[16:18]"  1.7808618144680578e-006 0.64746696913546598 
		0.35253125000271962;
	setAttr -s 3 ".wl[760].w[16:18]"  1.8243831347351796e-006 0.65761866076331699 
		0.34237951485354828;
	setAttr -s 3 ".wl[761].w[16:18]"  2.2075722056395778e-006 0.77771098928884486 
		0.22228680313894938;
	setAttr -s 3 ".wl[762].w[16:18]"  2.1666254024174278e-006 0.77261229872692883 
		0.22738553464766872;
	setAttr -s 3 ".wl[763].w[16:18]"  2.1086838159825901e-006 0.76525145922851656 
		0.23474643208766738;
	setAttr -s 3 ".wl[764].w[16:18]"  2.3172339479147926e-006 0.74951946263007663 
		0.25047822013597543;
	setAttr -s 3 ".wl[765].w[16:18]"  2.3194634828629422e-006 0.75822929650251658 
		0.24176838403400056;
	setAttr -s 3 ".wl[766].w[16:18]"  2.1944786692638109e-006 0.77907595888981762 
		0.22092184663151307;
	setAttr -s 3 ".wl[767].w[16:18]"  2.3572363322497139e-006 0.7770770734303214 
		0.22292056933334622;
	setAttr -s 3 ".wl[768].w[16:18]"  2.3470929423619274e-006 0.76115383976593576 
		0.23884381314112194;
	setAttr -s 3 ".wl[769].w[16:18]"  2.2216472148657829e-006 0.76390270424789997 
		0.23609507410488509;
	setAttr -s 3 ".wl[770].w[16:18]"  2.1355122652634726e-006 0.77386006507490968 
		0.22613779941282519;
	setAttr -s 3 ".wl[771].w[16:18]"  2.1056063668379005e-006 0.77678016679362061 
		0.22321772760001246;
	setAttr -s 3 ".wl[772].w[16:18]"  2.1308732219087456e-006 0.77828699248017097 
		0.22171087664660705;
	setAttr -s 3 ".wl[773].w[16:18]"  1.1803757720064454e-005 0.85092327795234346 
		0.1490649182899364;
	setAttr -s 3 ".wl[774].w[16:18]"  1.1707895281341405e-005 0.84854163284045214 
		0.15144665926426637;
	setAttr -s 3 ".wl[775].w[16:18]"  1.1700423014745241e-005 0.84306175396998395 
		0.15692654560700142;
	setAttr -s 3 ".wl[776].w[16:18]"  1.1865293828940139e-005 0.83719294433478664 
		0.16279519037138446;
	setAttr -s 3 ".wl[777].w[16:18]"  1.1805638678529313e-005 0.85535179716626264 
		0.14463639719505875;
	setAttr -s 3 ".wl[778].w[16:18]"  1.1742151010102122e-005 0.86829596573578161 
		0.13169229211320815;
	setAttr -s 3 ".wl[779].w[16:18]"  1.1861194124510033e-005 0.8610268655168315 
		0.1389612732890439;
	setAttr -s 3 ".wl[780].w[16:18]"  1.1852352731386516e-005 0.85071747629579164 
		0.1492706713514769;
	setAttr -s 3 ".wl[781].w[16:18]"  1.2002568810180492e-005 0.85516438047784682 
		0.14482361695334298;
	setAttr -s 3 ".wl[782].w[16:18]"  1.1890098181820971e-005 0.86248021637385419 
		0.13750789352796408;
	setAttr -s 3 ".wl[783].w[16:18]"  1.1750481458858021e-005 0.86019582919487059 
		0.1397924203236704;
	setAttr -s 3 ".wl[784].w[16:18]"  1.1799797666179158e-005 0.85382839799171184 
		0.14615980221062194;
	setAttr -s 3 ".wl[785].w[16:18]"  4.5380970279385275e-005 0.83105307212435542 
		0.16890154690536532;
	setAttr -s 3 ".wl[786].w[16:18]"  4.5322392744086287e-005 0.83126793267196319 
		0.16868674493529262;
	setAttr -s 3 ".wl[787].w[16:18]"  4.5340164555162014e-005 0.82808348848797231 
		0.17187117134747262;
	setAttr -s 3 ".wl[788].w[16:18]"  4.5402513676073652e-005 0.82860685737866746 
		0.17134774010765652;
	setAttr -s 3 ".wl[789].w[16:18]"  4.5326621134708628e-005 0.83828771049591166 
		0.16166696288295357;
	setAttr -s 3 ".wl[790].w[16:18]"  4.533328942069548e-005 0.84156623586534574 
		0.15838843084523344;
	setAttr -s 3 ".wl[791].w[16:18]"  4.5406011310105425e-005 0.83651806750483038 
		0.16343652648385962;
	setAttr -s 3 ".wl[792].w[16:18]"  4.5550761034903156e-005 0.83229435831219201 
		0.1676600909267732;
	setAttr -s 3 ".wl[793].w[16:18]"  4.5613176252141542e-005 0.83663980253647774 
		0.16331458428727005;
	setAttr -s 3 ".wl[794].w[16:18]"  4.5407614956164307e-005 0.84059406264498016 
		0.1593605297400639;
	setAttr -s 3 ".wl[795].w[16:18]"  4.5353971647565477e-005 0.83649379821298531 
		0.16346084781536716;
	setAttr -s 3 ".wl[796].w[16:18]"  4.5396568211820921e-005 0.83225677709533752 
		0.16769782633645075;
	setAttr -s 3 ".wl[797].w[16:18]"  5.8913343907432245e-007 0.49999971064670928 
		0.49999970021985179;
	setAttr -s 3 ".wl[798].w[16:18]"  7.0712414334728795e-005 0.79079299768678168 
		0.20913628989888358;
	setAttr -s 3 ".wl[799].w";
	setAttr ".wl[799].w[8]" 0.11868238009181979;
	setAttr ".wl[799].w[15]" 0.39551428241171488;
	setAttr ".wl[799].w[16]" 0.48580333749646526;
	setAttr -s 3 ".wl[800].w";
	setAttr ".wl[800].w[8]" 0.02329388826076164;
	setAttr ".wl[800].w[15]" 0.36090584311261564;
	setAttr ".wl[800].w[16]" 0.61580026862662285;
	setAttr -s 3 ".wl[801].w";
	setAttr ".wl[801].w[8]" 0.0020979352080958088;
	setAttr ".wl[801].w[15]" 0.31585194918816939;
	setAttr ".wl[801].w[16]" 0.68205011560373474;
	setAttr -s 3 ".wl[802].w";
	setAttr ".wl[802].w[8]" 0.00068054412352926564;
	setAttr ".wl[802].w[15]" 0.29882803291962262;
	setAttr ".wl[802].w[16]" 0.70049142295684808;
	setAttr -s 3 ".wl[803].w";
	setAttr ".wl[803].w[8]" 0.0065078661377722833;
	setAttr ".wl[803].w[15]" 0.32191823466093916;
	setAttr ".wl[803].w[16]" 0.67157389920128852;
	setAttr -s 3 ".wl[804].w";
	setAttr ".wl[804].w[8]" 0.062639811988566704;
	setAttr ".wl[804].w[15]" 0.37093353411982627;
	setAttr ".wl[804].w[16]" 0.56642665389160696;
	setAttr -s 3 ".wl[805].w";
	setAttr ".wl[805].w[8]" 0.19213678539207921;
	setAttr ".wl[805].w[15]" 0.38277254241318248;
	setAttr ".wl[805].w[16]" 0.42509067219473834;
	setAttr -s 3 ".wl[806].w";
	setAttr ".wl[806].w[8]" 0.23925275895592341;
	setAttr ".wl[806].w[15]" 0.38116267766441686;
	setAttr ".wl[806].w[16]" 0.37958456337965985;
	setAttr -s 3 ".wl[807].w[16:18]"  1.2393759619678731e-005 0.92436887019196212 
		0.075618736048418358;
	setAttr -s 3 ".wl[808].w[16:18]"  7.9547963894817e-006 0.92334457779054457 
		0.076647467413066148;
	setAttr -s 3 ".wl[809].w[16:18]"  1.7321399557652686e-005 0.94468260213545063 
		0.055300076464991799;
	setAttr -s 3 ".wl[810].w[16:18]"  2.5109503437188577e-005 0.94471792291078971 
		0.055256967585773177;
	setAttr -s 3 ".wl[811].w[16:18]"  3.3308607542755396e-005 0.94306158388190353 
		0.056905107510553811;
	setAttr -s 3 ".wl[812].w[16:18]"  2.4030598753225259e-005 0.92905308444431545 
		0.070922884956931331;
	setAttr -s 3 ".wl[813].w[16:18]"  1.2287592102343403e-005 0.90849461659126962 
		0.091493095816628039;
	setAttr -s 3 ".wl[814].w[16:18]"  9.8140521974636073e-006 0.90870242211927543 
		0.09128776382852713;
	setAttr -s 3 ".wl[815].w[16:18]"  0.0046818824555125227 0.96950335265849019 
		0.025814764885997342;
	setAttr -s 3 ".wl[816].w[16:18]"  0.0052808275761530481 0.97207790356395474 
		0.022641268859892188;
	setAttr -s 3 ".wl[817].w[16:18]"  0.0046327657241137044 0.97246121145139119 
		0.022906022824495064;
	setAttr -s 3 ".wl[818].w[16:18]"  0.0050916133105894075 0.96823255906984362 
		0.026675827619567001;
	setAttr -s 3 ".wl[819].w[16:18]"  0.0065970685895868509 0.96254685395669515 
		0.030856077453718118;
	setAttr -s 3 ".wl[820].w[16:18]"  0.0055614190894734839 0.95621327327197081 
		0.038225307638555868;
	setAttr -s 3 ".wl[821].w[16:18]"  0.0037203618180080347 0.94971723341959979 
		0.046562404762392227;
	setAttr -s 3 ".wl[822].w[16:18]"  0.0037095729365873406 0.95762156604958582 
		0.038668861013827008;
	setAttr -s 3 ".wl[823].w[16:18]"  0.050668139947797196 0.94579859121121534 
		0.003533268840987501;
	setAttr -s 3 ".wl[824].w[16:18]"  0.050705891858982992 0.94562724367814521 
		0.0036668644628717949;
	setAttr -s 3 ".wl[825].w[16:18]"  0.049596378733924688 0.9466038464188109 
		0.0037997748472643291;
	setAttr -s 3 ".wl[826].w[16:18]"  0.056377463645896901 0.93951400585357692 
		0.0041085305005263287;
	setAttr -s 3 ".wl[827].w[16:18]"  0.05885475381489387 0.93591977076989674 
		0.0052254754152094574;
	setAttr -s 3 ".wl[828].w[16:18]"  0.050693633250505667 0.94180707050732804 
		0.0074992962421661794;
	setAttr -s 3 ".wl[829].w[16:18]"  0.045975392927004165 0.94627047068629278 
		0.00775413638670316;
	setAttr -s 3 ".wl[830].w[16:18]"  0.047399928317357162 0.94756137172948096 
		0.0050386999531618713;
	setAttr -s 3 ".wl[831].w[16:18]"  0.22061984925494765 0.77937796587218755 
		2.1848728649206938e-006;
	setAttr -s 3 ".wl[832].w[16:18]"  0.2195163197995349 0.78048235915163255 
		1.3210488324385228e-006;
	setAttr -s 3 ".wl[833].w[16:18]"  0.22438216556522239 0.77561536647560303 
		2.4679591745176903e-006;
	setAttr -s 3 ".wl[834].w[16:18]"  0.23684064344042011 0.76315538911884184 
		3.9674407380249643e-006;
	setAttr -s 3 ".wl[835].w[16:18]"  0.23178346035337308 0.76821368541069224 
		2.8542359348097896e-006;
	setAttr -s 3 ".wl[836].w[16:18]"  0.22279825085434221 0.77719981944506678 
		1.929700590951341e-006;
	setAttr -s 3 ".wl[837].w[16:18]"  0.21964729976375891 0.78035057379913275 
		2.1264371082986223e-006;
	setAttr -s 3 ".wl[838].w[16:18]"  0.21927515279975618 0.78072243416072495 
		2.4130395189341766e-006;
	setAttr -s 3 ".wl[839].w[15:17]"  0.00041958189380298847 0.75855978029615567 
		0.24102063781004152;
	setAttr -s 3 ".wl[840].w[15:17]"  0.00032452656001909333 0.75936437783078503 
		0.24031109560919581;
	setAttr -s 3 ".wl[841].w[15:17]"  0.00038315811208545673 0.75868405525640226 
		0.24093278663151238;
	setAttr -s 3 ".wl[842].w[15:17]"  0.00042379952051170203 0.75180860712398923 
		0.24776759335549903;
	setAttr -s 3 ".wl[843].w[15:17]"  0.00030973826788628086 0.75861805493081713 
		0.24107220680129643;
	setAttr -s 3 ".wl[844].w[15:17]"  0.00027463595222953753 0.76591620863131515 
		0.23380915541645539;
	setAttr -s 3 ".wl[845].w[15:17]"  0.00038948075602718388 0.75967257406655464 
		0.23993794517741812;
	setAttr -s 3 ".wl[846].w[15:17]"  0.00047887735903232449 0.7588859465287443 
		0.24063517611222329;
	setAttr -s 3 ".wl[847].w[15:17]"  0.027174525583710054 0.91058196114105805 
		0.062243513275231956;
	setAttr -s 3 ".wl[848].w[15:17]"  0.023786169511305195 0.91485394636884854 
		0.061359884119846386;
	setAttr -s 3 ".wl[849].w[15:17]"  0.019227523692188005 0.91478823225028705 
		0.065984244057524982;
	setAttr -s 3 ".wl[850].w[15:17]"  0.018419779260509708 0.91341734095199967 
		0.068162879787490568;
	setAttr -s 3 ".wl[851].w[15:17]"  0.020455228722010842 0.91837530863284789 
		0.061169462645141309;
	setAttr -s 3 ".wl[852].w[15:17]"  0.024651943207595749 0.91539957868852717 
		0.05994847810387708;
	setAttr -s 3 ".wl[853].w[15:17]"  0.02711544237283129 0.9113586930228047 
		0.061525864604364003;
	setAttr -s 3 ".wl[854].w[15:17]"  0.027110138605129439 0.91150134061449706 
		0.061388520780373511;
	setAttr -s 3 ".wl[855].w";
	setAttr ".wl[855].w[8]" 0.03392551191365821;
	setAttr ".wl[855].w[15]" 0.15778100605368764;
	setAttr ".wl[855].w[16]" 0.80829348203265405;
	setAttr -s 3 ".wl[856].w[15:17]"  0.13281839897073547 0.85979177984619881 
		0.0073898211830656629;
	setAttr -s 3 ".wl[857].w[15:17]"  0.11458881724040526 0.87670919701537242 
		0.0087019857442224013;
	setAttr -s 3 ".wl[858].w[15:17]"  0.11818662196706717 0.87368580356229364 
		0.0081275744706392483;
	setAttr -s 3 ".wl[859].w[15:17]"  0.13655636016212336 0.85655012923029983 
		0.0068935106075767028;
	setAttr -s 3 ".wl[860].w";
	setAttr ".wl[860].w[8]" 0.025603341890356485;
	setAttr ".wl[860].w[15]" 0.15828974218775202;
	setAttr ".wl[860].w[16]" 0.81610691592189144;
	setAttr -s 3 ".wl[861].w";
	setAttr ".wl[861].w[8]" 0.080202870448753502;
	setAttr ".wl[861].w[15]" 0.15977786348718778;
	setAttr ".wl[861].w[16]" 0.76001926606405867;
	setAttr -s 3 ".wl[862].w";
	setAttr ".wl[862].w[8]" 0.086075837998931023;
	setAttr ".wl[862].w[15]" 0.15991498809389962;
	setAttr ".wl[862].w[16]" 0.75400917390716915;
	setAttr -s 3 ".wl[863].w";
	setAttr ".wl[863].w[8]" 0.33695425788896322;
	setAttr ".wl[863].w[15]" 0.48781981951460346;
	setAttr ".wl[863].w[16]" 0.17522592259643324;
	setAttr -s 3 ".wl[864].w";
	setAttr ".wl[864].w[8]" 0.20521533001791289;
	setAttr ".wl[864].w[15]" 0.52845361931635282;
	setAttr ".wl[864].w[16]" 0.26633105066573426;
	setAttr -s 3 ".wl[865].w";
	setAttr ".wl[865].w[8]" 0.22140606484942091;
	setAttr ".wl[865].w[15]" 0.50539941049210957;
	setAttr ".wl[865].w[16]" 0.27319452465846944;
	setAttr -s 3 ".wl[866].w";
	setAttr ".wl[866].w[8]" 0.051414405775568973;
	setAttr ".wl[866].w[15]" 0.49894208212585234;
	setAttr ".wl[866].w[16]" 0.44964351209857867;
	setAttr -s 3 ".wl[867].w";
	setAttr ".wl[867].w[8]" 0.0029254137464149632;
	setAttr ".wl[867].w[15]" 0.44138191092505241;
	setAttr ".wl[867].w[16]" 0.55569267532853261;
	setAttr -s 3 ".wl[868].w";
	setAttr ".wl[868].w[8]" 0.00066830083282173696;
	setAttr ".wl[868].w[15]" 0.4220795589804554;
	setAttr ".wl[868].w[16]" 0.57725214018672288;
	setAttr -s 3 ".wl[869].w";
	setAttr ".wl[869].w[8]" 0.0059107667563420823;
	setAttr ".wl[869].w[15]" 0.44221748078070566;
	setAttr ".wl[869].w[16]" 0.55187175246295217;
	setAttr -s 3 ".wl[870].w";
	setAttr ".wl[870].w[8]" 0.054476306505036168;
	setAttr ".wl[870].w[15]" 0.50085610333895636;
	setAttr ".wl[870].w[16]" 0.44466759015600754;
	setAttr -s 3 ".wl[871].w";
	setAttr ".wl[871].w[8]" 0.28873842164301899;
	setAttr ".wl[871].w[15]" 0.53951680652054768;
	setAttr ".wl[871].w[16]" 0.17174477183643347;
	setAttr -s 3 ".wl[872].w";
	setAttr ".wl[872].w[8]" 0.20848262456141062;
	setAttr ".wl[872].w[15]" 0.57026320267005626;
	setAttr ".wl[872].w[16]" 0.22125417276853307;
	setAttr -s 3 ".wl[873].w";
	setAttr ".wl[873].w[8]" 0.13729471986158914;
	setAttr ".wl[873].w[15]" 0.58486413413067817;
	setAttr ".wl[873].w[16]" 0.27784114600773258;
	setAttr -s 3 ".wl[874].w";
	setAttr ".wl[874].w[8]" 0.018112384152080271;
	setAttr ".wl[874].w[15]" 0.55110054049591906;
	setAttr ".wl[874].w[16]" 0.43078707535200067;
	setAttr -s 3 ".wl[875].w";
	setAttr ".wl[875].w[8]" 0.00044870800140920769;
	setAttr ".wl[875].w[15]" 0.49507528002998141;
	setAttr ".wl[875].w[16]" 0.50447601196860936;
	setAttr -s 3 ".wl[876].w";
	setAttr ".wl[876].w[8]" 0.00039070887788133688;
	setAttr ".wl[876].w[15]" 0.4767497511209931;
	setAttr ".wl[876].w[16]" 0.52285954000112544;
	setAttr -s 3 ".wl[877].w";
	setAttr ".wl[877].w[8]" 0.0076790672868607144;
	setAttr ".wl[877].w[15]" 0.4985751982206858;
	setAttr ".wl[877].w[16]" 0.49374573449245363;
	setAttr -s 3 ".wl[878].w";
	setAttr ".wl[878].w[8]" 0.061557588810524012;
	setAttr ".wl[878].w[15]" 0.56375757463001208;
	setAttr ".wl[878].w[16]" 0.37468483655946372;
	setAttr -s 3 ".wl[879].w";
	setAttr ".wl[879].w[8]" 0.11766183073485559;
	setAttr ".wl[879].w[15]" 0.59778055478471737;
	setAttr ".wl[879].w[16]" 0.28455761448042693;
	setAttr -s 3 ".wl[880].w";
	setAttr ".wl[880].w[8]" 0.12217632839093469;
	setAttr ".wl[880].w[15]" 0.58474754803268691;
	setAttr ".wl[880].w[16]" 0.29307612357637847;
	setAttr -s 3 ".wl[881].w";
	setAttr ".wl[881].w[8]" 0.032098831653940937;
	setAttr ".wl[881].w[15]" 0.60154258342011857;
	setAttr ".wl[881].w[16]" 0.36635858492594037;
	setAttr -s 3 ".wl[882].w";
	setAttr ".wl[882].w[8]" 0.00043405479744391447;
	setAttr ".wl[882].w[15]" 0.55029256179319264;
	setAttr ".wl[882].w[16]" 0.44927338340936351;
	setAttr -s 3 ".wl[883].w";
	setAttr ".wl[883].w[8]" 0.00016040605469293476;
	setAttr ".wl[883].w[15]" 0.51528629670675186;
	setAttr ".wl[883].w[16]" 0.48455329723855523;
	setAttr -s 3 ".wl[884].w";
	setAttr ".wl[884].w[8]" 0.00018474905685162478;
	setAttr ".wl[884].w[15]" 0.50641657507753912;
	setAttr ".wl[884].w[16]" 0.49339867586560937;
	setAttr -s 3 ".wl[885].w";
	setAttr ".wl[885].w[8]" 0.0034420534220105602;
	setAttr ".wl[885].w[15]" 0.53627303068335452;
	setAttr ".wl[885].w[16]" 0.46028491589463499;
	setAttr -s 3 ".wl[886].w";
	setAttr ".wl[886].w[8]" 0.040978512879487047;
	setAttr ".wl[886].w[15]" 0.58291661567403252;
	setAttr ".wl[886].w[16]" 0.37610487144648047;
	setAttr -s 3 ".wl[887].w";
	setAttr ".wl[887].w[8]" 0.018197692879187249;
	setAttr ".wl[887].w[15]" 0.56405342055298746;
	setAttr ".wl[887].w[16]" 0.41774888656782516;
	setAttr -s 3 ".wl[888].w[15:17]"  5.6824209276997324e-006 0.48971324352376017 
		0.51028107405531209;
	setAttr -s 3 ".wl[889].w[15:17]"  7.5650041428271789e-006 0.48932435706553595 
		0.51066807793032121;
	setAttr -s 3 ".wl[890].w[15:17]"  5.3364413647161655e-006 0.49736310443048887 
		0.50263155912814639;
	setAttr -s 3 ".wl[891].w[15:17]"  2.4099987527491595e-006 0.49884947921044115 
		0.50114811079080612;
	setAttr -s 3 ".wl[892].w[15:17]"  1.7436565654825284e-006 0.49501744388762708 
		0.50498081245580739;
	setAttr -s 3 ".wl[893].w[15:17]"  1.6815638789360368e-006 0.4986323776345763 
		0.50136594080154473;
	setAttr -s 3 ".wl[894].w[15:17]"  2.6054978933697682e-006 0.49435466415023871 
		0.50564273035186791;
	setAttr -s 3 ".wl[895].w[15:17]"  3.7090414612296039e-006 0.48910749048001051 
		0.51088880047852825;
	setAttr -s 3 ".wl[896].w[16:18]"  0.0018325399675851164 0.99111236730159535 
		0.0070550927308195063;
	setAttr -s 3 ".wl[897].w[16:18]"  0.0020052239318632814 0.99097989261582298 
		0.0070148834523137017;
	setAttr -s 3 ".wl[898].w[16:18]"  0.0023724403835417552 0.98963045084359702 
		0.0079971087728613333;
	setAttr -s 3 ".wl[899].w[16:18]"  0.0028437993988798841 0.98776629234051339 
		0.0093899082606065491;
	setAttr -s 3 ".wl[900].w[16:18]"  0.0024812765713270184 0.98890341577565632 
		0.008615307653016633;
	setAttr -s 3 ".wl[901].w[16:18]"  0.0018792153068197496 0.99081827280084078 
		0.0073025118923393884;
	setAttr -s 3 ".wl[902].w[16:18]"  0.0013939356700057956 0.98881826466090139 
		0.0097877996690927307;
	setAttr -s 3 ".wl[903].w[16:18]"  0.001751818561408235 0.98919778649487056 
		0.0090503949437212503;
	setAttr -s 3 ".wl[904].w[16:18]"  0.0024980847417942422 0.9874333555537792 
		0.010068559704426465;
	setAttr -s 3 ".wl[905].w[16:18]"  0.0029437937476556575 0.9860248162510894 
		0.011031390001254865;
	setAttr -s 3 ".wl[906].w[16:18]"  0.0024672127815859651 0.98713418424053079 
		0.010398602977883288;
	setAttr -s 3 ".wl[907].w[16:18]"  0.0016761700601633884 0.98817711905335603 
		0.010146710886480604;
	setAttr -s 3 ".wl[908].w[16:18]"  0.0018244634200053466 0.98640728138307854 
		0.011768255196916216;
	setAttr -s 3 ".wl[909].w[16:18]"  0.0018840776582120355 0.98746427107734591 
		0.010651651264441972;
	setAttr -s 3 ".wl[910].w[16:18]"  0.0027608030689780252 0.98583364306262622 
		0.011405553868395884;
	setAttr -s 3 ".wl[911].w[16:18]"  0.0034356790107163294 0.98413838248159302 
		0.012425938507690651;
	setAttr -s 3 ".wl[912].w[16:18]"  0.0030042858331047859 0.98583006739600654 
		0.01116564677088858;
	setAttr -s 3 ".wl[913].w[16:18]"  0.0022786321501453485 0.9865076889096942 
		0.011213678940160647;
	setAttr -s 3 ".wl[914].w[16:18]"  0.002282238696553399 0.98858122841060636 
		0.0091365328928400581;
	setAttr -s 3 ".wl[915].w[16:18]"  0.002137674408658983 0.98919558951722186 
		0.0086667360741192537;
	setAttr -s 3 ".wl[916].w[16:18]"  0.0026497259178929382 0.98793242998318442 
		0.0094178440989226165;
	setAttr -s 3 ".wl[917].w[16:18]"  0.0033657681726797233 0.98573415238928608 
		0.010900079438034263;
	setAttr -s 3 ".wl[918].w[16:18]"  0.0030067716208696973 0.9875460863543627 
		0.009447142024767664;
	setAttr -s 3 ".wl[919].w[16:18]"  0.002483639645487732 0.98905044128295905 
		0.0084659190715530783;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-016 0.99999999999999978 0 0 -0.99999999999999978 2.2204460492503121e-016 0 0
		 0 0 1 0 58.207910400748609 0.041198755945325134 7.1435558983070528 1;
	setAttr ".pm[1]" -type "matrix" 0.96034622675362424 0.27881019486395386 0 0 -0.27881019486395386 0.96034622675362424 0 0
		 0 0 1 0 10.615763127017956 -36.417640008289844 7.1435558983070537 1;
	setAttr ".pm[2]" -type "matrix" 0.06049506040188965 0.99816849663119067 0 0 -0.99816849663119067 0.06049506040188965 0 0
		 0 0 1 0 34.2273527240419 -12.44080232981568 7.1435558983070502 1;
	setAttr ".pm[3]" -type "matrix" 0.070530981060382775 0.99750958928255884 0 0 -0.99750958928255884 0.070530981060382775 0 0
		 0 0 1 0 17.48260653569897 -12.617270047905842 7.1435558983070528 1;
	setAttr ".pm[4]" -type "matrix" -0.57263258890055213 0.81981212367776701 1.7276248860817934e-008 0
		 0.81981212367776712 0.57263258890055213 1.2067329606299989e-008 0 0 2.107342446134461e-008 -0.99999999999999978 0
		 5.7455891279177775 -11.265484295786008 -7.143556135709388 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999978 -1.6653345369377341e-016 0 0
		 1.6653345369377341e-016 0.99999999999999978 0 0 0 0 1 0 10.932504342339923 -35.084830848095514 7.1435558983070502 1;
	setAttr ".pm[6]" -type "matrix" -0.10254927073755454 -0.99472792615428041 1.2558663616364149e-017 0
		 -0.99472792615428041 0.10254927073755443 1.218190370787324e-016 0 -1.2246467991473532e-016 -1.5407439555097883e-033 -1 0
		 16.691958669494099 -13.553500323064045 -7.1435558983070546 1;
	setAttr ".pm[7]" -type "matrix" 1 -2.7755575615628914e-016 -1.3502334353109947e-016 0
		 4.9960036108132044e-016 1 -1.2181903707873248e-016 0 1.3502334353109952e-016 1.2181903707873245e-016 1 0
		 13.445882554584792 -1.7406798989799086 7.1435558983070511 1;
	setAttr ".pm[8]" -type "matrix" 0.0060944147241328928 -0.99998142888214159 0 0 0.99998142888214159 0.0060944147241328928 0 0
		 0 0 1 0 -82.003984008261696 -0.53763682149255043 7.1435558983070528 1;
	setAttr ".pm[9]" -type "matrix" -0.00276220238962392 0.9999961851117023 -3.3827223150499857e-019 0
		 0.99999618511170252 0.0027622023896239217 1.2246421272566101e-016 0 1.2246467991473532e-016 1.2085210401029897e-032 -1 0
		 -90.390138530711098 -0.26291759966027828 -7.1435558983070644 1;
	setAttr ".pm[10]" -type "matrix" 1.8570214810331704e-015 0.99999999999999956 3.3827223150477126e-019 0
		 -0.99999999999999956 1.858322523640153e-015 4.6718907426101514e-022 0 4.671890742844102e-022 -3.3827223150477102e-019 1 0
		 117.67039933533403 0.062112095522251949 7.1435558983070475 1;
	setAttr ".pm[11]" -type "matrix" 0.99999999999999956 -3.4035274598664924e-015 0 0
		 3.4035274598664924e-015 0.99999999999999956 0 0 0 0 1 0 -16.065805044737409 -78.710899925148482 7.1435558983070537 1;
	setAttr ".pm[12]" -type "matrix" 0.37204835137190068 0.92821335060504795 0 0 -0.92821335060504795 0.37204835137190068 0 0
		 0 0 1 0 65.8966931351179 -47.157068514652082 7.143555898307052 1;
	setAttr ".pm[13]" -type "matrix" 0.37204835137190068 0.92821335060504795 0 0 -0.92821335060504795 0.37204835137190068 0 0
		 0 0 1 0 48.819186765902529 -47.157068514652039 7.1435558983070502 1;
	setAttr ".pm[14]" -type "matrix" 0.93046352959620815 -0.3663845249070512 0 0 0.3663845249070512 0.93046352959620815 0 0
		 0 0 1 0 -46.975527592673579 -30.109121093821049 7.1435558983070528 1;
	setAttr ".pm[15]" -type "matrix" -0.99986114003959969 0.016664352333999481 2.0407945745696189e-018 0
		 0.016664352333999481 0.99986114003959969 1.2244767447413193e-016 0 -3.85185988877447e-034 1.2246467991473535e-016 -1 0
		 -17.743787449315459 -78.389614204493057 -7.1435558983070626 1;
	setAttr ".pm[16]" -type "matrix" -0.37204835137189746 -0.92821335060504939 -1.5719533856342616e-016 0
		 -0.92821335060504939 0.37204835137189746 5.4337105863264937e-017 0 8.0478394603475565e-018 1.6612684256220104e-016 -1 0
		 65.770083940344904 -47.518347363380485 -7.1435558983070608 1;
	setAttr ".pm[17]" -type "matrix" -0.36940989091878557 -0.9292665562105259 2.6138588267182923e-016 0
		 -0.9292665562105259 0.36940989091878557 1.1072962699620887e-015 0 -1.1255319218979422e-015 1.6614903526897406e-016 -1 0
		 48.82487302129374 -47.379832092060887 -7.1435558983071159 1;
	setAttr ".pm[18]" -type "matrix" -0.92592869569482916 -0.37769835912917621 -2.1513117401675378e-016 0
		 0.37769835912917632 -0.92592869569482916 -9.9390270861995267e-016 0 1.7619929481916999e-016 -1.0015377300636925e-015 1 0
		 -47.626346486715114 29.630776230824658 7.1435558983070999 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 19 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 19 ".lw";
	setAttr -s 19 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 19 ".ifcl";
	setAttr -s 19 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "53164149-4764-4BD5-12C2-AFB8CA4D13E5";
createNode objectSet -n "skinCluster1Set";
	rename -uid "3052E3D3-4F9B-F1CC-615C-3C8CB319D8E5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "A0B91BEA-49A1-3B9C-9B5D-B3B6913738D1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "AD6A3BAE-4C0C-C251-C89D-80A5A592CB6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:919]";
createNode objectSet -n "tweakSet1";
	rename -uid "8E989206-4C3C-6114-0CC3-1AB2415E13EB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "B879C4C5-4070-E2A3-6F4B-C49FFA6E748C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "F76B79C7-441F-1F7C-54BE-748233128D2F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "15A31633-4CD3-1FB0-AF85-6AB12F852B31";
	setAttr -s 19 ".wm";
	setAttr -s 19 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.041198755945338075
		 58.207910400748624 -7.1435558983070528 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.274584245442171 -4.5102810375396984e-015
		 8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.60049554750058132 0.79962809945122437 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.817588130755228 -1.4210854715202004e-014
		 1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.57602267488051651 0.81743371475826387 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 -6.0715321659188248e-016 0 16.618733467146736
		 1.7763568394002505e-015 -2.6645352591003757e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.0050287638231888126 0.99998735568726593 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.1020259538958944e-039 -6.6174449004242199e-024
		 3.3306690738754691e-016 0 16.629711011346913 7.1054273576010019e-015 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.26630922528052303 -0.96388764725484855 -1.0156206761824116e-008 2.8060236711541537e-009 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -1.1102230246251565e-016 0 -9.6652346926421799
		 -5.7721487530709652 1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.14080797783928206 0.99003692525926135 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.83779273741492233 -17.090971843265258
		 -2.6645352591003757e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.66986966242040147 0.74247871038082791 4.1017686896453136e-017 4.5463708805146777e-017 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -1.2325951644078312e-032 -6.8422776578360239e-049
		 -1.1102230246251568e-016 0 16.339321213878851 8.8817841970012523e-015 -1.7763568394002505e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.66986966242040147 0.74247871038082802 4.1017686896453136e-017 4.5463708805146789e-017 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -23.797827283622404 0.0033382065470783377
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99999535720975774 0.0030472215096768499 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -3.1415926535897931 3.1415926535897931
		 3.1415926535897927 0 8.3849379673516751 -1.3267165144270621e-013 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99999019496637487 0.0044283147033039247 2.7115607135091562e-019 6.1231739572215429e-017 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -2.4045235355674635e-031 -1.1886598875530127e-034
		 -1.2607102861661442e-015 0 27.279983471372276 1.8318679906315083e-014 -2.6645352591003757e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0013811025119996128 0.99999904627747083 8.4568138530734744e-020 6.1232281558705524e-017 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1966341536926848 -16.123446638817146
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70494878724481247 0.70925820923135474 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 -1.1895815115742951 0 3.1892594841792286
		 1.4210854715202004e-014 8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.077506369215371 -4.2632564145606011e-014
		 8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 2.2204460492503136e-016 0 18.996913179152791
		 0.001084160887145913 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70494878724481247 0.70925820923135474 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4311891040331521 16.376543889194437
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.71083418404168019 0.7033596255101644 4.3068355701525193e-017 4.3526040410558214e-017 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 3.1415926535897931 3.1415926535897931
		 1.9520111420154949 0 3.2029464855406071 -2.8421709430404007e-014 8.8817841970012523e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0083324654334741757 0.9999652844073138 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 3.4790961853596706e-019 6.2831853071795853
		 -1.1985800790418323e-034 0 17.08000919743187 -7.1054273576010019e-014 -8.8817841970012523e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0014204502464044946 0.99999899116003987 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 1.0873158023275545e-015 7.3730409095577713e-018
		 -3.5527136788005009e-015 0 18.769727053315258 -0.020144798357712546 -1.1546319456101628e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70394061006624131 -0.7102588383818732 4.3490810649523912e-017 4.3103930745372872e-017 1
		 1 1 yes;
	setAttr -s 19 ".m";
	setAttr -s 19 ".p";
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "872B3540-427B-60B3-1980-FA87149CD97E";
	setAttr ".mi" 3;
	setAttr ".gvr" 512;
createNode groupParts -n "groupParts5";
	rename -uid "68D50D75-452B-3E7A-0663-409D9851996A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:923]";
	setAttr ".gi" 184;
createNode groupParts -n "groupParts6";
	rename -uid "15062B7A-4896-020D-E893-608D54BC61F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "e[376:387]";
	setAttr ".gi" 185;
createNode groupParts -n "groupParts9";
	rename -uid "D2C01B0D-4A02-D8A3-27A5-069DF47E3A83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[42:151]";
	setAttr ".gi" 188;
createNode groupParts -n "groupParts10";
	rename -uid "395B0A54-4DB2-8F36-C1F9-D5B30D388167";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[0:923]";
	setAttr ".gi" 184;
createNode groupParts -n "groupParts11";
	rename -uid "B37CDFA1-4424-8FBF-B28D-BC89632421CE";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "e[376:387]";
	setAttr ".gi" 185;
createNode groupParts -n "groupParts12";
	rename -uid "C9E3E31D-44CA-9BFB-6027-8FA943364AF8";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[42:151]";
	setAttr ".gi" 188;
createNode groupId -n "groupId6";
	rename -uid "D4861266-4187-A959-F61B-2B8379EF6594";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "37F8D5C8-4403-5CEA-982C-A78304F22865";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "e[376:387]";
createNode groupId -n "groupId7";
	rename -uid "1907C81C-4FE0-9EB2-60C6-5DB9E72FD186";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "DE84D982-4BD3-C057-099C-B1AE3C167F1C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[42:151]";
createNode psdFileTex -n "PSD_lambert1_color";
	rename -uid "25665E6A-4722-9F25-9C9F-FDA8D7A6250E";
	setAttr ".ftn" -type "string" "C:/Users/Kevin Li/Desktop/Game Production/CastleSilVR//sourceimages/HeroUV.psd";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".lsn" -type "string" "lambert1.color";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "F1B8FBEF-4923-FBF5-35AD-67BC67EC7E2B";
createNode file -n "file2";
	rename -uid "2973DAAD-4E26-AAF6-9187-7B9DFA98089C";
	setAttr ".ftn" -type "string" "C:/Users/Kevin Li/Desktop/Game Production/CastleSilVR//sourceimages/Hero03.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "F847EC69-4FCE-38C3-863E-D699730BC847";
createNode lambert -n "CharacterTexture";
	rename -uid "4EB98A20-4D89-B01A-275E-32A2C1FC4371";
createNode shadingEngine -n "lambert2SG";
	rename -uid "4FBC27F3-4D22-59D7-D5EE-E690ACFC87CD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "541E2DB6-47FE-DB27-0492-08AA06AA3480";
createNode file -n "file3";
	rename -uid "E6F16BA7-46C4-FBE5-5F90-75A47EB8BFBF";
	setAttr ".ftn" -type "string" "C:/Users/Kevin Li/Desktop/Game Production/CastleSilVR//sourceimages/Hero09.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "F5C15ABB-44FC-A3BA-7F69-61AC7D1A86CB";
select -ne :time1;
	setAttr ".o" 324;
	setAttr ".unw" 324;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :lambert1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "joint1_parentConstraint1.ctx" "Joint_Main.tx";
connectAttr "joint1_parentConstraint1.cty" "Joint_Main.ty";
connectAttr "joint1_parentConstraint1.ctz" "Joint_Main.tz";
connectAttr "joint1_parentConstraint1.crx" "Joint_Main.rx";
connectAttr "joint1_parentConstraint1.cry" "Joint_Main.ry";
connectAttr "joint1_parentConstraint1.crz" "Joint_Main.rz";
connectAttr "Joint_Main.s" "Joint_Waist.is";
connectAttr "joint2_parentConstraint1.ctx" "Joint_Waist.tx";
connectAttr "joint2_parentConstraint1.cty" "Joint_Waist.ty";
connectAttr "joint2_parentConstraint1.ctz" "Joint_Waist.tz";
connectAttr "joint2_parentConstraint1.crx" "Joint_Waist.rx";
connectAttr "joint2_parentConstraint1.cry" "Joint_Waist.ry";
connectAttr "joint2_parentConstraint1.crz" "Joint_Waist.rz";
connectAttr "Joint_Waist.s" "Joint_Leg_Left.is";
connectAttr "joint3_orientConstraint1.crx" "Joint_Leg_Left.rx";
connectAttr "joint3_orientConstraint1.cry" "Joint_Leg_Left.ry";
connectAttr "joint3_orientConstraint1.crz" "Joint_Leg_Left.rz";
connectAttr "Joint_Leg_Left.s" "Joint_Knee_Left.is";
connectAttr "joint4_parentConstraint1.ctx" "Joint_Knee_Left.tx";
connectAttr "joint4_parentConstraint1.cty" "Joint_Knee_Left.ty";
connectAttr "joint4_parentConstraint1.ctz" "Joint_Knee_Left.tz";
connectAttr "joint4_parentConstraint1.crx" "Joint_Knee_Left.rx";
connectAttr "joint4_parentConstraint1.cry" "Joint_Knee_Left.ry";
connectAttr "joint4_parentConstraint1.crz" "Joint_Knee_Left.rz";
connectAttr "Joint_Knee_Left.s" "Joint_Feet_Left.is";
connectAttr "joint5_parentConstraint1.ctx" "Joint_Feet_Left.tx";
connectAttr "joint5_parentConstraint1.cty" "Joint_Feet_Left.ty";
connectAttr "joint5_parentConstraint1.ctz" "Joint_Feet_Left.tz";
connectAttr "joint5_parentConstraint1.crx" "Joint_Feet_Left.rx";
connectAttr "joint5_parentConstraint1.cry" "Joint_Feet_Left.ry";
connectAttr "joint5_parentConstraint1.crz" "Joint_Feet_Left.rz";
connectAttr "Joint_Feet_Left.ro" "joint5_parentConstraint1.cro";
connectAttr "Joint_Feet_Left.pim" "joint5_parentConstraint1.cpim";
connectAttr "Joint_Feet_Left.rp" "joint5_parentConstraint1.crp";
connectAttr "Joint_Feet_Left.rpt" "joint5_parentConstraint1.crt";
connectAttr "Joint_Feet_Left.jo" "joint5_parentConstraint1.cjo";
connectAttr "nurbsCircle14.t" "joint5_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle14.rp" "joint5_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle14.rpt" "joint5_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle14.r" "joint5_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle14.ro" "joint5_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle14.s" "joint5_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle14.pm" "joint5_parentConstraint1.tg[0].tpm";
connectAttr "joint5_parentConstraint1.w0" "joint5_parentConstraint1.tg[0].tw";
connectAttr "Joint_Knee_Left.ro" "joint4_parentConstraint1.cro";
connectAttr "Joint_Knee_Left.pim" "joint4_parentConstraint1.cpim";
connectAttr "Joint_Knee_Left.rp" "joint4_parentConstraint1.crp";
connectAttr "Joint_Knee_Left.rpt" "joint4_parentConstraint1.crt";
connectAttr "Joint_Knee_Left.jo" "joint4_parentConstraint1.cjo";
connectAttr "nurbsCircle15.t" "joint4_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle15.rp" "joint4_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle15.rpt" "joint4_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle15.r" "joint4_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle15.ro" "joint4_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle15.s" "joint4_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle15.pm" "joint4_parentConstraint1.tg[0].tpm";
connectAttr "joint4_parentConstraint1.w0" "joint4_parentConstraint1.tg[0].tw";
connectAttr "Joint_Leg_Left.ro" "joint3_orientConstraint1.cro";
connectAttr "Joint_Leg_Left.pim" "joint3_orientConstraint1.cpim";
connectAttr "Joint_Leg_Left.jo" "joint3_orientConstraint1.cjo";
connectAttr "Joint_Leg_Left.is" "joint3_orientConstraint1.is";
connectAttr "nurbsCircle16.r" "joint3_orientConstraint1.tg[0].tr";
connectAttr "nurbsCircle16.ro" "joint3_orientConstraint1.tg[0].tro";
connectAttr "nurbsCircle16.pm" "joint3_orientConstraint1.tg[0].tpm";
connectAttr "joint3_orientConstraint1.w0" "joint3_orientConstraint1.tg[0].tw";
connectAttr "Joint_Waist.s" "Joint_Leg_Right.is";
connectAttr "joint6_orientConstraint1.crx" "Joint_Leg_Right.rx";
connectAttr "joint6_orientConstraint1.cry" "Joint_Leg_Right.ry";
connectAttr "joint6_orientConstraint1.crz" "Joint_Leg_Right.rz";
connectAttr "Joint_Leg_Right.s" "Joint_Knee_Right.is";
connectAttr "joint7_parentConstraint1.ctx" "Joint_Knee_Right.tx";
connectAttr "joint7_parentConstraint1.cty" "Joint_Knee_Right.ty";
connectAttr "joint7_parentConstraint1.ctz" "Joint_Knee_Right.tz";
connectAttr "joint7_parentConstraint1.crx" "Joint_Knee_Right.rx";
connectAttr "joint7_parentConstraint1.cry" "Joint_Knee_Right.ry";
connectAttr "joint7_parentConstraint1.crz" "Joint_Knee_Right.rz";
connectAttr "Joint_Knee_Right.s" "Joint_Feet_Right.is";
connectAttr "joint8_parentConstraint1.ctx" "Joint_Feet_Right.tx";
connectAttr "joint8_parentConstraint1.cty" "Joint_Feet_Right.ty";
connectAttr "joint8_parentConstraint1.ctz" "Joint_Feet_Right.tz";
connectAttr "joint8_parentConstraint1.crx" "Joint_Feet_Right.rx";
connectAttr "joint8_parentConstraint1.cry" "Joint_Feet_Right.ry";
connectAttr "joint8_parentConstraint1.crz" "Joint_Feet_Right.rz";
connectAttr "Joint_Feet_Right.ro" "joint8_parentConstraint1.cro";
connectAttr "Joint_Feet_Right.pim" "joint8_parentConstraint1.cpim";
connectAttr "Joint_Feet_Right.rp" "joint8_parentConstraint1.crp";
connectAttr "Joint_Feet_Right.rpt" "joint8_parentConstraint1.crt";
connectAttr "Joint_Feet_Right.jo" "joint8_parentConstraint1.cjo";
connectAttr "nurbsCircle12.t" "joint8_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle12.rp" "joint8_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle12.rpt" "joint8_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle12.r" "joint8_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle12.ro" "joint8_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle12.s" "joint8_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle12.pm" "joint8_parentConstraint1.tg[0].tpm";
connectAttr "joint8_parentConstraint1.w0" "joint8_parentConstraint1.tg[0].tw";
connectAttr "Joint_Knee_Right.ro" "joint7_parentConstraint1.cro";
connectAttr "Joint_Knee_Right.pim" "joint7_parentConstraint1.cpim";
connectAttr "Joint_Knee_Right.rp" "joint7_parentConstraint1.crp";
connectAttr "Joint_Knee_Right.rpt" "joint7_parentConstraint1.crt";
connectAttr "Joint_Knee_Right.jo" "joint7_parentConstraint1.cjo";
connectAttr "nurbsCircle11.t" "joint7_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle11.rp" "joint7_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle11.rpt" "joint7_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle11.r" "joint7_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle11.ro" "joint7_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle11.s" "joint7_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle11.pm" "joint7_parentConstraint1.tg[0].tpm";
connectAttr "joint7_parentConstraint1.w0" "joint7_parentConstraint1.tg[0].tw";
connectAttr "Joint_Leg_Right.ro" "joint6_orientConstraint1.cro";
connectAttr "Joint_Leg_Right.pim" "joint6_orientConstraint1.cpim";
connectAttr "Joint_Leg_Right.jo" "joint6_orientConstraint1.cjo";
connectAttr "Joint_Leg_Right.is" "joint6_orientConstraint1.is";
connectAttr "nurbsCircle13.r" "joint6_orientConstraint1.tg[0].tr";
connectAttr "nurbsCircle13.ro" "joint6_orientConstraint1.tg[0].tro";
connectAttr "nurbsCircle13.pm" "joint6_orientConstraint1.tg[0].tpm";
connectAttr "joint6_orientConstraint1.w0" "joint6_orientConstraint1.tg[0].tw";
connectAttr "Joint_Waist.ro" "joint2_parentConstraint1.cro";
connectAttr "Joint_Waist.pim" "joint2_parentConstraint1.cpim";
connectAttr "Joint_Waist.rp" "joint2_parentConstraint1.crp";
connectAttr "Joint_Waist.rpt" "joint2_parentConstraint1.crt";
connectAttr "Joint_Waist.jo" "joint2_parentConstraint1.cjo";
connectAttr "nurbsCircle10.t" "joint2_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle10.rp" "joint2_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle10.rpt" "joint2_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle10.r" "joint2_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle10.ro" "joint2_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle10.s" "joint2_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle10.pm" "joint2_parentConstraint1.tg[0].tpm";
connectAttr "joint2_parentConstraint1.w0" "joint2_parentConstraint1.tg[0].tw";
connectAttr "Joint_Main.s" "Joint_Sholder.is";
connectAttr "Joint_Sholder.s" "Joint_Neck.is";
connectAttr "joint10_orientConstraint1.crx" "Joint_Neck.rx";
connectAttr "joint10_orientConstraint1.cry" "Joint_Neck.ry";
connectAttr "joint10_orientConstraint1.crz" "Joint_Neck.rz";
connectAttr "Joint_Neck.s" "joint11.is";
connectAttr "joint11_parentConstraint1.crx" "joint11.rx";
connectAttr "joint11_parentConstraint1.cry" "joint11.ry";
connectAttr "joint11_parentConstraint1.crz" "joint11.rz";
connectAttr "joint11_parentConstraint1.ctx" "joint11.tx";
connectAttr "joint11_parentConstraint1.cty" "joint11.ty";
connectAttr "joint11_parentConstraint1.ctz" "joint11.tz";
connectAttr "joint11.ro" "joint11_parentConstraint1.cro";
connectAttr "joint11.pim" "joint11_parentConstraint1.cpim";
connectAttr "joint11.rp" "joint11_parentConstraint1.crp";
connectAttr "joint11.rpt" "joint11_parentConstraint1.crt";
connectAttr "joint11.jo" "joint11_parentConstraint1.cjo";
connectAttr "nurbsCircle7.t" "joint11_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle7.rp" "joint11_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle7.rpt" "joint11_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle7.r" "joint11_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle7.ro" "joint11_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle7.s" "joint11_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle7.pm" "joint11_parentConstraint1.tg[0].tpm";
connectAttr "joint11_parentConstraint1.w0" "joint11_parentConstraint1.tg[0].tw";
connectAttr "Joint_Neck.ro" "joint10_orientConstraint1.cro";
connectAttr "Joint_Neck.pim" "joint10_orientConstraint1.cpim";
connectAttr "Joint_Neck.jo" "joint10_orientConstraint1.cjo";
connectAttr "Joint_Neck.is" "joint10_orientConstraint1.is";
connectAttr "nurbsCircle8.r" "joint10_orientConstraint1.tg[0].tr";
connectAttr "nurbsCircle8.ro" "joint10_orientConstraint1.tg[0].tro";
connectAttr "nurbsCircle8.pm" "joint10_orientConstraint1.tg[0].tpm";
connectAttr "joint10_orientConstraint1.w0" "joint10_orientConstraint1.tg[0].tw";
connectAttr "Joint_Sholder.s" "Joint_Arm_Left.is";
connectAttr "Joint_Arm_Left.s" "Joint_Upper_Left.is";
connectAttr "joint13_orientConstraint1.crx" "Joint_Upper_Left.rx";
connectAttr "joint13_orientConstraint1.cry" "Joint_Upper_Left.ry";
connectAttr "joint13_orientConstraint1.crz" "Joint_Upper_Left.rz";
connectAttr "Joint_Upper_Left.s" "Joint_Elbow_Left.is";
connectAttr "joint14_orientConstraint1.crx" "Joint_Elbow_Left.rx";
connectAttr "joint14_orientConstraint1.cry" "Joint_Elbow_Left.ry";
connectAttr "joint14_orientConstraint1.crz" "Joint_Elbow_Left.rz";
connectAttr "Joint_Elbow_Left.s" "Joint_Fist_Left.is";
connectAttr "joint15_parentConstraint1.ctx" "Joint_Fist_Left.tx";
connectAttr "joint15_parentConstraint1.cty" "Joint_Fist_Left.ty";
connectAttr "joint15_parentConstraint1.ctz" "Joint_Fist_Left.tz";
connectAttr "joint15_parentConstraint1.crx" "Joint_Fist_Left.rx";
connectAttr "joint15_parentConstraint1.cry" "Joint_Fist_Left.ry";
connectAttr "joint15_parentConstraint1.crz" "Joint_Fist_Left.rz";
connectAttr "Joint_Fist_Left.ro" "joint15_parentConstraint1.cro";
connectAttr "Joint_Fist_Left.pim" "joint15_parentConstraint1.cpim";
connectAttr "Joint_Fist_Left.rp" "joint15_parentConstraint1.crp";
connectAttr "Joint_Fist_Left.rpt" "joint15_parentConstraint1.crt";
connectAttr "Joint_Fist_Left.jo" "joint15_parentConstraint1.cjo";
connectAttr "nurbsCircle3.t" "joint15_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle3.rp" "joint15_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle3.rpt" "joint15_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle3.r" "joint15_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle3.ro" "joint15_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle3.s" "joint15_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle3.pm" "joint15_parentConstraint1.tg[0].tpm";
connectAttr "joint15_parentConstraint1.w0" "joint15_parentConstraint1.tg[0].tw";
connectAttr "Joint_Elbow_Left.ro" "joint14_orientConstraint1.cro";
connectAttr "Joint_Elbow_Left.pim" "joint14_orientConstraint1.cpim";
connectAttr "Joint_Elbow_Left.jo" "joint14_orientConstraint1.cjo";
connectAttr "Joint_Elbow_Left.is" "joint14_orientConstraint1.is";
connectAttr "nurbsCircle2.r" "joint14_orientConstraint1.tg[0].tr";
connectAttr "nurbsCircle2.ro" "joint14_orientConstraint1.tg[0].tro";
connectAttr "nurbsCircle2.pm" "joint14_orientConstraint1.tg[0].tpm";
connectAttr "joint14_orientConstraint1.w0" "joint14_orientConstraint1.tg[0].tw";
connectAttr "Joint_Upper_Left.ro" "joint13_orientConstraint1.cro";
connectAttr "Joint_Upper_Left.pim" "joint13_orientConstraint1.cpim";
connectAttr "Joint_Upper_Left.jo" "joint13_orientConstraint1.cjo";
connectAttr "Joint_Upper_Left.is" "joint13_orientConstraint1.is";
connectAttr "nurbsCircle1.r" "joint13_orientConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint13_orientConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.pm" "joint13_orientConstraint1.tg[0].tpm";
connectAttr "joint13_orientConstraint1.w0" "joint13_orientConstraint1.tg[0].tw";
connectAttr "Joint_Sholder.s" "Joint_Arm_Right.is";
connectAttr "Joint_Arm_Right.s" "Joint_Upper_Right.is";
connectAttr "joint17_orientConstraint1.crx" "Joint_Upper_Right.rx";
connectAttr "joint17_orientConstraint1.cry" "Joint_Upper_Right.ry";
connectAttr "joint17_orientConstraint1.crz" "Joint_Upper_Right.rz";
connectAttr "Joint_Upper_Right.s" "Joint_Elbow_Right.is";
connectAttr "joint18_orientConstraint1.crx" "Joint_Elbow_Right.rx";
connectAttr "joint18_orientConstraint1.cry" "Joint_Elbow_Right.ry";
connectAttr "joint18_orientConstraint1.crz" "Joint_Elbow_Right.rz";
connectAttr "Joint_Elbow_Right.s" "Joint_Fist_Right.is";
connectAttr "joint19_parentConstraint1.ctx" "Joint_Fist_Right.tx";
connectAttr "joint19_parentConstraint1.cty" "Joint_Fist_Right.ty";
connectAttr "joint19_parentConstraint1.ctz" "Joint_Fist_Right.tz";
connectAttr "joint19_parentConstraint1.crx" "Joint_Fist_Right.rx";
connectAttr "joint19_parentConstraint1.cry" "Joint_Fist_Right.ry";
connectAttr "joint19_parentConstraint1.crz" "Joint_Fist_Right.rz";
connectAttr "Joint_Fist_Right.ro" "joint19_parentConstraint1.cro";
connectAttr "Joint_Fist_Right.pim" "joint19_parentConstraint1.cpim";
connectAttr "Joint_Fist_Right.rp" "joint19_parentConstraint1.crp";
connectAttr "Joint_Fist_Right.rpt" "joint19_parentConstraint1.crt";
connectAttr "Joint_Fist_Right.jo" "joint19_parentConstraint1.cjo";
connectAttr "nurbsCircle6.t" "joint19_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle6.rp" "joint19_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle6.rpt" "joint19_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle6.r" "joint19_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle6.ro" "joint19_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle6.s" "joint19_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle6.pm" "joint19_parentConstraint1.tg[0].tpm";
connectAttr "joint19_parentConstraint1.w0" "joint19_parentConstraint1.tg[0].tw";
connectAttr "Joint_Elbow_Right.ro" "joint18_orientConstraint1.cro";
connectAttr "Joint_Elbow_Right.pim" "joint18_orientConstraint1.cpim";
connectAttr "Joint_Elbow_Right.jo" "joint18_orientConstraint1.cjo";
connectAttr "Joint_Elbow_Right.is" "joint18_orientConstraint1.is";
connectAttr "nurbsCircle5.r" "joint18_orientConstraint1.tg[0].tr";
connectAttr "nurbsCircle5.ro" "joint18_orientConstraint1.tg[0].tro";
connectAttr "nurbsCircle5.pm" "joint18_orientConstraint1.tg[0].tpm";
connectAttr "joint18_orientConstraint1.w0" "joint18_orientConstraint1.tg[0].tw";
connectAttr "Joint_Upper_Right.ro" "joint17_orientConstraint1.cro";
connectAttr "Joint_Upper_Right.pim" "joint17_orientConstraint1.cpim";
connectAttr "Joint_Upper_Right.jo" "joint17_orientConstraint1.cjo";
connectAttr "Joint_Upper_Right.is" "joint17_orientConstraint1.is";
connectAttr "nurbsCircle4.r" "joint17_orientConstraint1.tg[0].tr";
connectAttr "nurbsCircle4.ro" "joint17_orientConstraint1.tg[0].tro";
connectAttr "nurbsCircle4.pm" "joint17_orientConstraint1.tg[0].tpm";
connectAttr "joint17_orientConstraint1.w0" "joint17_orientConstraint1.tg[0].tw";
connectAttr "Joint_Main.ro" "joint1_parentConstraint1.cro";
connectAttr "Joint_Main.pim" "joint1_parentConstraint1.cpim";
connectAttr "Joint_Main.rp" "joint1_parentConstraint1.crp";
connectAttr "Joint_Main.rpt" "joint1_parentConstraint1.crt";
connectAttr "Joint_Main.jo" "joint1_parentConstraint1.cjo";
connectAttr "nurbsCircle9.t" "joint1_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle9.rp" "joint1_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle9.rpt" "joint1_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle9.r" "joint1_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle9.ro" "joint1_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle9.s" "joint1_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle9.pm" "joint1_parentConstraint1.tg[0].tpm";
connectAttr "joint1_parentConstraint1.w0" "joint1_parentConstraint1.tg[0].tw";
connectAttr "nurbsCircle1_rotateX.o" "nurbsCircle1.rx";
connectAttr "nurbsCircle1_rotateY.o" "nurbsCircle1.ry";
connectAttr "nurbsCircle1_rotateZ.o" "nurbsCircle1.rz";
connectAttr "nurbsCircle1_visibility.o" "nurbsCircle1.v";
connectAttr "nurbsCircle1_translateX.o" "nurbsCircle1.tx";
connectAttr "nurbsCircle1_translateY.o" "nurbsCircle1.ty";
connectAttr "nurbsCircle1_translateZ.o" "nurbsCircle1.tz";
connectAttr "nurbsCircle1_scaleX.o" "nurbsCircle1.sx";
connectAttr "nurbsCircle1_scaleY.o" "nurbsCircle1.sy";
connectAttr "nurbsCircle1_scaleZ.o" "nurbsCircle1.sz";
connectAttr "nurbsCircle2_rotateX.o" "nurbsCircle2.rx";
connectAttr "nurbsCircle2_rotateY.o" "nurbsCircle2.ry";
connectAttr "nurbsCircle2_rotateZ.o" "nurbsCircle2.rz";
connectAttr "nurbsCircle2_visibility.o" "nurbsCircle2.v";
connectAttr "nurbsCircle2_translateX.o" "nurbsCircle2.tx";
connectAttr "nurbsCircle2_translateY.o" "nurbsCircle2.ty";
connectAttr "nurbsCircle2_translateZ.o" "nurbsCircle2.tz";
connectAttr "nurbsCircle2_scaleX.o" "nurbsCircle2.sx";
connectAttr "nurbsCircle2_scaleY.o" "nurbsCircle2.sy";
connectAttr "nurbsCircle2_scaleZ.o" "nurbsCircle2.sz";
connectAttr "nurbsCircle4_rotateX.o" "nurbsCircle4.rx";
connectAttr "nurbsCircle4_rotateY.o" "nurbsCircle4.ry";
connectAttr "nurbsCircle4_rotateZ.o" "nurbsCircle4.rz";
connectAttr "nurbsCircle4_visibility.o" "nurbsCircle4.v";
connectAttr "nurbsCircle4_translateX.o" "nurbsCircle4.tx";
connectAttr "nurbsCircle4_translateY.o" "nurbsCircle4.ty";
connectAttr "nurbsCircle4_translateZ.o" "nurbsCircle4.tz";
connectAttr "nurbsCircle4_scaleX.o" "nurbsCircle4.sx";
connectAttr "nurbsCircle4_scaleY.o" "nurbsCircle4.sy";
connectAttr "nurbsCircle4_scaleZ.o" "nurbsCircle4.sz";
connectAttr "nurbsCircle5_rotateX.o" "nurbsCircle5.rx";
connectAttr "nurbsCircle5_rotateY.o" "nurbsCircle5.ry";
connectAttr "nurbsCircle5_rotateZ.o" "nurbsCircle5.rz";
connectAttr "nurbsCircle5_visibility.o" "nurbsCircle5.v";
connectAttr "nurbsCircle5_translateX.o" "nurbsCircle5.tx";
connectAttr "nurbsCircle5_translateY.o" "nurbsCircle5.ty";
connectAttr "nurbsCircle5_translateZ.o" "nurbsCircle5.tz";
connectAttr "nurbsCircle5_scaleX.o" "nurbsCircle5.sx";
connectAttr "nurbsCircle5_scaleY.o" "nurbsCircle5.sy";
connectAttr "nurbsCircle5_scaleZ.o" "nurbsCircle5.sz";
connectAttr "nurbsCircle8_rotateX.o" "nurbsCircle8.rx";
connectAttr "nurbsCircle8_rotateY.o" "nurbsCircle8.ry";
connectAttr "nurbsCircle8_rotateZ.o" "nurbsCircle8.rz";
connectAttr "nurbsCircle8_visibility.o" "nurbsCircle8.v";
connectAttr "nurbsCircle8_translateX.o" "nurbsCircle8.tx";
connectAttr "nurbsCircle8_translateY.o" "nurbsCircle8.ty";
connectAttr "nurbsCircle8_translateZ.o" "nurbsCircle8.tz";
connectAttr "nurbsCircle8_scaleX.o" "nurbsCircle8.sx";
connectAttr "nurbsCircle8_scaleY.o" "nurbsCircle8.sy";
connectAttr "nurbsCircle8_scaleZ.o" "nurbsCircle8.sz";
connectAttr "nurbsCircle13_rotateX.o" "nurbsCircle13.rx";
connectAttr "nurbsCircle13_rotateY.o" "nurbsCircle13.ry";
connectAttr "nurbsCircle13_rotateZ.o" "nurbsCircle13.rz";
connectAttr "nurbsCircle13_visibility.o" "nurbsCircle13.v";
connectAttr "nurbsCircle13_translateX.o" "nurbsCircle13.tx";
connectAttr "nurbsCircle13_translateY.o" "nurbsCircle13.ty";
connectAttr "nurbsCircle13_translateZ.o" "nurbsCircle13.tz";
connectAttr "nurbsCircle13_scaleX.o" "nurbsCircle13.sx";
connectAttr "nurbsCircle13_scaleY.o" "nurbsCircle13.sy";
connectAttr "nurbsCircle13_scaleZ.o" "nurbsCircle13.sz";
connectAttr "nurbsCircle11_translateX.o" "nurbsCircle11.tx";
connectAttr "nurbsCircle11_translateY.o" "nurbsCircle11.ty";
connectAttr "nurbsCircle11_translateZ.o" "nurbsCircle11.tz";
connectAttr "nurbsCircle11_rotateX.o" "nurbsCircle11.rx";
connectAttr "nurbsCircle11_rotateY.o" "nurbsCircle11.ry";
connectAttr "nurbsCircle11_rotateZ.o" "nurbsCircle11.rz";
connectAttr "nurbsCircle11_scaleX.o" "nurbsCircle11.sx";
connectAttr "nurbsCircle11_scaleY.o" "nurbsCircle11.sy";
connectAttr "nurbsCircle11_scaleZ.o" "nurbsCircle11.sz";
connectAttr "nurbsCircle11_visibility.o" "nurbsCircle11.v";
connectAttr "nurbsCircle16_rotateX.o" "nurbsCircle16.rx";
connectAttr "nurbsCircle16_rotateY.o" "nurbsCircle16.ry";
connectAttr "nurbsCircle16_rotateZ.o" "nurbsCircle16.rz";
connectAttr "nurbsCircle16_visibility.o" "nurbsCircle16.v";
connectAttr "nurbsCircle16_translateX.o" "nurbsCircle16.tx";
connectAttr "nurbsCircle16_translateY.o" "nurbsCircle16.ty";
connectAttr "nurbsCircle16_translateZ.o" "nurbsCircle16.tz";
connectAttr "nurbsCircle16_scaleX.o" "nurbsCircle16.sx";
connectAttr "nurbsCircle16_scaleY.o" "nurbsCircle16.sy";
connectAttr "nurbsCircle16_scaleZ.o" "nurbsCircle16.sz";
connectAttr "nurbsCircle15_translateX.o" "nurbsCircle15.tx";
connectAttr "nurbsCircle15_translateY.o" "nurbsCircle15.ty";
connectAttr "nurbsCircle15_translateZ.o" "nurbsCircle15.tz";
connectAttr "nurbsCircle15_rotateX.o" "nurbsCircle15.rx";
connectAttr "nurbsCircle15_rotateY.o" "nurbsCircle15.ry";
connectAttr "nurbsCircle15_rotateZ.o" "nurbsCircle15.rz";
connectAttr "nurbsCircle15_scaleX.o" "nurbsCircle15.sx";
connectAttr "nurbsCircle15_scaleY.o" "nurbsCircle15.sy";
connectAttr "nurbsCircle15_scaleZ.o" "nurbsCircle15.sz";
connectAttr "nurbsCircle15_visibility.o" "nurbsCircle15.v";
connectAttr "groupParts15.og" "HeroShape.i";
connectAttr "groupId6.id" "HeroShape.iog.og[1].gid";
connectAttr "set1.mwc" "HeroShape.iog.og[1].gco";
connectAttr "skinCluster1GroupId.id" "HeroShape.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "HeroShape.iog.og[2].gco";
connectAttr "groupId4.id" "HeroShape.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "HeroShape.iog.og[3].gco";
connectAttr "groupId7.id" "HeroShape.iog.og[6].gid";
connectAttr "tweak1.vl[0].vt[0]" "HeroShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.o" "checker1.uv";
connectAttr "place2dTexture2.ofs" "checker1.fs";
connectAttr "groupId6.msg" "set1.gn" -na;
connectAttr "HeroShape.iog.og[1]" "set1.dsm" -na;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Joint_Main.wm" "skinCluster1.ma[0]";
connectAttr "Joint_Waist.wm" "skinCluster1.ma[1]";
connectAttr "Joint_Leg_Left.wm" "skinCluster1.ma[2]";
connectAttr "Joint_Knee_Left.wm" "skinCluster1.ma[3]";
connectAttr "Joint_Feet_Left.wm" "skinCluster1.ma[4]";
connectAttr "Joint_Leg_Right.wm" "skinCluster1.ma[5]";
connectAttr "Joint_Knee_Right.wm" "skinCluster1.ma[6]";
connectAttr "Joint_Feet_Right.wm" "skinCluster1.ma[7]";
connectAttr "Joint_Sholder.wm" "skinCluster1.ma[8]";
connectAttr "Joint_Neck.wm" "skinCluster1.ma[9]";
connectAttr "joint11.wm" "skinCluster1.ma[10]";
connectAttr "Joint_Arm_Left.wm" "skinCluster1.ma[11]";
connectAttr "Joint_Upper_Left.wm" "skinCluster1.ma[12]";
connectAttr "Joint_Elbow_Left.wm" "skinCluster1.ma[13]";
connectAttr "Joint_Fist_Left.wm" "skinCluster1.ma[14]";
connectAttr "Joint_Arm_Right.wm" "skinCluster1.ma[15]";
connectAttr "Joint_Upper_Right.wm" "skinCluster1.ma[16]";
connectAttr "Joint_Elbow_Right.wm" "skinCluster1.ma[17]";
connectAttr "Joint_Fist_Right.wm" "skinCluster1.ma[18]";
connectAttr "Joint_Main.liw" "skinCluster1.lw[0]";
connectAttr "Joint_Waist.liw" "skinCluster1.lw[1]";
connectAttr "Joint_Leg_Left.liw" "skinCluster1.lw[2]";
connectAttr "Joint_Knee_Left.liw" "skinCluster1.lw[3]";
connectAttr "Joint_Feet_Left.liw" "skinCluster1.lw[4]";
connectAttr "Joint_Leg_Right.liw" "skinCluster1.lw[5]";
connectAttr "Joint_Knee_Right.liw" "skinCluster1.lw[6]";
connectAttr "Joint_Feet_Right.liw" "skinCluster1.lw[7]";
connectAttr "Joint_Sholder.liw" "skinCluster1.lw[8]";
connectAttr "Joint_Neck.liw" "skinCluster1.lw[9]";
connectAttr "joint11.liw" "skinCluster1.lw[10]";
connectAttr "Joint_Arm_Left.liw" "skinCluster1.lw[11]";
connectAttr "Joint_Upper_Left.liw" "skinCluster1.lw[12]";
connectAttr "Joint_Elbow_Left.liw" "skinCluster1.lw[13]";
connectAttr "Joint_Fist_Left.liw" "skinCluster1.lw[14]";
connectAttr "Joint_Arm_Right.liw" "skinCluster1.lw[15]";
connectAttr "Joint_Upper_Right.liw" "skinCluster1.lw[16]";
connectAttr "Joint_Elbow_Right.liw" "skinCluster1.lw[17]";
connectAttr "Joint_Fist_Right.liw" "skinCluster1.lw[18]";
connectAttr "Joint_Main.obcc" "skinCluster1.ifcl[0]";
connectAttr "Joint_Waist.obcc" "skinCluster1.ifcl[1]";
connectAttr "Joint_Leg_Left.obcc" "skinCluster1.ifcl[2]";
connectAttr "Joint_Knee_Left.obcc" "skinCluster1.ifcl[3]";
connectAttr "Joint_Feet_Left.obcc" "skinCluster1.ifcl[4]";
connectAttr "Joint_Leg_Right.obcc" "skinCluster1.ifcl[5]";
connectAttr "Joint_Knee_Right.obcc" "skinCluster1.ifcl[6]";
connectAttr "Joint_Feet_Right.obcc" "skinCluster1.ifcl[7]";
connectAttr "Joint_Sholder.obcc" "skinCluster1.ifcl[8]";
connectAttr "Joint_Neck.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[10]";
connectAttr "Joint_Arm_Left.obcc" "skinCluster1.ifcl[11]";
connectAttr "Joint_Upper_Left.obcc" "skinCluster1.ifcl[12]";
connectAttr "Joint_Elbow_Left.obcc" "skinCluster1.ifcl[13]";
connectAttr "Joint_Fist_Left.obcc" "skinCluster1.ifcl[14]";
connectAttr "Joint_Arm_Right.obcc" "skinCluster1.ifcl[15]";
connectAttr "Joint_Upper_Right.obcc" "skinCluster1.ifcl[16]";
connectAttr "Joint_Elbow_Right.obcc" "skinCluster1.ifcl[17]";
connectAttr "Joint_Fist_Right.obcc" "skinCluster1.ifcl[18]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "Joint_Leg_Right.msg" "skinCluster1.ptt";
connectAttr "groupParts4.og" "tweak1.ip[0].ig";
connectAttr "groupId4.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "HeroShape.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet1.gn" -na;
connectAttr "HeroShape.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "HeroShapeOrig1.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "Joint_Main.msg" "bindPose1.m[0]";
connectAttr "Joint_Waist.msg" "bindPose1.m[1]";
connectAttr "Joint_Leg_Left.msg" "bindPose1.m[2]";
connectAttr "Joint_Knee_Left.msg" "bindPose1.m[3]";
connectAttr "Joint_Feet_Left.msg" "bindPose1.m[4]";
connectAttr "Joint_Leg_Right.msg" "bindPose1.m[5]";
connectAttr "Joint_Knee_Right.msg" "bindPose1.m[6]";
connectAttr "Joint_Feet_Right.msg" "bindPose1.m[7]";
connectAttr "Joint_Sholder.msg" "bindPose1.m[8]";
connectAttr "Joint_Neck.msg" "bindPose1.m[9]";
connectAttr "joint11.msg" "bindPose1.m[10]";
connectAttr "Joint_Arm_Left.msg" "bindPose1.m[11]";
connectAttr "Joint_Upper_Left.msg" "bindPose1.m[12]";
connectAttr "Joint_Elbow_Left.msg" "bindPose1.m[13]";
connectAttr "Joint_Fist_Left.msg" "bindPose1.m[14]";
connectAttr "Joint_Arm_Right.msg" "bindPose1.m[15]";
connectAttr "Joint_Upper_Right.msg" "bindPose1.m[16]";
connectAttr "Joint_Elbow_Right.msg" "bindPose1.m[17]";
connectAttr "Joint_Fist_Right.msg" "bindPose1.m[18]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[1]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[0]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[8]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[8]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "Joint_Main.bps" "bindPose1.wm[0]";
connectAttr "Joint_Waist.bps" "bindPose1.wm[1]";
connectAttr "Joint_Leg_Left.bps" "bindPose1.wm[2]";
connectAttr "Joint_Knee_Left.bps" "bindPose1.wm[3]";
connectAttr "Joint_Feet_Left.bps" "bindPose1.wm[4]";
connectAttr "Joint_Leg_Right.bps" "bindPose1.wm[5]";
connectAttr "Joint_Knee_Right.bps" "bindPose1.wm[6]";
connectAttr "Joint_Feet_Right.bps" "bindPose1.wm[7]";
connectAttr "Joint_Sholder.bps" "bindPose1.wm[8]";
connectAttr "Joint_Neck.bps" "bindPose1.wm[9]";
connectAttr "joint11.bps" "bindPose1.wm[10]";
connectAttr "Joint_Arm_Left.bps" "bindPose1.wm[11]";
connectAttr "Joint_Upper_Left.bps" "bindPose1.wm[12]";
connectAttr "Joint_Elbow_Left.bps" "bindPose1.wm[13]";
connectAttr "Joint_Fist_Left.bps" "bindPose1.wm[14]";
connectAttr "Joint_Arm_Right.bps" "bindPose1.wm[15]";
connectAttr "Joint_Upper_Right.bps" "bindPose1.wm[16]";
connectAttr "Joint_Elbow_Right.bps" "bindPose1.wm[17]";
connectAttr "Joint_Fist_Right.bps" "bindPose1.wm[18]";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "skinCluster1.og[0]" "groupParts5.ig";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupParts6.og" "groupParts9.ig";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupParts12.og" "groupParts14.ig";
connectAttr "groupId6.id" "groupParts14.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId7.id" "groupParts15.gi";
connectAttr "place2dTexture3.c" "PSD_lambert1_color.c";
connectAttr "place2dTexture3.tf" "PSD_lambert1_color.tf";
connectAttr "place2dTexture3.rf" "PSD_lambert1_color.rf";
connectAttr "place2dTexture3.mu" "PSD_lambert1_color.mu";
connectAttr "place2dTexture3.mv" "PSD_lambert1_color.mv";
connectAttr "place2dTexture3.s" "PSD_lambert1_color.s";
connectAttr "place2dTexture3.wu" "PSD_lambert1_color.wu";
connectAttr "place2dTexture3.wv" "PSD_lambert1_color.wv";
connectAttr "place2dTexture3.re" "PSD_lambert1_color.re";
connectAttr "place2dTexture3.of" "PSD_lambert1_color.of";
connectAttr "place2dTexture3.r" "PSD_lambert1_color.ro";
connectAttr "place2dTexture3.n" "PSD_lambert1_color.n";
connectAttr "place2dTexture3.vt1" "PSD_lambert1_color.vt1";
connectAttr "place2dTexture3.vt2" "PSD_lambert1_color.vt2";
connectAttr "place2dTexture3.vt3" "PSD_lambert1_color.vt3";
connectAttr "place2dTexture3.vc1" "PSD_lambert1_color.vc1";
connectAttr "place2dTexture3.o" "PSD_lambert1_color.uv";
connectAttr "place2dTexture3.ofs" "PSD_lambert1_color.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture4.c" "file2.c";
connectAttr "place2dTexture4.tf" "file2.tf";
connectAttr "place2dTexture4.rf" "file2.rf";
connectAttr "place2dTexture4.mu" "file2.mu";
connectAttr "place2dTexture4.mv" "file2.mv";
connectAttr "place2dTexture4.s" "file2.s";
connectAttr "place2dTexture4.wu" "file2.wu";
connectAttr "place2dTexture4.wv" "file2.wv";
connectAttr "place2dTexture4.re" "file2.re";
connectAttr "place2dTexture4.of" "file2.of";
connectAttr "place2dTexture4.r" "file2.ro";
connectAttr "place2dTexture4.n" "file2.n";
connectAttr "place2dTexture4.vt1" "file2.vt1";
connectAttr "place2dTexture4.vt2" "file2.vt2";
connectAttr "place2dTexture4.vt3" "file2.vt3";
connectAttr "place2dTexture4.vc1" "file2.vc1";
connectAttr "place2dTexture4.o" "file2.uv";
connectAttr "place2dTexture4.ofs" "file2.fs";
connectAttr "file3.oc" "CharacterTexture.c";
connectAttr "CharacterTexture.oc" "lambert2SG.ss";
connectAttr "HeroShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "CharacterTexture.msg" "materialInfo1.m";
connectAttr "file3.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture5.c" "file3.c";
connectAttr "place2dTexture5.tf" "file3.tf";
connectAttr "place2dTexture5.rf" "file3.rf";
connectAttr "place2dTexture5.mu" "file3.mu";
connectAttr "place2dTexture5.mv" "file3.mv";
connectAttr "place2dTexture5.s" "file3.s";
connectAttr "place2dTexture5.wu" "file3.wu";
connectAttr "place2dTexture5.wv" "file3.wv";
connectAttr "place2dTexture5.re" "file3.re";
connectAttr "place2dTexture5.of" "file3.of";
connectAttr "place2dTexture5.r" "file3.ro";
connectAttr "place2dTexture5.n" "file3.n";
connectAttr "place2dTexture5.vt1" "file3.vt1";
connectAttr "place2dTexture5.vt2" "file3.vt2";
connectAttr "place2dTexture5.vt3" "file3.vt3";
connectAttr "place2dTexture5.vc1" "file3.vc1";
connectAttr "place2dTexture5.o" "file3.uv";
connectAttr "place2dTexture5.ofs" "file3.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "CharacterTexture.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "PSD_lambert1_color.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.oc" ":lambert1.c";
connectAttr "file2.msg" ":initialMaterialInfo.t" -na;
connectAttr "groupId7.msg" ":defaultLastHiddenSet.gn" -na;
connectAttr "HeroShape.iog.og[6]" ":defaultLastHiddenSet.dsm" -na;
// End of Player_Maya_UV.ma
