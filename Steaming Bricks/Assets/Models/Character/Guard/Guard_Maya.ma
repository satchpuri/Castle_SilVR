//Maya ASCII 2017ff05 scene
//Name: Guard_Maya.ma
//Last modified: Sun, Apr 22, 2018 09:01:12 PM
//Codeset: 936
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.1.0.3";
requires "stereoCamera" "10.0";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "268000.13910 - 3.14.3.31 ";
currentUnit -linear meter -angle degree -time 29.97df;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -shared -name "persp";
	rename -uuid "8E74BAB7-4DBD-FDDD-A116-1E96B2F78CC1";
	setAttr ".translate" -type "double3" -1.3137643600188511 0.95007522767422214 3.2139013019487837 ;
	setAttr ".rotate" -type "double3" -2880.9383524670779 24095.799999974526 0 ;
createNode camera -shared -name "perspShape" -parent "persp";
	rename -uuid "930BB3A9-44F0-6719-03A7-85BDBA70C88E";
	setAttr -keyable off ".visibility";
	setAttr ".focalLength" 34.999999999999993;
	setAttr ".nearClipPlane" 0.001;
	setAttr ".farClipPlane" 100;
	setAttr ".focusDistance" 0.05;
	setAttr ".centerOfInterest" 4.9565917354609512;
	setAttr ".orthographicWidth" 0.1;
	setAttr ".imageName" -type "string" "persp";
	setAttr ".depthName" -type "string" "persp_depth";
	setAttr ".maskName" -type "string" "persp_mask";
	setAttr ".tumblePivot" -type "double3" -29.395814895629883 46.398584365844727 7.3252573013305664 ;
	setAttr ".homeCommand" -type "string" "viewSet -p %camera";
createNode transform -shared -name "top";
	rename -uuid "39088D54-468B-911C-84FF-29966A620726";
	setAttr ".translate" -type "double3" 0.085094368675738052 10.001000000000001 -0.058999446249279351 ;
	setAttr ".rotate" -type "double3" -89.999999999999986 0 0 ;
createNode camera -shared -name "topShape" -parent "top";
	rename -uuid "A9E943E7-421F-FD36-22FE-EC80F354C0AF";
	setAttr -keyable off ".visibility";
	setAttr ".renderable" no;
	setAttr ".nearClipPlane" 0.001;
	setAttr ".farClipPlane" 100;
	setAttr ".focusDistance" 0.05;
	setAttr ".centerOfInterest" 10.001000000000001;
	setAttr ".orthographicWidth" 2.9203572604266261;
	setAttr ".imageName" -type "string" "top";
	setAttr ".depthName" -type "string" "top_depth";
	setAttr ".maskName" -type "string" "top_mask";
	setAttr ".homeCommand" -type "string" "viewSet -t %camera";
	setAttr ".orthographic" yes;
createNode transform -shared -name "front";
	rename -uuid "4C7A8F7B-445F-014E-6CFD-19BAC04DD29D";
	setAttr ".translate" -type "double3" -0.24043195503004228 0.66480795936549808 10.004389768591041 ;
createNode camera -shared -name "frontShape" -parent "front";
	rename -uuid "835969FD-491D-BEFC-3A66-F4BD1C86617F";
	setAttr -keyable off ".visibility";
	setAttr ".renderable" no;
	setAttr ".nearClipPlane" 0.001;
	setAttr ".farClipPlane" 100;
	setAttr ".focusDistance" 0.05;
	setAttr ".centerOfInterest" 10.004389768591041;
	setAttr ".orthographicWidth" 0.89318810570655427;
	setAttr ".imageName" -type "string" "front";
	setAttr ".depthName" -type "string" "front_depth";
	setAttr ".maskName" -type "string" "front_mask";
	setAttr ".tumblePivot" -type "double3" 12.693908508310376 1.431420179163343 1.7763568394002505e-015 ;
	setAttr ".homeCommand" -type "string" "viewSet -f %camera";
	setAttr ".orthographic" yes;
createNode transform -shared -name "side";
	rename -uuid "341F50C6-4FD2-6727-6524-E2A30D07E6D8";
	setAttr ".translate" -type "double3" 10.002077785790645 0.9135660219918984 0.26243801954776491 ;
	setAttr ".rotate" -type "double3" 0 89.999999999999986 0 ;
createNode camera -shared -name "sideShape" -parent "side";
	rename -uuid "2DB3C74F-4BE0-55C4-A94F-2EB9F2579511";
	setAttr -keyable off ".visibility";
	setAttr ".renderable" no;
	setAttr ".nearClipPlane" 0.001;
	setAttr ".farClipPlane" 100;
	setAttr ".focusDistance" 0.05;
	setAttr ".centerOfInterest" 10.002077785790643;
	setAttr ".orthographicWidth" 1.3712811158838085;
	setAttr ".imageName" -type "string" "side";
	setAttr ".depthName" -type "string" "side_depth";
	setAttr ".maskName" -type "string" "side_mask";
	setAttr ".tumblePivot" -type "double3" 0 61.936148755101897 1.4210854715202004e-014 ;
	setAttr ".homeCommand" -type "string" "viewSet -s %camera";
	setAttr ".orthographic" yes;
createNode transform -name "bottom";
	rename -uuid "C06BABE0-43F9-5930-6C36-7FA05A7F654B";
	setAttr ".translate" -type "double3" 0.020606572110516089 -1000.1 -1.0990171792275338 ;
	setAttr ".rotate" -type "double3" 89.999999999999986 0 0 ;
createNode camera -name "bottomShape" -parent "bottom";
	rename -uuid "6286D47B-4E62-8316-0908-BAA62F6C7609";
	setAttr -keyable off ".visibility";
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 1000.1;
	setAttr ".orthographicWidth" 3.8053469830753328;
	setAttr ".imageName" -type "string" "bottom1";
	setAttr ".depthName" -type "string" "bottom1_depth";
	setAttr ".maskName" -type "string" "bottom1_mask";
	setAttr ".homeCommand" -type "string" "viewSet -bo %camera";
	setAttr ".orthographic" yes;
createNode transform -name "back";
	rename -uuid "5C655196-40FB-0289-025E-059FC0419E1E";
	setAttr ".translate" -type "double3" 0.031129704253038515 0.23259849917419406 -1000.1 ;
	setAttr ".rotate" -type "double3" 0 180 0 ;
createNode camera -name "backShape" -parent "back";
	rename -uuid "5A44075E-4768-5BE7-195D-6CB8FC169313";
	setAttr -keyable off ".visibility";
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 1000.1;
	setAttr ".orthographicWidth" 0.98908388934779778;
	setAttr ".imageName" -type "string" "back1";
	setAttr ".depthName" -type "string" "back1_depth";
	setAttr ".maskName" -type "string" "back1_mask";
	setAttr ".homeCommand" -type "string" "viewSet -b %camera";
	setAttr ".orthographic" yes;
createNode joint -name "Joint_Main";
	rename -uuid "73EE396A-4E23-46D8-667F-888B344C6DBB";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 180 0 90.037873791275601 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.00066102230983333676 0.99999978152472901 -1.2325951644078309e-032 0
		 0.99999978152472901 0.00066102230983344779 1.2246467991473532e-016 0 1.2246465315923121e-016 8.0951885590230383e-020 -1 0
		 0.076877447279095928 61.947897431711191 0 1;
	setAttr ".radius" 1.6573760308247103;
createNode joint -name "Joint_Shoulder" -parent "Joint_Main";
	rename -uuid "3F0D2B83-4E72-EBEF-1D13-8D9540080F59";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 1;
	setAttr ".translate" -type "double3" 0.25501713787991259 -2.400857290751901e-017 
		-6.0897904841524393e-033 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -1.5329774646433226e-021 -4.6382013875177978e-018 
		0.037873791272139953 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -6.0416515540451243e-014 0.99999999999999989 8.0951885582827386e-020 0
		 0.99999999999999989 6.0527537842913759e-014 1.2246465315923121e-016 0 1.2246465315923121e-016 8.0951885590230383e-020 -1 0
		 0.060020245526246893 87.449605648208617 6.2593779044835059e-034 1;
	setAttr ".radius" 1.3739165672111495;
createNode joint -name "Joint_Neck" -parent "Joint_Shoulder";
	rename -uuid "BF5B7D4E-431D-9142-D24C-28BF1AA2D891";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 2;
	setAttr ".translate" -type "double3" 0.087892034047673456 5.3100950472332867e-015 
		7.1150258845131615e-021 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -6.0969139343452382e-014 0.99981065197988994 -0.019459192880159081 0
		 0.99999999999999989 6.1065783816079681e-014 -1.3319922056231048e-015 0 -1.4560953427859412e-016 -0.019459192880159078 -0.99981065197989005 0
		 0.060020245526246886 96.238809052975967 6.3743467390208789e-031 1;
	setAttr ".radius" 2;
createNode joint -name "Joint_Head" -parent "Joint_Neck";
	rename -uuid "E8C65DD5-4F2D-40CD-22F8-A589480C0DB4";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 3;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 180 0 90.000000000003453 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" 0.99999999999999989 6.8108716458984825e-016 -1.5673221331921063e-016 0
		 -4.6198450138136294e-016 0.99981065197988994 -0.019459192880159203 0 1.4560953427859405e-016 0.019459192880159199 0.99981065197989005 0
		 0.060020245526271054 126.79544520239457 -0.59254506827994824 1;
	setAttr ".radius" 2;
createNode parentConstraint -name "joint4_parentConstraint1" -parent "Joint_Head";
	rename -uuid "8394FCEA-43F4-59A3-4CB5-E0BCB105CC78";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle16W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" 0.00060020245526271054 
		-0.0025518302500127277 0.071032339961215205 ;
	setAttr ".restTranslate" -type "double3" 0.30424165631886996 1.8622881015062377e-014 
		2.4628935754142107e-020 ;
	setAttr -keyable on ".nurbsCircle16W0";
createNode orientConstraint -name "joint3_orientConstraint1" -parent "Joint_Neck";
	rename -uuid "2401BC7A-476C-368B-5036-4FB59FF5C8C0";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle9W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" -0.76754721916962942 180 -89.999999999996533 ;
	setAttr ".offset" -type "double3" -180 0 90.000000000003453 ;
	setAttr ".restRotate" -type "double3" -180 180 180 ;
	setAttr -keyable on ".nurbsCircle9W0";
createNode joint -name "Joint_Arm_Right" -parent "Joint_Shoulder";
	rename -uuid "79C47D82-413A-DD3B-F182-028CB398E09B";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 2;
	setAttr ".translate" -type "double3" -0.035430122136998386 -0.17589466666320833 
		-2.1543747480661819e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0 -88.074084476614644 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.9994351172469258 0.033607237518477724 -1.2239275441955378e-016 0
		 0.033607237518477835 0.9994351172469258 4.1966048436065186e-018 0 1.2246465315923121e-016 8.0951885590230383e-020 -1 0
		 -17.529446420794368 83.906593434507712 3.9505639040095425e-031 1;
	setAttr ".radius" 0.63828497342756774;
createNode joint -name "Joint_Upper_Right" -parent "Joint_Arm_Right";
	rename -uuid "3450E13A-4FE2-3B12-EB4D-2DBA0F8EE4BA";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 3;
	setAttr ".translate" -type "double3" 0.036735094862663076 1.4460654895742664e-016 
		-4.4961094441049265e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -1.1020439822837621e-016 7.0166805001084638e-015 
		-1.799633823689865 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.57950425958262952 -0.81496920992488309 -7.1034761448325226e-017 0
		 -0.81496920992488309 0.57950425958262941 -9.975800966638273e-017 0 1.2246465315923121e-016 8.0951885590230383e-020 -1 0
		 -21.200880804908628 84.030049940339055 -1.9658928851480462e-031 1;
	setAttr ".radius" 1.4040402310382323;
createNode joint -name "Joint_Elbow_Right" -parent "Joint_Upper_Right";
	rename -uuid "E2D4C4B4-4F05-5EF5-5F17-C2B165C1D018";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 4;
	setAttr ".translate" -type "double3" 0.18478111133405833 -9.0830121202145618e-017 
		-2.2629066777772871e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -2.2229715161071809e-017 7.0166670259462199e-015 
		-0.36303977159836581 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.24981282550566292 -0.96829414550170501 -2.7560098609663351e-016 0
		 -0.96829414550170512 0.24981282550566281 -1.1856158386571116e-016 0 1.8365114858752451e-016 2.372446170699471e-016 -1 0
		 -31.909024915758511 68.970958309043112 9.5031846140016215e-016 1;
	setAttr ".radius" 1.5122475271767044;
createNode joint -name "Joint_Fist_Right" -parent "Joint_Elbow_Right";
	rename -uuid "A0DE4A8D-4BF1-B785-409D-D0B797980B49";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 5;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0 90.236758071902898 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.96725360304373942 0.2538118740305581 -1.1742173431221875e-016 0
		 0.25381187403055822 0.96725360304373931 2.7608855285450273e-016 0 1.8365114858752451e-016 2.372446170699471e-016 -1 0
		 -37.102383300541455 49.040219651729075 4.7331654313260708e-030 1;
	setAttr ".radius" 1.5122475271767044;
createNode parentConstraint -name "joint15_parentConstraint1" -parent "Joint_Fist_Right";
	rename -uuid "55588D0C-4A41-ECFA-542A-DC9064581903";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle12W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" -0.00040984211706692977 
		-1.4658371441100827e-008 0.071032339961215205 ;
	setAttr ".target[0].targetOffsetRotate" -type "double3" 180 1.1106933113098513e-027 
		90.000000000003453 ;
	setAttr ".lastTargetRotate" -type "double3" -1.403341859706975e-014 -4.2446286675626983e-028 
		-6.3611093629270335e-014 ;
	setAttr ".restTranslate" -type "double3" 0.20570118858749623 -2.4158453015843408e-015 
		-1.8712054542791931e-017 ;
	setAttr ".restRotate" -type "double3" 1.1411018854638384e-014 1.1149837147107012e-027 
		-1.2722218725854067e-014 ;
	setAttr -keyable on ".nurbsCircle12W0";
createNode orientConstraint -name "joint14_orientConstraint1" -parent "Joint_Elbow_Right";
	rename -uuid "7129AED1-4FED-B04F-9924-559A5A3B11B3";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle11W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" 2.5444437451708134e-014 180 -19.830414222577552 ;
	setAttr ".offset" -type "double3" 0 180 0.23675807190632664 ;
	setAttr ".restRotate" -type "double3" 2.8994418979103551e-017 360 -3.5507770820407781e-033 ;
	setAttr -keyable on ".nurbsCircle11W0";
createNode orientConstraint -name "joint13_orientConstraint1" -parent "Joint_Upper_Right";
	rename -uuid "2C1F8025-4116-1DBE-03C1-81B92B8F34E0";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle10W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" 180 -3.4630170131887525 111.92555402704591 ;
	setAttr ".offset" -type "double3" -180 0 179.87371830030801 ;
	setAttr ".restRotate" -type "double3" -180 180 180 ;
	setAttr -keyable on ".nurbsCircle10W0";
createNode joint -name "Joint_Arm_Left" -parent "Joint_Shoulder";
	rename -uuid "579AD75D-462F-C258-D7DA-099AB5BEB9F7";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 2;
	setAttr ".translate" -type "double3" -0.032798746664551855 0.17592590122186649 2.1542049354473804e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 180 -7.0150214326852848e-015 91.218875235134888 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" 0.99977373005706494 -0.021271781490577946 1.2243522109832778e-016 0
		 0.021271781490578057 0.99977373005706494 -1.1977870500380103e-016 0 -1.1985961124777138e-016 1.223560179530092e-016 1 0
		 17.652610367713091 84.169730981754498 -3.9380451482005755e-031 1;
	setAttr ".radius" 0.62048236060443474;
createNode joint -name "Joint_Upper_Left" -parent "Joint_Arm_Left";
	rename -uuid "D8515A88-4156-66B8-AE9A-3B9C50AD23A1";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 3;
	setAttr ".translate" -type "double3" 0.033293256383524025 9.7144514654701207e-018 
		-4.076267206400079e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 7.3049710871474969e-017 6.8674498585739596e-015 
		1.2188752351310337 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" 0.58986299609804416 -0.68777000874896177 0.4231241672366301 0
		 0.78373714787022752 0.61380456448131615 -0.09486853888483289 0 -0.19446780937337646 0.38757756860705295 0.90109150447119701 0
		 20.981182679743291 84.098910294264485 -7.3893116085425022e-031 1;
	setAttr ".radius" 1.4080182821921265;
createNode joint -name "Joint_Elbow_Left" -parent "Joint_Upper_Left";
	rename -uuid "C8BC84B5-49C6-BC5B-2FD7-1E8DF3FFC714";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 4;
	setAttr ".translate" -type "double3" 0.18555020122381119 1.1060312364412853e-015 
		-2.2239974985631734e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -1.1841030636823756e-017 6.8915001760453425e-015 
		-0.19689193807018335 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" 0.23219877014318391 -0.47239582760348681 0.85025050026848548 0
		 0.09840074514021438 0.88106619400766362 0.46264419928569378 0 -0.96767816163218423 -0.023760131305757298 0.25106658810062654 0
		 31.926102441790604 71.33732394235733 7.8510774373414129 1;
	setAttr ".radius" 1.5142556074618292;
createNode joint -name "Joint_Fist_Left" -parent "Joint_Elbow_Left";
	rename -uuid "0D72B1A3-4214-7E26-7DE8-2DA1BD450ACE";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 5;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 180 0 90.19689193807406 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" 0.097602234930299514 0.88268433556207704 0.45971966184833279 0
		 0.23253554402879392 -0.46936533735851016 0.85183531322055739 0 0.96767816163218423 0.023760131305757239 -0.25106658810062643 0
		 29.815204500505082 61.372526261148309 20.141414813038395 1;
	setAttr ".radius" 1.5142556074618292;
createNode parentConstraint -name "joint19_parentConstraint1" -parent "Joint_Fist_Left";
	rename -uuid "41F55F49-40C5-CDA7-EDBF-16B306E0AB00";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle14W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" -0.00031798090623944122 
		0.00042311661050902671 0.071032339961215218 ;
	setAttr ".target[0].targetOffsetRotate" -type "double3" 180 0 90.000000000003467 ;
	setAttr ".lastTargetRotate" -type "double3" 7.0622500768780826e-031 -5.5085550599665978e-029 
		4.5163876476781937e-013 ;
	setAttr ".restTranslate" -type "double3" 0.20608941744262013 -4.8316906031686816e-015 
		-1.5906520782277273e-017 ;
	setAttr ".restRotate" -type "double3" 7.0622500768802538e-031 0 0 ;
	setAttr -keyable on ".nurbsCircle14W0";
createNode orientConstraint -name "joint18_orientConstraint1" -parent "Joint_Elbow_Left";
	rename -uuid "A848A47D-4AEE-36D8-F53B-DC95BD4C1B40";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle15W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" 61.210112323549247 -32.713964973328686 
		-12.621121566386883 ;
	setAttr ".offset" -type "double3" 0 0 -0.19689193807018335 ;
	setAttr -keyable on ".nurbsCircle15W0";
createNode orientConstraint -name "joint17_orientConstraint1" -parent "Joint_Upper_Left";
	rename -uuid "A3003B75-41A4-0287-D8E0-D5A040E3F1E0";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle13W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" -5.9491680556690305 -23.704653445554758 
		-49.53320432503623 ;
	setAttr ".restRotate" -type "double3" 0 0 3.8385319311912817e-013 ;
	setAttr -keyable on ".nurbsCircle13W0";
createNode joint -name "Joint_Waist" -parent "Joint_Main";
	rename -uuid "184EA6A7-4334-225D-72E7-57946336D2F2";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -8.2774550909587227e-015 6.9025161663723291e-015 
		-100.35098402419401 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.98360655737704916 -0.18032786885245911 -1.2047163377533386e-016 0
		 -0.18032786885245899 0.98360655737704916 -2.2004165108461141e-017 0 1.2246465315923121e-016 8.0951885590230383e-020 -1 0
		 0.13535235670247975 38.572033973379199 -3.8518598887744717e-033 1;
	setAttr ".radius" 1.0310712305035938;
createNode joint -name "Joint_Leg_Right" -parent "Joint_Waist";
	rename -uuid "0B6C6732-4407-6F3D-FA1E-BF91BE891028";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 2;
	setAttr ".translate" -type "double3" 0.11451986076241694 8.4376949871511898e-017 
		-1.3796394725772121e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0 -74.255317141675178 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.093340708693058688 -0.99563422605928809 -2.564408958131606e-016 0
		 -0.99563422605928809 0.093340708693058577 -1.2192244406143925e-016 0 1.4532653318545119e-016 2.4394100549860214e-016 -1 0
		 -11.128896242879515 36.506921730122507 -3.8518598887744717e-033 1;
	setAttr ".radius" 1.3845772193419867;
createNode joint -name "Joint_Knee_Right" -parent "Joint_Leg_Right";
	rename -uuid "BB750A13-4C7B-4E7E-3BE8-8BAE108AB89E";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 3;
	setAttr ".translate" -type "double3" 0.18101826240611743 0 -2.0837982413930496e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 1.6099419397121393e-018 6.9205671835149562e-016 
		0.26657558423439565 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.097971991070402373 -0.99518917245200222 -5.0193473703027138e-016 0
		 -0.99518917245200222 0.097971991070402262 -1.2072800628373355e-016 0 1.6932275023954346e-016 4.8769205241649174e-016 -1 0
		 -12.818533532816822 18.484123970791323 -4.4336687128573476e-015 1;
	setAttr ".radius" 1.389874688417496;
createNode joint -name "Joint_Feet_Right" -parent "Joint_Knee_Right";
	rename -uuid "9177D035-461D-53DE-A0A2-63B7537A86F1";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 4;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0 174.33972558163481 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.00066102230983314247 0.99999978152472935 4.8758001975236791e-016 0
		 0.99999978152472935 0.0006610223098332535 1.6964508857368533e-016 0 1.6932275023954346e-016 4.8769205241649174e-016 -1 0
		 -14.602039561083968 0.36745747313030108 -1.2434497875801753e-014 1;
	setAttr ".radius" 1.389874688417496;
createNode parentConstraint -name "joint8_parentConstraint1" -parent "Joint_Feet_Right";
	rename -uuid "43099318-45B7-C2C4-7457-3590844946A9";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle5W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" 0.00016556273165159398 
		0.00016703418345385802 0.07103233996121508 ;
	setAttr ".target[0].targetOffsetRotate" -type "double3" -180 -4.6382013879461939e-018 
		90.037873791275587 ;
	setAttr ".lastTargetRotate" -type "double3" 2.5444433425705235e-014 1.2181139428790983e-017 
		-3.4190962825732808e-014 ;
	setAttr ".restTranslate" -type "double3" 0.18204243976071585 3.3750779948604759e-016 
		-2.4833483031986629e-018 ;
	setAttr ".restRotate" -type "double3" 1.5329774651082562e-021 -4.6382013879467293e-018 
		-1.590277340731758e-015 ;
	setAttr -keyable on ".nurbsCircle5W0";
createNode orientConstraint -name "joint7_orientConstraint1" -parent "Joint_Knee_Right";
	rename -uuid "A60357C0-4C3F-0AED-44E7-F097F00F014D";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle4W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" 0 -179.99999999999997 84.377599372910353 ;
	setAttr ".offset" -type "double3" 0 180 84.377599372910382 ;
	setAttr ".restRotate" -type "double3" 6.9829531201451905e-015 360 -4.6947367404648038e-031 ;
	setAttr -keyable on ".nurbsCircle4W0";
createNode orientConstraint -name "joint6_orientConstraint1" -parent "Joint_Leg_Right";
	rename -uuid "C5F41E95-4364-4E93-E025-81B287395CA0";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle3W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" 8.7802520330638174 180 84.644174957144799 ;
	setAttr ".offset" -type "double3" 0 180 84.644174957144756 ;
	setAttr ".restRotate" -type "double3" 6.9860759319297834e-015 360 2.5444437451708134e-014 ;
	setAttr -keyable on ".nurbsCircle3W0";
createNode joint -name "Joint_Leg_Left" -parent "Joint_Waist";
	rename -uuid "CA7FFE3B-4256-D519-4A41-E38402737185";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 2;
	setAttr ".translate" -type "double3" -0.10522531683598561 -0.040286615893040646 
		1.3563139181529948e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 180 -5.0042080423738677e-016 -83.738733887042088 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" 0.071977769646774256 -0.99740623653387883 8.73399067942038e-018 0
		 0.99740623653387883 0.071977769646774256 -3.1184436258622581e-019 0 -3.1761765714896444e-019 8.7337826351785458e-018 1 0
		 11.211863479624748 36.506921730122485 3.9057859272173143e-031 1;
	setAttr ".radius" 1.392649580462455;
createNode joint -name "Joint_Knee_Left" -parent "Joint_Leg_Left";
	rename -uuid "7AC42A16-4618-D365-FB43-E8BA9F8C1DF8";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 3;
	setAttr ".translate" -type "double3" 0.18257891888940805 3.7747582837255325e-017 
		-1.5946425758387382e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 1.4825535838700427e-018 5.0030612427288713e-016 
		0.33956735887760581 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" 0.077887667292910148 -0.99696214134924344 8.7319891364528008e-018 0
		 0.99696214134924344 0.077887667292910148 -3.6360117649582499e-019 0 -3.1761765714896444e-019 8.7337826351785458e-018 1 0
		 12.52602581624264 18.296386494131607 5.1383810916251453e-031 1;
	setAttr ".radius" 1.3833301018871087;
createNode joint -name "Joint_Feet_Left" -parent "Joint_Knee_Left";
	rename -uuid "018F15DF-4E77-8B54-C6FA-43BAF623DBA1";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" 1;
	setAttr ".objectColor" 4;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -180 0 -84.07830124591969 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".bindPose" -type "matrix" -0.98360655737704905 -0.18032786885245922 1.2625335993119081e-018 0
		 -0.18032786885245922 0.98360655737704905 -1.3111256110062631e-016 0 2.240141239587175e-017 -1.291908448463936e-016 -1 0
		 13.934056891190385 0.27358873480043044 8.8817841970012523e-016 1;
	setAttr ".radius" 1.3833301018871087;
createNode parentConstraint -name "joint11_parentConstraint1" -parent "Joint_Feet_Left";
	rename -uuid "8CB73335-4520-B230-6159-8C9F94A60B57";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle8W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" 0.00063489854337793971 
		-0.00077165319984484843 0.071032339961215218 ;
	setAttr ".target[0].targetOffsetRotate" -type "double3" 0 180 10.388857815469615 ;
	setAttr ".lastTargetRotate" -type "double3" -7.016709298534876e-015 -7.0167092985348736e-015 
		3.1805546814635168e-014 ;
	setAttr ".restTranslate" -type "double3" 0.18077715303150768 -1.2434497875801754e-016 
		7.3032400606112574e-018 ;
	setAttr ".restRotate" -type "double3" -7.016709298534876e-015 -7.0167092985348736e-015 
		1.9083328088781101e-014 ;
	setAttr -keyable on ".nurbsCircle8W0";
createNode orientConstraint -name "joint10_orientConstraint1" -parent "Joint_Knee_Left";
	rename -uuid "14D92B82-45E6-1D8E-E828-D595CC132EA7";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle7W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" 0 0 85.532840938610704 ;
	setAttr ".offset" -type "double3" 0 0 -85.532840938610704 ;
	setAttr -keyable on ".nurbsCircle7W0";
createNode orientConstraint -name "joint9_orientConstraint1" -parent "Joint_Leg_Left";
	rename -uuid "AA184391-4B3D-DB42-6011-598E187B75CC";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle6W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".lastTargetRotate" -type "double3" -7.4404070880281195 -1.3517357396219947e-014 
		85.872408297488306 ;
	setAttr ".offset" -type "double3" 0 0 -85.872408297488292 ;
	setAttr -keyable on ".nurbsCircle6W0";
createNode parentConstraint -name "joint5_parentConstraint1" -parent "Joint_Waist";
	rename -uuid "7E3CD460-480D-B9CD-8760-6489F9337C31";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle2W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" 0.0013535235670247977 
		-0.00081315331763008201 0.071032339961215205 ;
	setAttr ".target[0].targetOffsetRotate" -type "double3" 0 180 10.388857815469615 ;
	setAttr ".lastTargetRotate" -type "double3" 6.9016812772474201e-015 -5.7514010643728502e-015 
		-3.4639843790640452e-031 ;
	setAttr ".restTranslate" -type "double3" -0.23375897004503585 0.00043022929390486856 
		5.2687892768005233e-020 ;
	setAttr ".restRotate" -type "double3" 6.9016812772474201e-015 -5.7514010643728502e-015 
		-3.4639843790640452e-031 ;
	setAttr -keyable on ".nurbsCircle2W0";
createNode parentConstraint -name "joint1_parentConstraint1" -parent "Joint_Main";
	rename -uuid "D68E5B39-40ED-DFC6-1993-EBA51BDF14CF";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "nurbsCircle1W0" -defaultValue 1 -minValue 0 -attributeType "double";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" 0.00076877447279095933 
		0.00011748676609293795 0.071032339961215205 ;
	setAttr ".target[0].targetOffsetRotate" -type "double3" 180 7.0622500768802555e-031 
		90.037873791275601 ;
	setAttr ".restTranslate" -type "double3" 0.00076877447279095933 0.61947897431711196 
		0 ;
	setAttr -keyable on ".nurbsCircle1W0";
createNode transform -name "Ctrl_Main";
	rename -uuid "58CE853B-47BA-BCFD-1BF5-1C9458163799";
	setAttr ".rotatePivot" -type "double3" 0 0.61936148755101894 -0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0 0.61936148755101894 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_MainShape" -parent "Ctrl_Main";
	rename -uuid "1B71AF93-4A77-13F2-A41D-2987DAD06182";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58005047667681542 0.61936148755101894 -0.65108281663802969
		-9.3588161594663776e-017 0.61936148755101905 -0.89134759093854543
		-0.58005047667681475 0.61936148755101894 -0.65108281663803003
		-0.82031525097733027 0.61936148755101894 -0.071032339961215454
		-0.58005047667681497 0.61936148755101894 0.50901813671559948
		-2.4717699448898888e-016 0.61936148755101894 0.74928291101611533
		0.58005047667681442 0.61936148755101894 0.5090181367155997
		0.82031525097733027 0.61936148755101894 -0.07103233996121476
		0.58005047667681542 0.61936148755101894 -0.65108281663802969
		-9.3588161594663776e-017 0.61936148755101905 -0.89134759093854543
		-0.58005047667681475 0.61936148755101894 -0.65108281663803003
		;
createNode transform -name "Ctrl_Waist" -parent "Ctrl_Main";
	rename -uuid "17CA421A-4F70-F8BB-159D-63A4FE5ABFA2";
	setAttr ".rotatePivot" -type "double3" 0 0.38653349305142215 -0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0 0.38653349305142215 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_WaistShape" -parent "Ctrl_Waist";
	rename -uuid "1CC3328F-4B36-309D-C36B-879E712F9CBF";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.44701006553236688 0.38653349305142215 -0.51804240549358138
		-7.212277539562021e-017 0.38653349305142221 -0.70320003715437396
		-0.44701006553236639 0.38653349305142215 -0.5180424054935816
		-0.63216769719315868 0.38653349305142215 -0.071032339961215399
		-0.44701006553236661 0.38653349305142215 0.37597772557115106
		-1.9048446462389175e-016 0.38653349305142209 0.56113535723194363
		0.44701006553236616 0.38653349305142215 0.37597772557115139
		0.63216769719315868 0.38653349305142215 -0.071032339961214871
		0.44701006553236688 0.38653349305142215 -0.51804240549358138
		-7.212277539562021e-017 0.38653349305142221 -0.70320003715437396
		-0.44701006553236639 0.38653349305142215 -0.5180424054935816
		;
createNode transform -name "Ctrl_Leg_Left" -parent "Ctrl_Waist";
	rename -uuid "2CE1B3D3-416B-A47B-0D6B-A29FC16C3013";
	setAttr ".rotatePivot" -type "double3" 0.11240574904350649 0.36504433302235079 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0.11240574904350649 0.36504433302235079 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Leg_LeftShape" -parent "Ctrl_Leg_Left";
	rename -uuid "A9737335-472D-0F6E-7C5E-E187B270354A";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.316842877719267 0.36504433302235079 -0.27546946863697536
		0.11240574904350645 0.36504433302235079 -0.36015009998708908
		-0.092031379632253774 0.36504433302235079 -0.27546946863697547
		-0.17671201098236733 0.36504433302235079 -0.071032339961215288
		-0.092031379632253843 0.36504433302235079 0.133404788714545
		0.11240574904350639 0.36504433302235079 0.21808542006465867
		0.31684287771926661 0.36504433302235079 0.13340478871454509
		0.40152350906938028 0.36504433302235079 -0.071032339961215052
		0.316842877719267 0.36504433302235079 -0.27546946863697536
		0.11240574904350645 0.36504433302235079 -0.36015009998708908
		-0.092031379632253774 0.36504433302235079 -0.27546946863697547
		;
createNode transform -name "Ctrl_Knee_Left" -parent "Ctrl_Leg_Left";
	rename -uuid "A581C9BC-428F-A271-13FA-8CB7F2ECD53F";
	setAttr ".rotatePivot" -type "double3" 0.12474358710342096 0.18310891034271493 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0.12474358710342096 0.18310891034271493 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Knee_LeftShape" -parent "Ctrl_Knee_Left";
	rename -uuid "A4BE50B1-45B3-5BC7-72B2-E6BC2199DFA8";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.24327907515722472 0.18310891034271493 -0.18956782801501881
		0.12474358710342096 0.18310891034271493 -0.23866683478941833
		0.0062080990496172998 0.18310891034271493 -0.18956782801501887
		-0.042890907724782185 0.18310891034271493 -0.07103233996121526
		0.0062080990496172642 0.18310891034271493 0.047503148092588425
		0.1247435871034209 0.18310891034271493 0.096602154866987991
		0.24327907515722452 0.18310891034271493 0.04750314809258846
		0.29237808193162407 0.18310891034271493 -0.071032339961215121
		0.24327907515722472 0.18310891034271493 -0.18956782801501881
		0.12474358710342096 0.18310891034271493 -0.23866683478941833
		0.0062080990496172998 0.18310891034271493 -0.18956782801501887
		;
createNode transform -name "Ctrl_Feet_Left" -parent "Ctrl_Knee_Left";
	rename -uuid "8B2C3521-456F-0EAC-2D50-BC9AEDF64A86";
	setAttr ".rotatePivot" -type "double3" 0.13870567036852591 0.0035075405478491527 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0.13870567036852591 0.0035075405478491527 
		-0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Feet_LeftShape" -parent "Ctrl_Feet_Left";
	rename -uuid "A2FBD778-4483-AFEE-6368-3BB1DD30CB88";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.2572411584223297 0.0035075405478491601 -0.18956782801501881
		0.13870567036852591 0.0035075405478491627 -0.23866683478941833
		0.020170182314722264 0.0035075405478491601 -0.18956782801501887
		-0.028928824459677215 0.0035075405478491527 -0.07103233996121526
		0.020170182314722229 0.0035075405478491458 0.047503148092588425
		0.13870567036852585 0.0035075405478491428 0.096602154866987991
		0.25724115842232947 0.0035075405478491458 0.04750314809258846
		0.30634016519672908 0.0035075405478491527 -0.071032339961215121
		0.2572411584223297 0.0035075405478491601 -0.18956782801501881
		0.13870567036852591 0.0035075405478491627 -0.23866683478941833
		0.020170182314722264 0.0035075405478491601 -0.18956782801501887
		;
createNode transform -name "Ctrl_Leg_Right" -parent "Ctrl_Waist";
	rename -uuid "937C1D31-467F-3F56-55E4-339366788555";
	setAttr ".rotatePivot" -type "double3" -0.11135292015064234 0.36504433302235079 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" -0.11135292015064234 0.36504433302235079 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Leg_RightShape" -parent "Ctrl_Leg_Right";
	rename -uuid "2A99D2B4-4733-C9EE-1F31-32B12CD2BE20";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.093084208525118159 0.36504433302235079 -0.27546946863697536
		-0.11135292015064238 0.36504433302235079 -0.36015009998708908
		-0.3157900488264026 0.36504433302235079 -0.27546946863697547
		-0.4004706801765161 0.36504433302235079 -0.071032339961215288
		-0.31579004882640266 0.36504433302235079 0.133404788714545
		-0.11135292015064244 0.36504433302235079 0.21808542006465867
		0.093084208525117798 0.36504433302235079 0.13340478871454509
		0.17776483987523148 0.36504433302235079 -0.071032339961215052
		0.093084208525118159 0.36504433302235079 -0.27546946863697536
		-0.11135292015064238 0.36504433302235079 -0.36015009998708908
		-0.3157900488264026 0.36504433302235079 -0.27546946863697547
		;
createNode transform -name "Ctrl_Knee_Right" -parent "Ctrl_Leg_Right";
	rename -uuid "91E8E7FC-4F31-811C-CE8D-4CB231A269BB";
	setAttr ".rotatePivot" -type "double3" -0.12810140242207951 0.18535779730310203 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" -0.12810140242207951 0.18535779730310203 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Knee_RightShape" -parent "Ctrl_Knee_Right";
	rename -uuid "FF2FEED2-4FA8-A113-862A-4991DD1C4DDC";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.0095659143682757276 0.18535779730310203 -0.18956782801501881
		-0.12810140242207951 0.18535779730310203 -0.23866683478941833
		-0.24663689047588314 0.18535779730310203 -0.18956782801501887
		-0.29573589725028265 0.18535779730310203 -0.07103233996121526
		-0.24663689047588322 0.18535779730310203 0.047503148092588425
		-0.12810140242207957 0.18535779730310203 0.096602154866987991
		-0.0095659143682759237 0.18535779730310203 0.04750314809258846
		0.039533092406123627 0.18535779730310203 -0.071032339961215121
		-0.0095659143682757276 0.18535779730310203 -0.18956782801501881
		-0.12810140242207951 0.18535779730310203 -0.23866683478941833
		-0.24663689047588314 0.18535779730310203 -0.18956782801501887
		;
createNode transform -name "Ctrl_Feet_Right" -parent "Ctrl_Knee_Right";
	rename -uuid "8C55C0F6-44F8-E872-B16A-0EBF93743CA5";
	setAttr ".rotatePivot" -type "double3" -0.14618595834249129 0.0035075405478491527 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" -0.14618595834249129 0.0035075405478491527 
		-0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Feet_RightShape" -parent "Ctrl_Feet_Right";
	rename -uuid "84F6A7C9-41FC-D10C-BEB2-858522A20DD5";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.027650470288687501 0.0035075405478491601 -0.18956782801501881
		-0.14618595834249129 0.0035075405478491627 -0.23866683478941833
		-0.26472144639629491 0.0035075405478491601 -0.18956782801501887
		-0.3138204531706944 0.0035075405478491527 -0.07103233996121526
		-0.26472144639629497 0.0035075405478491458 0.047503148092588425
		-0.14618595834249135 0.0035075405478491428 0.096602154866987991
		-0.027650470288687695 0.0035075405478491458 0.04750314809258846
		0.021448536485711857 0.0035075405478491527 -0.071032339961215121
		-0.027650470288687501 0.0035075405478491601 -0.18956782801501881
		-0.14618595834249129 0.0035075405478491627 -0.23866683478941833
		-0.26472144639629491 0.0035075405478491601 -0.18956782801501887
		;
createNode transform -name "Ctrl_Shoulder_Right" -parent "Ctrl_Main";
	rename -uuid "74DE5039-4188-BD7D-F590-0B90CB1C87CB";
	setAttr ".rotatePivot" -type "double3" -0.21250533272046623 0.83985777945723572 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" -0.21250533272046623 0.83985777945723572 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Shoulder_RightShape" -parent "Ctrl_Shoulder_Right";
	rename -uuid "AD040005-4EE4-9E50-1AE2-AFA52A0D7F88";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.20840871305357439 1.010189301538523 -0.24141311853445441
		-0.21250533272046623 0.83985777945723572 -0.31198714778717751
		-0.21660195238735813 0.6695262573759484 -0.24141311853445452
		-0.21829882781326906 0.59897263083022689 -0.071032339961215274
		-0.2166019523873581 0.6695262573759484 0.099348438612024068
		-0.21250533272046623 0.83985777945723561 0.16992246786474716
		-0.20840871305357439 1.0101893015385228 0.099348438612024137
		-0.20671183762766343 1.0807429280842444 -0.07103233996121508
		-0.20840871305357439 1.010189301538523 -0.24141311853445441
		-0.21250533272046623 0.83985777945723572 -0.31198714778717751
		-0.21660195238735813 0.6695262573759484 -0.24141311853445452
		;
createNode transform -name "Ctrl_Elbow_Right" -parent "Ctrl_Shoulder_Right";
	rename -uuid "F27A437F-4617-9C83-C813-01BF288E0807";
	setAttr ".rotatePivot" -type "double3" -0.39631828895394999 0.83985777945723572 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" -0.39631828895394999 0.83985777945723572 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Elbow_RightShape" -parent "Ctrl_Elbow_Right";
	rename -uuid "4BB424E7-41B1-1191-6B84-4B8743632CF2";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.39445344810726068 0.9173951653227238 -0.14859214809814297
		-0.39631828895394999 0.83985777945723572 -0.1807184725235137
		-0.39818312980063925 0.76232039359174775 -0.148592148098143
		-0.39895557217100525 0.73020335677530668 -0.071032339961215246
		-0.39818312980063925 0.76232039359174775 0.0065274681757125832
		-0.39631828895394999 0.83985777945723572 0.038653792601083287
		-0.39445344810726068 0.91739516532272358 0.0065274681757126101
		-0.39368100573689468 0.94951220213916476 -0.071032339961215149
		-0.39445344810726068 0.9173951653227238 -0.14859214809814297
		-0.39631828895394999 0.83985777945723572 -0.1807184725235137
		-0.39818312980063925 0.76232039359174775 -0.148592148098143
		;
createNode transform -name "Ctrl_Fist_Right" -parent "Ctrl_Elbow_Right";
	rename -uuid "0E50ADFA-4C9D-F6C6-7C89-54896E43771E";
	setAttr ".rotatePivot" -type "double3" -0.6020790608571035 0.83985777945723572 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" -0.6020790608571035 0.83985777945723572 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Fist_RightShape" -parent "Ctrl_Fist_Right";
	rename -uuid "65418654-401C-39CA-F850-5687E169A055";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.60021422001041425 0.9173951653227238 -0.14859214809814297
		-0.6020790608571035 0.83985777945723572 -0.1807184725235137
		-0.60394390170379275 0.76232039359174775 -0.148592148098143
		-0.60471634407415875 0.73020335677530668 -0.071032339961215246
		-0.60394390170379275 0.76232039359174775 0.0065274681757125832
		-0.6020790608571035 0.83985777945723572 0.038653792601083287
		-0.60021422001041425 0.91739516532272358 0.0065274681757126101
		-0.59944177764004825 0.94951220213916476 -0.071032339961215149
		-0.60021422001041425 0.9173951653227238 -0.14859214809814297
		-0.6020790608571035 0.83985777945723572 -0.1807184725235137
		-0.60394390170379275 0.76232039359174775 -0.148592148098143
		;
createNode transform -name "Ctrl_Shoulder_Left" -parent "Ctrl_Main";
	rename -uuid "322F2891-4842-22DE-9A6A-64A6D82509E7";
	setAttr ".rotatePivot" -type "double3" 0.20908988193609035 0.83985777945723572 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0.20908988193609035 0.83985777945723572 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Shoulder_LeftShape" -parent "Ctrl_Shoulder_Left";
	rename -uuid "56E6C568-4473-B75C-81DD-C28ABA2F10B4";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.20588774481897712 1.0102084648832312 -0.24141311853445441
		0.20908988193609035 0.83985777945723572 -0.31198714778717751
		0.21229201905320352 0.66950709403124042 -0.24141311853445452
		0.21361838767569011 0.59894552976824034 -0.071032339961215274
		0.21229201905320355 0.66950709403124042 0.099348438612024068
		0.20908988193609035 0.83985777945723561 0.16992246786474716
		0.20588774481897715 1.0102084648832308 0.099348438612024137
		0.20456137619649056 1.0807700291462312 -0.07103233996121508
		0.20588774481897712 1.0102084648832312 -0.24141311853445441
		0.20908988193609035 0.83985777945723572 -0.31198714778717751
		0.21229201905320352 0.66950709403124042 -0.24141311853445452
		;
createNode transform -name "Ctrl_Elbow_Left" -parent "Ctrl_Shoulder_Left";
	rename -uuid "5781A674-47D4-C69D-8784-DF869B7D8654";
	setAttr ".rotate" -type "double3" 61.210112323549261 -32.713964973328693 -12.818013504457063 ;
	setAttr ".rotatePivot" -type "double3" 0.39524849649599797 0.83985777945723572 -0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0.39524849649599797 0.83985777945723572 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Elbow_LeftShape" -parent "Ctrl_Elbow_Left";
	rename -uuid "E6707C8E-47D9-964C-B5C0-0EB98E8D006E";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.39384124784236918 0.91472208537009025 -0.145909870960752
		0.39524849649599797 0.83985777945723572 -0.17692515981777207
		0.3966557451496267 0.76499347354438119 -0.14590987096075206
		0.39723864662759106 0.7339836626976286 -0.071032339961215232
		0.3966557451496267 0.76499347354438119 0.0038451910383216158
		0.39524849649599797 0.83985777945723572 0.034860479895341696
		0.39384124784236918 0.91472208537009014 0.0038451910383216427
		0.39325834636440482 0.94573189621684284 -0.071032339961215149
		0.39384124784236918 0.91472208537009025 -0.145909870960752
		0.39524849649599797 0.83985777945723572 -0.17692515981777207
		0.3966557451496267 0.76499347354438119 -0.14590987096075206
		;
createNode transform -name "Ctrl_Fist_Left" -parent "Ctrl_Elbow_Left";
	rename -uuid "A6A8BCF6-4523-CC32-9D09-47B05BF1928A";
	setAttr ".rotatePivot" -type "double3" 0.60176820952339549 0.83985777945723572 
		-0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0.60176820952339549 0.83985777945723572 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_Fist_LeftShape" -parent "Ctrl_Fist_Left";
	rename -uuid "89781ECA-4112-2D04-8205-26BE68610E13";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.60036096086976676 0.91472208537009025 -0.145909870960752
		0.60176820952339549 0.83985777945723572 -0.17692515981777207
		0.60317545817702423 0.76499347354438119 -0.14590987096075206
		0.60375835965498859 0.7339836626976286 -0.071032339961215232
		0.60317545817702423 0.76499347354438119 0.0038451910383216158
		0.60176820952339549 0.83985777945723572 0.034860479895341696
		0.60036096086976676 0.91472208537009014 0.0038451910383216427
		0.5997780593918024 0.94573189621684284 -0.071032339961215149
		0.60036096086976676 0.91472208537009025 -0.145909870960752
		0.60176820952339549 0.83985777945723572 -0.17692515981777207
		0.60317545817702423 0.76499347354438119 -0.14590987096075206
		;
createNode transform -name "Ctrl_Neck" -parent "Ctrl_Main";
	rename -uuid "72CAD2DE-4270-A5CD-F79E-1F8D4A2B6843";
	setAttr ".rotatePivot" -type "double3" 0 0.96281443003289369 -0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0 0.96281443003289369 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_NeckShape" -parent "Ctrl_Neck";
	rename -uuid "7727CD3E-4DD4-9501-61C4-3289A7AED47F";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.33559870332692782 0.96281443003289369 -0.40663104328814259
		-5.4147125018948429e-017 0.96281443003289369 -0.54564057772098085
		-0.33559870332692748 0.96281443003289369 -0.4066310432881427
		-0.47460823775976563 0.96281443003289369 -0.071032339961215343
		-0.33559870332692759 0.96281443003289369 0.26456636336571221
		-1.430087245475536e-016 0.96281443003289369 0.40357589779855063
		0.33559870332692732 0.96281443003289369 0.26456636336571232
		0.47460823775976563 0.96281443003289369 -0.071032339961214955
		0.33559870332692782 0.96281443003289369 -0.40663104328814259
		-5.4147125018948429e-017 0.96281443003289369 -0.54564057772098085
		-0.33559870332692748 0.96281443003289369 -0.4066310432881427
		;
createNode transform -name "Ctrl_Head" -parent "Ctrl_Neck";
	rename -uuid "BAD289F1-4B55-1B52-6508-D6B135EC1AC9";
	setAttr ".rotatePivot" -type "double3" 0 1.2691815770986425 -0.071032339961215205 ;
	setAttr ".scalePivot" -type "double3" 0 1.2691815770986425 -0.071032339961215205 ;
createNode nurbsCurve -name "Ctrl_HeadShape" -parent "Ctrl_Head";
	rename -uuid "1F4F2685-458B-DC63-CA7A-DC80A577A294";
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.42533246378513445 1.2691815770986425 -0.496364803746349
		-6.8625205827316746e-017 1.2691815770986425 -0.67254327876371522
		-0.42533246378513406 1.2691815770986425 -0.49636480374634928
		-0.60151093880249995 1.2691815770986425 -0.071032339961215385
		-0.42533246378513417 1.2691815770986425 0.35430012382391879
		-1.8124698501986143e-016 1.2691815770986425 0.5304785988412849
		0.42533246378513379 1.2691815770986425 0.35430012382391896
		0.60151093880249995 1.2691815770986425 -0.071032339961214885
		0.42533246378513445 1.2691815770986425 -0.496364803746349
		-6.8625205827316746e-017 1.2691815770986425 -0.67254327876371522
		-0.42533246378513406 1.2691815770986425 -0.49636480374634928
		;
createNode transform -name "Guard";
	rename -uuid "21639F7F-4BD6-6A99-8BCA-6FB9A99274DF";
	setAttr -lock on ".translateX";
	setAttr -lock on ".translateY";
	setAttr -lock on ".translateZ";
	setAttr -lock on ".rotateX";
	setAttr -lock on ".rotateY";
	setAttr -lock on ".rotateZ";
	setAttr -lock on ".scaleX";
	setAttr -lock on ".scaleY";
	setAttr -lock on ".scaleZ";
	setAttr ".rotatePivot" -type "double3" -0.0010791737596253269 0.85045736312866216 
		0.1543022346496582 ;
	setAttr ".scalePivot" -type "double3" -0.0010791737596253269 0.85045736312866216 
		0.1543022346496582 ;
createNode mesh -name "GuardShape" -parent "Guard";
	rename -uuid "AE7AF966-490B-09C4-A90D-6E999480F7DD";
	setAttr -keyable off ".visibility";
	setAttr -size 4 ".instObjGroups[0].objectGroups";
	setAttr ".visibleInReflections" yes;
	setAttr ".visibleInRefractions" yes;
	setAttr ".uvPivot" -type "double2" 0.82733782959109303 0.83759414836518709 ;
	setAttr ".uvSet[0].uvSetName" -type "string" "map1";
	setAttr ".currentUVSet" -type "string" "map1";
	setAttr ".displayColorChannel" -type "string" "Ambient+Diffuse";
	setAttr ".collisionOffsetVelocityMultiplier[0]"  0 1 1;
	setAttr ".collisionDepthVelocityMultiplier[0]"  0 1 1;
	setAttr ".dispResolution" 1;
	setAttr ".vertexColorSource" 2;
createNode mesh -name "GuardShapeOrig1" -parent "Guard";
	rename -uuid "FA020D1A-4B99-BBF7-649B-47A7F4572AC4";
	setAttr -keyable off ".visibility";
	setAttr ".intermediateObject" yes;
	setAttr ".visibleInReflections" yes;
	setAttr ".visibleInRefractions" yes;
	setAttr ".uvSet[0].uvSetName" -type "string" "map1";
	setAttr -size 2874 ".uvSet[0].uvSetPoints";
	setAttr ".uvSet[0].uvSetPoints[0:249]" -type "float2" 0.99213505 0.83282983
		 0.98069489 0.83015645 0.98069847 0.8342998 0.97847223 0.83217371 0.822447 0.93360674
		 0.82241488 0.93347085 0.82241476 0.93347049 0.82244641 0.93360412 0.97673428 0.82549489
		 0.96752834 0.82127011 0.97225559 0.80816174 0.9787569 0.82604814 0.96625733 0.90719151
		 0.96687299 0.90605837 0.96629006 0.90749478 0.96614563 0.90752798 0.92946929 0.90629607
		 0.93030596 0.90608996 0.92991966 0.9079811 0.92931533 0.90732807 0.9665615 0.90589476
		 0.96690512 0.90597928 0.96605164 0.85851741 0.96680212 0.86052847 0.96823835 0.86114955
		 0.9718743 0.86225855 0.9668439 0.90613014 0.96623832 0.90621388 0.9290688 0.929322
		 0.92573118 0.93295974 0.92390656 0.93493116 0.92473954 0.92832601 0.93028176 0.93690407
		 0.92695349 0.91893852 0.93078858 0.92726022 0.926027 0.9220714 0.94229203 0.9358238
		 0.94754314 0.9346664 0.94115478 0.93170261 0.97136903 0.93209851 0.97098494 0.92874402
		 0.96611029 0.92966223 0.96618259 0.92965418 0.94196904 0.93017733 0.94116813 0.93000036
		 0.94724447 0.93096912 0.84260195 0.75305259 0.83553499 0.75281501 0.81749046 0.90036476
		 0.81972367 0.90141892 0.822855 0.75241458 0.822855 0.75241458 0.81759375 0.89751351
		 0.81759399 0.8975085 0.83557683 0.75281632 0.84138149 0.75301099 0.8202185 0.90143955
		 0.81749022 0.90037155 0.82234937 0.93319452 0.82231402 0.93304503 0.82231456 0.93304729
		 0.82234883 0.93319225 0.82458937 0.75247002 0.81755883 0.89847863 0.9690572 0.92933631
		 0.95963168 0.93037862 0.96550184 0.85996616 0.96550184 0.85996616 0.92486691 0.83184803
		 0.93646967 0.80065215 0.93236613 0.79868031 0.91652644 0.82975936 0.94130135 0.83180773
		 0.91989601 0.83189201 0.96024483 0.93339658 0.96597219 0.93537658 0.81755918 0.89846873
		 0.82420063 0.7524575 0.8223837 0.93333912 0.8223834 0.93333793 0.83014357 0.7526474
		 0.81752455 0.89942575 0.95316398 0.81632304 0.96006513 0.81637132 0.95258021 0.81742477
		 0.95366013 0.80555165 0.93436325 0.80364799 0.93139964 0.80303836 0.93139964 0.80303836
		 0.92653024 0.80604935 0.93410712 0.80943871 0.94476074 0.8034513 0.94403523 0.80920124
		 0.95252407 0.93597901 0.9540447 0.93412769 0.82966512 0.75263214 0.81752479 0.89941776
		 0.94278359 0.80562508 0.94616807 0.81629491 0.94354403 0.83073914 0.95161295 0.83286488
		 0.16988395 0.27005687 0.17614506 0.27136096 0.1756383 0.27482936 0.16913109 0.27404168
		 0.17523031 0.27869609 0.1686887 0.27816334 0.83182257 0.24090071 0.83272034 0.2299417
		 0.83749354 0.23227188 0.83182257 0.24090071 0.16831218 0.28241768 0.17464243 0.28339353
		 0.17455207 0.28708735 0.16800724 0.28663364 0.1743658 0.29087797 0.16783087 0.2908192
		 0.17438434 0.2944766 0.16809438 0.2948105 0.22576767 0.54590189 0.22576767 0.54590189
		 0.22382188 0.54596734 0.22382808 0.5459671 0.22188747 0.54603231 0.22188747 0.54603231
		 0.053704739 0.29780546 0.057720661 0.30050501 0.061760664 0.29802075 0.057617545
		 0.2937229 0.21480297 0.27910843 0.21479653 0.27910706 0.2147554 0.2790983 0.21480297
		 0.27910843 0.2146595 0.27984127 0.21419512 0.28235933 0.21433721 0.28148732 0.21458255
		 0.28023431 0.54624736 0.43102178 0.53219932 0.55174303 0.51574677 0.42080042 0.54244459
		 0.43322524 0.53131801 0.54593408 0.5310396 0.55957353 0.54517937 0.55376804 0.20776986
		 0.28041658 0.20800208 0.28231695 0.20763354 0.27937308 0.51776505 0.57758462 0.50314242
		 0.58694565 0.50318664 0.57450807 0.51776505 0.57758462 0.20621084 0.29802009 0.21276061
		 0.29909137 0.21275495 0.29933712 0.20579325 0.29934415 0.20669858 0.29663202 0.21194445
		 0.29776666 0.20713012 0.29503199 0.21280323 0.29724267 0.20125471 0.28890625 0.20340364
		 0.28795436 0.2009282 0.2927241 0.20148264 0.28333125 0.20131181 0.28032961 0.20137249
		 0.27849534 0.20168911 0.27665791 0.20799582 0.27767637 0.19988386 0.29687831 0.19949244
		 0.29916838 0.20044808 0.29534116 0.19406675 0.28842124 0.1939088 0.29152647 0.19437473
		 0.28368595 0.19435166 0.28046051 0.19434576 0.27804145 0.19274978 0.29798564 0.19959997
		 0.29918453 0.19726352 0.29883394 0.1933351 0.29558018 0.19370441 0.29373834 0.18821315
		 0.28802219 0.19113116 0.28814116 0.1909918 0.29103234 0.18809251 0.29090968 0.18831526
		 0.28450659 0.19139598 0.28376499 0.18863516 0.28018823 0.19143932 0.28046778 0.18895446
		 0.2772707 0.19159828 0.27776721 0.18948196 0.27549824 0.19173913 0.27609459 0.18776922
		 0.29592994 0.19033025 0.29562274 0.19049035 0.29794881 0.18824838 0.29825577 0.18773089
		 0.29324409 0.19079588 0.29322299 0.1810215 0.28748211 0.18077289 0.29082605 0.18175255
		 0.28372583 0.18167506 0.27937004 0.18207107 0.27583346 0.18251871 0.27304336 0.18105035
		 0.29720041 0.18183909 0.30031922 0.18072127 0.29386577 0.83303624 0.22608462 0.838009
		 0.2095502 0.17475872 0.29814979 0.17552446 0.30176422 0.073367834 0.27859566 0.070379138
		 0.28155854 0.075214505 0.29370508 0.079382896 0.2937195 0.070379019 0.30589023 0.073361516
		 0.30883089 0.058266521 0.3113974 0.058470249 0.31557795 0.045432687 0.30662939 0.043379307
		 0.30834016 0.039892793 0.29364285 0.037815332 0.29292855 0.045481563 0.28081873 0.044286847
		 0.2781488 0.058251143 0.27603921 0.058481216 0.27186325 0.065850616 0.28574887 0.069087982
		 0.29373273 0.22609419 0.55204415 0.22609419 0.55204415 0.22609419 0.55204415 0.22609419
		 0.55204415 0.065871477 0.30165789 0.057976723 0.30471286 0.050045013 0.30176553 0.046670794
		 0.29363957 0.050031304 0.28566274 0.058046103 0.28272977 0.061803699 0.28944495 0.064660311
		 0.29370454 0.051137328 0.2937493 0.053570867 0.28982392 0.057698011 0.28692934 0.19413517
		 0.276436 0.97112894 0.80663002 0.96939439 0.79862952 0.97098851 0.81216466 0.97098851
		 0.81216466 0.9308759 0.78221202;
	setAttr ".uvSet[0].uvSetPoints[250:499]" 0.93213075 0.78232276 0.92832947 0.79775262
		 0.92711812 0.79938674 0.93294388 0.78239453 0.92923588 0.80449116 0.93246454 0.78235221
		 0.9277299 0.80418479 0.96021259 0.90281975 0.95888627 0.90623641 0.94670659 0.80906379
		 0.94832355 0.79963052 0.93369246 0.78246057 0.94881725 0.78379548 0.94769794 0.7964797
		 0.94502145 0.80533731 0.94881725 0.78379548 0.94776559 0.79571342 0.92865086 0.78201568
		 0.93086183 0.78221083 0.92759311 0.79400325 0.92759311 0.79400325 0.93635321 0.7476778
		 0.93635315 0.7476778 0.94200939 0.76041448 0.93125343 0.76444399 0.92089188 0.75973487
		 0.92870104 0.75008428 0.92850083 0.75014722 0.93635321 0.7476778 0.94801134 0.82535648
		 0.95173854 0.82561457 0.95359898 0.82574344 0.95123959 0.82558 0.94377035 0.75154614
		 0.94116127 0.75745606 0.94322568 0.76051831 0.94649011 0.75296462 0.93346155 0.76033235
		 0.93246979 0.76454973 0.92597914 0.75692248 0.92199141 0.75977981 0.93783039 0.82451773
		 0.9398396 0.82471335 0.93894005 0.82462585 0.93610424 0.82434964 0.96581888 0.79722929
		 0.96665651 0.79730535 0.96595675 0.79669917 0.96579409 0.79666698 0.96936673 0.79704344
		 0.97132254 0.79779685 0.97277313 0.79743659 0.97322845 0.79676723 0.97413898 0.7954284
		 0.97273153 0.79521668 0.93577111 0.82431722 0.93404865 0.82414961 0.9659152 0.79447913
		 0.9657734 0.7945447 0.96932524 0.79482353 0.86477649 0.23993708 0.86181331 0.24934526
		 0.86924773 0.24651732 0.86934614 0.23983099 0.86049551 0.24020173 0.85375166 0.25234476
		 0.85338044 0.24076404 0.84856236 0.25400832 0.84602559 0.24104042 0.84342551 0.25512692
		 0.83832151 0.24105586 0.83811975 0.25544015 0.83075744 0.2407452 0.83282673 0.2549409
		 0.82341921 0.24015416 0.82771933 0.25364479 0.81654245 0.23946328 0.82257074 0.25179461
		 0.81196147 0.23889725 0.81463474 0.24846531 0.80719537 0.2385882 0.80686629 0.24540906
		 0.86176527 0.25265637 0.87038881 0.2473882 0.8540706 0.25533816 0.84901798 0.25702879
		 0.84452438 0.25806978 0.84128892 0.098852865 0.84123296 0.099982522 0.8482365 0.10017989
		 0.8439852 0.098911338 0.83859241 0.098803975 0.83429343 0.099902518 0.82715899 0.25665513
		 0.83162266 0.25784734 0.8221404 0.25479177 0.8144598 0.25179985 0.80557716 0.24627768
		 0.87214667 0.10118454 0.87362313 0.11102427 0.88428748 0.11181902 0.88493377 0.10184862
		 0.86215675 0.10079362 0.86099976 0.11019748 0.85522014 0.10046505 0.85424829 0.10954922
		 0.84766233 0.10905967 0.84106904 0.10880513 0.83451676 0.10879926 0.82730025 0.09991283
		 0.82791805 0.10902669 0.82035375 0.099973612 0.82115269 0.1094101 0.81035537 0.099991046
		 0.80854499 0.1097502 0.79733914 0.10028576 0.79772776 0.11007249 0.86266863 0.17559436
		 0.86303091 0.17744714 0.86715269 0.17922808 0.86793667 0.17859524 0.85672617 0.17470142
		 0.85750884 0.17623945 0.8509481 0.17419954 0.85170084 0.1752215 0.84534508 0.17404839
		 0.84462637 0.1746686 0.83979636 0.17381167 0.84020942 0.17408372 0.83422786 0.17367598
		 0.83349472 0.17468779 0.82857823 0.17377482 0.82785857 0.17470798 0.82277668 0.17407408
		 0.82204485 0.17560221 0.81678462 0.17465372 0.81645048 0.1772778 0.81127876 0.17691405
		 0.81206381 0.17947233 0.87184763 0.23947109 0.80469936 0.23819844 0.81959838 0.12052657
		 0.82651788 0.1203604 0.80844939 0.12092485 0.80033386 0.12094864 0.80851978 0.22875616
		 0.80573767 0.2285215 0.81177503 0.22867611 0.81659102 0.22857037 0.82354057 0.2283968
		 0.83108652 0.22934854 0.83848578 0.22873405 0.17598926 0.28611699 0.17421089 0.28603426
		 0.17101644 0.2866272 0.17542277 0.28609064 0.84636331 0.22879937 0.85370964 0.22897699
		 0.86075747 0.22943023 0.86540216 0.22977033 0.86863142 0.2299931 0.87142593 0.22982487
		 0.87325066 0.12222942 0.88127416 0.12261488 0.86211026 0.12137883 0.85519534 0.12093502
		 0.84812546 0.1206049 0.84080356 0.12040686 0.83359206 0.12031358 0.19036828 0.28709373
		 0.19055294 0.28481731 0.047922373 0.61300778 0.040276527 0.61887479 0.028208854 0.61138666
		 0.04014957 0.59971201 0.039379716 0.62764597 0.02374649 0.62756896 0.040639281 0.63676822
		 0.028208015 0.64397848 0.047923684 0.64235497 0.040147543 0.65565419 0.05636704 0.64454663
		 0.056221843 0.6597358 0.064749122 0.64224243 0.072135448 0.65534329 0.070877671 0.63609219
		 0.083719254 0.64365172 0.073130131 0.62768209 0.087968349 0.62768209 0.07087636 0.61927187
		 0.083712578 0.61171401 0.064748883 0.61312163 0.072128415 0.60002398 0.056366682
		 0.61081767 0.056217313 0.59563613 0.017643571 0.60535777 0.03390491 0.58930922 0.011585712
		 0.62743855 0.017543197 0.65000701 0.033901453 0.66605628 0.055971265 0.67171454 0.077759385
		 0.66561723 0.093563318 0.64958787 0.099383235 0.62768209 0.093562841 0.60577595 0.077753782
		 0.58974946 0.055968642 0.58364987 0.025298476 0.6096611 0.024836183 0.59315586 0.04010725
		 0.5860306 0.040550947 0.60547602 0.034217834 0.5930655 0.056253791 0.59272504 0.056705236
		 0.60801196 0.030434728 0.60816562 0.07873404 0.59325778 0.082464576 0.60816824 0.094771385
		 0.59314632 0.094304442 0.6096561 0.079068422 0.6054287 0.079491258 0.58602548 0.093716383
		 0.63176763 0.077740908 0.63261199 0.092901111 0.65361941 0.077698469 0.65690947 0.092285872
		 0.6694926 0.077212691 0.67533135 0.033845901 0.59127223 0.05591774 0.59150767 0.055926561
		 0.60654056 0.030252337 0.60635543 0.07771349 0.59127736 0.081602573 0.60635245 0.027312279
		 0.6694926 0.026703238 0.65361392 0.041897178 0.65690827 0.042381048 0.67533648 0.025880814
		 0.63176501 0.0411762 0.63143933 0.057154894 0.58335197 0.057481289 0.60379875 0.056722283
		 0.62513435 0.029244661 0.62531376 0.083666563 0.62516916 0.062119126 0.60377312 0.062440276
		 0.58335185 0.061578274 0.6310662 0.060990691 0.65774381 0.06056118 0.67702198 0.055926561
		 0.62312984;
	setAttr ".uvSet[0].uvSetPoints[500:749]" 0.028986216 0.62297857 0.082867384
		 0.62297511 0.058601141 0.65774274 0.059031725 0.67702425 0.058011532 0.63106394 0.074256897
		 0.58541083 0.074425697 0.60480809 0.05621469 0.64234126 0.030807257 0.64240217 0.082095861
		 0.64238727 0.045168042 0.60480881 0.045338988 0.58541 0.044818878 0.63071275 0.044443607
		 0.65604067 0.044185162 0.67431223 0.055926561 0.63951862 0.030328035 0.63939989 0.081525683
		 0.6393975 0.075149655 0.65603876 0.075443625 0.67430604 0.074774742 0.63071072 0.088633895
		 0.59259534 0.089293838 0.60831749 0.056666017 0.65640604 0.034368753 0.65663183 0.078529835
		 0.6566323 0.030298233 0.60840583 0.030990362 0.59192741 0.029715061 0.63042533 0.02957046
		 0.65198076 0.029675722 0.667593 0.055926561 0.65425372 0.034144402 0.65414476 0.077708483
		 0.65414536 0.090026975 0.65197968 0.089545131 0.66777802 0.089880466 0.63042438 0.08221364
		 0.59059978 0.098638058 0.60658681 0.088254333 0.61278605 0.076399446 0.60111046 0.10486174
		 0.62910032 0.092688799 0.62901127 0.098638058 0.65130389 0.088254809 0.64510453 0.082214117
		 0.6672914 0.076399326 0.65678024 0.060267806 0.6726079 0.060391784 0.66081607 0.039123178
		 0.66621959 0.044684291 0.65632772 0.024225354 0.64994514 0.033250093 0.64479494 0.018852949
		 0.6285367 0.028930185 0.62894523 0.02432549 0.60727859 0.033249736 0.6130954 0.039253116
		 0.59151423 0.044683337 0.60156238 0.060325623 0.58526742 0.060390472 0.59707427 0.075120091
		 0.62049675 0.068934202 0.6143235 0.07739532 0.62895286 0.075119853 0.63739371 0.068934202
		 0.64356673 0.060507178 0.64574802 0.052206516 0.64339077 0.046163917 0.63729858 0.043890238
		 0.62894523 0.046164155 0.62059176 0.052204967 0.61449921 0.060506344 0.61214232 0.056411862
		 0.62768221 0.060572624 0.62894523 0.58669066 0.47612575 0.58878207 0.47387341 0.61820573
		 0.47413102 0.61810553 0.47844973 0.5841279 0.57224095 0.58203673 0.54194868 0.61690116
		 0.54343438 0.61633372 0.57353377 0.59763336 0.65449119 0.59770513 0.65541065 0.61472195
		 0.66706622 0.60366428 0.65954125 0.58518863 0.4120225 0.58114743 0.41115198 0.58495784
		 0.38098738 0.58885956 0.38200912 0.61997604 0.38266286 0.61939216 0.41234627 0.65771651
		 0.41266462 0.6536448 0.41337112 0.65116495 0.38322666 0.65510035 0.38235769 0.58743215
		 0.45591494 0.61856604 0.45493177 0.65350413 0.45820931 0.64969754 0.45709673 0.64963078
		 0.47735086 0.64765644 0.4749938 0.65185666 0.54323053 0.6486485 0.57344615 0.6217925
		 0.29259112 0.62193501 0.2909126 0.6402235 0.30251011 0.63713843 0.30344513 0.58358574
		 0.45687887 0.58453107 0.49646139 0.61772591 0.49695623 0.6510334 0.4977113 0.60252655
		 0.37355533 0.62020755 0.3712872 0.593211 0.36817929 0.59223312 0.58527422 0.61613125
		 0.58497036 0.64433885 0.37055907 0.64022613 0.58469629 0.64855385 0.37033996 0.60056037
		 0.31666794 0.60567218 0.30242637 0.63202477 0.65604842 0.49738955 0.95062912 0.38874173
		 0.95067763 0.38877332 0.9031508 0.4954192 0.90763807 0.27255422 0.95188367 0.27472752
		 0.90366566 0.61056679 0.76764071 0.61724001 0.73862171 0.64243585 0.74875093 0.62615246
		 0.777107 0.13282591 0.69906306 0.14107323 0.73410261 0.12233889 0.74563515 0.1024102
		 0.71164167 0.67053574 0.77044439 0.64746988 0.79036248 0.096913338 0.76176488 0.068987846
		 0.73824596 0.65187514 0.80554497 0.68476444 0.78962886 0.69777197 0.83154273 0.64977038
		 0.83539522 0.052508593 0.76153982 0.091842771 0.77997351 0.094703674 0.81550097 0.037791967
		 0.81160474 0.649077 0.90110791 0.70310032 0.89404345 0.71172184 0.92027271 0.64811867
		 0.93044043 0.032427073 0.88539767 0.095812798 0.89349437 0.097006559 0.9277209 0.022522449
		 0.91612172 0.16268957 0.94178367 0.16588628 0.899387 0.15525997 0.80539846 0.13812709
		 0.77099371 0.17659295 0.79852569 0.16662937 0.73919964 0.59193158 0.94221628 0.58929116
		 0.90579057 0.59894955 0.82675099 0.6131624 0.79819667 0.58124411 0.82068753 0.58947456
		 0.77194023 0.16760254 0.69322717 0.58855098 0.73389602 0.59034961 0.88187397 0.49639285
		 0.87473428 0.6489988 0.87524796 0.6992541 0.87599111 0.095851779 0.86280906 0.03678596
		 0.86417723 0.16488397 0.87109256 0.27537596 0.86641824 0.58586836 0.77150226 0.58634567
		 0.73373735 0.57619667 0.81493938 0.17120922 0.73816705 0.18366826 0.79323947 0.17027712
		 0.69302595 0.39017135 0.8630656 0.27968609 0.85638869 0.39062226 0.85328031 0.49304414
		 0.86552751 0.71106064 0.93260789 0.64993238 0.94041145 0.59383059 0.9554472 0.094926119
		 0.93933809 0.023406625 0.93052006 0.16043377 0.9571842 0.4988656 0.96328247 0.38878179
		 0.97150433 0.27071571 0.96586406 0.92629689 0.60057688 0.92804122 0.60353661 0.92286181
		 0.60811353 0.92088246 0.60380328 0.93090266 0.50710964 0.92051363 0.49805748 0.93056536
		 0.49415505 0.94010615 0.50204808 0.93967199 0.50758576 0.90341139 0.51979709 0.90177703
		 0.51575232 0.91221189 0.50991082 0.91380763 0.51370406 0.91477132 0.52060604 0.92891455
		 0.52440202 0.92809689 0.53080201 0.9173317 0.52925801 0.89462614 0.475822 0.89629024
		 0.47806099 0.92171168 0.48519176 0.93142056 0.48512194 0.93189788 0.52539039 0.93129802
		 0.53026247 0.92815965 0.54206014 0.91961002 0.54021931 0.89824152 0.46559957 0.8998751
		 0.46669462 0.9259882 0.47400507 0.93413711 0.47277847 0.93143463 0.54178238 0.92788023
		 0.55170703 0.92041224 0.55124879 0.90168071 0.45372483 0.90304607 0.4549109 0.9292872
		 0.46238461 0.93560004 0.4627848 0.93112683 0.55119526 0.9284572 0.56308055 0.92141032
		 0.56477416 0.90605187 0.43911365 0.90824217 0.4385592 0.93258619 0.44794086 0.9381628
		 0.45047131 0.93171191 0.56285393 0.92928636 0.57909048 0.92100859 0.57858884 0.90894866
		 0.42512789 0.91222924 0.42331466 0.93458724 0.4321138 0.94103688 0.43284401 0.93308806
		 0.57961035;
	setAttr ".uvSet[0].uvSetPoints[750:999]" 0.91822499 0.44220307 0.92032784 0.42688635
		 0.9140963 0.45791271 0.91099781 0.46921632 0.90668225 0.47977236 0.91000319 0.49560261
		 0.91832829 0.50451255 0.9186728 0.51230848 0.91761589 0.50810283 0.93070793 0.51154387
		 0.90893531 0.51925015 0.90225357 0.53202224 0.90424085 0.54153216 0.90561432 0.5528146
		 0.90690011 0.56700683 0.90663522 0.58028924 0.90949893 0.60926187 0.9088673 0.60461998
		 0.90494609 0.49373543 0.91343641 0.50238186 0.89188004 0.53154349 0.89316797 0.54193473
		 0.89453721 0.55402422 0.89675331 0.5689168 0.89822054 0.58266675 0.905056 0.60591114
		 0.90370917 0.6016649 0.91945696 0.40380475 0.92462516 0.40123615 0.91494107 0.40524808
		 0.93721247 0.40228859 0.94226646 0.40670589 0.94865245 0.51274407 0.96371299 0.52309811
		 0.94906211 0.52609062 0.93910122 0.51768327 0.93938684 0.51209843 0.95124364 0.60433435
		 0.95687795 0.60728824 0.9551087 0.611727 0.9496212 0.60740459 0.9768672 0.51888537
		 0.97506398 0.52282262 0.96506327 0.51628625 0.96685439 0.51262212 0.94580102 0.5269655
		 0.93883777 0.52064574 0.96145582 0.48807341 0.96036798 0.50091988 0.95106626 0.49538279
		 0.95187217 0.48623729 0.94967055 0.53276062 0.94641399 0.53212774 0.96069098 0.53165543
		 0.98771423 0.48578197 0.9897601 0.483897 0.95929599 0.47607908 0.95153356 0.47353402
		 0.94933385 0.54427111 0.94602275 0.54392385 0.95802569 0.54263258 0.98631567 0.47398719
		 0.98811913 0.47321871 0.95827585 0.46423963 0.95200539 0.46343294 0.94944781 0.55403936
		 0.9461894 0.55347121 0.95697236 0.55372167 0.98542064 0.46186039 0.98697877 0.46095756
		 0.95777678 0.44944611 0.95183873 0.45088282 0.94869798 0.56548119 0.94543028 0.56520724
		 0.95575637 0.56729937 0.98343772 0.44487491 0.98547411 0.44584015 0.95871669 0.43340662
		 0.95175916 0.43345323 0.94730061 0.58099329 0.94370437 0.58170414 0.95596862 0.58126473
		 0.98249811 0.42919126 0.98535156 0.43161181 0.95681196 0.58818066 0.94710493 0.588287
		 0.98274201 0.42240241 0.98489565 0.42471245 0.95104551 0.42411092 0.96010184 0.42386809
		 0.94384336 0.59051919 0.95629668 0.4071289 0.9621067 0.40375891 0.97924066 0.40866223
		 0.98338985 0.41096309 0.97466421 0.40515056 0.97506398 0.42366019 0.97386193 0.43111691
		 0.97295421 0.44653681 0.97402436 0.46271905 0.97493005 0.47425744 0.97721475 0.48551869
		 0.97636461 0.49948728 0.97108608 0.50038952 0.96652532 0.506392 0.96140367 0.50758076
		 0.96033734 0.51459897 0.96167469 0.51053727 0.96959704 0.52203512 0.98602217 0.53491318
		 0.97569418 0.53501368 0.98438841 0.54512823 0.97339624 0.54440284 0.98273712 0.5570308
		 0.97175211 0.55560219 0.98033851 0.57171667 0.97026277 0.56972885 0.97891688 0.58530653
		 0.9704923 0.58301485 0.97124797 0.58961022 0.97869021 0.59192777 0.97401857 0.60436928
		 0.96898216 0.6075325 0.96856457 0.61220849 0.97285199 0.60866439 0.94899678 0.50825876
		 0.24211973 0.46080306 0.2571063 0.46006599 0.25673091 0.48689407 0.24201345 0.48659879
		 0.23425654 0.5204196 0.22571674 0.50974464 0.24374548 0.51077318 0.24659202 0.52617264
		 0.19958377 0.48974019 0.18504232 0.49193966 0.18198991 0.46668503 0.19608778 0.46532419
		 0.27403727 0.48371872 0.25523072 0.48157224 0.25488228 0.46955195 0.26912811 0.4743742
		 0.32118094 0.46437827 0.33573461 0.4666318 0.33366048 0.49032205 0.31931752 0.48917478
		 0.2270233 0.46203074 0.22749716 0.48677176 0.21909562 0.48839518 0.22158507 0.47772023
		 0.24279651 0.48072484 0.24208477 0.48839518 0.15902311 0.46787098 0.16104841 0.49357164
		 0.14918149 0.49568117 0.15250456 0.46830454 0.26160309 0.4532373 0.26161399 0.47568366
		 0.25520307 0.47648856 0.25509602 0.45395327 0.28093106 0.48619753 0.28189719 0.45986703
		 0.28880394 0.45993319 0.29280412 0.4875502 0.22158507 0.4990702 0.24279651 0.49606517
		 0.77119458 0.50782007 0.77119458 0.50782007 0.77119458 0.50782007 0.77119458 0.50782007
		 0.26813248 0.45399046 0.26802614 0.47638884 0.26892722 0.48678154 0.27478832 0.45945027
		 0.17302942 0.49312043 0.16545349 0.46744505 0.23545817 0.48103103 0.23942891 0.47353229
		 0.22678819 0.46704581 0.23425654 0.45637083 0.24659202 0.45061734 0.24374548 0.46601728
		 0.37895232 0.47421351 0.37432474 0.49805009 0.36063468 0.49514997 0.36553431 0.47182789
		 0.25211397 0.46044591 0.25152388 0.47224233 0.23416629 0.47518107 0.23907009 0.46690133
		 0.30491602 0.48837942 0.30648887 0.46232596 0.13665676 0.49697053 0.13548326 0.47075549
		 0.26491717 0.46542791 0.27008906 0.47309873 0.21060491 0.46374777 0.21403331 0.48779863
		 0.19604862 0.39449063 0.18442959 0.39749238 0.18490136 0.39411357 0.20163119 0.39245573
		 0.17028725 0.39622602 0.17155832 0.39900127 0.26161221 0.50310582 0.26801422 0.50229585
		 0.26813248 0.52480507 0.26163211 0.52555358 0.25520307 0.50230074 0.25509602 0.52483654
		 0.25152388 0.49590871 0.27008906 0.49505189 0.26491717 0.50272369 0.25211397 0.50770521
		 0.23416629 0.49296996 0.23907009 0.50125027 0.3467865 0.49225086 0.35159397 0.46933404
		 0.26399532 0.46601722 0.26114872 0.45061734 0.27348372 0.45637083 0.28095278 0.46704581
		 0.26494423 0.48072484 0.2861557 0.47772023 0.26565579 0.48839518 0.28864509 0.48839518
		 0.26494423 0.49606511 0.2861557 0.4990702 0.26399532 0.51077318 0.28202376 0.50974464
		 0.26114872 0.52617264 0.27348372 0.5204196 0.2709693 0.49900308 0.25523072 0.50292206
		 0.23813817 0.50092316 0.30186284 0.56241405 0.30275595 0.5371722 0.31569064 0.53504837
		 0.31347001 0.55904472 0.29096997 0.56333721 0.2911756 0.5375613 0.28047919 0.56017244
		 0.28011835 0.53469133 0.26979697 0.56424415 0.26894295 0.5375818 0.25852221 0.56414783
		 0.25722873 0.53735101 0.24320269 0.53447282 0.24493098 0.56046283 0.2293855 0.53220546;
	setAttr ".uvSet[0].uvSetPoints[1000:1249]" 0.23148453 0.55723703 0.2173785 0.53284156
		 0.21766841 0.55759513 0.20407057 0.53662002 0.20531082 0.56155193 0.19345415 0.56649148
		 0.19081974 0.54118383 0.1795212 0.54316556 0.18334079 0.56835115 0.16797394 0.54223394
		 0.17297101 0.56675994 0.15739274 0.54732263 0.16401863 0.57257831 0.14523423 0.54955804
		 0.15323913 0.57484043 0.35253096 0.53995311 0.36446011 0.54540336 0.35857213 0.56928527
		 0.3485328 0.56336582 0.33766794 0.55812061 0.34015059 0.53517425 0.3253997 0.55656803
		 0.32886732 0.53366935 0.30405557 0.51286924 0.3179819 0.51222789 0.29201639 0.51271617
		 0.28037727 0.51048988 0.26862681 0.51230276 0.25654507 0.51217639 0.24204004 0.51055181
		 0.22774887 0.50941414 0.21651834 0.51009494 0.20236945 0.51301086 0.18818545 0.51646125
		 0.17614949 0.51819694 0.1639868 0.51793563 0.15211487 0.52173746 0.13906538 0.5234803
		 0.35619378 0.51742494 0.3696236 0.52166164 0.3427732 0.51355731 0.33192396 0.51205575
		 0.23849022 0.44234839 0.2535736 0.44158033 0.22479272 0.44356921 0.24598196 0.5254966
		 0.22359243 0.52553058 0.22759256 0.50605935 0.24637523 0.50603908 0.27033842 0.44052592
		 0.18323898 0.44922867 0.19643486 0.44746688 0.21415097 0.44634858 0.16814983 0.44965747
		 0.29429752 0.52483368 0.27178839 0.52517354 0.27139786 0.50603598 0.28960651 0.50616318
		 0.32582372 0.44662848 0.33886755 0.44887295 0.31151092 0.44425097 0.29225504 0.53048086
		 0.26971957 0.53048086 0.26923713 0.51102066 0.28805667 0.51102066 0.29579914 0.44095889
		 0.24390724 0.53048086 0.2213718 0.53048086 0.22557017 0.51102066 0.24438962 0.51102066
		 0.12997031 0.45341769 0.14546168 0.44943371 0.36712813 0.45448914 0.38027835 0.45729819
		 0.35464978 0.45189372 0.24716404 0.46711931 0.23553964 0.46695128 0.23849252 0.44927624
		 0.24762908 0.44836372 0.27028075 0.46725115 0.26865724 0.44806337 0.17110974 0.41626123
		 0.17067182 0.40963855 0.18475282 0.41494259 0.19638526 0.41228953 0.2044543 0.41016707
		 0.2195673 0.40769759 0.21673715 0.39023903 0.23112285 0.40656015 0.22770512 0.38978729
		 0.26465061 0.46507791 0.26912811 0.46660092 0.26417792 0.40452322 0.24766272 0.40563276
		 0.24784756 0.39013717 0.26236129 0.38938949 0.2467697 0.48657987 0.23169336 0.48655549
		 0.27095762 0.48660687 0.2835561 0.48737791 0.27790222 0.4704468 0.18435043 0.43210927
		 0.1700682 0.43291047 0.1978581 0.42958841 0.2117908 0.42874619 0.22227007 0.42553589
		 0.23479319 0.42433706 0.25031364 0.42349711 0.2668525 0.42254922 0.94548649 0.28845432
		 0.94825524 0.30975583 0.92507088 0.31298557 0.92320949 0.2167381 0.33628345 0.41199818
		 0.32285774 0.40908805 0.32896692 0.39194724 0.34206438 0.39508769 0.34625673 0.41415015
		 0.35057044 0.39713332 0.361763 0.41780946 0.36598468 0.40117213 0.37122887 0.42021272
		 0.37406856 0.40354726 0.11448121 0.41753092 0.099823833 0.42104146 0.093114138 0.40245864
		 0.1072855 0.39903399 0.12811589 0.41272685 0.12011898 0.39436576 0.24535468 0.47210118
		 0.23396686 0.47210118 0.23816553 0.45264056 0.24583706 0.45264056 0.26827267 0.47210118
		 0.26778975 0.45264056 0.2796596 0.47210118 0.27546129 0.45264056 0.3099364 0.40530249
		 0.31678927 0.38786027 0.33088052 0.42916384 0.31703293 0.42649838 0.34238124 0.43138739
		 0.35807025 0.43472138 0.36910611 0.43724051 0.38202441 0.44017354 0.38391036 0.42307231
		 0.13702023 0.43102881 0.12262034 0.43584529 0.244872 0.49156091 0.22976908 0.49156091
		 0.26875481 0.49156091 0.2838583 0.49156091 0.30293632 0.42291972 0.93184543 0.23220474
		 0.93074769 0.23743521 0.91401148 0.23702274 0.91491795 0.23151073 0.94889539 0.23321515
		 0.94779539 0.23800384 0.96647304 0.2343002 0.96541208 0.23890291 0.97051668 0.25468835
		 0.96705621 0.25421408 0.96984267 0.24042089 0.9718318 0.26691249 0.96886039 0.26727536
		 0.97379428 0.27915314 0.97059196 0.28028658 0.97694778 0.29266343 0.97310925 0.2955201
		 0.95902157 0.30615672 0.95645559 0.30157909 0.97556305 0.29957351 0.94197392 0.31185564
		 0.93991756 0.30660066 0.92511272 0.31582293 0.92317152 0.30991438 0.92392087 0.18304572
		 0.92141914 0.29201993 0.92678761 0.16768056 0.93772054 0.28829536 0.91933775 0.27392319
		 0.93567371 0.27179793 0.91692185 0.25593314 0.93339872 0.25530013 0.95417428 0.28457358
		 0.952209 0.26957181 0.95012808 0.25455007 0.94349074 0.17135578 0.94057178 0.18749461
		 0.93790579 0.20211324 0.9212904 0.19905481 0.9350934 0.21637043 0.91838551 0.21459046
		 0.96026826 0.17730695 0.95731682 0.19214377 0.95473784 0.20543966 0.95205402 0.21847066
		 0.97683287 0.18386444 0.97405505 0.19722423 0.97176528 0.208922 0.96939081 0.22050056
		 0.71036786 0.21714288 0.6865136 0.20915535 0.68597597 0.16053109 0.71595764 0.16320698
		 0.65420794 0.20720872 0.65639639 0.15808456 0.62183905 0.20708731 0.62676048 0.15799195
		 0.59698415 0.21208462 0.59667253 0.15789098 0.6890099 0.12741691 0.72163558 0.13040966
		 0.66120046 0.12621337 0.62678593 0.12469142 0.59401631 0.12483173 0.69287688 0.048707955
		 0.72439104 0.050660148 0.66144276 0.047177613 0.62993193 0.045773566 0.59803224 0.044874847
		 0.75592577 0.59033263 0.75749832 0.56526756 0.77856487 0.56524575 0.7840746 0.59041083
		 0.86061454 0.44766012 0.86009204 0.44434229 0.8470149 0.44226864 0.8457188 0.44975486
		 0.60738599 0.35176578 0.59403938 0.35648504 0.5922175 0.36760947 0.59974778 0.36481598
		 0.76803279 0.41471204 0.77022314 0.40562436 0.7910471 0.40926787 0.79050636 0.41692862
		 0.76482415 0.44148222 0.78638577 0.4421306 0.70288974 0.59590638 0.70243597 0.56513822
		 0.70366156 0.56517518 0.70203948 0.59583807 0.69947743 0.60220218 0.7014761 0.60187173
		 0.70356989 0.62122631 0.7024985 0.62105048 0.71268988 0.40549418 0.71179485 0.39792845;
	setAttr ".uvSet[0].uvSetPoints[1250:1499]" 0.71378446 0.39841053 0.71396184 0.40487388
		 0.71138358 0.43403783 0.71261358 0.43413141 0.73576385 0.5652535 0.73729742 0.59084284
		 0.71436584 0.59175825 0.71424592 0.56484795 0.75344694 0.44910654 0.75172985 0.45502779
		 0.74046391 0.45695719 0.74169785 0.44958422 0.75368047 0.48072317 0.74381411 0.47333184
		 0.74605656 0.40316793 0.74618912 0.41219291 0.7245369 0.40949139 0.72580135 0.40173855
		 0.74411607 0.43931833 0.72277564 0.43550852 0.74576116 0.59341669 0.74581605 0.56496561
		 0.74740148 0.56505418 0.74695367 0.59291875 0.74633974 0.60059834 0.74753243 0.60121822
		 0.74689364 0.61885417 0.74766976 0.61949456 0.75664252 0.41012898 0.75765365 0.40299192
		 0.75909424 0.40248987 0.75782865 0.41065392 0.75369954 0.44022074 0.75502443 0.44027916
		 0.71516514 0.37820587 0.71577072 0.37894639 0.77434063 0.38302609 0.79437447 0.38590595
		 0.7599721 0.38461319 0.76079512 0.38401631 0.74819136 0.37951359 0.72802496 0.37749705
		 0.60658067 0.37789598 0.60695195 0.36023411 0.74829364 0.37809572 0.72842455 0.37610897
		 0.78867996 0.56558812 0.79170448 0.59334457 0.78778249 0.59662127 0.79244232 0.59886575
		 0.71487814 0.59939611 0.715446 0.62389696 0.71493703 0.6001178 0.7082299 0.61915529
		 0.80321646 0.40860114 0.80233598 0.41501269 0.79660392 0.44291952 0.80708504 0.3890954
		 0.73646384 0.59941256 0.75717825 0.59917426 0.73664743 0.62253094 0.75815099 0.62122846
		 0.74592006 0.6199584 0.79525232 0.45672742 0.78417486 0.45761302 0.71144074 0.44849399
		 0.71027827 0.4488118 0.72208786 0.45141938 0.74397963 0.45427337 0.76196188 0.45704785
		 0.7521295 0.45472446 0.75300026 0.45551136 0.77853954 0.5495311 0.78862411 0.55184758
		 0.70435566 0.55026543 0.71494859 0.54841304 0.70321602 0.54986215 0.75696659 0.54869902
		 0.73659801 0.54915595 0.74509931 0.54933572 0.74789244 0.54884911 0.79780316 0.48234585
		 0.78419369 0.47856107 0.70424503 0.47473016 0.70314574 0.47414425 0.71809143 0.4731926
		 0.73960543 0.47680047 0.76186395 0.47849062 0.74962872 0.48076919 0.75073832 0.48079589
		 0.78132749 0.52860832 0.79416436 0.52672279 0.78866023 0.53553867 0.78862536 0.55147934
		 0.78866023 0.53553867 0.78172749 0.52801311 0.69964385 0.52233303 0.70039952 0.52178037
		 0.75999534 0.52679121 0.73573261 0.52556622 0.71507353 0.52422953 0.74594706 0.52261376
		 0.74534202 0.52198124 0.79647136 0.49625552 0.78279972 0.49485528 0.70235443 0.48915476
		 0.7009356 0.48915225 0.71691561 0.48994428 0.73778725 0.49190611 0.76183414 0.49372053
		 0.7490294 0.49347067 0.75041527 0.49370587 0.78148699 0.51206756 0.79547232 0.51265562
		 0.70558578 0.51203299 0.70077389 0.50667667 0.71398652 0.50096768 0.6996637 0.50649846
		 0.7617411 0.51033455 0.73583442 0.50865209 0.74694407 0.50879514 0.74995273 0.50879061
		 0.16161764 0.49286675 0.16518664 0.50047106 0.16518664 0.50047106 0.17275923 0.49627697
		 0.15670687 0.48240355 0.15670687 0.48240355 0.16762899 0.30279228 0.1673926 0.29883257
		 0.17373125 0.29842392 0.17397676 0.30217203 0.16724734 0.29474583 0.17383729 0.2946879
		 0.16726826 0.29058638 0.17384599 0.29116288 0.17409299 0.29265139 0.16767673 0.28644547
		 0.17421411 0.28748563 0.16832875 0.28228745 0.17489301 0.2835125 0.16932748 0.2780768
		 0.17581175 0.27975419 0.17071818 0.27408519 0.17697369 0.276153 0.17234872 0.27044335
		 0.17823105 0.27279672 0.056028724 0.29787764 0.059151411 0.29479727 0.06223619 0.29785213
		 0.058982849 0.29921111 0.21407722 0.27799663 0.21492712 0.27815828 0.21321754 0.29546049
		 0.21373318 0.29268458 0.2144668 0.28789935 0.21474497 0.28456166 0.21480571 0.28213415
		 0.21329097 0.28057668 0.20769559 0.28715715 0.20799445 0.28398684 0.20712321 0.29155734
		 0.20660315 0.29444638 0.20619772 0.29671165 0.21102129 0.29875746 0.20595132 0.2987791
		 0.21010862 0.29898885 0.20816015 0.27957949 0.20838277 0.27695855 0.20811836 0.28150639
		 0.20106249 0.28667942 0.20144479 0.28354856 0.20051156 0.29074499 0.2000563 0.29353961
		 0.19964419 0.29589406 0.19932489 0.29822567 0.20169036 0.27890351 0.20167433 0.27622816
		 0.20162736 0.28100005 0.19361906 0.28678617 0.19427215 0.28359303 0.19298874 0.29060915
		 0.19266759 0.29307815 0.19256328 0.29506579 0.19255196 0.29722747 0.19493948 0.27916685
		 0.19482355 0.27714023 0.19475369 0.28101674 0.18774717 0.28901032 0.18878971 0.28512755
		 0.19173954 0.28437772 0.19061695 0.28842404 0.18719707 0.29189709 0.1898527 0.2913613
		 0.18726246 0.29553333 0.18966506 0.29361215 0.18724267 0.29637501 0.18981282 0.29544088
		 0.18774329 0.29886004 0.19023721 0.29746124 0.19031332 0.27963999 0.1908754 0.27784839
		 0.19281779 0.2779738 0.19269966 0.2794728 0.18969069 0.28206661 0.19232218 0.28142336
		 0.18062185 0.28843549 0.18141876 0.2846128 0.18027781 0.29166856 0.8304832 0.21092606
		 0.83505064 0.20243773 0.83505064 0.20243773 0.83262306 0.18297502 0.18044178 0.29776904
		 0.18037079 0.29470673 0.18091355 0.3010799 0.18348955 0.27788302 0.18468432 0.27513221
		 0.18237208 0.28110114 0.074072838 0.27933678 0.08078599 0.29429874 0.075755835 0.2944214
		 0.070693135 0.28272298 0.074136257 0.30934927 0.071115613 0.30662075 0.05890727 0.31473503
		 0.059001803 0.31179193 0.044224381 0.30946639 0.046887875 0.30658105 0.037373781
		 0.29426816 0.042279363 0.29443625 0.043974042 0.27937469 0.047342181 0.28276512 0.059005499
		 0.273303 0.059002757 0.27799442 0.067813993 0.29507527 0.067101479 0.28633061 0.067232847
		 0.30289647 0.059016705 0.30633292 0.050742745 0.30286261 0.047527313 0.29459623 0.050898194
		 0.28647789 0.058991313 0.28312472 0.06346643 0.29469988 0.062275171 0.29157749 0.054571748
		 0.29479489 0.05596137 0.29163924 0.059083819 0.29026029 0.92939371 0.22887343 0.91511148
		 0.23098645;
	setAttr ".uvSet[0].uvSetPoints[1500:1749]" 0.9161818 0.23691319 0.9287504 0.24116661
		 0.94668067 0.23146704 0.94596213 0.23974569 0.96440202 0.23454878 0.96376711 0.23910631
		 0.96839142 0.22036347 0.96939087 0.22050056 0.97182381 0.26683769 0.9706431 0.25586334
		 0.96620023 0.25421736 0.96874166 0.26716271 0.97377414 0.27902845 0.97057295 0.28014365
		 0.97690433 0.29251447 0.9730587 0.29570958 0.9609555 0.30538705 0.97554463 0.29954305
		 0.9590041 0.30214497 0.945934 0.17222245 0.96220481 0.1780736 0.95154655 0.17421328
		 0.94807076 0.17321326 0.92983931 0.16835202 0.92794389 0.31349233 0.92654061 0.17939274
		 0.92305261 0.24610041 0.94352686 0.30862293 0.93936163 0.29146633 0.21647364 0.43192485
		 0.20927501 0.43293312 0.20927501 0.43293312 0.21648526 0.43192318 0.22739708 0.42640021
		 0.22757542 0.43841425 0.23793638 0.42495468 0.23492098 0.42940322 0.95527798 0.28582522
		 0.93605518 0.27500513 0.95229787 0.2708737 0.9381367 0.2578024 0.94925064 0.2561076
		 0.94249582 0.18529168 0.92202038 0.19503537 0.93833071 0.19968101 0.91876167 0.2192232
		 0.93406487 0.21360132 0.9585858 0.19133869 0.9548443 0.20445433 0.95101213 0.217186
		 0.97403175 0.19734344 0.97680056 0.18401983 0.9716422 0.20900172 0.91878051 0.23181057
		 0.92042434 0.26131436 0.20911968 0.75551724 0.23964709 0.7349472 0.24304676 0.74436462
		 0.20913947 0.76006389 0.31741261 0.72549713 0.32591331 0.72511864 0.32496858 0.73654962
		 0.31728172 0.73710263 0.20925725 0.77345228 0.25320721 0.77309608 0.24267787 0.80397415
		 0.20955026 0.78790379 0.31688327 0.77310693 0.32395375 0.77314293 0.32389092 0.8121897
		 0.31643569 0.81143034 0.39861321 0.73093402 0.38938761 0.76125073 0.38460857 0.75479186
		 0.38802326 0.72878683 0.31632829 0.8210305 0.32403034 0.8217051 0.32558578 0.82403815
		 0.31635535 0.82374454 0.40634012 0.79282022 0.38200676 0.80792141 0.37777233 0.77720392
		 0.4071694 0.77852559 0.31398547 0.81344569 0.3072077 0.81291234 0.30831659 0.77446663
		 0.3152107 0.77460051 0.40771174 0.76531649 0.38417518 0.74912179 0.38602281 0.73991275
		 0.40784407 0.76089656 0.31639075 0.73866451 0.30893779 0.73888481 0.30914879 0.7280308
		 0.31675601 0.72782314 0.24632132 0.72431219 0.24857223 0.75169802 0.24349266 0.76062238
		 0.23546952 0.72546923 0.31408519 0.80206418 0.32246411 0.798141 0.32206845 0.81026757
		 0.31337738 0.81436336 0.50049353 0.76469767 0.50049353 0.76469767 0.50049353 0.76469767
		 0.50049353 0.76469767 0.49992442 0.78360057 0.49992442 0.78360057 0.49969995 0.79106593
		 0.49966502 0.79222751 0.47480989 0.79332674 0.47480989 0.79332674 0.47480989 0.79332674
		 0.47480989 0.79332674 0.50281262 0.79255521 0.50281262 0.79255521 0.50281262 0.79255521
		 0.50281262 0.79255521 0.33078611 0.72918081 0.3300972 0.73999166 0.32381403 0.73939836
		 0.32432812 0.72856498 0.29827988 0.80498338 0.29960227 0.79316819 0.30621934 0.79719925
		 0.30522215 0.80929124 0.30287683 0.7362076 0.30167401 0.72479069 0.30891597 0.72495413
		 0.30960619 0.73639095 0.29901135 0.82368886 0.30144435 0.82157862 0.30862004 0.82152975
		 0.30701399 0.82382762 0.26550305 0.80830944 0.2463581 0.80366719 0.25251043 0.77322853
		 0.27190053 0.77369571 0.26749635 0.73016798 0.26805043 0.74182534 0.24797678 0.7446456
		 0.2467227 0.73530817 0.36835563 0.78633702 0.36619872 0.77567339 0.38495076 0.75955772
		 0.38897127 0.76900792 0.36873603 0.74024153 0.37185955 0.72918069 0.39481544 0.73648989
		 0.39123124 0.74581301 0.3686893 0.80993474 0.35939264 0.77410352 0.38060766 0.77444482
		 0.39047426 0.80546534 0.26487726 0.77122569 0.25897682 0.77617192 0.24328345 0.76100516
		 0.24721473 0.75450695 0.36568809 0.73346746 0.36438274 0.74502015 0.35777497 0.74261129
		 0.35927844 0.73180246 0.26199049 0.78020179 0.26535439 0.76985633 0.27049786 0.77545571
		 0.26773989 0.78607619 0.26566112 0.73919487 0.26276433 0.72808623 0.27008563 0.72648752
		 0.27253616 0.73772442 0.26605237 0.82047963 0.26311141 0.81774914 0.27004421 0.81928992
		 0.26840448 0.82080424 0.22292006 0.78698337 0.22301698 0.77261293 0.22337663 0.75934219
		 0.22352827 0.75491083 0.39033347 0.73260999 0.40098041 0.73500788 0.42494678 0.75759256
		 0.42484224 0.76213527 0.42454231 0.77552629 0.4239701 0.78999317 0.23332441 0.73053813
		 0.2439127 0.72840714 0.32209873 0.77491903 0.32078266 0.81333685 0.30897057 0.81201947
		 0.30981511 0.77298999 0.35009128 0.82124269 0.36272895 0.82027507 0.36435133 0.82181716
		 0.35242641 0.8231349 0.28622442 0.77396286 0.28299803 0.81071925 0.27257264 0.80979013
		 0.27600431 0.77362001 0.28542548 0.72874665 0.28598022 0.73957074 0.27480459 0.739856
		 0.27401924 0.72894228 0.34883964 0.79762805 0.34795642 0.7863549 0.36044061 0.78063893
		 0.36195886 0.79150152 0.34973407 0.73757923 0.3519662 0.72629619 0.36462474 0.72750056
		 0.36192775 0.73866224 0.34952021 0.81187665 0.34401309 0.77358067 0.35549343 0.7736727
		 0.36107302 0.8113234 0.30170906 0.81209707 0.264341 0.80886602 0.27188289 0.81038249
		 0.24008751 0.81152046 0.2095927 0.79129684 0.058133364 0.62536812 0.067588806 0.62536192
		 0.067588806 0.62879288 0.058133364 0.62858713 0.40611541 0.7961458 0.38270998 0.81667399
		 0.36259305 0.82133043 0.3557657 0.82250071 0.35552096 0.81236708 0.36266088 0.81132913
		 0.32708436 0.82375777 0.3203733 0.82400811 0.32818854 0.81313348 0.31365275 0.82423151
		 0.30695939 0.82359159 0.28285432 0.82114673 0.27169627 0.81990039 0.26494277 0.81830597
		 0.2450974 0.81237495 0.22293985 0.79032636 0.49963534 0.79321444 0.49963534 0.79321444
		 0.39291608 0.81306708 0.42385566 0.79338789 0.36973119 0.81886017 0.058133364 0.59774053
		 0.067588806 0.59744525 0.067588806 0.6100316 0.058133364 0.60940719 0.04481101 0.5976851;
	setAttr ".uvSet[0].uvSetPoints[1750:1999]" 0.054266453 0.59827828 0.054266453
		 0.61000824 0.04481101 0.61035657 0.27436042 0.77325606 0.35850167 0.77648544 0.3727634
		 0.77640367 0.36688077 0.77143276 0.36671299 0.8215369 0.27824116 0.77289522 0.28972113
		 0.773036 0.28340304 0.81116366 0.28476256 0.73688745 0.28277504 0.72553909 0.28223938
		 0.7825675 0.28006685 0.79366279 0.34666783 0.74160337 0.34793758 0.73085451 0.34419966
		 0.77583051 0.35439849 0.77614188 0.34507954 0.81263363 0.3445735 0.82304478 0.2826401
		 0.82050049 0.28026801 0.82234943 0.34193289 0.73704362 0.34383261 0.72562909 0.34045362
		 0.8015939 0.33999276 0.78975964 0.33224156 0.88493288 0.32970944 0.85910654 0.31341258
		 0.8595562 0.32573858 0.87517565 0.29119825 0.81151664 0.29068601 0.82197452 0.34192562
		 0.82163453 0.34344381 0.82372355 0.34082615 0.8122859 0.29094273 0.72506559 0.2926088
		 0.73652244 0.28975308 0.78684676 0.28794873 0.79855907 0.45361879 0.88005048 0.46616504
		 0.86629838 0.45115885 0.86446935 0.44694328 0.88928986 0.33671296 0.82338858 0.33684337
		 0.81292915 0.29075694 0.82106507 0.28920484 0.82312191 0.29205775 0.81175113 0.33115971
		 0.81242192 0.3264612 0.77321815 0.33598447 0.77329969 0.33169782 0.73650599 0.33313715
		 0.72510207 0.32945609 0.80678999 0.32950091 0.79489875 0.30266213 0.72818577 0.30263352
		 0.73904109 0.29315507 0.7392863 0.29410034 0.72844326 0.29347694 0.77406323 0.30207127
		 0.7743088 0.29983711 0.81226385 0.30027771 0.82293427 0.33121395 0.82191944 0.33360136
		 0.82407951 0.29775494 0.77291775 0.3072744 0.77305007 0.33926749 0.72999883 0.33952773
		 0.74085259 0.3283534 0.77517176 0.33692855 0.77547598 0.44972193 0.58815932 0.45887607
		 0.58759463 0.46242011 0.58121872 0.46042895 0.59664917 0.45226055 0.57619274 0.45328593
		 0.57435763 0.46229064 0.56842268 0.20928822 0.29799429 0.21025245 0.29595181 0.21031271
		 0.29570159 0.21010195 0.29657611 0.21051143 0.29487738 0.21089475 0.29382494 0.44892132
		 0.548154 0.4448567 0.53693914 0.45523643 0.51957142 0.45830619 0.54345202 0.44101703
		 0.50801134 0.45411694 0.4973886 0.44145608 0.47412565 0.45632088 0.47493294 0.21186446
		 0.28499028 0.21186446 0.28499028 0.21186446 0.28499028 0.21186446 0.28499028 0.44536257
		 0.44664064 0.45412636 0.43673089 0.46287805 0.44250992 0.459759 0.45727828 0.4606303
		 0.42679438 0.4637574 0.42865875 0.46094108 0.41396484 0.46398759 0.41602972 0.45374465
		 0.4079552 0.46259725 0.40141526 0.47069228 0.582286 0.46897817 0.6009655 0.47120017
		 0.56805468 0.46123052 0.55511475 0.47136688 0.55337656 0.46943033 0.53693199 0.46778345
		 0.51879489 0.21267782 0.28992167 0.21267782 0.28992167 0.21267782 0.28992167 0.21427654
		 0.29146191 0.46850085 0.47743496 0.46708864 0.49951446 0.47044301 0.46004024 0.47250831
		 0.44459894 0.47281182 0.43001845 0.47248155 0.41566458 0.47118449 0.39733723 0.48001963
		 0.58310556 0.47897911 0.60352504 0.48029041 0.5679301 0.47977567 0.55281436 0.47896016
		 0.53675187 0.47825599 0.51922321 0.47796881 0.50053579 0.47880828 0.4786444 0.47988898
		 0.46129742 0.48096466 0.44543305 0.4817608 0.43042395 0.48182225 0.41515449 0.48119879
		 0.39500567 0.48735106 0.58327973 0.48692179 0.60419941 0.4876458 0.5680542 0.48784566
		 0.55305576 0.4879899 0.53718746 0.48812681 0.51986051 0.48828256 0.50128907 0.48867911
		 0.47919443 0.48896617 0.46169594 0.48913896 0.44561175 0.48918092 0.43040016 0.48910367
		 0.4150261 0.48914528 0.39449486 0.49458241 0.58376062 0.49468362 0.60399652 0.49506074
		 0.56884193 0.49593586 0.5540123 0.49700379 0.53816128 0.49935442 0.52081835 0.50054884
		 0.50198466 0.50014836 0.47921315 0.49811351 0.46131936 0.49738228 0.44520345 0.49668342
		 0.4301205 0.49169111 0.41493025 0.49690092 0.39485505 0.50228286 0.58454621 0.5028984
		 0.60278404 0.50289589 0.57043016 0.50443369 0.55593228 0.50645226 0.53993261 0.51002312
		 0.52259898 0.51189893 0.50237626 0.5110085 0.47878173 0.50863105 0.46000972 0.5060786
		 0.44400063 0.50055867 0.42920402 0.49959016 0.42347685 0.39489561 0.14766891 0.40068221
		 0.14639102 0.400473 0.14117268 0.39482081 0.14183353 0.51090425 0.58526897 0.511949
		 0.59996927 0.51161611 0.57239211 0.51398474 0.55905032 0.51810402 0.54362285 0.52275139
		 0.5263319 0.52571714 0.50320768 0.52406389 0.47755989 0.52009821 0.4571878 0.51591909
		 0.44119301 0.51356226 0.42796054 0.42872965 0.22546169 0.47647619 0.25520179 0.4881652
		 0.24260189 0.47400618 0.18934724 0.39807761 0.13884048 0.39807761 0.13884048 0.52085978
		 0.58478737 0.52203649 0.59401762 0.52228236 0.57508683 0.52505028 0.56659853 0.52920884
		 0.55603147 0.53632027 0.5414083 0.53884488 0.51979685 0.53855169 0.45919624 0.54084128
		 0.49467576 0.53350502 0.43974963 0.52733916 0.43446115 0.52468479 0.42417029 0.51167476
		 0.41948375 0.52321398 0.41406003 0.51408929 0.3992596 0.52407515 0.40512171 0.2114995
		 0.27786711 0.21133415 0.27898249 0.21115993 0.28017297 0.44131649 0.58426666 0.44906628
		 0.56025195 0.44772446 0.56943214 0.44275856 0.57195735 0.44290364 0.54877126 0.44100708
		 0.55698967 0.43825245 0.53761125 0.43810934 0.54172432 0.43563044 0.47562084 0.43543863
		 0.4749321 0.44536257 0.44664064 0.43981194 0.44665828 0.44013381 0.4420779 0.44482696
		 0.43464205 0.44325376 0.4262782 0.2111554 0.28115007 0.21111403 0.2822459 0.21121709
		 0.28018197 0.53318512 0.58496165 0.53774697 0.56530535 0.54132497 0.56756282 0.54495394
		 0.43093398 0.54030889 0.43373373 0.53578585 0.41674086 0.5395968 0.78144765 0.52800357
		 0.81475961 0.52025831 0.80710876 0.52943087 0.78269994 0.49544108 0.82831872 0.49585128
		 0.81764686 0.46489275 0.81478679 0.47230959 0.80776739 0.23618138 0.72416222 0.23601639
		 0.72797287;
	setAttr ".uvSet[0].uvSetPoints[2000:2249]" 0.23600578 0.72792411 0.23520064 0.72423828
		 0.4528842 0.78363633 0.46526319 0.75419009 0.47252721 0.76071167 0.46276331 0.78468549
		 0.49443281 0.74127543 0.49524188 0.75125968 0.52507418 0.75215554 0.51845753 0.75972557
		 0.49670541 0.75692058 0.51900655 0.76568496 0.49727499 0.78822327 0.4747377 0.76648927
		 0.46645522 0.78851104 0.4765656 0.80943227 0.49767971 0.8175422 0.51865691 0.80858183
		 0.52785528 0.78738153 0.49535799 0.78354943 0.52052844 0.7830193 0.51352841 0.80092812
		 0.49587739 0.80868506 0.47811592 0.80165637 0.47059274 0.78439224 0.47770029 0.76620984
		 0.49515152 0.7588166 0.51276684 0.76563573 0.51229084 0.47868744 0.51231539 0.47785345
		 0.51232326 0.47573999 0.51397896 0.47752461 0.51231623 0.47763321 0.51232481 0.47532102
		 0.47126418 0.58110547 0.46629655 0.56849194 0.47232008 0.56191313 0.47531879 0.57947135
		 0.46270502 0.56436074 0.4691304 0.55843174 0.46088433 0.56404591 0.46221226 0.55217969
		 0.4550519 0.5658741 0.45181787 0.54930615 0.45183855 0.57389271 0.44249457 0.57748365
		 0.45340025 0.58311701 0.4477247 0.58491611 0.45526934 0.40775916 0.45831627 0.40511045
		 0.46176994 0.41448507 0.45268869 0.41945145 0.51194835 0.48290423 0.51207805 0.48130766
		 0.51301348 0.48286924 0.51231945 0.48353073 0.51217866 0.48006871 0.51381004 0.48030248
		 0.51080716 0.47409388 0.51365209 0.47544578 0.5100745 0.47371808 0.4899506 0.54008019
		 0.49243224 0.53622055 0.49214232 0.54066145 0.48485225 0.54242086 0.47467035 0.55176437
		 0.47338057 0.55872905 0.46859872 0.54375112 0.45609212 0.53223979 0.44068944 0.54041195
		 0.4415077 0.46867767 0.44533283 0.42651638 0.45776582 0.43393198 0.46734834 0.42620423
		 0.5129931 0.48415199 0.51126325 0.48633692 0.46293879 0.56751466 0.46285456 0.56611753
		 0.46188855 0.56637061 0.46158171 0.56760967 0.46274745 0.56433976 0.46190709 0.56264889
		 0.45995021 0.56103647 0.45840788 0.56079805 0.45871812 0.56187999 0.50693369 0.47288325
		 0.50760186 0.47299775 0.49196655 0.54308438 0.48291492 0.54426801 0.46616387 0.50940645
		 0.46659088 0.50497669 0.47227889 0.50545555 0.46805924 0.51137662 0.47693366 0.53856373
		 0.48166019 0.54837489 0.46739721 0.52306676 0.44981337 0.48350182 0.4687174 0.44562784
		 0.4677434 0.46816233 0.47731823 0.42776731 0.50878847 0.48581365 0.50826526 0.4858897
		 0.45816612 0.56634974 0.45920849 0.57044733 0.45663226 0.56052351 0.45532197 0.56157982
		 0.50493205 0.47254011 0.50493205 0.47254011 0.47499233 0.47026807 0.47922957 0.48616487
		 0.46540493 0.4845987 0.46551806 0.46692616 0.47943854 0.50609982 0.4795965 0.51483625
		 0.48608011 0.53583217 0.48950088 0.54682302 0.49550414 0.49203849 0.49572635 0.49424696
		 0.4945991 0.49424982 0.49430919 0.49099743 0.49792063 0.49796164 0.49657482 0.49888778
		 0.50026846 0.5001415 0.50023901 0.50047433 0.48622519 0.43084499 0.48040116 0.45267358
		 0.50495589 0.48656163 0.50439501 0.48672566 0.45542479 0.56628132 0.45583892 0.57058847
		 0.48697698 0.4911015 0.48825783 0.48979628 0.48396236 0.49027437 0.4852736 0.49147797
		 0.94681358 0.82335365 0.94547522 0.82516742 0.93999386 0.82300854 0.94490534 0.8237555
		 0.45256776 0.4845168 0.45646566 0.46977288 0.48247069 0.50638974 0.49137992 0.51169598
		 0.49605095 0.53532684 0.49680626 0.54678428 0.49268597 0.49433088 0.4927032 0.49043727
		 0.49112588 0.49844027 0.50026345 0.50019813 0.9275741 0.80103731 0.92954391 0.80068302
		 0.92954391 0.80068302 0.92999983 0.80120194 0.50334263 0.48703334 0.50334263 0.48703334
		 0.4520328 0.56616938 0.45255983 0.57025826 0.45205474 0.56177795 0.48384976 0.4915691
		 0.483823 0.49446666 0.48400283 0.4899866 0.48399782 0.49078405 0.47107166 0.54165518
		 0.46207225 0.53807271 0.46459734 0.53745306 0.47039711 0.53816867 0.46720695 0.50877869
		 0.46827435 0.50969672 0.46827435 0.50969672 0.4666478 0.50872922 0.50793785 0.53703237
		 0.5045948 0.54839456 0.49131584 0.49351621 0.49178016 0.49058688 0.48783648 0.49716628
		 0.48305833 0.49933326 0.48634601 0.49822855 0.51186496 0.48040795 0.51186496 0.48040795
		 0.51183152 0.48114294 0.51187146 0.48029941 0.49573565 0.43167558 0.49712455 0.41843948
		 0.50457782 0.41898683 0.50565594 0.43070182 0.44924504 0.56601048 0.45142859 0.5686388
		 0.44923669 0.56245506 0.48390055 0.49249792 0.48383528 0.49314022 0.48399282 0.49159086
		 0.46797889 0.53427112 0.46782315 0.53425634 0.50686604 0.55476546 0.51273721 0.55230856
		 0.50981081 0.56175601 0.51996553 0.54581296 0.51214486 0.470357 0.51259631 0.47219944
		 0.51117009 0.47094727 0.51102668 0.46931845 0.51212376 0.47679114 0.51189071 0.47669429
		 0.51031011 0.48129261 0.51014608 0.48201561 0.51282698 0.4153572 0.51613337 0.42641714
		 0.50763845 0.41185322 0.51176661 0.40086427 0.44851851 0.56475306 0.44851851 0.56475306
		 0.50849771 0.59437513 0.5073514 0.57947767 0.51646358 0.57898164 0.51746482 0.58837521
		 0.50733435 0.57246983 0.51702476 0.5756892 0.51736528 0.56806052 0.52316135 0.56060529
		 0.52624965 0.55988264 0.51086962 0.46878761 0.51086962 0.46878761 0.53839982 0.54993641
		 0.54517937 0.55376804 0.53918105 0.5562309 0.53491622 0.5592016 0.53861433 0.43544468
		 0.53389394 0.43817988 0.53098148 0.41889533 0.53803074 0.42797467 0.50974834 0.48229492
		 0.50974834 0.48229492 0.5219906 0.40839633 0.52574134 0.41603103 0.52202863 0.40391818
		 0.51129055 0.39813659 0.515221 0.40025279 0.51224935 0.47919598 0.46093273 0.57693434
		 0.45773304 0.59130502 0.4594903 0.58617067 0.51919287 0.58521748 0.52182549 0.57633042
		 0.21111988 0.28004125 0.21111034 0.28096053 0.21126084 0.27869061 0.21124242 0.28017047
		 0.52624965 0.55988264 0.52929384 0.57634652 0.53495276 0.5817138 0.5306617 0.5860579;
	setAttr ".uvSet[0].uvSetPoints[2250:2499]" 0.53098148 0.41889533 0.52829903 0.40955588
		 0.52179217 0.59378803 0.51989412 0.59536481 0.39373732 0.13840316 0.39426911 0.13920994
		 0.39497507 0.14047965 0.39555788 0.14015365 0.39501417 0.14250858 0.39560652 0.14267854
		 0.39392114 0.15178362 0.39385521 0.14449902 0.39189351 0.15187497 0.39132935 0.14454849
		 0.39011419 0.14260451 0.38950866 0.14279796 0.38969421 0.14189179 0.38949656 0.14192517
		 0.4846797 0.10418899 0.48611736 0.10575383 0.48912907 0.11027058 0.48967826 0.11118098
		 0.49065208 0.11279505 0.49060559 0.11271799 0.50584197 0.41634884 0.50520611 0.41539392
		 0.50484031 0.41693023 0.39385772 0.13809589 0.39586037 0.14002137 0.39591384 0.14279877
		 0.3939873 0.14480127 0.39120889 0.14485572 0.38920617 0.14293014 0.38920379 0.14132865
		 0.48395824 0.10340367 0.48991978 0.11158129 0.49070227 0.11293594 0.39385438 0.13807632
		 0.39585704 0.14000183 0.3959105 0.14277922 0.39398384 0.14478166 0.39120555 0.14483611
		 0.38920277 0.14291056 0.38924921 0.14109744 0.48395216 0.10339709 0.48994195 0.11161792
		 0.49075258 0.1130768 0.3936556 0.13858324 0.39535785 0.14021991 0.39540327 0.14258064
		 0.39376569 0.14428277 0.39140409 0.14432906 0.38970178 0.14269237 0.38955718 0.14113665
		 0.48514235 0.10469253 0.48954344 0.11095735 0.39284158 0.13849054 0.39286184 0.13826339
		 0.39352059 0.13887167 0.39502907 0.140322 0.39506936 0.1424139 0.39361823 0.14392217
		 0.39152563 0.14396314 0.39001715 0.1425129 0.39006972 0.14121237 0.48913598 0.10254114
		 0.4926511 0.10860001 0.39271772 0.13906336 0.39294666 0.14030647 0.39359283 0.14092772
		 0.39361012 0.14182384 0.39298856 0.14246996 0.39209217 0.14248757 0.39144599 0.14186628
		 0.39047408 0.14130129 0.49422622 0.10184864 0.4956454 0.10420116 0.39263165 0.13936359
		 0.45752692 0.1928241 0.45752299 0.19282421 0.45656455 0.19286019 0.45656443 0.19286022
		 0.39351773 0.14145829 0.39333713 0.14179771 0.39315504 0.14213999 0.47241688 0.19226524
		 0.47241688 0.19226524 0.47241688 0.19226524 0.47241688 0.19226524 0.47241688 0.19226524
		 0.47241688 0.19226521 0.46954274 0.1923731 0.46873522 0.19240341 0.46183825 0.19266227
		 0.46177411 0.19266465 0.5052982 0.41869858 0.50444424 0.41864106 0.50435591 0.4153389
		 0.50378948 0.41621605 0.50383866 0.41751155 0.50589114 0.41764435 0.23909557 0.044106171
		 0.24065351 0.049050711 0.24016362 0.046868905 0.23850417 0.04220818 0.0416888 0.039348617
		 0.042397499 0.039338075 0.052446365 0.036697809 0.050992966 0.037328042 0.072526813
		 0.042700499 0.071199536 0.038040891 0.070242405 0.034680787 0.07195878 0.040706463
		 0.070573688 0.045040302 0.035595417 0.048451081 0.017840505 0.050475813 0.017690778
		 0.050492883 0.38232899 0.036780644 0.35588473 0.036521662 0.35588324 0.036598284
		 0.38560927 0.036661658 0.068083882 0.036875296 0.068189144 0.041948527 0.020217061
		 0.047010981 0.01967442 0.041856706 0.23820323 0.053042166 0.23804772 0.053084306
		 0.35537761 0.064410113 0.3553586 0.064409785 0.3553586 0.064409785 0.3553586 0.064409785
		 0.38371611 0.035066318 0.35667574 0.035116632 0.19357836 0.030492503 0.19079888 0.039240979
		 0.18388176 0.036933381 0.18726879 0.028459478 0.38988203 0.037414692 0.38949668 0.041180179
		 0.36488956 0.03791149 0.36533558 0.034343909 0.10886681 0.027381141 0.10823083 0.023037534
		 0.114133 0.021252397 0.11448002 0.025687058 0.35588521 0.036498751 0.3559103 0.035195615
		 0.35583675 0.039015464 0.35585725 0.037950635 0.38371325 0.03888803 0.35668415 0.038951918
		 0.38584077 0.036778886 0.38584322 0.040196754 0.38764417 0.038879521 0.38764113 0.035059828
		 0.38375354 0.062909655 0.36229217 0.060694925 0.077634096 0.031734575 0.38377053
		 0.064928494 0.35675859 0.064433716 0.38574111 0.064964823 0.38768697 0.064999215
		 0.013697147 0.047824785 0.014367938 0.043642111 0.35973048 0.060430579 0.35836041
		 0.038597681 0.38668311 0.036698107 0.013186932 0.051006496 0.013187051 0.051005699
		 0.074356675 0.035281602 0.043118477 0.037988596 0.087530017 0.033510316 0.3553586
		 0.064409785 0.35682905 0.064434908 0.11400425 0.019458678 0.11434734 0.023757827
		 0.40073991 0.15028268 0.40148342 0.14962584 0.40074015 0.15033109 0.40073931 0.15018448
		 0.41513556 0.035186362 0.41297483 0.035240833 0.41297483 0.035240833 0.41297483 0.035240833
		 0.043546677 0.039581463 0.41304374 0.037859 0.41309637 0.039857678 0.41723299 0.078408651
		 0.41720128 0.077191673 0.41405249 0.077066921 0.41412127 0.079741336 0.4546842 0.034204554
		 0.45218754 0.034266453 0.45369256 0.037373692 0.4548775 0.037344627 0.40438944 0.15890794
		 0.4145627 0.17524385 0.4145627 0.17524385 0.40520215 0.16030124 0.40992022 0.17542592
		 0.40257359 0.16032225 0.37119669 0.17316455 0.3808831 0.15955956 0.38088888 0.16101567
		 0.37541437 0.17299727 0.42405105 0.12332498 0.41273117 0.12948391 0.41125524 0.1294831
		 0.42279685 0.12317298 0.40281188 0.1562034 0.40337658 0.15717156 0.40140748 0.15697654
		 0.38210714 0.15629984 0.38211012 0.15759479 0.4093219 0.13078719 0.40801042 0.13078859
		 0.38173461 0.15130714 0.3816787 0.15116036 0.40353358 0.13075161 0.40362799 0.13069662
		 0.41428339 0.035207879 0.41545844 0.035495166 0.41298562 0.035651322 0.45103723 0.037439391
		 0.45146972 0.037428603 0.41714972 0.075211845 0.41403878 0.0765334 0.41310632 0.040235952
		 0.20423937 0.085466318 0.20423937 0.085466318 0.20434868 0.090916045 0.2043466 0.09081652
		 0.201132 0.090067677 0.20163673 0.091162764 0.20164913 0.091644309 0.20169348 0.09336368
		 0.17594337 0.088211797 0.17581546 0.085944615 0.17597276 0.091408797 0.1760478 0.09151455
		 0.41620052 0.038320869 0.4162482 0.040169463 0.1802246 0.088977598 0.1817857 0.086938493
		 0.20572424 0.087229721 0.20565152 0.08925318 0.35360682 0.12831336 0.36895359 0.13342449
		 0.3694061 0.15070589 0.35487223 0.1598153;
	setAttr ".uvSet[0].uvSetPoints[2500:2749]" 0.37166816 0.13424563 0.3714444 0.14954343
		 0.37437606 0.13389871 0.40361392 0.14722274 0.40365934 0.13312867 0.40356505 0.13318387
		 0.40933418 0.1331856 0.40963483 0.14879908 0.41274142 0.13217568 0.41283798 0.1501876
		 0.42414528 0.12569435 0.42539072 0.15701316 0.44737172 0.034385841 0.44925678 0.034339104
		 0.44667125 0.037548274 0.18677807 0.10489663 0.18677807 0.1048966 0.18700022 0.12639266
		 0.18698335 0.1247611 0.18627906 0.10490232 0.18615979 0.12483697 0.1860956 0.12577242
		 0.18682528 0.10515683 0.18577111 0.10516856 0.1861397 0.12567428 0.19592458 0.089935534
		 0.20564967 0.089304112 0.17617553 0.088926665 0.17818964 0.08689367 0.35341251 0.12347189
		 0.37302196 0.1238686 0.37152994 0.13185155 0.3742094 0.13147172 0.1870091 0.12725043
		 0.18702185 0.12898219 0.108531 0.021306049 0.18620014 0.12924653 0.18624759 0.129246
		 0.19291258 0.093216233 0.19291258 0.093216233 0.19640779 0.093160681 0.19555372 0.093174271
		 0.35911119 0.032575119 0.42092943 0.043085039 0.42092943 0.043085031 0.42514747 0.069665901
		 0.42152351 0.065596037 0.22036123 0.051503241 0.22094584 0.050314918 0.21882081 0.049401462
		 0.21922088 0.050923526 0.41391838 0.071845405 0.41715121 0.075267039 0.41710472 0.073468424
		 0.41398227 0.074335359 0.4139291 0.072264634 0.37777495 0.17290314 0.38368702 0.16092488
		 0.38460231 0.15751468 0.38420498 0.15104663 0.38426089 0.15119334 0.38388991 0.133569
		 0.38384318 0.13113749 0.38356113 0.12079491 0.37721866 0.12144886 0.38247544 0.11857513
		 0.36738765 0.10406758 0.37448204 0.10092473 0.19261795 0.094013579 0.19261789 0.094012074
		 0.19438887 0.093952052 0.19439423 0.093951888 0.19264519 0.094011776 0.19261879 0.094012044
		 0.19270134 0.097031496 0.19266289 0.095623843 0.45318127 0.067312829 0.45334864 0.073666029
		 0.42176002 0.074524544 0.45252037 0.042226017 0.20299435 0.090857394 0.20306695 0.090957515
		 0.177405 0.091474794 0.17740256 0.091368519 0.18275601 0.085827924 0.2011987 0.085517682
		 0.40019464 0.12009864 0.40105379 0.11786009 0.4089694 0.10142158 0.1869663 0.12894416
		 0.18621737 0.10715228 0.18421441 0.10567557 0.1856631 0.12895867 0.18698168 0.12894398
		 0.18668073 0.1074638 0.4533354 0.073162191 0.42852032 0.074340813 0.2050671 0.1276063
		 0.20511341 0.12760562 0.20408791 0.12762052 0.20421016 0.12761876 0.19558334 0.093482547
		 0.19639266 0.093475007 0.19727278 0.13232154 0.19721651 0.13232225 0.20202589 0.10624828
		 0.20262098 0.12931627 0.20262098 0.12931627 0.20262098 0.12931627 0.19573617 0.096405677
		 0.19727278 0.13232154 0.19553339 0.093174584 0.19640779 0.093160681 0.19735098 0.13196915
		 0.19387102 0.13202232 0.19261789 0.094012074 0.19369078 0.13282079 0.19369078 0.13282079
		 0.19385386 0.13225982 0.19567114 0.09620624 0.17824316 0.12800401 0.17824316 0.12800401
		 0.17726195 0.12801901 0.17739028 0.12801704 0.86431807 0.2392015 0.86920112 0.23883472
		 0.86930275 0.24593364 0.86178815 0.24888887 0.86006165 0.23971106 0.85387397 0.25234523
		 0.85288525 0.24058326 0.84870201 0.25425395 0.84557545 0.24122687 0.84349024 0.25555995
		 0.83808643 0.24151386 0.83812767 0.25602677 0.83049935 0.24114443 0.83278489 0.25550464
		 0.82329118 0.2408054 0.82753754 0.25413945 0.81641948 0.23997147 0.82227647 0.2521424
		 0.81196159 0.2392856 0.81437838 0.24847825 0.80706805 0.23890822 0.80673975 0.2453271
		 0.87067401 0.24649008 0.86176777 0.25265548 0.85413039 0.25531736 0.84909362 0.25703499
		 0.8436988 0.2582244 0.83807296 0.258607 0.83250272 0.25803789 0.82714278 0.25664946
		 0.82209033 0.25467911 0.81429172 0.2515997 0.80552244 0.24610965 0.87223148 0.1016733
		 0.88500547 0.10269812 0.88400203 0.11306333 0.87311393 0.11147406 0.86231619 0.10067081
		 0.86048049 0.10999195 0.85538816 0.099946998 0.85393375 0.10894842 0.84837633 0.099310391
		 0.84740365 0.10810634 0.84129775 0.098837726 0.84085298 0.10758036 0.83420348 0.098786645
		 0.83430576 0.10744061 0.82713372 0.098949514 0.82776296 0.10763141 0.82010537 0.099249922
		 0.82118994 0.10810865 0.8100453 0.099709578 0.80862772 0.10880714 0.79710388 0.10029643
		 0.79769742 0.10959747 0.85997427 0.17574179 0.86712158 0.17792876 0.86694801 0.17847227
		 0.86060715 0.17685382 0.85394621 0.17368792 0.85408944 0.175612 0.84855658 0.17301871
		 0.8493067 0.1748639 0.84343427 0.17212158 0.84334898 0.17425062 0.83849233 0.17156892
		 0.8383109 0.17380808 0.83360201 0.17105907 0.83338159 0.17350653 0.82862663 0.1708788
		 0.8282609 0.17358282 0.82346505 0.1712416 0.82295531 0.17401093 0.8181439 0.17195787
		 0.81741279 0.17482331 0.81071573 0.17398733 0.81155604 0.17787451 0.87168717 0.23838679
		 0.80470151 0.23858349 0.82633454 0.11765032 0.81983942 0.11830928 0.80895191 0.119744
		 0.80023903 0.120532 0.80802226 0.22902521 0.80544597 0.22894105 0.81234324 0.22912821
		 0.81673616 0.2292861 0.82364196 0.22943816 0.83067805 0.22958282 0.83796424 0.22954977
		 0.84530407 0.22918382 0.85251731 0.22864088 0.85975528 0.22830561 0.86426592 0.22805369
		 0.86837023 0.22787067 0.87132919 0.22763225 0.88064319 0.12514865 0.87186307 0.12350618
		 0.8609885 0.12120684 0.85432369 0.11970922 0.84741026 0.11847826 0.84032738 0.11761039
		 0.83324468 0.11742338 0.73542029 0.2902008 0.73218513 0.27918306 0.73766816 0.27951011
		 0.73924553 0.29289946 0.73698592 0.26797667 0.74226856 0.26580849 0.74384111 0.29545578
		 0.74555588 0.27997997 0.74771214 0.28010872 0.74651593 0.29643551 0.74709654 0.26383415
		 0.74927932 0.26370683 0.73296291 0.28927556 0.73040485 0.27907708 0.73514986 0.26678541
		 0.73616624 0.26594856 0.74143434 0.26378682 0.73456573 0.29280135 0.73852134 0.29423752
		 0.74315709 0.29669228 0.74626184 0.261812 0.45241117 0.7807622 0.46570504 0.75256848;
	setAttr ".uvSet[0].uvSetPoints[2750:2873]" 0.47156227 0.75958073 0.46215045 0.78214228
		 0.49547362 0.73941422 0.49546671 0.74967182 0.52551347 0.75182211 0.51852661 0.75922096
		 0.53883767 0.78248203 0.52842748 0.78281665 0.524921 0.81564415 0.51775819 0.80722106
		 0.49252176 0.8266319 0.49332339 0.81626117 0.46292138 0.81184518 0.47048748 0.8052702
		 0.51916373 0.783934 0.51219076 0.80023468 0.49639034 0.78357637 0.51302624 0.76739609
		 0.49669623 0.75950181 0.47944558 0.76595843 0.47195125 0.78310001 0.47877347 0.80052209
		 0.49569571 0.80742002 0.49430788 0.78228033 0.46959043 0.78205979 0.4770093 0.76466441
		 0.49516213 0.75748491 0.5124616 0.76508355 0.51942676 0.78284311 0.51167017 0.80044019
		 0.49374145 0.80739892 0.47631586 0.79949641 0.85542297 0.5647434 0.85580325 0.55233777
		 0.84226274 0.55168366 0.84216928 0.56632209 0.85429215 0.5809443 0.84077215 0.58105958
		 0.85422039 0.61364508 0.84115863 0.61385036 0.77274793 0.52656412 0.76871848 0.51095432
		 0.77474791 0.51148653 0.7729243 0.5275563 0.86194211 0.40084133 0.85895085 0.38295713
		 0.84624189 0.38495818 0.84893167 0.40007529 0.8626039 0.41450045 0.84872913 0.4146764
		 0.85895354 0.44148734 0.8490833 0.44027427 0.73015612 0.59557891 0.73190665 0.59120464
		 0.72344315 0.59569418 0.7199952 0.59887075 0.73116177 0.62120473 0.73085672 0.59942722
		 0.72742164 0.60606301 0.85664535 0.52722287 0.85760778 0.51985919 0.84311694 0.51866591
		 0.84409976 0.52677393 0.84238958 0.55168951 0.84219909 0.56712508 0.84221721 0.58055985
		 0.84227902 0.61392736 0.83902973 0.35021803 0.84014326 0.34991828 0.84765422 0.3851535
		 0.84893703 0.39920911 0.84880769 0.4146513 0.84953994 0.44060126 0.8491984 0.44676104
		 0.84898168 0.44740632 0.84790236 0.47165385 0.84749359 0.47111407 0.844836 0.51933241
		 0.84454179 0.52604103 0.85426974 0.5523119 0.85373354 0.56510997 0.85280538 0.58056211
		 0.8527472 0.61378825 0.73713142 0.5012694 0.72273439 0.52446604 0.72273439 0.52446604
		 0.72264826 0.50830835 0.85766995 0.38351825 0.86017525 0.40050152 0.8609429 0.41445556
		 0.85930324 0.44055036 0.85910434 0.44710544 0.85759509 0.47164282 0.85587329 0.52058768
		 0.85516453 0.52698874 0.85766995 0.38351825 0.85110164 0.34709677 0.85266972 0.34690401
		 0.85895085 0.38295713 0.7309559 0.54586589 0.7309559 0.54586589 0.7309559 0.54586589
		 0.7309559 0.54586589 0.73111427 0.59742892 0.73245484 0.5905087 0.73107255 0.60569704
		 0.84343189 0.49470496 0.84511757 0.49474883 0.85835403 0.49575138 0.85666078 0.49563074
		 0.85659504 0.4837282 0.8444559 0.48326984 0.61472768 0.36867157 0.61455381 0.3721604
		 0.61455381 0.3721604 0.61973351 0.37131962 0.6205039 0.35659376 0.6150431 0.36234125
		 0.73365664 0.29184613 0.73365664 0.29184613 0.73133928 0.28325978 0.73133928 0.28325978
		 0.84227467 0.48320261 0.85602599 0.48762065;
	setAttr ".currentUVSet" -type "string" "map1";
	setAttr ".displayColorChannel" -type "string" "Ambient+Diffuse";
	setAttr ".collisionOffsetVelocityMultiplier[0]"  0 1 1;
	setAttr ".collisionDepthVelocityMultiplier[0]"  0 1 1;
	setAttr -size 1924 ".vrts";
	setAttr ".vrts[0:165]"  -0.37575126 0.56709647 0.059726629 -0.41414738 0.42746586 0.059689283
		 -0.37567455 0.56705117 0.086975582 -0.41404611 0.42746201 0.086938202 -0.33801252 0.55669051 0.086815841
		 -0.37642083 0.41712287 0.086778462 -0.33809701 0.55674738 0.059566908 -0.37650162 0.41712055 0.059529562
		 -0.39021367 0.38250843 0.082253426 -0.4199096 0.39067078 0.082379468 -0.39010057 0.38251245 0.10950238
		 -0.41980529 0.39067993 0.10962844 -0.33218408 0.5934937 0.082309864 -0.36188805 0.60166144 0.082435906
		 -0.36179206 0.6015867 0.1096848 -0.33209437 0.59341997 0.1095588 -0.3676134 0.53070128 0.086894408
		 -0.38831088 0.4546161 0.086874098 -0.38518059 0.45381111 0.086859636 -0.36413094 0.52972412 0.086879946
		 -0.36605781 0.53402972 0.55704248 -0.38896474 0.4513576 0.55701846 -0.38606954 0.45063323 0.55700392
		 -0.36246863 0.5329721 0.557028 -0.39212045 0.47481048 0.55706084 -0.37176523 0.46900529 0.55697381
		 -0.37141803 0.47059581 0.086828493 -0.36679727 0.45228973 0.086787879 -0.36682266 0.45228091 0.059538927
		 -0.40447313 0.46262643 0.059698705 -0.40440208 0.46262509 0.08694762 -0.39183578 0.47623903 0.086915448
		 -0.38078147 0.51587695 0.5570727 -0.36006677 0.50987798 0.55698568 -0.36096841 0.50827163 0.086838581
		 -0.3476992 0.52154666 0.086806402 -0.34775847 0.52157915 0.059557505 -0.38541442 0.53192496 0.059717227
		 -0.38538527 0.53192419 0.086966142 -0.38165936 0.51406491 0.086925551 -0.3865715 0.49540776 0.55706668
		 -0.36612484 0.48952773 0.55697966 -0.3662861 0.48947182 0.086833566 -0.35726517 0.48692286 0.08679717
		 -0.35728732 0.48692825 0.059548214 -0.39494178 0.49727356 0.059707936 -0.39492989 0.49729398 0.086956874
		 -0.38679406 0.49517509 0.086920537 -0.37615791 0.49459508 0.68316007 -0.37704751 0.49384061 0.68316168
		 -0.37603554 0.4935481 0.68315732 -0.37587762 0.49449429 0.68315941 -0.37761822 0.49194795 0.68316114
		 -0.37710902 0.49068671 0.68315911 -0.37703764 0.49068436 0.68315834 -0.37653279 0.49162063 0.68315673
		 -0.37760031 0.49302155 0.6831615 -0.37656602 0.49271661 0.68315703 -0.1947484 0.81484139 -0.030601196
		 -0.21854544 0.83182114 -0.042726137 -0.24233191 0.84879279 -0.030601196 -0.2522037 0.8558113 -0.0013289929
		 -0.24235745 0.84877098 0.027943205 -0.21853855 0.83180147 0.04006815 -0.19470841 0.81484169 0.027943211
		 -0.18485641 0.80781472 -0.0013289929 -0.34883481 0.51422596 -0.019213095 -0.36608601 0.51894677 -0.026620932
		 -0.383338 0.52366865 -0.019213095 -0.3904821 0.5256235 -0.0013289929 -0.38333547 0.52366751 0.016555108
		 -0.36608452 0.51894671 0.023962947 -0.34883419 0.51422596 0.016555114 -0.34168923 0.51227057 -0.0013289929
		 -0.35304925 0.56745523 0.02626369 -0.3718462 0.57263368 0.018181978 -0.37964302 0.57478601 -0.0013289929
		 -0.37185913 0.57264215 -0.020839967 -0.35307944 0.5674693 -0.028921671 -0.33433101 0.56229752 -0.020839967
		 -0.32654893 0.56014657 -0.0013289929 -0.33428469 0.56228375 0.018181982 -0.34079248 0.61632997 0.028564434
		 -0.36101356 0.62223297 0.019808846 -0.36942828 0.62471634 -0.0013289929 -0.36112407 0.62232774 -0.022466831
		 -0.34105569 0.61645406 -0.03122242 -0.32096618 0.61048883 -0.022466831 -0.31248313 0.60799092 -0.0013289929
		 -0.32065585 0.61043495 0.019808855 -0.32676342 0.66870445 0.025747901 -0.34464455 0.67501521 0.017817259
		 -0.35207883 0.67774475 -0.0013289929 -0.34474382 0.67523146 -0.020475244 -0.32702008 0.66882402 -0.028405877
		 -0.30920276 0.66231829 -0.020475244 -0.30164853 0.65971619 -0.0013289929 -0.30891263 0.66239655 0.017817264
		 -0.30966729 0.70656919 0.027682934 -0.32715285 0.71671903 0.019185537 -0.33427089 0.7210182 -0.0013289929
		 -0.32699054 0.71678072 -0.021843519 -0.3095853 0.70652962 -0.030340919 -0.29213214 0.69651681 -0.021843519
		 -0.28485724 0.69239199 -0.0013289929 -0.2921198 0.6964792 0.019185537 -0.27835646 0.75075805 0.03546666
		 -0.29975078 0.76520181 0.024689464 -0.30853662 0.77120501 -0.0013289929 -0.29970959 0.76519746 -0.02734746
		 -0.27844444 0.75079989 -0.038124647 -0.25704429 0.73649287 -0.02734746 -0.2480346 0.73042762 -0.0013289929
		 -0.25686172 0.73631114 0.024689464 -0.24796733 0.79104495 0.037767407 -0.27051505 0.80695528 0.026316334
		 -0.27985752 0.81355041 -0.0013289929 -0.27056479 0.80696654 -0.028974323 -0.24806069 0.79108924 -0.040425397
		 -0.2254606 0.7751857 -0.028974323 -0.21604234 0.76854372 -0.0013289929 -0.22538425 0.77512604 0.026316337
		 -0.18049943 0.81766039 -0.0013289929 -0.1898669 0.82431954 -0.029087648 -0.18982853 0.82433391 0.026429668
		 -0.2123999 0.8404268 0.03792768 -0.23493834 0.85653216 0.026429662 -0.24424964 0.86321241 -0.0013289929
		 -0.23490806 0.8565436 -0.029087648 -0.21239939 0.84042716 -0.040585671 -0.18350777 0.8327685 -0.0013289929
		 -0.19018684 0.83751029 -0.021141557 -0.19015865 0.83754265 0.018483572 -0.2062518 0.84902704 0.026690207
		 -0.22230364 0.86051995 0.018483572 -0.22893898 0.86528593 -0.0013289929 -0.22228684 0.8605178 -0.021141557
		 -0.20624387 0.84900755 -0.029348193 -0.19475821 0.85003352 -0.0013289929 -0.19683102 0.85147995 -0.0075196791
		 -0.19683343 0.8515349 0.004861698 -0.20183307 0.85510039 0.0074259616 -0.20681033 0.85867345 0.004861698
		 -0.20886606 0.86015648 -0.0013289929 -0.20679618 0.85865676 -0.0075196791 -0.20181423 0.85505259 -0.010083943
		 -0.20177437 0.85495138 -0.0013289929 -0.31973007 0.68892688 0.026739502 -0.33750182 0.69706804 0.018518429
		 -0.34479603 0.70059377 -0.0013289929 -0.3374182 0.69727081 -0.021176415 -0.31974316 0.68893105 -0.029397478
		 -0.30200395 0.6807102 -0.021176415 -0.29457223 0.67747337 -0.0013289929 -0.30193442 0.68083972 0.018518429
		 -0.36838561 0.47775137 -0.06422767 -0.36051905 0.48785374 -0.064243659 -0.36209396 0.50055057 -0.064221807
		 -0.37219787 0.50840455 -0.064174674 -0.38491049 0.50681478 -0.064129956 -0.39277565 0.49671239 -0.064113826
		 -0.3911882 0.4840152 -0.064135723 -0.38108566 0.4761613 -0.064182855 -0.36784142 0.47756523 0.068294533
		 -0.35997158 0.4876675 0.06827794 -0.3615475 0.50036442 0.06830018;
	setAttr ".vrts[166:331]" -0.37165493 0.50821847 0.068347156 -0.3843694 0.50662869 0.068392172
		 -0.39223456 0.49652636 0.068407677 -0.39064723 0.4838292 0.068386279 -0.38054428 0.4759753 0.06833896
		 -0.38289487 0.46972573 -0.073386714 -0.36511627 0.47195184 -0.073449351 -0.39703837 0.48072129 -0.073320732
		 -0.39926136 0.49849743 -0.073289998 -0.38825408 0.51264071 -0.073312588 -0.37046257 0.51486641 -0.07337524
		 -0.35631889 0.5038709 -0.07344117 -0.35410923 0.48609516 -0.073471889 -0.38294658 0.4697445 -0.086463593
		 -0.36516988 0.47197032 -0.08652623 -0.39708999 0.48074013 -0.086397409 -0.39931193 0.49851623 -0.086366713
		 -0.38830376 0.51265961 -0.086389326 -0.3705149 0.51488513 -0.086452104 -0.35637361 0.50388944 -0.086517885
		 -0.3541652 0.48611385 -0.086548716 -0.26923248 0.67399716 0.07115607 -0.29608184 0.68736535 0.068229988
		 -0.31625944 0.69739807 0.058440231 -0.33227924 0.70521903 0.043192349 -0.3441326 0.70769799 0.023978896
		 -0.34822246 0.70830077 0.0026805829 -0.34439328 0.70727706 -0.018617725 -0.33373356 0.7035147 -0.037831191
		 -0.3171896 0.69761854 -0.053079098 -0.29628015 0.69029719 -0.062868863 -0.26842383 0.68011689 -0.065794922
		 -0.17502783 0.8413868 0.085673355 -0.21495491 0.8612662 0.079793252 -0.2475612 0.87750071 0.064876325
		 -0.26353243 0.88545287 0.047868505 -0.27378672 0.8905583 0.026437283 -0.27732018 0.89231765 0.0026805878
		 -0.27378672 0.8905583 -0.021076068 -0.26353243 0.88545287 -0.042507313 -0.2475612 0.87750071 -0.059515171
		 -0.21495491 0.8612662 -0.074432112 -0.17502783 0.8413868 -0.084706441 -0.178082 0.84298205 0.095867231
		 -0.22414772 0.86591822 0.091230437 -0.25590485 0.88173002 0.072316036 -0.27290887 0.89019632 0.053273764
		 -0.28382623 0.89563197 0.029278932 -0.28758818 0.89750499 0.0026805829 -0.28382623 0.89563197 -0.023917779
		 -0.27290887 0.89019632 -0.047912579 -0.25590485 0.88173002 -0.066954888 -0.22414772 0.86591822 -0.085869342
		 -0.17781284 0.84284812 -0.09490034 -0.27183706 0.6752193 0.080294952 -0.30224076 0.69035721 0.07607083
		 -0.32366702 0.70102531 0.065110058 -0.34067115 0.70949143 0.048038248 -0.35158843 0.71492714 0.026526518
		 -0.35535026 0.71680021 0.0026805734 -0.35158843 0.71492714 -0.021165371 -0.34067115 0.70949143 -0.042677097
		 -0.32366702 0.70102531 -0.059748907 -0.30224076 0.69035721 -0.070709698 -0.27183712 0.6752193 -0.074933834
		 -0.29947174 0.86360711 -0.053217638 -0.28198391 0.85276252 -0.074256666 -0.23628195 0.82731366 -0.087764539
		 -0.19791755 0.80810708 -0.10232271 -0.19367206 0.80595833 -0.091059968 -0.21066685 0.81441993 -0.078101695
		 -0.22449078 0.82183075 -0.066036813 -0.2427922 0.83041495 -0.047245558 -0.25392297 0.83595729 -0.023567114
		 -0.25775823 0.83786654 0.0026805878 -0.25392297 0.83595729 0.028928356 -0.2427922 0.83041495 0.052606765
		 -0.22312285 0.82084113 0.071398012 -0.21066685 0.81441993 0.083462782 -0.19367206 0.80595833 0.095201761
		 -0.19813988 0.80814719 0.10646449 -0.23628175 0.82731366 0.093125656 -0.28198391 0.85276252 0.079617813
		 -0.29947174 0.86360711 0.058578812 -0.31069943 0.87056983 0.032067966 -0.31456828 0.87296915 0.0026805829
		 -0.31069943 0.87056983 -0.026706809 -0.22436488 0.7714718 -0.10345595 -0.22006118 0.76950938 -0.090958558
		 -0.23514575 0.7770201 -0.086957224 -0.24876998 0.78410661 -0.073569834 -0.26753679 0.7931475 -0.052718621
		 -0.27922997 0.79896957 -0.026444471 -0.28325918 0.80097562 0.0026805878 -0.27922997 0.79896957 0.031805672
		 -0.26753679 0.7931475 0.05807979 -0.24798471 0.78353852 0.078931034 -0.23514575 0.7770201 0.092318334
		 -0.22006118 0.76950938 0.096319713 -0.22473772 0.77152467 0.10881709 -0.2568613 0.78763372 0.10304052
		 -0.29815257 0.80991447 0.0880519 -0.31652409 0.82130712 0.064706497 -0.32831943 0.82862204 0.035289489
		 -0.33238357 0.83114243 0.0026805878 -0.32831943 0.82862204 -0.029928332 -0.31652409 0.82130712 -0.05934535
		 -0.29815257 0.80991447 -0.082690738 -0.2568613 0.78763372 -0.097679444 0.077388555 0.99066007 -0.046511494
		 0.04462773 0.9901793 -0.079262674 -0.0001243806 0.99002028 -0.091246091 -0.044876494 0.9902041 -0.079253845
		 -0.077637322 0.99066961 -0.046505615 -0.0896286 0.99133539 -0.0017644726 -0.077637322 0.99200904 0.042980671
		 -0.044876494 0.99250108 0.075737111 -0.0001243806 0.99267989 0.087727144 0.04462773 0.9925102 0.075733535
		 0.077388555 0.99201256 0.042978231 0.089379847 0.99133515 -0.0017696029 0.147314 1.031057 -0.087599784
		 0.084999196 1.030075192 -0.14991166 -0.0001243806 1.029685497 -0.17272055 -0.085247956 1.030066609 -0.14991523
		 -0.14756276 1.031046391 -0.087608241 -0.17037153 1.032466769 -0.0024947824 -0.14756276 1.033872962 0.082623012
		 -0.085247956 1.034991384 0.14491381 -0.0001243806 1.035414457 0.16770239 0.084999196 1.035027027 0.14489798
		 0.147314 1.03396368 0.082601435 0.17012277 1.032531023 -0.0025092317 0.20280714 1.094711661 -0.12082914
		 0.11703818 1.093180895 -0.20659649 -0.0001243806 1.092592835 -0.23800237 -0.11728694 1.093145847 -0.20661782
		 -0.2030559 1.094690919 -0.12085082 -0.23444951 1.096772671 -0.0036794189 -0.2030559 1.098817945 0.11346605
		 -0.11728694 1.10035563 0.19919485 -0.0001243806 1.10094142 0.23056631 0.11703818 1.10035944 0.19919567
		 0.20280714 1.09883976 0.11344957 0.23420075 1.096772313 -0.0036924861 0.23843589 1.17518461 -0.1429874
		 0.13760847 1.17330456 -0.24381828 -0.0001243806 1.17259836 -0.28073531 -0.13785723 1.17329669 -0.24383137
		 -0.23868465 1.17508292 -0.14321983 -0.27559006 1.17777431 -0.0055130995 -0.23868465 1.1802659 0.13243149
		 -0.13785723 1.18213761 0.23321724 -0.0001243806 1.18282175 0.27011341 0.13760847 1.18212557 0.23322898
		 0.23843589 1.18026006 0.13242607 0.27534133 1.17772031 -0.0052785515 0.25071275 1.26458097 -0.151917
		 0.1446965 1.26255453 -0.25792685 -0.0001243806 1.26180851 -0.296731 -0.14494526 1.2625649 -0.25792754
		 -0.25096151 1.26455939 -0.15204869 -0.28976613 1.26736856 -0.0071126609 -0.25096151 1.27011657 0.13767223
		 -0.14494526 1.2721343 0.24365671 -0.0001243806 1.27286851 0.28245318;
	setAttr ".vrts[332:497]" 0.1446965 1.27211738 0.24366145 0.25071275 1.27008975 0.13766919
		 0.28951737 1.26733387 -0.0071215359 0.23843589 1.35422421 -0.1466499 0.13760847 1.3522743 -0.24746284
		 -0.0001243806 1.35156155 -0.28436255 -0.13785723 1.35228181 -0.2474622 -0.23868465 1.35423779 -0.14664587
		 -0.27559006 1.35689759 -0.0089344019 -0.23868465 1.3595494 0.12876621 -0.13785723 1.36148608 0.22956929
		 -0.0001243806 1.36219037 0.26646718 0.13760847 1.36147487 0.22957 0.23843589 1.35953426 0.12876314
		 0.27534133 1.35688186 -0.0089419903 0.20280714 1.43536341 -0.12768769 0.11703818 1.43369913 -0.2134413
		 -0.0001243806 1.43309081 -0.24483013 -0.11728694 1.43370068 -0.2134417 -0.2030559 1.43536687 -0.12768537
		 -0.23444951 1.437639 -0.010544586 -0.2030559 1.43990362 0.10659324 -0.11728694 1.44155574 0.19234481
		 -0.0001243806 1.44216049 0.22373213 0.11703818 1.44155836 0.19234473 0.20280714 1.439906 0.10659265
		 0.23420075 1.43763697 -0.010547072 0.147314 1.50005615 -0.096910842 0.084999196 1.49884593 -0.15921478
		 -0.0001243806 1.4984026 -0.18202072 -0.085247956 1.49884582 -0.15921625 -0.14756276 1.50005734 -0.096912734
		 -0.17037153 1.50171053 -0.011805702 -0.14756276 1.50335956 0.073301278 -0.085247956 1.50456524 0.13560419
		 -0.0001243806 1.5050087 0.15840915 0.084999196 1.50457072 0.13560562 0.147314 1.50336409 0.073303372
		 0.17012277 1.50171006 -0.011803504 0.077388555 1.54197538 -0.057350148 0.04462773 1.54133868 -0.090105921
		 -0.0001243806 1.54110551 -0.10209598 -0.044876494 1.54133868 -0.090107314 -0.077637322 1.54197586 -0.05735293
		 -0.0896286 1.54284549 -0.012609466 -0.077637322 1.5437144 0.032134145 -0.044876494 1.54435074 0.064889118
		 -0.0001243806 1.54458439 0.076879025 0.04462773 1.54435205 0.064890981 0.077388555 1.54371524 0.032137085
		 0.089379847 1.54284501 -0.012606164 -0.0001243806 0.97716314 -0.0015331071 -0.0001243806 1.55701935 -0.0128844
		 -0.12918019 0.5251354 0.19762406 0.12797412 0.5251354 0.19762406 -0.12918019 0.52522802 0.17969371
		 0.12797412 0.52522802 0.17969371 -0.13293871 0.92334265 0.12754482 0.13173266 0.92334265 0.12754482
		 0.13173266 0.9199034 0.11137731 -0.13293871 0.9199034 0.11137731 -0.00076039718 0.91628921 0.14390846
		 -0.00076039718 0.91323721 0.12788689 -0.00075592875 0.52331656 0.22303765 -0.00075592875 0.52704734 0.24057581
		 0.14247374 0.65513808 0.19349487 -0.00077316887 0.65909976 0.2467235 -0.1436798 0.65513808 0.19349487
		 -0.1436798 0.65148431 0.17632152 -0.00077316887 0.65544593 0.22955009 0.14247374 0.65148431 0.17632152
		 0.14064997 0.84618968 0.17028722 -0.00077099988 0.85088348 0.19765921 -0.14185601 0.84618968 0.17028722
		 -0.14185601 0.84243262 0.1526264 -0.00077099988 0.84754097 0.16596703 0.14064997 0.84243262 0.1526264
		 -0.00071399315 0.47861436 0.23549666 0.093430154 0.47512162 0.20360401 0.093430154 0.47837561 0.18626972
		 -0.00071399315 0.47488326 0.22301279 -0.094629399 0.47837585 0.18626982 -0.094629399 0.47512186 0.20360409
		 -0.068713881 0.18219848 0.16110043 -0.00068549195 0.16127461 0.17767468 -0.068713881 0.18178543 0.1431746
		 -0.00068549195 0.16186073 0.16332363 0.067661285 0.18218479 0.16109905 0.067661285 0.18177183 0.14317322
		 -0.2644923 0.90219873 0.27789482 0.0067874519 0.90216058 0.35554114 0.27806726 0.9021821 0.27789134
		 -0.30077884 1.29997015 0.03866734 0.31435376 1.29994869 0.038667422 -0.2050916 1.62216175 0.10768649
		 0.0067874519 1.63680446 0.13130496 0.21866651 1.62215316 0.10769558 -0.21604672 1.63610995 -0.038216863
		 0.0067874519 1.69698167 -0.039409529 0.22962163 1.6361053 -0.03820407 -0.2050916 1.61308777 -0.23631996
		 0.0067874519 1.63122404 -0.25733462 0.21866651 1.6130873 -0.23631109 -0.30077884 1.29245853 -0.34752968
		 0.0067874519 1.29240453 -0.37455723 0.31435376 1.29282212 -0.34712926 -0.2644923 0.90117943 -0.24633068
		 0.0067874519 0.90136796 -0.31752864 0.27806726 0.90166712 -0.24645588 -0.3340469 0.90161413 -0.02504676
		 0.3476218 0.90161633 -0.025052197 0.3513478 1.29857302 -0.031716488 -0.33777291 1.29859221 -0.031716563
		 -0.24357441 1.49318027 0.1920813 -0.30776584 1.48896313 -0.03542082 -0.24357441 1.51736724 -0.31958771
		 0.0067874519 1.53008473 -0.33725393 0.2571494 1.51736486 -0.31958044 0.3213408 1.48894811 -0.035202418
		 0.2571494 1.49316061 0.19208679 0.0067874519 1.49455631 0.26168495 -0.21422745 1.088421226 0.24762358
		 -0.2558825 1.084164858 -0.02755722 -0.21422745 1.099561453 -0.24663912 0.0067874519 1.090208888 -0.26625153
		 0.2278024 1.10034299 -0.24613979 0.26882365 1.084774971 -0.027564781 0.2278024 1.088433504 0.24761736
		 0.0067874519 1.090139866 0.31774464 -0.27048045 1.30088973 0.03495539 0.0067874496 1.47158968 0.26751277
		 -0.2236349 1.47024417 0.19669402 0.28405541 1.30079722 0.035288706 0.23720986 1.47016025 0.19683573
		 0.2147834 1.11039138 0.25085726 0.0067874519 1.11114633 0.32236636 -0.20120846 1.11037624 0.25087059
		 -0.21053615 1.0047069788 0.23335999 -0.25731343 1.0042105913 -0.025269642 -0.21053615 1.0038570166 -0.22537872
		 0.0067874519 1.0039180517 -0.26548779 0.22411114 1.0040538311 -0.22534412 0.27088842 1.0042141676 -0.025263758
		 0.22411114 1.0046849251 0.23336415 0.0067874519 1.0046656132 0.29969287 -0.23535889 0.90166712 -0.21363489
		 0.0067874547 0.8996464 -0.26769188 -0.28859735 0.90166712 -0.024944058 0.24893385 0.90166712 -0.21363489
		 0.30217227 0.90166712 -0.024944048 0.0067874575 0.90394884 0.30541515 -0.23518543 0.90166712 0.24543099
		 0.24876042 0.90166712 0.24543099 -0.10842464 0.92349482 -0.065923959 -0.066912018 0.99835497 -0.06019884
		 -0.16001152 0.93508887 -0.064962037 -0.066911966 0.99907929 -0.078893177 -0.16001152 0.93584108 -0.083664581
		 -0.10842463 0.9242444 -0.084625542 -0.078109041 1.014000535 -0.035305988 -0.22199202 0.950921 -0.038028955
		 -0.22570378 0.95367646 -0.049552899 -0.084570616 1.02404356 -0.04690896 -0.091112822 1.028947115 0.013244106
		 -0.22539908 0.9695341 0.0020236732 -0.23073953 0.97524458 -0.0017171955;
	setAttr ".vrts[498:663]" -0.09889102 1.042040348 0.0090685701 -0.097036399 1.025284648 0.057558555
		 -0.22297667 0.96984488 0.0535856 -0.22898149 0.97445786 0.051436223 -0.1053343 1.038258791 0.056510806
		 -0.097118989 1.0129143 0.10795027 -0.213708 0.95313263 0.11446988 -0.21848929 0.95604098 0.12254834
		 -0.10590914 1.024335742 0.11317141 -0.086380728 0.97572625 0.16765839 -0.19985689 0.91407585 0.15649685
		 -0.20098118 0.9117676 0.17260998 -0.094272949 0.98172468 0.18150029 -0.056829575 0.88268316 0.20915093
		 -0.063217044 0.87993431 0.22655253 -0.1588188 0.84893906 0.19572863 -0.15466678 0.84196836 0.21446221
		 -0.13420838 0.84021997 0.22954731 -0.16866247 0.93417364 0.17272209 -0.17788872 0.98072487 0.12223087
		 -0.18479107 1.0011197329 0.050770212 -0.18631889 1.0016087294 -0.0017434359 -0.18524574 0.97941941 -0.049683753
		 -0.13720112 0.94070172 -0.083345525 -0.085614242 0.92896432 -0.084264956 -0.085614242 0.92821807 -0.065564454
		 -0.13720112 0.93996078 -0.064646304 -0.18236527 0.97450823 -0.038163606 -0.18236522 0.99349409 0.001996994
		 -0.17999463 0.99333465 0.053419184 -0.17395954 0.97539657 0.11429459 -0.16739219 0.93459815 0.15668102
		 -0.13811174 0.84636086 0.21095577 -0.081233218 0.85659689 0.23126654 -0.10890249 0.96173882 0.16685316
		 -0.11347008 0.99838042 0.11011359 -0.11612701 1.013073683 0.048619457 -0.11622956 1.010912776 -0.0027860927
		 -0.11622958 0.99347097 -0.049289398 -0.093635216 0.95721763 -0.082103312 -0.035522152 0.94787329 -0.082980633
		 -0.035522148 0.94710809 -0.064274617 -0.11622958 0.95363432 -0.063627079 -0.11622959 0.98215628 -0.037749633
		 -0.11622959 1.00097107887 0.0041736318 -0.11579902 0.99885285 0.050164577 -0.11271924 0.98561823 0.10453891
		 -0.10847177 0.95315832 0.15107444 -0.081973992 0.85713148 0.20887114 0.10767367 0.92349505 -0.065924019
		 0.066161044 0.99835497 -0.060198717 0.15926054 0.93508911 -0.064962037 0.066160984 0.99907929 -0.07889308
		 0.15926056 0.93584132 -0.083664581 0.10767367 0.92424476 -0.084625594 0.077358067 1.014000893 -0.035305891
		 0.22123562 0.95086122 -0.038028926 0.22494413 0.95360106 -0.049552832 0.083819658 1.024043679 -0.046908855
		 0.090361841 1.028947115 0.013244204 0.22464269 0.96947432 0.0020237397 0.2299798 0.97516912 -0.001717124
		 0.098140061 1.042040348 0.0090687182 0.096285433 1.025284648 0.057558656 0.22222021 0.96978492 0.053585667
		 0.2282218 0.97438234 0.05143632 0.10458333 1.038258791 0.056510944 0.096368037 1.0129143 0.10795034
		 0.21295153 0.95307249 0.11446992 0.21772958 0.95596534 0.12254839 0.10515818 1.024335384 0.11317152
		 0.085629761 0.97821486 0.16765839 0.19910048 0.91401613 0.15649679 0.20022145 0.91169161 0.17260998
		 0.093521975 0.98421335 0.18150032 0.077031791 0.95499974 0.18783064 0.19261642 0.89087325 0.1731139
		 0.1914189 0.88551867 0.18598449 0.084578626 0.95606375 0.20498253 0.056078602 0.88268298 0.20915078
		 0.062466074 0.87993395 0.22655243 0.15806234 0.8488791 0.19572845 0.15390709 0.84189242 0.21446209
		 0.13345699 0.84020352 0.22954722 0.16393639 0.90659201 0.19165729 0.16791111 0.93415743 0.17272209
		 0.17713736 0.98070848 0.1222309 0.18403973 1.0011012554 0.050771933 0.18556756 1.0015668869 -0.0022206579
		 0.18449442 0.97940338 -0.049683686 0.13645014 0.94070172 -0.083345525 0.084863275 0.92896444 -0.084264986
		 0.084863275 0.92821807 -0.065564469 0.13645014 0.93996078 -0.064646304 0.18161428 0.97450823 -0.038163576
		 0.18161425 0.99349409 0.0019970608 0.17924368 0.99333465 0.053419247 0.17320856 0.97539634 0.1142946
		 0.16664118 0.93459803 0.156681 0.16441162 0.91061592 0.17353302 0.13736075 0.84636039 0.21095558
		 0.080482244 0.85659653 0.23126638 0.10535111 0.93466818 0.19759913 0.10815153 0.96173882 0.16685316
		 0.1127191 0.99838018 0.11011365 0.11537604 1.013073683 0.048619553 0.11547859 1.010861874 -0.0035434873
		 0.11547862 0.99347121 -0.049289331 0.092884257 0.95721787 -0.082103312 0.03579301 0.94787353 -0.082980663
		 0.035792999 0.94710809 -0.064274617 0.11547862 0.95363456 -0.063627079 0.11547863 0.98215628 -0.037749577
		 0.11547863 1.00097107887 0.0041737175 0.11504806 0.99885285 0.050164647 0.11196826 0.98561805 0.10453898
		 0.10772082 0.95315832 0.15107444 0.10605617 0.93164682 0.16994004 0.081223041 0.85713136 0.20887101
		 -0.00076501683 0.98292106 -0.077271089 -0.0010832574 0.9574523 -0.082980633 -0.0010832574 0.95668709 -0.064274617
		 -0.00076501683 0.98217809 -0.058571566 -0.16839892 0.36559692 0.10350933 0.16815016 0.36559692 0.10350933
		 -0.14891711 0.87427866 0.089800827 0.14866835 0.87427866 0.089800827 -0.14891711 0.87427866 -0.092458822
		 0.14866835 0.87427866 -0.092458822 -0.16839892 0.36559692 -0.10616732 0.16815016 0.36559692 -0.10616732
		 -0.0001243806 0.87484854 0.16024235 -0.0001243806 0.87484854 -0.16290033 -0.0001243806 0.36559692 -0.16939932
		 -0.0001243806 0.36559692 0.16674133 -0.049721971 0.89296037 0.14867692 -0.049721971 0.89296037 -0.1513349
		 -0.030409824 0.36559692 -0.16599825 -0.030409824 0.36559692 0.16334027 -0.099319555 0.8921296 0.1294789
		 -0.099319555 0.8921296 -0.13213688 -0.11230741 0.36559692 -0.15104051 -0.11230741 0.36559692 0.14838251
		 0.099070787 0.89013892 0.12450224 0.099070787 0.89013892 -0.12716022 0.11205864 0.36559692 -0.15104051
		 0.11205864 0.36559692 0.14838251 0.049473196 0.89296037 0.14867692 0.049473196 0.89296037 -0.1513349
		 0.030161051 0.36559692 -0.16599825 0.030161051 0.36559692 0.16334027 -0.17564718 0.85797232 -0.035146065
		 -0.20018408 0.36559692 -0.041350439 -0.029912798 0.36559692 -0.061294079 -0.0001243806 0.36559692 -0.06503351
		 0.029664023 0.36559692 -0.061294079 0.19993532 0.36559692 -0.041350439 0.17539842 0.85797226 -0.035146065
		 0.10384744 0.92842096 -0.048372079 0.035513014 0.96903425 -0.05278077 -0.0001243806 0.96903425 -0.056087267
		 -0.035761781 0.96903425 -0.05278077 -0.1040962 0.92842096 -0.048372079 -0.17564718 0.85797232 0.032488085
		 -0.20018408 0.36559692 0.038692463 -0.029912798 0.36559692 0.058636114;
	setAttr ".vrts[664:829]" -0.0001243806 0.36559692 0.062375542 0.029664023 0.36559692 0.058636114
		 0.19993532 0.36559692 0.038692463 0.17539842 0.85797226 0.032488085 0.10384744 0.92842096 0.045714106
		 0.035513014 0.96903425 0.050122783 -0.0001243806 0.96903425 0.053429294 -0.035761781 0.96903425 0.050122783
		 -0.1040962 0.92842096 0.045714106 0.1711943 0.7470414 0.096779101 0.11408806 0.75982827 0.13845183
		 0.056981847 0.7621029 0.16250713 -0.0001243806 0.7476092 0.17538555 -0.057230629 0.7621029 0.16250713
		 -0.11433684 0.76143312 0.1424641 -0.17144306 0.7470414 0.096779101 -0.20269455 0.73389506 0.030789698
		 -0.20269455 0.73389506 -0.033447657 -0.17144306 0.7470414 -0.099437088 -0.11433684 0.76143312 -0.1451221
		 -0.057230629 0.7621029 -0.16516514 -0.0001243806 0.74734932 -0.17772667 0.056981847 0.7621029 -0.16516514
		 0.11408806 0.75982827 -0.14110982 0.1711943 0.7470414 -0.099437088 0.20244579 0.73389506 -0.033447657
		 0.20244579 0.73389506 0.030789698 0.18663807 0.61987907 0.10243943 0.12438393 0.6285935 0.1495083
		 0.062129773 0.63014382 0.17212521 -0.0001243806 0.62019217 0.18548039 -0.062378556 0.63014382 0.17212521
		 -0.12463269 0.62968725 0.15224275 -0.1868868 0.61987907 0.10243943 -0.22140856 0.61091942 0.030501299
		 -0.22140856 0.61091942 -0.033159267 -0.1868868 0.61987907 -0.10509741 -0.12463269 0.62968725 -0.15490074
		 -0.062378556 0.63014382 -0.17478319 -0.0001243806 0.62019217 -0.18813837 0.062129773 0.63014382 -0.17478319
		 0.12438393 0.6285935 -0.15216629 0.18663807 0.61987907 -0.10509741 0.2211598 0.61091942 -0.033159267
		 0.2211598 0.61091942 0.030501299 0.180409 0.49276724 0.10426937 0.1202312 0.49673241 0.15116744
		 0.060053412 0.49743766 0.16995198 -0.0001243806 0.49290979 0.18239906 -0.06030219 0.49743766 0.16995198
		 -0.12047997 0.49723014 0.15241161 -0.18065774 0.49276724 0.10426937 -0.21441469 0.48869079 0.03473058
		 -0.21441469 0.48869079 -0.037388533 -0.18065774 0.49276724 -0.10692736 -0.12047997 0.49723014 -0.1550696
		 -0.06030219 0.49743766 -0.17260996 -0.0001243806 0.49290979 -0.18505704 0.060053412 0.49743766 -0.17260996
		 0.1202312 0.49673241 -0.15382542 0.180409 0.49276724 -0.10692736 0.21416594 0.48869073 -0.037388533
		 0.21416594 0.48869073 0.03473058 -0.2349679 0.0039330674 0.038692564 -0.14758821 0.0039330674 0.048763219
		 -0.1459692 0.0039330674 0.10516956 -0.21215872 0.0039330674 0.082541846 -0.055720553 0.0039330674 0.051307045
		 -0.074169651 0.0039330674 0.086494595 -0.21215872 0.0039330674 -0.085199617 -0.1459692 0.0039330674 -0.10782747
		 -0.14758821 0.0039330674 -0.051421128 -0.2349679 0.0039330674 -0.041350439 -0.055720553 0.0039330674 -0.053965006
		 -0.074169651 0.0039330674 -0.089152634 0.14060575 0.0039330674 0.053650137 0.13786471 0.0039330674 0.10845938
		 0.2212534 0.0039330674 0.039996758 0.19847272 0.0039330674 0.078468494 0.054348093 0.0039330674 0.049670957
		 0.078378715 0.0039330674 0.085314162 0.054348093 0.0039330674 -0.052328948 0.14060575 0.0039330674 -0.056308117
		 0.078378715 0.0039330674 -0.087972194 0.13786471 0.0039330674 -0.1111174 0.2212534 0.0039330674 -0.042654723
		 0.19847272 0.0039330674 -0.081126511 -0.063229695 0.094349042 0.10570602 -0.049268618 0.094349042 0.053139314
		 -0.049268618 0.094349042 -0.05579729 -0.063229695 0.094349042 -0.10836407 -0.13755375 0.094349042 -0.11863074
		 -0.20121878 0.094349042 -0.090441555 -0.22627193 0.094349042 -0.041350439 -0.22627193 0.094349042 0.038692538
		 -0.20121878 0.094349042 0.087783717 -0.13755375 0.094349042 0.11597282 -0.052289739 0.18476509 0.12491742
		 -0.042816672 0.18476509 0.054971576 -0.042816672 0.18476498 -0.057629548 -0.052289739 0.18476498 -0.12757544
		 -0.12913829 0.18476498 -0.12943399 -0.19027881 0.18476509 -0.095683463 -0.21757598 0.18476509 -0.041350439
		 -0.21757598 0.18476509 0.038692512 -0.19027881 0.18476509 0.09302558 -0.12913829 0.18476509 0.12677604
		 -0.041349787 0.275181 0.14412884 -0.036364734 0.275181 0.056803845 -0.036364734 0.27518094 -0.059461795
		 -0.041349787 0.27518094 -0.14678682 -0.12072285 0.27518094 -0.14023727 -0.17933886 0.275181 -0.10092541
		 -0.20888004 0.275181 -0.041350439 -0.20888004 0.275181 0.038692486 -0.17933886 0.275181 0.098267458
		 -0.12072285 0.275181 0.13757929 0.13141319 0.094349042 0.11844017 0.19089209 0.094349042 0.08472871
		 0.21592388 0.094349042 0.039670687 0.21592388 0.094349042 -0.042328671 0.19089209 0.094349042 -0.087386705
		 0.13141319 0.094349042 -0.12109818 0.066324301 0.094349042 -0.10747869 0.048177078 0.094349042 -0.054570228
		 0.048177078 0.094349042 0.051912244 0.066324301 0.094349042 0.10482068 0.12496167 0.18476498 0.12842096
		 0.18331145 0.18476498 0.090988904 0.21059439 0.18476498 0.039344609 0.21059439 0.18476498 -0.042002592
		 0.18331145 0.18476498 -0.093646906 0.12496167 0.18476498 -0.13107897 0.05426988 0.18476509 -0.12698522
		 0.042006053 0.18476509 -0.056811504 0.042006053 0.18476498 0.054153532 0.05426988 0.18476498 0.12432721
		 0.11851015 0.27518094 0.13840173 0.17573082 0.27518094 0.09724912 0.20526484 0.27518094 0.039018534
		 0.20526484 0.27518094 -0.041676532 0.17573082 0.27518094 -0.099907115 0.11851015 0.27518094 -0.14105973
		 0.042215466 0.275181 -0.14649172 0.035835039 0.275181 -0.059052791 0.035835039 0.27518094 0.056394827
		 0.042215466 0.27518094 0.14383373 0.20299552 0.19160926 0.13699122 0.19400705 0.19131844 0.11848589
		 0.2010676 0.25120944 0.12370431 0.19207916 0.25091869 0.1070651 0.19913965 0.31080973 0.11174726
		 0.19015121 0.31051898 0.096787363 0.19721174 0.37041 0.097416542 0.18822324 0.37011924 0.084469326
		 0.21604571 0.37128422 0.05162036 0.20593044 0.37095696 0.044745468 0.22393465 0.37153938 0.0054228641
		 0.21340986 0.37119901 0.0054228641 0.21512346 0.37125435 -0.040399857 0.20492247 0.37092438 -0.034274504
		 0.19624662 0.37037861 -0.08695516 0.18746446 0.37009469 -0.073239282 0.1981746 0.31077859 -0.10128584
		 0.18939237 0.31049442 -0.085437782 0.20010252 0.25117829 -0.11324293;
	setAttr ".vrts[830:995]" 0.19132033 0.25089425 -0.095615827 0.20204945 0.19099133 -0.11808893
		 0.19318847 0.19314323 -0.09863703 0.21070628 0.19212361 -0.051233768 0.21919365 0.19239819 0.0055053518
		 0.21171425 0.19215618 0.061708827 0.20877832 0.25172395 -0.045539819 0.21726574 0.25199845 0.0054776813
		 0.2097863 0.25175655 0.05601351 0.20685038 0.31132412 -0.040415745 0.2153378 0.31159875 0.005452733
		 0.20785837 0.31135669 0.050888229 0.22090729 0.19245365 -0.0599887 0.22971846 0.19273861 0.0055053518
		 0.22182947 0.19248348 0.071535073 0.2189793 0.25205386 -0.053411905 0.2277905 0.25233892 0.0054776813
		 0.21990156 0.25208375 0.064848863 0.21705143 0.31165421 -0.047493335 0.22586255 0.31193912 0.005452733
		 0.21797362 0.31168395 0.058831833 -0.18140709 0.90821916 -0.093888409 -0.1133789 0.90704274 -0.15433034
		 2.3527459e-033 0.90867424 -0.17452177 0.1133789 0.90867424 -0.15539984 0.18140709 0.90867424 -0.094946459
		 -0.21184517 0.73960406 -0.1862697 -0.10592259 0.73960406 -0.20946184 2.0040015e-033 0.73960406 -0.22799183
		 0.10592259 0.73960406 -0.20946184 0.21184517 0.73960406 -0.1862697 -0.22675781 0.62398756 -0.20886457
		 -0.1133789 0.62398756 -0.24440193 -0.011853316 0.62398756 -0.24440193 0.1133789 0.62398756 -0.24440193
		 0.22675781 0.62398756 -0.20886457 -0.22675781 0.33930093 -0.2513561 -0.1133789 0.33930093 -0.26873878
		 -1.0711541e-017 0.33930093 -0.26873878 0.1133789 0.33930093 -0.26873878 0.22675781 0.33930093 -0.2513561
		 0.25015938 0.39943093 -0.023248177 -0.20677909 0.34723639 -0.008448462 -0.23097421 0.39943093 0.14992893
		 -0.18128267 0.39943093 0.16714786 0.18006979 0.40094972 0.16443866 0.23001444 0.39943093 0.14992893
		 0.22279447 0.50953287 -0.009347029 -0.22400731 0.50953287 -0.009347029 -0.21660316 0.50953287 0.14992893
		 -0.18128267 0.50953287 0.17095238 0.18006979 0.50953287 0.17095238 0.21539032 0.50953287 0.14992893
		 0.22951071 0.50953287 -0.009347029 -0.23072359 0.50953287 -0.009347029 -0.22309683 0.50953287 0.15504737
		 -0.1881008 0.50953287 0.17981774 0.1868877 0.50953287 0.17981774 0.22188398 0.50953287 0.15504737
		 0.262889 0.39943093 -0.023248177 -0.24992283 0.39943093 -0.009347029 -0.23790377 0.39943093 0.15504737
		 -0.18810062 0.39943093 0.17318752 0.1868877 0.39943093 0.17329715 0.23694399 0.39943093 0.15504737
		 -0.0558463 0.50953287 0.22345543 -0.053798504 0.50953287 0.21361637 -0.053798504 0.39943093 0.20007153
		 -0.055846281 0.39943093 0.20991066 0.051643554 0.50953287 0.22361802 0.049782589 0.50953287 0.21375698
		 0.049782589 0.39884257 0.19743578 0.051643495 0.39943093 0.21007328 0.22628927 0.56289023 -0.0026118422
		 0.23311682 0.56289023 -0.0026118422 -0.22792487 0.56289023 -0.0026118422 -0.23475243 0.56289023 -0.0026118422
		 -0.2203978 0.56289023 0.17223214 -0.2269993 0.56289023 0.1778537 -0.18449144 0.56289023 0.19532208
		 -0.19142254 0.56289023 0.20505883 -0.078263685 0.56289023 0.24556734 -0.08127033 0.56289023 0.25654307
		 0.18285583 0.56289023 0.19532208 0.2187622 0.56289023 0.17223221 0.18978693 0.56289023 0.20505886
		 0.22536373 0.56289023 0.17785381 0.07381849 0.56289023 0.24572413 0.076550826 0.56289023 0.2567243
		 0.23636371 0.3470591 -0.027444115 0.22944075 0.3470591 -0.027444115 -0.23494679 0.3470591 -0.015188732
		 -0.22838713 0.3470591 -0.015188732 -0.219143 0.3470591 0.15980415 -0.21277367 0.3470591 0.15433073
		 -0.17334963 0.3470591 0.176889 -0.16708294 0.3470591 0.17151906 -0.080167115 0.3470591 0.22701713
		 -0.07720156 0.3470591 0.21633053 0.17131777 0.3470591 0.1768886 0.21730922 0.3470591 0.15980437
		 0.16505107 0.34840575 0.1654631 0.21093984 0.3470591 0.15433092 0.074894853 0.34699604 0.22709055
		 0.072802655 0.34554031 0.21033518 0.22279447 0.50569123 -0.10462978 0.22628927 0.56289595 -0.087335579
		 0.23311682 0.56289595 -0.087335564 0.22951071 0.50569123 -0.10462978 0.25015938 0.39629069 -0.13090734
		 0.262889 0.39629069 -0.13090739 0.23636371 0.34813285 -0.12103426 0.22944075 0.34813285 -0.12103426
		 -0.22306444 0.50540245 -0.10462494 -0.22792487 0.56289595 -0.087335564 -0.22978069 0.50540245 -0.10462494
		 -0.23475243 0.56289595 -0.087335564 -0.25415343 0.39774296 -0.11905878 -0.26688319 0.39774296 -0.11868742
		 -0.24134654 0.35022968 -0.11021528 -0.23442356 0.35022968 -0.11021528 0.13596828 0.50827813 -0.18305939
		 0.13004427 0.567334 -0.20831932 0.13247123 0.567334 -0.21608759 0.13835567 0.50827813 -0.19013263
		 0.13538185 0.39713061 -0.19432203 0.13939959 0.39713061 -0.20622581 0.1155338 0.34964314 -0.22988346
		 0.11334875 0.34964314 -0.2223517 -0.13671029 0.50785863 -0.18164946 -0.13167837 0.56730676 -0.20831974
		 -0.13909751 0.50785863 -0.18872261 -0.13410519 0.56730676 -0.21608816 -0.14531407 0.39920121 -0.2004853
		 -0.14987941 0.39920121 -0.21225725 -0.12561813 0.35265863 -0.23649679 -0.12331216 0.35265863 -0.22896503
		 0.049103931 0.51077479 -0.17394957 0.047429141 0.57154351 -0.20437266 0.048069116 0.57154351 -0.21264696
		 0.049733404 0.51077479 -0.1814837 0.048684098 0.39794278 -0.17291796 0.049743511 0.39794278 -0.1855973
		 0.03912269 0.35111684 -0.2144184 0.03854654 0.35111684 -0.2063957 -0.05016027 0.51022619 -0.17202139
		 -0.049061015 0.5714817 -0.20437206 -0.050789762 0.51022619 -0.17955546 -0.049700964 0.5714817 -0.2126465
		 -0.050166149 0.40061694 -0.17885332 -0.051553704 0.40061694 -0.19149821 -0.041802317 0.35504043 -0.2214182
		 -0.041226182 0.35504043 -0.21339552 0.19841455 0.80413622 -0.020620398 0.22360142 0.81747162 -0.034314398
		 0.24411814 0.84014094 -0.026144758 0.24793443 0.85888994 -0.00090394082 0.23278196 0.86274832 0.02662796
		 0.20755568 0.8494333 0.040326312 0.18706825 0.82673073 0.032161057 0.1832919 0.80796605 0.0069136424
		 0.37546924 0.61517954 0.21379517 0.38426384 0.63113755 0.22006628 0.37888694 0.64674878 0.23018183
		 0.36251092 0.6528697 0.23823465 0.34459218 0.64590997 0.2394034;
	setAttr ".vrts[996:1161]" 0.33581367 0.62995249 0.23314403 0.34138012 0.61434674 0.22317015
		 0.35749218 0.60821784 0.21491955 0.3228896 0.65336603 0.19115509 0.33256078 0.67074418 0.19800559
		 0.35205591 0.67828918 0.19666371 0.36993927 0.67158401 0.18793124 0.37580857 0.65453535 0.17693841
		 0.36613926 0.6371429 0.17009737 0.34674004 0.62960821 0.17150728 0.32885918 0.63633186 0.18023786
		 0.31175902 0.67672861 0.14877243 0.32257262 0.69510496 0.15538198 0.3432579 0.70275778 0.15311486
		 0.36171094 0.695131 0.1431886 0.36697263 0.67663568 0.13132848 0.35596821 0.65822434 0.12469658
		 0.33537978 0.65071124 0.12720171 0.31714752 0.6583814 0.13716191 0.30541834 0.70388114 0.10456163
		 0.31646729 0.71905297 0.10778757 0.33366027 0.72424471 0.1028159 0.34685767 0.71631402 0.092386276
		 0.34805664 0.6998651 0.082563505 0.33670616 0.68476725 0.079502404 0.31973085 0.67978024 0.084815815
		 0.3068676 0.68765116 0.095102452 0.29776847 0.73442161 0.087882996 0.31351396 0.74587601 0.082343861
		 0.32657981 0.74587649 0.067672148 0.32961315 0.7343452 0.052290913 0.32081845 0.71796936 0.045091845
		 0.30496743 0.70624387 0.05015875 0.29138494 0.70623583 0.064873196 0.28843755 0.71793628 0.080546945
		 0.26760456 0.77659684 0.075001307 0.28939512 0.7889961 0.063979141 0.30384126 0.78649831 0.041143145
		 0.30265573 0.77040231 0.019557564 0.28657401 0.75004882 0.011705709 0.26447198 0.7373926 0.022302916
		 0.2497175 0.7399649 0.045305591 0.25104174 0.75626463 0.067239583 0.23771885 0.8136456 0.05874775
		 0.26152551 0.82624483 0.045938436 0.2760295 0.82271212 0.020198023 0.27280703 0.80505347 -0.0035161299
		 0.25367603 0.78361773 -0.011296995 0.22976798 0.7709794 0.0014535487 0.21521199 0.77455133 0.027269756
		 0.21849613 0.79226053 0.051067371 0.17881246 0.81647676 0.0022351237 0.19308867 0.81290555 -0.023879554
		 0.18235569 0.83427042 0.026189838 0.20172203 0.85584015 0.033935912 0.2255974 0.86849952 0.0209473
		 0.23992656 0.86487627 -0.0051628686 0.23630613 0.84711242 -0.029104795 0.216897 0.82559508 -0.036858812
		 0.1813982 0.83048892 -0.0032507246 0.1915091 0.82803047 -0.021902142 0.18388216 0.84321016 0.013852642
		 0.19762954 0.85865456 0.019385375 0.2145689 0.86774981 0.010123063 0.22473559 0.86522597 -0.0085191289
		 0.22216332 0.85256678 -0.025619635 0.20837976 0.83717787 -0.031163802 0.19171415 0.8472389 -0.0080588236
		 0.19480214 0.84650916 -0.013879421 0.19249657 0.85122436 -0.002721122 0.19671091 0.85607356 -0.00097555382
		 0.20188375 0.85898179 -0.0038581383 0.20499474 0.85826844 -0.0096931793 0.20419951 0.85433191 -0.015047217
		 0.19996624 0.84946525 -0.016779225 0.19824809 0.85260695 -0.0087795528 0.30312902 0.71812683 0.093330175
		 0.31656396 0.73156089 0.092365094 0.33172047 0.73424852 0.082692869 0.33994785 0.72454894 0.069836013
		 0.33618569 0.70814675 0.06135688 0.32274181 0.69469774 0.062296133 0.30745113 0.69205511 0.072063461
		 0.29934442 0.70173728 0.08487615 -0.20324427 0.19160926 0.13699122 -0.19425581 0.19131844 0.11848589
		 -0.20131631 0.25120953 0.12370431 -0.19232792 0.25091875 0.1070651 -0.19938841 0.31080973 0.11174726
		 -0.19039993 0.31051898 0.096787363 -0.1974605 0.37041 0.097416542 -0.188472 0.37011924 0.084469326
		 -0.21629448 0.37128422 0.05162036 -0.20617914 0.37095696 0.044745468 -0.22418335 0.37153938 0.0054228641
		 -0.21365863 0.37119901 0.0054228641 -0.21537222 0.37125435 -0.040399857 -0.20517118 0.37092438 -0.034274504
		 -0.19649538 0.37037873 -0.08695516 -0.18771321 0.37009469 -0.073239282 -0.19842331 0.31077859 -0.10128584
		 -0.18964113 0.31049442 -0.085437782 -0.20035128 0.25117829 -0.11324293 -0.1915691 0.25089425 -0.095615827
		 -0.20229821 0.19099128 -0.11808893 -0.19343722 0.19314323 -0.09863703 -0.21095499 0.19212368 -0.051233768
		 -0.21944241 0.19239819 0.0055053518 -0.211963 0.19215624 0.061708827 -0.2090271 0.25172395 -0.045539819
		 -0.2175145 0.25199845 0.0054776813 -0.21003506 0.25175655 0.05601351 -0.20709914 0.31132412 -0.040415745
		 -0.21558647 0.31159875 0.005452733 -0.20810707 0.31135669 0.050888229 -0.22115599 0.19245358 -0.0599887
		 -0.22996716 0.19273861 0.0055053518 -0.22207823 0.19248341 0.071535073 -0.21922807 0.25205386 -0.053411905
		 -0.22803926 0.25233892 0.0054776813 -0.22015032 0.25208375 0.064848863 -0.21730019 0.31165421 -0.047493335
		 -0.22611129 0.31193906 0.005452733 -0.21822235 0.31168395 0.058831833 -0.37355494 1.2088517 0.0092249103
		 0.0067874519 1.053961992 0.39601108 0.38712996 1.20881987 0.0092250295 -0.37355494 1.30425954 0.0067071272
		 0.0067874519 1.31741405 0.47124115 0.38712996 1.30427921 0.0063533513 -0.37355494 1.39971209 0.0037320554
		 0.0067874519 1.57566571 0.38016811 0.38712996 1.39973295 0.0034816968 -0.32338369 1.39950573 -0.0030594976
		 0.0067874519 1.57397234 0.32235244 0.33695871 1.39952958 -0.0033431977 -0.32338369 1.30406797 -0.00016137453
		 0.0067874519 1.31365144 0.33621293 0.33695871 1.30408418 -0.00047158485 -0.32338369 1.20865309 0.0024009401
		 0.0067874519 1.052283049 0.3382763 0.33695871 1.20862949 0.0024010285 -0.19921692 1.55338562 0.21287531
		 -0.19921692 1.31161511 0.26481956 -0.19921692 1.065812469 0.22811989 -0.20960785 1.067012429 0.27839732
		 -0.20960785 1.3141284 0.3537243 -0.20960785 1.55487835 0.2631793 0.2127918 1.55335689 0.21287882
		 0.2127918 1.31162655 0.26478729 0.2127918 1.065800905 0.22812535 0.22318275 1.067048788 0.27838403
		 0.22318275 1.31411886 0.35372257 0.22318275 1.5548557 0.26317781 -0.30607092 1.51565921 0.11285415
		 -0.30607092 1.30876338 0.16360925 -0.30607092 1.099567294 0.12517539 -0.32832909 1.10083842 0.16858494
		 -0.32832909 1.31105793 0.24566603 -0.32832909 1.51696134 0.15623361 0.31964594 1.51565397 0.11283231
		 0.31964594 1.30899584 0.16318394 0.31964594 1.099567294 0.12517539 0.34190398 1.10084605 0.16858491
		 0.34190398 1.31145632 0.2451539 0.34190398 1.51695263 0.1562174;
	setAttr ".vrts[1162:1327]" -0.032768279 1.57188106 0.35875529 -0.030868877 1.57020879 0.30233163
		 -0.030868877 1.31334794 0.32309911 -0.030868877 1.054887414 0.31809729 -0.032768279 1.056461692 0.37447628
		 -0.032768279 1.31678438 0.44977799 0.046343174 1.57187152 0.35877049 0.044443779 1.57020175 0.30234519
		 0.044443779 1.31330764 0.32314137 0.044443779 1.054824114 0.31811544 0.046343174 1.056384325 0.37449673
		 0.046343174 1.31674838 0.44980741 -0.032768279 1.52351165 0.37604722 -0.20960785 1.50923479 0.28034869
		 -0.32832909 1.47788095 0.17326927 -0.37355494 1.38158643 0.0043404051 -0.32338369 1.38137996 -0.0024660078
		 -0.30607092 1.47638416 0.12253481 -0.19921692 1.50754201 0.22269778 -0.030868877 1.52147329 0.3062782
		 0.0067874519 1.52462041 0.32493931 0.044443779 1.52146375 0.30629498 0.2127918 1.50751913 0.22269894
		 0.31964588 1.47638643 0.12250011 0.33695871 1.38140607 -0.0027983405 0.38712996 1.3816067 0.0040265699
		 0.34190398 1.47788393 0.1732254 0.22318275 1.50921619 0.28034863 0.046343174 1.52350008 0.37606376
		 0.0067874519 1.52656722 0.3976284 -0.032768279 1.1218276 0.39346999 -0.20960785 1.129614 0.29731095
		 -0.32832909 1.15374827 0.18779837 -0.37355494 1.23282671 0.0085049383 -0.32338369 1.23261786 0.0016800589
		 -0.30607092 1.15215576 0.13471299 -0.19921692 1.12798667 0.2373579 -0.030868877 1.11987722 0.31944722
		 0.0067874519 1.11781478 0.33792064 0.044443779 1.11978114 0.31949151 0.2127918 1.12802219 0.23733282
		 0.31964594 1.15214372 0.13471302 0.33695871 1.23259079 0.0016801598 0.38712996 1.23278964 0.0085050752
		 0.34190398 1.15373468 0.18779843 0.22318275 1.12966645 0.29727817 0.046343174 1.12173915 0.39350778
		 0.0067874519 1.12028575 0.41492671 -0.23794203 1.50172317 0.25484633 -0.23794203 1.31337094 0.32796979
		 -0.23794203 1.13639712 0.2706604 -0.23794203 1.07469213 0.25241116 -0.22471884 1.073614836 0.20373131
		 -0.22471884 1.1346333 0.21234092 -0.22471884 1.31093824 0.24068637 -0.22471884 1.50007772 0.19885303
		 -0.22471884 1.54438496 0.18899728 -0.23794203 1.54583073 0.23766102 0.25151694 1.50171483 0.25481772
		 0.25151694 1.31341934 0.32790551 0.25151694 1.13638818 0.27066064 0.25151694 1.074626803 0.25243998
		 0.23829378 1.073559284 0.20376137 0.23829378 1.13463497 0.21234092 0.23829378 1.31094801 0.24065755
		 0.23829378 1.50006092 0.19884381 0.23829378 1.54435802 0.18900062 0.25151694 1.54580784 0.23765425
		 -0.1515768 1.51390469 0.3117646 -0.1515768 1.31509387 0.38517079 -0.1515768 1.12718725 0.32880127
		 -0.1515768 1.063926816 0.30983022 -0.14397241 1.06263721 0.25752077 -0.14397241 1.125561 0.26416594
		 -0.14397241 1.31224442 0.28388086 -0.14397241 1.51209211 0.25014588 -0.14397241 1.55890262 0.24222113
		 -0.1515768 1.56045914 0.29452688 0.16515172 1.5138886 0.31178084 0.16515172 1.31506467 0.38519004
		 0.16515172 1.12716472 0.32880679 0.16515172 1.063925743 0.30982676 0.15754732 1.062633634 0.2575179
		 0.15754732 1.12556243 0.26415479 0.15754732 1.31225109 0.28385827 0.15754732 1.51208448 0.25014228
		 0.15754732 1.55888748 0.24222769 0.16515172 1.56044555 0.29453534 -0.11435474 1.51694047 0.33186236
		 -0.11435474 1.31559527 0.40543061 -0.11435474 1.12541711 0.34909347 -0.11435474 1.061567783 0.33008233
		 -0.1085377 1.060175419 0.27650073 -0.1085377 1.1236074 0.28155258 -0.1085377 1.3125304 0.29620549
		 -0.1085377 1.51505876 0.26767948 -0.1085377 1.56244206 0.26104599 -0.11435474 1.56403744 0.31464124
		 0.12792966 1.51692188 0.33189091 0.12792966 1.31551504 0.40549916 0.12792966 1.12531972 0.34913456
		 0.12792966 1.061487794 0.3301006 0.12211262 1.060088992 0.27652356 0.12211262 1.12352741 0.28158638
		 0.12211262 1.31247067 0.29626906 0.12211262 1.5150485 0.2676954 0.12211262 1.56243443 0.26105863
		 0.12792966 1.56402707 0.31465769 -0.065518498 1.52085268 0.35833812 -0.065518498 1.31639445 0.43191293
		 -0.065518498 1.12337458 0.37561688 -0.065518498 1.058455229 0.35666573 -0.062046479 1.056983709 0.30140334
		 -0.062046479 1.12142193 0.30420947 -0.062046479 1.31305683 0.3122614 -0.062046479 1.51889515 0.290784
		 -0.062046479 1.56709135 0.28575569 -0.065518498 1.56873584 0.34104145 0.079093397 1.52082765 0.35837519
		 0.079093397 1.31630373 0.43198663 0.079093397 1.12325466 0.37566867 0.079093397 1.058352232 0.3566916
		 0.075621389 1.056867123 0.30143461 0.075621389 1.12129259 0.30426875 0.075621389 1.312989 0.31233284
		 0.075621389 1.51888001 0.29081187 0.075621389 1.56708324 0.28577241 0.079093397 1.56872344 0.3410624
		 0.35692102 0.62804639 0.19419788 0.36372921 0.63383943 0.19553131 0.36684498 0.64160109 0.1989575
		 0.36543342 0.64925164 0.2035583 0.36305583 0.65484673 0.21051598 0.35517204 0.65671539 0.21403818
		 0.3464492 0.65444154 0.21511942 0.33974543 0.64865196 0.21386522 0.33670115 0.64089262 0.21049331
		 0.33446416 0.63312089 0.20312424 0.3400248 0.62763155 0.19858165 0.34824458 0.6257742 0.19531436
		 0.36507699 0.61242563 0.19278599 0.37802699 0.6234448 0.19532245 0.38395354 0.63820833 0.20183936
		 0.38126865 0.65276039 0.21059054 0.37069169 0.66320193 0.21923114 0.35505676 0.66673476 0.22544587
		 0.33855328 0.66241282 0.22756962 0.32560325 0.65139365 0.22503319 0.3196767 0.63663012 0.21851626
		 0.32236159 0.62207812 0.20976509 0.33293858 0.61163652 0.20112444 0.34857351 0.60810363 0.19490971
		 0.37297535 0.59715122 0.19688819 0.39079949 0.6123178 0.20037933 0.39895669 0.63263798 0.20934898
		 0.39526123 0.65266716 0.22139394 0.38070336 0.66703868 0.23328678 0.35918376 0.6719014 0.24184065
		 0.33646867 0.66595262 0.24476373 0.31864449 0.65078604 0.24127266 0.31048724 0.63046587 0.23230293
		 0.31418267 0.61043668 0.22025798 0.32874063 0.59606516 0.20836511 0.35026023 0.5912025 0.19981126
		 0.37984291 0.58371836 0.20610298 0.40079644 0.60154754 0.21020691;
	setAttr ".vrts[1328:1493]" 0.41038582 0.62543535 0.22075136 0.40604159 0.64898115 0.23491111
		 0.38892776 0.66587567 0.24889192 0.36363003 0.67159224 0.25894767 0.33692685 0.664599 0.26238391
		 0.31597322 0.64676988 0.25828004 0.30638379 0.62288201 0.2477355 0.31072804 0.59933627 0.23357578
		 0.32784191 0.58244163 0.21959497 0.3531397 0.57672507 0.20953922 0.38500741 0.5734418 0.2195282
		 0.40703923 0.59218848 0.22384332 0.41712213 0.6173057 0.23493046 0.41255432 0.6420632 0.24981894
		 0.39455977 0.65982735 0.26451924 0.36796024 0.665838 0.27509242 0.33988276 0.65848494 0.2787056
		 0.31785083 0.63973814 0.27439046 0.3077679 0.61462092 0.26330325 0.3123357 0.58986342 0.2484148
		 0.33033031 0.57209939 0.23371452 0.35693002 0.56608862 0.22314128 0.38796332 0.56732762 0.23585005
		 0.40891686 0.5851568 0.23995399 0.41850623 0.60904467 0.25049847 0.41416195 0.63259047 0.2646583
		 0.39704812 0.64948499 0.27863905 0.37175038 0.65520155 0.28869477 0.34504712 0.64820832 0.29213104
		 0.32409358 0.63037908 0.28802711 0.31450418 0.60649121 0.27748251 0.31884843 0.58294547 0.2633228
		 0.33596233 0.56605083 0.24934196 0.36126012 0.56033432 0.23928623 0.3884213 0.56597412 0.25347039
		 0.40624547 0.58114076 0.25696155 0.4144026 0.60146093 0.26593128 0.41070712 0.62149018 0.27797633
		 0.39614922 0.63586164 0.28986913 0.37462962 0.64072436 0.29842293 0.35191455 0.63477552 0.30134597
		 0.33409038 0.619609 0.29785487 0.32593319 0.59928876 0.28888512 0.32962868 0.57925963 0.27684015
		 0.3441866 0.56488806 0.2649473 0.36570621 0.56002539 0.25639346 0.38633657 0.56951404 0.27066472
		 0.39928654 0.58053327 0.27320126 0.40521306 0.59529674 0.27971816 0.40252811 0.60984886 0.2884694
		 0.39195117 0.62029028 0.29710996 0.37631631 0.62382323 0.30332464 0.35981283 0.61950117 0.30544835
		 0.34686279 0.60848206 0.30291194 0.34093624 0.59371847 0.296395 0.34362116 0.57916647 0.28764382
		 0.3541981 0.56872493 0.27900317 0.36983308 0.56519198 0.27278844 0.38191307 0.57760078 0.28574982
		 0.38872129 0.58339381 0.2870833 0.39183703 0.59115553 0.29050946 0.3904255 0.59880602 0.29511026
		 0.3848649 0.60429531 0.29965281 0.37664512 0.60615277 0.3029201 0.36796871 0.60388047 0.30403659
		 0.36116052 0.59808749 0.30270314 0.35804471 0.59032577 0.29927698 0.35945624 0.58267522 0.29467618
		 0.36501694 0.57718593 0.29013357 0.37323669 0.57532853 0.28686631 0.34930572 0.64248431 0.20098564
		 0.37558395 0.58944261 0.29724893 -0.35395241 1.43148386 -0.12281902 -0.35395241 1.32717729 -0.1638118
		 -0.35395241 1.22442877 -0.11905512 -0.35395241 1.18346071 -0.015018926 -0.35395241 1.22835636 0.087670662
		 -0.35395241 1.33247852 0.12906232 -0.35395241 1.43525171 0.084239833 -0.35395253 1.47625244 -0.020091636
		 -0.39922485 1.43148565 -0.12280811 -0.39922485 1.327178 -0.16380951 -0.39922485 1.22442782 -0.1190559
		 -0.39922485 1.18346059 -0.015018924 -0.39922485 1.228356 0.087670669 -0.39922485 1.33249724 0.12902138
		 -0.39922485 1.43525851 0.08421547 -0.39922485 1.47625244 -0.02008394 -0.35395241 1.32984149 -0.01740028
		 -0.42583519 1.41191983 -0.10253607 -0.42583522 1.32984328 -0.017442709 -0.42583522 1.32768536 -0.13564894
		 -0.42583522 1.24471378 -0.099506117 -0.42583519 1.21163869 -0.015567362 -0.42583522 1.24789357 0.067357838
		 -0.42583522 1.33200312 0.10079629 -0.42583519 1.41497326 0.064636573 -0.42583519 1.44807315 -0.019579958
		 -0.37335742 0.43606031 -0.010059271 -0.37952173 0.43774718 -0.016450271 -0.3879424 0.44005162 -0.018789539
		 -0.39636308 0.44235602 -0.016450271 -0.40252736 0.44404292 -0.010059271 -0.4047837 0.44466043 -0.0013289929
		 -0.40252736 0.44404298 0.0074012754 -0.39636308 0.44235602 0.013792286 -0.38794234 0.44005162 0.016131558
		 -0.37952173 0.43774718 0.013792286 -0.37335742 0.43606031 0.0074012754 -0.37110114 0.43544281 -0.0013289929
		 -0.35808083 0.44020072 -0.017934961 -0.36980668 0.4434095 -0.03009139 -0.38582355 0.44779274 -0.034540929
		 -0.40184072 0.45217597 -0.03009139 -0.41356608 0.45538476 -0.017934961 -0.41785768 0.45655921 -0.0013289929
		 -0.41356587 0.45538476 0.015276976 -0.40184081 0.45217597 0.02743339 -0.38582397 0.44779274 0.031882945
		 -0.36980617 0.4434095 0.02743339 -0.35807922 0.44020069 0.015276976 -0.35378769 0.43902624 -0.0013289929
		 -0.34432924 0.44940019 -0.024185143 -0.36046767 0.45381668 -0.040917017 -0.38251582 0.45984972 -0.047041301
		 -0.40456477 0.46588272 -0.040917017 -0.42070216 0.47029921 -0.024185143 -0.4266077 0.47191575 -0.0013289929
		 -0.42070168 0.47029921 0.021527162 -0.40456426 0.46588272 0.038259033 -0.38251862 0.45984972 0.044383321
		 -0.36046693 0.45381668 0.038259033 -0.34432015 0.44940004 0.021527162 -0.33841634 0.44778356 -0.0013289929
		 -0.33341765 0.46275789 -0.028198013 -0.35239285 0.46794978 -0.047867507 -0.37832832 0.47504222 -0.055067025
		 -0.40425146 0.48213458 -0.047867507 -0.42321557 0.48732638 -0.028198013 -0.43015847 0.48922676 -0.0013289929
		 -0.42321655 0.48732638 0.025540028 -0.40424606 0.48213455 0.045209523 -0.37833095 0.47504222 0.052409049
		 -0.35239556 0.46794978 0.045209523 -0.33340576 0.46275771 0.025540028 -0.32646918 0.46085748 -0.0013289929
		 -0.32640785 0.47896603 -0.029580755 -0.34637824 0.48442528 -0.050262488 -0.37366238 0.49188292 -0.057832517
		 -0.40091035 0.49934018 -0.050262488 -0.42084712 0.50479913 -0.029580755 -0.42814797 0.50679731 -0.0013289929
		 -0.42084616 0.50479913 0.02692277 -0.40090534 0.49934006 0.047604494 -0.37365708 0.49188283 0.055174533
		 -0.34637275 0.48442519 0.047604494 -0.32640389 0.47896591 0.02692277 -0.3191053 0.47696781 -0.0013289929
		 -0.32403451 0.49643868 -0.028198013 -0.3430365 0.5016309 -0.047867507 -0.36897433 0.50872344 -0.055067025
		 -0.39488155 0.51581556 -0.047867507 -0.41384575 0.52100736 -0.028198013 -0.42078647 0.52290767 -0.0013289929
		 -0.41384372 0.5210073 0.025540028 -0.39488426 0.51581556 0.045209523;
	setAttr ".vrts[1494:1659]" -0.36896157 0.5087232 0.052409049 -0.34301415 0.5016306 0.045209523
		 -0.32402852 0.49643862 0.025540028 -0.31708226 0.49453819 -0.0013289929 -0.32653633 0.51346558 -0.024185143
		 -0.34269044 0.51788229 -0.040917017 -0.36474267 0.52391541 -0.047041301 -0.38678375 0.52994835 -0.040917017
		 -0.40291852 0.53436488 -0.024185143 -0.40882424 0.53598136 -0.0013289929 -0.40292081 0.53436488 0.021527162
		 -0.3867856 0.52994835 0.038259033 -0.36473098 0.52391523 0.044383321 -0.34267211 0.51788211 0.038259033
		 -0.32652742 0.51346552 0.021527162 -0.32062057 0.51184893 -0.0013289929 -0.3336513 0.5283798 -0.017934961
		 -0.34538162 0.53158867 -0.03009139 -0.36140129 0.53597194 -0.034540929 -0.37741685 0.54035515 -0.03009139
		 -0.38914174 0.5435639 -0.017934961 -0.39343497 0.54473847 -0.0013289929 -0.38914227 0.5435639 0.015276976
		 -0.37741417 0.54035515 0.02743339 -0.36139429 0.53597182 0.031882945 -0.34537387 0.53158855 0.02743339
		 -0.33364692 0.52837974 0.015276976 -0.32935685 0.52720535 -0.0013289929 -0.34467706 0.53972143 -0.010059271
		 -0.35084334 0.54140836 -0.016450271 -0.35926449 0.54371285 -0.018789539 -0.36768454 0.54601723 -0.016450271
		 -0.37385005 0.54770416 -0.010059271 -0.37610653 0.54832166 -0.0013289929 -0.37384784 0.5477041 0.0074012754
		 -0.36768261 0.54601723 0.013792286 -0.35926148 0.54371279 0.016131558 -0.35083988 0.54140836 0.013792286
		 -0.34467602 0.53972143 0.0074012754 -0.34242016 0.53910398 -0.0013289929 -0.38867232 0.43738425 -0.0013289929
		 -0.35852829 0.5463801 -0.0013289929 0.36487386 0.5476557 0.2636922 0.3672348 0.54770243 0.25967672
		 0.36606598 0.54765773 0.25516757 0.36205205 0.54754794 0.2528061 0.35754424 0.54743725 0.25397572
		 0.35518324 0.54739058 0.25799122 0.35635209 0.54743528 0.26250041 0.36036605 0.54754508 0.26486182
		 0.36563003 0.55318022 0.26486167 0.36856806 0.55323833 0.25986466 0.36711347 0.55318278 0.2542533
		 0.36211821 0.55304605 0.25131449 0.35650843 0.5529083 0.25276998 0.35357034 0.55285025 0.25776711
		 0.35502493 0.5529058 0.26337853 0.36002025 0.55304247 0.26631719 0.3660861 0.55319381 0.26546633
		 0.36931792 0.55325776 0.25996968 0.36771774 0.55319673 0.2537972 0.36222297 0.55304641 0.25056455
		 0.35605225 0.55289483 0.25216553 0.35282037 0.55283087 0.25766233 0.35442048 0.55289197 0.26383492
		 0.35991532 0.55304229 0.2670674 0.36604482 0.55481714 0.26546094 0.36927661 0.55488116 0.25996429
		 0.36767644 0.55482012 0.25379187 0.36218166 0.55466974 0.25055927 0.35601097 0.55451822 0.25216022
		 0.35277903 0.55445427 0.25765696 0.35437921 0.55451536 0.26382947 0.35987407 0.55466563 0.26706198
		 0.36529216 0.55479485 0.26446351 0.36803925 0.55484921 0.25979137 0.3666791 0.55479735 0.25454485
		 0.36200851 0.55466956 0.25179717 0.35676342 0.55454069 0.25315794 0.35401627 0.55448633 0.25783008
		 0.35537636 0.55453831 0.26307681 0.36004704 0.55466604 0.26582441 0.36472476 0.55798703 0.26380938
		 0.36715904 0.55803514 0.25966927 0.36595383 0.55798912 0.25502023 0.36181518 0.55787587 0.2525855
		 0.35716748 0.55776173 0.25379127 0.35473311 0.55771357 0.25793135 0.35593832 0.55775964 0.26258051
		 0.36007699 0.55787289 0.2650153 0.36252174 0.55960906 0.26094067 0.36356449 0.55962968 0.25916722
		 0.3630482 0.55961007 0.25717568 0.36127537 0.55956149 0.25613266 0.3592844 0.55951256 0.25664917
		 0.35824165 0.55949193 0.25842267 0.35875788 0.55951166 0.26041424 0.36053076 0.55956018 0.26145723
		 0.36193928 0.56838173 0.26043561 0.36275074 0.56839776 0.25905561 0.362349 0.56838238 0.25750592
		 0.36096942 0.56834471 0.25669423 0.35942018 0.56830662 0.25709617 0.35860878 0.56829053 0.25847629
		 0.35901046 0.56830591 0.26002601 0.36039001 0.5683437 0.26083755 0.36067972 0.56834418 0.25876594
		 0.30850762 0.35693151 0.22605033 0.33256656 0.35760936 0.31668785 0.30814531 0.36537713 0.22578871
		 0.33217713 0.3661212 0.31689605 0.39912331 0.3674089 0.20174047 0.42316577 0.36813426 0.29281324
		 0.39897847 0.35887012 0.2019581 0.42307338 0.35953808 0.29257396 0.4030771 0.34398997 0.19525367
		 0.43012315 0.3447116 0.29650533 0.32901189 0.34259364 0.32352486 0.3020367 0.34188247 0.22228411
		 0.32991734 0.35753524 0.30672362 0.32939819 0.36603779 0.30640543 0.42041236 0.36807087 0.28235549
		 0.42043823 0.359478 0.28263327 0.4271515 0.34462929 0.28536737 0.3260504 0.34251332 0.31238928
		 0.31128651 0.35700515 0.23649487 0.31091014 0.36546636 0.23629127 0.40191239 0.36749789 0.21223995
		 0.40179771 0.35895568 0.21241942 0.40622491 0.34407601 0.2069326 0.30515957 0.34195378 0.23393945
		 0.31875053 0.35714829 0.22332002 0.31857914 0.3656145 0.22303842 0.32135782 0.36569333 0.23352084
		 0.33982718 0.36627561 0.30365634 0.34261087 0.36635506 0.31413946 0.3427946 0.35783401 0.31397319
		 0.34044215 0.34283841 0.32047889 0.33749521 0.34275284 0.30933243 0.31657827 0.34220555 0.23090732
		 0.31347957 0.34211445 0.21921396 0.41297391 0.36792699 0.29554549 0.41022283 0.36786404 0.28508842
		 0.39176747 0.36728314 0.21495384 0.38894403 0.36718595 0.20444344 0.38920003 0.35866618 0.20457926
		 0.39214599 0.34376556 0.19819041 0.39523911 0.34384397 0.20986164 0.41618496 0.34439984 0.28829896
		 0.41917351 0.34450462 0.29947522 0.41327515 0.35935745 0.29523888 0.29620394 0.49201983 0.21996027
		 0.32360885 0.49303243 0.32539421 0.40158957 0.49456668 0.19252893 0.42899734 0.49559152 0.29798442
		 0.30345464 0.49845132 0.22429125 0.32779062 0.49935666 0.31796303 0.42142266 0.50163507 0.29362181
		 0.39708632 0.50072145 0.19993524 0.3277497 0.53079993 0.23992538 0.34123611 0.53130937 0.2918998
		 0.3955 0.5326367 0.27780873 0.38201496 0.53212494 0.22583006 0.33128893 0.53821176 0.24199513
		 0.3432824 0.53866827 0.28824714 0.39157405 0.53985167 0.27571243;
	setAttr ".vrts[1660:1825]" 0.37958026 0.53939474 0.22945976 0.33060727 0.54826856 0.24172363
		 0.34276769 0.54873252 0.28863105 0.39174312 0.54993302 0.27591982 0.37958094 0.54946899 0.22901243
		 0.39639014 0.4944635 0.20138517 0.42014465 0.49535069 0.2927779 0.32880691 0.49313495 0.31653702
		 0.30505687 0.49225658 0.22515951 0.39659488 0.48446333 0.20136368 0.42041385 0.48531941 0.29269382
		 0.32914647 0.48314562 0.31652018 0.30533543 0.48229706 0.22520247 0.29935616 0.49213523 0.23210491
		 0.30624688 0.49855509 0.23508283 0.32929623 0.53086072 0.24591774 0.33266935 0.53826487 0.24732448
		 0.33200765 0.5483222 0.24712789 0.38098198 0.54952276 0.23441687 0.38096172 0.53944814 0.23478962
		 0.38356751 0.53218794 0.23182555 0.39989659 0.50083393 0.21074043 0.40475354 0.49468926 0.20468514
		 0.39912629 0.49456349 0.21190998 0.39933544 0.48455676 0.21187627 0.3080796 0.48239458 0.23572199
		 0.30779231 0.4923574 0.23568584 0.32044566 0.49291679 0.31325045 0.32497558 0.49925506 0.30717778
		 0.33967614 0.53125304 0.28591704 0.34190032 0.53861582 0.28291908 0.34136695 0.54867899 0.28322694
		 0.39034206 0.54987955 0.27051583 0.39019164 0.53979993 0.27038571 0.39394227 0.53258389 0.27183205
		 0.41861615 0.50154209 0.28285101 0.42583987 0.49547854 0.28584474 0.41741014 0.49524379 0.28224069
		 0.41767204 0.4852145 0.28216088 0.32641304 0.48304534 0.3059946 0.3260794 0.49303147 0.30600503
		 0.33962405 0.48339131 0.31377986 0.33689359 0.4832893 0.30325091 0.31855309 0.48264271 0.23298654
		 0.31580198 0.48254561 0.22246853 0.31553054 0.49250942 0.22243246 0.30828589 0.4923107 0.21681246
		 0.31418517 0.49871141 0.22149819 0.33396772 0.53095412 0.23831341 0.33682668 0.53834784 0.24055819
		 0.33622369 0.54840642 0.24026607 0.33762389 0.54846019 0.24567059 0.34698313 0.54881704 0.28176987
		 0.34838447 0.54887033 0.28717348 0.34881997 0.53880447 0.28681049 0.34744969 0.53146583 0.29029232
		 0.33850762 0.49962455 0.31518546 0.33568269 0.49332914 0.32225764 0.33928439 0.49338788 0.31380966
		 0.41019005 0.48505071 0.29532006 0.4074415 0.48496097 0.28481495 0.38910297 0.48431483 0.21455124
		 0.3863636 0.48422256 0.20404053 0.38614818 0.4942165 0.20405206 0.38977471 0.4942838 0.19560958
		 0.38659012 0.50047106 0.20267366 0.37592873 0.53197902 0.22741562 0.37416467 0.53926235 0.23086597
		 0.37408885 0.54933447 0.2304381 0.37548974 0.54938841 0.23584272 0.38484946 0.54974538 0.27194217
		 0.38625085 0.54979855 0.27734554 0.38615775 0.53971976 0.27711967 0.38941112 0.53249174 0.2793963
		 0.41091672 0.50138849 0.29636809 0.4171747 0.49531019 0.30106872 0.40990648 0.4950918 0.29542318
		 0.25709569 0.72026968 0.14109486 0.28362647 0.7341311 0.13761124 0.30499002 0.74157679 0.12815493
		 0.31300235 0.74146235 0.10946563 0.33705014 0.74286753 0.096274778 0.34460866 0.73658597 0.076971665
		 0.34533381 0.72635806 0.057891324 0.33915493 0.71318418 0.040901728 0.32667693 0.69835436 0.027665816
		 0.30912095 0.68332016 0.01947918 0.28372824 0.66719061 0.017689489 0.15733452 0.86960465 0.071443863
		 0.19708496 0.88962501 0.064885862 0.23151444 0.90205443 0.050415769 0.25026509 0.90438271 0.034586303
		 0.26434803 0.90180337 0.014951396 0.2723847 0.89456922 -0.0065669809 0.27358785 0.88338828 -0.027862482
		 0.2678403 0.86935508 -0.046850581 0.25570458 0.85384309 -0.061672349 0.22707683 0.82985079 -0.07408531
		 0.19046791 0.80356926 -0.082083918 0.15830311 0.87532991 0.080503181 0.20374773 0.89926076 0.074871831
		 0.23813349 0.9096666 0.056826454 0.2582784 0.91178298 0.039131243 0.2735011 0.90858042 0.017165368
		 0.28231114 0.90037268 -0.0069209035 0.28384614 0.88796258 -0.030769737 0.27795589 0.87256545 -0.05204691
		 0.26521719 0.85568833 -0.068669394 0.23818794 0.83062088 -0.084711276 0.19514097 0.80124247 -0.091387436
		 0.25783908 0.72519791 0.1492776 0.288059 0.74054122 0.14451222 0.31090862 0.7482599 0.13395965
		 0.33067051 0.75114006 0.11804002 0.34541032 0.74889994 0.098311625 0.35368493 0.74175894 0.076705448
		 0.35468483 0.73041558 0.055336867 0.34831172 0.71598077 0.036297191 0.33518967 0.69986731 0.021450292
		 0.31660309 0.6836524 0.012249526 0.28802603 0.66503477 0.0094022285 0.30575877 0.84886909 -0.041741792
		 0.29299882 0.82898957 -0.059293352 0.25150788 0.79576159 -0.06894619 0.21724567 0.76859611 -0.080812193
		 0.21095146 0.77055824 -0.070515506 0.22486435 0.78507203 -0.059374951 0.23587057 0.79795265 -0.049150668
		 0.24992733 0.81497335 -0.032584131 0.25608543 0.83036727 -0.011598835 0.2546896 0.84268218 0.011931836
		 0.24587673 0.85071337 0.035704385 0.23050928 0.85367393 0.057391949 0.20782968 0.85017258 0.074857257
		 0.19344527 0.84769082 0.086209424 0.17472956 0.84274912 0.097323358 0.1768602 0.84957677 0.10734543
		 0.21633053 0.86587036 0.094052508 0.2630752 0.88862795 0.07936164 0.28401795 0.89219892 0.058997046
		 0.29999253 0.88945204 0.034205247 0.30943567 0.88065618 0.0074133687 0.31142235 0.86667228 -0.018756203
		 0.24439825 0.73730117 -0.062749341 0.23780155 0.73990649 -0.051424414 0.25160921 0.74988228 -0.048294794
		 0.26217163 0.76295793 -0.036782507 0.27627113 0.78124285 -0.018464407 0.28246832 0.797957 0.0048420792
		 0.28070059 0.81149554 0.030959375 0.27114055 0.82053345 0.057330791 0.25472441 0.82418585 0.0813751
		 0.2317605 0.82146293 0.10073033 0.2167459 0.81936544 0.11324889 0.20138195 0.81249136 0.11733045
		 0.20348197 0.81966013 0.12856939 0.23566404 0.83546752 0.12230499 0.27845806 0.85429728 0.10680762
		 0.3007009 0.85756707 0.084293596 0.31778762 0.85407442 0.056837428 0.32804534 0.84416091 0.027126962
		 0.33047038 0.82879746 -0.0019297942 0.32482502 0.8094874 -0.02748847 0.31166202 0.78812128 -0.04704712
		 0.27469763 0.75767297 -0.05856207 -0.065969855 0.43821025 0.23671274;
	setAttr ".vrts[1826:1923]" -0.00060643733 0.41397151 0.25298956 0.064756982 0.43821025 0.23671274
		 -0.092528887 0.48781541 0.23671274 -0.00060643733 0.48423758 0.25298956 0.091316029 0.48781541 0.23671274
		 -0.092528887 0.48781541 0.2225156 -0.00060643733 0.48423758 0.23879248 0.091316029 0.48781541 0.2225156
		 -0.065969855 0.43821025 0.2225156 -0.00060643733 0.41397151 0.23879248 0.064756982 0.43821025 0.2225156
		 -0.00060643733 0.4494727 0.25298956 -0.079808056 0.46502316 0.23671274 -0.079808056 0.46502316 0.2225156
		 0.078595176 0.46502316 0.2225156 0.078595176 0.46502316 0.23671274 0.36751896 1.43540525 0.083640821
		 0.36751896 1.33270478 0.12853689 0.36751896 1.22832859 0.087670691 0.36751896 1.18342555 -0.015018804
		 0.36751896 1.22429514 -0.11937757 0.36751896 1.32699001 -0.16427347 0.36751896 1.43135679 -0.12340737
		 0.36751896 1.47626615 -0.020717852 0.41292438 1.43528509 0.083651707 0.41279149 1.33269978 0.12853691
		 0.4127914 1.22832298 0.087670714 0.41279155 1.18342483 -0.015018802 0.4127914 1.22429514 -0.11937757
		 0.41279149 1.32699084 -0.16427349 0.41279155 1.4313612 -0.12340739 0.41284055 1.47622716 -0.020713549
		 0.36751896 1.32984543 -0.017868325 0.43945625 1.41502929 0.064110808 0.43940181 1.32984388 -0.017868318
		 0.43940181 1.33214355 0.10035866 0.43940175 1.24786043 0.067357957 0.43940166 1.21160591 -0.015567239
		 0.43940175 1.24460971 -0.099840291 0.43940181 1.3275404 -0.13609535 0.43940181 1.41182566 -0.10309464
		 0.4394038 1.44808972 -0.020169184 0.26205304 0.42598781 -0.009347029 0.25340205 0.4248122 -0.09540344
		 0.20002338 0.4237116 -0.18416622 0.00099892891 0.42796227 -0.20838146 -0.20123634 0.4237116 -0.18416622
		 -0.25458375 0.4248122 -0.09540344 -0.26322472 0.42598781 -0.009347029 -0.2315999 0.42598781 0.15364221
		 -0.19183199 0.42598781 0.16107769 0.19061913 0.42598781 0.16107769 0.23038703 0.42598781 0.15364221
		 0.26317534 0.48297554 -0.009347029 0.26161334 0.48324105 -0.096037142 0.20002335 0.48334983 -0.18442133
		 -0.00060643733 0.48229158 -0.19763885 -0.20123634 0.48334983 -0.18442133 -0.262795 0.48324105 -0.096037142
		 -0.26434705 0.48297554 -0.009347029 -0.2315999 0.48297554 0.15364221 -0.19183199 0.48297554 0.17515583
		 0.19061913 0.48297554 0.17515583 0.23038703 0.48297554 0.15364221 0.26323119 0.4823069 -0.009347029
		 0.26170707 0.48403305 -0.10118387 0.20622852 0.48525178 -0.19315527 -0.00060640508 0.48100081 -0.20762567
		 -0.20744129 0.48525178 -0.19315527 -0.26418525 0.4839969 -0.10119358 -0.26569828 0.48222053 -0.009347029
		 -0.23121631 0.48109969 0.15888 -0.19904813 0.48297554 0.1842279 0.19783524 0.48297554 0.1842279
		 0.23037112 0.48127687 0.15888 0.27182272 0.4257521 -0.009347029 0.26292124 0.42518821 -0.10066221
		 0.20622852 0.42561322 -0.19290011 0.00099903683 0.42667195 -0.21836826 -0.20744124 0.42561322 -0.19290012
		 -0.26625127 0.42516896 -0.10066742 -0.27514848 0.42575893 -0.009347029 -0.24079941 0.42478192 0.15888
		 -0.19904804 0.42598781 0.17014985 0.19783518 0.42598781 0.17014985 0.23917827 0.42485452 0.15888
		 -0.069429599 0.48297554 0.23219733 -0.066868439 0.48297554 0.22197096 -0.066868454 0.42598781 0.20789291
		 -0.069429547 0.42598781 0.21811934 0.065005988 0.48297554 0.23236631 0.062678531 0.48297554 0.22211714
		 0.062678531 0.42598781 0.20803913 0.065005958 0.42598781 0.21828833 -0.00059887284 0.49012432 0.23490572
		 -0.00054066797 0.48084128 0.22606011 -0.00054067338 0.41883901 0.22983013 -0.00059886195 0.42812237 0.23867574;
	setAttr -size 3781 ".edge";
	setAttr ".edge[0:165]"  0 37 0 2 38 0 4 35 0 6 36 0 0 2 1 1 3 1 2 4 1 3 5 1
		 4 6 1 5 7 1 6 0 1 7 1 1 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0 6 12 0
		 0 13 0 12 13 0 2 14 0 13 14 0 4 15 0 14 15 0 15 12 0 2 16 1 3 17 1 16 39 0 5 18 1
		 17 18 0 4 19 1 19 34 0 16 19 0 16 20 0 17 21 0 20 32 1 18 22 0 21 22 1 19 23 0 23 33 1
		 20 23 1 24 21 1 25 22 1 26 18 0 25 26 1 27 5 0 26 27 1 28 7 0 27 28 1 29 1 0 28 29 1
		 30 3 0 29 30 1 31 17 0 30 31 1 31 24 1 32 40 1 33 41 1 34 42 0 33 34 1 35 43 0 34 35 1
		 36 44 0 35 36 1 37 45 0 36 37 1 38 46 0 37 38 1 39 47 0 38 39 1 39 32 1 40 24 1 41 25 1
		 42 26 0 41 42 1 43 27 0 42 43 1 44 28 0 43 44 1 45 29 0 44 45 1 46 30 0 45 46 1 47 31 0
		 46 47 1 47 40 1 20 48 0 32 49 1 48 49 0 33 50 1 49 50 1 23 51 0 51 50 0 48 51 0 24 52 1
		 21 53 0 52 53 0 22 54 0 53 54 0 25 55 1 55 54 0 52 55 1 40 56 1 49 56 0 41 57 1 56 57 1
		 50 57 0 56 52 0 57 55 0 58 59 1 59 118 0 118 119 1 58 119 0 59 60 1 60 117 0 117 118 1
		 60 61 1 61 116 0 116 117 1 61 62 1 62 115 0 115 116 1 62 63 1 63 114 0 114 115 1
		 63 64 1 64 121 0 121 114 1 64 65 1 65 120 0 120 121 1 65 58 1 119 120 1 142 146 1
		 146 140 1 141 140 1 142 141 1 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0
		 73 66 0 74 75 1 74 71 0 75 70 0 75 76 1 76 69 0 76 77 1 77 68 0 77 78 1 78 67 0 78 79 1
		 79 66 0 79 80 1 80 73 0 80 81 1 81 72 0 81 74 1 82 83 1 82 74 0;
	setAttr ".edge[166:331]" 83 75 0 83 84 1 84 76 0 84 85 1 85 77 0 85 86 1 86 78 0
		 86 87 1 87 79 0 87 88 1 88 80 0 88 89 1 89 81 0 89 82 1 90 91 1 90 82 0 91 83 0 91 92 1
		 92 84 0 92 93 1 93 85 0 93 94 1 94 86 0 94 95 1 95 87 0 95 96 1 96 88 0 96 97 1 97 89 0
		 97 90 1 98 99 1 98 147 0 147 148 1 99 148 0 99 100 1 148 149 1 100 149 0 100 101 1
		 149 150 1 101 150 0 101 102 1 150 151 1 102 151 0 102 103 1 151 152 1 103 152 0 103 104 1
		 152 153 1 104 153 0 104 105 1 153 154 1 105 154 0 105 98 1 154 147 1 106 107 1 106 98 0
		 107 99 0 107 108 1 108 100 0 108 109 1 109 101 0 109 110 1 110 102 0 110 111 1 111 103 0
		 111 112 1 112 104 0 112 113 1 113 105 0 113 106 1 114 106 0 115 107 0 116 108 0 117 109 0
		 118 110 0 119 111 0 120 112 0 121 113 0 65 122 0 122 123 1 58 123 0 64 124 0 124 122 1
		 63 125 0 125 124 1 62 126 0 126 125 1 61 127 0 127 126 1 60 128 0 128 127 1 59 129 0
		 129 128 1 123 129 1 122 130 1 130 131 1 123 131 1 124 132 1 132 130 1 125 133 1 133 132 1
		 126 134 1 134 133 1 127 135 1 135 134 1 128 136 1 136 135 1 129 137 1 137 136 1 131 137 1
		 130 138 1 138 139 1 131 139 1 132 140 1 140 138 1 133 141 1 134 142 1 135 143 1 143 142 1
		 136 144 1 144 143 1 137 145 1 145 144 1 139 145 1 146 139 1 144 146 1 147 90 0 148 91 0
		 149 92 0 150 93 0 151 94 0 152 95 0 153 96 0 154 97 0 155 156 1 156 157 1 157 158 1
		 158 159 1 159 160 1 160 161 1 161 162 1 162 155 1 163 164 0 164 165 0 165 166 0 166 167 0
		 167 168 0 168 169 0 169 170 0 170 163 0 155 163 0 156 164 0 157 165 0 158 166 0 159 167 0
		 160 168 0 161 169 0 162 170 0 162 171 1 155 172 1 171 172 1 161 173 1 173 171 1 160 174 1
		 174 173 1 159 175 1;
	setAttr ".edge[332:497]" 175 174 1 158 176 1 176 175 1 157 177 1 177 176 1
		 156 178 1 178 177 1 172 178 1 171 179 0 172 180 0 179 180 0 173 181 0 181 179 0 174 182 0
		 182 181 0 175 183 0 183 182 0 176 184 0 184 183 0 177 185 0 185 184 0 178 186 0 186 185 0
		 180 186 0 244 245 1 245 198 0 198 199 0 244 199 1 243 244 1 199 200 0 243 200 1 242 243 0
		 200 201 0 242 201 1 241 242 0 201 202 0 241 202 1 240 241 0 202 203 0 240 203 1 239 240 0
		 203 204 0 239 204 1 238 239 0 204 205 0 238 205 1 237 238 0 205 206 0 237 206 1 236 237 1
		 206 207 0 236 207 1 235 236 1 207 208 0 235 208 0 198 209 0 209 210 0 199 210 1 210 211 0
		 200 211 1 211 212 0 201 212 1 212 213 0 202 213 1 213 214 0 203 214 1 214 215 0 204 215 1
		 215 216 0 205 216 1 216 217 0 206 217 1 217 218 0 207 218 1 218 219 0 208 219 0 209 246 0
		 246 247 1 210 247 1 247 248 1 211 248 1 248 249 1 212 249 1 249 250 1 213 250 1 250 251 1
		 214 251 1 251 252 1 215 252 1 252 231 1 216 231 1 231 232 1 217 232 1 232 233 1 218 233 1
		 233 234 1 219 234 0 220 221 0 220 187 0 187 188 0 221 188 1 221 222 0 188 189 0 222 189 1
		 222 223 0 189 190 0 223 190 1 223 224 0 190 191 0 224 191 1 224 225 0 191 192 0 225 192 1
		 225 226 0 192 193 0 226 193 1 226 227 0 193 194 0 227 194 1 227 228 0 194 195 0 228 195 1
		 228 229 0 195 196 0 229 196 1 229 230 0 196 197 0 230 197 0 245 246 1 234 235 1 231 272 1
		 272 273 1 232 273 1 273 274 1 233 274 1 274 253 1 234 253 0 254 235 0 253 254 1 254 255 1
		 255 236 1 255 256 1 256 237 1 256 257 1 257 238 1 257 258 1 258 239 1 258 259 1 259 240 1
		 259 260 1 260 241 1 260 261 1 261 242 1 261 262 1 262 243 1 262 263 1 263 244 1 263 264 1
		 264 245 0 264 265 1 246 265 0 265 266 1 247 266 1 266 267 1 248 267 1 267 268 1;
	setAttr ".edge[498:663]" 249 268 1 268 269 1 250 269 1 269 270 1 251 270 1
		 270 271 1 252 271 1 271 272 1 253 230 0 197 254 0 196 255 1 195 256 1 194 257 1 193 258 1
		 192 259 1 191 260 1 190 261 1 189 262 1 188 263 1 187 264 0 265 220 0 266 221 1 267 222 1
		 268 223 1 269 224 1 270 225 1 271 226 1 272 227 1 273 228 1 274 229 1 275 276 1 276 277 1
		 277 278 1 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1
		 286 275 1 287 288 1 288 289 1 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1
		 295 296 1 296 297 1 297 298 1 298 287 1 299 300 1 300 301 1 301 302 1 302 303 1 303 304 1
		 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 299 1 311 312 1 312 313 1
		 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 319 320 1 320 321 1 321 322 1
		 322 311 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1
		 331 332 1 332 333 1 333 334 1 334 323 1 335 336 1 336 337 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 335 1 347 348 1 348 349 1
		 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1
		 358 347 1 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1
		 367 368 1 368 369 1 369 370 1 370 359 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1
		 376 377 1 377 378 1 378 379 1 379 380 1 380 381 1 381 382 1 382 371 1 275 287 1 276 288 1
		 277 289 1 278 290 1 279 291 1 280 292 1 281 293 1 282 294 1 283 295 1 284 296 1 285 297 1
		 286 298 1 287 299 1 288 300 1 289 301 1 290 302 1 291 303 1 292 304 1 293 305 1 294 306 1
		 295 307 1 296 308 1 297 309 1 298 310 1 299 311 1 300 312 1 301 313 1 302 314 1;
	setAttr ".edge[664:829]" 303 315 1 304 316 1 305 317 1 306 318 1 307 319 1
		 308 320 1 309 321 1 310 322 1 311 323 1 312 324 1 313 325 1 314 326 1 315 327 1 316 328 1
		 317 329 1 318 330 1 319 331 1 320 332 1 321 333 1 322 334 1 323 335 1 324 336 1 325 337 1
		 326 338 1 327 339 1 328 340 1 329 341 1 330 342 1 331 343 1 332 344 1 333 345 1 334 346 1
		 335 347 1 336 348 1 337 349 1 338 350 1 339 351 1 340 352 1 341 353 1 342 354 1 343 355 1
		 344 356 1 345 357 1 346 358 1 347 359 1 348 360 1 349 361 1 350 362 1 351 363 1 352 364 1
		 353 365 1 354 366 1 355 367 1 356 368 1 357 369 1 358 370 1 359 371 1 360 372 1 361 373 1
		 362 374 1 363 375 1 364 376 1 365 377 1 366 378 1 367 379 1 368 380 1 369 381 1 370 382 1
		 383 275 1 383 276 1 383 277 1 383 278 1 383 279 1 383 280 1 383 281 1 383 282 1 383 283 1
		 383 284 1 383 285 1 383 286 1 371 384 1 372 384 1 373 384 1 374 384 1 375 384 1 376 384 1
		 377 384 1 378 384 1 379 384 1 380 384 1 381 384 1 382 384 1 387 385 1 388 386 1 385 399 0
		 388 402 0 397 403 0 389 393 0 390 391 0 394 391 0 394 407 1 398 404 1 393 394 1 389 392 0
		 397 398 1 399 405 0 398 399 1 399 400 1 401 395 1 402 408 0 402 397 1 385 414 0 396 409 1
		 387 413 0 395 412 1 386 410 0 388 411 0 403 390 0 404 393 1 403 404 1 405 389 0 404 405 1
		 406 392 0 405 406 1 408 391 0 408 403 1 400 406 0 407 401 1 387 400 0 396 398 1 386 397 0
		 409 416 1 410 419 0 410 411 1 411 412 1 412 413 1 413 414 1 414 415 0 413 417 0 417 415 0
		 412 418 0 418 416 1 411 420 0 420 419 0 392 394 0 406 407 1 400 401 1 387 395 1 417 418 0
		 415 416 0 414 409 1 385 396 1 407 408 1 401 402 1 395 388 1 418 420 0 416 419 0 409 410 1
		 396 386 1 393 390 0 421 422 0 422 423 0 426 427 1 427 428 1 429 430 1 430 431 1;
	setAttr ".edge[830:995]" 432 433 1 433 434 1 435 436 1 436 437 1 438 439 0
		 439 440 0 421 469 0 422 476 1 423 475 0 424 445 0 425 451 0 426 429 0 427 430 1 428 431 0
		 429 432 0 430 433 1 431 434 0 432 447 0 433 448 1 434 449 0 435 455 0 436 456 1 437 457 0
		 438 441 0 440 442 0 441 421 0 442 423 0 437 443 1 443 425 1 442 474 1 443 450 1 435 444 1
		 444 424 1 441 470 1 444 446 1 445 426 0 446 429 1 445 446 1 447 435 0 446 447 1 448 436 1
		 447 448 1 449 437 0 448 449 1 450 431 1 449 450 1 451 428 0 450 451 1 452 427 1 451 452 1
		 452 445 1 453 424 0 454 444 1 453 454 1 455 471 0 454 455 1 456 472 1 455 456 1 457 473 0
		 456 457 1 458 443 1 457 458 1 459 425 0 458 459 1 459 460 1 460 453 1 424 461 0 452 462 1
		 445 463 0 462 463 0 461 463 0 425 464 0 451 465 0 464 465 0 465 462 0 459 466 0 460 467 1
		 466 467 0 466 464 0 453 468 0 467 468 0 468 461 0 469 453 0 470 454 1 469 470 1 471 438 0
		 470 471 1 472 439 1 471 472 1 473 440 0 472 473 1 474 458 1 473 474 1 475 459 0 474 475 1
		 476 460 1 475 476 0 476 469 0 438 477 1 439 478 1 477 478 0 441 479 1 477 479 0 440 480 1
		 478 480 0 442 481 1 480 481 0 422 482 1 421 483 1 483 482 0 479 483 0 423 484 1 481 484 0
		 482 484 0 486 540 0 488 537 1 485 487 0 486 488 0 487 489 1 490 485 1 487 492 0 486 491 0
		 491 541 1 489 493 0 492 493 0 488 494 0 494 536 1 491 494 1 492 496 0 491 495 0 495 542 1
		 493 497 0 496 497 1 494 498 0 498 535 1 495 498 1 496 500 0 495 499 0 499 543 1 497 501 0
		 500 501 1 498 502 0 502 534 1 499 502 1 500 504 0 499 503 0 503 544 1 501 505 0 504 505 1
		 502 506 0 506 533 1 503 506 1 504 508 0 503 507 0 507 545 1 505 509 0 508 509 1 506 510 0
		 510 532 1 507 510 1 508 513 0 538 522 0 540 524 1 507 511 0 511 546 0 510 512 0;
	setAttr ".edge[996:1161]" 512 531 0 511 512 0 546 530 0 509 514 0 513 514 0
		 515 514 0 515 516 1 516 509 1 516 517 1 517 505 1 517 518 1 518 501 1 518 519 1 519 497 1
		 519 520 1 520 493 1 520 521 1 521 489 1 522 490 0 523 485 0 522 523 1 524 487 1 523 524 1
		 524 525 1 525 492 1 525 526 1 526 496 1 526 527 1 527 500 1 527 528 1 528 504 1 528 529 1
		 529 508 1 529 530 1 530 513 0 530 515 1 531 515 0 532 516 1 533 517 1 532 533 0 534 518 1
		 533 534 0 535 519 1 534 535 0 536 520 1 535 536 1 537 521 1 536 537 1 539 523 0 538 539 1
		 539 540 1 541 525 1 540 541 1 542 526 1 541 542 1 543 527 1 542 543 0 544 528 1 543 544 0
		 545 529 1 544 545 0 545 546 1 546 531 1 531 532 1 548 609 0 550 606 1 547 549 0 548 550 0
		 549 551 1 552 547 1 551 555 0 548 553 0 549 554 0 553 610 1 554 555 0 550 556 0 556 605 1
		 553 556 1 555 559 0 553 557 0 554 558 0 557 611 1 558 559 1 556 560 0 560 604 1 557 560 1
		 559 563 0 557 561 0 558 562 0 561 612 1 562 563 1 560 564 0 564 603 1 561 564 1 563 567 0
		 561 565 0 562 566 0 565 613 1 566 567 1 564 568 0 568 602 1 565 568 1 567 571 0 565 569 0
		 566 570 0 569 614 1 570 571 1 568 572 0 572 601 1 569 572 1 569 573 0 570 574 0 573 615 1
		 571 575 0 574 575 1 572 576 0 576 600 1 573 576 1 577 616 0 578 599 0 577 578 0 579 580 0
		 599 581 0 581 580 0 582 575 1 583 571 1 582 583 1 584 567 1 583 584 1 585 563 1 584 585 1
		 586 559 1 585 586 1 587 555 1 586 587 1 588 551 1 587 588 1 589 552 0 590 547 0 589 590 1
		 591 549 1 590 591 1 592 554 1 591 592 1 593 558 1 592 593 1 594 562 1 593 594 1 595 566 1
		 594 595 1 596 570 1 595 596 1 597 574 1 596 597 1 598 579 0 598 581 1 600 582 1 599 600 1
		 601 583 1 600 601 1 602 584 1 601 602 0 603 585 1 602 603 0 604 586 1 603 604 0;
	setAttr ".edge[1162:1327]" 605 587 1 604 605 1 606 588 1 605 606 1 607 589 0
		 608 590 0 607 608 1 609 591 1 608 609 1 610 592 1 609 610 1 611 593 1 610 611 1 612 594 1
		 611 612 0 613 595 1 612 613 0 614 596 1 613 614 0 615 597 1 614 615 1 616 598 0 616 599 1
		 581 582 1 575 580 0 574 579 0 597 598 1 615 616 1 573 577 0 576 578 0 488 617 0 538 618 0
		 539 619 0 486 620 0 617 550 0 618 607 0 617 618 1 619 608 0 618 619 1 620 548 0 619 620 1
		 620 617 1 551 552 0 588 589 1 606 607 1 537 538 1 521 522 1 489 490 0 621 640 1 623 637 0
		 625 638 0 627 639 1 621 715 1 622 709 1 623 661 1 624 667 1 625 682 1 626 688 1 627 650 1
		 628 654 1 629 645 0 630 646 0 629 670 1 631 647 0 630 685 1 632 648 0 631 652 1 632 712 1
		 633 629 0 634 630 0 633 671 1 635 631 0 634 684 1 636 632 0 635 651 0 636 713 1 637 633 0
		 638 634 0 637 672 1 639 635 1 638 683 1 640 636 1 640 714 1 641 624 0 642 626 0 641 668 1
		 643 628 1 642 687 1 644 622 1 644 710 1 645 641 0 646 642 0 645 669 1 647 643 1 646 686 1
		 648 644 1 647 653 0 648 711 1 649 625 1 650 662 1 649 681 1 651 663 0 652 664 1 651 652 1
		 653 665 0 652 653 1 654 666 1 655 626 1 654 725 1 656 642 1 655 656 1 657 646 1 656 657 1
		 658 630 1 657 658 1 659 634 1 658 659 1 660 638 1 659 660 1 660 649 1 661 649 1 662 621 1
		 661 680 1 663 636 0 664 632 1 663 664 1 665 648 0 664 665 1 666 622 1 667 655 1 666 726 1
		 668 656 1 667 668 1 669 657 1 668 669 1 670 658 1 669 670 1 671 659 1 670 671 1 672 660 1
		 671 672 1 672 661 1 673 624 1 674 641 1 673 674 1 675 645 1 674 675 1 676 629 1 675 676 1
		 677 633 1 676 677 1 678 637 1 677 678 1 679 623 1 678 679 1 680 698 1 679 680 1 681 699 1
		 680 681 1 682 700 1 681 682 1 683 701 1 682 683 1 684 702 1 683 684 1 685 703 1;
	setAttr ".edge[1328:1493]" 684 685 1 686 704 1 685 686 1 687 705 1 686 687 1
		 688 706 1 687 688 1 689 655 1 688 689 1 690 667 1 689 690 1 690 673 1 691 673 1 692 674 1
		 691 692 1 693 675 1 692 693 1 694 676 1 693 694 1 695 677 1 694 695 1 696 678 1 695 696 1
		 697 679 1 696 697 1 698 716 1 697 698 1 699 717 1 698 699 1 700 718 1 699 700 1 701 719 1
		 700 701 1 702 720 1 701 702 1 703 721 1 702 703 1 704 722 1 703 704 1 705 723 1 704 705 1
		 706 724 1 705 706 1 707 689 1 706 707 1 708 690 1 707 708 1 708 691 1 709 691 1 710 692 1
		 709 710 1 711 693 1 710 711 1 712 694 1 711 712 1 713 695 1 712 713 1 714 696 1 713 714 1
		 715 697 1 714 715 1 716 662 1 715 716 1 717 650 1 716 717 1 718 627 1 717 718 1 719 639 1
		 718 719 1 720 635 1 719 720 1 721 631 1 720 721 1 722 647 1 721 722 1 723 643 1 722 723 1
		 724 628 1 723 724 1 725 707 1 724 725 1 726 708 1 725 726 1 726 709 1 662 778 1 727 728 1
		 640 780 1 728 729 1 621 779 1 730 729 0 727 730 0 663 772 1 728 731 1 636 771 0 731 732 0
		 729 732 0 627 776 1 639 775 1 733 734 0 734 735 1 650 777 1 736 735 1 733 736 0 651 773 1
		 735 737 1 635 774 0 734 738 0 738 737 0 735 728 1 736 727 0 737 731 0 644 801 1 739 740 1
		 666 803 1 739 741 1 622 802 1 741 742 0 740 742 0 665 809 1 648 810 0 743 744 0 743 739 1
		 744 740 0 653 808 1 745 746 1 647 807 0 747 745 0 643 806 1 747 748 0 748 746 1 654 804 1
		 746 749 1 628 805 1 748 750 0 750 749 0 745 743 0 746 739 1 749 741 0 751 732 0 752 731 1
		 751 752 1 753 737 1 752 753 1 754 738 0 753 754 1 755 734 1 754 755 1 756 733 0 755 756 1
		 757 736 1 756 757 1 758 727 1 757 758 1 759 730 0 758 759 1 760 729 1 759 760 1 760 751 1
		 761 751 0 762 752 1 761 762 1 763 753 1 762 763 1 764 754 0 763 764 1 765 755 1;
	setAttr ".edge[1494:1659]" 764 765 1 766 756 1 765 766 1 767 757 1 766 767 1
		 768 758 1 767 768 1 769 759 1 768 769 1 770 760 1 769 770 1 770 761 1 771 761 0 772 762 1
		 771 772 1 773 763 1 772 773 1 774 764 0 773 774 1 775 765 1 774 775 1 776 766 1 775 776 1
		 777 767 1 776 777 1 778 768 1 777 778 1 779 769 1 778 779 1 780 770 1 779 780 1 780 771 1
		 781 740 0 782 742 1 781 782 1 783 741 1 782 783 1 784 749 1 783 784 1 785 750 1 784 785 1
		 786 748 0 785 786 1 787 747 0 786 787 1 788 745 1 787 788 1 789 743 1 788 789 1 790 744 0
		 789 790 1 790 781 1 791 781 1 792 782 1 791 792 1 793 783 1 792 793 1 794 784 1 793 794 1
		 795 785 1 794 795 1 796 786 1 795 796 1 797 787 0 796 797 1 798 788 1 797 798 1 799 789 1
		 798 799 1 800 790 0 799 800 1 800 791 1 801 791 1 802 792 1 801 802 1 803 793 1 802 803 1
		 804 794 1 803 804 1 805 795 1 804 805 1 806 796 1 805 806 1 807 797 0 806 807 1 808 798 1
		 807 808 1 809 799 1 808 809 1 810 800 0 809 810 1 810 801 1 811 812 0 813 814 1 815 816 1
		 817 818 0 819 820 1 821 822 1 823 824 1 825 826 0 827 828 1 829 830 1 831 832 0 811 813 0
		 812 814 0 813 815 0 814 816 0 815 817 0 816 818 0 817 819 0 818 820 0 819 821 0 820 822 0
		 821 823 0 822 824 0 823 825 0 824 826 0 825 827 0 826 828 0 827 829 0 828 830 0 829 831 0
		 830 832 0 832 833 0 833 834 0 834 835 0 835 812 0 830 836 1 836 837 1 837 838 1 838 814 1
		 828 839 1 839 840 1 840 841 1 841 816 1 833 836 1 834 837 1 835 838 1 836 839 1 837 840 1
		 838 841 1 839 824 1 840 822 1 841 820 1 831 842 0 842 843 0 843 844 0 844 811 0 829 845 1
		 845 846 1 846 847 1 847 813 1 827 848 1 848 849 1 849 850 1 850 815 1 842 845 1 843 846 1
		 844 847 1 845 848 1 846 849 1 847 850 1 848 823 1 849 821 1 850 819 1 844 835 1;
	setAttr ".edge[1660:1825]" 843 834 1 842 833 1 851 852 0 851 856 0 852 853 0
		 852 857 1 853 854 0 853 858 1 854 855 0 854 859 1 855 860 0 856 857 1 856 861 0 857 858 1
		 857 862 1 858 859 1 858 863 1 859 860 1 859 864 1 860 865 0 861 862 1 861 866 0 862 863 1
		 863 864 1 864 865 1 862 867 1 863 868 1 864 869 1 865 870 0 866 867 0 867 868 0 868 869 0
		 869 870 0 872 873 1 873 874 1 874 897 1 875 876 1 876 871 1 878 879 1 879 880 1 880 896 1
		 881 882 1 882 877 1 884 885 1 885 886 1 886 895 1 887 888 1 888 883 1 890 891 1 891 892 1
		 892 898 1 893 894 1 894 889 1 872 878 1 884 890 1 885 891 0 886 892 1 887 893 1 888 894 0
		 895 896 1 896 897 0 897 898 1 898 895 0 899 887 1 900 881 1 899 900 1 901 875 1 900 901 0
		 902 893 1 901 902 1 883 889 1 902 899 0 875 881 1 876 882 0 871 877 1 873 879 0 874 880 1
		 877 903 1 883 904 1 903 904 1 878 905 1 884 906 1 905 906 1 879 907 0 905 907 0 885 908 0
		 906 908 0 907 908 1 880 909 1 907 909 0 886 910 1 908 910 0 909 910 1 896 911 0 909 911 0
		 895 912 0 910 912 0 912 911 0 881 913 1 882 914 0 913 914 0 887 915 1 913 915 1 888 916 0
		 915 916 0 914 916 1 914 903 0 916 904 0 900 917 0 917 913 0 899 918 0 918 917 0 918 915 0
		 889 919 1 871 920 1 919 920 1 890 921 1 872 922 1 921 922 1 891 923 0 921 923 0 873 924 0
		 922 924 0 923 924 1 892 925 1 923 925 0 874 926 1 924 926 0 925 926 1 898 927 0 925 927 0
		 897 928 0 926 928 0 928 927 0 893 929 1 894 930 0 929 930 0 875 931 1 929 931 1 876 932 0
		 931 932 0 930 932 1 930 919 0 932 920 0 902 933 0 933 929 0 901 934 0 934 933 0 934 931 0
		 877 935 1 903 936 0 935 936 0 904 937 0 936 937 1 883 938 1 938 937 0 939 935 0 871 939 1
		 889 940 0 938 940 0 919 941 0 940 941 0 920 942 0 941 942 1 939 942 0 878 943 1;
	setAttr ".edge[1826:1991]" 905 944 0 943 944 0 884 945 1 906 946 0 945 946 0
		 944 946 1 945 948 0 872 947 1 947 943 0 890 948 1 921 949 0 948 949 0 922 950 0 947 950 0
		 949 950 1 935 951 1 936 952 0 951 952 0 937 953 0 952 953 1 938 954 1 954 953 0 955 951 0
		 939 955 1 940 956 1 954 956 0 941 957 0 956 957 0 942 958 0 957 958 1 955 958 0 943 959 1
		 944 960 0 959 960 0 945 961 1 946 962 0 961 962 0 960 962 1 961 964 0 947 963 1 963 959 0
		 948 964 1 949 965 0 964 965 0 950 966 0 963 966 0 965 966 1 951 967 1 952 968 0 967 968 1
		 953 969 0 968 969 1 954 970 1 970 969 1 971 967 1 955 971 1 956 972 1 970 972 1 957 973 0
		 972 973 1 958 974 0 973 974 1 971 974 1 959 975 1 960 976 0 975 976 1 961 977 1 962 978 0
		 977 978 1 976 978 1 977 980 1 963 979 1 979 975 1 964 980 1 965 981 0 980 981 1 966 982 0
		 979 982 1 981 982 1 970 977 1 969 978 0 968 976 0 967 975 1 972 980 1 973 981 0 971 979 1
		 974 982 0 983 984 1 984 985 1 985 986 1 986 987 1 987 988 1 988 989 1 989 990 1 990 983 1
		 991 992 0 992 993 0 993 994 0 994 995 0 995 996 0 996 997 0 997 998 0 998 991 0 983 1044 0
		 984 1043 0 985 1042 0 986 1041 0 987 1040 0 988 1039 0 989 1046 0 990 1045 0 999 996 0
		 1000 995 0 999 1000 1 1001 994 0 1000 1001 1 1002 993 0 1001 1002 1 1003 992 0 1002 1003 1
		 1004 991 0 1003 1004 1 1005 998 0 1004 1005 1 1006 997 0 1005 1006 1 1006 999 1 1007 999 0
		 1008 1000 0 1007 1008 1 1009 1001 0 1008 1009 1 1010 1002 0 1009 1010 1 1011 1003 0
		 1010 1011 1 1012 1004 0 1011 1012 1 1013 1005 0 1012 1013 1 1014 1006 0 1013 1014 1
		 1014 1007 1 1015 1007 0 1016 1008 0 1015 1016 1 1017 1009 0 1016 1017 1 1018 1010 0
		 1017 1018 1 1019 1011 0 1018 1019 1 1020 1012 0 1019 1020 1 1021 1013 0 1020 1021 1
		 1022 1014 0 1021 1022 1 1022 1015 1 1023 1072 0 1024 1073 0 1023 1024 1 1025 1074 0
		 1024 1025 1 1026 1075 0 1025 1026 1;
	setAttr ".edge[1992:2157]" 1027 1076 0 1026 1027 1 1028 1077 0 1027 1028 1 1029 1078 0
		 1028 1029 1 1030 1079 0 1029 1030 1 1030 1023 1 1031 1023 0 1032 1024 0 1031 1032 1
		 1033 1025 0 1032 1033 1 1034 1026 0 1033 1034 1 1035 1027 0 1034 1035 1 1036 1028 0
		 1035 1036 1 1037 1029 0 1036 1037 1 1038 1030 0 1037 1038 1 1038 1031 1 1039 1031 0
		 1040 1032 0 1039 1040 1 1041 1033 0 1040 1041 1 1042 1034 0 1041 1042 1 1043 1035 0
		 1042 1043 1 1044 1036 0 1043 1044 1 1045 1037 0 1044 1045 1 1046 1038 0 1045 1046 1
		 1046 1039 1 990 1047 0 983 1048 0 1047 1048 1 989 1049 0 1049 1047 1 988 1050 0 1050 1049 1
		 987 1051 0 1051 1050 1 986 1052 0 1052 1051 1 985 1053 0 1053 1052 1 984 1054 0 1054 1053 1
		 1048 1054 1 1047 1055 1 1048 1056 1 1055 1056 1 1049 1057 1 1057 1055 1 1050 1058 1
		 1058 1057 1 1051 1059 1 1059 1058 1 1052 1060 1 1060 1059 1 1053 1061 1 1061 1060 1
		 1054 1062 1 1062 1061 1 1056 1062 1 1055 1063 1 1056 1064 1 1063 1064 1 1057 1065 1
		 1065 1063 1 1058 1066 1 1066 1065 1 1059 1067 1 1067 1066 1 1060 1068 1 1068 1067 1
		 1061 1069 1 1069 1068 1 1062 1070 1 1070 1069 1 1064 1070 1 1069 1071 1 1071 1065 1
		 1067 1071 1 1071 1064 1 1072 1015 0 1073 1016 0 1072 1073 1 1074 1017 0 1073 1074 1
		 1075 1018 0 1074 1075 1 1076 1019 0 1075 1076 1 1077 1020 0 1076 1077 1 1078 1021 0
		 1077 1078 1 1079 1022 0 1078 1079 1 1079 1072 1 1082 1083 1 1081 1083 0 1080 1081 0
		 1080 1082 0 1084 1085 1 1083 1085 0 1082 1084 0 1086 1087 0 1085 1087 0 1084 1086 0
		 1088 1089 1 1087 1089 0 1086 1088 0 1090 1091 1 1089 1091 0 1088 1090 0 1092 1093 1
		 1091 1093 0 1090 1092 0 1094 1095 0 1093 1095 0 1092 1094 0 1096 1097 1 1095 1097 0
		 1094 1096 0 1098 1099 1 1097 1099 0 1096 1098 0 1100 1101 0 1099 1101 0 1098 1100 0
		 1111 1102 1 1101 1102 0 1100 1111 0 1102 1105 1 1099 1105 1 1103 1106 1 1105 1106 1
		 1102 1103 0 1104 1107 1 1106 1107 1 1103 1104 0 1107 1083 1 1104 1081 0 1105 1108 1
		 1097 1108 1 1106 1109 1 1108 1109 1 1107 1110 1 1109 1110 1 1110 1085 1 1108 1093 1
		 1109 1091 1 1110 1089 1 1098 1114 1 1111 1114 1 1114 1115 1;
	setAttr ".edge[2158:2323]" 1112 1115 1 1111 1112 0 1115 1116 1 1113 1116 1 1112 1113 0
		 1116 1082 1 1113 1080 0 1096 1117 1 1114 1117 1 1117 1118 1 1115 1118 1 1118 1119 1
		 1116 1119 1 1119 1084 1 1117 1092 1 1118 1090 1 1119 1088 1 1113 1104 1 1112 1103 1
		 1120 1153 0 1121 1172 0 1123 1154 1 1124 1173 1 1126 1155 0 1127 1168 0 1129 1150 0
		 1130 1169 0 1132 1151 1 1133 1170 1 1135 1152 0 1136 1171 0 1120 1195 0 1121 1209 0
		 1122 1205 0 1123 1177 0 1124 1191 0 1125 1187 0 1126 1129 0 1127 1130 1 1128 1131 0
		 1129 1178 0 1130 1182 0 1131 1186 0 1132 1196 0 1133 1200 0 1134 1204 0 1135 1120 0
		 1136 1121 1 1137 1122 0 1134 1125 1 1132 1123 1 1138 1238 0 1139 1236 1 1138 1180 1
		 1140 1234 0 1139 1198 0 1141 1233 0 1140 1141 1 1142 1231 1 1141 1193 1 1143 1239 0
		 1142 1175 0 1143 1138 1 1144 1228 0 1144 1184 1 1146 1224 0 1145 1202 0 1147 1223 0
		 1146 1147 1 1147 1207 1 1149 1229 0 1148 1189 0 1149 1144 1 1150 1218 0 1151 1216 1
		 1150 1179 1 1152 1214 0 1151 1197 1 1153 1213 0 1152 1153 1 1154 1211 1 1153 1194 1
		 1155 1219 0 1154 1176 1 1155 1150 1 1156 1131 0 1157 1134 1 1156 1185 1 1158 1137 0
		 1157 1203 1 1159 1122 0 1158 1159 1 1160 1125 1 1159 1206 1 1161 1128 0 1160 1188 1
		 1161 1156 1 1162 1127 0 1163 1130 0 1162 1163 1 1164 1133 1 1163 1181 1 1165 1136 0
		 1164 1199 0 1166 1121 0 1165 1166 1 1167 1124 1 1166 1192 1 1167 1174 0 1168 1289 0
		 1169 1288 0 1168 1169 1 1169 1183 1 1171 1284 0 1170 1201 0 1172 1283 0 1171 1172 1
		 1172 1208 1 1173 1190 0 1174 1162 1 1175 1143 1 1174 1270 0 1176 1155 1 1175 1210 0
		 1177 1126 0 1176 1177 1 1178 1132 0 1177 1178 1 1179 1151 1 1178 1179 1 1180 1139 0
		 1179 1217 1 1181 1164 0 1180 1237 1 1182 1133 0 1181 1182 1 1183 1170 0 1182 1183 1
		 1184 1145 0 1183 1287 0 1185 1157 1 1184 1227 0 1186 1134 0 1185 1186 1 1187 1128 0
		 1186 1187 1 1188 1161 1 1187 1188 1 1189 1149 1 1188 1220 1 1190 1168 1 1189 1240 1
		 1191 1127 0 1190 1191 1 1191 1174 1 1192 1167 0 1193 1142 0 1192 1272 0 1194 1154 1
		 1193 1212 0 1195 1123 0 1194 1195 1 1196 1135 0 1195 1196 1 1197 1152 1 1196 1197 1;
	setAttr ".edge[2324:2489]" 1198 1140 1 1197 1215 1 1199 1165 1 1198 1235 1 1200 1136 0
		 1199 1200 1 1201 1171 1 1200 1201 1 1202 1146 1 1201 1285 0 1203 1158 1 1202 1225 0
		 1204 1137 0 1203 1204 1 1205 1125 0 1204 1205 1 1206 1160 1 1205 1206 1 1207 1148 0
		 1206 1222 1 1208 1173 0 1207 1242 1 1209 1124 0 1208 1209 1 1209 1192 1 1210 1176 1
		 1210 1211 0 1212 1194 1 1211 1212 0 1213 1141 0 1212 1213 1 1214 1140 0 1213 1214 1
		 1215 1198 0 1214 1215 1 1215 1216 0 1217 1180 0 1216 1217 0 1218 1138 0 1217 1218 1
		 1219 1143 0 1218 1219 1 1219 1210 1 1220 1189 0 1221 1160 1 1220 1221 0 1222 1207 0
		 1221 1222 0 1223 1159 0 1222 1223 1 1224 1158 0 1223 1224 1 1225 1203 1 1224 1225 1
		 1226 1157 1 1225 1226 0 1227 1185 1 1226 1227 0 1228 1156 0 1227 1228 1 1229 1161 0
		 1228 1229 1 1229 1220 1 1230 1175 1 1230 1231 0 1232 1193 1 1231 1232 0 1233 1253 0
		 1232 1233 1 1234 1254 0 1233 1234 1 1235 1255 0 1234 1235 1 1235 1236 0 1237 1257 0
		 1236 1237 0 1238 1258 0 1237 1238 1 1239 1259 0 1238 1239 1 1239 1230 1 1240 1260 0
		 1241 1148 1 1240 1241 0 1242 1262 0 1241 1242 0 1243 1147 0 1242 1243 1 1244 1146 0
		 1243 1244 1 1245 1202 1 1244 1245 1 1246 1145 1 1245 1246 0 1247 1184 1 1246 1247 0
		 1248 1144 0 1247 1248 1 1249 1149 0 1248 1249 1 1249 1240 1 1250 1230 0 1251 1271 1
		 1250 1251 0 1252 1232 0 1251 1252 0 1253 1273 0 1252 1253 1 1254 1274 0 1253 1254 1
		 1255 1275 1 1254 1255 1 1256 1276 1 1255 1256 0 1257 1277 1 1256 1257 0 1258 1278 0
		 1257 1258 1 1259 1279 0 1258 1259 1 1259 1250 1 1260 1280 1 1260 1261 0 1262 1282 1
		 1261 1262 0 1263 1243 0 1262 1263 1 1264 1244 0 1263 1264 1 1265 1245 0 1264 1265 1
		 1265 1266 0 1267 1247 0 1266 1267 0 1268 1248 0 1267 1268 1 1269 1249 0 1268 1269 1
		 1269 1260 1 1270 1250 1 1270 1271 0 1272 1252 1 1271 1272 0 1273 1166 0 1272 1273 1
		 1274 1165 0 1273 1274 1 1275 1199 0 1274 1275 1 1275 1276 0 1277 1181 0 1276 1277 0
		 1278 1163 0 1277 1278 1 1279 1162 0 1278 1279 1 1279 1270 1 1280 1190 0 1281 1261 1
		 1280 1281 0 1282 1208 0 1281 1282 0 1283 1263 0 1282 1283 1 1284 1264 0 1283 1284 1;
	setAttr ".edge[2490:2655]" 1285 1265 1 1284 1285 1 1286 1266 1 1285 1286 0 1287 1267 1
		 1286 1287 0 1288 1268 0 1287 1288 1 1289 1269 0 1288 1289 1 1289 1280 1 1290 1291 1
		 1291 1292 1 1292 1293 1 1293 1294 1 1294 1295 1 1295 1296 1 1296 1297 1 1297 1298 1
		 1298 1299 1 1299 1300 1 1300 1301 1 1301 1290 1 1302 1303 1 1303 1304 1 1304 1305 1
		 1305 1306 1 1306 1307 1 1307 1308 1 1308 1309 1 1309 1310 1 1310 1311 1 1311 1312 1
		 1312 1313 1 1313 1302 1 1314 1315 1 1315 1316 1 1316 1317 1 1317 1318 1 1318 1319 1
		 1319 1320 1 1320 1321 1 1321 1322 1 1322 1323 1 1323 1324 1 1324 1325 1 1325 1314 1
		 1326 1327 1 1327 1328 1 1328 1329 1 1329 1330 1 1330 1331 1 1331 1332 1 1332 1333 1
		 1333 1334 1 1334 1335 1 1335 1336 1 1336 1337 1 1337 1326 1 1338 1339 1 1339 1340 1
		 1340 1341 1 1341 1342 1 1342 1343 1 1343 1344 1 1344 1345 1 1345 1346 1 1346 1347 1
		 1347 1348 1 1348 1349 1 1349 1338 1 1350 1351 1 1351 1352 1 1352 1353 1 1353 1354 1
		 1354 1355 1 1355 1356 1 1356 1357 1 1357 1358 1 1358 1359 1 1359 1360 1 1360 1361 1
		 1361 1350 1 1362 1363 1 1363 1364 1 1364 1365 1 1365 1366 1 1366 1367 1 1367 1368 1
		 1368 1369 1 1369 1370 1 1370 1371 1 1371 1372 1 1372 1373 1 1373 1362 1 1374 1375 1
		 1375 1376 1 1376 1377 1 1377 1378 1 1378 1379 1 1379 1380 1 1380 1381 1 1381 1382 1
		 1382 1383 1 1383 1384 1 1384 1385 1 1385 1374 1 1386 1387 1 1387 1388 1 1388 1389 1
		 1389 1390 1 1390 1391 1 1391 1392 1 1392 1393 1 1393 1394 1 1394 1395 1 1395 1396 1
		 1396 1397 1 1397 1386 1 1290 1302 1 1291 1303 1 1292 1304 1 1293 1305 1 1294 1306 1
		 1295 1307 1 1296 1308 1 1297 1309 1 1298 1310 1 1299 1311 1 1300 1312 1 1301 1313 1
		 1302 1314 1 1303 1315 1 1304 1316 1 1305 1317 1 1306 1318 1 1307 1319 1 1308 1320 1
		 1309 1321 1 1310 1322 1 1311 1323 1 1312 1324 1 1313 1325 1 1314 1326 1 1315 1327 1
		 1316 1328 1 1317 1329 1 1318 1330 1 1319 1331 1 1320 1332 1 1321 1333 1 1322 1334 1
		 1323 1335 1 1324 1336 1 1325 1337 1 1326 1338 1 1327 1339 1 1328 1340 1 1329 1341 1
		 1330 1342 1 1331 1343 1 1332 1344 1 1333 1345 1 1334 1346 1 1335 1347 1 1336 1348 1;
	setAttr ".edge[2656:2821]" 1337 1349 1 1338 1350 1 1339 1351 1 1340 1352 1 1341 1353 1
		 1342 1354 1 1343 1355 1 1344 1356 1 1345 1357 1 1346 1358 1 1347 1359 1 1348 1360 1
		 1349 1361 1 1350 1362 1 1351 1363 1 1352 1364 1 1353 1365 1 1354 1366 1 1355 1367 1
		 1356 1368 1 1357 1369 1 1358 1370 1 1359 1371 1 1360 1372 1 1361 1373 1 1362 1374 1
		 1363 1375 1 1364 1376 1 1365 1377 1 1366 1378 1 1367 1379 1 1368 1380 1 1369 1381 1
		 1370 1382 1 1371 1383 1 1372 1384 1 1373 1385 1 1374 1386 1 1375 1387 1 1376 1388 1
		 1377 1389 1 1378 1390 1 1379 1391 1 1380 1392 1 1381 1393 1 1382 1394 1 1383 1395 1
		 1384 1396 1 1385 1397 1 1398 1290 1 1398 1291 1 1398 1292 1 1398 1293 1 1398 1294 1
		 1398 1295 1 1398 1296 1 1398 1297 1 1398 1298 1 1398 1299 1 1398 1300 1 1398 1301 1
		 1386 1399 1 1387 1399 1 1388 1399 1 1389 1399 1 1390 1399 1 1391 1399 1 1392 1399 1
		 1393 1399 1 1394 1399 1 1395 1399 1 1396 1399 1 1397 1399 1 1400 1401 0 1401 1402 0
		 1402 1403 0 1403 1404 0 1404 1405 0 1405 1406 0 1406 1407 0 1407 1400 0 1408 1409 0
		 1409 1410 0 1410 1411 0 1411 1412 0 1412 1413 0 1413 1414 0 1414 1415 0 1415 1408 0
		 1400 1408 0 1401 1409 0 1402 1410 0 1403 1411 0 1404 1412 0 1405 1413 0 1406 1414 0
		 1407 1415 0 1416 1400 1 1416 1401 1 1416 1402 1 1416 1403 1 1416 1404 1 1416 1405 1
		 1416 1406 1 1416 1407 1 1408 1417 1 1417 1418 1 1409 1419 1 1417 1419 0 1410 1420 1
		 1419 1420 0 1420 1418 1 1411 1421 1 1420 1421 0 1412 1422 1 1421 1422 0 1422 1418 1
		 1413 1423 1 1422 1423 0 1414 1424 1 1423 1424 0 1424 1418 1 1415 1425 1 1424 1425 0
		 1425 1417 0 1426 1427 1 1427 1428 1 1428 1429 1 1429 1430 1 1430 1431 1 1431 1432 1
		 1432 1433 1 1433 1434 1 1434 1435 1 1435 1436 1 1436 1437 1 1437 1426 1 1438 1439 1
		 1439 1440 1 1440 1441 1 1441 1442 1 1442 1443 1 1443 1444 1 1444 1445 1 1445 1446 1
		 1446 1447 1 1447 1448 1 1448 1449 1 1449 1438 1 1450 1451 1 1451 1452 1 1452 1453 1
		 1453 1454 1 1454 1455 1 1455 1456 1 1456 1457 1 1457 1458 1 1458 1459 1 1459 1460 1
		 1460 1461 1 1461 1450 1 1462 1463 1 1463 1464 1 1464 1465 1 1465 1466 1 1466 1467 1;
	setAttr ".edge[2822:2987]" 1467 1468 1 1468 1469 1 1469 1470 1 1470 1471 1 1471 1472 1
		 1472 1473 1 1473 1462 1 1474 1475 1 1475 1476 1 1476 1477 1 1477 1478 1 1478 1479 1
		 1479 1480 1 1480 1481 1 1481 1482 1 1482 1483 1 1483 1484 1 1484 1485 1 1485 1474 1
		 1486 1487 1 1487 1488 1 1488 1489 1 1489 1490 1 1490 1491 1 1491 1492 1 1492 1493 1
		 1493 1494 1 1494 1495 1 1495 1496 1 1496 1497 1 1497 1486 1 1498 1499 1 1499 1500 1
		 1500 1501 1 1501 1502 1 1502 1503 1 1503 1504 1 1504 1505 1 1505 1506 1 1506 1507 1
		 1507 1508 1 1508 1509 1 1509 1498 1 1510 1511 1 1511 1512 1 1512 1513 1 1513 1514 1
		 1514 1515 1 1515 1516 1 1516 1517 1 1517 1518 1 1518 1519 1 1519 1520 1 1520 1521 1
		 1521 1510 1 1522 1523 1 1523 1524 1 1524 1525 1 1525 1526 1 1526 1527 1 1527 1528 1
		 1528 1529 1 1529 1530 1 1530 1531 1 1531 1532 1 1532 1533 1 1533 1522 1 1426 1438 1
		 1427 1439 1 1428 1440 1 1429 1441 1 1430 1442 1 1431 1443 1 1432 1444 1 1433 1445 1
		 1434 1446 1 1435 1447 1 1436 1448 1 1437 1449 1 1438 1450 1 1439 1451 1 1440 1452 1
		 1441 1453 1 1442 1454 1 1443 1455 1 1444 1456 1 1445 1457 1 1446 1458 1 1447 1459 1
		 1448 1460 1 1449 1461 1 1450 1462 1 1451 1463 1 1452 1464 1 1453 1465 1 1454 1466 1
		 1455 1467 1 1456 1468 1 1457 1469 1 1458 1470 1 1459 1471 1 1460 1472 1 1461 1473 1
		 1462 1474 1 1463 1475 1 1464 1476 1 1465 1477 1 1466 1478 1 1467 1479 1 1468 1480 1
		 1469 1481 1 1470 1482 1 1471 1483 1 1472 1484 1 1473 1485 1 1474 1486 1 1475 1487 1
		 1476 1488 1 1477 1489 1 1478 1490 1 1479 1491 1 1480 1492 1 1481 1493 1 1482 1494 1
		 1483 1495 1 1484 1496 1 1485 1497 1 1486 1498 1 1487 1499 1 1488 1500 1 1489 1501 1
		 1490 1502 1 1491 1503 1 1492 1504 1 1493 1505 1 1494 1506 1 1495 1507 1 1496 1508 1
		 1497 1509 1 1498 1510 1 1499 1511 1 1500 1512 1 1501 1513 1 1502 1514 1 1503 1515 1
		 1504 1516 1 1505 1517 1 1506 1518 1 1507 1519 1 1508 1520 1 1509 1521 1 1510 1522 1
		 1511 1523 1 1512 1524 1 1513 1525 1 1514 1526 1 1515 1527 1 1516 1528 1 1517 1529 1
		 1518 1530 1 1519 1531 1 1520 1532 1 1521 1533 1 1534 1426 1 1534 1427 1 1534 1428 1;
	setAttr ".edge[2988:3153]" 1534 1429 1 1534 1430 1 1534 1431 1 1534 1432 1 1534 1433 1
		 1534 1434 1 1534 1435 1 1534 1436 1 1534 1437 1 1522 1535 1 1523 1535 1 1524 1535 1
		 1525 1535 1 1526 1535 1 1527 1535 1 1528 1535 1 1529 1535 1 1530 1535 1 1531 1535 1
		 1532 1535 1 1533 1535 1 1536 1537 0 1537 1538 0 1538 1539 0 1539 1540 0 1540 1541 0
		 1541 1542 0 1542 1543 0 1543 1536 0 1544 1545 0 1545 1546 0 1546 1547 0 1547 1548 0
		 1548 1549 0 1549 1550 0 1550 1551 0 1551 1544 0 1536 1544 0 1537 1545 0 1538 1546 0
		 1539 1547 0 1540 1548 0 1541 1549 0 1542 1550 0 1543 1551 0 1544 1552 1 1545 1553 1
		 1552 1553 0 1546 1554 1 1553 1554 0 1547 1555 1 1554 1555 0 1548 1556 1 1555 1556 0
		 1549 1557 1 1556 1557 0 1550 1558 1 1557 1558 0 1551 1559 1 1558 1559 0 1559 1552 0
		 1552 1560 0 1553 1561 0 1560 1561 0 1554 1562 0 1561 1562 0 1555 1563 0 1562 1563 0
		 1556 1564 0 1563 1564 0 1557 1565 0 1564 1565 0 1558 1566 0 1565 1566 0 1559 1567 0
		 1566 1567 0 1567 1560 0 1560 1568 1 1561 1569 1 1568 1569 0 1562 1570 1 1569 1570 0
		 1563 1571 1 1570 1571 0 1564 1572 1 1571 1572 0 1565 1573 1 1572 1573 0 1566 1574 1
		 1573 1574 0 1567 1575 1 1574 1575 0 1575 1568 0 1568 1576 0 1569 1577 0 1576 1577 0
		 1570 1578 0 1577 1578 0 1571 1579 0 1578 1579 0 1572 1580 0 1579 1580 0 1573 1581 0
		 1580 1581 0 1574 1582 0 1581 1582 0 1575 1583 0 1582 1583 0 1583 1576 0 1576 1584 1
		 1577 1585 1 1584 1585 0 1578 1586 1 1585 1586 0 1579 1587 1 1586 1587 0 1580 1588 1
		 1587 1588 0 1581 1589 1 1588 1589 0 1582 1590 1 1589 1590 0 1583 1591 1 1590 1591 0
		 1591 1584 0 1584 1592 0 1585 1593 0 1592 1593 0 1586 1594 0 1593 1594 0 1587 1595 0
		 1594 1595 0 1588 1596 0 1595 1596 0 1589 1597 0 1596 1597 0 1590 1598 0 1597 1598 0
		 1591 1599 0 1598 1599 0 1599 1592 0 1594 1600 1 1600 1598 1 1593 1600 1 1600 1597 1
		 1595 1600 1 1600 1599 1 1596 1600 1 1600 1592 1 1601 1619 1 1605 1621 0 1601 1603 0
		 1602 1604 0 1603 1626 0 1604 1629 0 1605 1607 0 1606 1608 0 1608 1644 1 1603 1620 0
		 1607 1622 1 1607 1639 1 1601 1612 0 1607 1609 0 1608 1610 0 1609 1623 0 1602 1611 0;
	setAttr ".edge[3154:3319]" 1610 1643 0 1612 1624 0 1609 1640 0 1613 1602 1 1614 1604 0
		 1613 1614 1 1615 1606 0 1614 1628 0 1616 1608 1 1615 1616 1 1617 1610 0 1616 1617 1
		 1618 1611 0 1617 1642 1 1618 1613 1 1619 1613 1 1620 1614 0 1619 1620 1 1621 1615 0
		 1620 1627 0 1622 1616 1 1621 1622 1 1623 1617 0 1622 1623 1 1624 1618 0 1623 1641 1
		 1624 1619 1 1625 1601 1 1626 1638 0 1625 1626 1 1627 1637 1 1626 1627 0 1628 1636 1
		 1627 1628 1 1629 1635 0 1628 1629 0 1630 1602 1 1629 1630 1 1631 1611 0 1630 1631 1
		 1632 1618 1 1631 1632 1 1633 1624 1 1632 1633 1 1634 1612 0 1633 1634 1 1634 1625 1
		 1635 1606 0 1636 1615 0 1635 1636 0 1637 1621 0 1636 1637 1 1638 1605 0 1637 1638 0
		 1639 1625 1 1638 1639 1 1640 1634 0 1639 1640 1 1641 1633 1 1640 1641 1 1642 1632 1
		 1641 1642 1 1643 1631 0 1642 1643 1 1644 1630 1 1643 1644 1 1644 1635 1 1645 1673 0
		 1647 1682 0 1652 1647 0 1647 1724 0 1648 1735 0 1645 1649 0 1646 1650 0 1649 1674 1
		 1648 1651 0 1650 1716 1 1652 1681 1 1649 1707 1 1652 1656 0 1649 1653 0 1650 1654 0
		 1653 1675 1 1651 1655 0 1654 1715 1 1656 1680 1 1653 1708 1 1656 1660 0 1653 1657 0
		 1654 1658 0 1657 1676 1 1655 1659 0 1658 1714 1 1660 1679 1 1657 1709 1 1660 1664 0
		 1657 1661 0 1658 1662 0 1661 1677 0 1659 1663 0 1662 1713 0 1664 1678 0 1661 1710 0
		 1647 1665 1 1648 1666 1 1665 1683 0 1646 1667 1 1666 1736 0 1645 1668 1 1668 1686 0
		 1665 1723 0 1665 1669 0 1666 1670 0 1669 1684 1 1667 1671 0 1670 1719 1 1668 1672 0
		 1672 1685 1 1669 1722 1 1673 1687 0 1674 1688 1 1673 1674 1 1675 1689 1 1674 1675 1
		 1676 1690 1 1675 1676 1 1677 1691 0 1676 1677 1 1678 1692 0 1677 1711 1 1679 1693 1
		 1678 1679 1 1680 1694 1 1679 1680 1 1681 1695 1 1680 1681 1 1682 1696 0 1681 1682 1
		 1683 1697 0 1682 1683 1 1684 1698 0 1683 1684 1 1685 1699 0 1684 1721 0 1686 1700 0
		 1685 1686 1 1686 1673 1 1687 1646 0 1688 1650 1 1687 1688 1 1689 1654 1 1688 1689 1
		 1690 1658 1 1689 1690 1 1691 1662 0 1690 1691 1 1692 1663 0 1691 1712 1 1693 1659 1
		 1692 1693 1 1694 1655 1 1693 1694 1 1695 1651 1 1694 1695 1 1696 1648 0 1695 1696 1;
	setAttr ".edge[3320:3485]" 1697 1666 0 1696 1697 1 1698 1670 1 1697 1698 1 1699 1671 1
		 1698 1720 0 1700 1667 0 1699 1700 1 1700 1687 1 1701 1671 1 1702 1699 0 1701 1702 0
		 1703 1685 0 1702 1703 1 1704 1672 1 1703 1704 0 1705 1668 0 1704 1705 1 1706 1645 0
		 1705 1706 1 1707 1725 1 1706 1707 1 1708 1726 1 1707 1708 1 1709 1727 1 1708 1709 1
		 1710 1728 0 1709 1710 1 1711 1729 1 1710 1711 1 1712 1730 1 1711 1712 1 1713 1731 0
		 1712 1713 1 1714 1732 1 1713 1714 1 1715 1733 1 1714 1715 1 1716 1734 1 1715 1716 1
		 1717 1646 0 1716 1717 1 1718 1667 0 1717 1718 1 1718 1701 1 1719 1701 0 1720 1702 1
		 1719 1720 0 1721 1703 1 1720 1721 1 1722 1704 0 1721 1722 0 1723 1705 0 1722 1723 1
		 1724 1706 0 1723 1724 1 1725 1652 1 1724 1725 1 1726 1656 1 1725 1726 1 1727 1660 1
		 1726 1727 1 1728 1664 0 1727 1728 1 1729 1678 1 1728 1729 1 1730 1692 1 1729 1730 1
		 1731 1663 0 1730 1731 1 1732 1659 1 1731 1732 1 1733 1655 1 1732 1733 1 1734 1651 1
		 1733 1734 1 1735 1717 0 1734 1735 1 1736 1718 0 1735 1736 1 1736 1719 1 1669 1605 0
		 1684 1621 0 1721 1637 0 1722 1638 0 1698 1615 0 1720 1636 0 1670 1606 0 1719 1635 0
		 1702 1628 0 1699 1614 0 1701 1629 0 1671 1604 0 1703 1627 0 1704 1626 0 1685 1620 0
		 1672 1603 0 1737 1738 0 1738 1739 0 1739 1740 0 1740 1741 0 1741 1742 0 1742 1743 0
		 1743 1744 0 1744 1745 0 1745 1746 0 1746 1747 0 1748 1749 0 1749 1750 0 1750 1751 0
		 1751 1752 0 1752 1753 0 1753 1754 0 1754 1755 0 1755 1756 0 1756 1757 0 1757 1758 0
		 1759 1760 0 1760 1761 0 1761 1762 0 1762 1763 0 1763 1764 0 1764 1765 0 1765 1766 0
		 1766 1767 0 1767 1768 0 1768 1769 0 1770 1771 0 1771 1772 0 1772 1773 0 1773 1774 0
		 1774 1775 0 1775 1776 0 1776 1777 0 1777 1778 0 1778 1779 0 1779 1780 0 1737 1814 0
		 1738 1813 1 1739 1812 1 1740 1811 1 1741 1810 1 1742 1809 1 1743 1808 1 1744 1807 1
		 1745 1806 1 1746 1805 1 1747 1804 0 1748 1759 0 1749 1760 1 1750 1761 1 1751 1762 1
		 1752 1763 1 1753 1764 1 1754 1765 1 1755 1766 1 1756 1767 1 1757 1768 1 1758 1769 0
		 1759 1796 0 1760 1797 1 1761 1798 1 1762 1799 1 1763 1800 1 1764 1801 1 1765 1802 1;
	setAttr ".edge[3486:3651]" 1766 1781 1 1767 1782 1 1768 1783 1 1769 1784 0 1770 1737 0
		 1771 1738 1 1772 1739 1 1773 1740 1 1774 1741 1 1775 1742 1 1776 1743 1 1777 1744 1
		 1778 1745 1 1779 1746 1 1780 1747 0 1781 1822 1 1782 1823 1 1781 1782 1 1783 1824 1
		 1782 1783 1 1784 1803 0 1783 1784 1 1785 1758 0 1784 1785 1 1786 1757 1 1785 1786 1
		 1787 1756 1 1786 1787 1 1788 1755 1 1787 1788 0 1789 1754 1 1788 1789 0 1790 1753 1
		 1789 1790 0 1791 1752 1 1790 1791 0 1792 1751 1 1791 1792 0 1793 1750 1 1792 1793 0
		 1794 1749 1 1793 1794 1 1795 1748 0 1794 1795 1 1796 1815 0 1795 1796 1 1797 1816 1
		 1796 1797 1 1798 1817 1 1797 1798 1 1799 1818 1 1798 1799 1 1800 1819 1 1799 1800 1
		 1801 1820 1 1800 1801 1 1802 1821 1 1801 1802 1 1802 1781 1 1803 1780 0 1804 1785 0
		 1803 1804 1 1805 1786 1 1804 1805 1 1806 1787 1 1805 1806 1 1807 1788 1 1806 1807 1
		 1808 1789 1 1807 1808 1 1809 1790 1 1808 1809 1 1810 1791 1 1809 1810 1 1811 1792 1
		 1810 1811 1 1812 1793 1 1811 1812 1 1813 1794 1 1812 1813 1 1814 1795 0 1813 1814 1
		 1815 1770 0 1814 1815 1 1816 1771 1 1815 1816 1 1817 1772 1 1816 1817 1 1818 1773 1
		 1817 1818 1 1819 1774 1 1818 1819 1 1820 1775 1 1819 1820 1 1821 1776 1 1820 1821 1
		 1822 1777 1 1821 1822 1 1823 1778 1 1822 1823 1 1824 1779 1 1823 1824 1 1824 1803 1
		 1825 1826 0 1826 1827 0 1828 1829 0 1829 1830 0 1831 1832 0 1832 1833 0 1834 1835 0
		 1835 1836 0 1825 1838 0 1826 1837 1 1827 1841 0 1828 1831 0 1829 1832 1 1830 1833 0
		 1831 1839 0 1833 1840 0 1834 1825 0 1835 1826 0 1836 1827 0 1837 1829 1 1838 1828 0
		 1837 1838 1 1839 1834 0 1838 1839 1 1840 1836 0 1841 1830 0 1840 1841 1 1841 1837 1
		 1842 1843 0 1843 1844 0 1844 1845 0 1845 1846 0 1846 1847 0 1847 1848 0 1848 1849 0
		 1849 1842 0 1850 1851 0 1851 1852 0 1852 1853 0 1853 1854 0 1854 1855 0 1855 1856 0
		 1856 1857 0 1857 1850 0 1842 1850 0 1843 1851 0 1844 1852 0 1845 1853 0 1846 1854 0
		 1847 1855 0 1848 1856 0 1849 1857 0 1858 1842 1 1858 1843 1 1858 1844 1 1858 1845 1
		 1858 1846 1 1858 1847 1 1858 1848 1 1858 1849 1 1850 1859 1 1859 1860 1 1851 1861 1;
	setAttr ".edge[3652:3780]" 1859 1861 0 1852 1862 1 1861 1862 0 1862 1860 1 1853 1863 1
		 1862 1863 0 1854 1864 1 1863 1864 0 1864 1860 1 1855 1865 1 1864 1865 0 1856 1866 1
		 1865 1866 0 1866 1860 1 1857 1867 1 1866 1867 0 1867 1859 0 1868 1869 0 1869 1870 0
		 1870 1871 0 1871 1872 0 1872 1873 0 1873 1874 0 1874 1875 0 1875 1876 0 1876 1914 0
		 1877 1878 0 1878 1868 0 1879 1880 0 1880 1881 0 1881 1882 0 1882 1883 0 1883 1884 0
		 1884 1885 0 1885 1886 0 1886 1887 0 1887 1913 0 1888 1889 0 1889 1879 0 1890 1891 0
		 1891 1892 0 1892 1893 0 1893 1894 0 1894 1895 0 1895 1896 0 1896 1897 1 1897 1898 0
		 1898 1912 0 1899 1900 0 1900 1890 1 1901 1902 0 1902 1903 0 1903 1904 0 1904 1905 0
		 1905 1906 0 1906 1907 0 1907 1908 0 1908 1909 0 1909 1915 0 1910 1911 0 1911 1901 0
		 1879 1890 0 1880 1891 1 1881 1892 1 1882 1893 1 1883 1894 1 1884 1895 1 1885 1896 0
		 1886 1897 0 1887 1898 1 1888 1899 1 1889 1900 0 1890 1901 1 1891 1902 1 1892 1903 0
		 1893 1904 1 1894 1905 0 1895 1906 1 1896 1907 1 1897 1908 0 1898 1909 1 1899 1910 1
		 1900 1911 0 1901 1868 1 1902 1869 1 1903 1870 1 1904 1871 1 1905 1872 1 1906 1873 1
		 1907 1874 1 1908 1875 1 1909 1876 1 1910 1877 1 1911 1878 1 1912 1913 1 1913 1914 1
		 1914 1915 1 1915 1912 1 1916 1899 0 1917 1888 0 1916 1917 1 1918 1877 0 1919 1910 0
		 1918 1919 1 1919 1916 1 1917 1918 1 1877 1888 1 1878 1889 0 1868 1879 1 1869 1880 1
		 1870 1881 0 1871 1882 1 1872 1883 0 1873 1884 1 1874 1885 1 1875 1886 0 1876 1887 1
		 1912 1920 0 1913 1921 0 1918 1922 0 1915 1923 0 1920 1916 0 1921 1917 0 1920 1921 1
		 1922 1914 0 1921 1922 1 1923 1919 0 1922 1923 1 1923 1920 1;
	setAttr -size 1883 -capacityHint 7452 ".face";
	setAttr ".face[0:499]" -type "polyFaces" 
		f 4 0 70 -2 -5
		mu 0 4 0 1 2 3
		f 4 91 93 -96 -97
		mu 0 4 4 5 6 7
		f 4 2 66 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 68 -1 -11
		mu 0 4 11 10 1 0
		f 4 -15 -17 -19 -20
		mu 0 4 12 13 14 15
		f 4 22 24 26 27
		mu 0 4 16 17 18 19
		f 4 -12 12 14 -14
		mu 0 4 20 21 13 12
		f 4 -10 15 16 -13
		mu 0 4 22 23 24 25
		f 4 -8 17 18 -16
		mu 0 4 26 27 15 14
		f 4 -6 13 19 -18
		mu 0 4 27 20 12 15
		f 4 10 21 -23 -21
		mu 0 4 28 29 30 31
		f 4 4 23 -25 -22
		mu 0 4 29 32 33 30
		f 4 6 25 -27 -24
		mu 0 4 32 34 35 33
		f 4 8 20 -28 -26
		mu 0 4 34 28 31 35
		f 4 1 72 -31 -29
		mu 0 4 32 36 37 38
		f 4 7 31 -33 -30
		mu 0 4 39 40 41 42
		f 4 -3 33 34 64
		mu 0 4 43 34 44 45
		f 4 -7 28 35 -34
		mu 0 4 34 32 38 44
		f 4 30 73 -39 -37
		mu 0 4 46 47 48 49
		f 4 32 39 -41 -38
		mu 0 4 50 51 52 53
		f 4 -35 41 42 62
		mu 0 4 54 55 56 57
		f 4 -36 36 43 -42
		mu 0 4 55 46 49 56
		f 4 99 101 -104 -105
		mu 0 4 58 59 60 61
		f 4 -47 -48 45 -40
		mu 0 4 51 62 63 52
		f 4 -49 -50 46 -32
		mu 0 4 40 64 65 41
		f 4 -52 48 9 -51
		mu 0 4 66 67 23 22
		f 4 -54 50 11 -53
		mu 0 4 68 69 70 71
		f 4 -56 52 5 -55
		mu 0 4 72 68 71 73
		f 4 -58 54 29 -57
		mu 0 4 74 75 39 42
		f 4 -59 56 37 -45
		mu 0 4 76 77 50 53
		f 4 106 108 -110 -94
		mu 0 4 5 78 79 6
		f 4 -62 -63 60 77
		mu 0 4 80 54 57 81
		f 4 -64 -65 61 79
		mu 0 4 82 9 83 84
		f 4 -67 63 81 -66
		mu 0 4 10 9 82 85
		f 4 -69 65 83 -68
		mu 0 4 86 87 88 89
		f 4 -71 67 85 -70
		mu 0 4 90 86 91 92
		f 4 -73 69 87 -72
		mu 0 4 37 36 93 94
		f 4 -74 71 88 -60
		mu 0 4 48 47 95 96
		f 4 110 104 -112 -109
		mu 0 4 78 58 61 79
		f 4 -77 -78 75 47
		mu 0 4 62 80 81 63
		f 4 -79 -80 76 49
		mu 0 4 97 82 84 98
		f 4 -82 78 51 -81
		mu 0 4 85 82 97 69
		f 4 -84 80 53 -83
		mu 0 4 99 85 69 68
		f 4 -86 82 55 -85
		mu 0 4 100 99 68 72
		f 4 -88 84 57 -87
		mu 0 4 94 93 75 74
		f 4 -89 86 58 -75
		mu 0 4 96 95 77 76
		f 4 38 90 -92 -90
		mu 0 4 49 48 5 4
		f 4 -43 94 95 -93
		mu 0 4 57 56 7 6
		f 4 -44 89 96 -95
		mu 0 4 56 49 4 7
		f 4 44 98 -100 -98
		mu 0 4 76 53 59 58
		f 4 40 100 -102 -99
		mu 0 4 53 52 60 59
		f 4 -46 102 103 -101
		mu 0 4 52 63 61 60
		f 4 59 105 -107 -91
		mu 0 4 48 96 78 5
		f 4 -61 92 109 -108
		mu 0 4 81 57 6 79
		f 4 74 97 -111 -106
		mu 0 4 96 76 58 78
		f 4 -76 107 111 -103
		mu 0 4 63 81 79 61
		f 4 115 -115 -114 -113
		mu 0 4 101 102 103 104
		f 4 113 -119 -118 -117
		mu 0 4 104 103 105 106
		f 4 117 -122 -121 -120
		mu 0 4 107 108 109 110
		f 4 120 -125 -124 -123
		mu 0 4 111 112 113 114
		f 4 123 -128 -127 -126
		mu 0 4 114 113 115 116
		f 4 126 -131 -130 -129
		mu 0 4 116 115 117 118
		f 4 129 -134 -133 -132
		mu 0 4 119 120 121 122
		f 4 132 -136 -116 -135
		mu 0 4 122 121 123 124
		f 4 139 138 -138 -137
		mu 0 4 125 126 127 128
		f 8 -148 -147 -146 -145 -144 -143 -142 -141
		mu 0 8 129 130 131 132 133 134 135 136
		f 4 150 144 -150 148
		mu 0 4 137 138 139 140
		f 4 152 143 -151 151
		mu 0 4 141 142 138 143
		f 4 154 142 -153 153
		mu 0 4 144 135 134 145
		f 4 156 141 -155 155
		mu 0 4 146 136 135 144
		f 4 158 140 -157 157
		mu 0 4 147 148 149 150
		f 4 160 147 -159 159
		mu 0 4 151 152 153 154
		f 4 162 146 -161 161
		mu 0 4 155 156 152 151
		f 4 149 145 -163 163
		mu 0 4 157 158 156 155
		f 4 166 -149 -166 164
		mu 0 4 159 160 157 161
		f 4 168 -152 -167 167
		mu 0 4 162 145 160 159
		f 4 170 -154 -169 169
		mu 0 4 163 144 145 162
		f 4 172 -156 -171 171
		mu 0 4 164 146 144 163
		f 4 174 -158 -173 173
		mu 0 4 165 166 146 164
		f 4 176 -160 -175 175
		mu 0 4 167 151 154 168
		f 4 178 -162 -177 177
		mu 0 4 169 155 151 167
		f 4 165 -164 -179 179
		mu 0 4 161 157 155 169
		f 4 182 -165 -182 180
		mu 0 4 170 159 161 171
		f 4 184 -168 -183 183
		mu 0 4 172 162 159 170
		f 4 186 -170 -185 185
		mu 0 4 173 163 162 172
		f 4 188 -172 -187 187
		mu 0 4 174 164 163 173
		f 4 190 -174 -189 189
		mu 0 4 175 168 176 177
		f 4 192 -176 -191 191
		mu 0 4 178 167 168 175
		f 4 194 -178 -193 193
		mu 0 4 179 169 167 178
		f 4 181 -180 -195 195
		mu 0 4 171 161 169 179
		f 4 199 -199 -198 196
		mu 0 4 180 181 182 183
		f 4 202 -202 -200 200
		mu 0 4 184 185 181 180
		f 4 205 -205 -203 203
		mu 0 4 186 187 185 184
		f 4 208 -208 -206 206
		mu 0 4 188 189 187 186
		f 4 211 -211 -209 209
		mu 0 4 190 191 189 188
		f 4 214 -214 -212 212
		mu 0 4 192 193 194 195
		f 4 217 -217 -215 215
		mu 0 4 196 197 193 192
		f 4 197 -220 -218 218
		mu 0 4 183 182 197 196
		f 4 222 -197 -222 220
		mu 0 4 198 180 183 199
		f 4 224 -201 -223 223
		mu 0 4 200 184 180 198
		f 4 226 -204 -225 225
		mu 0 4 201 186 184 200
		f 4 228 -207 -227 227
		mu 0 4 202 188 186 201
		f 4 230 -210 -229 229
		mu 0 4 203 190 188 202
		f 4 232 -213 -231 231
		mu 0 4 204 192 195 205
		f 4 234 -216 -233 233
		mu 0 4 206 196 192 204
		f 4 221 -219 -235 235
		mu 0 4 199 183 196 206
		f 4 237 -221 -237 127
		mu 0 4 113 198 199 115
		f 4 238 -224 -238 124
		mu 0 4 112 200 198 113
		f 4 239 -226 -239 121
		mu 0 4 108 207 208 109
		f 4 240 -228 -240 118
		mu 0 4 103 202 201 105
		f 4 241 -230 -241 114
		mu 0 4 102 203 202 103
		f 4 242 -232 -242 135
		mu 0 4 209 204 205 210
		f 4 243 -234 -243 133
		mu 0 4 117 206 204 209
		f 4 236 -236 -244 130
		mu 0 4 115 199 206 117
		f 4 246 -246 -245 134
		mu 0 4 211 212 213 214
		f 4 244 -249 -248 131
		mu 0 4 214 213 215 216
		f 4 247 -251 -250 128
		mu 0 4 216 215 217 218
		f 4 249 -253 -252 125
		mu 0 4 218 217 219 220
		f 4 251 -255 -254 122
		mu 0 4 220 219 221 222
		f 4 253 -257 -256 119
		mu 0 4 222 221 223 224
		f 4 255 -259 -258 116
		mu 0 4 224 223 225 226
		f 4 257 -260 -247 112
		mu 0 4 226 225 212 211
		f 4 262 -262 -261 245
		mu 0 4 212 227 228 213
		f 4 260 -265 -264 248
		mu 0 4 229 230 231 232
		f 4 263 -267 -266 250
		mu 0 4 215 233 234 217
		f 4 265 -269 -268 252
		mu 0 4 217 234 235 219
		f 4 267 -271 -270 254
		mu 0 4 219 235 236 221
		f 4 269 -273 -272 256
		mu 0 4 221 236 237 223
		f 4 271 -275 -274 258
		mu 0 4 223 237 238 225
		f 4 273 -276 -263 259
		mu 0 4 225 238 227 212
		f 4 278 -278 -277 261
		mu 0 4 227 239 240 228
		f 4 276 -281 -280 264
		mu 0 4 228 240 127 233
		f 4 279 -139 -282 266
		mu 0 4 233 127 126 234
		f 4 281 -140 -283 268
		mu 0 4 234 126 125 235
		f 4 282 -285 -284 270
		mu 0 4 235 125 241 236
		f 4 283 -287 -286 272
		mu 0 4 236 241 242 237
		f 4 285 -289 -288 274
		mu 0 4 237 242 243 238
		f 4 287 -290 -279 275
		mu 0 4 238 243 239 227
		f 4 -291 137 280 277
		mu 0 4 239 128 127 240
		f 4 286 284 136 -292
		mu 0 4 242 241 125 128
		f 4 289 288 291 290
		mu 0 4 239 243 242 128
		f 4 293 -181 -293 198
		mu 0 4 181 170 171 182
		f 4 294 -184 -294 201
		mu 0 4 185 172 170 181
		f 4 295 -186 -295 204
		mu 0 4 187 173 172 185
		f 4 296 -188 -296 207
		mu 0 4 189 174 173 187
		f 4 297 -190 -297 210
		mu 0 4 191 244 174 189
		f 4 298 -192 -298 213
		mu 0 4 193 178 175 194
		f 4 299 -194 -299 216
		mu 0 4 197 179 178 193
		f 4 292 -196 -300 219
		mu 0 4 182 171 179 197
		f 4 300 317 -309 -317
		mu 0 4 245 246 247 248
		f 4 301 318 -310 -318
		mu 0 4 249 250 251 252
		f 4 302 319 -311 -319
		mu 0 4 250 253 254 251
		f 4 303 320 -312 -320
		mu 0 4 253 255 256 254
		f 4 304 321 -313 -321
		mu 0 4 257 258 259 260
		f 4 305 322 -314 -322
		mu 0 4 261 262 263 264
		f 4 306 323 -315 -323
		mu 0 4 262 265 266 263
		f 4 307 316 -316 -324
		mu 0 4 267 268 269 270
		f 8 -343 -345 -347 -349 -351 -353 -355 -356
		mu 0 8 271 272 273 274 275 276 277 278
		f 4 -308 324 326 -326
		mu 0 4 279 280 281 282
		f 4 -307 327 328 -325
		mu 0 4 283 284 285 286
		f 4 -306 329 330 -328
		mu 0 4 284 287 288 285
		f 4 -305 331 332 -330
		mu 0 4 287 289 290 288
		f 4 -304 333 334 -332
		mu 0 4 291 292 293 294
		f 4 -303 335 336 -334
		mu 0 4 295 296 297 298
		f 4 -302 337 338 -336
		mu 0 4 296 246 299 297
		f 4 -301 325 339 -338
		mu 0 4 246 300 301 299
		f 4 -327 340 342 -342
		mu 0 4 301 302 303 304
		f 4 -329 343 344 -341
		mu 0 4 286 285 273 272
		f 4 -331 345 346 -344
		mu 0 4 285 288 274 273
		f 4 -333 347 348 -346
		mu 0 4 288 290 275 274
		f 4 -335 349 350 -348
		mu 0 4 294 293 305 306
		f 4 -337 351 352 -350
		mu 0 4 298 297 307 308
		f 4 -339 353 354 -352
		mu 0 4 297 299 309 307
		f 4 -340 341 355 -354
		mu 0 4 299 301 304 309
		f 4 359 -359 -358 -357
		mu 0 4 310 311 312 313
		f 4 362 -362 -360 -361
		mu 0 4 314 315 311 310
		f 4 365 -365 -363 -364
		mu 0 4 316 317 315 314
		f 4 368 -368 -366 -367
		mu 0 4 318 319 317 316
		f 4 371 -371 -369 -370
		mu 0 4 320 321 319 318
		f 4 374 -374 -372 -373
		mu 0 4 322 323 321 320
		f 4 377 -377 -375 -376
		mu 0 4 324 325 323 322
		f 4 380 -380 -378 -379
		mu 0 4 326 327 325 324
		f 4 383 -383 -381 -382
		mu 0 4 328 329 327 326
		f 4 386 -386 -384 -385
		mu 0 4 330 331 329 328
		f 4 389 -389 -388 358
		mu 0 4 311 332 333 312
		f 4 391 -391 -390 361
		mu 0 4 315 334 332 311
		f 4 393 -393 -392 364
		mu 0 4 317 335 334 315
		f 4 395 -395 -394 367
		mu 0 4 319 336 335 317
		f 4 397 -397 -396 370
		mu 0 4 337 338 339 340
		f 4 399 -399 -398 373
		mu 0 4 341 342 338 337
		f 4 401 -401 -400 376
		mu 0 4 325 343 344 323
		f 4 403 -403 -402 379
		mu 0 4 327 345 343 325
		f 4 405 -405 -404 382
		mu 0 4 329 346 345 327
		f 4 407 -407 -406 385
		mu 0 4 331 347 346 329
		f 4 410 -410 -409 388
		mu 0 4 348 349 350 351
		f 4 412 -412 -411 390
		mu 0 4 352 353 349 348
		f 4 414 -414 -413 392
		mu 0 4 354 355 353 352
		f 4 416 -416 -415 394
		mu 0 4 339 356 355 354
		f 4 418 -418 -417 396
		mu 0 4 338 357 356 339
		f 4 420 -420 -419 398
		mu 0 4 342 358 357 338
		f 4 422 -422 -421 400
		mu 0 4 359 360 358 342
		f 4 424 -424 -423 402
		mu 0 4 361 362 360 359
		f 4 426 -426 -425 404
		mu 0 4 363 364 362 361
		f 4 428 -428 -427 406
		mu 0 4 365 366 364 363
		f 4 432 -432 -431 429
		mu 0 4 367 368 369 370
		f 4 435 -435 -433 433
		mu 0 4 371 372 368 367
		f 4 438 -438 -436 436
		mu 0 4 373 374 372 371
		f 4 441 -441 -439 439
		mu 0 4 375 376 374 373
		f 4 444 -444 -442 442
		mu 0 4 377 378 376 375
		f 4 447 -447 -445 445
		mu 0 4 379 380 378 377
		f 4 450 -450 -448 448
		mu 0 4 381 382 380 379
		f 4 453 -453 -451 451
		mu 0 4 383 384 382 381
		f 4 456 -456 -454 454
		mu 0 4 385 386 384 383
		f 4 459 -459 -457 457
		mu 0 4 387 388 386 385
		f 4 387 408 -461 357
		mu 0 4 312 333 389 313
		f 4 -462 -429 -408 -387
		mu 0 4 330 390 347 331
		f 4 464 -464 -463 423
		mu 0 4 362 391 392 360
		f 4 466 -466 -465 425
		mu 0 4 364 393 391 362
		f 4 468 -468 -467 427
		mu 0 4 366 394 393 364
		f 4 -471 -469 461 -470
		mu 0 4 395 396 390 330
		f 4 469 384 -473 -472
		mu 0 4 395 330 328 397
		f 4 472 381 -475 -474
		mu 0 4 397 328 326 398
		f 4 474 378 -477 -476
		mu 0 4 398 326 324 399
		f 4 476 375 -479 -478
		mu 0 4 399 324 322 400
		f 4 478 372 -481 -480
		mu 0 4 400 322 320 401
		f 4 480 369 -483 -482
		mu 0 4 402 403 404 405
		f 4 482 366 -485 -484
		mu 0 4 406 318 316 407
		f 4 484 363 -487 -486
		mu 0 4 407 316 314 408
		f 4 486 360 -489 -488
		mu 0 4 408 314 310 409
		f 4 488 356 -491 -490
		mu 0 4 409 310 313 410
		f 4 492 -492 490 460
		mu 0 4 389 411 410 313
		f 4 494 -494 -493 409
		mu 0 4 349 412 413 350
		f 4 496 -496 -495 411
		mu 0 4 353 414 412 349
		f 4 498 -498 -497 413
		mu 0 4 355 415 414 353
		f 4 500 -500 -499 415
		mu 0 4 356 416 415 355
		f 4 502 -502 -501 417
		mu 0 4 357 417 416 356
		f 4 504 -504 -503 419
		mu 0 4 358 418 417 357
		f 4 462 -506 -505 421
		mu 0 4 360 392 418 358
		f 4 -508 -460 -507 470
		mu 0 4 395 388 387 396
		f 4 -509 458 507 471
		mu 0 4 397 386 388 395
		f 4 -510 455 508 473
		mu 0 4 398 384 386 397
		f 4 -511 452 509 475
		mu 0 4 399 382 384 398
		f 4 -512 449 510 477
		mu 0 4 400 380 382 399
		f 4 -513 446 511 479
		mu 0 4 401 378 380 400
		f 4 -514 443 512 481
		mu 0 4 405 419 420 402
		f 4 -515 440 513 483
		mu 0 4 407 374 376 406
		f 4 -516 437 514 485
		mu 0 4 408 372 374 407
		f 4 -517 434 515 487
		mu 0 4 409 368 372 408
		f 4 -518 431 516 489
		mu 0 4 410 369 368 409
		f 4 430 517 491 518
		mu 0 4 370 369 410 411
		f 4 -430 -519 493 519
		mu 0 4 367 370 413 412
		f 4 -434 -520 495 520
		mu 0 4 371 367 412 414
		f 4 -437 -521 497 521
		mu 0 4 373 371 414 415
		f 4 -440 -522 499 522
		mu 0 4 375 373 415 416
		f 4 -443 -523 501 523
		mu 0 4 377 375 416 417
		f 4 -446 -524 503 524
		mu 0 4 379 377 417 418
		f 4 -449 -525 505 525
		mu 0 4 381 379 418 392
		f 4 -452 -526 463 526
		mu 0 4 383 381 392 391
		f 4 -455 -527 465 527
		mu 0 4 385 383 391 393
		f 4 -458 -528 467 506
		mu 0 4 387 385 393 394
		f 4 528 637 -541 -637
		mu 0 4 421 422 423 424
		f 4 529 638 -542 -638
		mu 0 4 422 425 426 423
		f 4 530 639 -543 -639
		mu 0 4 425 427 428 426
		f 4 531 640 -544 -640
		mu 0 4 427 429 430 428
		f 4 532 641 -545 -641
		mu 0 4 429 431 432 430
		f 4 533 642 -546 -642
		mu 0 4 431 433 434 432
		f 4 534 643 -547 -643
		mu 0 4 433 435 436 434
		f 4 535 644 -548 -644
		mu 0 4 435 437 438 436
		f 4 536 645 -549 -645
		mu 0 4 437 439 440 438
		f 4 537 646 -550 -646
		mu 0 4 439 441 442 440
		f 4 538 647 -551 -647
		mu 0 4 441 443 444 442
		f 4 539 636 -552 -648
		mu 0 4 443 421 424 444
		f 4 540 649 -553 -649
		mu 0 4 424 423 445 446
		f 4 541 650 -554 -650
		mu 0 4 423 426 447 445
		f 4 542 651 -555 -651
		mu 0 4 426 428 448 447
		f 4 543 652 -556 -652
		mu 0 4 428 430 449 448
		f 4 544 653 -557 -653
		mu 0 4 430 432 450 449
		f 4 545 654 -558 -654
		mu 0 4 432 434 451 450
		f 4 546 655 -559 -655
		mu 0 4 434 436 452 451
		f 4 547 656 -560 -656
		mu 0 4 436 438 453 452
		f 4 548 657 -561 -657
		mu 0 4 438 440 454 453
		f 4 549 658 -562 -658
		mu 0 4 440 442 455 454
		f 4 550 659 -563 -659
		mu 0 4 442 444 456 455
		f 4 551 648 -564 -660
		mu 0 4 444 424 446 456
		f 4 552 661 -565 -661
		mu 0 4 457 458 459 460
		f 4 553 662 -566 -662
		mu 0 4 461 462 463 464
		f 4 554 663 -567 -663
		mu 0 4 462 465 466 463
		f 4 555 664 -568 -664
		mu 0 4 467 468 469 470
		f 4 556 665 -569 -665
		mu 0 4 468 471 472 469
		f 4 557 666 -570 -666
		mu 0 4 471 473 474 472
		f 4 558 667 -571 -667
		mu 0 4 473 475 476 474
		f 4 559 668 -572 -668
		mu 0 4 477 478 479 480
		f 4 560 669 -573 -669
		mu 0 4 478 481 482 479
		f 4 561 670 -574 -670
		mu 0 4 483 484 485 486
		f 4 562 671 -575 -671
		mu 0 4 484 487 488 485
		f 4 563 660 -576 -672
		mu 0 4 487 457 460 488
		f 4 564 673 -577 -673
		mu 0 4 460 459 489 490
		f 4 565 674 -578 -674
		mu 0 4 464 463 491 492
		f 4 566 675 -579 -675
		mu 0 4 463 466 493 491
		f 4 567 676 -580 -676
		mu 0 4 470 469 494 495
		f 4 568 677 -581 -677
		mu 0 4 469 472 496 494
		f 4 569 678 -582 -678
		mu 0 4 472 474 497 496
		f 4 570 679 -583 -679
		mu 0 4 474 476 498 497
		f 4 571 680 -584 -680
		mu 0 4 480 479 499 500
		f 4 572 681 -585 -681
		mu 0 4 479 482 501 499
		f 4 573 682 -586 -682
		mu 0 4 486 485 502 503
		f 4 574 683 -587 -683
		mu 0 4 485 488 504 502
		f 4 575 672 -588 -684
		mu 0 4 488 460 490 504
		f 4 576 685 -589 -685
		mu 0 4 490 489 505 506
		f 4 577 686 -590 -686
		mu 0 4 492 491 507 508
		f 4 578 687 -591 -687
		mu 0 4 491 493 509 507
		f 4 579 688 -592 -688
		mu 0 4 495 494 510 511
		f 4 580 689 -593 -689
		mu 0 4 494 496 512 510
		f 4 581 690 -594 -690
		mu 0 4 496 497 513 512
		f 4 582 691 -595 -691
		mu 0 4 497 498 514 513
		f 4 583 692 -596 -692
		mu 0 4 500 499 515 516
		f 4 584 693 -597 -693
		mu 0 4 499 501 517 515
		f 4 585 694 -598 -694
		mu 0 4 503 502 518 519
		f 4 586 695 -599 -695
		mu 0 4 502 504 520 518
		f 4 587 684 -600 -696
		mu 0 4 504 490 506 520
		f 4 588 697 -601 -697
		mu 0 4 506 505 521 522
		f 4 589 698 -602 -698
		mu 0 4 508 507 523 524
		f 4 590 699 -603 -699
		mu 0 4 507 509 525 523
		f 4 591 700 -604 -700
		mu 0 4 511 510 526 527
		f 4 592 701 -605 -701
		mu 0 4 510 512 528 526
		f 4 593 702 -606 -702
		mu 0 4 512 513 529 528
		f 4 594 703 -607 -703
		mu 0 4 513 514 530 529
		f 4 595 704 -608 -704
		mu 0 4 516 515 531 532
		f 4 596 705 -609 -705
		mu 0 4 515 517 533 531
		f 4 597 706 -610 -706
		mu 0 4 519 518 534 535
		f 4 598 707 -611 -707
		mu 0 4 518 520 536 534
		f 4 599 696 -612 -708
		mu 0 4 520 506 522 536
		f 4 600 709 -613 -709
		mu 0 4 537 538 539 540
		f 4 601 710 -614 -710
		mu 0 4 538 541 542 539
		f 4 602 711 -615 -711
		mu 0 4 541 543 544 542
		f 4 603 712 -616 -712
		mu 0 4 543 545 546 544
		f 4 604 713 -617 -713
		mu 0 4 545 547 548 546
		f 4 605 714 -618 -714
		mu 0 4 547 549 550 548
		f 4 606 715 -619 -715
		mu 0 4 549 551 552 550
		f 4 607 716 -620 -716
		mu 0 4 551 553 554 552
		f 4 608 717 -621 -717
		mu 0 4 553 555 556 554
		f 4 609 718 -622 -718
		mu 0 4 555 557 558 556
		f 4 610 719 -623 -719
		mu 0 4 557 559 560 558
		f 4 611 708 -624 -720
		mu 0 4 559 537 540 560
		f 4 612 721 -625 -721
		mu 0 4 540 539 561 562
		f 4 613 722 -626 -722
		mu 0 4 539 542 563 561
		f 4 614 723 -627 -723
		mu 0 4 542 544 564 563
		f 4 615 724 -628 -724
		mu 0 4 544 546 565 564
		f 4 616 725 -629 -725
		mu 0 4 546 548 566 565
		f 4 617 726 -630 -726
		mu 0 4 548 550 567 566
		f 4 618 727 -631 -727
		mu 0 4 550 552 568 567
		f 4 619 728 -632 -728
		mu 0 4 552 554 569 568
		f 4 620 729 -633 -729
		mu 0 4 554 556 570 569
		f 4 621 730 -634 -730
		mu 0 4 556 558 571 570
		f 4 622 731 -635 -731
		mu 0 4 558 560 572 571
		f 4 623 720 -636 -732
		mu 0 4 560 540 562 572
		f 3 -529 -733 733
		mu 0 3 422 421 573
		f 3 -530 -734 734
		mu 0 3 425 422 573
		f 3 -531 -735 735
		mu 0 3 427 425 573
		f 3 -532 -736 736
		mu 0 3 429 427 573
		f 3 -533 -737 737
		mu 0 3 431 429 573
		f 3 -534 -738 738
		mu 0 3 433 431 573
		f 3 -535 -739 739
		mu 0 3 435 433 573
		f 3 -536 -740 740
		mu 0 3 437 435 573
		f 3 -537 -741 741
		mu 0 3 439 437 573
		f 3 -538 -742 742
		mu 0 3 441 439 573
		f 3 -539 -743 743
		mu 0 3 443 441 573
		f 3 -540 -744 732
		mu 0 3 421 443 573
		f 3 624 745 -745
		mu 0 3 562 561 574
		f 3 625 746 -746
		mu 0 3 561 563 574
		f 3 626 747 -747
		mu 0 3 563 564 574
		f 3 627 748 -748
		mu 0 3 564 565 574
		f 3 628 749 -749
		mu 0 3 565 566 574
		f 3 629 750 -750
		mu 0 3 566 567 574
		f 3 630 751 -751
		mu 0 3 567 568 574
		f 3 631 752 -752
		mu 0 3 568 569 574
		f 3 632 753 -753
		mu 0 3 569 570 574
		f 3 633 754 -754
		mu 0 3 570 571 574
		f 3 634 755 -755
		mu 0 3 571 572 574
		f 3 635 744 -756
		mu 0 3 572 562 574
		f 4 -768 761 766 -809
		mu 0 4 575 576 577 578
		f 4 792 810 772 -812
		mu 0 4 579 580 581 582
		f 4 -804 812 805 -814
		mu 0 4 583 584 585 586
		f 4 771 -793 756 758
		mu 0 4 587 588 589 590
		f 4 -759 815 793 770
		mu 0 4 587 590 591 592
		f 4 774 -795 -758 759
		mu 0 4 593 594 595 596
		f 4 -770 -771 765 785
		mu 0 4 597 587 592 598
		f 4 789 -761 -775 773
		mu 0 4 599 600 594 593
		f 4 -764 -767 823 762
		mu 0 4 601 578 577 602
		f 4 -773 817 -760 -819
		mu 0 4 582 581 603 604
		f 4 -806 819 807 -821
		mu 0 4 605 606 607 608
		f 4 -794 822 794 768
		mu 0 4 592 591 595 594
		f 4 -766 -769 760 783
		mu 0 4 598 592 594 600
		f 4 -791 -772 769 787
		mu 0 4 609 588 587 597
		f 4 790 809 791 -811
		mu 0 4 580 610 611 581
		f 4 -792 816 -774 -818
		mu 0 4 581 611 612 603
		f 4 775 814 -777 -816
		mu 0 4 590 613 614 591
		f 4 -757 777 800 -776
		mu 0 4 590 589 615 613
		f 4 -778 811 778 799
		mu 0 4 616 579 582 617
		f 4 776 821 -780 -823
		mu 0 4 591 614 618 595
		f 4 -779 818 780 798
		mu 0 4 617 582 604 619
		f 4 757 779 797 -781
		mu 0 4 596 595 618 620
		f 4 -783 -784 781 -824
		mu 0 4 577 598 600 602
		f 4 -762 -785 -786 782
		mu 0 4 577 576 597 598
		f 4 -788 784 767 -787
		mu 0 4 609 597 576 575
		f 4 786 808 764 -810
		mu 0 4 610 575 578 611
		f 4 -765 763 -789 -817
		mu 0 4 611 578 601 612
		f 4 -763 -782 -790 788
		mu 0 4 601 602 600 599
		f 4 795 820 -797 -822
		mu 0 4 614 605 608 618
		f 4 -801 802 803 -802
		mu 0 4 613 615 621 622
		f 4 801 813 -796 -815
		mu 0 4 613 622 605 614
		f 4 -803 -800 804 -813
		mu 0 4 584 616 617 585
		f 4 -805 -799 806 -820
		mu 0 4 585 617 619 623
		f 4 -808 -807 -798 796
		mu 0 4 608 607 620 618
		f 4 824 837 927 -837
		mu 0 4 624 625 626 627
		f 4 825 838 926 -838
		mu 0 4 625 628 629 626
		f 4 826 842 -829 -842
		mu 0 4 630 631 632 633
		f 4 827 843 -830 -843
		mu 0 4 634 635 636 637
		f 4 828 845 -831 -845
		mu 0 4 633 632 638 639
		f 4 829 846 -832 -846
		mu 0 4 637 636 640 641
		f 4 871 870 -833 -869
		mu 0 4 642 643 644 645
		f 4 873 872 -834 -871
		mu 0 4 646 647 648 649
		f 4 918 917 -835 -916
		mu 0 4 650 651 652 653
		f 4 920 919 -836 -918
		mu 0 4 654 655 656 657
		f 4 -855 -920 922 -860
		mu 0 4 658 656 655 659
		f 4 -857 859 924 -839
		mu 0 4 628 658 659 629
		f 4 -858 -873 875 -861
		mu 0 4 660 648 647 661
		f 4 -859 860 877 -841
		mu 0 4 662 660 661 663
		f 4 853 863 916 915
		mu 0 4 653 664 665 650
		f 4 855 836 914 -864
		mu 0 4 664 624 627 665
		f 4 861 864 869 868
		mu 0 4 645 666 667 642
		f 4 862 839 867 -865
		mu 0 4 666 668 669 667
		f 4 -868 865 841 -867
		mu 0 4 667 669 630 633
		f 4 -870 866 844 847
		mu 0 4 642 667 633 639
		f 4 830 848 -872 -848
		mu 0 4 639 638 643 642
		f 4 831 849 -874 -849
		mu 0 4 641 640 647 646
		f 4 -876 -850 -847 -875
		mu 0 4 661 647 640 636
		f 4 -878 874 -844 -877
		mu 0 4 663 661 636 635
		f 4 -880 876 -828 -879
		mu 0 4 670 663 635 634
		f 4 -881 878 -827 -866
		mu 0 4 669 671 631 630
		f 4 -884 881 -863 -883
		mu 0 4 672 673 668 666
		f 4 -886 882 -862 850
		mu 0 4 674 672 666 645
		f 4 832 851 -888 -851
		mu 0 4 645 644 675 674
		f 4 833 852 -890 -852
		mu 0 4 649 648 676 677
		f 4 -892 -853 857 -891
		mu 0 4 678 676 648 660
		f 4 -894 890 858 -893
		mu 0 4 679 678 660 662
		f 4 880 898 -900 -898
		mu 0 4 671 669 680 681
		f 4 -840 896 900 -899
		mu 0 4 669 668 682 680
		f 4 840 902 -904 -902
		mu 0 4 662 663 683 684
		f 4 879 897 -905 -903
		mu 0 4 663 670 685 683
		f 4 -895 905 907 -907
		mu 0 4 686 679 687 688
		f 4 892 901 -909 -906
		mu 0 4 679 662 684 687
		f 4 -896 906 910 -910
		mu 0 4 673 686 688 689
		f 4 -882 909 911 -897
		mu 0 4 668 673 689 682
		f 4 -915 912 883 -914
		mu 0 4 665 627 673 672
		f 4 -917 913 885 884
		mu 0 4 650 665 672 674
		f 4 887 886 -919 -885
		mu 0 4 674 675 651 650
		f 4 889 888 -921 -887
		mu 0 4 677 676 655 654
		f 4 -923 -889 891 -922
		mu 0 4 659 655 676 678
		f 4 -925 921 893 -924
		mu 0 4 629 659 678 679
		f 4 -927 923 894 -926
		mu 0 4 626 629 679 686
		f 4 -928 925 895 -913
		mu 0 4 627 626 686 673
		f 4 834 929 -931 -929
		mu 0 4 653 652 690 691
		f 4 -854 928 932 -932
		mu 0 4 664 653 691 692
		f 4 835 933 -935 -930
		mu 0 4 657 656 693 694
		f 4 854 935 -937 -934
		mu 0 4 656 658 695 693
		f 4 -825 938 939 -938
		mu 0 4 625 624 696 697
		f 4 -856 931 940 -939
		mu 0 4 624 664 692 696
		f 4 856 941 -943 -936
		mu 0 4 658 628 698 695
		f 4 -826 937 943 -942
		mu 0 4 628 625 697 698
		f 4 997 996 -1059 -995
		mu 0 4 699 700 701 702
		f 5 -1208 -946 1192 1198 -1194
		mu 0 5 703 704 705 706 707
		f 4 948 1209 949 946
		mu 0 4 708 709 710 711
		f 4 -945 951 952 -1049
		mu 0 4 712 713 714 715
		f 4 -949 950 954 -954
		mu 0 4 709 708 716 717
		f 4 -957 -956 945 -1044
		mu 0 4 718 719 705 704
		f 4 955 -958 -952 947
		mu 0 4 720 721 714 713
		f 4 -953 959 960 -1051
		mu 0 4 715 714 722 723
		f 4 -955 958 962 -962
		mu 0 4 717 716 724 725
		f 4 -965 -964 956 -1042
		mu 0 4 726 727 719 718
		f 4 963 -966 -960 957
		mu 0 4 721 728 722 714
		f 4 -961 967 968 -1053
		mu 0 4 723 722 729 730
		f 4 -963 966 970 -970
		mu 0 4 725 724 731 732
		f 4 -973 -972 964 -1040
		mu 0 4 733 734 727 726
		f 4 971 -974 -968 965
		mu 0 4 728 735 729 722
		f 4 -969 975 976 -1055
		mu 0 4 730 729 736 737
		f 4 -971 974 978 -978
		mu 0 4 732 731 738 739
		f 4 -981 -980 972 -1038
		mu 0 4 740 741 734 733
		f 4 979 -982 -976 973
		mu 0 4 735 742 736 729
		f 4 -977 983 984 -1057
		mu 0 4 737 736 743 744
		f 4 -979 982 986 -986
		mu 0 4 739 738 745 746
		f 4 -989 -988 980 -1036
		mu 0 4 747 748 741 740
		f 4 987 -990 -984 981
		mu 0 4 742 749 743 736
		f 4 -1005 -1034 1035 1034
		mu 0 4 750 751 747 740
		f 4 -1007 -1035 1037 1036
		mu 0 4 752 750 740 733
		f 4 -1009 -1037 1039 1038
		mu 0 4 753 752 733 726
		f 4 -1011 -1039 1041 1040
		mu 0 4 754 753 726 718
		f 4 -1013 -1041 1043 1042
		mu 0 4 755 754 718 704
		f 4 -1043 1207 991 -1209
		mu 0 4 755 704 703 756
		f 4 -1017 -992 1045 1044
		mu 0 4 757 758 703 759;
	setAttr ".face[500:999]"
		f 4 992 -1019 -1045 1046
		mu 0 4 712 760 757 759
		f 4 -1020 -993 1048 1047
		mu 0 4 761 760 712 715
		f 4 -1022 -1048 1050 1049
		mu 0 4 762 761 715 723
		f 4 -1024 -1050 1052 1051
		mu 0 4 763 762 723 730
		f 4 -1026 -1052 1054 1053
		mu 0 4 764 763 730 737
		f 4 -1028 -1054 1056 1055
		mu 0 4 765 764 737 744
		f 4 -1032 -999 1058 1032
		mu 0 4 766 767 702 701
		f 4 985 -1004 1004 1005
		mu 0 4 739 746 751 750
		f 4 977 -1006 1006 1007
		mu 0 4 732 739 750 752
		f 4 969 -1008 1008 1009
		mu 0 4 725 732 752 753
		f 4 961 -1010 1010 1011
		mu 0 4 717 725 753 754
		f 4 953 -1012 1012 1013
		mu 0 4 768 717 754 755
		f 4 -1014 1208 1014 -1210
		mu 0 4 768 755 756 769
		f 4 1015 -950 -1015 1016
		mu 0 4 757 711 710 758
		f 4 1017 -947 -1016 1018
		mu 0 4 760 708 711 757
		f 4 -951 -1018 1019 1020
		mu 0 4 770 708 760 761
		f 4 -959 -1021 1021 1022
		mu 0 4 771 770 761 762
		f 4 -967 -1023 1023 1024
		mu 0 4 772 771 762 763
		f 4 -975 -1025 1025 1026
		mu 0 4 773 772 763 764
		f 4 -983 -1027 1027 1028
		mu 0 4 774 773 764 765
		f 4 1001 -1001 -1031 1031
		mu 0 4 766 775 776 767
		f 4 -1002 1002 1003 999
		mu 0 4 777 778 751 746
		f 4 1000 -1000 -987 990
		mu 0 4 779 777 746 745
		f 4 1030 -991 -1029 1029
		mu 0 4 767 776 774 765
		f 4 998 -1030 -1056 1057
		mu 0 4 702 767 765 744
		f 4 994 -1058 -985 993
		mu 0 4 699 702 744 743
		f 4 -998 -994 989 995
		mu 0 4 700 699 743 749
		f 4 -997 -996 988 -1060
		mu 0 4 780 781 748 747
		f 4 -1003 -1033 1059 1033
		mu 0 4 751 778 780 747
		f 5 1170 -1061 -1202 -1203 1199
		mu 0 5 782 783 784 785 786
		f 4 1114 1184 -1116 -1117
		mu 0 4 787 788 789 790
		f 4 -1065 -1063 -1066 -1205
		mu 0 4 791 792 793 794
		f 4 1063 -1197 -1204 1201
		mu 0 4 784 795 796 785
		f 4 1165 -1062 1071 1072
		mu 0 4 797 798 799 800
		f 4 -1064 1067 1073 -1072
		mu 0 4 795 784 801 802
		f 4 1172 -1070 -1068 1060
		mu 0 4 783 803 801 784
		f 4 -1071 -1069 1064 1066
		mu 0 4 804 805 792 791
		f 4 1163 -1073 1079 1080
		mu 0 4 806 797 800 807
		f 4 -1074 1075 1081 -1080
		mu 0 4 802 801 808 809
		f 4 1174 -1078 -1076 1069
		mu 0 4 803 810 808 801
		f 4 -1079 -1077 1070 1074
		mu 0 4 811 812 805 804
		f 4 1161 -1081 1087 1088
		mu 0 4 813 806 807 814
		f 4 -1082 1083 1089 -1088
		mu 0 4 809 808 815 816
		f 4 1176 -1086 -1084 1077
		mu 0 4 810 817 815 808
		f 4 -1087 -1085 1078 1082
		mu 0 4 818 819 812 811
		f 4 1159 -1089 1095 1096
		mu 0 4 820 813 814 821
		f 4 -1090 1091 1097 -1096
		mu 0 4 816 815 822 823
		f 4 1178 -1094 -1092 1085
		mu 0 4 817 824 822 815
		f 4 -1095 -1093 1086 1090
		mu 0 4 825 826 819 818
		f 4 1157 -1097 1103 1104
		mu 0 4 827 820 821 828
		f 4 -1098 1099 1105 -1104
		mu 0 4 823 822 829 830
		f 4 1180 -1102 -1100 1093
		mu 0 4 824 831 829 822
		f 4 -1103 -1101 1094 1098
		mu 0 4 832 833 826 825
		f 4 1101 1182 -1109 -1107
		mu 0 4 829 831 834 835
		f 4 1102 1109 -1111 -1108
		mu 0 4 833 832 836 837
		f 4 -1105 1111 1112 1155
		mu 0 4 827 828 838 839
		f 4 -1106 1106 1113 -1112
		mu 0 4 830 829 835 840
		f 4 1108 1189 -1115 -1191
		mu 0 4 835 834 788 787
		f 4 -1113 1191 1115 1153
		mu 0 4 839 838 841 842
		f 4 -1114 1190 1116 -1192
		mu 0 4 840 835 787 790
		f 4 1110 1186 -1118 -1188
		mu 0 4 837 836 843 844
		f 4 1185 -1153 -1154 1118
		mu 0 4 845 846 839 842
		f 4 -1121 -1186 1119 -1187
		mu 0 4 836 846 845 843
		f 4 -1122 -1123 1120 -1110
		mu 0 4 832 847 846 836
		f 4 -1099 -1124 -1125 1121
		mu 0 4 832 825 848 847
		f 4 -1091 -1126 -1127 1123
		mu 0 4 825 818 849 848
		f 4 -1083 -1128 -1129 1125
		mu 0 4 818 811 850 849
		f 4 -1075 -1130 -1131 1127
		mu 0 4 811 804 851 850
		f 4 -1067 -1132 -1133 1129
		mu 0 4 804 852 853 851
		f 4 1131 1204 -1134 -1206
		mu 0 4 853 852 854 855
		f 4 -1136 1133 1065 -1135
		mu 0 4 856 857 794 793
		f 4 -1137 -1138 1134 1062
		mu 0 4 792 858 856 793
		f 4 1068 -1139 -1140 1136
		mu 0 4 792 859 860 858
		f 4 1076 -1141 -1142 1138
		mu 0 4 859 861 862 860
		f 4 1084 -1143 -1144 1140
		mu 0 4 861 863 864 862
		f 4 1092 -1145 -1146 1142
		mu 0 4 863 865 866 864
		f 4 1100 -1147 -1148 1144
		mu 0 4 865 867 868 866
		f 4 -1150 1146 1107 -1149
		mu 0 4 869 868 867 870
		f 4 1148 1187 -1151 -1189
		mu 0 4 869 870 871 872
		f 4 -1152 1150 1117 -1120
		mu 0 4 873 872 871 874
		f 4 -1155 -1156 1152 1122
		mu 0 4 847 827 839 846
		f 4 1124 -1157 -1158 1154
		mu 0 4 847 848 820 827
		f 4 1126 -1159 -1160 1156
		mu 0 4 848 849 813 820
		f 4 1128 -1161 -1162 1158
		mu 0 4 849 850 806 813
		f 4 1130 -1163 -1164 1160
		mu 0 4 850 851 797 806
		f 4 1132 -1165 -1166 1162
		mu 0 4 851 853 798 797
		f 4 1164 1205 -1167 -1207
		mu 0 4 798 853 855 875
		f 4 -1168 -1169 1166 1135
		mu 0 4 856 782 875 857
		f 4 -1170 -1171 1167 1137
		mu 0 4 858 783 782 856
		f 4 1139 -1172 -1173 1169
		mu 0 4 858 860 803 783
		f 4 1141 -1174 -1175 1171
		mu 0 4 860 862 810 803
		f 4 1143 -1176 -1177 1173
		mu 0 4 862 864 817 810
		f 4 1145 -1178 -1179 1175
		mu 0 4 864 866 824 817
		f 4 1147 -1180 -1181 1177
		mu 0 4 866 868 831 824
		f 4 -1182 -1183 1179 1149
		mu 0 4 869 834 831 868
		f 4 1181 1188 -1184 -1190
		mu 0 4 834 869 872 788
		f 4 -1185 1183 1151 -1119
		mu 0 4 789 788 872 873
		f 5 1194 1202 -1196 944 -1047
		mu 0 5 759 786 785 713 712
		f 4 1195 1203 -1193 -948
		mu 0 4 713 785 796 720
		f 4 1193 1200 -1195 -1046
		mu 0 4 703 707 786 759
		f 5 -1198 -1199 1196 1061 1206
		mu 0 5 875 707 706 799 798
		f 4 -1201 1197 1168 -1200
		mu 0 4 786 707 875 782
		f 4 1210 1244 1388 -1215
		mu 0 4 876 877 878 879
		f 4 1211 1240 1303 -1217
		mu 0 4 880 881 882 883
		f 4 1396 1395 -1214 -1394
		mu 0 4 884 885 886 887
		f 4 1413 1415 -1418 -1419
		mu 0 4 888 889 890 891
		f 4 -1291 1292 1411 -1216
		mu 0 4 892 893 894 895
		f 4 1283 1214 1390 1389
		mu 0 4 896 876 879 897
		f 4 1222 1254 1298 -1225
		mu 0 4 898 899 900 901
		f 4 -1400 1402 1401 -1226
		mu 0 4 902 903 904 905
		f 4 -1287 1289 1288 -1228
		mu 0 4 906 907 908 909
		f 4 -1230 1227 1259 1382
		mu 0 4 910 911 912 913
		f 4 1230 1224 1300 -1233
		mu 0 4 914 898 901 915
		f 4 -1398 1400 1399 -1234
		mu 0 4 916 917 918 919
		f 4 -1286 1287 1286 -1236
		mu 0 4 920 921 907 906
		f 4 -1238 1235 1229 1384
		mu 0 4 922 923 911 910
		f 4 1238 1232 1302 -1241
		mu 0 4 881 914 915 882
		f 4 -1396 1398 1397 -1242
		mu 0 4 886 885 924 925
		f 4 -1416 1420 1422 -1424
		mu 0 4 890 889 926 927
		f 4 -1245 1243 1237 1386
		mu 0 4 878 877 923 922
		f 4 1245 1217 1294 -1248
		mu 0 4 928 929 930 931
		f 4 -1404 1406 1405 -1249
		mu 0 4 932 933 934 935
		f 4 -1441 1442 1444 -1446
		mu 0 4 936 937 938 939
		f 4 -1252 1250 1215 1378
		mu 0 4 940 941 892 895
		f 4 1252 1247 1296 -1255
		mu 0 4 899 928 931 900
		f 4 -1402 1404 1403 -1256
		mu 0 4 905 904 942 943
		f 4 -1449 1449 1440 -1451
		mu 0 4 944 945 937 936
		f 4 -1260 1257 1251 1380
		mu 0 4 913 912 941 940
		f 4 1220 -1392 1394 1393
		mu 0 4 887 946 947 884
		f 4 1426 1427 -1430 -1431
		mu 0 4 948 949 950 951
		f 4 -1433 -1428 1434 1435
		mu 0 4 952 950 949 953
		f 4 -1266 -1237 1233 1228
		mu 0 4 954 955 956 957
		f 4 -1268 -1229 1225 1258
		mu 0 4 958 954 957 959
		f 4 -1453 -1455 1456 1457
		mu 0 4 960 961 962 963
		f 4 -1460 -1458 1461 1462
		mu 0 4 964 960 963 965
		f 4 -1271 -1222 -1406 1408
		mu 0 4 966 967 935 934
		f 4 -1273 1269 -1247 -1272
		mu 0 4 968 969 970 971
		f 4 -1275 1271 -1254 -1274
		mu 0 4 972 968 971 973
		f 4 -1277 1273 -1224 -1276
		mu 0 4 974 972 973 975
		f 4 -1279 1275 -1232 -1278
		mu 0 4 976 974 975 977
		f 4 -1281 1277 -1240 -1280
		mu 0 4 978 976 977 979
		f 4 -1282 1279 -1213 -1261
		mu 0 4 980 978 979 981
		f 4 1261 -1390 1392 1391
		mu 0 4 946 896 897 947
		f 4 1429 1436 -1414 -1438
		mu 0 4 982 983 889 888
		f 4 -1421 -1437 1432 1438
		mu 0 4 926 889 983 984
		f 4 -1288 -1264 1265 1264
		mu 0 4 907 921 955 954
		f 4 -1290 -1265 1267 1266
		mu 0 4 908 907 954 958
		f 4 -1450 -1464 1452 1464
		mu 0 4 937 945 961 960
		f 4 -1443 -1465 1459 1465
		mu 0 4 938 937 960 964
		f 4 -1293 -1269 1270 1410
		mu 0 4 894 893 967 966
		f 4 -1295 1291 1272 -1294
		mu 0 4 931 930 969 968
		f 4 -1297 1293 1274 -1296
		mu 0 4 900 931 968 972
		f 4 -1299 1295 1276 -1298
		mu 0 4 901 900 972 974
		f 4 -1301 1297 1278 -1300
		mu 0 4 915 901 974 976
		f 4 -1303 1299 1280 -1302
		mu 0 4 882 915 976 978
		f 4 -1304 1301 1281 -1283
		mu 0 4 883 882 978 980
		f 4 -1306 -1307 1304 -1246
		mu 0 4 985 986 987 988
		f 4 -1308 -1309 1305 -1253
		mu 0 4 989 990 986 985
		f 4 -1310 -1311 1307 -1223
		mu 0 4 991 992 990 989
		f 4 -1312 -1313 1309 -1231
		mu 0 4 993 994 992 991
		f 4 -1314 -1315 1311 -1239
		mu 0 4 995 996 994 993
		f 4 -1317 1313 -1212 -1316
		mu 0 4 997 996 995 998
		f 4 -1319 1315 1216 1284
		mu 0 4 999 997 998 1000
		f 4 -1321 -1285 1282 1262
		mu 0 4 1001 999 1000 1002
		f 4 -1323 -1263 1260 1218
		mu 0 4 1003 1001 1002 1004
		f 4 1212 1242 -1325 -1219
		mu 0 4 1004 1005 1006 1003
		f 4 -1327 -1243 1239 1234
		mu 0 4 1007 1006 1005 1008
		f 4 -1329 -1235 1231 1226
		mu 0 4 1009 1007 1008 1010
		f 4 -1331 -1227 1223 1256
		mu 0 4 1011 1009 1010 1012
		f 4 -1333 -1257 1253 1249
		mu 0 4 1013 1011 1012 1014
		f 4 -1335 -1250 1246 1219
		mu 0 4 1015 1016 1017 1018
		f 4 -1336 -1337 -1220 -1270
		mu 0 4 1019 1020 1015 1018
		f 4 -1338 -1339 1335 -1292
		mu 0 4 1021 1022 1020 1019
		f 4 -1340 1337 -1218 -1305
		mu 0 4 987 1022 1021 988
		f 4 -1342 -1343 1340 1306
		mu 0 4 986 1023 1024 987
		f 4 -1344 -1345 1341 1308
		mu 0 4 990 1025 1023 986
		f 4 -1346 -1347 1343 1310
		mu 0 4 992 1026 1025 990
		f 4 -1348 -1349 1345 1312
		mu 0 4 994 1027 1026 992
		f 4 -1350 -1351 1347 1314
		mu 0 4 996 1028 1027 994
		f 4 -1353 1349 1316 -1352
		mu 0 4 1029 1028 996 997
		f 4 -1355 1351 1318 1317
		mu 0 4 1030 1029 997 999
		f 4 -1357 -1318 1320 1319
		mu 0 4 1031 1030 999 1001
		f 4 -1359 -1320 1322 1321
		mu 0 4 1032 1031 1001 1003
		f 4 1324 1323 -1361 -1322
		mu 0 4 1003 1006 1033 1032
		f 4 -1363 -1324 1326 1325
		mu 0 4 1034 1033 1006 1007
		f 4 -1365 -1326 1328 1327
		mu 0 4 1035 1034 1007 1009
		f 4 -1367 -1328 1330 1329
		mu 0 4 1036 1035 1009 1011
		f 4 -1369 -1330 1332 1331
		mu 0 4 1037 1036 1011 1013
		f 4 -1371 -1332 1334 1333
		mu 0 4 1038 1039 1016 1015
		f 4 -1372 -1373 -1334 1336
		mu 0 4 1020 1040 1038 1015
		f 4 -1374 -1375 1371 1338
		mu 0 4 1022 1041 1040 1020
		f 4 -1376 1373 1339 -1341
		mu 0 4 1024 1041 1022 987
		f 4 -1378 -1379 1376 1342
		mu 0 4 1023 940 895 1024
		f 4 -1380 -1381 1377 1344
		mu 0 4 1025 913 940 1023
		f 4 -1382 -1383 1379 1346
		mu 0 4 1026 910 913 1025
		f 4 -1384 -1385 1381 1348
		mu 0 4 1027 922 910 1026
		f 4 -1386 -1387 1383 1350
		mu 0 4 1028 878 922 1027
		f 4 -1389 1385 1352 -1388
		mu 0 4 879 878 1028 1029
		f 4 -1391 1387 1354 1353
		mu 0 4 897 879 1029 1030
		f 4 -1393 -1354 1356 1355
		mu 0 4 947 897 1030 1031
		f 4 -1395 -1356 1358 1357
		mu 0 4 884 947 1031 1032
		f 4 1360 1359 -1397 -1358
		mu 0 4 1032 1033 885 884
		f 4 -1399 -1360 1362 1361
		mu 0 4 924 885 1033 1034
		f 4 -1401 -1362 1364 1363
		mu 0 4 903 924 1034 1035
		f 4 -1403 -1364 1366 1365
		mu 0 4 904 903 1035 1036
		f 4 -1405 -1366 1368 1367
		mu 0 4 942 904 1036 1037
		f 4 -1407 -1368 1370 1369
		mu 0 4 934 933 1039 1038
		f 4 -1408 -1409 -1370 1372
		mu 0 4 1040 966 934 1038
		f 4 -1410 -1411 1407 1374
		mu 0 4 1041 894 966 1040
		f 4 -1412 1409 1375 -1377
		mu 0 4 895 894 1041 1024
		f 4 -1211 1416 1524 -1415
		mu 0 4 877 876 1042 1043
		f 4 -1284 1412 1522 -1417
		mu 0 4 876 896 1044 1042
		f 4 1285 1421 1508 -1420
		mu 0 4 1045 1046 1047 1048
		f 4 -1244 1414 1525 -1422
		mu 0 4 923 877 1043 1049
		f 4 1213 1425 1516 -1425
		mu 0 4 887 886 1050 1051
		f 4 -1221 1424 1518 -1429
		mu 0 4 946 887 1051 1052
		f 4 1241 1433 1514 -1426
		mu 0 4 886 925 1053 1050
		f 4 1236 1431 1512 -1434
		mu 0 4 1054 1055 1056 1057
		f 4 -1262 1428 1520 -1413
		mu 0 4 896 946 1052 1044
		f 4 1263 1419 1510 -1432
		mu 0 4 1055 1045 1048 1056
		f 4 1290 1443 1570 -1442
		mu 0 4 893 892 1058 1059
		f 4 -1251 1439 1568 -1444
		mu 0 4 892 941 1060 1058
		f 4 -1289 1446 1584 -1448
		mu 0 4 1061 1062 1063 1064
		f 4 -1258 1447 1585 -1440
		mu 0 4 941 912 1065 1060
		f 4 -1259 1453 1580 -1452
		mu 0 4 1066 1067 1068 1069
		f 4 1255 1455 1578 -1454
		mu 0 4 905 943 1070 1071
		f 4 1248 1460 1576 -1456
		mu 0 4 932 935 1072 1073
		f 4 1221 1458 1574 -1461
		mu 0 4 935 967 1074 1072
		f 4 -1267 1451 1582 -1447
		mu 0 4 1062 1066 1069 1063
		f 4 1268 1441 1572 -1459
		mu 0 4 967 893 1059 1074
		f 4 -1469 1466 -1423 -1468
		mu 0 4 1075 1076 1077 1078
		f 4 -1471 1467 -1439 -1470
		mu 0 4 1079 1075 1078 1080
		f 4 -1473 1469 -1436 -1472
		mu 0 4 1081 1082 952 953
		f 4 -1475 1471 -1435 -1474
		mu 0 4 1083 1081 953 949
		f 4 -1477 1473 -1427 -1476
		mu 0 4 1084 1083 949 948
		f 4 -1479 1475 1430 -1478
		mu 0 4 1085 1084 948 951
		f 4 -1481 1477 1437 -1480
		mu 0 4 1086 1085 951 1087
		f 4 -1483 1479 1418 -1482
		mu 0 4 1088 1086 1087 1089
		f 4 -1485 1481 1417 -1484
		mu 0 4 1090 1091 891 890
		f 4 -1486 1483 1423 -1467
		mu 0 4 1092 1093 1094 1095
		f 4 -1489 1486 1468 -1488
		mu 0 4 1096 1097 1076 1075
		f 4 -1491 1487 1470 -1490
		mu 0 4 1098 1096 1075 1079
		f 4 -1493 1489 1472 -1492
		mu 0 4 1099 1098 1079 1100
		f 4 -1495 1491 1474 -1494
		mu 0 4 1101 1102 1081 1083
		f 4 -1497 1493 1476 -1496
		mu 0 4 1103 1101 1083 1084
		f 4 -1499 1495 1478 -1498
		mu 0 4 1104 1103 1084 1085
		f 4 -1501 1497 1480 -1500
		mu 0 4 1105 1104 1085 1086
		f 4 -1503 1499 1482 -1502
		mu 0 4 1106 1105 1086 1088
		f 4 -1505 1501 1484 -1504
		mu 0 4 1107 1106 1088 1093
		f 4 -1506 1503 1485 -1487
		mu 0 4 1108 1107 1093 1092
		f 4 -1509 1506 1488 -1508
		mu 0 4 1048 1047 1097 1096
		f 4 -1511 1507 1490 -1510
		mu 0 4 1056 1048 1096 1098
		f 4 -1513 1509 1492 -1512
		mu 0 4 1057 1056 1098 1099
		f 4 -1515 1511 1494 -1514
		mu 0 4 1050 1053 1102 1101
		f 4 -1517 1513 1496 -1516
		mu 0 4 1051 1050 1101 1103
		f 4 -1519 1515 1498 -1518
		mu 0 4 1109 1110 1111 1112
		f 4 -1521 1517 1500 -1520
		mu 0 4 1044 1052 1104 1105
		f 4 -1523 1519 1502 -1522
		mu 0 4 1042 1044 1105 1106
		f 4 -1525 1521 1504 -1524
		mu 0 4 1043 1042 1106 1107
		f 4 -1526 1523 1505 -1507
		mu 0 4 1049 1043 1107 1108
		f 4 -1529 1526 1445 -1528
		mu 0 4 1113 1114 1115 1116
		f 4 -1531 1527 -1445 -1530
		mu 0 4 1117 1113 1116 1118
		f 4 -1533 1529 -1466 -1532
		mu 0 4 1119 1117 1118 1120
		f 4 -1535 1531 -1463 -1534
		mu 0 4 1121 1119 1120 1122
		f 4 -1537 1533 -1462 -1536
		mu 0 4 1123 1124 1125 1126
		f 4 -1539 1535 -1457 -1538
		mu 0 4 1127 1123 1126 1128
		f 4 -1541 1537 1454 -1540
		mu 0 4 1129 1130 1131 1132
		f 4 -1543 1539 1463 -1542
		mu 0 4 1133 1129 1132 1134
		f 4 -1545 1541 1448 -1544
		mu 0 4 1135 1133 1134 1136
		f 4 -1546 1543 1450 -1527
		mu 0 4 1114 1137 1138 1115
		f 4 -1549 1546 1528 -1548
		mu 0 4 1139 1140 1114 1113
		f 4 -1551 1547 1530 -1550
		mu 0 4 1141 1139 1113 1117
		f 4 -1553 1549 1532 -1552
		mu 0 4 1142 1141 1117 1119
		f 4 -1555 1551 1534 -1554
		mu 0 4 1143 1142 1119 1121
		f 4 -1557 1553 1536 -1556
		mu 0 4 1144 1143 1121 1145
		f 4 -1559 1555 1538 -1558
		mu 0 4 1146 1147 1123 1127
		f 4 -1561 1557 1540 -1560
		mu 0 4 1148 1149 1130 1129
		f 4 -1563 1559 1542 -1562
		mu 0 4 1150 1148 1129 1133
		f 4 -1565 1561 1544 -1564
		mu 0 4 1151 1150 1133 1135
		f 4 -1566 1563 1545 -1547
		mu 0 4 1140 1152 1137 1114
		f 4 -1569 1566 1548 -1568
		mu 0 4 1058 1060 1140 1139
		f 4 -1571 1567 1550 -1570
		mu 0 4 1059 1058 1139 1141
		f 4 -1573 1569 1552 -1572
		mu 0 4 1074 1059 1141 1142
		f 4 -1575 1571 1554 -1574
		mu 0 4 1072 1074 1142 1143
		f 4 -1577 1573 1556 -1576
		mu 0 4 1073 1072 1143 1144
		f 4 -1579 1575 1558 -1578
		mu 0 4 1071 1070 1147 1146
		f 4 -1581 1577 1560 -1580
		mu 0 4 1069 1068 1149 1148
		f 4 -1583 1579 1562 -1582
		mu 0 4 1063 1069 1148 1150
		f 4 -1585 1581 1564 -1584
		mu 0 4 1064 1063 1150 1151
		f 4 -1586 1583 1565 -1567
		mu 0 4 1060 1065 1152 1140
		f 4 1587 -1599 -1587 1597
		mu 0 4 1153 1154 1155 1156
		f 4 1588 -1601 -1588 1599
		mu 0 4 1157 1158 1154 1153
		f 4 1589 -1603 -1589 1601
		mu 0 4 1159 1160 1158 1157
		f 4 1590 -1605 -1590 1603
		mu 0 4 1161 1162 1160 1163
		f 4 1591 -1607 -1591 1605
		mu 0 4 1164 1165 1162 1161
		f 4 1592 -1609 -1592 1607
		mu 0 4 1166 1167 1165 1164
		f 4 1593 -1611 -1593 1609
		mu 0 4 1168 1169 1167 1166
		f 4 1594 -1613 -1594 1611
		mu 0 4 1170 1171 1169 1172
		f 4 1595 -1615 -1595 1613
		mu 0 4 1173 1174 1171 1170
		f 4 1596 -1617 -1596 1615
		mu 0 4 1175 1176 1174 1173
		f 4 1661 -1618 -1597 1638
		mu 0 4 1177 1178 1176 1179
		f 4 1629 -1622 1616 1617
		mu 0 4 1178 1180 1174 1176
		f 4 1630 -1623 -1630 1618
		mu 0 4 1181 1182 1180 1178
		f 4 1631 -1624 -1631 1619
		mu 0 4 1183 1184 1182 1181
		f 4 1598 -1625 -1632 1620
		mu 0 4 1155 1154 1184 1183
		f 4 1632 -1626 1614 1621
		mu 0 4 1180 1185 1171 1174
		f 4 1633 -1627 -1633 1622
		mu 0 4 1182 1186 1185 1180
		f 4 1634 -1628 -1634 1623
		mu 0 4 1184 1187 1186 1182
		f 4 1600 -1629 -1635 1624
		mu 0 4 1154 1158 1187 1184
		f 4 1635 1610 1612 1625
		mu 0 4 1185 1167 1169 1171
		f 4 1636 1608 -1636 1626
		mu 0 4 1186 1165 1167 1185
		f 4 1637 1606 -1637 1627
		mu 0 4 1187 1162 1165 1186
		f 4 1602 1604 -1638 1628
		mu 0 4 1158 1160 1162 1187
		f 4 -1616 1642 -1651 -1639
		mu 0 4 1179 1188 1189 1177
		f 4 1650 1643 -1652 -1640
		mu 0 4 1177 1189 1190 1191
		f 4 1651 1644 -1653 -1641
		mu 0 4 1191 1190 1192 1193
		f 4 1652 1645 -1598 -1642
		mu 0 4 1193 1192 1153 1156
		f 4 -1614 1646 -1654 -1643
		mu 0 4 1188 1194 1195 1189
		f 4 1653 1647 -1655 -1644
		mu 0 4 1189 1195 1196 1190
		f 4 1654 1648 -1656 -1645
		mu 0 4 1190 1196 1197 1192
		f 4 1655 1649 -1600 -1646
		mu 0 4 1192 1197 1157 1153
		f 4 -1612 -1610 -1657 -1647
		mu 0 4 1194 1198 1199 1195
		f 4 1656 -1608 -1658 -1648
		mu 0 4 1195 1199 1200 1196
		f 4 1657 -1606 -1659 -1649
		mu 0 4 1196 1200 1201 1197
		f 4 1658 -1604 -1602 -1650
		mu 0 4 1197 1201 1159 1157
		f 4 1641 1586 -1621 -1660
		mu 0 4 1193 1156 1155 1183
		f 4 1659 -1620 -1661 1640
		mu 0 4 1193 1183 1181 1191
		f 4 1660 -1619 -1662 1639
		mu 0 4 1191 1181 1178 1177
		f 4 1662 1665 -1672 -1664
		mu 0 4 1202 1203 1204 1205
		f 4 1664 1667 -1674 -1666
		mu 0 4 1203 1206 1207 1204
		f 4 1666 1669 -1676 -1668
		mu 0 4 1206 1208 1209 1207
		f 4 1668 1670 -1678 -1670
		mu 0 4 1208 1210 1211 1209
		f 4 1671 1674 -1681 -1673
		mu 0 4 1205 1204 1212 1213
		f 4 1673 1676 -1683 -1675
		mu 0 4 1204 1207 1214 1212
		f 4 1675 1678 -1684 -1677
		mu 0 4 1207 1209 1215 1214
		f 4 1677 1679 -1685 -1679
		mu 0 4 1209 1211 1216 1215
		f 4 1685 -1690 -1682 1680
		mu 0 4 1212 1217 1218 1213
		f 4 1686 -1691 -1686 1682
		mu 0 4 1214 1219 1217 1212
		f 4 1687 -1692 -1687 1683
		mu 0 4 1215 1220 1219 1214
		f 4 1688 -1693 -1688 1684
		mu 0 4 1216 1221 1220 1215
		f 4 -1694 1713 1698 -1736
		mu 0 4 1222 1223 1224 1225
		f 4 -1695 1735 1699 -1737
		mu 0 4 1226 1227 1228 1229
		f 4 -1696 1736 1700 1720
		mu 0 4 1230 1231 1232 1233
		f 4 -1697 1732 1701 -1734
		mu 0 4 1234 1235 1236 1237
		f 4 -1698 1733 1702 -1735
		mu 0 4 1238 1234 1237 1239
		f 4 -1745 1742 1746 -1748
		mu 0 4 1240 1241 1242 1243
		f 4 -1750 1747 1751 -1753
		mu 0 4 1244 1240 1243 1245
		f 4 -1755 1752 1756 1757
		mu 0 4 1246 1244 1245 1247
		f 4 -1761 1762 1764 -1766
		mu 0 4 1248 1249 1250 1251
		f 4 -1767 1765 1767 -1740
		mu 0 4 1252 1248 1251 1253
		f 4 1708 -1716 -1704 1714
		mu 0 4 1254 1255 1256 1257
		f 4 1709 -1717 -1705 1715
		mu 0 4 1258 1259 1260 1261
		f 4 1710 1722 -1706 1716
		mu 0 4 1259 1262 1263 1260
		f 4 1711 -1719 -1707 1717
		mu 0 4 1264 1265 1266 1267
		f 4 1712 -1731 -1708 1718
		mu 0 4 1265 1268 1269 1266
		f 4 -1781 1778 1782 -1784
		mu 0 4 1270 1271 1272 1273
		f 4 -1786 1783 1787 -1789
		mu 0 4 1274 1270 1273 1275
		f 4 -1791 1788 1792 1793
		mu 0 4 1276 1274 1275 1277
		f 4 -1797 1798 1800 -1802
		mu 0 4 1278 1279 1280 1281
		f 4 -1803 1801 1803 -1776
		mu 0 4 1282 1278 1281 1283
		f 4 -1770 -1772 1772 -1763
		mu 0 4 1249 1284 1285 1250
		f 4 -1727 -1728 1724 -1733
		mu 0 4 1235 1286 1287 1236
		f 4 -1806 -1808 1808 -1799
		mu 0 4 1279 1288 1289 1280
		f 4 1728 -1718 -1724 -1732
		mu 0 4 1290 1264 1267 1291
		f 4 -1723 -1722 -1721 -1720
		mu 0 4 1292 1293 1230 1233
		f 4 1729 1731 1725 1727
		mu 0 4 1294 1290 1291 1295
		f 4 -1699 1740 1744 -1744
		mu 0 4 1225 1224 1296 1297
		f 4 1703 1745 -1747 -1742
		mu 0 4 1257 1256 1243 1242
		f 4 -1700 1743 1749 -1749
		mu 0 4 1298 1225 1297 1299
		f 4 1704 1750 -1752 -1746
		mu 0 4 1256 1300 1245 1243
		f 4 -1701 1748 1754 -1754
		mu 0 4 1301 1302 1244 1246
		f 4 1705 1755 -1757 -1751
		mu 0 4 1300 1303 1247 1245
		f 4 1719 1753 -1758 -1756
		mu 0 4 1303 1301 1246 1247
		f 4 -1702 1758 1760 -1760
		mu 0 4 1237 1236 1304 1305
		f 4 1706 1763 -1765 -1762
		mu 0 4 1267 1266 1251 1250
		f 4 -1703 1759 1766 -1738
		mu 0 4 1239 1237 1305 1306
		f 4 1707 1738 -1768 -1764
		mu 0 4 1266 1269 1253 1251
		f 4 -1725 1768 1769 -1759
		mu 0 4 1236 1287 1307 1304
		f 4 -1726 1770 1771 -1769
		mu 0 4 1295 1291 1285 1284
		f 4 1723 1761 -1773 -1771
		mu 0 4 1291 1267 1250 1285
		f 4 -1709 1776 1780 -1780
		mu 0 4 1255 1254 1271 1270
		f 4 1693 1781 -1783 -1778
		mu 0 4 1223 1222 1273 1272
		f 4 -1710 1779 1785 -1785
		mu 0 4 1308 1255 1270 1274
		f 4 1694 1786 -1788 -1782
		mu 0 4 1222 1309 1275 1273
		f 4 -1711 1784 1790 -1790
		mu 0 4 1310 1308 1274 1276
		f 4 1695 1791 -1793 -1787
		mu 0 4 1309 1311 1277 1275
		f 4 1721 1789 -1794 -1792
		mu 0 4 1312 1310 1276 1277
		f 4 -1712 1794 1796 -1796
		mu 0 4 1265 1264 1279 1278
		f 4 1696 1799 -1801 -1798
		mu 0 4 1235 1234 1281 1280
		f 4 -1713 1795 1802 -1774
		mu 0 4 1268 1265 1278 1282
		f 4 1697 1774 -1804 -1800
		mu 0 4 1234 1238 1283 1281
		f 4 -1729 1804 1805 -1795
		mu 0 4 1264 1290 1288 1279
		f 4 -1730 1806 1807 -1805
		mu 0 4 1290 1294 1289 1288
		f 4 1726 1797 -1809 -1807
		mu 0 4 1286 1235 1280 1289
		f 4 1737 1810 -1812 -1810
		mu 0 4 1239 1306 1313 1314
		f 4 1739 1812 -1814 -1811
		mu 0 4 1252 1253 1315 1316
		f 4 -1739 1814 1815 -1813
		mu 0 4 1253 1269 1317 1315
		f 4 -1815 1730 1818 -1820
		mu 0 4 1317 1269 1268 1318
		f 4 -1818 1734 1809 -1817
		mu 0 4 1319 1238 1239 1314
		f 4 1773 1820 -1822 -1819
		mu 0 4 1268 1282 1320 1318
		f 4 1775 1822 -1824 -1821
		mu 0 4 1282 1283 1321 1320
		f 4 -1775 1817 1824 -1823
		mu 0 4 1283 1238 1319 1321
		f 4 -1741 1825 1827 -1827
		mu 0 4 1296 1224 1322 1323
		f 4 1741 1829 -1831 -1829
		mu 0 4 1257 1242 1324 1325
		f 4 -1743 1826 1831 -1830
		mu 0 4 1242 1241 1326 1324
		f 4 -1826 -1714 1833 1834
		mu 0 4 1322 1224 1223 1327
		f 4 -1836 -1715 1828 1832
		mu 0 4 1328 1254 1257 1325
		f 4 -1777 1835 1837 -1837
		mu 0 4 1271 1254 1328 1329
		f 4 1777 1838 -1840 -1834
		mu 0 4 1223 1272 1330 1327
		f 4 -1779 1836 1840 -1839
		mu 0 4 1272 1271 1329 1330
		f 4 1811 1842 -1844 -1842
		mu 0 4 1314 1313 1331 1332
		f 4 1813 1844 -1846 -1843
		mu 0 4 1316 1315 1333 1334
		f 4 -1816 1846 1847 -1845
		mu 0 4 1315 1317 1335 1333
		f 4 -1847 1819 1850 -1852
		mu 0 4 1335 1317 1318 1336
		f 4 -1850 1816 1841 -1849
		mu 0 4 1337 1319 1314 1332
		f 4 1821 1852 -1854 -1851
		mu 0 4 1318 1320 1338 1336
		f 4 1823 1854 -1856 -1853
		mu 0 4 1320 1321 1339 1338
		f 4 -1825 1849 1856 -1855
		mu 0 4 1321 1319 1337 1339
		f 4 -1828 1857 1859 -1859
		mu 0 4 1323 1322 1340 1341
		f 4 1830 1861 -1863 -1861
		mu 0 4 1342 1343 1344 1345
		f 4 -1832 1858 1863 -1862
		mu 0 4 1324 1326 1346 1347
		f 4 -1858 -1835 1865 1866
		mu 0 4 1340 1322 1327 1348
		f 4 -1868 -1833 1860 1864
		mu 0 4 1349 1328 1325 1350
		f 4 -1838 1867 1869 -1869
		mu 0 4 1329 1328 1349 1351
		f 4 1839 1870 -1872 -1866
		mu 0 4 1327 1330 1352 1348
		f 4 -1841 1868 1872 -1871
		mu 0 4 1330 1329 1351 1352
		f 4 1843 1874 -1876 -1874
		mu 0 4 1332 1331 1353 1354
		f 4 1845 1876 -1878 -1875
		mu 0 4 1334 1333 1355 1356
		f 4 -1848 1878 1879 -1877
		mu 0 4 1333 1335 1357 1355
		f 4 -1879 1851 1882 -1884
		mu 0 4 1357 1335 1336 1358
		f 4 -1882 1848 1873 -1881
		mu 0 4 1359 1337 1332 1354
		f 4 1853 1884 -1886 -1883
		mu 0 4 1336 1338 1360 1358
		f 4 1855 1886 -1888 -1885
		mu 0 4 1338 1339 1361 1360
		f 4 -1857 1881 1888 -1887
		mu 0 4 1339 1337 1359 1361
		f 4 -1860 1889 1891 -1891
		mu 0 4 1341 1340 1362 1363
		f 4 1862 1893 -1895 -1893
		mu 0 4 1364 1347 1365 1366
		f 4 -1864 1890 1895 -1894
		mu 0 4 1347 1346 1367 1365
		f 4 -1890 -1867 1897 1898
		mu 0 4 1362 1340 1348 1368
		f 4 -1900 -1865 1892 1896
		mu 0 4 1369 1349 1350 1366
		f 4 -1870 1899 1901 -1901
		mu 0 4 1351 1349 1369 1370
		f 4 1871 1902 -1904 -1898
		mu 0 4 1348 1352 1371 1368
		f 4 -1873 1900 1904 -1903
		mu 0 4 1352 1351 1370 1371
		f 4 -1880 1905 1894 -1907
		mu 0 4 1355 1357 1366 1365
		f 4 1875 1907 -1892 -1909
		mu 0 4 1372 1373 1374 1375
		f 4 -1897 -1906 1883 1909
		mu 0 4 1369 1366 1357 1358
		f 4 1885 1910 -1902 -1910
		mu 0 4 1358 1360 1370 1369
		f 4 -1889 1911 1903 -1913
		mu 0 4 1361 1359 1368 1371
		f 4 1887 1912 -1905 -1911
		mu 0 4 1360 1361 1371 1370
		f 4 1877 1906 -1896 -1908
		mu 0 4 1356 1355 1365 1367
		f 4 -1899 -1912 1880 1908
		mu 0 4 1375 1376 1377 1372
		f 4 1913 1930 2027 -1930
		mu 0 4 1378 1379 1380 1381
		f 4 1914 1931 2025 -1931
		mu 0 4 1379 1382 1383 1380
		f 4 1915 1932 2023 -1932
		mu 0 4 1382 1384 1385 1386
		f 4 1916 1933 2021 -1933
		mu 0 4 1384 1387 1388 1385
		f 4 1917 1934 2019 -1934
		mu 0 4 1387 1389 1390 1388
		f 4 1918 1935 2032 -1935
		mu 0 4 1389 1391 1392 1390
		f 4 1919 1936 2031 -1936
		mu 0 4 1391 1393 1394 1392
		f 4 1920 1929 2029 -1937
		mu 0 4 1393 1395 1396 1394
		f 4 2083 2082 -2072 -2074
		mu 0 4 1397 1398 1399 1400
		f 8 1921 1922 1923 1924 1925 1926 1927 1928
		mu 0 8 1401 1402 1403 1404 1405 1406 1407 1408
		f 4 -1940 1937 -1926 -1939
		mu 0 4 1409 1410 1406 1405
		f 4 -1942 1938 -1925 -1941
		mu 0 4 1411 1409 1405 1404
		f 4 -1944 1940 -1924 -1943
		mu 0 4 1412 1411 1404 1403
		f 4 -1946 1942 -1923 -1945
		mu 0 4 1413 1412 1403 1414
		f 4 -1948 1944 -1922 -1947
		mu 0 4 1415 1413 1414 1416
		f 4 -1950 1946 -1929 -1949
		mu 0 4 1417 1418 1401 1408
		f 4 -1952 1948 -1928 -1951
		mu 0 4 1419 1417 1408 1407
		f 4 -1953 1950 -1927 -1938
		mu 0 4 1410 1419 1407 1406
		f 4 -1956 1953 1939 -1955
		mu 0 4 1420 1421 1410 1409
		f 4 -1958 1954 1941 -1957
		mu 0 4 1422 1420 1409 1411
		f 4 -1960 1956 1943 -1959
		mu 0 4 1423 1422 1411 1412
		f 4 -1962 1958 1945 -1961
		mu 0 4 1424 1423 1412 1413
		f 4 -1964 1960 1947 -1963
		mu 0 4 1425 1424 1413 1415
		f 4 -1966 1962 1949 -1965
		mu 0 4 1426 1427 1418 1417
		f 4 -1968 1964 1951 -1967
		mu 0 4 1428 1426 1417 1419
		f 4 -1969 1966 1952 -1954
		mu 0 4 1421 1428 1419 1410
		f 4 -1972 1969 1955 -1971
		mu 0 4 1429 1430 1421 1420
		f 4 -1974 1970 1957 -1973
		mu 0 4 1431 1429 1420 1422
		f 4 -1976 1972 1959 -1975
		mu 0 4 1432 1431 1422 1423
		f 4 -1978 1974 1961 -1977
		mu 0 4 1433 1432 1423 1424
		f 4 -1980 1976 1963 -1979
		mu 0 4 1434 1433 1424 1425
		f 4 -1982 1978 1965 -1981
		mu 0 4 1435 1436 1427 1426
		f 4 -1984 1980 1967 -1983
		mu 0 4 1437 1435 1426 1428
		f 4 -1985 1982 1968 -1970
		mu 0 4 1430 1437 1428 1421
		f 4 -1988 1985 2087 -1987
		mu 0 4 1438 1439 1440 1441
		f 4 -1990 1986 2089 -1989
		mu 0 4 1442 1438 1441 1443
		f 4 -1992 1988 2091 -1991
		mu 0 4 1444 1442 1443 1445
		f 4 -1994 1990 2093 -1993
		mu 0 4 1446 1444 1445 1447
		f 4 -1996 1992 2095 -1995
		mu 0 4 1448 1446 1447 1449
		f 4 -1998 1994 2097 -1997
		mu 0 4 1450 1451 1452 1453
		f 4 -2000 1996 2099 -1999
		mu 0 4 1454 1450 1453 1455
		f 4 -2001 1998 2100 -1986
		mu 0 4 1439 1454 1455 1440
		f 4 -2004 2001 1987 -2003
		mu 0 4 1456 1457 1439 1438
		f 4 -2006 2002 1989 -2005
		mu 0 4 1458 1456 1438 1442
		f 4 -2008 2004 1991 -2007
		mu 0 4 1459 1460 1461 1462
		f 4 -2010 2006 1993 -2009
		mu 0 4 1463 1464 1444 1446
		f 4 -2012 2008 1995 -2011
		mu 0 4 1465 1463 1446 1448
		f 4 -2014 2010 1997 -2013
		mu 0 4 1466 1467 1451 1450
		f 4 -2016 2012 1999 -2015
		mu 0 4 1468 1466 1450 1454
		f 4 -2017 2014 2000 -2002
		mu 0 4 1457 1468 1454 1439;
	setAttr ".face[1000:1499]"
		f 4 -2020 2017 2003 -2019
		mu 0 4 1388 1390 1457 1456
		f 4 -2022 2018 2005 -2021
		mu 0 4 1385 1388 1456 1458
		f 4 -2024 2020 2007 -2023
		mu 0 4 1386 1385 1458 1464
		f 4 -2026 2022 2009 -2025
		mu 0 4 1380 1386 1464 1463
		f 4 -2028 2024 2011 -2027
		mu 0 4 1381 1380 1463 1465
		f 4 -2030 2026 2013 -2029
		mu 0 4 1394 1396 1467 1466
		f 4 -2032 2028 2015 -2031
		mu 0 4 1392 1394 1466 1468
		f 4 -2033 2030 2016 -2018
		mu 0 4 1390 1392 1468 1457
		f 4 -1921 2033 2035 -2035
		mu 0 4 1469 1470 1471 1472
		f 4 -1920 2036 2037 -2034
		mu 0 4 1470 1473 1474 1471
		f 4 -1919 2038 2039 -2037
		mu 0 4 1473 1475 1476 1474
		f 4 -1918 2040 2041 -2039
		mu 0 4 1475 1477 1478 1476
		f 4 -1917 2042 2043 -2041
		mu 0 4 1477 1479 1480 1478
		f 4 -1916 2044 2045 -2043
		mu 0 4 1479 1481 1482 1480
		f 4 -1915 2046 2047 -2045
		mu 0 4 1481 1483 1484 1482
		f 4 -1914 2034 2048 -2047
		mu 0 4 1483 1469 1472 1484
		f 4 -2036 2049 2051 -2051
		mu 0 4 1472 1471 1485 1486
		f 4 -2038 2052 2053 -2050
		mu 0 4 1471 1474 1487 1485
		f 4 -2040 2054 2055 -2053
		mu 0 4 1474 1476 1488 1487
		f 4 -2042 2056 2057 -2055
		mu 0 4 1476 1478 1489 1488
		f 4 -2044 2058 2059 -2057
		mu 0 4 1478 1480 1490 1489
		f 4 -2046 2060 2061 -2059
		mu 0 4 1480 1482 1491 1490
		f 4 -2048 2062 2063 -2061
		mu 0 4 1482 1484 1492 1491
		f 4 -2049 2050 2064 -2063
		mu 0 4 1484 1472 1486 1492
		f 4 -2052 2065 2067 -2067
		mu 0 4 1486 1485 1493 1494
		f 4 -2054 2068 2069 -2066
		mu 0 4 1485 1487 1399 1493
		f 4 -2056 2070 2071 -2069
		mu 0 4 1487 1488 1400 1399
		f 4 -2058 2072 2073 -2071
		mu 0 4 1488 1489 1397 1400
		f 4 -2060 2074 2075 -2073
		mu 0 4 1489 1490 1495 1397
		f 4 -2062 2076 2077 -2075
		mu 0 4 1490 1491 1496 1495
		f 4 -2064 2078 2079 -2077
		mu 0 4 1491 1492 1497 1496
		f 4 -2065 2066 2080 -2079
		mu 0 4 1492 1486 1494 1497
		f 4 -2068 -2070 -2083 2084
		mu 0 4 1494 1493 1399 1398
		f 4 2081 -2084 -2076 -2078
		mu 0 4 1496 1398 1397 1495
		f 4 -2085 -2082 -2080 -2081
		mu 0 4 1494 1398 1496 1497
		f 4 -2088 2085 1971 -2087
		mu 0 4 1441 1440 1430 1429
		f 4 -2090 2086 1973 -2089
		mu 0 4 1443 1441 1429 1431
		f 4 -2092 2088 1975 -2091
		mu 0 4 1445 1443 1431 1432
		f 4 -2094 2090 1977 -2093
		mu 0 4 1447 1445 1432 1433
		f 4 -2096 2092 1979 -2095
		mu 0 4 1449 1447 1433 1434
		f 4 -2098 2094 1981 -2097
		mu 0 4 1453 1452 1436 1435
		f 4 -2100 2096 1983 -2099
		mu 0 4 1455 1453 1435 1437
		f 4 -2101 2098 1984 -2086
		mu 0 4 1440 1455 1437 1430
		f 4 -2105 2103 2102 -2102
		mu 0 4 1498 1499 1500 1501
		f 4 -2108 2101 2106 -2106
		mu 0 4 1502 1498 1501 1503
		f 4 -2111 2105 2109 -2109
		mu 0 4 1504 1502 1503 1505
		f 4 -2114 2108 2112 -2112
		mu 0 4 1506 1504 1505 1507
		f 4 -2117 2111 2115 -2115
		mu 0 4 1508 1509 1510 1511
		f 4 -2120 2114 2118 -2118
		mu 0 4 1512 1508 1511 1513
		f 4 -2123 2117 2121 -2121
		mu 0 4 1514 1512 1513 1515
		f 4 -2126 2120 2124 -2124
		mu 0 4 1516 1517 1515 1518
		f 4 -2129 2123 2127 -2127
		mu 0 4 1519 1520 1521 1522
		f 4 -2132 2126 2130 -2130
		mu 0 4 1523 1519 1522 1524
		f 4 -2135 2129 2133 -2133
		mu 0 4 1525 1523 1524 1526
		f 4 -2134 -2131 2136 -2136
		mu 0 4 1526 1524 1527 1528
		f 4 -2140 2135 2138 -2138
		mu 0 4 1529 1530 1531 1532
		f 4 -2143 2137 2141 -2141
		mu 0 4 1533 1529 1532 1534
		f 4 -2145 2140 2143 -2103
		mu 0 4 1535 1533 1534 1536
		f 4 -2137 -2128 2146 -2146
		mu 0 4 1528 1527 1518 1537
		f 4 -2139 2145 2148 -2148
		mu 0 4 1538 1528 1537 1539
		f 4 -2142 2147 2150 -2150
		mu 0 4 1540 1538 1539 1541
		f 4 -2144 2149 2151 -2107
		mu 0 4 1501 1540 1541 1503
		f 4 -2147 -2125 -2122 -2153
		mu 0 4 1537 1518 1515 1513
		f 4 -2149 2152 -2119 -2154
		mu 0 4 1539 1537 1513 1511
		f 4 -2151 2153 -2116 -2155
		mu 0 4 1541 1539 1511 1510
		f 4 -2152 2154 -2113 -2110
		mu 0 4 1503 1541 1510 1505
		f 4 2134 2156 -2156 2131
		mu 0 4 1523 1525 1542 1519
		f 4 2159 2158 -2158 -2157
		mu 0 4 1525 1543 1544 1542
		f 4 2162 2161 -2161 -2159
		mu 0 4 1543 1545 1546 1544
		f 4 2164 2104 -2164 -2162
		mu 0 4 1545 1499 1498 1546
		f 4 2155 2166 -2166 2128
		mu 0 4 1519 1542 1547 1520
		f 4 2157 2168 -2168 -2167
		mu 0 4 1542 1544 1548 1547
		f 4 2160 2170 -2170 -2169
		mu 0 4 1544 1546 1549 1548
		f 4 2163 2107 -2172 -2171
		mu 0 4 1546 1498 1502 1549
		f 4 2165 2172 2122 2125
		mu 0 4 1520 1547 1550 1551
		f 4 2167 2173 2119 -2173
		mu 0 4 1547 1548 1552 1550
		f 4 2169 2174 2116 -2174
		mu 0 4 1548 1549 1506 1552
		f 4 2171 2110 2113 -2175
		mu 0 4 1549 1502 1504 1506
		f 4 2175 2144 -2104 -2165
		mu 0 4 1545 1553 1500 1499
		f 4 -2163 2176 2142 -2176
		mu 0 4 1545 1543 1554 1553
		f 4 -2160 2132 2139 -2177
		mu 0 4 1543 1525 1526 1554
		f 4 2177 2239 2319 -2190
		mu 0 4 1555 1556 1557 1558
		f 4 2178 2275 2347 -2191
		mu 0 4 1559 1560 1561 1562
		f 4 2179 2241 2283 -2193
		mu 0 4 1563 1564 1565 1566
		f 4 2180 2276 2311 -2194
		mu 0 4 1567 1568 1569 1570
		f 4 2181 2242 -2184 -2196
		mu 0 4 1571 1572 1573 1574
		f 4 2182 2269 -2185 -2197
		mu 0 4 1575 1576 1577 1578
		f 4 2287 2286 -2186 -2285
		mu 0 4 1579 1580 1581 1582
		f 4 2295 2294 -2187 -2293
		mu 0 4 1583 1584 1585 1586
		f 4 2323 2322 -2188 -2321
		mu 0 4 1587 1588 1589 1590
		f 4 2331 2330 -2189 -2329
		mu 0 4 1591 1592 1593 1594
		f 4 2187 2237 -2178 -2205
		mu 0 4 1595 1596 1597 1598
		f 4 2188 2274 -2179 -2206
		mu 0 4 1599 1600 1601 1602
		f 4 -2207 -2337 2339 -2192
		mu 0 4 1603 1604 1605 1606
		f 4 -2208 -2301 2303 -2195
		mu 0 4 1607 1608 1609 1610
		f 4 2204 2189 2321 2320
		mu 0 4 1611 1612 1613 1614
		f 4 2208 2192 2285 2284
		mu 0 4 1615 1616 1617 1618
		f 4 2472 2471 2326 -2470
		mu 0 4 1619 1620 1621 1622
		f 4 2470 2469 2263 -2468
		mu 0 4 1623 1624 1625 1626
		f 4 2468 2467 2265 2315
		mu 0 4 1627 1628 1629 1630
		f 4 2479 2478 2257 -2477
		mu 0 4 1631 1632 1633 1634
		f 4 2380 2298 -2379 2381
		mu 0 4 1635 1636 1637 1638
		f 4 2377 2376 2334 -2375
		mu 0 4 1639 1640 1641 1642
		f 4 2375 2374 2249 -2373
		mu 0 4 1643 1644 1645 1646
		f 4 2373 2372 2251 2343
		mu 0 4 1647 1648 1649 1650
		f 4 2369 2368 2253 2307
		mu 0 4 1651 1652 1653 1654
		f 4 2385 2384 2254 -2383
		mu 0 4 1655 1656 1657 1658
		f 4 2358 2357 2324 -2356
		mu 0 4 1659 1660 1661 1662
		f 4 2356 2355 2215 -2354
		mu 0 4 1663 1664 1665 1666
		f 4 2354 2353 2217 2317
		mu 0 4 1667 1668 1669 1670
		f 4 2365 2364 2220 -2363
		mu 0 4 1671 1672 1673 1674
		f 4 2301 2300 -2245 -2299
		mu 0 4 1636 1675 1676 1637
		f 4 -2335 2337 2336 -2247
		mu 0 4 1642 1641 1677 1678
		f 4 -2250 2246 2206 -2249
		mu 0 4 1646 1645 1679 1680
		f 4 -2252 2248 2191 2341
		mu 0 4 1650 1649 1681 1682
		f 4 -2254 2250 2194 2305
		mu 0 4 1654 1653 1683 1684
		f 4 -2255 2252 2197 -2244
		mu 0 4 1658 1657 1685 1686
		f 4 -2258 2255 2196 -2257
		mu 0 4 1634 1633 1575 1578
		f 4 -2291 2293 2292 -2259
		mu 0 4 1687 1688 1583 1586
		f 4 -2327 2329 2328 -2261
		mu 0 4 1622 1621 1591 1594
		f 4 -2264 2260 2205 -2263
		mu 0 4 1626 1625 1599 1602
		f 4 2348 -2266 2262 2190
		mu 0 4 1562 1630 1629 1559
		f 4 2312 -2267 2264 2193
		mu 0 4 1570 1689 1690 1567
		f 4 2422 2230 -2421 2423
		mu 0 4 1691 1692 1693 1694
		f 4 2419 2418 2296 -2417
		mu 0 4 1695 1696 1697 1698
		f 4 2415 2414 2332 -2413
		mu 0 4 1699 1700 1701 1702
		f 4 2413 2412 2226 -2411
		mu 0 4 1703 1704 1705 1706
		f 4 2411 2410 2227 2345
		mu 0 4 1707 1708 1709 1710
		f 4 2407 2406 2229 2309
		mu 0 4 1711 1712 1713 1714
		f 4 2480 -2280 2277 -2479
		mu 0 4 1632 1715 1689 1633
		f 4 2366 -2282 2278 -2365
		mu 0 4 1672 1716 1717 1673
		f 4 -2284 2280 -2182 -2283
		mu 0 4 1566 1565 1718 1719
		f 4 -2286 2282 2195 2198
		mu 0 4 1720 1721 1722 1723
		f 4 2183 2233 -2288 -2199
		mu 0 4 1724 1725 1580 1579
		f 4 2362 2211 -2361 2363
		mu 0 4 1726 1727 1728 1729
		f 4 2476 2259 -2475 2477
		mu 0 4 1730 1731 1688 1732
		f 4 -2294 -2260 2256 2199
		mu 0 4 1583 1688 1731 1733
		f 4 2184 2270 -2296 -2200
		mu 0 4 1733 1734 1584 1583
		f 4 -2419 2421 2420 2222
		mu 0 4 1697 1696 1735 1736
		f 4 2382 2245 -2381 2383
		mu 0 4 1737 1738 1636 1635
		f 4 2243 2200 -2302 -2246
		mu 0 4 1738 1739 1675 1636
		f 4 -2304 -2201 -2198 -2303
		mu 0 4 1610 1609 1740 1741
		f 4 -2305 -2306 2302 -2253
		mu 0 4 1742 1654 1684 1743
		f 4 2386 -2308 2304 -2385
		mu 0 4 1744 1651 1654 1742
		f 4 2424 -2310 2306 -2423
		mu 0 4 1691 1711 1714 1692
		f 4 -2312 2308 -2183 -2311
		mu 0 4 1570 1569 1576 1575
		f 4 -2278 -2313 2310 -2256
		mu 0 4 1633 1689 1570 1575
		f 4 -2320 2316 -2180 -2319
		mu 0 4 1558 1557 1564 1563
		f 4 -2322 2318 -2209 2201
		mu 0 4 1745 1746 1747 1748
		f 4 2185 2235 -2324 -2202
		mu 0 4 1582 1581 1588 1587
		f 4 -2330 -2262 2258 2202
		mu 0 4 1591 1621 1687 1586
		f 4 2186 2272 -2332 -2203
		mu 0 4 1586 1585 1592 1591
		f 4 -2415 2417 2416 2224
		mu 0 4 1701 1700 1695 1698
		f 4 -2377 2379 2378 2247
		mu 0 4 1641 1640 1638 1637
		f 4 -2338 -2248 2244 2203
		mu 0 4 1677 1641 1637 1676
		f 4 -2340 -2204 2207 -2339
		mu 0 4 1749 1750 1751 1752
		f 4 -2341 -2342 2338 -2251
		mu 0 4 1653 1650 1682 1683
		f 4 2371 -2344 2340 -2369
		mu 0 4 1652 1647 1650 1653
		f 4 2409 -2346 2342 -2407
		mu 0 4 1712 1707 1710 1713
		f 4 -2348 2344 -2181 -2347
		mu 0 4 1562 1561 1568 1567
		f 4 -2314 -2349 2346 -2265
		mu 0 4 1690 1630 1562 1567
		f 4 -2242 2238 -2351 2349
		mu 0 4 1565 1564 1753 1716
		f 4 -2317 -2352 -2353 -2239
		mu 0 4 1564 1557 1667 1753
		f 4 -2240 2236 -2355 2351
		mu 0 4 1557 1556 1668 1667
		f 4 -2238 2234 -2357 -2237
		mu 0 4 1597 1596 1664 1663
		f 4 -2323 2325 -2359 -2235
		mu 0 4 1589 1588 1660 1659
		f 4 -2360 -2326 -2236 2232
		mu 0 4 1754 1660 1588 1581
		f 4 2289 -2362 -2233 -2287
		mu 0 4 1580 1729 1754 1581
		f 4 2231 -2364 -2290 -2234
		mu 0 4 1725 1726 1729 1580
		f 4 -2243 2240 -2366 -2232
		mu 0 4 1573 1572 1755 1756
		f 4 -2281 -2350 -2367 -2241
		mu 0 4 1718 1565 1716 1672
		f 4 -2228 2225 -2374 2370
		mu 0 4 1710 1709 1648 1647
		f 4 -2227 2223 -2376 -2226
		mu 0 4 1706 1705 1644 1643
		f 4 -2333 2335 -2378 -2224
		mu 0 4 1702 1701 1640 1639
		f 4 2221 -2384 -2300 -2223
		mu 0 4 1736 1737 1635 1697
		f 4 -2231 2228 -2386 -2222
		mu 0 4 1693 1692 1744 1757
		f 4 -2307 -2368 -2387 -2229
		mu 0 4 1692 1714 1651 1744
		f 4 -2220 2216 -2389 2387
		mu 0 4 1717 1758 1759 1760
		f 4 -2315 -2390 -2391 -2217
		mu 0 4 1758 1670 1761 1759
		f 4 -2218 2214 -2393 2389
		mu 0 4 1670 1669 1762 1761
		f 4 -2216 2212 -2395 -2215
		mu 0 4 1666 1665 1763 1764
		f 4 -2325 2327 -2397 -2213
		mu 0 4 1662 1661 1765 1766
		f 4 -2398 -2328 -2214 2210
		mu 0 4 1767 1765 1661 1768
		f 4 2291 -2400 -2211 -2289
		mu 0 4 1728 1769 1767 1768
		f 4 2209 -2402 -2292 -2212
		mu 0 4 1727 1770 1769 1728
		f 4 -2221 2218 -2404 -2210
		mu 0 4 1674 1673 1771 1772
		f 4 -2279 -2388 -2405 -2219
		mu 0 4 1673 1717 1760 1771
		f 4 2450 2449 -2412 2408
		mu 0 4 1773 1774 1708 1707
		f 4 2452 2451 -2414 -2450
		mu 0 4 1775 1776 1704 1703
		f 4 2454 2453 -2416 -2452
		mu 0 4 1777 1778 1779 1780
		f 4 -2422 -2457 2459 2458
		mu 0 4 1735 1696 1781 1782
		f 4 2460 -2424 -2459 2461
		mu 0 4 1783 1691 1694 1784
		f 4 2462 -2406 -2425 -2461
		mu 0 4 1783 1785 1711 1691
		f 4 2392 2391 -2432 2428
		mu 0 4 1761 1762 1786 1787
		f 4 2394 2393 -2434 -2392
		mu 0 4 1764 1763 1788 1789
		f 4 2396 2395 -2436 -2394
		mu 0 4 1790 1791 1792 1793
		f 4 2400 -2442 -2399 2401
		mu 0 4 1770 1794 1795 1769
		f 4 2403 2402 -2444 -2401
		mu 0 4 1772 1771 1796 1797
		f 4 2404 -2426 -2445 -2403
		mu 0 4 1771 1760 1798 1796
		f 4 2483 2482 -2447 2445
		mu 0 4 1799 1800 1801 1785
		f 4 2485 -2448 -2449 -2483
		mu 0 4 1800 1802 1773 1801
		f 4 2487 2486 -2451 2447
		mu 0 4 1802 1803 1774 1773
		f 4 2489 2488 -2453 -2487
		mu 0 4 1804 1805 1776 1775
		f 4 2491 2490 -2455 -2489
		mu 0 4 1806 1807 1808 1809
		f 4 -2456 -2491 2493 2492
		mu 0 4 1810 1808 1807 1811
		f 4 2495 2494 -2458 -2493
		mu 0 4 1811 1812 1781 1810
		f 4 -2460 -2495 2497 2496
		mu 0 4 1782 1781 1812 1813
		f 4 2498 -2462 -2497 2499
		mu 0 4 1814 1783 1784 1815
		f 4 2500 -2446 -2463 -2499
		mu 0 4 1814 1799 1785 1783
		f 4 2427 2426 -2465 2463
		mu 0 4 1798 1816 1817 1715
		f 4 2429 -2466 -2467 -2427
		mu 0 4 1816 1787 1627 1817
		f 4 2431 2430 -2469 2465
		mu 0 4 1787 1786 1628 1627
		f 4 2433 2432 -2471 -2431
		mu 0 4 1789 1788 1624 1623
		f 4 2435 2434 -2473 -2433
		mu 0 4 1818 1819 1620 1619
		f 4 -2474 -2435 2437 2436
		mu 0 4 1820 1620 1819 1821
		f 4 2438 -2476 -2437 2439
		mu 0 4 1795 1732 1820 1821
		f 4 2440 -2478 -2439 2441
		mu 0 4 1794 1730 1732 1795
		f 4 2443 2442 -2480 -2441
		mu 0 4 1797 1796 1632 1631
		f 4 2444 -2464 -2481 -2443
		mu 0 4 1796 1798 1715 1632
		f 4 -2276 2273 -2488 2484
		mu 0 4 1561 1560 1803 1802
		f 4 -2275 2271 -2490 -2274
		mu 0 4 1601 1600 1805 1804
		f 4 -2331 2333 -2492 -2272
		mu 0 4 1593 1592 1807 1806
		f 4 -2498 -2298 -2271 2268
		mu 0 4 1813 1812 1584 1734
		f 4 2267 -2500 -2269 -2270
		mu 0 4 1576 1814 1815 1577
		f 4 -2309 -2482 -2501 -2268
		mu 0 4 1576 1569 1799 1814
		f 4 2501 2610 -2514 -2610
		mu 0 4 1822 1823 1824 1825
		f 4 2502 2611 -2515 -2611
		mu 0 4 1826 1827 1828 1824
		f 4 2503 2612 -2516 -2612
		mu 0 4 1829 1830 1831 1832
		f 4 2504 2613 -2517 -2613
		mu 0 4 1830 1833 1834 1831
		f 4 2505 2614 -2518 -2614
		mu 0 4 1835 1836 1837 1838
		f 4 2506 2615 -2519 -2615
		mu 0 4 1836 1839 1840 1837
		f 4 2507 2616 -2520 -2616
		mu 0 4 1839 1841 1842 1840
		f 4 2508 2617 -2521 -2617
		mu 0 4 1843 1844 1845 1846
		f 4 2509 2618 -2522 -2618
		mu 0 4 1847 1848 1849 1850
		f 4 2510 2619 -2523 -2619
		mu 0 4 1848 1851 1852 1849
		f 4 2511 2620 -2524 -2620
		mu 0 4 1851 1853 1854 1852
		f 4 2512 2609 -2525 -2621
		mu 0 4 1853 1855 1856 1854
		f 4 2513 2622 -2526 -2622
		mu 0 4 1825 1824 1857 1858
		f 4 2514 2623 -2527 -2623
		mu 0 4 1824 1828 1859 1857
		f 4 2515 2624 -2528 -2624
		mu 0 4 1828 1860 1861 1859
		f 4 2516 2625 -2529 -2625
		mu 0 4 1860 1838 1862 1861
		f 4 2517 2626 -2530 -2626
		mu 0 4 1838 1837 1863 1862
		f 4 2518 2627 -2531 -2627
		mu 0 4 1864 1865 1866 1867
		f 4 2519 2628 -2532 -2628
		mu 0 4 1840 1842 1868 1869
		f 4 2520 2629 -2533 -2629
		mu 0 4 1842 1850 1870 1868
		f 4 2521 2630 -2534 -2630
		mu 0 4 1850 1849 1871 1870
		f 4 2522 2631 -2535 -2631
		mu 0 4 1849 1852 1872 1871
		f 4 2523 2632 -2536 -2632
		mu 0 4 1852 1854 1873 1872
		f 4 2524 2621 -2537 -2633
		mu 0 4 1854 1856 1874 1873
		f 4 2525 2634 -2538 -2634
		mu 0 4 1858 1857 1875 1876
		f 4 2526 2635 -2539 -2635
		mu 0 4 1857 1859 1877 1875
		f 4 2527 2636 -2540 -2636
		mu 0 4 1859 1861 1878 1877
		f 4 2528 2637 -2541 -2637
		mu 0 4 1861 1862 1879 1878
		f 4 2529 2638 -2542 -2638
		mu 0 4 1862 1863 1880 1879
		f 4 2530 2639 -2543 -2639
		mu 0 4 1863 1869 1881 1880
		f 4 2531 2640 -2544 -2640
		mu 0 4 1869 1868 1882 1881
		f 4 2532 2641 -2545 -2641
		mu 0 4 1868 1870 1883 1882
		f 4 2533 2642 -2546 -2642
		mu 0 4 1870 1871 1884 1883
		f 4 2534 2643 -2547 -2643
		mu 0 4 1871 1872 1885 1884
		f 4 2535 2644 -2548 -2644
		mu 0 4 1872 1873 1886 1885
		f 4 2536 2633 -2549 -2645
		mu 0 4 1873 1874 1887 1886
		f 4 2537 2646 -2550 -2646
		mu 0 4 1876 1875 1888 1889
		f 4 2538 2647 -2551 -2647
		mu 0 4 1875 1877 1890 1888
		f 4 2539 2648 -2552 -2648
		mu 0 4 1877 1878 1891 1890
		f 4 2540 2649 -2553 -2649
		mu 0 4 1878 1879 1892 1891
		f 4 2541 2650 -2554 -2650
		mu 0 4 1879 1880 1893 1892
		f 4 2542 2651 -2555 -2651
		mu 0 4 1880 1881 1894 1893
		f 4 2543 2652 -2556 -2652
		mu 0 4 1881 1882 1895 1894
		f 4 2544 2653 -2557 -2653
		mu 0 4 1882 1883 1896 1895
		f 4 2545 2654 -2558 -2654
		mu 0 4 1883 1884 1897 1896
		f 4 2546 2655 -2559 -2655
		mu 0 4 1884 1885 1898 1897
		f 4 2547 2656 -2560 -2656
		mu 0 4 1885 1886 1899 1898
		f 4 2548 2645 -2561 -2657
		mu 0 4 1886 1887 1900 1899
		f 4 2549 2658 -2562 -2658
		mu 0 4 1889 1888 1901 1902
		f 4 2550 2659 -2563 -2659
		mu 0 4 1888 1890 1903 1901
		f 4 2551 2660 -2564 -2660
		mu 0 4 1890 1891 1904 1903
		f 4 2552 2661 -2565 -2661
		mu 0 4 1891 1892 1905 1904
		f 4 2553 2662 -2566 -2662
		mu 0 4 1892 1893 1906 1905
		f 4 2554 2663 -2567 -2663
		mu 0 4 1893 1894 1907 1906
		f 4 2555 2664 -2568 -2664
		mu 0 4 1894 1895 1908 1907
		f 4 2556 2665 -2569 -2665
		mu 0 4 1895 1896 1909 1908
		f 4 2557 2666 -2570 -2666
		mu 0 4 1896 1897 1910 1909
		f 4 2558 2667 -2571 -2667
		mu 0 4 1897 1898 1911 1910
		f 4 2559 2668 -2572 -2668
		mu 0 4 1898 1899 1912 1911
		f 4 2560 2657 -2573 -2669
		mu 0 4 1899 1900 1913 1912
		f 4 2561 2670 -2574 -2670
		mu 0 4 1902 1901 1914 1915
		f 4 2562 2671 -2575 -2671
		mu 0 4 1901 1903 1916 1914
		f 4 2563 2672 -2576 -2672
		mu 0 4 1903 1904 1917 1916
		f 4 2564 2673 -2577 -2673
		mu 0 4 1904 1905 1918 1917
		f 4 2565 2674 -2578 -2674
		mu 0 4 1905 1906 1919 1918
		f 4 2566 2675 -2579 -2675
		mu 0 4 1906 1907 1920 1919
		f 4 2567 2676 -2580 -2676
		mu 0 4 1907 1908 1921 1920
		f 4 2568 2677 -2581 -2677
		mu 0 4 1908 1909 1922 1921
		f 4 2569 2678 -2582 -2678
		mu 0 4 1909 1910 1923 1922
		f 4 2570 2679 -2583 -2679
		mu 0 4 1910 1911 1924 1923
		f 4 2571 2680 -2584 -2680
		mu 0 4 1911 1912 1925 1924
		f 4 2572 2669 -2585 -2681
		mu 0 4 1926 1927 1928 1929
		f 4 2573 2682 -2586 -2682
		mu 0 4 1915 1914 1930 1931
		f 4 2574 2683 -2587 -2683
		mu 0 4 1914 1916 1932 1930
		f 4 2575 2684 -2588 -2684
		mu 0 4 1916 1917 1933 1932
		f 4 2576 2685 -2589 -2685
		mu 0 4 1917 1918 1934 1933
		f 4 2577 2686 -2590 -2686
		mu 0 4 1918 1919 1935 1934
		f 4 2578 2687 -2591 -2687
		mu 0 4 1919 1920 1936 1935
		f 4 2579 2688 -2592 -2688
		mu 0 4 1920 1921 1937 1936
		f 4 2580 2689 -2593 -2689
		mu 0 4 1921 1922 1938 1937
		f 4 2581 2690 -2594 -2690
		mu 0 4 1922 1923 1939 1938
		f 4 2582 2691 -2595 -2691
		mu 0 4 1923 1924 1940 1939
		f 4 2583 2692 -2596 -2692
		mu 0 4 1941 1942 1943 1944
		f 4 2584 2681 -2597 -2693
		mu 0 4 1929 1928 1945 1946
		f 4 2585 2694 -2598 -2694
		mu 0 4 1931 1930 1947 1948
		f 4 2586 2695 -2599 -2695
		mu 0 4 1930 1932 1949 1947
		f 4 2587 2696 -2600 -2696
		mu 0 4 1932 1933 1950 1949
		f 4 2588 2697 -2601 -2697
		mu 0 4 1933 1934 1951 1950
		f 4 2589 2698 -2602 -2698
		mu 0 4 1934 1935 1952 1951
		f 4 2590 2699 -2603 -2699
		mu 0 4 1935 1936 1953 1952
		f 4 2591 2700 -2604 -2700
		mu 0 4 1936 1937 1954 1955
		f 4 2592 2701 -2605 -2701
		mu 0 4 1937 1938 1956 1954
		f 4 2593 2702 -2606 -2702
		mu 0 4 1938 1939 1957 1956
		f 4 2594 2703 -2607 -2703
		mu 0 4 1939 1940 1958 1957
		f 4 2595 2704 -2608 -2704
		mu 0 4 1940 1959 1960 1958
		f 4 2596 2693 -2609 -2705
		mu 0 4 1959 1961 1962 1960
		f 3 -2502 -2706 2706
		mu 0 3 1963 1964 1965
		f 3 -2503 -2707 2707
		mu 0 3 1827 1826 1966
		f 3 -2504 -2708 2708
		mu 0 3 1967 1968 1969
		f 3 -2505 -2709 2709
		mu 0 3 1835 1967 1969
		f 3 -2506 -2710 2710
		mu 0 3 1970 1835 1971
		f 3 -2507 -2711 2711
		mu 0 3 1972 1836 1973
		f 3 -2508 -2712 2712
		mu 0 3 1841 1974 1975
		f 3 -2509 -2713 2713
		mu 0 3 1976 1977 1978
		f 3 -2510 -2714 2714
		mu 0 3 1848 1979 1980
		f 3 -2511 -2715 2715
		mu 0 3 1981 1982 1965
		f 3 -2512 -2716 2716
		mu 0 3 1983 1981 1965
		f 3 -2513 -2717 2705
		mu 0 3 1964 1983 1965
		f 3 2597 2718 -2718
		mu 0 3 1948 1947 1984
		f 3 2598 2719 -2719
		mu 0 3 1947 1949 1984
		f 3 2599 2720 -2720
		mu 0 3 1949 1950 1984
		f 3 2600 2721 -2721
		mu 0 3 1950 1951 1984
		f 3 2601 2722 -2722
		mu 0 3 1951 1985 1984
		f 3 2602 2723 -2723
		mu 0 3 1985 1986 1984
		f 3 2603 2724 -2724
		mu 0 3 1987 1988 1989
		f 3 2604 2725 -2725
		mu 0 3 1988 1956 1989
		f 3 2605 2726 -2726
		mu 0 3 1956 1957 1989
		f 3 2606 2727 -2727
		mu 0 3 1957 1958 1989
		f 3 2607 2728 -2728
		mu 0 3 1958 1960 1989
		f 3 2608 2717 -2729
		mu 0 3 1960 1962 1989
		f 4 2729 2746 -2738 -2746
		mu 0 4 1990 1991 1992 1993
		f 4 2730 2747 -2739 -2747
		mu 0 4 1991 1994 1995 1992
		f 4 2731 2748 -2740 -2748
		mu 0 4 1994 1996 1997 1995
		f 4 2732 2749 -2741 -2749
		mu 0 4 1998 1999 2000 2001
		f 4 2733 2750 -2742 -2750
		mu 0 4 2002 2003 2004 2005
		f 4 2734 2751 -2743 -2751
		mu 0 4 2003 2006 2007 2004
		f 4 2735 2752 -2744 -2752
		mu 0 4 2006 2008 2009 2007
		f 4 2736 2745 -2745 -2753
		mu 0 4 2008 1990 1993 2009
		f 3 -2730 -2754 2754
		mu 0 3 2010 2011 2012
		f 3 -2731 -2755 2755
		mu 0 3 2013 2010 2012
		f 3 -2732 -2756 2756
		mu 0 3 2014 2013 2012
		f 3 -2733 -2757 2757
		mu 0 3 2015 2014 2012
		f 3 -2734 -2758 2758
		mu 0 3 2016 2015 2012
		f 3 -2735 -2759 2759
		mu 0 3 2017 2016 2012
		f 3 -2736 -2760 2760
		mu 0 3 2018 2017 2012
		f 3 -2737 -2761 2753
		mu 0 3 2011 2018 2012
		f 4 -2763 2764 2766 2767
		mu 0 4 2019 2020 2021 2022
		f 4 -2768 2769 2771 2772
		mu 0 4 2019 2022 2023 2024
		f 4 -2773 2774 2776 2777
		mu 0 4 2019 2024 2025 2026
		f 4 -2778 2779 2780 2762
		mu 0 4 2019 2026 2027 2020
		f 4 2737 2763 -2765 -2762
		mu 0 4 1993 1992 2021 2020
		f 4 2738 2765 -2767 -2764
		mu 0 4 1992 1995 2022 2021
		f 4 2739 2768 -2770 -2766
		mu 0 4 1995 1997 2023 2022
		f 4 2740 2770 -2772 -2769
		mu 0 4 1997 2005 2024 2023
		f 4 2741 2773 -2775 -2771
		mu 0 4 2005 2004 2025 2024
		f 4 2742 2775 -2777 -2774
		mu 0 4 2004 2007 2026 2025
		f 4 2743 2778 -2780 -2776
		mu 0 4 2007 2009 2027 2026
		f 4 2744 2761 -2781 -2779
		mu 0 4 2009 1993 2020 2027
		f 4 2781 2890 -2794 -2890
		mu 0 4 2028 2029 2030 2031
		f 4 2782 2891 -2795 -2891
		mu 0 4 2029 2032 2033 2030
		f 4 2783 2892 -2796 -2892
		mu 0 4 2034 2035 2036 2037
		f 4 2784 2893 -2797 -2893
		mu 0 4 2035 2038 2039 2036
		f 4 2785 2894 -2798 -2894
		mu 0 4 2038 2040 2041 2039
		f 4 2786 2895 -2799 -2895
		mu 0 4 2040 2042 2043 2041
		f 4 2787 2896 -2800 -2896
		mu 0 4 2042 2044 2045 2043
		f 4 2788 2897 -2801 -2897
		mu 0 4 2044 2046 2047 2045
		f 4 2789 2898 -2802 -2898
		mu 0 4 2048 2049 2050 2051
		f 4 2790 2899 -2803 -2899
		mu 0 4 2052 2053 2054 2055
		f 4 2791 2900 -2804 -2900
		mu 0 4 2053 2056 2057 2054
		f 4 2792 2889 -2805 -2901
		mu 0 4 2056 2028 2031 2057
		f 4 2793 2902 -2806 -2902
		mu 0 4 2031 2030 2058 2059
		f 4 2794 2903 -2807 -2903
		mu 0 4 2030 2033 2060 2058
		f 4 2795 2904 -2808 -2904
		mu 0 4 2061 2062 2063 2064
		f 4 2796 2905 -2809 -2905
		mu 0 4 2036 2039 2065 2066
		f 4 2797 2906 -2810 -2906
		mu 0 4 2039 2041 2067 2065
		f 4 2798 2907 -2811 -2907
		mu 0 4 2041 2043 2068 2067
		f 4 2799 2908 -2812 -2908
		mu 0 4 2043 2069 2070 2068
		f 4 2800 2909 -2813 -2909
		mu 0 4 2071 2051 2072 2070
		f 4 2801 2910 -2814 -2910
		mu 0 4 2051 2050 2073 2072
		f 4 2802 2911 -2815 -2911
		mu 0 4 2055 2054 2074 2075
		f 4 2803 2912 -2816 -2912
		mu 0 4 2076 2077 2078 2079
		f 4 2804 2901 -2817 -2913
		mu 0 4 2077 2080 2081 2078
		f 4 2805 2914 -2818 -2914
		mu 0 4 2081 2082 2083 2084
		f 4 2806 2915 -2819 -2915
		mu 0 4 2058 2060 2085 2086
		f 4 2807 2916 -2820 -2916
		mu 0 4 2064 2063 2087 2088
		f 4 2808 2917 -2821 -2917
		mu 0 4 2089 2090 2091 2092
		f 4 2809 2918 -2822 -2918
		mu 0 4 2065 2067 2093 2094
		f 4 2810 2919 -2823 -2919
		mu 0 4 2067 2068 2095 2093
		f 4 2811 2920 -2824 -2920
		mu 0 4 2068 2070 2096 2095
		f 4 2812 2921 -2825 -2921
		mu 0 4 2070 2072 2097 2098
		f 4 2813 2922 -2826 -2922
		mu 0 4 2072 2073 2099 2097
		f 4 2814 2923 -2827 -2923
		mu 0 4 2075 2074 2100 2101
		f 4 2815 2924 -2828 -2924
		mu 0 4 2079 2078 2102 2103
		f 4 2816 2913 -2829 -2925
		mu 0 4 2078 2081 2084 2102
		f 4 2817 2926 -2830 -2926
		mu 0 4 2084 2083 2104 2105
		f 4 2818 2927 -2831 -2927
		mu 0 4 2086 2085 2106 2107
		f 4 2819 2928 -2832 -2928
		mu 0 4 2108 2109 2110 2111
		f 4 2820 2929 -2833 -2929
		mu 0 4 2092 2091 2112 2113
		f 4 2821 2930 -2834 -2930
		mu 0 4 2094 2093 2114 2115
		f 4 2822 2931 -2835 -2931
		mu 0 4 2116 2117 2118 2119
		f 4 2823 2932 -2836 -2932
		mu 0 4 2117 2120 2121 2118
		f 4 2824 2933 -2837 -2933
		mu 0 4 2120 2122 2123 2121
		f 4 2825 2934 -2838 -2934
		mu 0 4 2097 2099 2124 2125
		f 4 2826 2935 -2839 -2935
		mu 0 4 2101 2100 2126 2127
		f 4 2827 2936 -2840 -2936
		mu 0 4 2103 2102 2128 2129
		f 4 2828 2925 -2841 -2937
		mu 0 4 2102 2084 2105 2128
		f 4 2829 2938 -2842 -2938
		mu 0 4 2130 2131 2132 2133
		f 4 2830 2939 -2843 -2939
		mu 0 4 2134 2135 2136 2137
		f 4 2831 2940 -2844 -2940
		mu 0 4 2111 2110 2138 2139
		f 4 2832 2941 -2845 -2941
		mu 0 4 2113 2112 2140 2141
		f 4 2833 2942 -2846 -2942
		mu 0 4 2115 2114 2142 2143
		f 4 2834 2943 -2847 -2943
		mu 0 4 2119 2118 2144 2145
		f 4 2835 2944 -2848 -2944
		mu 0 4 2118 2121 2146 2144
		f 4 2836 2945 -2849 -2945
		mu 0 4 2121 2123 2147 2146
		f 4 2837 2946 -2850 -2946
		mu 0 4 2148 2149 2150 2151
		f 4 2838 2947 -2851 -2947
		mu 0 4 2127 2126 2152 2153
		f 4 2839 2948 -2852 -2948
		mu 0 4 2129 2128 2154 2155
		f 4 2840 2937 -2853 -2949
		mu 0 4 2128 2105 2156 2154
		f 4 2841 2950 -2854 -2950
		mu 0 4 2133 2132 2157 2158
		f 4 2842 2951 -2855 -2951
		mu 0 4 2132 2159 2160 2157
		f 4 2843 2952 -2856 -2952
		mu 0 4 2161 2162 2163 2164
		f 4 2844 2953 -2857 -2953
		mu 0 4 2165 2166 2167 2168
		f 4 2845 2954 -2858 -2954
		mu 0 4 2143 2142 2169 2170
		f 4 2846 2955 -2859 -2955
		mu 0 4 2145 2144 2171 2172
		f 4 2847 2956 -2860 -2956
		mu 0 4 2144 2146 2173 2171
		f 4 2848 2957 -2861 -2957
		mu 0 4 2146 2174 2175 2173
		f 4 2849 2958 -2862 -2958
		mu 0 4 2176 2177 2178 2179
		f 4 2850 2959 -2863 -2959
		mu 0 4 2180 2181 2182 2183
		f 4 2851 2960 -2864 -2960
		mu 0 4 2155 2154 2184 2185
		f 4 2852 2949 -2865 -2961
		mu 0 4 2154 2156 2186 2184
		f 4 2853 2962 -2866 -2962
		mu 0 4 2158 2157 2187 2188
		f 4 2854 2963 -2867 -2963
		mu 0 4 2157 2160 2189 2187
		f 4 2855 2964 -2868 -2964
		mu 0 4 2164 2163 2190 2191
		f 4 2856 2965 -2869 -2965
		mu 0 4 2192 2170 2193 2194
		f 4 2857 2966 -2870 -2966
		mu 0 4 2170 2169 2195 2193
		f 4 2858 2967 -2871 -2967
		mu 0 4 2196 2197 2198 2199
		f 4 2859 2968 -2872 -2968
		mu 0 4 2197 2200 2201 2198
		f 4 2860 2969 -2873 -2969
		mu 0 4 2200 2179 2202 2201
		f 4 2861 2970 -2874 -2970
		mu 0 4 2179 2178 2203 2202
		f 4 2862 2971 -2875 -2971
		mu 0 4 2183 2182 2204 2205
		f 4 2863 2972 -2876 -2972
		mu 0 4 2182 2206 2207 2204
		f 4 2864 2961 -2877 -2973
		mu 0 4 2184 2186 2208 2209
		f 4 2865 2974 -2878 -2974
		mu 0 4 2210 2211 2212 2213
		f 4 2866 2975 -2879 -2975
		mu 0 4 2211 2214 2215 2212
		f 4 2867 2976 -2880 -2976
		mu 0 4 2214 2194 2216 2215
		f 4 2868 2977 -2881 -2977
		mu 0 4 2194 2193 2217 2216
		f 4 2869 2978 -2882 -2978
		mu 0 4 2193 2195 2218 2217
		f 4 2870 2979 -2883 -2979
		mu 0 4 2199 2198 2219 2220
		f 4 2871 2980 -2884 -2980
		mu 0 4 2221 2222 2223 2224
		f 4 2872 2981 -2885 -2981
		mu 0 4 2225 2226 2227 2228
		f 4 2873 2982 -2886 -2982
		mu 0 4 2202 2203 2229 2230
		f 4 2874 2983 -2887 -2983
		mu 0 4 2205 2204 2231 2232
		f 4 2875 2984 -2888 -2984
		mu 0 4 2204 2207 2233 2231
		f 4 2876 2973 -2889 -2985
		mu 0 4 2207 2234 2235 2233
		f 3 -2782 -2986 2986
		mu 0 3 2029 2028 2236
		f 3 -2783 -2987 2987
		mu 0 3 2032 2029 2236
		f 3 -2784 -2988 2988
		mu 0 3 2035 2034 2237
		f 3 -2785 -2989 2989
		mu 0 3 2038 2035 2237
		f 3 -2786 -2990 2990
		mu 0 3 2040 2038 2237
		f 3 -2787 -2991 2991
		mu 0 3 2042 2040 2237
		f 3 -2788 -2992 2992
		mu 0 3 2044 2042 2237
		f 3 -2789 -2993 2993
		mu 0 3 2046 2044 2237
		f 3 -2790 -2994 2994
		mu 0 3 2238 2046 2237
		f 3 -2791 -2995 2995
		mu 0 3 2239 2238 2237
		f 3 -2792 -2996 2996
		mu 0 3 2056 2053 2236
		f 3 -2793 -2997 2985
		mu 0 3 2028 2056 2236
		f 3 2877 2998 -2998
		mu 0 3 2213 2212 2240
		f 3 2878 2999 -2999
		mu 0 3 2212 2215 2240
		f 3 2879 3000 -3000
		mu 0 3 2215 2216 2241
		f 3 2880 3001 -3001
		mu 0 3 2242 2243 2244
		f 3 2881 3002 -3002
		mu 0 3 2243 2245 2244
		f 3 2882 3003 -3003
		mu 0 3 2246 2224 2247
		f 3 2883 3004 -3004
		mu 0 3 2224 2248 2247
		f 3 2884 3005 -3005
		mu 0 3 2248 2249 2247
		f 3 2885 3006 -3006
		mu 0 3 2250 2232 2251
		f 3 2886 3007 -3007
		mu 0 3 2232 2231 2251
		f 3 2887 3008 -3008
		mu 0 3 2252 2253 2240
		f 3 2888 2997 -3009
		mu 0 3 2253 2213 2240
		f 4 -3026 3009 3026 -3018
		mu 0 4 2254 2255 2256 2257
		f 4 -3027 3010 3027 -3019
		mu 0 4 2257 2256 2258 2259
		f 4 -3028 3011 3028 -3020
		mu 0 4 2259 2258 2260 2261
		f 4 -3029 3012 3029 -3021
		mu 0 4 2261 2260 2262 2263
		f 4 -3030 3013 3030 -3022
		mu 0 4 2263 2262 2264 2265
		f 4 -3031 3014 3031 -3023
		mu 0 4 2265 2264 2266 2267
		f 4 -3032 3015 3032 -3024
		mu 0 4 2268 2269 2270 2271;
	setAttr ".face[1500:1882]"
		f 4 -3033 3016 3025 -3025
		mu 0 4 2271 2270 2272 2273
		f 3 3115 3131 3136
		mu 0 3 2274 2275 2276
		f 4 -3034 3017 3034 -3036
		mu 0 4 2277 2254 2257 2278
		f 4 -3035 3018 3036 -3038
		mu 0 4 2278 2257 2259 2279
		f 4 -3037 3019 3038 -3040
		mu 0 4 2279 2259 2261 2280
		f 4 -3039 3020 3040 -3042
		mu 0 4 2280 2261 2263 2281
		f 4 -3041 3021 3042 -3044
		mu 0 4 2281 2263 2265 2282
		f 4 -3043 3022 3044 -3046
		mu 0 4 2282 2265 2267 2283
		f 4 -3045 3023 3046 -3048
		mu 0 4 2284 2268 2271 2285
		f 4 -3047 3024 3033 -3049
		mu 0 4 2285 2271 2273 2286
		f 4 -3050 3035 3050 -3052
		mu 0 4 2287 2277 2278 2288
		f 4 -3051 3037 3052 -3054
		mu 0 4 2288 2278 2279 2289
		f 4 -3053 3039 3054 -3056
		mu 0 4 2289 2279 2280 2290
		f 4 -3055 3041 3056 -3058
		mu 0 4 2290 2280 2281 2291
		f 4 -3057 3043 3058 -3060
		mu 0 4 2291 2281 2282 2292
		f 4 -3059 3045 3060 -3062
		mu 0 4 2292 2282 2283 2293
		f 4 -3061 3047 3062 -3064
		mu 0 4 2294 2284 2285 2295
		f 4 -3063 3048 3049 -3065
		mu 0 4 2295 2285 2286 2296
		f 4 -3066 3051 3066 -3068
		mu 0 4 2297 2287 2288 2298
		f 4 -3067 3053 3068 -3070
		mu 0 4 2298 2288 2289 2299
		f 4 -3069 3055 3070 -3072
		mu 0 4 2299 2289 2290 2300
		f 4 -3071 3057 3072 -3074
		mu 0 4 2300 2290 2291 2301
		f 4 -3073 3059 3074 -3076
		mu 0 4 2301 2291 2292 2302
		f 4 -3075 3061 3076 -3078
		mu 0 4 2302 2292 2293 2303
		f 4 -3077 3063 3078 -3080
		mu 0 4 2304 2294 2295 2305
		f 4 -3079 3064 3065 -3081
		mu 0 4 2306 2307 2287 2297
		f 4 -3082 3067 3082 -3084
		mu 0 4 2308 2297 2298 2309
		f 4 -3083 3069 3084 -3086
		mu 0 4 2309 2298 2299 2310
		f 4 -3085 3071 3086 -3088
		mu 0 4 2310 2299 2300 2311
		f 4 -3087 3073 3088 -3090
		mu 0 4 2311 2300 2301 2312
		f 4 -3089 3075 3090 -3092
		mu 0 4 2312 2301 2302 2313
		f 4 -3091 3077 3092 -3094
		mu 0 4 2313 2302 2303 2314
		f 4 -3093 3079 3094 -3096
		mu 0 4 2315 2304 2305 2316
		f 4 -3095 3080 3081 -3097
		mu 0 4 2317 2306 2297 2308
		f 4 -3098 3083 3098 -3100
		mu 0 4 2318 2308 2309 2319
		f 4 -3099 3085 3100 -3102
		mu 0 4 2319 2309 2310 2320
		f 4 -3101 3087 3102 -3104
		mu 0 4 2320 2310 2311 2321
		f 4 -3103 3089 3104 -3106
		mu 0 4 2321 2311 2312 2322
		f 4 -3105 3091 3106 -3108
		mu 0 4 2322 2312 2313 2323
		f 4 -3107 3093 3108 -3110
		mu 0 4 2323 2313 2314 2324
		f 4 -3109 3095 3110 -3112
		mu 0 4 2325 2315 2316 2326
		f 4 -3111 3096 3097 -3113
		mu 0 4 2327 2317 2308 2318
		f 4 -3114 3099 3114 -3116
		mu 0 4 2328 2329 2330 2331
		f 4 -3115 3101 3116 -3118
		mu 0 4 2332 2319 2320 2333
		f 4 -3117 3103 3118 -3120
		mu 0 4 2333 2320 2321 2334
		f 4 -3119 3105 3120 -3122
		mu 0 4 2335 2336 2337 2338
		f 4 -3121 3107 3122 -3124
		mu 0 4 2338 2337 2339 2340
		f 4 -3123 3109 3124 -3126
		mu 0 4 2340 2339 2341 2342
		f 4 -3125 3111 3126 -3128
		mu 0 4 2342 2341 2343 2344
		f 4 -3127 3112 3113 -3129
		mu 0 4 2344 2343 2329 2328
		f 3 -3131 3132 3125
		mu 0 3 2345 2276 2346
		f 3 -3132 3117 3129
		mu 0 3 2276 2275 2347
		f 3 3133 -3130 3119
		mu 0 3 2348 2276 2347
		f 3 3135 -3134 3121
		mu 0 3 2349 2276 2348
		f 3 -3135 3130 3127
		mu 0 3 2350 2276 2345
		f 3 -3133 -3136 3123
		mu 0 3 2346 2276 2349
		f 3 -3137 3134 3128
		mu 0 3 2274 2276 2350
		f 4 -3140 3137 3171 -3147
		mu 0 4 2351 2352 2353 2354
		f 4 3207 -3183 3185 3184
		mu 0 4 2355 2356 2357 2358
		f 4 -3144 3138 3175 -3148
		mu 0 4 2359 2360 2361 2362
		f 4 3213 3212 3199 -3211
		mu 0 4 2363 2364 2365 2366
		f 4 -3219 3220 -3189 3191
		mu 0 4 2367 2368 2369 2370
		f 4 3209 3208 3183 3182
		mu 0 4 2371 2372 2373 2374
		f 4 3180 -3138 3149 3155
		mu 0 4 2375 2353 2352 2376
		f 4 3200 -3209 3211 3210
		mu 0 4 2366 2373 2372 2363
		f 4 3177 -3153 -3151 3147
		mu 0 4 2377 2378 2379 2380
		f 4 3193 -3217 3219 3218
		mu 0 4 2367 2381 2382 2368
		f 4 -3160 3157 3140 -3159
		mu 0 4 2383 2384 2385 2386
		f 4 3203 -3187 3189 3188
		mu 0 4 2387 2388 2389 2390
		f 4 -3164 3160 3144 -3163
		mu 0 4 2391 2392 2393 2394
		f 4 3151 -3165 -3166 3162
		mu 0 4 2395 2396 2397 2398
		f 4 -3215 3217 3216 3195
		mu 0 4 2399 2400 2382 2381
		f 4 -3158 -3169 3166 -3154
		mu 0 4 2401 2402 2403 2404
		f 4 -3172 3169 3159 -3171
		mu 0 4 2354 2353 2384 2383
		f 4 3205 -3185 3187 3186
		mu 0 4 2388 2405 2406 2389
		f 4 -3176 3172 3163 -3175
		mu 0 4 2362 2407 2392 2391
		f 4 3165 -3177 -3178 3174
		mu 0 4 2398 2397 2378 2377
		f 4 -3213 3215 3214 3197
		mu 0 4 2408 2409 2400 2399
		f 4 3168 -3170 -3181 3178
		mu 0 4 2403 2402 2410 2411
		f 4 -3184 3181 3139 3141
		mu 0 4 2374 2373 2412 2413
		f 4 -3188 -3174 3170 3161
		mu 0 4 2389 2406 2414 2415
		f 4 -3191 -3192 -3143 -3141
		mu 0 4 2401 2367 2370 2416
		f 4 3153 -3193 -3194 3190
		mu 0 4 2401 2404 2381 2367
		f 4 -3195 -3196 3192 -3167
		mu 0 4 2403 2399 2381 2404
		f 4 -3197 -3198 3194 -3179
		mu 0 4 2411 2408 2399 2403
		f 4 -3200 3196 -3156 -3199
		mu 0 4 2366 2365 2417 2418
		f 4 -3150 -3182 -3201 3198
		mu 0 4 2418 2412 2373 2366
		f 4 -3173 -3205 -3206 3202
		mu 0 4 2419 2420 2355 2421
		f 4 3143 3148 -3210 3206
		mu 0 4 2360 2359 2372 2371
		f 4 -3149 3150 3156 -3212
		mu 0 4 2422 2380 2379 2423
		f 4 3152 3179 -3214 -3157
		mu 0 4 2379 2378 2409 2423
		f 4 -3216 -3180 3176 3167
		mu 0 4 2400 2409 2378 2397
		f 4 -3218 -3168 3164 3154
		mu 0 4 2382 2400 2397 2396
		f 4 -3155 -3152 3145 -3220
		mu 0 4 2382 2396 2395 2368
		f 4 -3221 -3146 -3145 -3202
		mu 0 4 2424 2425 2394 2393
		f 4 3385 3384 -3256 -3383
		mu 0 4 2426 2427 2428 2429
		f 4 3291 -3223 -3224 3231
		mu 0 4 2430 2431 2432 2433
		f 4 3138 -3205 3207 3206
		mu 0 4 2434 2420 2355 2356
		f 4 3223 3224 3377 3376
		mu 0 4 2433 2432 2435 2436
		f 4 3275 -3229 -3227 3221
		mu 0 4 2437 2438 2439 2440
		f 4 3229 -3395 3397 -3226
		mu 0 4 2441 2442 2443 2444
		f 4 3289 -3232 3233 3239
		mu 0 4 2445 2446 2447 2448
		f 4 -3234 -3377 3379 3378
		mu 0 4 2448 2447 2449 2450
		f 4 3277 -3237 -3235 3228
		mu 0 4 2451 2452 2453 2454
		f 4 3237 -3393 3395 3394
		mu 0 4 2455 2456 2457 2458
		f 4 3287 -3240 3241 3247
		mu 0 4 2459 2445 2448 2460
		f 4 -3242 -3379 3381 3380
		mu 0 4 2460 2448 2450 2461
		f 4 3279 -3245 -3243 3236
		mu 0 4 2452 2462 2463 2453
		f 4 3245 -3391 3393 3392
		mu 0 4 2456 2464 2465 2457
		f 4 3285 -3248 3249 3255
		mu 0 4 2428 2459 2460 2429
		f 4 -3250 -3381 3383 3382
		mu 0 4 2429 2460 2461 2426
		f 4 3281 -3253 -3251 3244
		mu 0 4 2462 2466 2467 2463
		f 4 3253 -3389 3391 3390
		mu 0 4 2464 2468 2469 2465
		f 4 3222 3293 -3260 -3258
		mu 0 4 2432 2470 2471 2472
		f 4 3225 3399 -3262 -3259
		mu 0 4 2441 2444 2473 2474
		f 4 3300 -3222 3262 3263
		mu 0 4 2475 2437 2440 2476
		f 4 -3225 3257 3264 3375
		mu 0 4 2435 2432 2472 2477
		f 4 3259 3295 -3268 -3266
		mu 0 4 2478 2479 2480 2481
		f 4 3261 3400 -3270 -3267
		mu 0 4 2482 2483 2484 2485
		f 4 -3264 3270 3271 3299
		mu 0 4 2486 2487 2488 2489
		f 4 -3265 3265 3272 3373
		mu 0 4 2477 2472 2490 2491
		f 4 3303 -3275 -3276 3273
		mu 0 4 2492 2493 2494 2495
		f 4 3305 -3277 -3278 3274
		mu 0 4 2496 2497 2498 2499
		f 4 3307 -3279 -3280 3276
		mu 0 4 2497 2500 2501 2498
		f 4 3309 -3281 -3282 3278
		mu 0 4 2500 2502 2466 2501
		f 4 -3385 3387 3386 -3283
		mu 0 4 2503 2427 2504 2505
		f 4 3313 -3285 -3286 3282
		mu 0 4 2505 2506 2507 2503
		f 4 3315 -3287 -3288 3284
		mu 0 4 2506 2508 2509 2507
		f 4 3317 -3289 -3290 3286
		mu 0 4 2508 2510 2511 2509
		f 4 3319 -3291 -3292 3288
		mu 0 4 2512 2513 2470 2430
		f 4 -3294 3290 3321 -3293
		mu 0 4 2471 2470 2513 2514
		f 4 -3296 3292 3323 -3295
		mu 0 4 2515 2516 2517 2518
		f 4 -3298 3294 3325 3369
		mu 0 4 2519 2515 2518 2520
		f 4 -3299 -3300 3296 3327
		mu 0 4 2521 2522 2523 2524
		f 4 3328 -3274 -3301 3298
		mu 0 4 2525 2492 2495 2526
		f 4 3227 -3303 -3304 3301
		mu 0 4 2527 2528 2493 2492
		f 4 3235 -3305 -3306 3302
		mu 0 4 2529 2530 2497 2496
		f 4 3243 -3307 -3308 3304
		mu 0 4 2530 2531 2500 2497
		f 4 3251 -3309 -3310 3306
		mu 0 4 2531 2532 2502 2500
		f 4 -3387 3389 3388 -3311
		mu 0 4 2505 2504 2469 2468
		f 4 -3313 -3314 3310 -3254
		mu 0 4 2464 2506 2505 2468
		f 4 -3315 -3316 3312 -3246
		mu 0 4 2456 2508 2506 2464
		f 4 -3317 -3318 3314 -3238
		mu 0 4 2455 2510 2508 2456
		f 4 -3319 -3320 3316 -3230
		mu 0 4 2441 2513 2512 2442
		f 4 -3322 3318 3258 -3321
		mu 0 4 2514 2513 2441 2474
		f 4 -3324 3320 3266 -3323
		mu 0 4 2518 2517 2533 2534
		f 4 3202 3160 -3202 3203
		mu 0 4 2535 2392 2393 2424
		f 4 -3327 -3328 3324 -3269
		mu 0 4 2536 2521 2524 2537
		f 4 -3302 -3329 3326 -3261
		mu 0 4 2538 2539 2540 2541
		f 4 3161 3189 -3143 -3159
		mu 0 4 2415 2389 2390 2542
		f 4 -3333 -3334 3330 -3297
		mu 0 4 2543 2544 2545 2546
		f 4 3185 -3174 -3147 3141
		mu 0 4 2547 2548 2549 2550
		f 4 -3337 -3338 3334 -3271
		mu 0 4 2476 2551 2552 2553
		f 4 -3339 -3340 3336 -3263
		mu 0 4 2440 2554 2551 2476
		f 4 3338 3226 3232 -3342
		mu 0 4 2554 2440 2439 2555
		f 4 -3233 3234 3240 -3344
		mu 0 4 2556 2454 2453 2557
		f 4 -3241 3242 3248 -3346
		mu 0 4 2557 2453 2463 2558
		f 4 -3249 3250 3256 -3348
		mu 0 4 2558 2463 2467 2559
		f 4 3252 3283 -3350 -3257
		mu 0 4 2467 2466 2560 2559
		f 4 -3352 -3284 3280 3311
		mu 0 4 2561 2560 2466 2502
		f 4 -3354 -3312 3308 3254
		mu 0 4 2562 2561 2502 2532
		f 4 -3255 -3252 3246 -3356
		mu 0 4 2562 2532 2531 2563
		f 4 -3247 -3244 3238 -3358
		mu 0 4 2563 2564 2530 2565
		f 4 -3239 -3236 3230 -3360
		mu 0 4 2565 2530 2566 2567
		f 4 -3231 -3228 -3361 -3362
		mu 0 4 2568 2569 2570 2571
		f 4 -3364 3360 3260 -3363
		mu 0 4 2572 2571 2570 2573
		f 4 -3365 3362 3268 -3330
		mu 0 4 2574 2572 2573 2575
		f 4 -3367 -3368 3365 3331
		mu 0 4 2545 2576 2577 2578
		f 4 -3369 -3370 3366 3333
		mu 0 4 2544 2579 2576 2545
		f 4 -3372 3368 3335 -3371
		mu 0 4 2580 2581 2582 2583
		f 4 -3373 -3374 3370 3337
		mu 0 4 2584 2585 2580 2583
		f 4 -3375 -3376 3372 3339
		mu 0 4 2554 2435 2477 2551
		f 4 3374 3341 3340 -3378
		mu 0 4 2435 2554 2555 2436
		f 4 -3341 3343 3342 -3380
		mu 0 4 2449 2556 2557 2450
		f 4 -3343 3345 3344 -3382
		mu 0 4 2450 2557 2558 2461
		f 4 -3345 3347 3346 -3384
		mu 0 4 2461 2558 2559 2426
		f 4 3349 3348 -3386 -3347
		mu 0 4 2559 2560 2427 2426
		f 4 -3388 -3349 3351 3350
		mu 0 4 2504 2427 2560 2561
		f 4 -3390 -3351 3353 3352
		mu 0 4 2469 2504 2561 2562
		f 4 -3353 3355 3354 -3392
		mu 0 4 2469 2562 2563 2586
		f 4 -3355 3357 3356 -3394
		mu 0 4 2586 2563 2565 2587
		f 4 -3357 3359 3358 -3396
		mu 0 4 2457 2565 2567 2588
		f 4 -3359 3361 -3397 -3398
		mu 0 4 2589 2590 2591 2592
		f 4 -3400 3396 3363 -3399
		mu 0 4 2593 2592 2591 2594
		f 4 -3401 3398 3364 -3366
		mu 0 4 2577 2595 2596 2578
		f 4 3267 3402 -3139 -3402
		mu 0 4 2481 2480 2597 2598
		f 4 3297 3403 3204 -3403
		mu 0 4 2480 2581 2599 2597
		f 4 3371 3404 -3208 -3404
		mu 0 4 2581 2580 2600 2599
		f 4 -3273 3401 -3207 -3405
		mu 0 4 2580 2481 2598 2600
		f 4 -3326 3405 -3203 -3407
		mu 0 4 2601 2602 2603 2604
		f 4 3322 3407 -3161 -3406
		mu 0 4 2605 2485 2606 2607
		f 4 3269 3408 3201 -3408
		mu 0 4 2485 2484 2608 2606
		f 4 3367 3406 -3204 -3409
		mu 0 4 2609 2601 2604 2610
		f 4 -3331 3409 -3162 -3411
		mu 0 4 2611 2612 2613 2614
		f 4 -3332 3411 -3190 -3410
		mu 0 4 2615 2574 2616 2617
		f 4 3329 3412 3142 -3412
		mu 0 4 2574 2575 2618 2616
		f 4 -3325 3410 3158 -3413
		mu 0 4 2619 2611 2614 2618
		f 4 -3336 3413 -3186 -3415
		mu 0 4 2583 2582 2620 2621
		f 4 3332 3415 3173 -3414
		mu 0 4 2582 2489 2622 2620
		f 4 -3272 3416 3146 -3416
		mu 0 4 2489 2488 2623 2622
		f 4 -3335 3414 -3142 -3417
		mu 0 4 2488 2583 2621 2623
		f 4 3529 3528 3427 -3527
		mu 0 4 2624 2625 2626 2627
		f 4 3527 3526 3428 -3525
		mu 0 4 2628 2624 2627 2629
		f 4 3525 3524 3429 -3523
		mu 0 4 2630 2628 2629 2631
		f 4 3523 3522 3430 -3521
		mu 0 4 2632 2630 2631 2633
		f 4 3521 3520 3431 -3519
		mu 0 4 2634 2632 2633 2635
		f 4 3519 3518 3432 -3517
		mu 0 4 2636 2634 2635 2637
		f 4 3517 3516 3433 -3515
		mu 0 4 2638 2636 2637 2639
		f 4 3515 3514 3434 -3513
		mu 0 4 2640 2638 2639 2641
		f 4 3513 3512 3435 -3511
		mu 0 4 2642 2640 2641 2643
		f 4 3511 3510 3436 -3509
		mu 0 4 2644 2642 2643 2645
		f 4 -3428 3468 3437 -3470
		mu 0 4 2627 2626 2646 2647
		f 4 -3429 3469 3438 -3471
		mu 0 4 2629 2627 2647 2648
		f 4 -3430 3470 3439 -3472
		mu 0 4 2631 2629 2648 2649
		f 4 -3431 3471 3440 -3473
		mu 0 4 2633 2631 2649 2650
		f 4 -3432 3472 3441 -3474
		mu 0 4 2635 2633 2650 2651
		f 4 -3433 3473 3442 -3475
		mu 0 4 2637 2635 2651 2652
		f 4 -3434 3474 3443 -3476
		mu 0 4 2639 2637 2652 2653
		f 4 -3435 3475 3444 -3477
		mu 0 4 2641 2639 2653 2654
		f 4 -3436 3476 3445 -3478
		mu 0 4 2643 2641 2654 2655
		f 4 -3437 3477 3446 -3479
		mu 0 4 2645 2643 2655 2656
		f 4 -3438 3479 3533 -3481
		mu 0 4 2657 2658 2659 2660
		f 4 -3439 3480 3535 -3482
		mu 0 4 2661 2657 2660 2662
		f 4 -3440 3481 3537 -3483
		mu 0 4 2663 2661 2662 2664
		f 4 -3441 3482 3539 -3484
		mu 0 4 2665 2663 2664 2666
		f 4 -3442 3483 3541 -3485
		mu 0 4 2667 2665 2666 2668
		f 4 -3443 3484 3543 -3486
		mu 0 4 2669 2667 2668 2670
		f 4 -3444 3485 3544 -3487
		mu 0 4 2671 2669 2670 2672
		f 4 -3445 3486 3503 -3488
		mu 0 4 2673 2671 2672 2674
		f 4 -3446 3487 3505 -3489
		mu 0 4 2675 2673 2674 2676
		f 4 -3447 3488 3507 -3490
		mu 0 4 2677 2675 2676 2678
		f 4 -3448 3490 3417 -3492
		mu 0 4 2679 2680 2681 2682
		f 4 -3449 3491 3418 -3493
		mu 0 4 2683 2679 2682 2684
		f 4 -3450 3492 3419 -3494
		mu 0 4 2685 2683 2684 2686
		f 4 -3451 3493 3420 -3495
		mu 0 4 2687 2685 2686 2688
		f 4 -3452 3494 3421 -3496
		mu 0 4 2689 2687 2688 2690
		f 4 -3453 3495 3422 -3497
		mu 0 4 2691 2689 2690 2692
		f 4 -3454 3496 3423 -3498
		mu 0 4 2693 2691 2692 2694
		f 4 -3455 3497 3424 -3499
		mu 0 4 2695 2693 2694 2696
		f 4 -3456 3498 3425 -3500
		mu 0 4 2697 2695 2696 2698
		f 4 -3457 3499 3426 -3501
		mu 0 4 2699 2697 2698 2700
		f 4 -3529 3531 -3480 -3469
		mu 0 4 2626 2625 2701 2646
		f 4 3508 3478 3489 3509
		mu 0 4 2644 2645 2656 2702
		f 4 -3504 3501 3585 -3503
		mu 0 4 2674 2672 2703 2704
		f 4 -3506 3502 3587 -3505
		mu 0 4 2676 2674 2704 2705
		f 4 -3508 3504 3588 -3507
		mu 0 4 2678 2676 2705 2706
		f 4 3546 -3510 3506 3547
		mu 0 4 2707 2644 2702 2708
		f 4 3549 3548 -3512 -3547
		mu 0 4 2707 2709 2642 2644
		f 4 3551 3550 -3514 -3549
		mu 0 4 2709 2710 2640 2642
		f 4 3553 3552 -3516 -3551
		mu 0 4 2710 2711 2638 2640
		f 4 3555 3554 -3518 -3553
		mu 0 4 2711 2712 2636 2638
		f 4 3557 3556 -3520 -3555
		mu 0 4 2712 2713 2634 2636
		f 4 3559 3558 -3522 -3557
		mu 0 4 2713 2714 2632 2634
		f 4 3561 3560 -3524 -3559
		mu 0 4 2714 2715 2630 2632
		f 4 3563 3562 -3526 -3561
		mu 0 4 2715 2716 2628 2630
		f 4 3565 3564 -3528 -3563
		mu 0 4 2716 2717 2624 2628
		f 4 3567 3566 -3530 -3565
		mu 0 4 2717 2718 2625 2624
		f 4 -3532 -3567 3569 -3531
		mu 0 4 2701 2625 2718 2719
		f 4 -3534 3530 3571 -3533
		mu 0 4 2660 2659 2720 2721
		f 4 -3536 3532 3573 -3535
		mu 0 4 2662 2660 2721 2722
		f 4 -3538 3534 3575 -3537
		mu 0 4 2664 2662 2722 2723
		f 4 -3540 3536 3577 -3539
		mu 0 4 2666 2664 2723 2724
		f 4 -3542 3538 3579 -3541
		mu 0 4 2668 2666 2724 2725
		f 4 -3544 3540 3581 -3543
		mu 0 4 2670 2668 2725 2726
		f 4 -3545 3542 3583 -3502
		mu 0 4 2672 2670 2726 2703
		f 4 -3548 3545 3500 3467
		mu 0 4 2707 2708 2699 2700
		f 4 -3550 -3468 -3427 3466
		mu 0 4 2709 2707 2700 2698
		f 4 -3552 -3467 -3426 3465
		mu 0 4 2710 2709 2698 2696
		f 4 -3554 -3466 -3425 3464
		mu 0 4 2711 2710 2696 2694
		f 4 -3556 -3465 -3424 3463
		mu 0 4 2712 2711 2694 2692
		f 4 -3558 -3464 -3423 3462
		mu 0 4 2713 2712 2692 2690
		f 4 -3560 -3463 -3422 3461
		mu 0 4 2714 2713 2690 2688
		f 4 -3562 -3462 -3421 3460
		mu 0 4 2715 2714 2688 2686
		f 4 -3564 -3461 -3420 3459
		mu 0 4 2716 2715 2686 2684
		f 4 -3566 -3460 -3419 3458
		mu 0 4 2717 2716 2684 2682
		f 4 -3568 -3459 -3418 3457
		mu 0 4 2718 2717 2682 2681
		f 4 -3569 -3570 -3458 -3491
		mu 0 4 2680 2719 2718 2681
		f 4 -3571 -3572 3568 3447
		mu 0 4 2679 2721 2720 2680
		f 4 -3573 -3574 3570 3448
		mu 0 4 2683 2722 2721 2679
		f 4 -3575 -3576 3572 3449
		mu 0 4 2685 2723 2722 2683
		f 4 -3577 -3578 3574 3450
		mu 0 4 2687 2724 2723 2685
		f 4 -3579 -3580 3576 3451
		mu 0 4 2689 2725 2724 2687
		f 4 -3581 -3582 3578 3452
		mu 0 4 2691 2726 2725 2689
		f 4 -3583 -3584 3580 3453
		mu 0 4 2693 2703 2726 2691
		f 4 -3585 -3586 3582 3454
		mu 0 4 2695 2704 2703 2693
		f 4 -3587 -3588 3584 3455
		mu 0 4 2697 2705 2704 2695
		f 4 -3546 -3589 3586 3456
		mu 0 4 2699 2706 2705 2697
		f 4 3589 3598 3610 -3598
		mu 0 4 2727 2728 2729 2730
		f 4 3590 3599 3616 -3599
		mu 0 4 2728 2731 2732 2729
		f 4 3591 3601 -3594 -3601
		mu 0 4 2733 2734 2735 2736
		f 4 3592 3602 -3595 -3602
		mu 0 4 2734 2737 2738 2735
		f 4 3595 3606 -3590 -3606
		mu 0 4 2739 2740 2728 2727
		f 4 3596 3607 -3591 -3607
		mu 0 4 2740 2741 2731 2728
		f 4 -3608 -3614 3615 -3600
		mu 0 4 2731 2742 2743 2732
		f 4 3605 3597 3612 3611
		mu 0 4 2744 2727 2730 2745
		f 4 -3611 3608 -3592 -3610
		mu 0 4 2730 2729 2734 2733
		f 4 -3613 3609 3600 3603
		mu 0 4 2745 2730 2733 2746
		f 4 -3616 -3605 -3603 -3615
		mu 0 4 2732 2743 2747 2737
		f 4 -3617 3614 -3593 -3609
		mu 0 4 2729 2732 2737 2734
		f 4 3617 3634 -3626 -3634
		mu 0 4 2748 2749 2750 2751
		f 4 3618 3635 -3627 -3635
		mu 0 4 2749 2752 2753 2750
		f 4 3619 3636 -3628 -3636
		mu 0 4 2752 2754 2755 2753
		f 4 3620 3637 -3629 -3637
		mu 0 4 2754 2756 2757 2755
		f 4 3621 3638 -3630 -3638
		mu 0 4 2756 2758 2759 2757
		f 4 3622 3639 -3631 -3639
		mu 0 4 2758 2760 2761 2759
		f 4 3623 3640 -3632 -3640
		mu 0 4 2760 2762 2763 2761
		f 4 3624 3633 -3633 -3641
		mu 0 4 2762 2748 2751 2763
		f 3 -3618 -3642 3642
		mu 0 3 2764 2765 2766
		f 3 -3619 -3643 3643
		mu 0 3 2767 2764 2766
		f 3 -3620 -3644 3644
		mu 0 3 2768 2767 2766
		f 3 -3621 -3645 3645
		mu 0 3 2769 2768 2766
		f 3 -3622 -3646 3646
		mu 0 3 2770 2769 2766
		f 3 -3623 -3647 3647
		mu 0 3 2771 2770 2766
		f 3 -3624 -3648 3648
		mu 0 3 2772 2771 2766
		f 3 -3625 -3649 3641
		mu 0 3 2765 2772 2766
		f 4 -3651 3652 3654 3655
		mu 0 4 2773 2774 2775 2776
		f 4 -3656 3657 3659 3660
		mu 0 4 2773 2776 2777 2778
		f 4 -3661 3662 3664 3665
		mu 0 4 2773 2778 2779 2780
		f 4 -3666 3667 3668 3650
		mu 0 4 2773 2780 2781 2774
		f 4 3625 3651 -3653 -3650
		mu 0 4 2751 2750 2775 2774
		f 4 3626 3653 -3655 -3652
		mu 0 4 2750 2753 2776 2775
		f 4 3627 3656 -3658 -3654
		mu 0 4 2753 2755 2777 2776
		f 4 3628 3658 -3660 -3657
		mu 0 4 2755 2757 2778 2777
		f 4 3629 3661 -3663 -3659
		mu 0 4 2757 2759 2779 2778
		f 4 3630 3663 -3665 -3662
		mu 0 4 2759 2761 2780 2779
		f 4 3631 3666 -3668 -3664
		mu 0 4 2761 2763 2781 2780
		f 4 3632 3649 -3669 -3667
		mu 0 4 2763 2751 2774 2781
		f 4 -3670 3760 3680 -3762
		mu 0 4 2782 2783 2784 2785
		f 4 -3671 3761 3681 -3763
		mu 0 4 2786 2782 2785 2787
		f 4 -3672 3762 3682 -3764
		mu 0 4 2788 2786 2787 2789
		f 4 -3673 3763 3683 -3765
		mu 0 4 2790 2791 2792 2793
		f 4 -3674 3764 3684 -3766
		mu 0 4 2794 2795 2796 2797
		f 4 -3675 3765 3685 -3767
		mu 0 4 2798 2794 2797 2799
		f 4 -3676 3766 3686 -3768
		mu 0 4 2800 2798 2799 2801
		f 4 -3677 3767 3687 -3769
		mu 0 4 2802 2803 2804 2805
		f 4 -3678 3768 3688 3747
		mu 0 4 2806 2807 2805 2808
		f 4 -3679 3758 3689 -3760
		mu 0 4 2809 2810 2811 2812
		f 4 -3680 3759 3690 -3761
		mu 0 4 2783 2809 2812 2784
		f 4 -3681 3713 3691 -3715
		mu 0 4 2785 2784 2813 2814
		f 4 -3682 3714 3692 -3716
		mu 0 4 2787 2785 2814 2815
		f 4 -3683 3715 3693 -3717
		mu 0 4 2789 2787 2815 2816
		f 4 -3684 3716 3694 -3718
		mu 0 4 2796 2817 2818 2819
		f 4 -3685 3717 3695 -3719
		mu 0 4 2797 2796 2819 2820
		f 4 -3686 3718 3696 -3720
		mu 0 4 2799 2797 2820 2821
		f 4 -3687 3719 3697 -3721
		mu 0 4 2801 2799 2821 2822
		f 4 -3688 3720 3698 -3722
		mu 0 4 2823 2801 2822 2824
		f 4 -3689 3721 3699 3746
		mu 0 4 2825 2823 2824 2826
		f 4 -3690 3722 3700 -3724
		mu 0 4 2812 2811 2827 2828
		f 4 -3691 3723 3701 -3714
		mu 0 4 2784 2812 2828 2813
		f 4 3702 -3726 -3692 3724
		mu 0 4 2829 2830 2814 2813
		f 4 3703 -3727 -3693 3725
		mu 0 4 2830 2831 2815 2814
		f 4 3704 -3728 -3694 3726
		mu 0 4 2831 2832 2816 2815
		f 4 3705 -3729 -3695 3727
		mu 0 4 2833 2834 2835 2836
		f 4 3706 -3730 -3696 3728
		mu 0 4 2837 2838 2820 2819
		f 4 3707 -3731 -3697 3729
		mu 0 4 2838 2839 2821 2820
		f 4 3708 -3732 -3698 3730
		mu 0 4 2839 2840 2822 2821
		f 4 3709 -3733 -3699 3731
		mu 0 4 2840 2841 2824 2822
		f 4 3710 3749 -3700 3732
		mu 0 4 2841 2842 2826 2824
		f 4 3711 -3735 -3701 3733
		mu 0 4 2843 2844 2828 2827
		f 4 3712 -3725 -3702 3734
		mu 0 4 2844 2829 2813 2828
		f 4 -3703 3735 3669 -3737
		mu 0 4 2830 2829 2783 2782
		f 4 -3704 3736 3670 -3738
		mu 0 4 2831 2830 2782 2786
		f 4 -3705 3737 3671 -3739
		mu 0 4 2832 2831 2786 2788
		f 4 -3706 3738 3672 -3740
		mu 0 4 2845 2846 2847 2848
		f 4 -3707 3739 3673 -3741
		mu 0 4 2849 2850 2851 2852
		f 4 -3708 3740 3674 -3742
		mu 0 4 2839 2838 2794 2798
		f 4 -3709 3741 3675 -3743
		mu 0 4 2840 2839 2798 2800
		f 4 -3710 3742 3676 -3744
		mu 0 4 2853 2854 2803 2802
		f 4 -3711 3743 3677 3748
		mu 0 4 2855 2853 2807 2806
		f 4 -3712 3744 3678 -3746
		mu 0 4 2844 2843 2810 2809
		f 4 -3713 3745 3679 -3736
		mu 0 4 2829 2844 2809 2783
		f 4 -3752 -3753 3750 -3723
		mu 0 4 2811 2856 2857 2827
		f 4 -3754 -3758 3751 -3759
		mu 0 4 2810 2858 2856 2811
		f 4 -3755 -3756 3753 -3745
		mu 0 4 2843 2859 2858 2810
		f 4 3754 -3734 -3751 -3757
		mu 0 4 2859 2843 2827 2857
		f 4 3780 -3770 -3750 3772
		mu 0 4 2860 2861 2826 2842
		f 4 -3747 3769 3775 -3771
		mu 0 4 2862 2863 2864 2865
		f 4 3777 3776 -3748 3770
		mu 0 4 2865 2866 2867 2862
		f 4 -3749 -3777 3779 -3773
		mu 0 4 2868 2869 2870 2871
		f 4 -3776 3773 3752 -3775
		mu 0 4 2872 2861 2857 2856
		f 4 3757 3771 -3778 3774
		mu 0 4 2856 2858 2873 2872
		f 4 -3780 -3772 3755 -3779
		mu 0 4 2860 2873 2858 2859
		f 4 3756 -3774 -3781 3778
		mu 0 4 2859 2857 2861 2860;
	setAttr ".creaseData" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".creaseVertexData" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pinData[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".holeFaceData" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vertexColorSource" 2;
createNode lightLinker -shared -name "lightLinker1";
	rename -uuid "024744C8-4753-CCA3-A8FE-51B211C9C3B9";
	setAttr -size 3 ".link";
	setAttr -size 3 ".shadowLink";
createNode shapeEditorManager -name "shapeEditorManager";
	rename -uuid "B2304A68-4D9A-B7A6-727A-8B910A8B7975";
createNode poseInterpolatorManager -name "poseInterpolatorManager";
	rename -uuid "79C57DD9-4545-5B57-9983-5FACED7C668C";
createNode displayLayerManager -name "layerManager";
	rename -uuid "AC730EAC-4A14-CC0F-B1EE-6D89674C125E";
createNode displayLayer -name "defaultLayer";
	rename -uuid "9A768F11-43AB-B9B7-E6CC-2886D15C44CC";
createNode renderLayerManager -name "renderLayerManager";
	rename -uuid "F71C6BAF-49CF-57FD-32EA-F6B4BD691F91";
createNode renderLayer -name "defaultRenderLayer";
	rename -uuid "083A13D2-49B3-1CF1-7916-1B8CD8333965";
	setAttr ".global" yes;
createNode script -name "uiConfigurationScriptNode";
	rename -uuid "5B2BAFB5-43C6-5F00-80BA-F58965AE33D1";
	setAttr ".before" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1102\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.248751\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 1\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n"
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1102\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1102\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".scriptType" 3;
createNode script -name "sceneConfigurationScriptNode";
	rename -uuid "20D171BD-4F36-374A-8AAF-64BF08EB5FE4";
	setAttr ".before" -type "string" "playbackOptions -min 1 -max 405 -ast 1 -aet 500 ";
	setAttr ".scriptType" 6;
createNode aiOptions -shared -name "defaultArnoldRenderOptions";
	rename -uuid "2BAFE84E-4B4D-83DA-13F6-79B5BF68FD98";
	addAttr -cachedInternally true -shortName "ARV_options" -longName "ARV_options" 
		-dataType "string";
	setAttr ".GIDiffuseSamples" 4;
	setAttr ".GISpecularSamples" 4;
	setAttr ".GITransmissionSamples" 4;
	setAttr ".GISssSamples" 4;
	setAttr ".GIVolumeSamples" 4;
	setAttr ".version" -type "string" "2.1.0.2";
createNode aiAOVFilter -shared -name "defaultArnoldFilter";
	rename -uuid "2D4C8D6D-43EF-CD4B-A1FE-C786836B7940";
	setAttr ".aiTranslator" -type "string" "gaussian";
createNode aiAOVDriver -shared -name "defaultArnoldDriver";
	rename -uuid "B2C6A277-4DBC-8A6B-7D98-ED883B801D63";
	setAttr ".aiTranslator" -type "string" "exr";
createNode aiAOVDriver -shared -name "defaultArnoldDisplayDriver";
	rename -uuid "B1B24760-4C03-9BD3-DC49-94A63E3A1181";
	setAttr ".outputMode" 0;
	setAttr ".aiTranslator" -type "string" "maya";
createNode animCurveTA -name "Ctrl_Neck_rotateX";
	rename -uuid "A885FD6D-4D5A-BFA9-DB9A-FCB9EAB212AB";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 -1.115 36 -2.6957134271025756
		 70.00000127423597 -1.115 110 -2.6957134271025756 150.00000127423596 -1.115 188 -2.6957134271025756
		 223.00000127423596 -1.115 262 -2.6957134271025756 290.00000127423596 -1.115 300 -1.115
		 315 -2.5066747636329625 345 -0.62841701561256469 375 -1.2628898469149021 405 -1.115;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Neck_rotateY";
	rename -uuid "1335B1E4-4705-8B5C-CA86-BCA5AA77A970";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 36 0 70.00000127423597 0
		 110 0 150.00000127423596 0 188 0 223.00000127423596 0 262 0 290.00000127423596 0
		 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Neck_rotateZ";
	rename -uuid "5C66C206-41AA-5B26-32C8-E384F0BD24D0";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 36 0 70.00000127423597 0
		 110 0 150.00000127423596 0 188 0 223.00000127423596 0 262 0 290.00000127423596 0
		 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Neck_visibility";
	rename -uuid "49D28B68-47E0-57FE-C112-CCA6B0089A4C";
	setAttr ".tangentType" 5;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 36 1 70.00000127423597 1
		 110 1 150.00000127423596 1 188 1 223.00000127423596 1 262 1 290.00000127423596 1
		 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  9 9 1 1 1 1 
		1 1 1 9 9 9 9 9;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Neck_translateX";
	rename -uuid "CE310D39-4F1C-38CE-B25D-B8BB9DA0D8FB";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 36 0 70.00000127423597 0
		 110 0 150.00000127423596 0 188 0 223.00000127423596 0 262 0 290.00000127423596 0
		 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Neck_translateY";
	rename -uuid "EF9CAC1F-41B5-46CA-3A44-DA9B0F92FFC9";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 36 0 70.00000127423597 0
		 110 0 150.00000127423596 0 188 0 223.00000127423596 0 262 0 290.00000127423596 0
		 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Neck_translateZ";
	rename -uuid "C8A5F479-44B6-A531-0D4D-4DA64767C0BF";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 36 0 70.00000127423597 0
		 110 0 150.00000127423596 0 188 0 223.00000127423596 0 262 0 290.00000127423596 0
		 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Neck_scaleX";
	rename -uuid "0E33991A-4E7C-16EF-9DBC-D69C0F398DC0";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 36 1 70.00000127423597 1
		 110 1 150.00000127423596 1 188 1 223.00000127423596 1 262 1 290.00000127423596 1
		 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Neck_scaleY";
	rename -uuid "381C1863-4EE3-95DC-6709-F9A0D9B6D100";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 36 1 70.00000127423597 1
		 110 1 150.00000127423596 1 188 1 223.00000127423596 1 262 1 290.00000127423596 1
		 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Neck_scaleZ";
	rename -uuid "6C422DF1-44B9-3093-DDC5-ED84CDE6D56D";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 36 1 70.00000127423597 1
		 110 1 150.00000127423596 1 188 1 223.00000127423596 1 262 1 290.00000127423596 1
		 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 18;
	setAttr -size 14 ".keyTanInX[2:13]"  1.1595333333333333 1.1595333333333333 
		1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 1.1595333333333333 
		0.33366662414965909 0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.1595333333333333 1.1344667091836733 
		1.1595333333333333 1.1344667091836733 1.1595333333333333 1.1344667091836733 1.1595333333333333 
		0.50050000000000061 1.0009999999999994 1.0009999999999994 1.0010000000000012 1.0010000000000012;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Leg_Left_visibility";
	rename -uuid "BB2A3EAF-4329-7003-2428-0C8A7DB4697D";
	setAttr ".tangentType" 9;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 300 1 315 1
		 345 1 375 1 405 1;
	setAttr -size 6 ".keyTanOutType[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -name "Ctrl_Leg_Left_translateX";
	rename -uuid "BDCCE7C5-485E-6F73-E35F-BAA8C05FCBCF";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 300 0 315 0
		 345 0 375 0 405 0;
createNode animCurveTL -name "Ctrl_Leg_Left_translateY";
	rename -uuid "F441635E-4B5B-3582-DED0-308EC6CCB707";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 300 0 315 0
		 345 0 375 0 405 0;
createNode animCurveTL -name "Ctrl_Leg_Left_translateZ";
	rename -uuid "2E66058E-483D-935B-0C43-FAB205827CDB";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 300 0 315 0
		 345 0 375 0 405 0;
createNode animCurveTA -name "Ctrl_Leg_Left_rotateX";
	rename -uuid "D3E38ADA-4E8C-1172-A55F-9399B1962844";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 300 0 315 9.9435900873350924
		 345 -8.8311268620571735 375 11.925329883892353 405 0;
createNode animCurveTA -name "Ctrl_Leg_Left_rotateY";
	rename -uuid "A226DA9A-4F31-CFDB-E93E-99AC0E57656F";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 300 0 315 0
		 345 0 375 0 405 0;
createNode animCurveTA -name "Ctrl_Leg_Left_rotateZ";
	rename -uuid "753C742E-4079-EA10-FEEA-69830814A381";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 300 0 315 0
		 345 0 375 0 405 0;
createNode animCurveTU -name "Ctrl_Leg_Left_scaleX";
	rename -uuid "1553D4A1-4CF3-C6CF-812E-A6B502E7EC77";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 300 1 315 1
		 345 1 375 1 405 1;
createNode animCurveTU -name "Ctrl_Leg_Left_scaleY";
	rename -uuid "B0B60B60-40D1-855F-E323-728E2ED04767";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 300 1 315 1
		 345 1 375 1 405 1;
createNode animCurveTU -name "Ctrl_Leg_Left_scaleZ";
	rename -uuid "CF8EAC21-42EE-4BE4-E2F9-05A08AED08BE";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 300 1 315 1
		 345 1 375 1 405 1;
createNode animCurveTL -name "Ctrl_Head_translateX";
	rename -uuid "E87B438F-406A-B732-21AE-5A9E430C7543";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 0;
createNode animCurveTL -name "Ctrl_Head_translateY";
	rename -uuid "39248823-4733-2D09-EF04-039D3DA3964A";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 0;
createNode animCurveTL -name "Ctrl_Head_translateZ";
	rename -uuid "B996BF7E-457B-5382-1A22-1CB42626F76A";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 0;
createNode animCurveTU -name "Ctrl_Head_visibility";
	rename -uuid "3EBA2BB5-4E33-53D2-66BC-36AF3E4448BE";
	setAttr ".tangentType" 9;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 1;
	setAttr ".keyTanOutType[0]"  5;
createNode animCurveTA -name "Ctrl_Head_rotateX";
	rename -uuid "E9FB615B-47CB-AEE7-377F-8896BF17CC48";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 0;
createNode animCurveTA -name "Ctrl_Head_rotateY";
	rename -uuid "1ECAF83B-41BD-92A8-CD09-E1B791154007";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 0;
createNode animCurveTA -name "Ctrl_Head_rotateZ";
	rename -uuid "AD2DDEC5-4115-EB3A-23CD-329A677F7E68";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 0;
createNode animCurveTU -name "Ctrl_Head_scaleX";
	rename -uuid "A8FA9607-48CE-2D6A-5F29-509ABA6B4B5A";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 1;
createNode animCurveTU -name "Ctrl_Head_scaleY";
	rename -uuid "E4A413E2-4ECD-5D27-0F74-1A8642D9B431";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 1;
createNode animCurveTU -name "Ctrl_Head_scaleZ";
	rename -uuid "2FD6F272-4A83-6464-3F2F-F79CF23B1C37";
	setAttr ".tangentType" 18;
	setAttr ".keyTimeValue[0]"  1.2487512487512487 1;
createNode animCurveTU -name "Hero__1_:nurbsCircle13_visibility";
	rename -uuid "9812968A-4241-6416-C758-28A67940C505";
	setAttr ".tangentType" 5;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[0:5]"  9 9 9 1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle13_translateX";
	rename -uuid "C98A8F09-48C0-0D52-FA49-0BB22260F462";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle13_translateY";
	rename -uuid "67B56451-4FCA-6353-E132-5B8D21377E75";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle13_translateZ";
	rename -uuid "CBF0BBD7-4FB8-D7E8-95F6-5A92A2D554E0";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle13_rotateX";
	rename -uuid "A14BE598-461B-AA4E-B7B0-F2B1CF9679F3";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 -58.702281904047325
		 12.487512487512488 33.144048467488446 18.731268731268731 -58.702281904047325 24.975024975024976 33.144048467488446
		 31.218781218781217 -58.702281904047325;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle13_rotateY";
	rename -uuid "2B6D2893-478E-753E-3898-30837F2AA7CD";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle13_rotateZ";
	rename -uuid "A5F08516-4C42-B210-3180-8F8860776587";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle13_scaleX";
	rename -uuid "CF476C82-4093-A63F-6ABE-1DAA063551F9";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle13_scaleY";
	rename -uuid "23CA2046-4E43-C4C2-2BC8-2CA41941F265";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle13_scaleZ";
	rename -uuid "7558FC64-4EBA-5BEE-83E8-FB87577F3836";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle11_visibility";
	rename -uuid "25839040-491F-F168-A9B7-29A51F8AB8E2";
	setAttr ".tangentType" 9;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
	setAttr -size 2 ".keyTanOutType[0:1]"  5 5;
createNode animCurveTL -name "Hero__1_:nurbsCircle11_translateX";
	rename -uuid "183BA868-4DB4-530A-4B21-2C974CD5B030";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle11_translateY";
	rename -uuid "8E59A6FE-475C-ACFF-6ECF-F5B60CEACBAD";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle11_translateZ";
	rename -uuid "AB42F701-4F02-F3CA-1820-0C9A1A23BA02";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle11_rotateX";
	rename -uuid "CF3C9090-40BE-8EC2-503E-978EC346BBFE";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 23.702739758629008;
createNode animCurveTA -name "Hero__1_:nurbsCircle11_rotateY";
	rename -uuid "0E51823C-4DBD-9F57-CD4A-8C8D37DE894E";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle11_rotateZ";
	rename -uuid "E7159493-4E0C-83A5-F442-48BE7FCB4702";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle11_scaleX";
	rename -uuid "9472B6CD-412E-988F-145F-119CC759AE1F";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
createNode animCurveTU -name "Hero__1_:nurbsCircle11_scaleY";
	rename -uuid "BCC8FE64-4CF6-BB33-199D-D5A6941CBEE4";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
createNode animCurveTU -name "Hero__1_:nurbsCircle11_scaleZ";
	rename -uuid "423BD2F5-483E-A235-CD0B-A6AD246FBD82";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
createNode animCurveTU -name "Hero__1_:nurbsCircle16_visibility";
	rename -uuid "EFCCF260-47BD-018B-D582-6E92AE89510C";
	setAttr ".tangentType" 5;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[0:5]"  9 9 9 1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle16_translateX";
	rename -uuid "C2867548-40C2-2E1E-AE1D-23B13171A5FF";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle16_translateY";
	rename -uuid "40206D24-4330-3767-E9AE-4595DE25BD3C";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle16_translateZ";
	rename -uuid "BE7A8D4B-4786-5831-D548-51A419AB6547";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle16_rotateX";
	rename -uuid "15756EBD-4069-511D-9FBE-E595782763B6";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 36.384886445483666
		 12.487512487512488 -64.337818645777347 18.731268731268731 36.384886445483666 24.975024975024976 -64.337818645777347
		 31.218781218781217 36.384886445483666;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle16_rotateY";
	rename -uuid "062A3651-403E-1ED6-171A-058F5F69B0A6";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle16_rotateZ";
	rename -uuid "38229194-4984-ED86-0BA6-5B91EEA1E989";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle16_scaleX";
	rename -uuid "2E19051B-4282-B444-F9A4-018AE20A4C28";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle16_scaleY";
	rename -uuid "DFF49D31-4E24-B778-4D9C-8AB73E40ADA2";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle16_scaleZ";
	rename -uuid "AE7C604B-4614-4D6F-F61F-FBA146274A96";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle15_rotateX";
	rename -uuid "BD7B51C3-4851-7E05-565D-21B7F6B7D080";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 16.703822941467237;
createNode animCurveTA -name "Hero__1_:nurbsCircle15_rotateY";
	rename -uuid "83C70570-4837-67B6-15CC-D1AA58D5B1D0";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle15_rotateZ";
	rename -uuid "A2EA1FE8-44B0-C82E-260E-B2AC014D783E";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle15_visibility";
	rename -uuid "B8AE2D65-4EFE-209B-66B9-FA890398AC68";
	setAttr ".tangentType" 9;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
	setAttr -size 2 ".keyTanOutType[0:1]"  5 5;
createNode animCurveTL -name "Hero__1_:nurbsCircle15_translateX";
	rename -uuid "11B8BD1C-403B-FE44-4FBB-61917E6D2C0E";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle15_translateY";
	rename -uuid "A9977BBE-4912-F8BE-A8C0-62AD40AE4990";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle15_translateZ";
	rename -uuid "5B1E72A3-4DA0-8822-CD0C-F38E1C2CB863";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 0 6.2437562437562439 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle15_scaleX";
	rename -uuid "FDF18007-4C45-BC94-6A67-61910486F0AF";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
createNode animCurveTU -name "Hero__1_:nurbsCircle15_scaleY";
	rename -uuid "42B726F1-4E31-8F90-1C42-57956328498B";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
createNode animCurveTU -name "Hero__1_:nurbsCircle15_scaleZ";
	rename -uuid "4078F1E8-4E7E-28AF-8B7E-1EBE7084B6E8";
	setAttr ".tangentType" 18;
	setAttr -size 2 ".keyTimeValue[0:1]"  1.2487512487512487 1 6.2437562437562439 1;
createNode animCurveTA -name "Hero__1_:nurbsCircle4_rotateX";
	rename -uuid "7AC734A5-4ED0-893F-06E3-FEA50FF69173";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle4_rotateY";
	rename -uuid "78A903B6-4CC7-43E3-F602-A386364B58B0";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 -40.492958027704077
		 12.487512487512488 47.179386372007748 18.731268731268731 -40.492958027704077 24.975024975024976 47.179386372007748
		 31.218781218781217 -40.492958027704077;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle4_rotateZ";
	rename -uuid "C7BE5C70-4493-3D05-225A-8D84E5B9D472";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 68.158 6.2437562437562439 16.699765068027457
		 12.487512487512488 16.699765068027435 18.731268731268731 16.699765068027457 24.975024975024976 16.699765068027435
		 31.218781218781217 16.699765068027457;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle4_visibility";
	rename -uuid "5FE21EFC-4DAF-3145-2059-7698C6CAA78D";
	setAttr ".tangentType" 5;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[0:5]"  9 9 9 1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle4_translateX";
	rename -uuid "3136F985-486F-DDD5-20C4-77A6C18FBB74";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle4_translateY";
	rename -uuid "B94816B6-4950-A1A6-A41E-22B171AC5A8F";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle4_translateZ";
	rename -uuid "F785F360-4362-A761-1BDD-7F9A52FCDD5A";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle4_scaleX";
	rename -uuid "548AEFE3-42F8-6332-3CE3-43AA95790C29";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle4_scaleY";
	rename -uuid "A292C6F9-4092-0B79-710E-3C94D66023AC";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle4_scaleZ";
	rename -uuid "2EE8C64C-48CD-7EE4-C46A-F98640D53DF0";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle1_rotateX";
	rename -uuid "A3814017-4506-740F-7AE4-7BA031A8DB72";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 -2.1986906485567913e-015
		 12.487512487512488 0 18.731268731268731 -2.1986906485567913e-015 24.975024975024976 0
		 31.218781218781217 -2.1986906485567913e-015;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle1_rotateY";
	rename -uuid "90F6EF83-4DBF-A506-BDBC-8BB0654E38F3";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 -43.673732655400968
		 12.487512487512488 33.201867068081079 18.731268731268731 -43.673732655400968 24.975024975024976 33.201867068081079
		 31.218781218781217 -43.673732655400968;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTA -name "Hero__1_:nurbsCircle1_rotateZ";
	rename -uuid "23D30F06-4898-6FC8-B577-80B40A931225";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 -68.158 6.2437562437562439 -20.553657759037364
		 12.487512487512488 -20.553657759037346 18.731268731268731 -20.553657759037364 24.975024975024976 -20.553657759037346
		 31.218781218781217 -20.553657759037364;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle1_visibility";
	rename -uuid "BFA7D0EA-4480-D2D5-FE58-17A5D65A299B";
	setAttr ".tangentType" 5;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[0:5]"  9 9 9 1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle1_translateX";
	rename -uuid "425769F6-491E-2E62-E888-9EBAB939DA65";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle1_translateY";
	rename -uuid "97CBA88B-4D45-94BB-47AE-74826FD594A1";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTL -name "Hero__1_:nurbsCircle1_translateZ";
	rename -uuid "3ADA028A-479A-C1B5-42D0-35A886E13F36";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 0 6.2437562437562439 0
		 12.487512487512488 0 18.731268731268731 0 24.975024975024976 0 31.218781218781217 0;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle1_scaleX";
	rename -uuid "DEC81C5F-48B6-C748-0EDF-F78E49B8BC4E";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle1_scaleY";
	rename -uuid "4018B799-4E41-3C5C-9EB7-2B8C8C84FF14";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode animCurveTU -name "Hero__1_:nurbsCircle1_scaleZ";
	rename -uuid "7A6E7FD6-43EC-F207-9E40-E0B93C79D28B";
	setAttr ".tangentType" 18;
	setAttr -size 6 ".keyTimeValue[0:5]"  1.2487512487512487 1 6.2437562437562439 1
		 12.487512487512488 1 18.731268731268731 1 24.975024975024976 1 31.218781218781217 1;
	setAttr -size 6 ".keyTanInType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanOutType[3:5]"  1 1 1;
	setAttr -size 6 ".keyTanInX[3:5]"  0.16666666666666669 0.20833333333333334 
		0.16666666666666669;
	setAttr -size 6 ".keyTanInY[3:5]"  0 0 0;
	setAttr -size 6 ".keyTanOutX[3:5]"  0.20833333333333334 0.20833333333333331 
		0.20833333333333334;
	setAttr -size 6 ".keyTanOutY[3:5]"  0 0 0;
createNode timeEditorTracks -name "Composition1";
	rename -uuid "E71211EE-4E18-E164-AF51-DFA0353369EF";
	setAttr -size 4 ".track";
	setAttr ".track[0].index" 0;
	setAttr ".track[0].trackColor" -type "float3" 0.21960784 0.21960784 0.21960784 ;
	setAttr ".track[1].index" 1;
	setAttr ".track[1].trackName" -type "string" "track2";
	setAttr ".track[1].trackColor" -type "float3" 0.21960784 0.21960784 0.21960784 ;
	setAttr ".track[2].index" 2;
	setAttr ".track[2].trackName" -type "string" "track3";
	setAttr ".track[2].trackColor" -type "float3" 0.21960784 0.21960784 0.21960784 ;
	setAttr ".track[3].index" 3;
	setAttr ".track[3].trackName" -type "string" "track4";
	setAttr ".track[3].trackColor" -type "float3" 0.21960784 0.21960784 0.21960784 ;
	setAttr -size 4 ".clipTime";
	setAttr ".clipchanged" yes;
createNode timeEditor -shared -name "timeEditor";
	rename -uuid "0AA8CE94-41D2-99CF-27CB-B89A7E0BB004";
createNode timeEditorAnimSource -name "anim_Clip1_AnimSource";
	rename -uuid "3B5F678A-49B8-DC78-00FE-9F903A667DFF";
	setAttr -size 10 ".animation";
	setAttr ".animation[0].target" -type "string" "Hero__1_:nurbsCircle4.translateX";
	setAttr ".animation[1].target" -type "string" "Hero__1_:nurbsCircle4.translateY";
	setAttr ".animation[2].target" -type "string" "Hero__1_:nurbsCircle4.translateZ";
	setAttr ".animation[3].target" -type "string" "Hero__1_:nurbsCircle4.rotateX";
	setAttr ".animation[4].sourceValue" -0.70673544145530542;
	setAttr ".animation[4].target" -type "string" "Hero__1_:nurbsCircle4.rotateY";
	setAttr ".animation[5].sourceValue" 0.29146588474661395;
	setAttr ".animation[5].target" -type "string" "Hero__1_:nurbsCircle4.rotateZ";
	setAttr ".animation[6].sourceValue" 1;
	setAttr ".animation[6].target" -type "string" "Hero__1_:nurbsCircle4.scaleX";
	setAttr ".animation[7].sourceValue" 1;
	setAttr ".animation[7].target" -type "string" "Hero__1_:nurbsCircle4.scaleY";
	setAttr ".animation[8].sourceValue" 1;
	setAttr ".animation[8].target" -type "string" "Hero__1_:nurbsCircle4.scaleZ";
	setAttr ".animation[9].sourceValue" 1;
	setAttr ".animation[9].target" -type "string" "Hero__1_:nurbsCircle4.visibility";
	setAttr ".start" 1.2487512487512487;
	setAttr ".duration" 29.970029970029969;
	setAttr ".initialClipStart" 1.2487512487512487;
	setAttr ".initialClipDuration" 29.970029970029969;
	setAttr ".initialClipAbsoluteDuration" 29.970029970029969;
createNode timeEditorClip -name "anim_Clip1";
	rename -uuid "0EE00166-4E02-8315-C1CC-B58B7FDB588C";
	setAttr ".clip[0].clipid" 1;
	setAttr ".clip[0].clipName" -type "string" "anim_Clip1";
	setAttr ".clip[0].clipStart" 1.2487512487512487;
	setAttr ".clip[0].clipDuration" 29.970029970029969;
	setAttr ".clip[0].clipScale" 4.041666666666667;
	setAttr ".clip[0].clipColor" -type "float3" 1 0.39199999 0.255 ;
	setAttr ".offsetMode" 0;
	setAttr ".lastEvaluationTime" 340;
	setAttr ".ghostRootCustom" yes;
	setAttr ".ghostColor" -type "float3" 1 1 1 ;
	setAttr ".ghostStepSize" 1;
	setAttr ".ghostPostColor" -type "float3" 0 0 1 ;
	setAttr ".ghostPreColor" -type "float3" 1 0 0 ;
createNode timeEditorAnimSource -name "anim_Clip1_AnimSource1";
	rename -uuid "B4305D34-483F-9438-4E7D-3695ADDBEF8D";
	setAttr -size 10 ".animation";
	setAttr ".animation[0].target" -type "string" "Hero__1_:nurbsCircle1.translateX";
	setAttr ".animation[1].target" -type "string" "Hero__1_:nurbsCircle1.translateY";
	setAttr ".animation[2].target" -type "string" "Hero__1_:nurbsCircle1.translateZ";
	setAttr ".animation[3].sourceValue" -3.8374391050125517e-017;
	setAttr ".animation[3].target" -type "string" "Hero__1_:nurbsCircle1.rotateX";
	setAttr ".animation[4].sourceValue" -0.76225043147251292;
	setAttr ".animation[4].target" -type "string" "Hero__1_:nurbsCircle1.rotateY";
	setAttr ".animation[5].sourceValue" -0.35872900122328127;
	setAttr ".animation[5].target" -type "string" "Hero__1_:nurbsCircle1.rotateZ";
	setAttr ".animation[6].sourceValue" 1;
	setAttr ".animation[6].target" -type "string" "Hero__1_:nurbsCircle1.scaleX";
	setAttr ".animation[7].sourceValue" 1;
	setAttr ".animation[7].target" -type "string" "Hero__1_:nurbsCircle1.scaleY";
	setAttr ".animation[8].sourceValue" 1;
	setAttr ".animation[8].target" -type "string" "Hero__1_:nurbsCircle1.scaleZ";
	setAttr ".animation[9].sourceValue" 1;
	setAttr ".animation[9].target" -type "string" "Hero__1_:nurbsCircle1.visibility";
	setAttr ".start" 1.2487512487512487;
	setAttr ".duration" 29.970029970029969;
	setAttr ".initialClipStart" 1.2487512487512487;
	setAttr ".initialClipDuration" 29.970029970029969;
	setAttr ".initialClipAbsoluteDuration" 29.970029970029969;
createNode timeEditorClip -name "anim_Clip2";
	rename -uuid "2D51F493-4A97-2AB2-25E1-249B79F4907D";
	setAttr ".clip[0].clipid" 2;
	setAttr ".clip[0].clipName" -type "string" "anim_Clip2";
	setAttr ".clip[0].clipStart" 1.2487512487512487;
	setAttr ".clip[0].clipDuration" 29.970029970029969;
	setAttr ".clip[0].clipScale" 4.041666666666667;
	setAttr ".clip[0].clipColor" -type "float3" 1 0.4508 0.29324999 ;
	setAttr ".offsetMode" 0;
	setAttr ".lastEvaluationTime" 340;
	setAttr ".ghostRootCustom" yes;
	setAttr ".ghostColor" -type "float3" 1 1 1 ;
	setAttr ".ghostStepSize" 1;
	setAttr ".ghostPostColor" -type "float3" 0 0 1 ;
	setAttr ".ghostPreColor" -type "float3" 1 0 0 ;
createNode timeEditorAnimSource -name "anim_Clip1_AnimSource2";
	rename -uuid "67FD5631-439D-F94A-9CBF-14947381DB13";
	setAttr -size 20 ".animation";
	setAttr ".animation[0].target" -type "string" "Hero__1_:nurbsCircle13.translateX";
	setAttr ".animation[1].target" -type "string" "Hero__1_:nurbsCircle13.translateY";
	setAttr ".animation[2].target" -type "string" "Hero__1_:nurbsCircle13.translateZ";
	setAttr ".animation[3].sourceValue" -1.0245480976595118;
	setAttr ".animation[3].target" -type "string" "Hero__1_:nurbsCircle13.rotateX";
	setAttr ".animation[4].target" -type "string" "Hero__1_:nurbsCircle13.rotateY";
	setAttr ".animation[5].target" -type "string" "Hero__1_:nurbsCircle13.rotateZ";
	setAttr ".animation[6].sourceValue" 1;
	setAttr ".animation[6].target" -type "string" "Hero__1_:nurbsCircle13.scaleX";
	setAttr ".animation[7].sourceValue" 1;
	setAttr ".animation[7].target" -type "string" "Hero__1_:nurbsCircle13.scaleY";
	setAttr ".animation[8].sourceValue" 1;
	setAttr ".animation[8].target" -type "string" "Hero__1_:nurbsCircle13.scaleZ";
	setAttr ".animation[9].sourceValue" 1;
	setAttr ".animation[9].target" -type "string" "Hero__1_:nurbsCircle13.visibility";
	setAttr ".animation[10].target" -type "string" "Hero__1_:nurbsCircle11.translateX";
	setAttr ".animation[11].target" -type "string" "Hero__1_:nurbsCircle11.translateY";
	setAttr ".animation[12].target" -type "string" "Hero__1_:nurbsCircle11.translateZ";
	setAttr ".animation[13].sourceValue" 0.41369085053144222;
	setAttr ".animation[13].target" -type "string" "Hero__1_:nurbsCircle11.rotateX";
	setAttr ".animation[14].target" -type "string" "Hero__1_:nurbsCircle11.rotateY";
	setAttr ".animation[15].target" -type "string" "Hero__1_:nurbsCircle11.rotateZ";
	setAttr ".animation[16].sourceValue" 1;
	setAttr ".animation[16].target" -type "string" "Hero__1_:nurbsCircle11.scaleX";
	setAttr ".animation[17].sourceValue" 1;
	setAttr ".animation[17].target" -type "string" "Hero__1_:nurbsCircle11.scaleY";
	setAttr ".animation[18].sourceValue" 1;
	setAttr ".animation[18].target" -type "string" "Hero__1_:nurbsCircle11.scaleZ";
	setAttr ".animation[19].sourceValue" 1;
	setAttr ".animation[19].target" -type "string" "Hero__1_:nurbsCircle11.visibility";
	setAttr ".start" 1.2487512487512487;
	setAttr ".duration" 29.970029970029969;
	setAttr ".initialClipStart" 1.2487512487512487;
	setAttr ".initialClipDuration" 29.970029970029969;
	setAttr ".initialClipAbsoluteDuration" 29.970029970029969;
createNode timeEditorClip -name "anim_Clip3";
	rename -uuid "AAEA87C2-474D-7FF8-49E0-118848A5EB35";
	setAttr ".clip[0].clipid" 3;
	setAttr ".clip[0].clipName" -type "string" "anim_Clip3";
	setAttr ".clip[0].clipStart" 1.2487512487512487;
	setAttr ".clip[0].clipDuration" 29.970029970029969;
	setAttr ".clip[0].clipScale" 4.041666666666667;
	setAttr ".clip[0].clipColor" -type "float3" 1 0.4508 0.29324999 ;
	setAttr ".offsetMode" 0;
	setAttr ".lastEvaluationTime" 340;
	setAttr ".ghostRootCustom" yes;
	setAttr ".ghostColor" -type "float3" 1 1 1 ;
	setAttr ".ghostStepSize" 1;
	setAttr ".ghostPostColor" -type "float3" 0 0 1 ;
	setAttr ".ghostPreColor" -type "float3" 1 0 0 ;
createNode timeEditorAnimSource -name "anim_Clip1_AnimSource3";
	rename -uuid "03F3A970-4775-1E08-34A9-9B991CAC47DF";
	setAttr -size 20 ".animation";
	setAttr ".animation[0].target" -type "string" "Hero__1_:nurbsCircle15.translateX";
	setAttr ".animation[1].target" -type "string" "Hero__1_:nurbsCircle15.translateY";
	setAttr ".animation[2].target" -type "string" "Hero__1_:nurbsCircle15.translateZ";
	setAttr ".animation[3].sourceValue" 0.29153670799876735;
	setAttr ".animation[3].target" -type "string" "Hero__1_:nurbsCircle15.rotateX";
	setAttr ".animation[4].target" -type "string" "Hero__1_:nurbsCircle15.rotateY";
	setAttr ".animation[5].target" -type "string" "Hero__1_:nurbsCircle15.rotateZ";
	setAttr ".animation[6].sourceValue" 1;
	setAttr ".animation[6].target" -type "string" "Hero__1_:nurbsCircle15.scaleX";
	setAttr ".animation[7].sourceValue" 1;
	setAttr ".animation[7].target" -type "string" "Hero__1_:nurbsCircle15.scaleY";
	setAttr ".animation[8].sourceValue" 1;
	setAttr ".animation[8].target" -type "string" "Hero__1_:nurbsCircle15.scaleZ";
	setAttr ".animation[9].sourceValue" 1;
	setAttr ".animation[9].target" -type "string" "Hero__1_:nurbsCircle15.visibility";
	setAttr ".animation[10].target" -type "string" "Hero__1_:nurbsCircle16.translateX";
	setAttr ".animation[11].target" -type "string" "Hero__1_:nurbsCircle16.translateY";
	setAttr ".animation[12].target" -type "string" "Hero__1_:nurbsCircle16.translateZ";
	setAttr ".animation[13].sourceValue" 0.6350360664379463;
	setAttr ".animation[13].target" -type "string" "Hero__1_:nurbsCircle16.rotateX";
	setAttr ".animation[14].target" -type "string" "Hero__1_:nurbsCircle16.rotateY";
	setAttr ".animation[15].target" -type "string" "Hero__1_:nurbsCircle16.rotateZ";
	setAttr ".animation[16].sourceValue" 1;
	setAttr ".animation[16].target" -type "string" "Hero__1_:nurbsCircle16.scaleX";
	setAttr ".animation[17].sourceValue" 1;
	setAttr ".animation[17].target" -type "string" "Hero__1_:nurbsCircle16.scaleY";
	setAttr ".animation[18].sourceValue" 1;
	setAttr ".animation[18].target" -type "string" "Hero__1_:nurbsCircle16.scaleZ";
	setAttr ".animation[19].sourceValue" 1;
	setAttr ".animation[19].target" -type "string" "Hero__1_:nurbsCircle16.visibility";
	setAttr ".start" 1.2487512487512487;
	setAttr ".duration" 29.970029970029969;
	setAttr ".initialClipStart" 1.2487512487512487;
	setAttr ".initialClipDuration" 29.970029970029969;
	setAttr ".initialClipAbsoluteDuration" 29.970029970029969;
createNode timeEditorClip -name "anim_Clip4";
	rename -uuid "2BD71CB6-4F53-10CC-44AB-218717BE6A51";
	setAttr ".clip[0].clipid" 4;
	setAttr ".clip[0].clipName" -type "string" "anim_Clip4";
	setAttr ".clip[0].clipStart" 1.2487512487512487;
	setAttr ".clip[0].clipDuration" 29.970029970029969;
	setAttr ".clip[0].clipScale" 4.041666666666667;
	setAttr ".clip[0].clipColor" -type "float3" 1 0.4508 0.29324999 ;
	setAttr ".offsetMode" 0;
	setAttr ".lastEvaluationTime" 340;
	setAttr ".ghostRootCustom" yes;
	setAttr ".ghostColor" -type "float3" 1 1 1 ;
	setAttr ".ghostStepSize" 1;
	setAttr ".ghostPostColor" -type "float3" 0 0 1 ;
	setAttr ".ghostPreColor" -type "float3" 1 0 0 ;
createNode mentalrayItemsList -shared -name "mentalrayItemsList";
	rename -uuid "C13EFF62-423D-C8BD-67C5-1D8F32D88EC4";
createNode mentalrayGlobals -shared -name "mentalrayGlobals";
	rename -uuid "B623FF80-49D5-91C2-04CD-96926B82D621";
createNode mentalrayOptions -shared -name "miDefaultOptions";
	rename -uuid "27E3F02F-44EC-0F59-A17F-FCA8C3D544E1";
	setAttr ".miSamplesMax" 50;
createNode mentalrayFramebuffer -shared -name "miDefaultFramebuffer";
	rename -uuid "5DF43F5A-4C62-C36A-560C-8BAC0D4C3C5C";
createNode animCurveTA -name "Ctrl_Shoulder_Right_rotateX";
	rename -uuid "387916A4-4FF0-C1F9-2B8D-3BBD1738B5FB";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0 300 0 315 -3.9861257541766035e-016
		 345 -3.9857537546183162e-016 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Shoulder_Right_rotateY";
	rename -uuid "0A990BEE-41CC-F63E-7BC2-64BA53FB49C5";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0 300 0 315 -4.1461886726327819
		 345 4.0717534680544665 375 -0.88586260812105044 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Shoulder_Right_rotateZ";
	rename -uuid "00AF0B27-4498-E194-D37B-6493A352B69F";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 67.948164273262122
		 37.462537462537462 64.376290609856611 74.925074925074924 67.948164273262122 112.38761238761239 64.376290609856611
		 149.85014985014985 67.948164273262122 187.3126873126873 64.376290609856611 224.77522477522479 67.948164273262122
		 262.23776223776224 64.376290609856611 287.21278721278719 67.948164273262122 300 67.948164273262122
		 315 67.948164273262066 345 67.948164273262066 375 67.948164273262066 405 67.948164273262122;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Right_visibility";
	rename -uuid "B21DD1C2-468E-84F0-A0A9-89A7DC0C328C";
	setAttr ".tangentType" 5;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  9 9 1 1 1 1 
		1 1 1 9 9 9 9 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Shoulder_Right_translateX";
	rename -uuid "3FF69CAC-41EE-A844-5B37-91A347621F1B";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0 300 0 315 0 345 0
		 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Shoulder_Right_translateY";
	rename -uuid "845C00EB-45C2-5070-C4BC-40813D90C6FA";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0 300 0 315 0 345 0
		 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Shoulder_Right_translateZ";
	rename -uuid "65C6E801-496A-A468-D813-118FFF3C1FBF";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0 300 0 315 0 345 0
		 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Right_scaleX";
	rename -uuid "2D1187A1-4BD8-4C3F-D0F4-64A09FFDBE13";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Right_scaleY";
	rename -uuid "FA677D94-41AA-294F-E0A4-91BBC080105F";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Right_scaleZ";
	rename -uuid "27F17C52-43EA-D78A-B4C0-93934DD99883";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.42666666666666586 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.42666666666666586;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Shoulder_Left_rotateX";
	rename -uuid "ADF1B165-4224-E502-CFD9-0AB82FF1A0F4";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 -6.0100625734169988
		 37.462537462537462 -6.1336482982347684 74.925074925074924 -6.0100625734169988 112.38761238761239 -6.1336482982347684
		 149.85014985014985 -6.0100625734169988 187.3126873126873 -6.1336482982347684 224.77522477522479 -6.0100625734169988
		 262.23776223776224 -6.1336482982347684 290.21278721278719 -6.0100625734169988 300 -6.0100625734169988
		 315 -6.175302144696496 345 -5.9310773285468317 375 -6.0646645057634645 405 -6.0100625734169988;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Shoulder_Left_rotateY";
	rename -uuid "34735EE0-41B3-AD7A-6FDE-6F90D63440B4";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 -25.031986953156455
		 37.462537462537462 -27.391563299044982 74.925074925074924 -25.031986953156455 112.38761238761239 -27.391563299044982
		 149.85014985014985 -25.031986953156455 187.3126873126873 -27.391563299044982 224.77522477522479 -25.031986953156455
		 262.23776223776224 -27.391563299044982 290.21278721278719 -25.031986953156455 300 -25.031986953156455
		 315 -28.125501872642914 345 -23.350985571387699 375 -26.110861668239412 405 -25.031986953156455;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Shoulder_Left_rotateZ";
	rename -uuid "5AB60886-4592-030D-D54E-9CBF616D713E";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 -49.382100653261034
		 37.462537462537462 -49.102358616640252 74.925074925074924 -49.382100653261034 112.38761238761239 -49.102358616640252
		 149.85014985014985 -49.382100653261034 187.3126873126873 -49.102358616640252 224.77522477522479 -49.382100653261034
		 262.23776223776224 -49.102358616640252 290.21278721278719 -49.382100653261034 300 -49.382100653261034
		 315 -49.01292584030471 345 -49.574826603815161 375 -49.255606326923463 405 -49.382100653261034;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Left_visibility";
	rename -uuid "76047530-40FD-CA1E-3FAE-3BAA47204085";
	setAttr ".tangentType" 5;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 290.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  9 9 1 1 1 1 
		1 1 1 9 9 9 9 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Shoulder_Left_translateX";
	rename -uuid "16E3D052-4830-D5BB-21F9-13A7EF3B9895";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 290.21278721278719 0 300 0 315 0 345 0
		 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Shoulder_Left_translateY";
	rename -uuid "BF76B93F-4359-698F-BA2E-AEA7FAE43705";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 290.21278721278719 0 300 0 315 0 345 0
		 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Shoulder_Left_translateZ";
	rename -uuid "7149203F-4F2E-1FDD-BA76-D9857B9BDBF4";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 290.21278721278719 0 300 0 315 0 345 0
		 375 0 405 0;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Left_scaleX";
	rename -uuid "69A54F98-4DBE-17A4-9DB0-3F8152467BB4";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 290.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Left_scaleY";
	rename -uuid "C75C0042-4A2D-FAFD-8F01-93AC25CB50BB";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 290.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Shoulder_Left_scaleZ";
	rename -uuid "7EA1E263-44C1-6568-8E8E-509CA33B5AE7";
	setAttr ".tangentType" 1;
	setAttr -size 14 ".keyTimeValue[0:13]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 290.21278721278719 1 300 1 315 1 345 1
		 375 1 405 1;
	setAttr -size 14 ".keyTanInType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanOutType[0:13]"  18 18 1 1 1 1 
		1 1 1 18 18 18 18 1;
	setAttr -size 14 ".keyTanInX[2:13]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 
		0.32656666666666645 0.50050000000000061 1.0009999999999994 1.0009999999999994 0.32656666666666645;
	setAttr -size 14 ".keyTanInY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -size 14 ".keyTanOutX[2:13]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333 0.50050000000000061 1.0009999999999994 
		1.0009999999999994 1.0010000000000012 0.50050000000000061;
	setAttr -size 14 ".keyTanOutY[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Elbow_Right_rotateX";
	rename -uuid "209AFB6A-44EA-FBF1-4DED-739DA3F99E5B";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Elbow_Right_rotateY";
	rename -uuid "A6311E42-4DB7-498B-4A1F-8FB463B7C131";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 0 37.462537462537462 9.7853726602601867
		 74.925074925074924 0 112.38761238761239 9.7853726602601867 149.85014985014985 0 187.3126873126873 9.7853726602601867
		 224.77522477522479 0 262.23776223776224 9.7853726602601867 287.21278721278719 0;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Elbow_Right_rotateZ";
	rename -uuid "CD32D913-4C64-84F3-6336-C3951F981BEA";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 20.067172294483917
		 37.462537462537462 20.067172294483917 74.925074925074924 20.067172294483917 112.38761238761239 20.067172294483917
		 149.85014985014985 20.067172294483917 187.3126873126873 20.067172294483917 224.77522477522479 20.067172294483917
		 262.23776223776224 20.067172294483917 287.21278721278719 20.067172294483917;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Elbow_Right_visibility";
	rename -uuid "9EAE47AA-4D1C-E58B-3E1C-DDB94A29DAFA";
	setAttr ".tangentType" 5;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1;
	setAttr -size 9 ".keyTanInType[0:8]"  9 9 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Elbow_Right_translateX";
	rename -uuid "00BE7D08-4CB4-2B0D-03C3-A8839CFE50C4";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Elbow_Right_translateY";
	rename -uuid "85C92202-4A77-BDE0-4638-539A3F9E4B52";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Elbow_Right_translateZ";
	rename -uuid "6E597E83-4E96-028E-4961-9BAC6B3B14D7";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 0 37.462537462537462 0
		 74.925074925074924 0 112.38761238761239 0 149.85014985014985 0 187.3126873126873 0
		 224.77522477522479 0 262.23776223776224 0 287.21278721278719 0;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Elbow_Right_scaleX";
	rename -uuid "470B4D3E-4D69-EAA0-46CA-2DB56B3C7EB8";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Elbow_Right_scaleY";
	rename -uuid "243604DA-448D-B6BD-5E3E-6BACF0CBB957";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Elbow_Right_scaleZ";
	rename -uuid "7C534465-49FF-F2DA-7BC7-CFAE6937C0F3";
	setAttr ".tangentType" 1;
	setAttr -size 9 ".keyTimeValue[0:8]"  1.2487512487512487 1 37.462537462537462 1
		 74.925074925074924 1 112.38761238761239 1 149.85014985014985 1 187.3126873126873 1
		 224.77522477522479 1 262.23776223776224 1 287.21278721278719 1;
	setAttr -size 9 ".keyTanInType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanOutType[0:8]"  18 18 1 1 1 1 
		1 1 1;
	setAttr -size 9 ".keyTanInX[2:8]"  1.2083333333333333 1.2083333333333333 
		1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333 1.2083333333333333;
	setAttr -size 9 ".keyTanInY[2:8]"  0 0 0 0 0 0 0;
	setAttr -size 9 ".keyTanOutX[2:8]"  1.2083333333333333 1.25 1.2083333333333333 
		1.25 1.2083333333333333 1.25 1.2083333333333333;
	setAttr -size 9 ".keyTanOutY[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Leg_Right_rotateX";
	rename -uuid "AF6F2272-4A26-6DB8-6891-DBAD42E51254";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 0 139 0 169.07586291259761 -10.537630089125019
		 198.53793315528009 11.469405002153568 226.15862368923592 0 300 0 315 -11.377748897642297
		 345 10.392892107520311 375 -11.377748897642297 405 0;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Leg_Right_rotateY";
	rename -uuid "0A8FCB5C-4D9F-6078-C1CD-BC977E723EBA";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 0 139 0 169.07586291259761 0
		 198.53793315528009 0 226.15862368923592 0 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTA -name "Ctrl_Leg_Right_rotateZ";
	rename -uuid "793CD1F0-44CD-DB95-26AD-FE9F6FBA1BD7";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 0 139 0 169.07586291259761 0
		 198.53793315528009 0 226.15862368923592 0 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Leg_Right_visibility";
	rename -uuid "7B43E531-426E-2BB0-233C-F5A4975CBF9E";
	setAttr ".tangentType" 5;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 1 139 1 169.07586291259761 1
		 198.53793315528009 1 226.15862368923592 1 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 10 ".keyTanInType[0:9]"  9 9 9 9 1 9 
		9 9 1 9;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Leg_Right_translateX";
	rename -uuid "752E7EA9-404E-7366-A9B0-B2B37C9E30C2";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 0 139 0 169.07586291259761 0
		 198.53793315528009 0 226.15862368923592 0 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Leg_Right_translateY";
	rename -uuid "1BA6EF8D-4769-35BC-A4E3-CF818196BC77";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 0 139 0 169.07586291259761 0
		 198.53793315528009 0 226.15862368923592 0 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -name "Ctrl_Leg_Right_translateZ";
	rename -uuid "3835CBE2-41DE-8796-295A-C5B1BFE8E59A";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 0 139 0 169.07586291259761 0
		 198.53793315528009 0 226.15862368923592 0 300 0 315 0 345 0 375 0 405 0;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Leg_Right_scaleX";
	rename -uuid "9442A590-4EDA-A078-4F5E-51866996B5DC";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 1 139 1 169.07586291259761 1
		 198.53793315528009 1 226.15862368923592 1 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Leg_Right_scaleY";
	rename -uuid "60C16FA8-4B4E-3333-0DA6-90A114DEAACC";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 1 139 1 169.07586291259761 1
		 198.53793315528009 1 226.15862368923592 1 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -name "Ctrl_Leg_Right_scaleZ";
	rename -uuid "F1911DAE-4506-30D2-DBB2-F98E217E5803";
	setAttr ".tangentType" 18;
	setAttr -size 10 ".keyTimeValue[0:9]"  1.2487512487512487 1 139 1 169.07586291259761 1
		 198.53793315528009 1 226.15862368923592 1 300 1 315 1 345 1 375 1 405 1;
	setAttr -size 10 ".keyTanInType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanOutType[4:9]"  1 18 18 18 1 18;
	setAttr -size 10 ".keyTanInX[4:9]"  1.0035313056613779 2.4638405895691609 
		0.50050000000000061 1.0009999999999994 0.50050000000000061 1.0010000000000012;
	setAttr -size 10 ".keyTanInY[4:9]"  0 0 0 0 0 0;
	setAttr -size 10 ".keyTanOutX[4:9]"  1.0035313056613779 0.50050000000000061 
		1.0009999999999994 1.0009999999999994 1.0009999999999994 1.0010000000000012;
	setAttr -size 10 ".keyTanOutY[4:9]"  0 0 0 0 0 0;
createNode nodeGraphEditorInfo -name "MayaNodeEditorSavedTabsInfo";
	rename -uuid "3EE1B39A-4918-94C1-870E-1DB0C9F10857";
	setAttr ".tabGraphInfo[0].tabName" -type "string" "Untitled_1";
	setAttr ".tabGraphInfo[0].viewRectLow" -type "double2" -622.61902287839052 -301.19046422224244 ;
	setAttr ".tabGraphInfo[0].viewRectHigh" -type "double2" 601.19045230131405 314.28570179712256 ;
createNode checker -name "checker1";
	rename -uuid "048BB4D7-4151-64BA-4924-3DB7190EBAB5";
createNode place2dTexture -name "place2dTexture1";
	rename -uuid "88A7AB88-4E05-40CC-D674-4580B0384F3F";
	setAttr ".repeatUV" -type "float2" 4 4 ;
createNode objectSet -name "UVShapeHiddenFacesSet";
	rename -uuid "4D8E45E9-4903-88FA-2714-D3B134268262";
	setAttr ".isHistoricallyInteresting" 0;
createNode objectSet -name "UVShapeHiddenFacesSet1";
	rename -uuid "D852BDE0-4268-A429-E6E1-C085D0D05305";
	setAttr ".isHistoricallyInteresting" 0;
createNode skinCluster -name "skinCluster1";
	rename -uuid "DD750E2B-48C2-3BDF-2CA6-6DB94B7C24F9";
	setAttr -size 1344 ".blendWeights";
	setAttr ".blendWeights[26]" 1;
	setAttr ".blendWeights[28]" 1;
	setAttr ".blendWeights[31]" 0.25;
	setAttr ".blendWeights[220]" 1;
	setAttr ".blendWeights[223]" 1;
	setAttr ".blendWeights[224]" 1;
	setAttr ".blendWeights[227]" 1;
	setAttr ".blendWeights[228]" 1;
	setAttr ".blendWeights[231]" 1;
	setAttr ".blendWeights[232]" 1;
	setAttr ".blendWeights[235]" 1;
	setAttr ".blendWeights[236]" 1;
	setAttr ".blendWeights[239]" 1;
	setAttr ".blendWeights[240]" 1;
	setAttr ".blendWeights[243]" 1;
	setAttr ".blendWeights[244]" 1;
	setAttr ".blendWeights[247]" 1;
	setAttr ".blendWeights[248]" 1;
	setAttr ".blendWeights[251]" 1;
	setAttr ".blendWeights[252]" 1;
	setAttr ".blendWeights[255]" 1;
	setAttr ".blendWeights[256]" 1;
	setAttr ".blendWeights[259]" 1;
	setAttr ".blendWeights[267]" 1;
	setAttr ".blendWeights[268]" 1;
	setAttr ".blendWeights[269]" 1;
	setAttr ".blendWeights[270]" 1;
	setAttr ".blendWeights[271]" 1;
	setAttr ".blendWeights[272]" 1;
	setAttr ".blendWeights[273]" 1;
	setAttr ".blendWeights[274]" 1;
	setAttr ".blendWeights[275]" 1;
	setAttr ".blendWeights[276]" 1;
	setAttr ".blendWeights[277]" 1;
	setAttr ".blendWeights[278]" 1;
	setAttr ".blendWeights[279]" 1;
	setAttr ".blendWeights[280]" 1;
	setAttr ".blendWeights[281]" 1;
	setAttr ".blendWeights[282]" 1;
	setAttr ".blendWeights[283]" 1;
	setAttr ".blendWeights[284]" 1;
	setAttr ".blendWeights[285]" 1;
	setAttr ".blendWeights[286]" 1;
	setAttr ".blendWeights[287]" 1;
	setAttr ".blendWeights[288]" 1;
	setAttr ".blendWeights[289]" 1;
	setAttr ".blendWeights[290]" 1;
	setAttr ".blendWeights[291]" 1;
	setAttr ".blendWeights[292]" 1;
	setAttr ".blendWeights[293]" 1;
	setAttr ".blendWeights[294]" 1;
	setAttr ".blendWeights[295]" 1;
	setAttr ".blendWeights[296]" 1;
	setAttr ".blendWeights[297]" 1;
	setAttr ".blendWeights[298]" 1;
	setAttr ".blendWeights[299]" 1;
	setAttr ".blendWeights[300]" 1;
	setAttr ".blendWeights[301]" 1;
	setAttr ".blendWeights[302]" 1;
	setAttr ".blendWeights[303]" 1;
	setAttr ".blendWeights[304]" 1;
	setAttr ".blendWeights[305]" 1;
	setAttr ".blendWeights[306]" 1;
	setAttr ".blendWeights[307]" 1;
	setAttr ".blendWeights[308]" 1;
	setAttr ".blendWeights[309]" 1;
	setAttr ".blendWeights[310]" 1;
	setAttr ".blendWeights[311]" 1;
	setAttr ".blendWeights[312]" 1;
	setAttr ".blendWeights[313]" 1;
	setAttr ".blendWeights[314]" 1;
	setAttr ".blendWeights[315]" 1;
	setAttr ".blendWeights[316]" 1;
	setAttr ".blendWeights[317]" 1;
	setAttr ".blendWeights[318]" 1;
	setAttr ".blendWeights[319]" 1;
	setAttr ".blendWeights[320]" 1;
	setAttr ".blendWeights[321]" 1;
	setAttr ".blendWeights[322]" 1;
	setAttr ".blendWeights[323]" 1;
	setAttr ".blendWeights[324]" 1;
	setAttr ".blendWeights[325]" 1;
	setAttr ".blendWeights[478]" 8.9362976130970273e-005;
	setAttr ".blendWeights[479]" 0.00010404353028998798;
	setAttr ".blendWeights[480]" 0.00010386273719815899;
	setAttr ".blendWeights[481]" 8.9138061780819934e-005;
	setAttr ".blendWeights[482]" 0.00010385982697080649;
	setAttr ".blendWeights[483]" 0.00020896995414386443;
	setAttr ".blendWeights[484]" 0.0001779569124003063;
	setAttr ".blendWeights[485]" 0.00018439118738131349;
	setAttr ".blendWeights[486]" 0.00022038377809535485;
	setAttr ".blendWeights[487]" 0.00013528324635816991;
	setAttr ".blendWeights[488]" 0.00013464715319006209;
	setAttr ".blendWeights[489]" 8.1398421892681268e-005;
	setAttr ".blendWeights[490]" 0.00010136597789362455;
	setAttr ".blendWeights[491]" 0.00012233274056032157;
	setAttr ".blendWeights[492]" 0.00012268315046450387;
	setAttr ".blendWeights[493]" 0.00012240072722731043;
	setAttr ".blendWeights[494]" 0.00010134094861630411;
	setAttr ".blendWeights[495]" 8.1398305496587563e-005;
	setAttr ".blendWeights[496]" 0.0001339183934238701;
	setAttr ".blendWeights[497]" 0.00018602309750160705;
	setAttr ".blendWeights[498]" 0.00022367577069825478;
	setAttr ".blendWeights[499]" 0.00012024400289074606;
	setAttr ".blendWeights[500]" 0.00012009627174110367;
	setAttr ".blendWeights[501]" 0.00012009289586397678;
	setAttr ".blendWeights[502]" 0.0001860210020084279;
	setAttr ".blendWeights[503]" 0.00022368019446935596;
	setAttr ".blendWeights[504]" 0.00013391396961568922;
	setAttr ".blendWeights[505]" 8.3409030956785313e-005;
	setAttr ".blendWeights[506]" 0.00010235166646348388;
	setAttr ".blendWeights[507]" 0.00015593998132291519;
	setAttr ".blendWeights[508]" 0.00015605895759373753;
	setAttr ".blendWeights[509]" 0.00015602985406838656;
	setAttr ".blendWeights[510]" 0.00010235236487066883;
	setAttr ".blendWeights[511]" 8.3408215965715456e-005;
	setAttr ".blendWeights[512]" 0.00013322805044349573;
	setAttr ".blendWeights[513]" 0.00018269664597532834;
	setAttr ".blendWeights[514]" 0.00021838329721820746;
	setAttr ".blendWeights[515]" 0.00015042701734038245;
	setAttr ".blendWeights[516]" 0.00015019511782634123;
	setAttr ".blendWeights[517]" 0.00015019046152347322;
	setAttr ".blendWeights[518]" 0.0001826929208624266;
	setAttr ".blendWeights[519]" 0.00021837119020508408;
	setAttr ".blendWeights[520]" 0.00013322409249585596;
	setAttr ".blendWeights[521]" 9.0425149598802627e-005;
	setAttr ".blendWeights[522]" 0.00010577881714979201;
	setAttr ".blendWeights[523]" 0.00018341027198705718;
	setAttr ".blendWeights[524]" 0.00018385125306390367;
	setAttr ".blendWeights[525]" 0.00018385218464947624;
	setAttr ".blendWeights[526]" 0.00010586508073391621;
	setAttr ".blendWeights[527]" 8.9772874387493082e-005;
	setAttr ".blendWeights[528]" 0.00013266669564058337;
	setAttr ".blendWeights[529]" 0.00017476713262397185;
	setAttr ".blendWeights[530]" 0.00020525979787163265;
	setAttr ".blendWeights[531]" 0.00017920651471050632;
	setAttr ".blendWeights[532]" 0.00017899370734372061;
	setAttr ".blendWeights[533]" 0.00017899487175858115;
	setAttr ".blendWeights[534]" 0.00017476503750013571;
	setAttr ".blendWeights[535]" 0.0002056211513792555;
	setAttr ".blendWeights[536]" 0.00013266483334475367;
	setAttr ".blendWeights[537]" 8.8476357099741363e-005;
	setAttr ".blendWeights[538]" 0.00010408869952450561;
	setAttr ".blendWeights[539]" 0.00011014264548658381;
	setAttr ".blendWeights[540]" 9.8740696014646247e-005;
	setAttr ".blendWeights[541]" 0.00013007878344019168;
	setAttr ".blendWeights[542]" 0.00012990485890509735;
	setAttr ".blendWeights[543]" 0.00017344512061258886;
	setAttr ".blendWeights[544]" 0.00016133699578223899;
	setAttr ".blendWeights[545]" 0.00020467073666519033;
	setAttr ".blendWeights[546]" 0.00018414112747049995;
	setAttr ".blendWeights[547]" 0.00021505451762290472;
	setAttr ".blendWeights[548]" 0.00019202360884549696;
	setAttr ".blendWeights[549]" 0.00020257735610629008;
	setAttr ".blendWeights[550]" 0.00018325730216699806;
	setAttr ".blendWeights[551]" 0.00017079131647515684;
	setAttr ".blendWeights[552]" 0.00016073233429415336;
	setAttr ".blendWeights[553]" 0.00012897795959511058;
	setAttr ".blendWeights[554]" 0.00012977587035755547;
	setAttr ".blendWeights[555]" 0.00010476425740726329;
	setAttr ".blendWeights[556]" 0.00011044474309346601;
	setAttr ".blendWeights[557]" 8.9369378913045205e-005;
	setAttr ".blendWeights[558]" 9.9182026409592571e-005;
	setAttr ".blendWeights[559]" 8.3268983295331487e-005;
	setAttr ".blendWeights[560]" 9.4799106015272527e-005;
	setAttr ".blendWeights[561]" 0.00011767262130910256;
	setAttr ".blendWeights[562]" 0.00011164405385704268;
	setAttr ".blendWeights[563]" 0.0001297907718340696;
	setAttr ".blendWeights[564]" 0.00014627681121099105;
	setAttr ".blendWeights[565]" 0.00015833348040881611;
	setAttr ".blendWeights[566]" 0.00016259381548848744;
	setAttr ".blendWeights[567]" 0.00015798982228048056;
	setAttr ".blendWeights[568]" 0.00014609101219258385;
	setAttr ".blendWeights[569]" 0.00012977587048328305;
	setAttr ".blendWeights[570]" 0.00011776540423821336;
	setAttr ".blendWeights[571]" 0.00011181564999225872;
	setAttr ".blendWeights[572]" 0.00010951400269461863;
	setAttr ".blendWeights[573]" 0.00012730902990487711;
	setAttr ".blendWeights[574]" 0.00012977587060466339;
	setAttr ".blendWeights[575]" 1.8860231596516466e-005;
	setAttr ".blendWeights[576]" 1.7760456051336295e-005;
	setAttr ".blendWeights[577]" 1.7886242808242839e-005;
	setAttr ".blendWeights[578]" 1.9994989947810241e-005;
	setAttr ".blendWeights[579]" 7.0547815786114348e-005;
	setAttr ".blendWeights[580]" 5.1000337303098233e-005;
	setAttr ".blendWeights[581]" 5.1725779385026403e-005;
	setAttr ".blendWeights[582]" 7.1810339958650212e-005;
	setAttr ".blendWeights[583]" 0.00017967031412701243;
	setAttr ".blendWeights[584]" 0.00018146613688154736;
	setAttr ".blendWeights[585]" 0.00020423092024189916;
	setAttr ".blendWeights[586]" 0.00018953371868686385;
	setAttr ".blendWeights[587]" 4.5193491912014654e-006;
	setAttr ".blendWeights[588]" 4.4130838301888877e-006;
	setAttr ".blendWeights[589]" 2.2727895091986585e-006;
	setAttr ".blendWeights[590]" 2.335151741937548e-006;
	setAttr ".blendWeights[591]" 2.3750530937148258e-006;
	setAttr ".blendWeights[592]" 4.5588721934477712e-006;
	setAttr ".blendWeights[593]" 4.5977330836097467e-006;
	setAttr ".blendWeights[594]" 4.6839750091528003e-006;
	setAttr ".blendWeights[595]" 2.4094647354727169e-006;
	setAttr ".blendWeights[596]" 2.3564266424720895e-006;
	setAttr ".blendWeights[597]" 1.2125232361979447e-005;
	setAttr ".blendWeights[598]" 1.1885198521172414e-005;
	setAttr ".blendWeights[599]" 1.2685379236742851e-005;
	setAttr ".blendWeights[600]" 1.2413753186981965e-005;
	setAttr ".blendWeights[601]" 1.9458431731301902e-005;
	setAttr ".blendWeights[602]" 1.8307520755778139e-005;
	setAttr ".blendWeights[603]" 5.1626244288838354e-005;
	setAttr ".blendWeights[604]" 7.1724774704454944e-005;
	setAttr ".blendWeights[605]" 3.2494455048652115e-007;
	setAttr ".blendWeights[606]" 3.1213841033833401e-007;
	setAttr ".blendWeights[607]" 4.0062042140596033e-007;
	setAttr ".blendWeights[608]" 4.0775404309657619e-007;
	setAttr ".blendWeights[609]" 1.2360565934943274e-005;
	setAttr ".blendWeights[610]" 2.8789745504385057e-005;
	setAttr ".blendWeights[611]" 2.9031365506723768e-005;
	setAttr ".blendWeights[612]" 2.9400052832842982e-005;
	setAttr ".blendWeights[613]" 1.8632611013292665e-006;
	setAttr ".blendWeights[614]" 1.7940430976189516e-006;
	setAttr ".blendWeights[615]" 1.6991973520433525e-006;
	setAttr ".blendWeights[616]" 8.3275619338617871e-005;
	setAttr ".blendWeights[617]" 8.2978876688714819e-005;
	setAttr ".blendWeights[618]" 1.771822323150967e-006;
	setAttr ".blendWeights[619]" 8.2711237869313237e-005;
	setAttr ".blendWeights[620]" 1.7651357181185071e-006;
	setAttr ".blendWeights[621]" 5.4043505155576164e-007;
	setAttr ".blendWeights[622]" 3.9998150134727711e-007;
	setAttr ".blendWeights[623]" 0.00018271178084070232;
	setAttr ".blendWeights[624]" 0.0047268206107368912;
	setAttr ".blendWeights[625]" 0.0047298529938777714;
	setAttr ".blendWeights[626]" 0.0028328378595873557;
	setAttr ".blendWeights[627]" 0.0029730652385539609;
	setAttr ".blendWeights[628]" 0.0048052305143953481;
	setAttr ".blendWeights[629]" 0.0028489273867268279;
	setAttr ".blendWeights[630]" 0.00062609941071162538;
	setAttr ".blendWeights[631]" 0.00044383486885384628;
	setAttr ".blendWeights[632]" 0.00048340210845930037;
	setAttr ".blendWeights[633]" 0.00070005480506761606;
	setAttr ".blendWeights[634]" 0.0002893088949634181;
	setAttr ".blendWeights[635]" 0.00042618211415564738;
	setAttr ".blendWeights[636]" 0.00047123111833453652;
	setAttr ".blendWeights[637]" 0.00033844407682343588;
	setAttr ".blendWeights[638]" 0.0006480031864530897;
	setAttr ".blendWeights[639]" 0.00080361321879076036;
	setAttr ".blendWeights[640]" 0.00058019451858000448;
	setAttr ".blendWeights[641]" 0.00044236710305258636;
	setAttr ".blendWeights[642]" 0.00092222646190180083;
	setAttr ".blendWeights[643]" 0.00079788185973441513;
	setAttr ".blendWeights[644]" 0.0012741053913406066;
	setAttr ".blendWeights[645]" 0.0013343004944536747;
	setAttr ".blendWeights[646]" 0.00057843618076756226;
	setAttr ".blendWeights[647]" 0.00072244938516585928;
	setAttr ".blendWeights[648]" 0.001023452953659687;
	setAttr ".blendWeights[649]" 0.00096956837861338768;
	setAttr ".blendWeights[650]" 0.002768997562445853;
	setAttr ".blendWeights[651]" 0.0025482331344617729;
	setAttr ".blendWeights[652]" 0.0033678975830241822;
	setAttr ".blendWeights[653]" 0.0036856387679881203;
	setAttr ".blendWeights[654]" 0.0022780527143828888;
	setAttr ".blendWeights[655]" 0.0025310744368944316;
	setAttr ".blendWeights[656]" 0.0036006537104262132;
	setAttr ".blendWeights[657]" 0.0032381792314170044;
	setAttr ".blendWeights[658]" 0.0041739800675824265;
	setAttr ".blendWeights[659]" 0.0027152192645265687;
	setAttr ".blendWeights[660]" 0.00092108186458251997;
	setAttr ".blendWeights[661]" 0.00065229471884323785;
	setAttr ".blendWeights[662]" 0.00086738832434343164;
	setAttr ".blendWeights[663]" 0.00044609239391003711;
	setAttr ".blendWeights[664]" 0.0042010182382645374;
	setAttr ".blendWeights[665]" 0.0029153306902247361;
	setAttr ".blendWeights[666]" 0.0011992345065626052;
	setAttr ".blendWeights[667]" 0.00086481787568693544;
	setAttr ".blendWeights[668]" 0.0011044929236277098;
	setAttr ".blendWeights[669]" 0.00065968942197191529;
	setAttr ".blendWeights[670]" 0.00026651244676978436;
	setAttr ".blendWeights[671]" 0.00042537512407630037;
	setAttr ".blendWeights[672]" 0.002167936873522919;
	setAttr ".blendWeights[673]" 0.0019489733931287835;
	setAttr ".blendWeights[674]" 0.0019608740632902394;
	setAttr ".blendWeights[675]" 0.0019840975233765064;
	setAttr ".blendWeights[676]" 0.0017626418185202573;
	setAttr ".blendWeights[677]" 0.0017840193944305624;
	setAttr ".blendWeights[678]" 0.0018920714434335819;
	setAttr ".blendWeights[679]" 0.0018190352659103225;
	setAttr ".blendWeights[680]" 0.00065626774282621838;
	setAttr ".blendWeights[681]" 0.00042475532890088805;
	setAttr ".blendWeights[682]" 0.0010146780371585798;
	setAttr ".blendWeights[683]" 0.00044205883585603884;
	setAttr ".blendWeights[684]" 0.00082608975614616251;
	setAttr ".blendWeights[685]" 0.00026572641052653896;
	setAttr ".blendWeights[686]" 0.0017666502345685974;
	setAttr ".blendWeights[687]" 0.0016623234789562855;
	setAttr ".blendWeights[688]" 0.0016137550074972551;
	setAttr ".blendWeights[689]" 0.0018051175829390132;
	setAttr ".blendWeights[690]" 0.003753371996652718;
	setAttr ".blendWeights[691]" 0.0040882164488711334;
	setAttr ".blendWeights[692]" 0.0050279507281641503;
	setAttr ".blendWeights[693]" 0.0040211314009416521;
	setAttr ".blendWeights[694]" 0.0036881272444516944;
	setAttr ".blendWeights[695]" 0.0051365131241871143;
	setAttr ".blendWeights[696]" 0.0055176550376597328;
	setAttr ".blendWeights[697]" 0.0060315215782257084;
	setAttr ".blendWeights[698]" 0.0056790048044266794;
	setAttr ".blendWeights[699]" 9.8219621446855147e-005;
	setAttr ".blendWeights[700]" 0.0001011099810575709;
	setAttr ".blendWeights[701]" 0.00010557963092261657;
	setAttr ".blendWeights[702]" 0.00010137040213087004;
	setAttr ".blendWeights[703]" 3.3989090233137933e-005;
	setAttr ".blendWeights[704]" 2.9569087895453869e-005;
	setAttr ".blendWeights[705]" 2.7663601908361975e-005;
	setAttr ".blendWeights[706]" 3.151762205562888e-005;
	setAttr ".blendWeights[707]" 3.422157163182328e-005;
	setAttr ".blendWeights[708]" 4.0184131581032874e-005;
	setAttr ".blendWeights[709]" 3.820914564605312e-005;
	setAttr ".blendWeights[710]" 3.5356853847157697e-005;
	setAttr ".blendWeights[711]" 3.7209021617605644e-005;
	setAttr ".blendWeights[712]" 4.0579128769283138e-005;
	setAttr ".blendWeights[713]" 4.243263531735858e-005;
	setAttr ".blendWeights[714]" 4.5557630008726948e-005;
	setAttr ".blendWeights[715]" 4.4803724383351857e-005;
	setAttr ".blendWeights[716]" 1.8711918494013056e-005;
	setAttr ".blendWeights[717]" 1.9805174781384394e-005;
	setAttr ".blendWeights[718]" 2.3286996987605544e-005;
	setAttr ".blendWeights[719]" 2.3252901850777366e-005;
	setAttr ".blendWeights[720]" 4.2915235034331304e-005;
	setAttr ".blendWeights[721]" 4.529418213579652e-005;
	setAttr ".blendWeights[722]" 5.1054761505401945e-005;
	setAttr ".blendWeights[723]" 5.0155918804604201e-005;
	setAttr ".blendWeights[724]" 1.4489642109033455e-005;
	setAttr ".blendWeights[725]" 1.475698989565544e-005;
	setAttr ".blendWeights[726]" 1.7824746431983169e-005;
	setAttr ".blendWeights[727]" 1.7225818705477258e-005;
	setAttr ".blendWeights[728]" 5.0919137655845888e-005;
	setAttr ".blendWeights[729]" 5.5765158257131614e-005;
	setAttr ".blendWeights[730]" 5.5541408007731234e-005;
	setAttr ".blendWeights[731]" 1.1590536797759816e-005;
	setAttr ".blendWeights[732]" 1.1880105358927894e-005;
	setAttr ".blendWeights[733]" 1.3704740906328175e-005;
	setAttr ".blendWeights[734]" 1.3802442465350852e-005;
	setAttr ".blendWeights[735]" 5.5515272769199195e-005;
	setAttr ".blendWeights[736]" 6.1602113289258614e-005;
	setAttr ".blendWeights[737]" 6.3256025764851602e-005;
	setAttr ".blendWeights[738]" 8.0233530583783441e-006;
	setAttr ".blendWeights[739]" 7.8879911429863275e-006;
	setAttr ".blendWeights[740]" 1.0178433496792712e-005;
	setAttr ".blendWeights[741]" 1.0796220506056295e-005;
	setAttr ".blendWeights[742]" 6.1380807763205647e-005;
	setAttr ".blendWeights[743]" 7.7236807426126316e-005;
	setAttr ".blendWeights[744]" 7.6746931749996426e-005;
	setAttr ".blendWeights[745]" 6.1191285483481104e-006;
	setAttr ".blendWeights[746]" 5.8977866418136563e-006;
	setAttr ".blendWeights[747]" 6.9718998849252108e-006;
	setAttr ".blendWeights[748]" 7.0610376417482269e-006;
	setAttr ".blendWeights[749]" 7.7744494645477986e-005;
	setAttr ".blendWeights[750]" 8.7776079288410355e-006;
	setAttr ".blendWeights[751]" 6.3337838500434578e-006;
	setAttr ".blendWeights[752]" 1.2612968913972972e-005;
	setAttr ".blendWeights[753]" 1.5486486484576165e-005;
	setAttr ".blendWeights[754]" 2.064080396204885e-005;
	setAttr ".blendWeights[755]" 2.8370417533665385e-005;
	setAttr ".blendWeights[756]" 3.2720978131047592e-005;
	setAttr ".blendWeights[941]" 0.1229470753443765;
	setAttr ".blendWeights[942]" 0.87705292465562357;
	setAttr ".blendWeights[943]" 0.821784826795806;
	setAttr ".blendWeights[944]" 0.17821517320419406;
	setAttr ".blendWeights[945]" 0.62432870148642261;
	setAttr ".blendWeights[946]" 0.37567129851357733;
	setAttr ".blendWeights[947]" 1;
	setAttr ".blendWeights[948]" 0.99781837430782616;
	setAttr ".blendWeights[949]" 0.0021816256921738386;
	setAttr ".blendWeights[950]" 1;
	setAttr ".blendWeights[951]" 1;
	setAttr ".blendWeights[952]" 1;
	setAttr ".blendWeights[953]" 1;
	setAttr ".blendWeights[954]" 1;
	setAttr ".blendWeights[955]" 0.14319552182746315;
	setAttr ".blendWeights[956]" 0.8568044781725368;
	setAttr ".blendWeights[957]" 0.22663270533543861;
	setAttr ".blendWeights[958]" 0.77336729466456144;
	setAttr ".blendWeights[959]" 0.12476834815239961;
	setAttr ".blendWeights[960]" 0.87523165184760043;
	setAttr ".blendWeights[961]" 0.77145443937961811;
	setAttr ".blendWeights[962]" 0.22854556062038187;
	setAttr ".blendWeights[963]" 0.3916081477107658;
	setAttr ".blendWeights[964]" 0.6083918522892342;
	setAttr ".blendWeights[965]" 0.51042962389492608;
	setAttr ".blendWeights[966]" 0.48957037610507398;
	setAttr ".blendWeights[967]" 0.59190420361850016;
	setAttr ".blendWeights[968]" 0.40809579638149984;
	setAttr ".blendWeights[969]" 0.76816370958675073;
	setAttr ".blendWeights[970]" 0.23183629041324927;
	setAttr ".blendWeights[971]" 0.50351741286196117;
	setAttr ".blendWeights[972]" 0.38309164174142529;
	setAttr ".blendWeights[973]" 0.11339094539661351;
	setAttr ".blendWeights[974]" 0.34932819684261507;
	setAttr ".blendWeights[975]" 0.42150999707971215;
	setAttr ".blendWeights[976]" 0.22916180607767281;
	setAttr ".blendWeights[977]" 0.57293301568540789;
	setAttr ".blendWeights[978]" 0.42706698431459211;
	setAttr ".blendWeights[979]" 0.54251195678087427;
	setAttr ".blendWeights[980]" 0.45748804321912573;
	setAttr ".blendWeights[981]" 0.5337627002147286;
	setAttr ".blendWeights[982]" 0.46623729978527145;
	setAttr ".blendWeights[983]" 0.58251859993375021;
	setAttr ".blendWeights[984]" 0.41748140006624979;
	setAttr ".blendWeights[985]" 0.33090768743418775;
	setAttr ".blendWeights[986]" 0.44229414764580305;
	setAttr ".blendWeights[987]" 0.22679816492000929;
	setAttr ".blendWeights[988]" 0.47090743939783425;
	setAttr ".blendWeights[989]" 0.41471403235766258;
	setAttr ".blendWeights[990]" 0.11437852824450311;
	setAttr ".blendWeights[991]" 0.72297917205183659;
	setAttr ".blendWeights[992]" 0.23467474164858448;
	setAttr ".blendWeights[993]" 0.042346086299579054;
	setAttr ".blendWeights[994]" 0.57681343271855634;
	setAttr ".blendWeights[995]" 0.42318656728144366;
	setAttr ".blendWeights[996]" 0.5104660213417036;
	setAttr ".blendWeights[997]" 0.4895339786582964;
	setAttr ".blendWeights[998]" 0.39092592248695834;
	setAttr ".blendWeights[999]" 0.60907407751304166;
	setAttr ".blendWeights[1000]" 1;
	setAttr ".blendWeights[1001]" 1;
	setAttr ".blendWeights[1002]" 0.68351684225356335;
	setAttr ".blendWeights[1003]" 0.31648315774643659;
	setAttr ".blendWeights[1004]" 0.737746051684112;
	setAttr ".blendWeights[1005]" 0.262253948315888;
	setAttr ".blendWeights[1006]" 0.82996282869684956;
	setAttr ".blendWeights[1007]" 0.17003717130315041;
	setAttr ".blendWeights[1008]" 0.9283621020152012;
	setAttr ".blendWeights[1009]" 0.071637897984798776;
	setAttr ".blendWeights[1010]" 0.8027150720657944;
	setAttr ".blendWeights[1011]" 0.1972849279342056;
	setAttr ".blendWeights[1012]" 0.53681986520527436;
	setAttr ".blendWeights[1013]" 0.26094694562152049;
	setAttr ".blendWeights[1014]" 0.20223318917320499;
	setAttr ".blendWeights[1015]" 0.61624940832708619;
	setAttr ".blendWeights[1016]" 0.38375059167291387;
	setAttr ".blendWeights[1017]" 1;
	setAttr ".blendWeights[1018]" 1;
	setAttr ".blendWeights[1019]" 0.61768341396071702;
	setAttr ".blendWeights[1020]" 0.38231658603928298;
	setAttr ".blendWeights[1021]" 0.5210156225790209;
	setAttr ".blendWeights[1022]" 0.27279402868363423;
	setAttr ".blendWeights[1023]" 0.20619034873734482;
	setAttr ".blendWeights[1024]" 0.7921193500046726;
	setAttr ".blendWeights[1025]" 0.2078806499953274;
	setAttr ".blendWeights[1026]" 0.93254934280234347;
	setAttr ".blendWeights[1027]" 0.067450657197656486;
	setAttr ".blendWeights[1028]" 0.83131269699560117;
	setAttr ".blendWeights[1029]" 0.1686873030043988;
	setAttr ".blendWeights[1030]" 0.73537924816222455;
	setAttr ".blendWeights[1031]" 0.26462075183777539;
	setAttr ".blendWeights[1032]" 0.67104923123759042;
	setAttr ".blendWeights[1033]" 0.32895076876240964;
	setAttr ".blendWeights[1034]" 1;
	setAttr ".blendWeights[1035]" 1;
	setAttr ".blendWeights[1036]" 1;
	setAttr ".blendWeights[1037]" 1;
	setAttr ".blendWeights[1038]" 1;
	setAttr ".blendWeights[1039]" 1;
	setAttr ".blendWeights[1040]" 1;
	setAttr ".blendWeights[1041]" 1;
	setAttr ".blendWeights[1042]" 1;
	setAttr ".blendWeights[1043]" 1;
	setAttr ".blendWeights[1044]" 1;
	setAttr ".blendWeights[1045]" 1;
	setAttr ".blendWeights[1046]" 1;
	setAttr ".blendWeights[1047]" 1;
	setAttr ".blendWeights[1048]" 0.9989425864942294;
	setAttr ".blendWeights[1049]" 0.0010574135057705514;
	setAttr ".blendWeights[1050]" 1;
	setAttr ".blendWeights[1051]" 1;
	setAttr ".blendWeights[1052]" 1;
	setAttr ".blendWeights[1053]" 1;
	setAttr ".blendWeights[1054]" 1;
	setAttr ".blendWeights[1055]" 0.025205115755268858;
	setAttr ".blendWeights[1056]" 0.97479488424473115;
	setAttr ".blendWeights[1057]" 0.013926492968868174;
	setAttr ".blendWeights[1058]" 0.98607350703113184;
	setAttr ".blendWeights[1059]" 0.055034284132793265;
	setAttr ".blendWeights[1060]" 0.94496571586720679;
	setAttr ".blendWeights[1061]" 0.040215490183624879;
	setAttr ".blendWeights[1062]" 0.9597845098163752;
	setAttr ".blendWeights[1063]" 0.042088360212688004;
	setAttr ".blendWeights[1064]" 0.95791163978731209;
	setAttr ".blendWeights[1065]" 0.078751609818853166;
	setAttr ".blendWeights[1066]" 0.9212483901811469;
	setAttr ".blendWeights[1067]" 0.035212690606788354;
	setAttr ".blendWeights[1068]" 0.96478730939321167;
	setAttr ".blendWeights[1069]" 0.050563384868434778;
	setAttr ".blendWeights[1070]" 0.94943661513156519;
	setAttr ".blendWeights[1071]" 0.011928162583998073;
	setAttr ".blendWeights[1072]" 0.98807183741600191;
	setAttr ".blendWeights[1073]" 0.018227121594385626;
	setAttr ".blendWeights[1074]" 0.98177287840561434;
	setAttr ".blendWeights[1075]" 0.052910283039584859;
	setAttr ".blendWeights[1076]" 0.94708971696041511;
	setAttr ".blendWeights[1077]" 0.082007951408947719;
	setAttr ".blendWeights[1078]" 0.91799204859105232;
	setAttr ".blendWeights[1079]" 0.012480937201286372;
	setAttr ".blendWeights[1080]" 0.98751906279871371;
	setAttr ".blendWeights[1081]" 0.061823608413051845;
	setAttr ".blendWeights[1082]" 0.93817639158694821;
	setAttr ".blendWeights[1083]" 0.015993635681471486;
	setAttr ".blendWeights[1084]" 0.9840063643185285;
	setAttr ".blendWeights[1085]" 0.036505192723095103;
	setAttr ".blendWeights[1086]" 0.96349480727690484;
	setAttr ".blendWeights[1087]" 0.04448361821306291;
	setAttr ".blendWeights[1088]" 0.9555163817869371;
	setAttr ".blendWeights[1089]" 0.086127273203127894;
	setAttr ".blendWeights[1090]" 0.91387272679687215;
	setAttr ".blendWeights[1091]" 0.033374030679704361;
	setAttr ".blendWeights[1092]" 0.96662596932029565;
	setAttr ".blendWeights[1093]" 0.01079474971376115;
	setAttr ".blendWeights[1094]" 0.98920525028623885;
	setAttr ".blendWeights[1095]" 0.067460237844064505;
	setAttr ".blendWeights[1096]" 0.93253976215593548;
	setAttr ".blendWeights[1097]" 0.049325926239127384;
	setAttr ".blendWeights[1098]" 0.95067407376087265;
	setAttr ".blendWeights[1099]" 0.024079851075022696;
	setAttr ".blendWeights[1100]" 0.97592014892497725;
	setAttr ".blendWeights[1101]" 0.03809989389653913;
	setAttr ".blendWeights[1102]" 0.96190010610346088;
	setAttr ".blendWeights[1103]" 0.2746411269517034;
	setAttr ".blendWeights[1104]" 0.7253588730482966;
	setAttr ".blendWeights[1105]" 0.1537486078305082;
	setAttr ".blendWeights[1106]" 0.84625139216949175;
	setAttr ".blendWeights[1107]" 0.21463655244283333;
	setAttr ".blendWeights[1108]" 0.78536344755716669;
	setAttr ".blendWeights[1109]" 0.29106011217372274;
	setAttr ".blendWeights[1110]" 0.70893988782627726;
	setAttr ".blendWeights[1111]" 0.20800393252978724;
	setAttr ".blendWeights[1112]" 0.79199606747021278;
	setAttr ".blendWeights[1113]" 0.16649664529071653;
	setAttr ".blendWeights[1114]" 0.83350335470928349;
	setAttr ".blendWeights[1115]" 0.095993307372347847;
	setAttr ".blendWeights[1116]" 0.90400669262765221;
	setAttr ".blendWeights[1117]" 0.14890253446338803;
	setAttr ".blendWeights[1118]" 0.85109746553661203;
	setAttr ".blendWeights[1119]" 0.18406574298237591;
	setAttr ".blendWeights[1120]" 0.81593425701762412;
	setAttr ".blendWeights[1121]" 0.21389425485363292;
	setAttr ".blendWeights[1122]" 0.78610574514636711;
	setAttr ".blendWeights[1123]" 0.54110773249973665;
	setAttr ".blendWeights[1124]" 0.45889226750026335;
	setAttr ".blendWeights[1125]" 0.39936458080222947;
	setAttr ".blendWeights[1126]" 0.60063541919777053;
	setAttr ".blendWeights[1127]" 0.48263330160544332;
	setAttr ".blendWeights[1128]" 0.51736669839455673;
	setAttr ".blendWeights[1129]" 0.56349652674659545;
	setAttr ".blendWeights[1130]" 0.43650347325340449;
	setAttr ".blendWeights[1131]" 0.48673049442639515;
	setAttr ".blendWeights[1132]" 0.51326950557360485;
	setAttr ".blendWeights[1133]" 0.45120396078956898;
	setAttr ".blendWeights[1134]" 0.54879603921043107;
	setAttr ".blendWeights[1135]" 0.33883516416766313;
	setAttr ".blendWeights[1136]" 0.66116483583233687;
	setAttr ".blendWeights[1137]" 0.43306537682530621;
	setAttr ".blendWeights[1138]" 0.56693462317469379;
	setAttr ".blendWeights[1139]" 0.46910806818558337;
	setAttr ".blendWeights[1140]" 0.53089193181441674;
	setAttr ".blendWeights[1141]" 0.48426843946669279;
	setAttr ".blendWeights[1142]" 0.51573156053330727;
	setAttr ".blendWeights[1143]" 1;
	setAttr ".blendWeights[1144]" 0.65730278676085385;
	setAttr ".blendWeights[1145]" 0.34269721323914615;
	setAttr ".blendWeights[1146]" 0.71686914819106018;
	setAttr ".blendWeights[1147]" 0.28313085180893982;
	setAttr ".blendWeights[1148]" 0.77082339303876579;
	setAttr ".blendWeights[1149]" 0.22917660696123424;
	setAttr ".blendWeights[1150]" 0.73514226989442633;
	setAttr ".blendWeights[1151]" 0.26485773010557367;
	setAttr ".blendWeights[1152]" 0.73965787674362393;
	setAttr ".blendWeights[1153]" 0.26034212325637612;
	setAttr ".blendWeights[1154]" 0.66723702235531768;
	setAttr ".blendWeights[1155]" 0.33276297764468227;
	setAttr ".blendWeights[1156]" 1;
	setAttr ".blendWeights[1157]" 1;
	setAttr ".blendWeights[1158]" 1;
	setAttr ".blendWeights[1159]" 0.2257145678220954;
	setAttr ".blendWeights[1160]" 0.77428543217790469;
	setAttr ".blendWeights[1161]" 0.17634596665548996;
	setAttr ".blendWeights[1162]" 0.82365403334451004;
	setAttr ".blendWeights[1163]" 0.096932693293208375;
	setAttr ".blendWeights[1164]" 0.90306730670679158;
	setAttr ".blendWeights[1165]" 0.1511012074635989;
	setAttr ".blendWeights[1166]" 0.8488987925364011;
	setAttr ".blendWeights[1167]" 0.18237589384324479;
	setAttr ".blendWeights[1168]" 0.81762410615675529;
	setAttr ".blendWeights[1169]" 0.20460224059441662;
	setAttr ".blendWeights[1170]" 0.79539775940558344;
	setAttr ".blendWeights[1171]" 0.25836621413842742;
	setAttr ".blendWeights[1172]" 1.652371558913398e-006;
	setAttr ".blendWeights[1173]" 2.1470363989582747e-006;
	setAttr ".blendWeights[1174]" 1.8668231341403931e-006;
	setAttr ".blendWeights[1175]" 2.3891802688375232e-006;
	setAttr ".blendWeights[1176]" 2.0285528867139047e-006;
	setAttr ".blendWeights[1177]" 1.1965616331946716e-007;
	setAttr ".blendWeights[1178]" 1.4218546705502699e-006;
	setAttr ".blendWeights[1179]" 6.1042711831405146e-008;
	setAttr ".blendWeights[1180]" 1.3081896604698396e-006;
	setAttr ".blendWeights[1181]" 9.1163007860366507e-007;
	setAttr ".blendWeights[1182]" 8.792020448958773e-007;
	setAttr ".blendWeights[1183]" 6.3712365924762052e-007;
	setAttr ".blendWeights[1184]" 6.2746482539771682e-007;
	setAttr ".blendWeights[1185]" 1.1946119618786146e-006;
	setAttr ".blendWeights[1186]" 8.4523423665657173e-007;
	setAttr ".blendWeights[1187]" 6.1601974395173707e-007;
	setAttr ".blendWeights[1188]" 7.5062572644399477e-008;
	setAttr ".blendWeights[1189]" 1.3662733442497204e-007;
	setAttr ".blendWeights[1190]" 1.9239300206891489e-007;
	setAttr ".blendWeights[1191]" 1.8072600406408663e-007;
	setAttr ".blendWeights[1192]" 2.5514117238889756e-007;
	setAttr ".blendWeights[1193]" 2.4156105230873346e-007;
	setAttr ".blendWeights[1194]" 9.7764469880452111e-008;
	setAttr ".blendWeights[1195]" 1.5436248107979899e-007;
	setAttr ".blendWeights[1196]" 2.0508227211815105e-007;
	setAttr ".blendWeights[1197]" 2.7116464998447678e-007;
	setAttr ".blendWeights[1198]" 1.2277936803136481e-007;
	setAttr ".blendWeights[1199]" 1.7374290365014524e-007;
	setAttr ".blendWeights[1200]" 2.1836635170199964e-007;
	setAttr ".blendWeights[1201]" 2.8665152570467356e-007;
	setAttr ".blendWeights[1202]" 2.6103447120430437e-007;
	setAttr ".blendWeights[1203]" 2.1925651998848591e-007;
	setAttr ".blendWeights[1204]" 4.6687141137582842e-008;
	setAttr ".blendWeights[1205]" 5.1790998023599803e-008;
	setAttr ".blendWeights[1206]" 2.1183072315087858e-007;
	setAttr ".blendWeights[1207]" 4.2020751203029377e-008;
	setAttr ".blendWeights[1208]" 2.1136756300275007e-007;
	setAttr ".blendWeights[1209]" 4.1844110285499909e-008;
	setAttr ".blendWeights[1210]" 2.3043079933913354e-007;
	setAttr ".blendWeights[1211]" 4.1651524786913727e-008;
	setAttr ".blendWeights[1212]" 1.0782875005509335e-008;
	setAttr ".blendWeights[1213]" 1.2209929034198832e-008;
	setAttr ".blendWeights[1214]" 1.0208983850234351e-008;
	setAttr ".blendWeights[1215]" 9.4832639235488057e-009;
	setAttr ".blendWeights[1216]" 9.5501686287516734e-009;
	setAttr ".blendWeights[1217]" 2.1184795534419284e-010;
	setAttr ".blendWeights[1218]" 2.4904517231769946e-010;
	setAttr ".blendWeights[1219]" 1.8904408546795934e-010;
	setAttr ".blendWeights[1220]" 1.6812215464083448e-010;
	setAttr ".blendWeights[1221]" 1.5473020044839083e-010;
	setAttr ".blendWeights[1222]" 0.00018535958894086619;
	setAttr ".blendWeights[1223]" 0.00013640438497412969;
	setAttr ".blendWeights[1224]" 0.00013636177694718112;
	setAttr ".blendWeights[1225]" 0.00018551232581750192;
	setAttr ".blendWeights[1226]" 3.7710727896313363e-005;
	setAttr ".blendWeights[1227]" 3.609069227788854e-005;
	setAttr ".blendWeights[1228]" 3.5078170019272172e-005;
	setAttr ".blendWeights[1229]" 3.8733552917271711e-005;
	setAttr ".blendWeights[1230]" 5.3512221570713595e-006;
	setAttr ".blendWeights[1231]" 5.9272997393428061e-006;
	setAttr ".blendWeights[1232]" 7.2852662785858556e-006;
	setAttr ".blendWeights[1233]" 6.9442639729749094e-006;
	setAttr ".blendWeights[1234]" 2.1622774437236674e-005;
	setAttr ".blendWeights[1235]" 1.7185429822571299e-005;
	setAttr ".blendWeights[1236]" 1.8964488768363107e-005;
	setAttr ".blendWeights[1237]" 2.2705087681706737e-005;
	setAttr ".blendWeights[1238]" 3.4694174098914041e-005;
	setAttr ".blendWeights[1239]" 3.5010765561719844e-005;
	setAttr ".blendWeights[1240]" 0.00019624581856378251;
	setAttr ".blendWeights[1241]" 0.00013615176377584416;
	setAttr ".blendWeights[1242]" 0.00013622394127426219;
	setAttr ".blendWeights[1243]" 0.00019611240660574215;
	setAttr ".blendWeights[1244]" 0.00020854230335017781;
	setAttr ".blendWeights[1245]" 0.00020789689680415151;
	setAttr ".blendWeights[1246]" 0.00024725700388920436;
	setAttr ".blendWeights[1247]" 0.00024657015349237429;
	setAttr ".blendWeights[1248]" 1.7121867063394567e-005;
	setAttr ".blendWeights[1249]" 1.4343224359231099e-005;
	setAttr ".blendWeights[1250]" 1.4460920249485034e-005;
	setAttr ".blendWeights[1251]" 1.6818998051601963e-005;
	setAttr ".blendWeights[1252]" 3.1059222102340807e-005;
	setAttr ".blendWeights[1253]" 3.1104915115878209e-005;
	setAttr ".blendWeights[1254]" 0.00013637691097794592;
	setAttr ".blendWeights[1255]" 0.00018635610411264715;
	setAttr ".blendWeights[1256]" 0.00018814401064612136;
	setAttr ".blendWeights[1257]" 0.0001355848211478059;
	setAttr ".blendWeights[1258]" 3.4454707760516866e-005;
	setAttr ".blendWeights[1259]" 3.7345940486140127e-005;
	setAttr ".blendWeights[1260]" 3.8288031480586174e-005;
	setAttr ".blendWeights[1261]" 3.4687945860468564e-005;
	setAttr ".blendWeights[1262]" 4.9892514484103136e-005;
	setAttr ".blendWeights[1263]" 4.6283464886728767e-005;
	setAttr ".blendWeights[1264]" 1.5986002764535812e-005;
	setAttr ".blendWeights[1265]" 2.0392730149296619e-005;
	setAttr ".blendWeights[1266]" 1.9073628140137193e-005;
	setAttr ".blendWeights[1267]" 1.528807836057086e-005;
	setAttr ".blendWeights[1268]" 3.3637588642721253e-005;
	setAttr ".blendWeights[1269]" 3.177733001244e-005;
	setAttr ".blendWeights[1270]" 0.00019138315053208012;
	setAttr ".blendWeights[1271]" 0.0001358146249643794;
	setAttr ".blendWeights[1272]" 0.00013598761813117229;
	setAttr ".blendWeights[1273]" 0.00019041061693245333;
	setAttr ".blendWeights[1274]" 0.00020540979982783763;
	setAttr ".blendWeights[1275]" 0.000206620519173753;
	setAttr ".blendWeights[1276]" 0.0002410657174271311;
	setAttr ".blendWeights[1277]" 0.00024231648364413382;
	setAttr ".blendWeights[1278]" 1.9384966362798115e-005;
	setAttr ".blendWeights[1279]" 1.5900073703793869e-005;
	setAttr ".blendWeights[1280]" 1.5654917587777797e-005;
	setAttr ".blendWeights[1281]" 1.9641269245580492e-005;
	setAttr ".blendWeights[1282]" 3.4078220633657172e-005;
	setAttr ".blendWeights[1283]" 3.4106742387203526e-005;
	setAttr ".blendWeights[1284]" 9.5281411291252125e-006;
	setAttr ".blendWeights[1285]" 9.7089341238880189e-006;
	setAttr ".blendWeights[1286]" 1.0704954510279503e-005;
	setAttr ".blendWeights[1287]" 1.1408044845314484e-005;
	setAttr ".blendWeights[1288]" 1.1092435633839598e-005;
	setAttr ".blendWeights[1289]" 1.0946712754695949e-005;
	setAttr ".blendWeights[1290]" 9.8474101473582581e-006;
	setAttr ".blendWeights[1291]" 9.3550897524984777e-006;
	setAttr ".blendWeights[1292]" 9.4524930037098084e-006;
	setAttr ".blendWeights[1293]" 6.3849538351126378e-006;
	setAttr ".blendWeights[1294]" 9.5012491879000534e-006;
	setAttr ".blendWeights[1295]" 9.0162047506375564e-006;
	setAttr ".blendWeights[1296]" 0.00013703046654655541;
	setAttr ".blendWeights[1297]" 0.00019124228795088432;
	setAttr ".blendWeights[1298]" 0.00019764210385656526;
	setAttr ".blendWeights[1299]" 0.00020202583921104223;
	setAttr ".blendWeights[1300]" 0.00020306170281520251;
	setAttr ".blendWeights[1301]" 0.00025768921368715713;
	setAttr ".blendWeights[1302]" 0.00020447125953182947;
	setAttr ".blendWeights[1303]" 0.00024165384766816525;
	setAttr ".blendWeights[1304]" 1.8638933319490588e-005;
	setAttr ".blendWeights[1305]" 2.1769574154160618e-005;
	setAttr ".blendWeights[1306]" 3.5395983859321835e-005;
	setAttr ".blendWeights[1307]" 1.2186717828461882e-005;
	setAttr ".blendWeights[1308]" 0.00020309383342439466;
	setAttr ".blendWeights[1309]" 0.00020262840494889093;
	setAttr ".blendWeights[1310]" 0.00025235320095733256;
	setAttr ".blendWeights[1311]" 0.00024726538569309344;
	setAttr ".blendWeights[1312]" 0.00024322242768018236;
	setAttr ".blendWeights[1313]" 4.2138119015575168e-005;
	setAttr ".blendWeights[1314]" 4.2570543731020041e-005;
	setAttr ".blendWeights[1315]" 3.8117890518321262e-005;
	setAttr ".blendWeights[1316]" 3.8273072142580881e-005;
	setAttr ".blendWeights[1317]" 3.9546306514716878e-005;
	setAttr ".blendWeights[1318]" 4.0939856119668588e-005;
	setAttr ".blendWeights[1319]" 4.229458121567994e-005;
	setAttr ".blendWeights[1320]" 4.1160113906712085e-005;
	setAttr ".blendWeights[1321]" 4.1544342676203894e-005;
	setAttr ".blendWeights[1322]" 0.00011386971133908822;
	setAttr ".blendWeights[1323]" 0.00011613189386824329;
	setAttr ".blendWeights[1324]" 0.00011458682975527706;
	setAttr ".blendWeights[1325]" 0.00011277785206459121;
	setAttr ".blendWeights[1326]" 0.00011419299672205479;
	setAttr ".blendWeights[1327]" 0.00011305713240254646;
	setAttr ".blendWeights[1328]" 0.00011350335234037166;
	setAttr ".blendWeights[1329]" 0.00011367890664182073;
	setAttr ".blendWeights[1330]" 0.00011320369929685302;
	setAttr ".blendWeights[1331]" 5.4647119968282061e-005;
	setAttr ".blendWeights[1332]" 5.2799084945034819e-005;
	setAttr ".blendWeights[1333]" 5.0928523572097852e-005;
	setAttr ".blendWeights[1334]" 5.0642432918958109e-005;
	setAttr ".blendWeights[1335]" 5.0177761158487643e-005;
	setAttr ".blendWeights[1336]" 5.1939416011142017e-005;
	setAttr ".blendWeights[1337]" 5.2764684222512156e-005;
	setAttr ".blendWeights[1338]" 5.387726545599414e-005;
	setAttr ".blendWeights[1339]" 5.3890303971786463e-005;
	setAttr ".blendWeights[1340]" 9.3437308958009601e-005;
	setAttr ".blendWeights[1341]" 9.1595967806835438e-005;
	setAttr ".blendWeights[1342]" 0.00010020523010440574;
	setAttr ".blendWeights[1343]" 0.00011577228693911932;
	setAttr ".blendWeights[1344]" 0.00010020523010440574;
	setAttr ".blendWeights[1345]" 9.2856047255945813e-005;
	setAttr ".blendWeights[1346]" 8.7309090038863342e-005;
	setAttr ".blendWeights[1347]" 8.6769388606530034e-005;
	setAttr ".blendWeights[1348]" 9.166279021710237e-005;
	setAttr ".blendWeights[1349]" 9.0466506381042198e-005;
	setAttr ".blendWeights[1350]" 8.9161141386791444e-005;
	setAttr ".blendWeights[1351]" 8.758324810070951e-005;
	setAttr ".blendWeights[1352]" 8.6965548403370938e-005;
	setAttr ".blendWeights[1353]" 6.1842772683901991e-005;
	setAttr ".blendWeights[1354]" 6.0755257284969978e-005;
	setAttr ".blendWeights[1355]" 5.7971766958379108e-005;
	setAttr ".blendWeights[1356]" 5.7970544597822529e-005;
	setAttr ".blendWeights[1357]" 5.8357276293298174e-005;
	setAttr ".blendWeights[1358]" 5.9315199764205446e-005;
	setAttr ".blendWeights[1359]" 6.0201178565501702e-005;
	setAttr ".blendWeights[1360]" 6.0079175311138536e-005;
	setAttr ".blendWeights[1361]" 6.0194019025805698e-005;
	setAttr ".blendWeights[1362]" 7.7284217393162554e-005;
	setAttr ".blendWeights[1363]" 7.7858494169375029e-005;
	setAttr ".blendWeights[1364]" 7.7250456984348617e-005;
	setAttr ".blendWeights[1365]" 7.2019683746208973e-005;
	setAttr ".blendWeights[1366]" 6.6444437562586834e-005;
	setAttr ".blendWeights[1367]" 7.1845642840582565e-005;
	setAttr ".blendWeights[1368]" 7.5591829661082879e-005;
	setAttr ".blendWeights[1369]" 7.3948802028259429e-005;
	setAttr ".blendWeights[1370]" 7.4088500409399667e-005;
	setAttr ".blendWeights[1371]" 7.4084076625802062e-005;
	setAttr ".blendWeights[1372]" 5.9784295382834236e-005;
	setAttr ".blendWeights[1373]" 6.5959451478875318e-005;
	setAttr ".blendWeights[1374]" 6.5959451478875318e-005;
	setAttr ".blendWeights[1375]" 6.186372762463829e-005;
	setAttr ".blendWeights[1376]" 5.4675292569695664e-005;
	setAttr ".blendWeights[1377]" 5.4675292569695664e-005;
	setAttr ".blendWeights[1378]" 1.7506006296192568e-006;
	setAttr ".blendWeights[1379]" 1.6297597065743347e-006;
	setAttr ".blendWeights[1380]" 1.6172896246958067e-006;
	setAttr ".blendWeights[1381]" 1.7316731353581085e-006;
	setAttr ".blendWeights[1382]" 1.5050425171101327e-006;
	setAttr ".blendWeights[1383]" 1.5032753688811757e-006;
	setAttr ".blendWeights[1384]" 1.3781070700677161e-006;
	setAttr ".blendWeights[1385]" 1.395699426060741e-006;
	setAttr ".blendWeights[1386]" 1.4411250484346142e-006;
	setAttr ".blendWeights[1387]" 1.2517373287284254e-006;
	setAttr ".blendWeights[1388]" 1.2834786937970751e-006;
	setAttr ".blendWeights[1389]" 1.1248437184400482e-006;
	setAttr ".blendWeights[1390]" 1.1622294076278053e-006;
	setAttr ".blendWeights[1391]" 9.9634575949651183e-007;
	setAttr ".blendWeights[1392]" 1.0475348497733608e-006;
	setAttr ".blendWeights[1393]" 9.141025420132302e-007;
	setAttr ".blendWeights[1394]" 9.4565473219602461e-007;
	setAttr ".blendWeights[1395]" 8.5853287047935874e-007;
	setAttr ".blendWeights[1396]" 8.9444154028430839e-007;
	setAttr ".blendWeights[1397]" 1.6006176776176046e-006;
	setAttr ".blendWeights[1398]" 1.5066123052368077e-006;
	setAttr ".blendWeights[1399]" 1.5998400596365621e-006;
	setAttr ".blendWeights[1400]" 1.6413130180431867e-006;
	setAttr ".blendWeights[1401]" 9.9389921858975965e-007;
	setAttr ".blendWeights[1402]" 9.9883140835445478e-007;
	setAttr ".blendWeights[1403]" 1.5268531093900303e-006;
	setAttr ".blendWeights[1404]" 1.4421391348862607e-006;
	setAttr ".blendWeights[1405]" 1.2961042991040807e-006;
	setAttr ".blendWeights[1406]" 1.1942481684621386e-006;
	setAttr ".blendWeights[1407]" 1.1201661870237107e-006;
	setAttr ".blendWeights[1408]" 1.0726350844197371e-006;
	setAttr ".blendWeights[1409]" 1.2734560620645874e-006;
	setAttr ".blendWeights[1410]" 1.176705834678325e-006;
	setAttr ".blendWeights[1411]" 1.4077384073098849e-006;
	setAttr ".blendWeights[1412]" 1.4959039142068983e-006;
	setAttr ".blendWeights[1413]" 1.5650355159848008e-006;
	setAttr ".blendWeights[1414]" 1.6274686892655684e-006;
	setAttr ".blendWeights[1415]" 1.628128072942366e-006;
	setAttr ".blendWeights[1416]" 1.6345290966386741e-006;
	setAttr ".blendWeights[1417]" 1.0422033917166433e-006;
	setAttr ".blendWeights[1418]" 9.6221878966313399e-007;
	setAttr ".blendWeights[1419]" 1.1010076811546222e-006;
	setAttr ".blendWeights[1420]" 1.2588768620187328e-006;
	setAttr ".blendWeights[1421]" 1.1633308056173214e-006;
	setAttr ".blendWeights[1422]" 1.3829474007524477e-006;
	setAttr ".blendWeights[1423]" 1.4682316284340143e-006;
	setAttr ".blendWeights[1424]" 1.5400835288649433e-006;
	setAttr ".blendWeights[1425]" 1.6112396658486863e-006;
	setAttr ".blendWeights[1426]" 1.0215751424087168e-006;
	setAttr ".blendWeights[1427]" 9.4680160497108312e-007;
	setAttr ".blendWeights[1428]" 1.0855553661945608e-006;
	setAttr ".blendWeights[1429]" 1.2621346720669278e-006;
	setAttr ".blendWeights[1430]" 1.164687771737849e-006;
	setAttr ".blendWeights[1431]" 1.3788019239284931e-006;
	setAttr ".blendWeights[1432]" 1.4541490124980123e-006;
	setAttr ".blendWeights[1433]" 1.5148077616331283e-006;
	setAttr ".blendWeights[1434]" 1.5807761408368643e-006;
	setAttr ".blendWeights[1435]" 1.0296114376175664e-006;
	setAttr ".blendWeights[1436]" 9.6776397890801557e-007;
	setAttr ".blendWeights[1437]" 1.0860646832519738e-006;
	setAttr ".blendWeights[1438]" 1.3300093521864008e-006;
	setAttr ".blendWeights[1439]" 1.2115176539516146e-006;
	setAttr ".blendWeights[1440]" 1.1886347672445278e-006;
	setAttr ".blendWeights[1441]" 1.3121168629082265e-006;
	setAttr ".blendWeights[1442]" 1.4181057374861863e-006;
	setAttr ".blendWeights[1443]" 1.4017548417282779e-006;
	setAttr ".blendWeights[1444]" 1.5290759145333743e-006;
	setAttr ".blendWeights[1445]" 1.4704453385750467e-006;
	setAttr ".blendWeights[1446]" 1.5547609544062139e-006;
	setAttr ".blendWeights[1447]" 1.5262537524647122e-006;
	setAttr ".blendWeights[1448]" 1.6305991701117709e-006;
	setAttr ".blendWeights[1449]" 1.5879102172857948e-006;
	setAttr ".blendWeights[1450]" 1.044049666024647e-006;
	setAttr ".blendWeights[1451]" 9.8937448253086877e-007;
	setAttr ".blendWeights[1452]" 9.9320163622902848e-007;
	setAttr ".blendWeights[1453]" 1.0389474007392229e-006;
	setAttr ".blendWeights[1454]" 1.1181043626240179e-006;
	setAttr ".blendWeights[1455]" 1.0984747384663039e-006;
	setAttr ".blendWeights[1456]" 1.3124670184039188e-006;
	setAttr ".blendWeights[1457]" 1.1958088614887794e-006;
	setAttr ".blendWeights[1458]" 1.4111326416322754e-006;
	setAttr ".blendWeights[1459]" 2.2601122332384503e-007;
	setAttr ".blendWeights[1460]" 1.9363082451307993e-007;
	setAttr ".blendWeights[1461]" 1.457344643116117e-008;
	setAttr ".blendWeights[1462]" 6.3717431238538994e-009;
	setAttr ".blendWeights[1463]" 3.6444890679469416e-007;
	setAttr ".blendWeights[1464]" 3.4108535214794809e-007;
	setAttr ".blendWeights[1465]" 3.8970875789606065e-007;
	setAttr ".blendWeights[1466]" 2.2557460886806585e-007;
	setAttr ".blendWeights[1467]" 2.1508108637480759e-007;
	setAttr ".blendWeights[1468]" 2.3785074097693637e-007;
	setAttr ".blendWeights[1469]" 2.311202525329493e-007;
	setAttr ".blendWeights[1470]" 3.3797260603155614e-007;
	setAttr ".blendWeights[1471]" 3.3890847604393908e-007;
	setAttr ".blendWeights[1472]" 2.4965657769153278e-007;
	setAttr ".blendWeights[1473]" 4.5279904056724446e-007;
	setAttr ".blendWeights[1474]" 4.3198207106425182e-007;
	setAttr ".blendWeights[1475]" 5.1094104492668948e-007;
	setAttr ".blendWeights[1476]" 4.7143504162152975e-007;
	setAttr ".blendWeights[1477]" 4.5369261876934362e-007;
	setAttr ".blendWeights[1478]" 4.3167920904548218e-007;
	setAttr ".blendWeights[1479]" 3.3773932015355657e-007;
	setAttr ".blendWeights[1480]" 3.390217077527689e-007;
	setAttr ".blendWeights[1481]" 2.3126486201778137e-007;
	setAttr ".blendWeights[1482]" 2.4997808379498823e-007;
	setAttr ".blendWeights[1483]" 2.0810321530188602e-007;
	setAttr ".blendWeights[1484]" 2.2599956992232789e-007;
	setAttr ".blendWeights[1485]" 3.4389705442673341e-007;
	setAttr ".blendWeights[1486]" 2.7718061582576666e-007;
	setAttr ".blendWeights[1487]" 4.0356809231122417e-007;
	setAttr ".blendWeights[1488]" 4.2978609599610287e-007;
	setAttr ".blendWeights[1489]" 4.0330979561521112e-007;
	setAttr ".blendWeights[1490]" 3.4024224971712603e-007;
	setAttr ".blendWeights[1491]" 2.7830429633224006e-007;
	setAttr ".blendWeights[1492]" 2.5272157472843038e-007;
	setAttr ".blendWeights[1493]" 3.4103305557995917e-007;
	setAttr ".blendWeights[1494]" 3.1721111559370984e-007;
	setAttr ".blendWeights[1495]" 3.4175792273773805e-007;
	setAttr ".blendWeights[1496]" 3.1768223375950371e-007;
	setAttr ".blendWeights[1497]" 3.0716165384111803e-007;
	setAttr ".blendWeights[1498]" 4.9111243008925077e-008;
	setAttr ".blendWeights[1499]" 5.3141498247989581e-008;
	setAttr ".blendWeights[1500]" 6.9287082608267392e-008;
	setAttr ".blendWeights[1501]" 8.5512581777524942e-008;
	setAttr ".blendWeights[1502]" 5.4058155224043854e-008;
	setAttr ".blendWeights[1503]" 8.0092220732455506e-008;
	setAttr ".blendWeights[1504]" 6.0267566818073441e-008;
	setAttr ".blendWeights[1505]" 7.7653183319929456e-008;
	setAttr ".blendWeights[1506]" 3.2879775287807546e-008;
	setAttr ".blendWeights[1507]" 3.3141255014678225e-008;
	setAttr ".blendWeights[1508]" 1.8343999362705424e-007;
	setAttr ".blendWeights[1509]" 1.4157617987759745e-007;
	setAttr ".blendWeights[1510]" 1.3529725582825957e-007;
	setAttr ".blendWeights[1511]" 1.8467986227787743e-007;
	setAttr ".blendWeights[1512]" 2.2994404934529828e-007;
	setAttr ".blendWeights[1513]" 2.3419821081141954e-007;
	setAttr ".blendWeights[1514]" 3.2435974570868383e-007;
	setAttr ".blendWeights[1515]" 3.4873647744953713e-007;
	setAttr ".blendWeights[1516]" 4.2256971207606453e-007;
	setAttr ".blendWeights[1517]" 3.7798355332400802e-007;
	setAttr ".blendWeights[1518]" 3.978346394175639e-007;
	setAttr ".blendWeights[1519]" 3.8081298037997146e-009;
	setAttr ".blendWeights[1520]" 5.2031525679980375e-009;
	setAttr ".blendWeights[1521]" 4.282779456792709e-009;
	setAttr ".blendWeights[1522]" 4.0443568417601711e-009;
	setAttr ".blendWeights[1523]" 3.305319125553314e-009;
	setAttr ".blendWeights[1524]" 4.9197899341625353e-007;
	setAttr ".blendWeights[1525]" 5.5176600986325904e-009;
	setAttr ".blendWeights[1526]" 1.0433355144791103e-007;
	setAttr ".blendWeights[1527]" 4.4725749099286004e-007;
	setAttr ".blendWeights[1528]" 3.1636301351000074e-007;
	setAttr ".blendWeights[1529]" 6.9488350841012129e-006;
	setAttr ".blendWeights[1530]" 7.0719151826935449e-006;
	setAttr ".blendWeights[1531]" 7.0719151826935449e-006;
	setAttr ".blendWeights[1532]" 6.9486313572886764e-006;
	setAttr ".blendWeights[1533]" 6.2744411253787055e-006;
	setAttr ".blendWeights[1534]" 7.8526008567877649e-006;
	setAttr ".blendWeights[1535]" 6.0979846019186185e-006;
	setAttr ".blendWeights[1536]" 6.6410184223241787e-006;
	setAttr ".blendWeights[1537]" 2.7332481474154056e-007;
	setAttr ".blendWeights[1538]" 2.1459632623612953e-007;
	setAttr ".blendWeights[1539]" 1.9883614730367055e-007;
	setAttr ".blendWeights[1540]" 1.4897310027268093e-007;
	setAttr ".blendWeights[1541]" 1.4250795719006366e-007;
	setAttr ".blendWeights[1542]" 6.9240764155944465e-009;
	setAttr ".blendWeights[1543]" 1.1043725917703761e-008;
	setAttr ".blendWeights[1544]" 1.3258942372871582e-008;
	setAttr ".blendWeights[1545]" 3.0704889233264162e-008;
	setAttr ".blendWeights[1546]" 2.4892162966087254e-008;
	setAttr ".blendWeights[1547]" 9.2810114998449988e-009;
	setAttr ".blendWeights[1548]" 1.6168915065442285e-008;
	setAttr ".blendWeights[1549]" 2.8310783020735871e-008;
	setAttr ".blendWeights[1550]" 1.2144299773420901e-008;
	setAttr ".blendWeights[1551]" 6.62084519815754e-009;
	setAttr ".blendWeights[1552]" 2.0505641599812951e-008;
	setAttr ".blendWeights[1553]" 5.4713389310154848e-008;
	setAttr ".blendWeights[1554]" 1.6237018459560575e-007;
	setAttr ".blendWeights[1555]" 0.0005313848347877478;
	setAttr ".blendWeights[1556]" 0.00042948132473483234;
	setAttr ".blendWeights[1557]" 0.00046626810078322437;
	setAttr ".blendWeights[1558]" 0.00056690547778372614;
	setAttr ".blendWeights[1559]" 0.00039256695766637243;
	setAttr ".blendWeights[1560]" 0.00039108848309463303;
	setAttr ".blendWeights[1561]" 0.00043574074393285369;
	setAttr ".blendWeights[1562]" 0.00043790094663069198;
	setAttr ".blendWeights[1563]" 0.00067150231613964748;
	setAttr ".blendWeights[1564]" 0.00066871952459480674;
	setAttr ".blendWeights[1565]" 0.00090995442309706317;
	setAttr ".blendWeights[1566]" 0.00078440468921726469;
	setAttr ".blendWeights[1567]" 0.0006688042751807489;
	setAttr ".blendWeights[1568]" 0.00066908553462400504;
	setAttr ".blendWeights[1569]" 0.00097413838129392725;
	setAttr ".blendWeights[1570]" 0.00096820585646650468;
	setAttr ".blendWeights[1571]" 0.00041380483780560683;
	setAttr ".blendWeights[1572]" 0.00057617772614098652;
	setAttr ".blendWeights[1573]" 0.00052571773770835922;
	setAttr ".blendWeights[1574]" 0.00040541734667935681;
	setAttr ".blendWeights[1575]" 0.0011098517520900953;
	setAttr ".blendWeights[1576]" 0.0011203924610456331;
	setAttr ".blendWeights[1577]" 0.0011568462892725495;
	setAttr ".blendWeights[1578]" 0.0011522585942028334;
	setAttr ".blendWeights[1579]" 0.00082281429570262889;
	setAttr ".blendWeights[1580]" 0.00094079237672124423;
	setAttr ".blendWeights[1581]" 0.0007008119696466468;
	setAttr ".blendWeights[1582]" 0.00071113754313835453;
	setAttr ".blendWeights[1583]" 0.00099133909180808017;
	setAttr ".blendWeights[1584]" 0.00098300561736110615;
	setAttr ".blendWeights[1585]" 0.00067942694043564766;
	setAttr ".blendWeights[1586]" 0.00068047281571202147;
	setAttr ".blendWeights[1587]" 0.00060794141393748485;
	setAttr ".blendWeights[1588]" 0.00048485078038388598;
	setAttr ".blendWeights[1589]" 0.00044887798028143662;
	setAttr ".blendWeights[1590]" 0.00057341076683894814;
	setAttr ".blendWeights[1591]" 0.00044400204081537732;
	setAttr ".blendWeights[1592]" 0.00044486258286076516;
	setAttr ".blendWeights[1593]" 0.0004024641226517793;
	setAttr ".blendWeights[1594]" 0.00040165294070312668;
	setAttr ".blendWeights[1595]" 0.00038793828433452771;
	setAttr ".blendWeights[1596]" 0.00050154712242927221;
	setAttr ".blendWeights[1597]" 0.00057126872429575206;
	setAttr ".blendWeights[1598]" 0.00039245799274965801;
	setAttr ".blendWeights[1599]" 0.00089503277309299005;
	setAttr ".blendWeights[1600]" 0.00086438294719287699;
	setAttr ".blendWeights[1601]" 0.00095912173609419716;
	setAttr ".blendWeights[1602]" 0.0010056777341624357;
	setAttr ".blendWeights[1603]" 0.00060310691878929634;
	setAttr ".blendWeights[1604]" 0.00060310691878929634;
	setAttr ".blendWeights[1605]" 0.00060310691878929634;
	setAttr ".blendWeights[1606]" 0.00060310691878929634;
	setAttr ".blendWeights[1607]" 0.00075078580812232548;
	setAttr ".blendWeights[1608]" 0.00075078580812232548;
	setAttr ".blendWeights[1609]" 0.00080910895303422858;
	setAttr ".blendWeights[1610]" 0.00081818376020115473;
	setAttr ".blendWeights[1611]" 0.0008267714855712616;
	setAttr ".blendWeights[1612]" 0.0008267714855712616;
	setAttr ".blendWeights[1613]" 0.0008267714855712616;
	setAttr ".blendWeights[1614]" 0.0008267714855712616;
	setAttr ".blendWeights[1615]" 0.00082074396596510746;
	setAttr ".blendWeights[1616]" 0.00082074396596510746;
	setAttr ".blendWeights[1617]" 0.00082074396596510746;
	setAttr ".blendWeights[1618]" 0.00082074396596510746;
	setAttr ".blendWeights[1619]" 0.00040695635712979512;
	setAttr ".blendWeights[1620]" 0.00044918624795190626;
	setAttr ".blendWeights[1621]" 0.00044686865171354663;
	setAttr ".blendWeights[1622]" 0.00040455075090781634;
	setAttr ".blendWeights[1623]" 0.00091783900024267452;
	setAttr ".blendWeights[1624]" 0.00082553282590962142;
	setAttr ".blendWeights[1625]" 0.00085702549879431659;
	setAttr ".blendWeights[1626]" 0.00095149420414680991;
	setAttr ".blendWeights[1627]" 0.00043440476165938313;
	setAttr ".blendWeights[1628]" 0.00038980744884915841;
	setAttr ".blendWeights[1629]" 0.00039044587048723037;
	setAttr ".blendWeights[1630]" 0.00043512094873150308;
	setAttr ".blendWeights[1631]" 0.0011513887387919483;
	setAttr ".blendWeights[1632]" 0.0011184161943779644;
	setAttr ".blendWeights[1633]" 0.0011176525099189896;
	setAttr ".blendWeights[1634]" 0.00115355685780388;
	setAttr ".blendWeights[1635]" 0.00094382383127777957;
	setAttr ".blendWeights[1636]" 0.00090755626749420551;
	setAttr ".blendWeights[1637]" 0.00066975422397266967;
	setAttr ".blendWeights[1638]" 0.00067340407721312853;
	setAttr ".blendWeights[1639]" 0.00041081249813486711;
	setAttr ".blendWeights[1640]" 0.00045634904976041149;
	setAttr ".blendWeights[1641]" 0.00046736566445534401;
	setAttr ".blendWeights[1642]" 0.00043089134713854109;
	setAttr ".blendWeights[1643]" 0.00077216431734397932;
	setAttr ".blendWeights[1644]" 0.00068885471906905411;
	setAttr ".blendWeights[1645]" 0.00056295108292015632;
	setAttr ".blendWeights[1646]" 0.0006367807487148503;
	setAttr ".blendWeights[1647]" 0.0004501622740803869;
	setAttr ".blendWeights[1648]" 0.00040695589154321997;
	setAttr ".blendWeights[1649]" 0.00043550744775496322;
	setAttr ".blendWeights[1650]" 0.00047192588570620726;
	setAttr ".blendWeights[1651]" 0.00095652148363547639;
	setAttr ".blendWeights[1652]" 0.00067659013205918252;
	setAttr ".blendWeights[1653]" 0.00067925650866748643;
	setAttr ".blendWeights[1654]" 0.0009216043377472461;
	setAttr ".blendWeights[1655]" 0.00065410707344154529;
	setAttr ".blendWeights[1656]" 0.00069274950968602504;
	setAttr ".blendWeights[1657]" 0.00057425920108132014;
	setAttr ".blendWeights[1658]" 0.00052349187624505964;
	setAttr ".blendWeights[1659]" 0.00042370107142358044;
	setAttr ".blendWeights[1660]" 0.00046882877243548636;
	setAttr ".blendWeights[1661]" 0.00045941915479083941;
	setAttr ".blendWeights[1662]" 0.00041719718021209417;
	setAttr ".blendWeights[1663]" 0.00072423286933186496;
	setAttr ".blendWeights[1664]" 0.00064340897102867309;
	setAttr ".blendWeights[1665]" 0.00068715412369964855;
	setAttr ".blendWeights[1666]" 0.00077012658318468272;
	setAttr ".blendWeights[1667]" 0.00044607376779033279;
	setAttr ".blendWeights[1668]" 0.00040268065506600457;
	setAttr ".blendWeights[1669]" 0.00039643567155523785;
	setAttr ".blendWeights[1670]" 0.00044032983582389744;
	setAttr ".blendWeights[1671]" 0.0011012444684896936;
	setAttr ".blendWeights[1672]" 0.0010585805813251603;
	setAttr ".blendWeights[1673]" 0.0010826552699294131;
	setAttr ".blendWeights[1674]" 0.0011063164512481634;
	setAttr ".blendWeights[1675]" 0.00077721394771593667;
	setAttr ".blendWeights[1676]" 0.00066494487399189513;
	setAttr ".blendWeights[1677]" 0.00056126725102059304;
	setAttr ".blendWeights[1678]" 0.00052664719695551514;
	setAttr ".blendWeights[1679]" 0.00042035156982880557;
	setAttr ".blendWeights[1680]" 0.00042971834664236742;
	setAttr ".blendWeights[1681]" 0.00054759823042312486;
	setAttr ".blendWeights[1682]" 0.00058308813977361656;
	setAttr ".blendWeights[1683]" 0.00068770546722423135;
	setAttr ".blendWeights[1684]" 0.00080072798090976031;
	setAttr ".blendWeights[1685]" 0.00041225837633946652;
	setAttr ".blendWeights[1686]" 0.00040393421520607334;
	setAttr ".blendWeights[1687]" 0.00068296130965645255;
	setAttr ".blendWeights[1688]" 0.00098963849683628841;
	setAttr ".blendWeights[1689]" 0.00097280845260309641;
	setAttr ".blendWeights[1690]" 0.00066789064770933731;
	setAttr ".blendWeights[1691]" 0.0011131672607013845;
	setAttr ".blendWeights[1692]" 0.001098048170117028;
	setAttr ".blendWeights[1693]" 0.001122143347779284;
	setAttr ".blendWeights[1694]" 0.0011427330271721178;
	setAttr ".blendWeights[1695]" 0.00067549117115495183;
	setAttr ".blendWeights[1696]" 0.00096265051718727782;
	setAttr ".blendWeights[1697]" 0.00095539178900279744;
	setAttr ".blendWeights[1698]" 0.00067281268739317716;
	setAttr ".blendWeights[1699]" 0.00040526041863890984;
	setAttr ".blendWeights[1700]" 0.00044754199786617432;
	setAttr ".blendWeights[1701]" 0.00044865632530637339;
	setAttr ".blendWeights[1702]" 0.00040602456879063401;
	setAttr ".blendWeights[1703]" 0.00086037546625026022;
	setAttr ".blendWeights[1704]" 0.00077230401565595973;
	setAttr ".blendWeights[1705]" 0.00072764802957113938;
	setAttr ".blendWeights[1706]" 0.00081251200522077438;
	setAttr ".blendWeights[1707]" 0.0004397626605163788;
	setAttr ".blendWeights[1708]" 0.00039568828533804881;
	setAttr ".blendWeights[1709]" 0.00040039286134674465;
	setAttr ".blendWeights[1710]" 0.00044399319333374978;
	setAttr ".blendWeights[1711]" 0.00097169272830622579;
	setAttr ".blendWeights[1712]" 0.00067250535119096856;
	setAttr ".blendWeights[1713]" 0.00067322433226033691;
	setAttr ".blendWeights[1714]" 0.00096737046027946423;
	setAttr ".blendWeights[1715]" 0.00097341474357275385;
	setAttr ".blendWeights[1716]" 0.00094817217637443172;
	setAttr ".blendWeights[1717]" 0.00096001953087355247;
	setAttr ".blendWeights[1718]" 0.00096890993601909947;
	setAttr ".blendWeights[1719]" 0.00081091292365885383;
	setAttr ".blendWeights[1720]" 0.00012278932146279377;
	setAttr ".blendWeights[1721]" 0.0001227772143196082;
	setAttr ".blendWeights[1722]" 0.00012947831307461022;
	setAttr ".blendWeights[1723]" 0.00012907644733337921;
	setAttr ".blendWeights[1724]" 0.0008487954015658594;
	setAttr ".blendWeights[1725]" 0.0010417813855944404;
	setAttr ".blendWeights[1726]" 0.0011145381676221809;
	setAttr ".blendWeights[1727]" 0.0011328237550025056;
	setAttr ".blendWeights[1728]" 0.00097552418940002449;
	setAttr ".blendWeights[1729]" 0.0009674151637688224;
	setAttr ".blendWeights[1730]" 0.0011524653478924619;
	setAttr ".blendWeights[1731]" 0.0011563769026570175;
	setAttr ".blendWeights[1732]" 0.00098646082426558524;
	setAttr ".blendWeights[1733]" 0.0011598674996177779;
	setAttr ".blendWeights[1734]" 0.0011498688204080055;
	setAttr ".blendWeights[1735]" 0.0011116678308670403;
	setAttr ".blendWeights[1736]" 0.0010921938757506452;
	setAttr ".blendWeights[1737]" 0.0010672809968305429;
	setAttr ".blendWeights[1738]" 0.00097558565627039497;
	setAttr ".blendWeights[1739]" 0.00080333102667602251;
	setAttr ".blendWeights[1740]" 0.00082589417979628829;
	setAttr ".blendWeights[1741]" 0.00082589417979628829;
	setAttr ".blendWeights[1742]" 0.00098542333138841847;
	setAttr ".blendWeights[1743]" 0.00082724925386666896;
	setAttr ".blendWeights[1744]" 0.0010759404348917537;
	setAttr ".blendWeights[1745]" 9.5449751240751952e-005;
	setAttr ".blendWeights[1746]" 9.516139051372885e-005;
	setAttr ".blendWeights[1747]" 0.00010745275302286028;
	setAttr ".blendWeights[1748]" 0.00010684296954198858;
	setAttr ".blendWeights[1749]" 9.5395618067635989e-005;
	setAttr ".blendWeights[1750]" 9.5974900743445515e-005;
	setAttr ".blendWeights[1751]" 0.00010742993558057225;
	setAttr ".blendWeights[1752]" 0.00010777010111655185;
	setAttr ".blendWeights[1753]" 0.00066996935956689565;
	setAttr ".blendWeights[1754]" 0.00069519888841933306;
	setAttr ".blendWeights[1755]" 0.00069456000118503069;
	setAttr ".blendWeights[1756]" 0.000655724781124739;
	setAttr ".blendWeights[1757]" 0.0011177642690506254;
	setAttr ".blendWeights[1758]" 0.00066715024614765264;
	setAttr ".blendWeights[1759]" 0.00066825013815003742;
	setAttr ".blendWeights[1760]" 0.00096612248774691776;
	setAttr ".blendWeights[1761]" 0.0004370604279479495;
	setAttr ".blendWeights[1762]" 0.00039273087037649938;
	setAttr ".blendWeights[1763]" 0.00074271496589877416;
	setAttr ".blendWeights[1764]" 0.00082939688320063159;
	setAttr ".blendWeights[1765]" 0.00045548198858644869;
	setAttr ".blendWeights[1766]" 0.00041349424163479413;
	setAttr ".blendWeights[1767]" 0.00069008220214236519;
	setAttr ".blendWeights[1768]" 0.00069251481674436396;
	setAttr ".blendWeights[1769]" 0.00097865075327775806;
	setAttr ".blendWeights[1770]" 0.0011413248673821617;
	setAttr ".blendWeights[1771]" 0.0011015704315115006;
	setAttr ".blendWeights[1772]" 0.0011304600577588136;
	setAttr ".blendWeights[1773]" 0.00043767044433831487;
	setAttr ".blendWeights[1774]" 0.00039308244475947979;
	setAttr ".blendWeights[1775]" 0.00089135870563205981;
	setAttr ".blendWeights[1776]" 0.0007989035196805808;
	setAttr ".blendWeights[1777]" 0.0022635278194828652;
	setAttr ".blendWeights[1778]" 0.0017047899260775698;
	setAttr ".blendWeights[1779]" 0.0017118158234618937;
	setAttr ".blendWeights[1780]" 0.0019586146711042759;
	setAttr ".blendWeights[1781]" 0.00096888013391871301;
	setAttr ".blendWeights[1782]" 0.0011246020388402831;
	setAttr ".blendWeights[1783]" 0.0011192897752474937;
	setAttr ".blendWeights[1784]" 0.0011519307688536633;
	setAttr ".blendWeights[1785]" 0.00097488995867325194;
	setAttr ".blendWeights[1786]" 0.00039088126375816997;
	setAttr ".blendWeights[1787]" 0.00043563457310048543;
	setAttr ".blendWeights[1788]" 0.00077614665238708068;
	setAttr ".blendWeights[1789]" 0.00086764909533648725;
	setAttr ".blendWeights[1790]" 0.002110952969140181;
	setAttr ".blendWeights[1791]" 0.001817162377600944;
	setAttr ".blendWeights[1792]" 0.0017885838129671091;
	setAttr ".blendWeights[1793]" 0.0023996834562704794;
	setAttr ".blendWeights[1794]" 0.0011466967359353509;
	setAttr ".blendWeights[1795]" 0.00098326825054277558;
	setAttr ".blendWeights[1796]" 0.0011103919189973162;
	setAttr ".blendWeights[1797]" 0.0011425299983908541;
	setAttr ".blendWeights[1798]" 0.0009707120454261085;
	setAttr ".blendWeights[1799]" 0.00097595259769572189;
	setAttr ".blendWeights[1800]" 0.00066967319917770945;
	setAttr ".blendWeights[1801]" 0.0006703102238533919;
	setAttr ".blendWeights[1802]" 0.00043557031191393948;
	setAttr ".blendWeights[1803]" 0.00039102375618883735;
	setAttr ".blendWeights[1804]" 0.00093195319397439049;
	setAttr ".blendWeights[1805]" 0.00083905283583408496;
	setAttr ".blendWeights[1806]" 0.00040306948231348021;
	setAttr ".blendWeights[1807]" 0.00044547306479695821;
	setAttr ".blendWeights[1808]" 0.00044643093004770903;
	setAttr ".blendWeights[1809]" 0.00040407531067849112;
	setAttr ".blendWeights[1810]" 0.00067627534478916255;
	setAttr ".blendWeights[1811]" 0.00067819386932413644;
	setAttr ".blendWeights[1812]" 0.00097471766384783082;
	setAttr ".blendWeights[1813]" 0.0011395981950065304;
	setAttr ".blendWeights[1814]" 0.001123741497076218;
	setAttr ".blendWeights[1815]" 0.0011574926271976536;
	setAttr ".blendWeights[1816]" 0.00066732626618524571;
	setAttr ".blendWeights[1817]" 0.00066836003427770047;
	setAttr ".blendWeights[1818]" 0.00041015172489872838;
	setAttr ".blendWeights[1819]" 0.00045254925378599678;
	setAttr ".blendWeights[1820]" 0.00068493571353739173;
	setAttr ".blendWeights[1821]" 0.00068731244877900661;
	setAttr ".blendWeights[1822]" 8.6093102913638146e-005;
	setAttr ".blendWeights[1823]" 8.5541643538306777e-005;
	setAttr ".blendWeights[1824]" 7.9315170052004808e-005;
	setAttr ".blendWeights[1825]" 9.4383969308377779e-005;
	setAttr ".blendWeights[1826]" 7.440698366383938e-005;
	setAttr ".blendWeights[1827]" 7.2614886200101834e-005;
	setAttr ".blendWeights[1828]" 6.6819032991720926e-005;
	setAttr ".blendWeights[1829]" 3.6616739713617726e-007;
	setAttr ".blendWeights[1830]" 3.5058456966677641e-007;
	setAttr ".blendWeights[1831]" 3.4867554028796912e-007;
	setAttr ".blendWeights[1832]" 3.5534759341942654e-007;
	setAttr ".blendWeights[1833]" 3.4238729392061709e-007;
	setAttr ".blendWeights[1834]" 3.3435781994737661e-007;
	setAttr ".blendWeights[1835]" 5.4030278863347422e-005;
	setAttr ".blendWeights[1836]" 4.8554276746666961e-005;
	setAttr ".blendWeights[1837]" 4.0073944422883059e-005;
	setAttr ".blendWeights[1838]" 5.1734394096071399e-005;
	setAttr ".blendWeights[1839]" 3.4429372917888266e-005;
	setAttr ".blendWeights[1840]" 2.9242484680948671e-005;
	setAttr ".blendWeights[1841]" 1.7883623450126843e-005;
	setAttr ".blendWeights[1842]" 1.8277805731522776e-005;
	setAttr ".blendWeights[1843]" 2.6695471285507911e-007;
	setAttr ".blendWeights[1844]" 2.6695471285507911e-007;
	setAttr ".blendWeights[1845]" 2.6695471285507911e-007;
	setAttr ".blendWeights[1846]" 2.6695471285507911e-007;
	setAttr ".blendWeights[1847]" 9.8609980026005001e-006;
	setAttr ".blendWeights[1848]" 7.5355101061554239e-006;
	setAttr ".blendWeights[1849]" 8.8525211744398603e-006;
	setAttr ".blendWeights[1850]" 1.2458078314225474e-005;
	setAttr ".blendWeights[1851]" 6.3225570403526006e-006;
	setAttr ".blendWeights[1852]" 6.5501417186555215e-006;
	setAttr ".blendWeights[1853]" 4.7564508196541361e-006;
	setAttr ".blendWeights[1854]" 5.0085118193688797e-006;
	setAttr ".blendWeights[1855]" 4.0228523929995575e-006;
	setAttr ".blendWeights[1856]" 3.5196085187663648e-006;
	setAttr ".blendWeights[1857]" 8.0357436432083103e-005;
	setAttr ".blendWeights[1858]" 9.8599135284975167e-005;
	setAttr ".blendWeights[1859]" 6.645965889729276e-005;
	setAttr ".blendWeights[1860]" 5.7429082394544484e-005;
	setAttr ".blendWeights[1861]" 5.6580356493069958e-005;
	setAttr ".blendWeights[1862]" 4.8550784292599548e-005;
	setAttr ".blendWeights[1863]" 3.9694779722545593e-005;
	setAttr ".blendWeights[1864]" 3.0457823493356037e-007;
	setAttr ".blendWeights[1865]" 3.0457823493356037e-007;
	setAttr ".blendWeights[1866]" 3.0457823493356037e-007;
	setAttr ".blendWeights[1867]" 3.1632936123349727e-007;
	setAttr ".blendWeights[1868]" 1.9499497223989789e-005;
	setAttr ".blendWeights[1869]" 3.0280501899493247e-005;
	setAttr ".blendWeights[1870]" 1.3132384962684853e-005;
	setAttr ".blendWeights[1871]" 9.3625366999110788e-006;
	setAttr ".blendWeights[1872]" 6.7161208640076159e-006;
	setAttr ".blendWeights[1873]" 4.9639393032658048e-006;
	setAttr ".blendWeights[1874]" 3.2707052848647961e-006;
	setAttr ".blendWeights[1875]" 8.1157791773884869e-005;
	setAttr ".blendWeights[1876]" 0.00010109868866446919;
	setAttr ".blendWeights[1877]" 6.6338004890117378e-005;
	setAttr ".blendWeights[1878]" 5.6305849166113982e-005;
	setAttr ".blendWeights[1879]" 4.8462832519126131e-005;
	setAttr ".blendWeights[1880]" 3.9903919850588861e-005;
	setAttr ".blendWeights[1881]" 3.0779199614237044e-005;
	setAttr ".blendWeights[1882]" 2.0090043048959192e-005;
	setAttr ".blendWeights[1883]" 1.3439313959218508e-005;
	setAttr ".blendWeights[1884]" 9.5661762020975323e-006;
	setAttr ".blendWeights[1885]" 6.7656192039112511e-006;
	setAttr ".blendWeights[1886]" 4.9016716582691018e-006;
	setAttr ".blendWeights[1887]" 3.1283984680101012e-006;
	setAttr ".blendWeights[1888]" 8.1327874562407969e-005;
	setAttr ".blendWeights[1889]" 0.00010175725014365607;
	setAttr ".blendWeights[1890]" 6.6459193243484062e-005;
	setAttr ".blendWeights[1891]" 5.6423719681298657e-005;
	setAttr ".blendWeights[1892]" 4.8675523314157068e-005;
	setAttr ".blendWeights[1893]" 4.0215098008076624e-005;
	setAttr ".blendWeights[1894]" 3.1147013825894319e-005;
	setAttr ".blendWeights[1895]" 2.0358613197536114e-005;
	setAttr ".blendWeights[1896]" 1.3536608064951347e-005;
	setAttr ".blendWeights[1897]" 9.6098028444168313e-006;
	setAttr ".blendWeights[1898]" 6.7627160970340845e-006;
	setAttr ".blendWeights[1899]" 4.8859992457751012e-006;
	setAttr ".blendWeights[1900]" 3.0972209897462517e-006;
	setAttr ".blendWeights[1901]" 8.1797493973946264e-005;
	setAttr ".blendWeights[1902]" 0.0001015591112694363;
	setAttr ".blendWeights[1903]" 6.7228465693488371e-005;
	setAttr ".blendWeights[1904]" 5.6890777954307818e-005;
	setAttr ".blendWeights[1905]" 4.9151021698208704e-005;
	setAttr ".blendWeights[1906]" 4.0682796566069197e-005;
	setAttr ".blendWeights[1907]" 3.1486655530051034e-005;
	setAttr ".blendWeights[1908]" 2.0367751801594997e-005;
	setAttr ".blendWeights[1909]" 1.3444669065058492e-005;
	setAttr ".blendWeights[1910]" 9.510122225571097e-006;
	setAttr ".blendWeights[1911]" 6.7285773041215696e-006;
	setAttr ".blendWeights[1912]" 4.8742995060050337e-006;
	setAttr ".blendWeights[1913]" 3.1192052957877211e-006;
	setAttr ".blendWeights[1914]" 8.2564670947768458e-005;
	setAttr ".blendWeights[1915]" 0.00010037505103421117;
	setAttr ".blendWeights[1916]" 6.8779467029093187e-005;
	setAttr ".blendWeights[1917]" 5.7828270542408255e-005;
	setAttr ".blendWeights[1918]" 5.0015929333136712e-005;
	setAttr ".blendWeights[1919]" 4.1552244398419943e-005;
	setAttr ".blendWeights[1920]" 3.1677867697442131e-005;
	setAttr ".blendWeights[1921]" 2.0157098277366487e-005;
	setAttr ".blendWeights[1922]" 1.3124934384013359e-005;
	setAttr ".blendWeights[1923]" 9.2164645765842181e-006;
	setAttr -size 1924 ".weightList";
	setAttr ".weightList[0].weights[7]"  1;
	setAttr ".weightList[1].weights[7]"  1;
	setAttr ".weightList[2].weights[7]"  1;
	setAttr ".weightList[3].weights[7]"  1;
	setAttr ".weightList[4].weights[7]"  1;
	setAttr ".weightList[5].weights[7]"  1;
	setAttr ".weightList[6].weights[7]"  1;
	setAttr ".weightList[7].weights[7]"  1;
	setAttr ".weightList[8].weights[7]"  1;
	setAttr ".weightList[9].weights[7]"  1;
	setAttr ".weightList[10].weights[7]"  1;
	setAttr ".weightList[11].weights[7]"  1;
	setAttr ".weightList[12].weights[7]"  1;
	setAttr ".weightList[13].weights[7]"  1;
	setAttr ".weightList[14].weights[7]"  1;
	setAttr ".weightList[15].weights[7]"  1;
	setAttr ".weightList[16].weights[7]"  1;
	setAttr ".weightList[17].weights[7]"  1;
	setAttr ".weightList[18].weights[7]"  1;
	setAttr ".weightList[19].weights[7]"  1;
	setAttr ".weightList[20].weights[7]"  1;
	setAttr ".weightList[21].weights[7]"  1;
	setAttr ".weightList[22].weights[7]"  1;
	setAttr ".weightList[23].weights[7]"  1;
	setAttr ".weightList[24].weights[7]"  1;
	setAttr ".weightList[25].weights[7]"  1;
	setAttr ".weightList[26].weights[7]"  1;
	setAttr ".weightList[27].weights[7]"  1;
	setAttr ".weightList[28].weights[7]"  1;
	setAttr ".weightList[29].weights[7]"  1;
	setAttr ".weightList[30].weights[7]"  1;
	setAttr ".weightList[31].weights[7]"  1;
	setAttr ".weightList[32].weights[7]"  1;
	setAttr ".weightList[33].weights[7]"  1;
	setAttr ".weightList[34].weights[7]"  1;
	setAttr ".weightList[35].weights[7]"  1;
	setAttr ".weightList[36].weights[7]"  1;
	setAttr ".weightList[37].weights[7]"  1;
	setAttr ".weightList[38].weights[7]"  1;
	setAttr ".weightList[39].weights[7]"  1;
	setAttr ".weightList[40].weights[7]"  1;
	setAttr ".weightList[41].weights[7]"  1;
	setAttr ".weightList[42].weights[7]"  1;
	setAttr ".weightList[43].weights[7]"  1;
	setAttr ".weightList[44].weights[7]"  1;
	setAttr ".weightList[45].weights[7]"  1;
	setAttr ".weightList[46].weights[7]"  1;
	setAttr ".weightList[47].weights[7]"  1;
	setAttr ".weightList[48].weights[7]"  1;
	setAttr ".weightList[49].weights[7]"  1;
	setAttr ".weightList[50].weights[7]"  1;
	setAttr ".weightList[51].weights[7]"  1;
	setAttr ".weightList[52].weights[7]"  1;
	setAttr ".weightList[53].weights[7]"  1;
	setAttr ".weightList[54].weights[7]"  1;
	setAttr ".weightList[55].weights[7]"  1;
	setAttr ".weightList[56].weights[7]"  1;
	setAttr ".weightList[57].weights[7]"  1;
	setAttr -size 2 ".weightList[58].weights";
	setAttr ".weightList[58].weights[1]" 0.1679725058540443;
	setAttr ".weightList[58].weights[4]" 0.83202749414595567;
	setAttr -size 2 ".weightList[59].weights";
	setAttr ".weightList[59].weights[1]" 0.043912808907598307;
	setAttr ".weightList[59].weights[4]" 0.9560871910924017;
	setAttr -size 2 ".weightList[60].weights";
	setAttr ".weightList[60].weights[1]" 0.0020963469097902373;
	setAttr ".weightList[60].weights[4]" 0.99790365309020979;
	setAttr -size 2 ".weightList[61].weights";
	setAttr ".weightList[61].weights[1]" 0.00097760323997388198;
	setAttr ".weightList[61].weights[4]" 0.99902239676002613;
	setAttr -size 2 ".weightList[62].weights";
	setAttr ".weightList[62].weights[1]" 0.0032237837780786007;
	setAttr ".weightList[62].weights[4]" 0.99677621622192136;
	setAttr -size 2 ".weightList[63].weights";
	setAttr ".weightList[63].weights[1]" 0.050812828074042235;
	setAttr ".weightList[63].weights[4]" 0.94918717192595781;
	setAttr -size 2 ".weightList[64].weights";
	setAttr ".weightList[64].weights[1]" 0.19376774642917274;
	setAttr ".weightList[64].weights[4]" 0.80623225357082728;
	setAttr -size 2 ".weightList[65].weights";
	setAttr ".weightList[65].weights[1]" 0.25417891833887407;
	setAttr ".weightList[65].weights[4]" 0.74582108166112604;
	setAttr ".weightList[66].weights[6]"  1;
	setAttr ".weightList[67].weights[6]"  1;
	setAttr ".weightList[68].weights[6]"  1;
	setAttr ".weightList[69].weights[6]"  1;
	setAttr ".weightList[70].weights[6]"  1;
	setAttr ".weightList[71].weights[6]"  1;
	setAttr ".weightList[72].weights[6]"  1;
	setAttr ".weightList[73].weights[6]"  1;
	setAttr ".weightList[74].weights[6]"  1;
	setAttr ".weightList[75].weights[6]"  1;
	setAttr ".weightList[76].weights[6]"  1;
	setAttr ".weightList[77].weights[6]"  1;
	setAttr ".weightList[78].weights[6]"  1;
	setAttr ".weightList[79].weights[6]"  1;
	setAttr ".weightList[80].weights[6]"  1;
	setAttr ".weightList[81].weights[6]"  1;
	setAttr ".weightList[82].weights[6]"  1;
	setAttr ".weightList[83].weights[6]"  1;
	setAttr ".weightList[84].weights[6]"  1;
	setAttr ".weightList[85].weights[6]"  1;
	setAttr ".weightList[86].weights[6]"  1;
	setAttr ".weightList[87].weights[6]"  1;
	setAttr ".weightList[88].weights[6]"  1;
	setAttr ".weightList[89].weights[6]"  1;
	setAttr ".weightList[90].weights[6]"  1;
	setAttr ".weightList[91].weights[6]"  1;
	setAttr ".weightList[92].weights[6]"  1;
	setAttr ".weightList[93].weights[6]"  1;
	setAttr ".weightList[94].weights[6]"  1;
	setAttr ".weightList[95].weights[6]"  1;
	setAttr ".weightList[96].weights[6]"  1;
	setAttr ".weightList[97].weights[6]"  1;
	setAttr -size 2 ".weightList[98].weights";
	setAttr ".weightList[98].weights[4]" 0.0012047866807869771;
	setAttr ".weightList[98].weights[6]" 0.99879521331921306;
	setAttr -size 2 ".weightList[99].weights";
	setAttr ".weightList[99].weights[4]" 0.0011532726738747161;
	setAttr ".weightList[99].weights[6]" 0.99884672732612534;
	setAttr -size 2 ".weightList[100].weights";
	setAttr ".weightList[100].weights[4]" 0.00042873097148538752;
	setAttr ".weightList[100].weights[6]" 0.99957126902851456;
	setAttr -size 2 ".weightList[101].weights";
	setAttr ".weightList[101].weights[4]" 0.0012100394437676758;
	setAttr ".weightList[101].weights[6]" 0.99878996055623237;
	setAttr -size 2 ".weightList[102].weights";
	setAttr ".weightList[102].weights[4]" 0.0015937775311083569;
	setAttr ".weightList[102].weights[6]" 0.99840622246889155;
	setAttr -size 2 ".weightList[103].weights";
	setAttr ".weightList[103].weights[4]" 0.0017750365758111969;
	setAttr ".weightList[103].weights[6]" 0.99822496342418887;
	setAttr -size 2 ".weightList[104].weights";
	setAttr ".weightList[104].weights[4]" 0.0030083918949616556;
	setAttr ".weightList[104].weights[6]" 0.9969916081050384;
	setAttr -size 2 ".weightList[105].weights";
	setAttr ".weightList[105].weights[4]" 0.0010644603204269852;
	setAttr ".weightList[105].weights[6]" 0.99893553967957305;
	setAttr -size 2 ".weightList[106].weights";
	setAttr ".weightList[106].weights[4]" 0.25558909845331973;
	setAttr ".weightList[106].weights[6]" 0.74441090154668033;
	setAttr -size 2 ".weightList[107].weights";
	setAttr ".weightList[107].weights[4]" 0.1783132952157622;
	setAttr ".weightList[107].weights[6]" 0.82168670478423789;
	setAttr -size 2 ".weightList[108].weights";
	setAttr ".weightList[108].weights[4]" 0.048172356714580686;
	setAttr ".weightList[108].weights[6]" 0.95182764328541936;
	setAttr -size 2 ".weightList[109].weights";
	setAttr ".weightList[109].weights[4]" 0.17457864446017662;
	setAttr ".weightList[109].weights[6]" 0.82542135553982332;
	setAttr -size 2 ".weightList[110].weights";
	setAttr ".weightList[110].weights[4]" 0.25018036919919939;
	setAttr ".weightList[110].weights[6]" 0.74981963080080061;
	setAttr -size 2 ".weightList[111].weights";
	setAttr ".weightList[111].weights[4]" 0.32402540783418599;
	setAttr ".weightList[111].weights[6]" 0.67597459216581401;
	setAttr -size 2 ".weightList[112].weights";
	setAttr ".weightList[112].weights[4]" 0.65769669716841916;
	setAttr ".weightList[112].weights[6]" 0.34230330283158089;
	setAttr -size 2 ".weightList[113].weights";
	setAttr ".weightList[113].weights[4]" 0.32647122172435072;
	setAttr ".weightList[113].weights[6]" 0.67352877827564928;
	setAttr -size 2 ".weightList[114].weights";
	setAttr ".weightList[114].weights[4]" 0.95889908098496812;
	setAttr ".weightList[114].weights[6]" 0.041100919015031982;
	setAttr -size 2 ".weightList[115].weights";
	setAttr ".weightList[115].weights[4]" 0.93820519740341735;
	setAttr ".weightList[115].weights[6]" 0.061794802596582633;
	setAttr -size 2 ".weightList[116].weights";
	setAttr ".weightList[116].weights[4]" 0.81507302280378324;
	setAttr ".weightList[116].weights[6]" 0.18492697719621679;
	setAttr -size 2 ".weightList[117].weights";
	setAttr ".weightList[117].weights[4]" 0.932281830922709;
	setAttr ".weightList[117].weights[6]" 0.067718169077291071;
	setAttr -size 2 ".weightList[118].weights";
	setAttr ".weightList[118].weights[4]" 0.95308010030448465;
	setAttr ".weightList[118].weights[6]" 0.04691989969551532;
	setAttr -size 2 ".weightList[119].weights";
	setAttr ".weightList[119].weights[1]" 0.089404901941908532;
	setAttr ".weightList[119].weights[4]" 0.91059509805809147;
	setAttr -size 2 ".weightList[120].weights";
	setAttr ".weightList[120].weights[1]" 0.22349235153790772;
	setAttr ".weightList[120].weights[4]" 0.7765076484620923;
	setAttr -size 2 ".weightList[121].weights";
	setAttr ".weightList[121].weights[1]" 0.11422197126909522;
	setAttr ".weightList[121].weights[4]" 0.88577802873090472;
	setAttr -size 2 ".weightList[122].weights";
	setAttr ".weightList[122].weights[1]" 0.18336218048699018;
	setAttr ".weightList[122].weights[4]" 0.81663781951300984;
	setAttr -size 2 ".weightList[123].weights";
	setAttr ".weightList[123].weights[1]" 0.13489218477649725;
	setAttr ".weightList[123].weights[4]" 0.86510781522350277;
	setAttr -size 2 ".weightList[124].weights";
	setAttr ".weightList[124].weights[1]" 0.079857520122353837;
	setAttr ".weightList[124].weights[4]" 0.92014247987764619;
	setAttr -size 2 ".weightList[125].weights";
	setAttr ".weightList[125].weights[1]" 0.015167297018285326;
	setAttr ".weightList[125].weights[4]" 0.98483270298171466;
	setAttr -size 2 ".weightList[126].weights";
	setAttr ".weightList[126].weights[1]" 0.001405077552111755;
	setAttr ".weightList[126].weights[4]" 0.99859492244788828;
	setAttr -size 2 ".weightList[127].weights";
	setAttr ".weightList[127].weights[1]" 0.000697808687834197;
	setAttr ".weightList[127].weights[4]" 0.9993021913121658;
	setAttr -size 2 ".weightList[128].weights";
	setAttr ".weightList[128].weights[1]" 0.0021419035209123446;
	setAttr ".weightList[128].weights[4]" 0.99785809647908774;
	setAttr -size 2 ".weightList[129].weights";
	setAttr ".weightList[129].weights[1]" 0.028965441161257391;
	setAttr ".weightList[129].weights[4]" 0.97103455883874268;
	setAttr -size 2 ".weightList[130].weights";
	setAttr ".weightList[130].weights[1]" 0.056837231549599819;
	setAttr ".weightList[130].weights[4]" 0.94316276845040026;
	setAttr -size 2 ".weightList[131].weights";
	setAttr ".weightList[131].weights[1]" 0.073037147119559512;
	setAttr ".weightList[131].weights[4]" 0.92696285288044056;
	setAttr -size 2 ".weightList[132].weights";
	setAttr ".weightList[132].weights[1]" 0.01809543338752076;
	setAttr ".weightList[132].weights[4]" 0.98190456661247927;
	setAttr -size 2 ".weightList[133].weights";
	setAttr ".weightList[133].weights[1]" 0.0088003736859374876;
	setAttr ".weightList[133].weights[4]" 0.99119962631406255;
	setAttr -size 2 ".weightList[134].weights";
	setAttr ".weightList[134].weights[1]" 0.00069814557000689439;
	setAttr ".weightList[134].weights[4]" 0.9993018544299932;
	setAttr -size 2 ".weightList[135].weights";
	setAttr ".weightList[135].weights[1]" 0.00054051161398195764;
	setAttr ".weightList[135].weights[4]" 0.99945948838601806;
	setAttr -size 2 ".weightList[136].weights";
	setAttr ".weightList[136].weights[1]" 0.0010372459877667033;
	setAttr ".weightList[136].weights[4]" 0.99896275401223333;
	setAttr -size 2 ".weightList[137].weights";
	setAttr ".weightList[137].weights[1]" 0.024078270263838224;
	setAttr ".weightList[137].weights[4]" 0.97592172973616176;
	setAttr -size 2 ".weightList[138].weights";
	setAttr ".weightList[138].weights[1]" 0.0071006067500643888;
	setAttr ".weightList[138].weights[4]" 0.99289939324993559;
	setAttr -size 2 ".weightList[139].weights";
	setAttr ".weightList[139].weights[1]" 0.014220825493540947;
	setAttr ".weightList[139].weights[4]" 0.98577917450645902;
	setAttr -size 2 ".weightList[140].weights";
	setAttr ".weightList[140].weights[1]" 0.0069388596867386125;
	setAttr ".weightList[140].weights[4]" 0.99306114031326143;
	setAttr -size 2 ".weightList[141].weights";
	setAttr ".weightList[141].weights[1]" 0.00065801372902480595;
	setAttr ".weightList[141].weights[4]" 0.99934198627097526;
	setAttr -size 2 ".weightList[142].weights";
	setAttr ".weightList[142].weights[1]" 0.0004489273813788957;
	setAttr ".weightList[142].weights[4]" 0.99955107261862108;
	setAttr -size 2 ".weightList[143].weights";
	setAttr ".weightList[143].weights[1]" 0.00034450773110120104;
	setAttr ".weightList[143].weights[4]" 0.99965549226889883;
	setAttr -size 2 ".weightList[144].weights";
	setAttr ".weightList[144].weights[1]" 0.00072932011569349232;
	setAttr ".weightList[144].weights[4]" 0.99927067988430651;
	setAttr -size 2 ".weightList[145].weights";
	setAttr ".weightList[145].weights[1]" 0.0084064853608330284;
	setAttr ".weightList[145].weights[4]" 0.99159351463916701;
	setAttr -size 2 ".weightList[146].weights";
	setAttr ".weightList[146].weights[1]" 0.00043082867829444602;
	setAttr ".weightList[146].weights[4]" 0.99956917132170553;
	setAttr -size 2 ".weightList[147].weights";
	setAttr ".weightList[147].weights[4]" 1.245264566120023e-005;
	setAttr ".weightList[147].weights[6]" 0.99998754735433881;
	setAttr -size 2 ".weightList[148].weights";
	setAttr ".weightList[148].weights[4]" 2.0070501249887208e-005;
	setAttr ".weightList[148].weights[6]" 0.99997992949875014;
	setAttr -size 2 ".weightList[149].weights";
	setAttr ".weightList[149].weights[4]" 1.3547813651382382e-005;
	setAttr ".weightList[149].weights[6]" 0.99998645218634863;
	setAttr -size 2 ".weightList[150].weights";
	setAttr ".weightList[150].weights[4]" 2.1555862650768197e-005;
	setAttr ".weightList[150].weights[6]" 0.99997844413734926;
	setAttr -size 2 ".weightList[151].weights";
	setAttr ".weightList[151].weights[4]" 1.7428612652842466e-005;
	setAttr ".weightList[151].weights[6]" 0.99998257138734714;
	setAttr -size 2 ".weightList[152].weights";
	setAttr ".weightList[152].weights[4]" 9.238465551718587e-006;
	setAttr ".weightList[152].weights[6]" 0.99999076153444832;
	setAttr -size 2 ".weightList[153].weights";
	setAttr ".weightList[153].weights[4]" 7.8879323423772991e-006;
	setAttr ".weightList[153].weights[6]" 0.99999211206765759;
	setAttr -size 2 ".weightList[154].weights";
	setAttr ".weightList[154].weights[4]" 3.1042616851580939e-006;
	setAttr ".weightList[154].weights[6]" 0.99999689573831474;
	setAttr ".weightList[155].weights[7]"  1;
	setAttr ".weightList[156].weights[7]"  1;
	setAttr ".weightList[157].weights[7]"  1;
	setAttr ".weightList[158].weights[7]"  1;
	setAttr ".weightList[159].weights[7]"  1;
	setAttr ".weightList[160].weights[7]"  1;
	setAttr ".weightList[161].weights[7]"  1;
	setAttr ".weightList[162].weights[7]"  1;
	setAttr ".weightList[163].weights[7]"  1;
	setAttr ".weightList[164].weights[7]"  1;
	setAttr ".weightList[165].weights[7]"  1;
	setAttr ".weightList[166].weights[7]"  1;
	setAttr ".weightList[167].weights[7]"  1;
	setAttr ".weightList[168].weights[7]"  1;
	setAttr ".weightList[169].weights[7]"  1;
	setAttr ".weightList[170].weights[7]"  1;
	setAttr ".weightList[171].weights[7]"  1;
	setAttr ".weightList[172].weights[7]"  1;
	setAttr ".weightList[173].weights[7]"  1;
	setAttr ".weightList[174].weights[7]"  1;
	setAttr ".weightList[175].weights[7]"  1;
	setAttr ".weightList[176].weights[7]"  1;
	setAttr ".weightList[177].weights[7]"  1;
	setAttr ".weightList[178].weights[7]"  1;
	setAttr ".weightList[179].weights[7]"  1;
	setAttr ".weightList[180].weights[7]"  1;
	setAttr ".weightList[181].weights[7]"  1;
	setAttr ".weightList[182].weights[7]"  1;
	setAttr ".weightList[183].weights[7]"  1;
	setAttr ".weightList[184].weights[7]"  1;
	setAttr ".weightList[185].weights[7]"  1;
	setAttr ".weightList[186].weights[7]"  1;
	setAttr -size 2 ".weightList[187].weights";
	setAttr ".weightList[187].weights[4]" 0.34307224794327118;
	setAttr ".weightList[187].weights[6]" 0.65692775205672893;
	setAttr -size 2 ".weightList[188].weights";
	setAttr ".weightList[188].weights[4]" 0.2443294568001978;
	setAttr ".weightList[188].weights[6]" 0.75567054319980231;
	setAttr -size 2 ".weightList[189].weights";
	setAttr ".weightList[189].weights[4]" 0.1625590484588916;
	setAttr ".weightList[189].weights[6]" 0.83744095154110842;
	setAttr -size 2 ".weightList[190].weights";
	setAttr ".weightList[190].weights[4]" 0.092724345010736453;
	setAttr ".weightList[190].weights[6]" 0.90727565498926355;
	setAttr -size 2 ".weightList[191].weights";
	setAttr ".weightList[191].weights[4]" 0.046210374723599103;
	setAttr ".weightList[191].weights[6]" 0.95378962527640088;
	setAttr -size 2 ".weightList[192].weights";
	setAttr ".weightList[192].weights[4]" 0.027017216908542065;
	setAttr ".weightList[192].weights[6]" 0.97298278309145791;
	setAttr -size 2 ".weightList[193].weights";
	setAttr ".weightList[193].weights[4]" 0.040692946672785633;
	setAttr ".weightList[193].weights[6]" 0.95930705332721433;
	setAttr -size 2 ".weightList[194].weights";
	setAttr ".weightList[194].weights[4]" 0.083750858929744057;
	setAttr ".weightList[194].weights[6]" 0.9162491410702559;
	setAttr -size 2 ".weightList[195].weights";
	setAttr ".weightList[195].weights[4]" 0.14131421990392842;
	setAttr ".weightList[195].weights[6]" 0.85868578009607155;
	setAttr -size 2 ".weightList[196].weights";
	setAttr ".weightList[196].weights[4]" 0.21557575302614948;
	setAttr ".weightList[196].weights[6]" 0.7844242469738506;
	setAttr -size 2 ".weightList[197].weights";
	setAttr ".weightList[197].weights[4]" 0.40096788376587778;
	setAttr ".weightList[197].weights[6]" 0.59903211623412234;
	setAttr -size 2 ".weightList[198].weights";
	setAttr ".weightList[198].weights[1]" 0.41284315325245791;
	setAttr ".weightList[198].weights[4]" 0.58715684674754209;
	setAttr -size 2 ".weightList[199].weights";
	setAttr ".weightList[199].weights[1]" 0.29964762442251908;
	setAttr ".weightList[199].weights[4]" 0.70035237557748087;
	setAttr -size 2 ".weightList[200].weights";
	setAttr ".weightList[200].weights[1]" 0.14119872499832795;
	setAttr ".weightList[200].weights[4]" 0.85880127500167214;
	setAttr -size 2 ".weightList[201].weights";
	setAttr ".weightList[201].weights[1]" 0.067213041628172779;
	setAttr ".weightList[201].weights[4]" 0.93278695837182724;
	setAttr -size 2 ".weightList[202].weights";
	setAttr ".weightList[202].weights[1]" 0.043603198320652611;
	setAttr ".weightList[202].weights[4]" 0.95639680167934737;
	setAttr -size 2 ".weightList[203].weights";
	setAttr ".weightList[203].weights[1]" 0.038736243913171188;
	setAttr ".weightList[203].weights[4]" 0.96126375608682879;
	setAttr -size 2 ".weightList[204].weights";
	setAttr ".weightList[204].weights[1]" 0.051300514601309466;
	setAttr ".weightList[204].weights[4]" 0.94869948539869053;
	setAttr -size 2 ".weightList[205].weights";
	setAttr ".weightList[205].weights[1]" 0.095733718919532973;
	setAttr ".weightList[205].weights[4]" 0.90426628108046703;
	setAttr -size 2 ".weightList[206].weights";
	setAttr ".weightList[206].weights[1]" 0.19078567307349853;
	setAttr ".weightList[206].weights[4]" 0.80921432692650141;
	setAttr -size 2 ".weightList[207].weights";
	setAttr ".weightList[207].weights[1]" 0.34983129324599577;
	setAttr ".weightList[207].weights[4]" 0.65016870675400418;
	setAttr -size 2 ".weightList[208].weights";
	setAttr ".weightList[208].weights[1]" 0.44990084433914684;
	setAttr ".weightList[208].weights[4]" 0.5500991556608531;
	setAttr -size 2 ".weightList[209].weights";
	setAttr ".weightList[209].weights[1]" 0.38520520521657509;
	setAttr ".weightList[209].weights[4]" 0.61479479478342502;
	setAttr -size 2 ".weightList[210].weights";
	setAttr ".weightList[210].weights[1]" 0.22456205259683754;
	setAttr ".weightList[210].weights[4]" 0.77543794740316252;
	setAttr -size 2 ".weightList[211].weights";
	setAttr ".weightList[211].weights[1]" 0.10648549010474537;
	setAttr ".weightList[211].weights[4]" 0.8935145098952546;
	setAttr -size 2 ".weightList[212].weights";
	setAttr ".weightList[212].weights[1]" 0.064825298147767732;
	setAttr ".weightList[212].weights[4]" 0.93517470185223228;
	setAttr -size 2 ".weightList[213].weights";
	setAttr ".weightList[213].weights[1]" 0.045124632835451393;
	setAttr ".weightList[213].weights[4]" 0.95487536716454857;
	setAttr -size 2 ".weightList[214].weights";
	setAttr ".weightList[214].weights[1]" 0.038879804842013456;
	setAttr ".weightList[214].weights[4]" 0.96112019515798652;
	setAttr -size 2 ".weightList[215].weights";
	setAttr ".weightList[215].weights[1]" 0.045593735054548952;
	setAttr ".weightList[215].weights[4]" 0.954406264945451;
	setAttr -size 2 ".weightList[216].weights";
	setAttr ".weightList[216].weights[1]" 0.073468610644465443;
	setAttr ".weightList[216].weights[4]" 0.92653138935553458;
	setAttr -size 2 ".weightList[217].weights";
	setAttr ".weightList[217].weights[1]" 0.13770797539506716;
	setAttr ".weightList[217].weights[4]" 0.86229202460493282;
	setAttr -size 2 ".weightList[218].weights";
	setAttr ".weightList[218].weights[1]" 0.26793805263593462;
	setAttr ".weightList[218].weights[4]" 0.73206194736406538;
	setAttr -size 2 ".weightList[219].weights";
	setAttr ".weightList[219].weights[1]" 0.42270732365145219;
	setAttr ".weightList[219].weights[4]" 0.57729267634854775;
	setAttr -size 2 ".weightList[220].weights";
	setAttr ".weightList[220].weights[4]" 0.35733919401526187;
	setAttr ".weightList[220].weights[6]" 0.64266080598473818;
	setAttr -size 2 ".weightList[221].weights";
	setAttr ".weightList[221].weights[4]" 0.16028996102115561;
	setAttr ".weightList[221].weights[6]" 0.83971003897884444;
	setAttr -size 2 ".weightList[222].weights";
	setAttr ".weightList[222].weights[4]" 0.16318016773765026;
	setAttr ".weightList[222].weights[6]" 0.83681983226234979;
	setAttr -size 2 ".weightList[223].weights";
	setAttr ".weightList[223].weights[4]" 0.12352227448329957;
	setAttr ".weightList[223].weights[6]" 0.87647772551670045;
	setAttr -size 2 ".weightList[224].weights";
	setAttr ".weightList[224].weights[4]" 0.096368295286307054;
	setAttr ".weightList[224].weights[6]" 0.90363170471369303;
	setAttr -size 2 ".weightList[225].weights";
	setAttr ".weightList[225].weights[4]" 0.15987148480599542;
	setAttr ".weightList[225].weights[6]" 0.84012851519400455;
	setAttr -size 2 ".weightList[226].weights";
	setAttr ".weightList[226].weights[4]" 0.095640032441203823;
	setAttr ".weightList[226].weights[6]" 0.90435996755879622;
	setAttr -size 2 ".weightList[227].weights";
	setAttr ".weightList[227].weights[4]" 0.11684328301769045;
	setAttr ".weightList[227].weights[6]" 0.88315671698230958;
	setAttr -size 2 ".weightList[228].weights";
	setAttr ".weightList[228].weights[4]" 0.14746955588177729;
	setAttr ".weightList[228].weights[6]" 0.85253044411822265;
	setAttr -size 2 ".weightList[229].weights";
	setAttr ".weightList[229].weights[4]" 0.13085863820658986;
	setAttr ".weightList[229].weights[6]" 0.86914136179341017;
	setAttr -size 2 ".weightList[230].weights";
	setAttr ".weightList[230].weights[4]" 0.26595920503143194;
	setAttr ".weightList[230].weights[6]" 0.73404079496856811;
	setAttr -size 2 ".weightList[231].weights";
	setAttr ".weightList[231].weights[4]" 0.9333372429555572;
	setAttr ".weightList[231].weights[6]" 0.066662757044442883;
	setAttr -size 2 ".weightList[232].weights";
	setAttr ".weightList[232].weights[1]" 0.12125505193495592;
	setAttr ".weightList[232].weights[4]" 0.87874494806504411;
	setAttr -size 2 ".weightList[233].weights";
	setAttr ".weightList[233].weights[1]" 0.3024297578429373;
	setAttr ".weightList[233].weights[4]" 0.69757024215706276;
	setAttr -size 2 ".weightList[234].weights";
	setAttr ".weightList[234].weights[1]" 0.43536532714199611;
	setAttr ".weightList[234].weights[4]" 0.56463467285800395;
	setAttr -size 2 ".weightList[235].weights";
	setAttr ".weightList[235].weights[1]" 0.46236359465325871;
	setAttr ".weightList[235].weights[4]" 0.5376364053467414;
	setAttr -size 2 ".weightList[236].weights";
	setAttr ".weightList[236].weights[1]" 0.38610496626496199;
	setAttr ".weightList[236].weights[4]" 0.61389503373503806;
	setAttr -size 2 ".weightList[237].weights";
	setAttr ".weightList[237].weights[1]" 0.22796971845927166;
	setAttr ".weightList[237].weights[4]" 0.77203028154072828;
	setAttr -size 2 ".weightList[238].weights";
	setAttr ".weightList[238].weights[1]" 0.10125469029502815;
	setAttr ".weightList[238].weights[4]" 0.8987453097049718;
	setAttr -size 2 ".weightList[239].weights";
	setAttr ".weightList[239].weights[4]" 0.90598436329334331;
	setAttr ".weightList[239].weights[6]" 0.094015636706656663;
	setAttr -size 2 ".weightList[240].weights";
	setAttr ".weightList[240].weights[4]" 0.95219233466155606;
	setAttr ".weightList[240].weights[6]" 0.047807665338443932;
	setAttr -size 2 ".weightList[241].weights";
	setAttr ".weightList[241].weights[4]" 0.91242159178926774;
	setAttr ".weightList[241].weights[6]" 0.087578408210732345;
	setAttr -size 2 ".weightList[242].weights";
	setAttr ".weightList[242].weights[4]" 0.91084393368040439;
	setAttr ".weightList[242].weights[6]" 0.089156066319595564;
	setAttr -size 2 ".weightList[243].weights";
	setAttr ".weightList[243].weights[1]" 0.19681219811001449;
	setAttr ".weightList[243].weights[4]" 0.80318780188998562;
	setAttr -size 2 ".weightList[244].weights";
	setAttr ".weightList[244].weights[1]" 0.34483153619368984;
	setAttr ".weightList[244].weights[4]" 0.65516846380631022;
	setAttr -size 2 ".weightList[245].weights";
	setAttr ".weightList[245].weights[1]" 0.4337210362664301;
	setAttr ".weightList[245].weights[4]" 0.5662789637335699;
	setAttr -size 2 ".weightList[246].weights";
	setAttr ".weightList[246].weights[1]" 0.40642887628408114;
	setAttr ".weightList[246].weights[4]" 0.5935711237159188;
	setAttr -size 2 ".weightList[247].weights";
	setAttr ".weightList[247].weights[1]" 0.27410135373489009;
	setAttr ".weightList[247].weights[4]" 0.72589864626510991;
	setAttr -size 2 ".weightList[248].weights";
	setAttr ".weightList[248].weights[1]" 0.11348714509634454;
	setAttr ".weightList[248].weights[4]" 0.8865128549036555;
	setAttr -size 2 ".weightList[249].weights";
	setAttr ".weightList[249].weights[4]" 0.92584587706633992;
	setAttr ".weightList[249].weights[6]" 0.07415412293366011;
	setAttr -size 2 ".weightList[250].weights";
	setAttr ".weightList[250].weights[4]" 0.93725118787704376;
	setAttr ".weightList[250].weights[6]" 0.062748812122956327;
	setAttr -size 2 ".weightList[251].weights";
	setAttr ".weightList[251].weights[4]" 0.95979270274968131;
	setAttr ".weightList[251].weights[6]" 0.040207297250318769;
	setAttr -size 2 ".weightList[252].weights";
	setAttr ".weightList[252].weights[4]" 0.94094425588868114;
	setAttr ".weightList[252].weights[6]" 0.059055744111318885;
	setAttr -size 2 ".weightList[253].weights";
	setAttr ".weightList[253].weights[1]" 0.36890627017202093;
	setAttr ".weightList[253].weights[4]" 0.63109372982797907;
	setAttr -size 2 ".weightList[254].weights";
	setAttr ".weightList[254].weights[1]" 0.42299011421157284;
	setAttr ".weightList[254].weights[4]" 0.57700988578842716;
	setAttr -size 2 ".weightList[255].weights";
	setAttr ".weightList[255].weights[4]" 0.64529842913841862;
	setAttr ".weightList[255].weights[6]" 0.35470157086158133;
	setAttr -size 2 ".weightList[256].weights";
	setAttr ".weightList[256].weights[4]" 0.61980124244303625;
	setAttr ".weightList[256].weights[6]" 0.38019875755696375;
	setAttr -size 2 ".weightList[257].weights";
	setAttr ".weightList[257].weights[4]" 0.55229913478837911;
	setAttr ".weightList[257].weights[6]" 0.44770086521162095;
	setAttr -size 2 ".weightList[258].weights";
	setAttr ".weightList[258].weights[4]" 0.43178236570273654;
	setAttr ".weightList[258].weights[6]" 0.56821763429726346;
	setAttr -size 2 ".weightList[259].weights";
	setAttr ".weightList[259].weights[4]" 0.35671329280363728;
	setAttr ".weightList[259].weights[6]" 0.64328670719636283;
	setAttr -size 2 ".weightList[260].weights";
	setAttr ".weightList[260].weights[4]" 0.44368346630847599;
	setAttr ".weightList[260].weights[6]" 0.55631653369152401;
	setAttr -size 2 ".weightList[261].weights";
	setAttr ".weightList[261].weights[4]" 0.48694717715772162;
	setAttr ".weightList[261].weights[6]" 0.51305282284227838;
	setAttr -size 2 ".weightList[262].weights";
	setAttr ".weightList[262].weights[4]" 0.67379738812178958;
	setAttr ".weightList[262].weights[6]" 0.32620261187821042;
	setAttr -size 2 ".weightList[263].weights";
	setAttr ".weightList[263].weights[4]" 0.64338978039737715;
	setAttr ".weightList[263].weights[6]" 0.35661021960262285;
	setAttr -size 2 ".weightList[264].weights";
	setAttr ".weightList[264].weights[1]" 0.38794744162034822;
	setAttr ".weightList[264].weights[4]" 0.61205255837965178;
	setAttr -size 2 ".weightList[265].weights";
	setAttr ".weightList[265].weights[1]" 0.34012012218732518;
	setAttr ".weightList[265].weights[4]" 0.65987987781267488;
	setAttr -size 2 ".weightList[266].weights";
	setAttr ".weightList[266].weights[4]" 0.54082541753213975;
	setAttr ".weightList[266].weights[6]" 0.45917458246786025;
	setAttr -size 2 ".weightList[267].weights";
	setAttr ".weightList[267].weights[4]" 0.59974113288378905;
	setAttr ".weightList[267].weights[6]" 0.400258867116211;
	setAttr -size 2 ".weightList[268].weights";
	setAttr ".weightList[268].weights[4]" 0.56672984987733688;
	setAttr ".weightList[268].weights[6]" 0.43327015012266307;
	setAttr -size 2 ".weightList[269].weights";
	setAttr ".weightList[269].weights[4]" 0.56650521371301288;
	setAttr ".weightList[269].weights[6]" 0.43349478628698712;
	setAttr -size 2 ".weightList[270].weights";
	setAttr ".weightList[270].weights[4]" 0.73015083592568097;
	setAttr ".weightList[270].weights[6]" 0.26984916407431903;
	setAttr -size 2 ".weightList[271].weights";
	setAttr ".weightList[271].weights[4]" 0.58501890042864446;
	setAttr ".weightList[271].weights[6]" 0.41498109957135548;
	setAttr -size 2 ".weightList[272].weights";
	setAttr ".weightList[272].weights[4]" 0.58211191185948086;
	setAttr ".weightList[272].weights[6]" 0.4178880881405192;
	setAttr -size 2 ".weightList[273].weights";
	setAttr ".weightList[273].weights[4]" 0.59661122492586394;
	setAttr ".weightList[273].weights[6]" 0.40338877507413617;
	setAttr -size 2 ".weightList[274].weights";
	setAttr ".weightList[274].weights[4]" 0.50748375981460025;
	setAttr ".weightList[274].weights[6]" 0.49251624018539969;
	setAttr ".weightList[275].weights[2]"  1;
	setAttr ".weightList[276].weights[2]"  1;
	setAttr ".weightList[277].weights[2]"  1;
	setAttr ".weightList[278].weights[2]"  1;
	setAttr ".weightList[279].weights[2]"  1;
	setAttr ".weightList[280].weights[2]"  1;
	setAttr ".weightList[281].weights[2]"  1;
	setAttr ".weightList[282].weights[2]"  1;
	setAttr ".weightList[283].weights[2]"  1;
	setAttr ".weightList[284].weights[2]"  1;
	setAttr ".weightList[285].weights[2]"  1;
	setAttr ".weightList[286].weights[2]"  1;
	setAttr ".weightList[287].weights[2]"  1;
	setAttr ".weightList[288].weights[2]"  1;
	setAttr ".weightList[289].weights[2]"  1;
	setAttr ".weightList[290].weights[2]"  1;
	setAttr ".weightList[291].weights[2]"  1;
	setAttr ".weightList[292].weights[2]"  1;
	setAttr ".weightList[293].weights[2]"  1;
	setAttr ".weightList[294].weights[2]"  1;
	setAttr ".weightList[295].weights[2]"  1;
	setAttr ".weightList[296].weights[2]"  1;
	setAttr ".weightList[297].weights[2]"  1;
	setAttr ".weightList[298].weights[2]"  1;
	setAttr ".weightList[299].weights[2]"  1;
	setAttr ".weightList[300].weights[2]"  1;
	setAttr ".weightList[301].weights[2]"  1;
	setAttr ".weightList[302].weights[2]"  1;
	setAttr ".weightList[303].weights[2]"  1;
	setAttr ".weightList[304].weights[2]"  1;
	setAttr ".weightList[305].weights[2]"  1;
	setAttr ".weightList[306].weights[2]"  1;
	setAttr ".weightList[307].weights[2]"  1;
	setAttr ".weightList[308].weights[2]"  1;
	setAttr ".weightList[309].weights[2]"  1;
	setAttr ".weightList[310].weights[2]"  1;
	setAttr ".weightList[311].weights[2]"  1;
	setAttr ".weightList[312].weights[2]"  1;
	setAttr ".weightList[313].weights[2]"  1;
	setAttr ".weightList[314].weights[2]"  1;
	setAttr ".weightList[315].weights[2]"  1;
	setAttr ".weightList[316].weights[2]"  1;
	setAttr ".weightList[317].weights[2]"  1;
	setAttr ".weightList[318].weights[2]"  1;
	setAttr ".weightList[319].weights[2]"  1;
	setAttr ".weightList[320].weights[2]"  1;
	setAttr ".weightList[321].weights[2]"  1;
	setAttr ".weightList[322].weights[2]"  1;
	setAttr ".weightList[323].weights[2]"  1;
	setAttr ".weightList[324].weights[2]"  1;
	setAttr ".weightList[325].weights[2]"  1;
	setAttr ".weightList[326].weights[2]"  1;
	setAttr ".weightList[327].weights[2]"  1;
	setAttr ".weightList[328].weights[2]"  1;
	setAttr ".weightList[329].weights[2]"  1;
	setAttr ".weightList[330].weights[2]"  1;
	setAttr ".weightList[331].weights[2]"  1;
	setAttr ".weightList[332].weights[2]"  1;
	setAttr ".weightList[333].weights[2]"  1;
	setAttr ".weightList[334].weights[2]"  1;
	setAttr ".weightList[335].weights[2]"  1;
	setAttr -size 2 ".weightList[336].weights[1:2]"  0.013321127014664081 
		0.98667887298533596;
	setAttr -size 2 ".weightList[337].weights[1:2]"  0.013737020147322306 
		0.98626297985267775;
	setAttr -size 2 ".weightList[338].weights[1:2]"  0.013582551244659135 
		0.98641744875534076;
	setAttr -size 2 ".weightList[339].weights[1:2]"  0.011866958637167037 
		0.98813304136283286;
	setAttr ".weightList[340].weights[2]"  1;
	setAttr ".weightList[341].weights[2]"  1;
	setAttr ".weightList[342].weights[2]"  1;
	setAttr ".weightList[343].weights[2]"  1;
	setAttr ".weightList[344].weights[2]"  1;
	setAttr ".weightList[345].weights[2]"  1;
	setAttr ".weightList[346].weights[2]"  1;
	setAttr ".weightList[347].weights[2]"  1;
	setAttr ".weightList[348].weights[2]"  1;
	setAttr ".weightList[349].weights[2]"  1;
	setAttr ".weightList[350].weights[2]"  1;
	setAttr -size 2 ".weightList[351].weights[1:2]"  0.0035976193720530241 
		0.99640238062794695;
	setAttr ".weightList[352].weights[2]"  1;
	setAttr ".weightList[353].weights[2]"  1;
	setAttr ".weightList[354].weights[2]"  1;
	setAttr ".weightList[355].weights[2]"  1;
	setAttr ".weightList[356].weights[2]"  1;
	setAttr ".weightList[357].weights[2]"  1;
	setAttr ".weightList[358].weights[2]"  1;
	setAttr ".weightList[359].weights[2]"  1;
	setAttr ".weightList[360].weights[2]"  1;
	setAttr ".weightList[361].weights[2]"  1;
	setAttr ".weightList[362].weights[2]"  1;
	setAttr ".weightList[363].weights[2]"  1;
	setAttr ".weightList[364].weights[2]"  1;
	setAttr ".weightList[365].weights[2]"  1;
	setAttr ".weightList[366].weights[2]"  1;
	setAttr ".weightList[367].weights[2]"  1;
	setAttr ".weightList[368].weights[2]"  1;
	setAttr ".weightList[369].weights[2]"  1;
	setAttr ".weightList[370].weights[2]"  1;
	setAttr ".weightList[371].weights[2]"  1;
	setAttr ".weightList[372].weights[2]"  1;
	setAttr ".weightList[373].weights[2]"  1;
	setAttr ".weightList[374].weights[2]"  1;
	setAttr ".weightList[375].weights[2]"  1;
	setAttr ".weightList[376].weights[2]"  1;
	setAttr ".weightList[377].weights[2]"  1;
	setAttr ".weightList[378].weights[2]"  1;
	setAttr ".weightList[379].weights[2]"  1;
	setAttr ".weightList[380].weights[2]"  1;
	setAttr ".weightList[381].weights[2]"  1;
	setAttr ".weightList[382].weights[2]"  1;
	setAttr ".weightList[383].weights[2]"  1;
	setAttr ".weightList[384].weights[2]"  1;
	setAttr -size 2 ".weightList[385].weights[0:1]"  0.52517356445147512 
		0.47482643554852483;
	setAttr -size 2 ".weightList[386].weights[0:1]"  0.57386216383022126 
		0.42613783616977879;
	setAttr -size 2 ".weightList[387].weights[0:1]"  0.53617598919503695 
		0.46382401080496299;
	setAttr -size 3 ".weightList[388].weights";
	setAttr ".weightList[388].weights[0]" 0.42146342192117547;
	setAttr ".weightList[388].weights[1]" 0.30820982553708742;
	setAttr ".weightList[388].weights[9]" 0.2703267525417371;
	setAttr -size 3 ".weightList[389].weights";
	setAttr ".weightList[389].weights[0]" 0.19557481817851932;
	setAttr ".weightList[389].weights[1]" 0.61539692721829642;
	setAttr ".weightList[389].weights[4]" 0.18902825460318445;
	setAttr -size 2 ".weightList[390].weights[0:1]"  0.27533669702348074 
		0.72466330297651937;
	setAttr -size 2 ".weightList[391].weights[0:1]"  0.24975802915857592 
		0.75024197084142408;
	setAttr -size 3 ".weightList[392].weights";
	setAttr ".weightList[392].weights[0]" 0.16649288691219619;
	setAttr ".weightList[392].weights[1]" 0.62345582864975657;
	setAttr ".weightList[392].weights[4]" 0.2100512844380473;
	setAttr -size 2 ".weightList[393].weights[0:1]"  0.30790191948472245 
		0.69209808051527755;
	setAttr -size 2 ".weightList[394].weights[0:1]"  0.2798091647601611 
		0.72019083523983896;
	setAttr -size 2 ".weightList[395].weights[0:1]"  0.56628849415058302 
		0.43371150584941692;
	setAttr -size 2 ".weightList[396].weights[0:1]"  0.56485668586636073 
		0.43514331413363921;
	setAttr -size 2 ".weightList[397].weights[0:1]"  0.49420903470776456 
		0.50579096529223555;
	setAttr -size 2 ".weightList[398].weights[0:1]"  0.52786619067804552 
		0.47213380932195448;
	setAttr -size 2 ".weightList[399].weights[0:1]"  0.44444646920801528 
		0.55555353079198477;
	setAttr -size 2 ".weightList[400].weights[0:1]"  0.47143502085485239 
		0.52856497914514755;
	setAttr -size 2 ".weightList[401].weights[0:1]"  0.53322515125596215 
		0.4667748487440378;
	setAttr -size 2 ".weightList[402].weights[0:1]"  0.5207392478979832 
		0.47926075210201685;
	setAttr -size 2 ".weightList[403].weights[0:1]"  0.36845594135718662 
		0.63154405864281338;
	setAttr -size 2 ".weightList[404].weights[0:1]"  0.4285943475519346 
		0.5714056524480654;
	setAttr -size 3 ".weightList[405].weights";
	setAttr ".weightList[405].weights[0]" 0.27156419454611547;
	setAttr ".weightList[405].weights[1]" 0.55354267462532647;
	setAttr ".weightList[405].weights[4]" 0.1748931308285579;
	setAttr -size 3 ".weightList[406].weights";
	setAttr ".weightList[406].weights[0]" 0.25979985702014613;
	setAttr ".weightList[406].weights[1]" 0.55536197742465443;
	setAttr ".weightList[406].weights[4]" 0.18483816555519958;
	setAttr -size 2 ".weightList[407].weights[0:1]"  0.42250048147806879 
		0.57749951852193127;
	setAttr -size 2 ".weightList[408].weights[0:1]"  0.36563614458713883 
		0.63436385541286122;
	setAttr ".weightList[409].weights[3]"  1;
	setAttr ".weightList[410].weights[0]"  1;
	setAttr ".weightList[411].weights[0]"  1;
	setAttr ".weightList[412].weights[3]"  1;
	setAttr ".weightList[413].weights[3]"  1;
	setAttr ".weightList[414].weights[3]"  1;
	setAttr ".weightList[415].weights[3]"  1.0000000000000002;
	setAttr ".weightList[416].weights[3]"  1;
	setAttr ".weightList[417].weights[3]"  1;
	setAttr ".weightList[418].weights[3]"  1;
	setAttr ".weightList[419].weights[3]"  1.0000000000000002;
	setAttr ".weightList[420].weights[3]"  1;
	setAttr ".weightList[421].weights[2]"  1;
	setAttr ".weightList[422].weights[2]"  1;
	setAttr ".weightList[423].weights[2]"  1;
	setAttr ".weightList[424].weights[2]"  1;
	setAttr ".weightList[425].weights[2]"  1;
	setAttr ".weightList[426].weights[2]"  1;
	setAttr ".weightList[427].weights[2]"  1;
	setAttr ".weightList[428].weights[2]"  1;
	setAttr ".weightList[429].weights[2]"  1;
	setAttr ".weightList[430].weights[2]"  1;
	setAttr ".weightList[431].weights[2]"  1;
	setAttr ".weightList[432].weights[2]"  1;
	setAttr ".weightList[433].weights[2]"  1;
	setAttr ".weightList[434].weights[2]"  1;
	setAttr ".weightList[435].weights[2]"  1;
	setAttr ".weightList[436].weights[2]"  1;
	setAttr ".weightList[437].weights[2]"  1;
	setAttr ".weightList[438].weights[2]"  1;
	setAttr ".weightList[439].weights[2]"  1;
	setAttr ".weightList[440].weights[2]"  1;
	setAttr ".weightList[441].weights[2]"  1;
	setAttr ".weightList[442].weights[2]"  1;
	setAttr ".weightList[443].weights[2]"  1;
	setAttr ".weightList[444].weights[2]"  1;
	setAttr ".weightList[445].weights[2]"  1;
	setAttr ".weightList[446].weights[2]"  1;
	setAttr ".weightList[447].weights[2]"  1;
	setAttr ".weightList[448].weights[2]"  1;
	setAttr ".weightList[449].weights[2]"  1;
	setAttr ".weightList[450].weights[2]"  1;
	setAttr ".weightList[451].weights[2]"  1;
	setAttr ".weightList[452].weights[2]"  1;
	setAttr ".weightList[453].weights[2]"  1;
	setAttr ".weightList[454].weights[2]"  1;
	setAttr ".weightList[455].weights[2]"  1;
	setAttr ".weightList[456].weights[2]"  1;
	setAttr ".weightList[457].weights[2]"  1;
	setAttr ".weightList[458].weights[2]"  1;
	setAttr ".weightList[459].weights[2]"  1;
	setAttr ".weightList[460].weights[2]"  1;
	setAttr ".weightList[461].weights[2]"  1;
	setAttr ".weightList[462].weights[2]"  1;
	setAttr ".weightList[463].weights[2]"  1;
	setAttr ".weightList[464].weights[2]"  1;
	setAttr ".weightList[465].weights[2]"  1;
	setAttr ".weightList[466].weights[2]"  1;
	setAttr ".weightList[467].weights[2]"  1;
	setAttr ".weightList[468].weights[2]"  1;
	setAttr ".weightList[469].weights[2]"  1;
	setAttr ".weightList[470].weights[2]"  1;
	setAttr ".weightList[471].weights[2]"  1;
	setAttr ".weightList[472].weights[2]"  1;
	setAttr ".weightList[473].weights[2]"  1;
	setAttr ".weightList[474].weights[2]"  1;
	setAttr ".weightList[475].weights[2]"  1;
	setAttr ".weightList[476].weights[2]"  1;
	setAttr ".weightList[477].weights[2]"  1;
	setAttr ".weightList[478].weights[2]"  1;
	setAttr ".weightList[479].weights[2]"  1;
	setAttr ".weightList[480].weights[2]"  1;
	setAttr ".weightList[481].weights[2]"  1;
	setAttr ".weightList[482].weights[2]"  1;
	setAttr ".weightList[483].weights[2]"  1;
	setAttr ".weightList[484].weights[2]"  1;
	setAttr -size 2 ".weightList[485].weights";
	setAttr ".weightList[485].weights[1]" 0.80376537665270142;
	setAttr ".weightList[485].weights[4]" 0.1962346233472986;
	setAttr -size 2 ".weightList[486].weights";
	setAttr ".weightList[486].weights[1]" 0.92700960877268257;
	setAttr ".weightList[486].weights[4]" 0.072990391227317417;
	setAttr -size 2 ".weightList[487].weights";
	setAttr ".weightList[487].weights[1]" 0.65585548937738014;
	setAttr ".weightList[487].weights[4]" 0.34414451062261986;
	setAttr -size 2 ".weightList[488].weights";
	setAttr ".weightList[488].weights[1]" 0.91107535321214472;
	setAttr ".weightList[488].weights[4]" 0.088924646787855249;
	setAttr -size 2 ".weightList[489].weights";
	setAttr ".weightList[489].weights[1]" 0.69031152722031985;
	setAttr ".weightList[489].weights[4]" 0.30968847277968015;
	setAttr -size 2 ".weightList[490].weights";
	setAttr ".weightList[490].weights[1]" 0.80627052386747122;
	setAttr ".weightList[490].weights[4]" 0.19372947613252886;
	setAttr -size 2 ".weightList[491].weights";
	setAttr ".weightList[491].weights[1]" 0.85028035583857997;
	setAttr ".weightList[491].weights[4]" 0.14971964416142006;
	setAttr -size 2 ".weightList[492].weights";
	setAttr ".weightList[492].weights[1]" 0.54089320512200301;
	setAttr ".weightList[492].weights[4]" 0.45910679487799705;
	setAttr -size 2 ".weightList[493].weights";
	setAttr ".weightList[493].weights[1]" 0.56600427631055461;
	setAttr ".weightList[493].weights[4]" 0.43399572368944533;
	setAttr -size 2 ".weightList[494].weights";
	setAttr ".weightList[494].weights[1]" 0.8820231731191519;
	setAttr ".weightList[494].weights[4]" 0.11797682688084811;
	setAttr -size 2 ".weightList[495].weights";
	setAttr ".weightList[495].weights[1]" 0.8824262841345526;
	setAttr ".weightList[495].weights[4]" 0.11757371586544745;
	setAttr -size 2 ".weightList[496].weights";
	setAttr ".weightList[496].weights[1]" 0.51992587612551988;
	setAttr ".weightList[496].weights[4]" 0.48007412387448012;
	setAttr -size 2 ".weightList[497].weights";
	setAttr ".weightList[497].weights[1]" 0.51944614880826989;
	setAttr ".weightList[497].weights[4]" 0.48055385119173016;
	setAttr -size 2 ".weightList[498].weights";
	setAttr ".weightList[498].weights[1]" 0.88552401055223162;
	setAttr ".weightList[498].weights[4]" 0.11447598944776832;
	setAttr -size 2 ".weightList[499].weights[0:1]"  0.11353277521444755 
		0.88646722478555251;
	setAttr -size 2 ".weightList[500].weights";
	setAttr ".weightList[500].weights[1]" 0.52647498496837286;
	setAttr ".weightList[500].weights[4]" 0.47352501503162708;
	setAttr -size 2 ".weightList[501].weights";
	setAttr ".weightList[501].weights[1]" 0.52228542359217067;
	setAttr ".weightList[501].weights[4]" 0.47771457640782938;
	setAttr -size 2 ".weightList[502].weights[0:1]"  0.096445040362478765 
		0.90355495963752119;
	setAttr -size 2 ".weightList[503].weights[0:1]"  0.16312046913562248 
		0.83687953086437761;
	setAttr -size 2 ".weightList[504].weights";
	setAttr ".weightList[504].weights[1]" 0.52444304154681953;
	setAttr ".weightList[504].weights[4]" 0.47555695845318052;
	setAttr -size 2 ".weightList[505].weights";
	setAttr ".weightList[505].weights[1]" 0.52355795403740468;
	setAttr ".weightList[505].weights[4]" 0.47644204596259537;
	setAttr -size 2 ".weightList[506].weights[0:1]"  0.17419986305031165 
		0.82580013694968835;
	setAttr -size 2 ".weightList[507].weights[0:1]"  0.24775509931800505 
		0.7522449006819949;
	setAttr -size 2 ".weightList[508].weights";
	setAttr ".weightList[508].weights[1]" 0.51939475751093145;
	setAttr ".weightList[508].weights[4]" 0.48060524248906855;
	setAttr -size 2 ".weightList[509].weights";
	setAttr ".weightList[509].weights[1]" 0.52002890325829876;
	setAttr ".weightList[509].weights[4]" 0.47997109674170124;
	setAttr -size 2 ".weightList[510].weights[0:1]"  0.27790795488549797 
		0.72209204511450198;
	setAttr -size 2 ".weightList[511].weights[0:1]"  0.33630188252194848 
		0.66369811747805152;
	setAttr -size 2 ".weightList[512].weights[0:1]"  0.3494980605319763 
		0.65050193946802382;
	setAttr -size 2 ".weightList[513].weights";
	setAttr ".weightList[513].weights[1]" 0.52634290864276767;
	setAttr ".weightList[513].weights[4]" 0.47365709135723227;
	setAttr -size 2 ".weightList[514].weights";
	setAttr ".weightList[514].weights[1]" 0.52992555692428767;
	setAttr ".weightList[514].weights[4]" 0.47007444307571244;
	setAttr -size 2 ".weightList[515].weights";
	setAttr ".weightList[515].weights[1]" 0.54321101089326906;
	setAttr ".weightList[515].weights[4]" 0.45678898910673099;
	setAttr -size 2 ".weightList[516].weights";
	setAttr ".weightList[516].weights[1]" 0.5420842977880671;
	setAttr ".weightList[516].weights[4]" 0.4579157022119329;
	setAttr -size 2 ".weightList[517].weights";
	setAttr ".weightList[517].weights[1]" 0.56521376937906098;
	setAttr ".weightList[517].weights[4]" 0.43478623062093902;
	setAttr -size 2 ".weightList[518].weights";
	setAttr ".weightList[518].weights[1]" 0.57516982343392586;
	setAttr ".weightList[518].weights[4]" 0.42483017656607425;
	setAttr -size 2 ".weightList[519].weights";
	setAttr ".weightList[519].weights[1]" 0.56881325391051551;
	setAttr ".weightList[519].weights[4]" 0.43118674608948449;
	setAttr -size 2 ".weightList[520].weights";
	setAttr ".weightList[520].weights[1]" 0.60088877581313827;
	setAttr ".weightList[520].weights[4]" 0.39911122418686179;
	setAttr -size 2 ".weightList[521].weights";
	setAttr ".weightList[521].weights[1]" 0.75631694700805585;
	setAttr ".weightList[521].weights[4]" 0.24368305299194418;
	setAttr -size 2 ".weightList[522].weights";
	setAttr ".weightList[522].weights[1]" 0.87394026483693532;
	setAttr ".weightList[522].weights[4]" 0.12605973516306468;
	setAttr -size 2 ".weightList[523].weights";
	setAttr ".weightList[523].weights[1]" 0.88681571157856598;
	setAttr ".weightList[523].weights[4]" 0.11318428842143402;
	setAttr -size 2 ".weightList[524].weights";
	setAttr ".weightList[524].weights[1]" 0.75738572750230992;
	setAttr ".weightList[524].weights[4]" 0.24261427249769005;
	setAttr -size 2 ".weightList[525].weights";
	setAttr ".weightList[525].weights[1]" 0.59923230705316854;
	setAttr ".weightList[525].weights[4]" 0.40076769294683151;
	setAttr -size 2 ".weightList[526].weights";
	setAttr ".weightList[526].weights[1]" 0.56264497293532345;
	setAttr ".weightList[526].weights[4]" 0.43735502706467655;
	setAttr -size 2 ".weightList[527].weights";
	setAttr ".weightList[527].weights[1]" 0.5851071378822299;
	setAttr ".weightList[527].weights[4]" 0.4148928621177701;
	setAttr -size 2 ".weightList[528].weights";
	setAttr ".weightList[528].weights[1]" 0.56206566735407626;
	setAttr ".weightList[528].weights[4]" 0.43793433264592369;
	setAttr -size 2 ".weightList[529].weights";
	setAttr ".weightList[529].weights[1]" 0.53916398897179674;
	setAttr ".weightList[529].weights[4]" 0.46083601102820321;
	setAttr -size 2 ".weightList[530].weights";
	setAttr ".weightList[530].weights[1]" 0.54617658610098119;
	setAttr ".weightList[530].weights[4]" 0.45382341389901892;
	setAttr -size 2 ".weightList[531].weights";
	setAttr ".weightList[531].weights[1]" 0.58303551631317629;
	setAttr ".weightList[531].weights[4]" 0.41696448368682371;
	setAttr -size 2 ".weightList[532].weights";
	setAttr ".weightList[532].weights[1]" 0.64401822313857315;
	setAttr ".weightList[532].weights[4]" 0.35598177686142685;
	setAttr -size 2 ".weightList[533].weights";
	setAttr ".weightList[533].weights[1]" 0.70612582668113766;
	setAttr ".weightList[533].weights[4]" 0.29387417331886234;
	setAttr -size 2 ".weightList[534].weights";
	setAttr ".weightList[534].weights[1]" 0.71298595152686195;
	setAttr ".weightList[534].weights[4]" 0.28701404847313805;
	setAttr -size 2 ".weightList[535].weights";
	setAttr ".weightList[535].weights[1]" 0.72171513272851084;
	setAttr ".weightList[535].weights[4]" 0.27828486727148916;
	setAttr -size 2 ".weightList[536].weights";
	setAttr ".weightList[536].weights[1]" 0.72784175472833446;
	setAttr ".weightList[536].weights[4]" 0.2721582452716656;
	setAttr -size 2 ".weightList[537].weights";
	setAttr ".weightList[537].weights[1]" 0.87967066072140543;
	setAttr ".weightList[537].weights[4]" 0.12032933927859459;
	setAttr -size 2 ".weightList[538].weights[0:1]"  0.07027960720795226 
		0.92972039279204777;
	setAttr -size 2 ".weightList[539].weights[0:1]"  0.065713112828175352 
		0.93428688717182462;
	setAttr -size 2 ".weightList[540].weights";
	setAttr ".weightList[540].weights[1]" 0.84689924279129858;
	setAttr ".weightList[540].weights[4]" 0.15310075720870145;
	setAttr -size 2 ".weightList[541].weights";
	setAttr ".weightList[541].weights[1]" 0.71775006559819343;
	setAttr ".weightList[541].weights[4]" 0.28224993440180657;
	setAttr -size 2 ".weightList[542].weights";
	setAttr ".weightList[542].weights[1]" 0.67577600866610443;
	setAttr ".weightList[542].weights[4]" 0.32422399133389562;
	setAttr -size 2 ".weightList[543].weights";
	setAttr ".weightList[543].weights[1]" 0.76470386451686045;
	setAttr ".weightList[543].weights[4]" 0.23529613548313952;
	setAttr -size 2 ".weightList[544].weights";
	setAttr ".weightList[544].weights[1]" 0.70069566144212181;
	setAttr ".weightList[544].weights[4]" 0.29930433855787825;
	setAttr -size 2 ".weightList[545].weights";
	setAttr ".weightList[545].weights[1]" 0.62784923804567871;
	setAttr ".weightList[545].weights[4]" 0.37215076195432123;
	setAttr -size 2 ".weightList[546].weights";
	setAttr ".weightList[546].weights[1]" 0.59853855549241031;
	setAttr ".weightList[546].weights[4]" 0.40146144450758975;
	setAttr ".weightList[547].weights[1]"  1;
	setAttr ".weightList[548].weights[1]"  1;
	setAttr ".weightList[549].weights[1]"  1;
	setAttr ".weightList[550].weights[1]"  1;
	setAttr ".weightList[551].weights[1]"  1;
	setAttr ".weightList[552].weights[1]"  1;
	setAttr ".weightList[553].weights[1]"  1;
	setAttr ".weightList[554].weights[1]"  1;
	setAttr ".weightList[555].weights[1]"  1;
	setAttr ".weightList[556].weights[1]"  1;
	setAttr ".weightList[557].weights[1]"  1;
	setAttr ".weightList[558].weights[1]"  1;
	setAttr ".weightList[559].weights[1]"  1;
	setAttr ".weightList[560].weights[1]"  1;
	setAttr -size 2 ".weightList[561].weights[0:1]"  0.10651355843421254 
		0.89348644156578749;
	setAttr ".weightList[562].weights[1]"  1;
	setAttr ".weightList[563].weights[1]"  1;
	setAttr ".weightList[564].weights[1]"  1;
	setAttr ".weightList[565].weights[1]"  1;
	setAttr ".weightList[566].weights[1]"  1;
	setAttr ".weightList[567].weights[1]"  1;
	setAttr -size 2 ".weightList[568].weights[0:1]"  0.16296116451895679 
		0.83703883548104319;
	setAttr ".weightList[569].weights[1]"  1;
	setAttr ".weightList[570].weights[1]"  1;
	setAttr ".weightList[571].weights[1]"  1;
	setAttr -size 2 ".weightList[572].weights[0:1]"  0.26057094453574797 
		0.73942905546425197;
	setAttr -size 2 ".weightList[573].weights[0:1]"  0.30125346225982741 
		0.69874653774017259;
	setAttr ".weightList[574].weights[1]"  1;
	setAttr ".weightList[575].weights[1]"  1;
	setAttr -size 2 ".weightList[576].weights[0:1]"  0.3243895982291341 
		0.67561040177086595;
	setAttr -size 2 ".weightList[577].weights[0:1]"  0.3523298903391911 
		0.64767010966080885;
	setAttr ".weightList[578].weights[1]"  1;
	setAttr ".weightList[579].weights[1]"  1;
	setAttr ".weightList[580].weights[1]"  1;
	setAttr ".weightList[581].weights[1]"  1;
	setAttr ".weightList[582].weights[1]"  1;
	setAttr ".weightList[583].weights[1]"  1;
	setAttr ".weightList[584].weights[1]"  1;
	setAttr ".weightList[585].weights[1]"  1;
	setAttr ".weightList[586].weights[1]"  1;
	setAttr ".weightList[587].weights[1]"  1;
	setAttr ".weightList[588].weights[1]"  1;
	setAttr ".weightList[589].weights[1]"  1;
	setAttr ".weightList[590].weights[1]"  1;
	setAttr ".weightList[591].weights[1]"  1;
	setAttr ".weightList[592].weights[1]"  1;
	setAttr ".weightList[593].weights[1]"  1;
	setAttr ".weightList[594].weights[1]"  1;
	setAttr ".weightList[595].weights[1]"  1;
	setAttr ".weightList[596].weights[1]"  1;
	setAttr ".weightList[597].weights[1]"  1;
	setAttr ".weightList[598].weights[1]"  1;
	setAttr ".weightList[599].weights[1]"  1;
	setAttr ".weightList[600].weights[1]"  1;
	setAttr ".weightList[601].weights[1]"  1;
	setAttr ".weightList[602].weights[1]"  1;
	setAttr ".weightList[603].weights[1]"  1;
	setAttr ".weightList[604].weights[1]"  1;
	setAttr ".weightList[605].weights[1]"  1;
	setAttr ".weightList[606].weights[1]"  1;
	setAttr -size 2 ".weightList[607].weights[0:1]"  0.072662970671526855 
		0.92733702932847317;
	setAttr -size 2 ".weightList[608].weights[0:1]"  0.063283986266169281 
		0.93671601373383062;
	setAttr ".weightList[609].weights[1]"  1;
	setAttr ".weightList[610].weights[1]"  1;
	setAttr ".weightList[611].weights[1]"  1;
	setAttr ".weightList[612].weights[1]"  1;
	setAttr ".weightList[613].weights[1]"  1;
	setAttr ".weightList[614].weights[1]"  1;
	setAttr ".weightList[615].weights[1]"  1;
	setAttr ".weightList[616].weights[1]"  1;
	setAttr -size 2 ".weightList[617].weights[0:1]"  0.069698057644701272 
		0.93030194235529873;
	setAttr -size 2 ".weightList[618].weights[0:1]"  0.051324653265478033 
		0.94867534673452192;
	setAttr -size 2 ".weightList[619].weights[0:1]"  0.047794529673077173 
		0.95220547032692282;
	setAttr -size 2 ".weightList[620].weights[0:1]"  0.038679619721624731 
		0.9613203802783753;
	setAttr ".weightList[621].weights[0]"  1;
	setAttr ".weightList[622].weights[0]"  1;
	setAttr -size 3 ".weightList[623].weights";
	setAttr ".weightList[623].weights[0]" 0.100390430686305;
	setAttr ".weightList[623].weights[1]" 0.60571249464556431;
	setAttr ".weightList[623].weights[4]" 0.29389707466813086;
	setAttr -size 2 ".weightList[624].weights[0:1]"  0.1790746137880645 
		0.82092538621193545;
	setAttr -size 3 ".weightList[625].weights";
	setAttr ".weightList[625].weights[0]" 0.095556796939063243;
	setAttr ".weightList[625].weights[1]" 0.62569819240456737;
	setAttr ".weightList[625].weights[4]" 0.27874501065636942;
	setAttr -size 2 ".weightList[626].weights[0:1]"  0.18465050268730313 
		0.8153494973126969;
	setAttr ".weightList[627].weights[0]"  1;
	setAttr ".weightList[628].weights[0]"  1;
	setAttr -size 2 ".weightList[629].weights[0:1]"  0.51761302599212455 
		0.4823869740078755;
	setAttr -size 2 ".weightList[630].weights[0:1]"  0.47798908259355044 
		0.52201091740644956;
	setAttr ".weightList[631].weights[0]"  1;
	setAttr ".weightList[632].weights[0]"  1;
	setAttr -size 2 ".weightList[633].weights[0:1]"  0.315110891938991 
		0.684889108061009;
	setAttr -size 2 ".weightList[634].weights[0:1]"  0.27407381099110673 
		0.72592618900889327;
	setAttr ".weightList[635].weights[0]"  1;
	setAttr ".weightList[636].weights[0]"  1;
	setAttr -size 3 ".weightList[637].weights";
	setAttr ".weightList[637].weights[0]" 0.21668552852767076;
	setAttr ".weightList[637].weights[1]" 0.59456977564750646;
	setAttr ".weightList[637].weights[4]" 0.18874469582482267;
	setAttr -size 3 ".weightList[638].weights";
	setAttr ".weightList[638].weights[0]" 0.19618717181124135;
	setAttr ".weightList[638].weights[1]" 0.62911424776439218;
	setAttr ".weightList[638].weights[4]" 0.17469858042436648;
	setAttr ".weightList[639].weights[0]"  1;
	setAttr ".weightList[640].weights[0]"  1;
	setAttr -size 2 ".weightList[641].weights[0:1]"  0.29597733481925592 
		0.70402266518074408;
	setAttr -size 2 ".weightList[642].weights[0:1]"  0.29405993444454426 
		0.70594006555545574;
	setAttr ".weightList[643].weights[0]"  1;
	setAttr ".weightList[644].weights[0]"  1;
	setAttr -size 2 ".weightList[645].weights[0:1]"  0.32955354037008266 
		0.67044645962991734;
	setAttr -size 2 ".weightList[646].weights[0:1]"  0.30845935965962951 
		0.69154064034037044;
	setAttr ".weightList[647].weights[0]"  1;
	setAttr ".weightList[648].weights[0]"  1;
	setAttr -size 2 ".weightList[649].weights";
	setAttr ".weightList[649].weights[1]" 0.64639626068478917;
	setAttr ".weightList[649].weights[4]" 0.35360373931521083;
	setAttr ".weightList[650].weights[14]"  1;
	setAttr ".weightList[651].weights[0]"  1;
	setAttr ".weightList[652].weights[0]"  1;
	setAttr ".weightList[653].weights[0]"  1;
	setAttr ".weightList[654].weights[17]"  1;
	setAttr ".weightList[655].weights[1]"  1;
	setAttr ".weightList[656].weights[1]"  1;
	setAttr -size 2 ".weightList[657].weights[0:1]"  0.12405897266747673 
		0.87594102733252333;
	setAttr -size 2 ".weightList[658].weights[0:1]"  0.204897500784675 
		0.79510249921532505;
	setAttr -size 2 ".weightList[659].weights[0:1]"  0.1229470753443765 
		0.87705292465562357;
	setAttr -size 2 ".weightList[660].weights";
	setAttr ".weightList[660].weights[1]" 0.821784826795806;
	setAttr ".weightList[660].weights[4]" 0.17821517320419406;
	setAttr -size 2 ".weightList[661].weights";
	setAttr ".weightList[661].weights[1]" 0.62432870148642261;
	setAttr ".weightList[661].weights[4]" 0.37567129851357733;
	setAttr ".weightList[662].weights[14]"  1;
	setAttr -size 2 ".weightList[663].weights";
	setAttr ".weightList[663].weights[0]" 0.99781837430782616;
	setAttr ".weightList[663].weights[13]" 0.0021816256921738386;
	setAttr ".weightList[664].weights[0]"  1;
	setAttr ".weightList[665].weights[0]"  1;
	setAttr ".weightList[666].weights[3]"  1;
	setAttr ".weightList[667].weights[1]"  1;
	setAttr ".weightList[668].weights[1]"  1;
	setAttr -size 2 ".weightList[669].weights[0:1]"  0.14319552182746315 
		0.8568044781725368;
	setAttr -size 2 ".weightList[670].weights[0:1]"  0.22663270533543861 
		0.77336729466456144;
	setAttr -size 2 ".weightList[671].weights[0:1]"  0.12476834815239961 
		0.87523165184760043;
	setAttr -size 2 ".weightList[672].weights";
	setAttr ".weightList[672].weights[1]" 0.77145443937961811;
	setAttr ".weightList[672].weights[4]" 0.22854556062038187;
	setAttr -size 2 ".weightList[673].weights[0:1]"  0.3916081477107658 
		0.6083918522892342;
	setAttr -size 2 ".weightList[674].weights[0:1]"  0.51042962389492608 
		0.48957037610507398;
	setAttr -size 2 ".weightList[675].weights[0:1]"  0.59190420361850016 
		0.40809579638149984;
	setAttr -size 2 ".weightList[676].weights[0:1]"  0.76816370958675073 
		0.23183629041324927;
	setAttr -size 3 ".weightList[677].weights";
	setAttr ".weightList[677].weights[0]" 0.50351741286196117;
	setAttr ".weightList[677].weights[1]" 0.38309164174142529;
	setAttr ".weightList[677].weights[4]" 0.11339094539661351;
	setAttr -size 3 ".weightList[678].weights";
	setAttr ".weightList[678].weights[0]" 0.34932819684261507;
	setAttr ".weightList[678].weights[1]" 0.42150999707971215;
	setAttr ".weightList[678].weights[4]" 0.22916180607767281;
	setAttr -size 2 ".weightList[679].weights";
	setAttr ".weightList[679].weights[1]" 0.57293301568540789;
	setAttr ".weightList[679].weights[4]" 0.42706698431459211;
	setAttr -size 2 ".weightList[680].weights";
	setAttr ".weightList[680].weights[1]" 0.54251195678087427;
	setAttr ".weightList[680].weights[4]" 0.45748804321912573;
	setAttr -size 2 ".weightList[681].weights";
	setAttr ".weightList[681].weights[1]" 0.5337627002147286;
	setAttr ".weightList[681].weights[4]" 0.46623729978527145;
	setAttr -size 2 ".weightList[682].weights";
	setAttr ".weightList[682].weights[1]" 0.58251859993375021;
	setAttr ".weightList[682].weights[4]" 0.41748140006624979;
	setAttr -size 3 ".weightList[683].weights";
	setAttr ".weightList[683].weights[0]" 0.33090768743418775;
	setAttr ".weightList[683].weights[1]" 0.44229414764580305;
	setAttr ".weightList[683].weights[4]" 0.22679816492000929;
	setAttr -size 3 ".weightList[684].weights";
	setAttr ".weightList[684].weights[0]" 0.47090743939783425;
	setAttr ".weightList[684].weights[1]" 0.41471403235766258;
	setAttr ".weightList[684].weights[4]" 0.11437852824450311;
	setAttr -size 3 ".weightList[685].weights";
	setAttr ".weightList[685].weights[0]" 0.72297917205183659;
	setAttr ".weightList[685].weights[1]" 0.23467474164858448;
	setAttr ".weightList[685].weights[4]" 0.042346086299579054;
	setAttr -size 2 ".weightList[686].weights[0:1]"  0.57681343271855634 
		0.42318656728144366;
	setAttr -size 2 ".weightList[687].weights[0:1]"  0.5104660213417036 
		0.4895339786582964;
	setAttr -size 2 ".weightList[688].weights[0:1]"  0.39092592248695834 
		0.60907407751304166;
	setAttr ".weightList[689].weights[1]"  1;
	setAttr ".weightList[690].weights[1]"  1;
	setAttr -size 2 ".weightList[691].weights[0:1]"  0.68351684225356335 
		0.31648315774643659;
	setAttr -size 2 ".weightList[692].weights[0:1]"  0.737746051684112 
		0.262253948315888;
	setAttr -size 2 ".weightList[693].weights[0:1]"  0.82996282869684956 
		0.17003717130315041;
	setAttr -size 2 ".weightList[694].weights[0:1]"  0.9283621020152012 
		0.071637897984798776;
	setAttr -size 2 ".weightList[695].weights[0:1]"  0.8027150720657944 
		0.1972849279342056;
	setAttr -size 3 ".weightList[696].weights";
	setAttr ".weightList[696].weights[0]" 0.53681986520527436;
	setAttr ".weightList[696].weights[1]" 0.26094694562152049;
	setAttr ".weightList[696].weights[4]" 0.20223318917320499;
	setAttr -size 2 ".weightList[697].weights[0:1]"  0.61624940832708619 
		0.38375059167291387;
	setAttr ".weightList[698].weights[3]"  1;
	setAttr ".weightList[699].weights[3]"  1;
	setAttr -size 2 ".weightList[700].weights[0:1]"  0.61768341396071702 
		0.38231658603928298;
	setAttr -size 3 ".weightList[701].weights";
	setAttr ".weightList[701].weights[0]" 0.5210156225790209;
	setAttr ".weightList[701].weights[1]" 0.27279402868363423;
	setAttr ".weightList[701].weights[4]" 0.20619034873734482;
	setAttr -size 2 ".weightList[702].weights[0:1]"  0.7921193500046726 
		0.2078806499953274;
	setAttr -size 2 ".weightList[703].weights[0:1]"  0.93254934280234347 
		0.067450657197656486;
	setAttr -size 2 ".weightList[704].weights[0:1]"  0.83131269699560117 
		0.1686873030043988;
	setAttr -size 2 ".weightList[705].weights[0:1]"  0.73537924816222455 
		0.26462075183777539;
	setAttr -size 2 ".weightList[706].weights[0:1]"  0.67104923123759042 
		0.32895076876240964;
	setAttr ".weightList[707].weights[3]"  1;
	setAttr ".weightList[708].weights[0]"  1;
	setAttr ".weightList[709].weights[0]"  1;
	setAttr ".weightList[710].weights[0]"  1;
	setAttr ".weightList[711].weights[0]"  1;
	setAttr ".weightList[712].weights[0]"  1;
	setAttr ".weightList[713].weights[0]"  1;
	setAttr ".weightList[714].weights[0]"  1;
	setAttr ".weightList[715].weights[3]"  1;
	setAttr ".weightList[716].weights[3]"  1;
	setAttr ".weightList[717].weights[3]"  1;
	setAttr ".weightList[718].weights[0]"  1;
	setAttr ".weightList[719].weights[0]"  1;
	setAttr ".weightList[720].weights[0]"  1;
	setAttr -size 2 ".weightList[721].weights";
	setAttr ".weightList[721].weights[0]" 0.9989425864942294;
	setAttr ".weightList[721].weights[13]" 0.0010574135057705514;
	setAttr ".weightList[722].weights[0]"  1;
	setAttr ".weightList[723].weights[0]"  1;
	setAttr ".weightList[724].weights[0]"  1;
	setAttr ".weightList[725].weights[0]"  1;
	setAttr ".weightList[726].weights[3]"  1;
	setAttr -size 2 ".weightList[727].weights[13:14]"  0.025205115755268858 
		0.97479488424473115;
	setAttr -size 2 ".weightList[728].weights[13:14]"  0.013926492968868174 
		0.98607350703113184;
	setAttr -size 2 ".weightList[729].weights[13:14]"  0.055034284132793265 
		0.94496571586720679;
	setAttr -size 2 ".weightList[730].weights[13:14]"  0.040215490183624879 
		0.9597845098163752;
	setAttr -size 2 ".weightList[731].weights[13:14]"  0.042088360212688004 
		0.95791163978731209;
	setAttr -size 2 ".weightList[732].weights[13:14]"  0.078751609818853166 
		0.9212483901811469;
	setAttr -size 2 ".weightList[733].weights[13:14]"  0.035212690606788354 
		0.96478730939321167;
	setAttr -size 2 ".weightList[734].weights[13:14]"  0.050563384868434778 
		0.94943661513156519;
	setAttr -size 2 ".weightList[735].weights[13:14]"  0.011928162583998073 
		0.98807183741600191;
	setAttr -size 2 ".weightList[736].weights[13:14]"  0.018227121594385626 
		0.98177287840561434;
	setAttr -size 2 ".weightList[737].weights[13:14]"  0.052910283039584859 
		0.94708971696041511;
	setAttr -size 2 ".weightList[738].weights[13:14]"  0.082007951408947719 
		0.91799204859105232;
	setAttr -size 2 ".weightList[739].weights[16:17]"  0.012480937201286372 
		0.98751906279871371;
	setAttr -size 2 ".weightList[740].weights[16:17]"  0.061823608413051845 
		0.93817639158694821;
	setAttr -size 2 ".weightList[741].weights[16:17]"  0.015993635681471486 
		0.9840063643185285;
	setAttr -size 2 ".weightList[742].weights[16:17]"  0.036505192723095103 
		0.96349480727690484;
	setAttr -size 2 ".weightList[743].weights[16:17]"  0.04448361821306291 
		0.9555163817869371;
	setAttr -size 2 ".weightList[744].weights[16:17]"  0.086127273203127894 
		0.91387272679687215;
	setAttr -size 2 ".weightList[745].weights[16:17]"  0.033374030679704361 
		0.96662596932029565;
	setAttr -size 2 ".weightList[746].weights[16:17]"  0.01079474971376115 
		0.98920525028623885;
	setAttr -size 2 ".weightList[747].weights[16:17]"  0.067460237844064505 
		0.93253976215593548;
	setAttr -size 2 ".weightList[748].weights[16:17]"  0.049325926239127384 
		0.95067407376087265;
	setAttr -size 2 ".weightList[749].weights[16:17]"  0.024079851075022696 
		0.97592014892497725;
	setAttr -size 2 ".weightList[750].weights[16:17]"  0.03809989389653913 
		0.96190010610346088;
	setAttr -size 2 ".weightList[751].weights[13:14]"  0.2746411269517034 
		0.7253588730482966;
	setAttr -size 2 ".weightList[752].weights[13:14]"  0.1537486078305082 
		0.84625139216949175;
	setAttr -size 2 ".weightList[753].weights[13:14]"  0.21463655244283333 
		0.78536344755716669;
	setAttr -size 2 ".weightList[754].weights[13:14]"  0.29106011217372274 
		0.70893988782627726;
	setAttr -size 2 ".weightList[755].weights[13:14]"  0.20800393252978724 
		0.79199606747021278;
	setAttr -size 2 ".weightList[756].weights[13:14]"  0.16649664529071653 
		0.83350335470928349;
	setAttr -size 2 ".weightList[757].weights[13:14]"  0.095993307372347847 
		0.90400669262765221;
	setAttr -size 2 ".weightList[758].weights[13:14]"  0.14890253446338803 
		0.85109746553661203;
	setAttr -size 2 ".weightList[759].weights[13:14]"  0.18406574298237591 
		0.81593425701762412;
	setAttr -size 2 ".weightList[760].weights[13:14]"  0.21389425485363292 
		0.78610574514636711;
	setAttr -size 2 ".weightList[761].weights[13:14]"  0.54110773249973665 
		0.45889226750026335;
	setAttr -size 2 ".weightList[762].weights[13:14]"  0.39936458080222947 
		0.60063541919777053;
	setAttr -size 2 ".weightList[763].weights[13:14]"  0.48263330160544332 
		0.51736669839455673;
	setAttr -size 2 ".weightList[764].weights[13:14]"  0.56349652674659545 
		0.43650347325340449;
	setAttr -size 2 ".weightList[765].weights[13:14]"  0.48673049442639515 
		0.51326950557360485;
	setAttr -size 2 ".weightList[766].weights[13:14]"  0.45120396078956898 
		0.54879603921043107;
	setAttr -size 2 ".weightList[767].weights[13:14]"  0.33883516416766313 
		0.66116483583233687;
	setAttr -size 2 ".weightList[768].weights[13:14]"  0.43306537682530621 
		0.56693462317469379;
	setAttr -size 2 ".weightList[769].weights[13:14]"  0.46910806818558337 
		0.53089193181441674;
	setAttr -size 2 ".weightList[770].weights[13:14]"  0.48426843946669279 
		0.51573156053330727;
	setAttr ".weightList[771].weights[14]"  1;
	setAttr -size 2 ".weightList[772].weights[13:14]"  0.65730278676085385 
		0.34269721323914615;
	setAttr -size 2 ".weightList[773].weights[13:14]"  0.71686914819106018 
		0.28313085180893982;
	setAttr -size 2 ".weightList[774].weights[13:14]"  0.77082339303876579 
		0.22917660696123424;
	setAttr -size 2 ".weightList[775].weights[13:14]"  0.73514226989442633 
		0.26485773010557367;
	setAttr -size 2 ".weightList[776].weights[13:14]"  0.73965787674362393 
		0.26034212325637612;
	setAttr -size 2 ".weightList[777].weights[13:14]"  0.66723702235531768 
		0.33276297764468227;
	setAttr ".weightList[778].weights[14]"  1;
	setAttr ".weightList[779].weights[14]"  1;
	setAttr ".weightList[780].weights[14]"  1;
	setAttr -size 2 ".weightList[781].weights[16:17]"  0.2257145678220954 
		0.77428543217790469;
	setAttr -size 2 ".weightList[782].weights[16:17]"  0.17634596665548996 
		0.82365403334451004;
	setAttr -size 2 ".weightList[783].weights[16:17]"  0.096932693293208375 
		0.90306730670679158;
	setAttr -size 2 ".weightList[784].weights[16:17]"  0.1511012074635989 
		0.8488987925364011;
	setAttr -size 2 ".weightList[785].weights[16:17]"  0.18237589384324479 
		0.81762410615675529;
	setAttr -size 2 ".weightList[786].weights[16:17]"  0.20460224059441662 
		0.79539775940558344;
	setAttr -size 2 ".weightList[787].weights[16:17]"  0.25836621413842742 
		0.74163378586157258;
	setAttr -size 2 ".weightList[788].weights[16:17]"  0.13520126668814014 
		0.86479873331185986;
	setAttr -size 2 ".weightList[789].weights[16:17]"  0.19880066431370316 
		0.80119933568629687;
	setAttr -size 2 ".weightList[790].weights[16:17]"  0.29214571420390101 
		0.7078542857960991;
	setAttr -size 2 ".weightList[791].weights[16:17]"  0.48995171370400026 
		0.51004828629599974;
	setAttr -size 2 ".weightList[792].weights[16:17]"  0.45830642140854549 
		0.54169357859145451;
	setAttr -size 2 ".weightList[793].weights[16:17]"  0.34579271408526696 
		0.65420728591473298;
	setAttr -size 2 ".weightList[794].weights[16:17]"  0.44034942585559145 
		0.55965057414440866;
	setAttr -size 2 ".weightList[795].weights[16:17]"  0.47182908819194291 
		0.5281709118080572;
	setAttr -size 2 ".weightList[796].weights[16:17]"  0.48401087247341368 
		0.51598912752658632;
	setAttr -size 2 ".weightList[797].weights[16:17]"  0.53536519687520345 
		0.46463480312479649;
	setAttr -size 2 ".weightList[798].weights[16:17]"  0.37803099380113031 
		0.62196900619886963;
	setAttr -size 2 ".weightList[799].weights[16:17]"  0.46320022637761321 
		0.53679977362238684;
	setAttr -size 2 ".weightList[800].weights[16:17]"  0.55280482004814457 
		0.44719517995185537;
	setAttr -size 2 ".weightList[801].weights[16:17]"  0.72645383315913603 
		0.27354616684086397;
	setAttr -size 2 ".weightList[802].weights[16:17]"  0.73650702932614165 
		0.26349297067385841;
	setAttr -size 2 ".weightList[803].weights[16:17]"  0.67262466588765801 
		0.3273753341123421;
	setAttr -size 2 ".weightList[804].weights[16:17]"  0.74969897207034242 
		0.25030102792965758;
	setAttr -size 2 ".weightList[805].weights[16:17]"  0.75353420563085538 
		0.24646579436914465;
	setAttr -size 2 ".weightList[806].weights[16:17]"  0.73785402777558384 
		0.2621459722244161;
	setAttr -size 2 ".weightList[807].weights[16:17]"  0.75558240890130612 
		0.24441759109869385;
	setAttr -size 2 ".weightList[808].weights[16:17]"  0.64139719212744917 
		0.35860280787255078;
	setAttr -size 2 ".weightList[809].weights[16:17]"  0.69582006762225235 
		0.30417993237774765;
	setAttr -size 2 ".weightList[810].weights[16:17]"  0.75473216292428136 
		0.24526783707571864;
	setAttr -size 2 ".weightList[811].weights[16:17]"  0.56123915976322036 
		0.43876084023677958;
	setAttr -size 2 ".weightList[812].weights[16:17]"  0.56953845636714817 
		0.43046154363285177;
	setAttr -size 2 ".weightList[813].weights[16:17]"  0.61546398990946383 
		0.38453601009053612;
	setAttr -size 2 ".weightList[814].weights[16:17]"  0.64459282276037155 
		0.35540717723962845;
	setAttr -size 2 ".weightList[815].weights[16:17]"  0.74151571800258909 
		0.25848428199741086;
	setAttr -size 2 ".weightList[816].weights[16:17]"  0.78853203216730838 
		0.21146796783269162;
	setAttr -size 2 ".weightList[817].weights[16:17]"  0.87605470505455951 
		0.12394529494544046;
	setAttr -size 2 ".weightList[818].weights[16:17]"  0.91421126018824916 
		0.085788739811750794;
	setAttr -size 2 ".weightList[819].weights[16:17]"  0.93040692652329016 
		0.069593073476709844;
	setAttr -size 2 ".weightList[820].weights[16:17]"  0.94154099625498033 
		0.058459003745019673;
	setAttr -size 2 ".weightList[821].weights[16:17]"  0.95952513506496995 
		0.040474864935030087;
	setAttr -size 2 ".weightList[822].weights[16:17]"  0.9590644407759924 
		0.04093555922400767;
	setAttr -size 2 ".weightList[823].weights[16:17]"  0.95390753933990824 
		0.046092460660091657;
	setAttr -size 2 ".weightList[824].weights[16:17]"  0.95810946959133425 
		0.041890530408665694;
	setAttr -size 2 ".weightList[825].weights[16:17]"  0.935351639838916 
		0.064648360161084037;
	setAttr -size 2 ".weightList[826].weights[16:17]"  0.95948483575183618 
		0.040515164248163871;
	setAttr -size 2 ".weightList[827].weights[16:17]"  0.80456127256307852 
		0.19543872743692151;
	setAttr -size 2 ".weightList[828].weights[16:17]"  0.8593971284787445 
		0.14060287152125553;
	setAttr -size 2 ".weightList[829].weights[16:17]"  0.63515414265333214 
		0.3648458573466678;
	setAttr -size 2 ".weightList[830].weights[16:17]"  0.68512171907046326 
		0.31487828092953674;
	setAttr -size 2 ".weightList[831].weights[16:17]"  0.54919108760319801 
		0.45080891239680199;
	setAttr -size 2 ".weightList[832].weights[16:17]"  0.5622092370107431 
		0.43779076298925684;
	setAttr -size 2 ".weightList[833].weights[16:17]"  0.56513679217005974 
		0.43486320782994031;
	setAttr -size 2 ".weightList[834].weights[16:17]"  0.59422351797660211 
		0.40577648202339789;
	setAttr -size 2 ".weightList[835].weights[16:17]"  0.57431484499000263 
		0.42568515500999732;
	setAttr -size 2 ".weightList[836].weights[16:17]"  0.70507017241053616 
		0.29492982758946384;
	setAttr -size 2 ".weightList[837].weights[16:17]"  0.73755080743979884 
		0.26244919256020111;
	setAttr -size 2 ".weightList[838].weights[16:17]"  0.67424869721073377 
		0.32575130278926623;
	setAttr -size 2 ".weightList[839].weights[16:17]"  0.86649453514443531 
		0.13350546485556467;
	setAttr -size 2 ".weightList[840].weights[16:17]"  0.8854090156153408 
		0.11459098438465921;
	setAttr -size 2 ".weightList[841].weights[16:17]"  0.82739097488256952 
		0.17260902511743048;
	setAttr -size 2 ".weightList[842].weights[16:17]"  0.55458787924265085 
		0.44541212075734915;
	setAttr -size 2 ".weightList[843].weights[16:17]"  0.57669112445931181 
		0.42330887554068813;
	setAttr -size 2 ".weightList[844].weights[16:17]"  0.57302831186396896 
		0.42697168813603098;
	setAttr -size 2 ".weightList[845].weights[16:17]"  0.67807287843048492 
		0.32192712156951514;
	setAttr -size 2 ".weightList[846].weights[16:17]"  0.72183313606526844 
		0.27816686393473161;
	setAttr -size 2 ".weightList[847].weights[16:17]"  0.6640822085098721 
		0.33591779149012796;
	setAttr -size 2 ".weightList[848].weights[16:17]"  0.84361245235888704 
		0.15638754764111298;
	setAttr -size 2 ".weightList[849].weights[16:17]"  0.87334677667601701 
		0.12665322332398307;
	setAttr -size 2 ".weightList[850].weights[16:17]"  0.80955432456179255 
		0.19044567543820742;
	setAttr -size 2 ".weightList[851].weights";
	setAttr ".weightList[851].weights[1]" 0.61507906220040298;
	setAttr ".weightList[851].weights[4]" 0.38492093779959702;
	setAttr -size 3 ".weightList[852].weights";
	setAttr ".weightList[852].weights[0]" 0.23493057459895747;
	setAttr ".weightList[852].weights[1]" 0.50505426923174745;
	setAttr ".weightList[852].weights[4]" 0.26001515616929499;
	setAttr -size 2 ".weightList[853].weights[0:1]"  0.46169574197510882 
		0.53830425802489112;
	setAttr -size 2 ".weightList[854].weights[0:1]"  0.36400832310209386 
		0.63599167689790626;
	setAttr ".weightList[855].weights[1]"  1;
	setAttr -size 2 ".weightList[856].weights";
	setAttr ".weightList[856].weights[1]" 0.57950531308856601;
	setAttr ".weightList[856].weights[4]" 0.42049468691143399;
	setAttr -size 3 ".weightList[857].weights";
	setAttr ".weightList[857].weights[0]" 0.43927892739783941;
	setAttr ".weightList[857].weights[1]" 0.36883500726334134;
	setAttr ".weightList[857].weights[4]" 0.19188606533881924;
	setAttr -size 2 ".weightList[858].weights[0:1]"  0.65472490930671079 
		0.34527509069328916;
	setAttr -size 2 ".weightList[859].weights[0:1]"  0.54276612484048392 
		0.45723387515951608;
	setAttr -size 2 ".weightList[860].weights[0:1]"  0.4607369356967162 
		0.53926306430328386;
	setAttr -size 2 ".weightList[861].weights[0:1]"  0.49370964888596536 
		0.50629035111403464;
	setAttr -size 3 ".weightList[862].weights";
	setAttr ".weightList[862].weights[0]" 0.48495122865468865;
	setAttr ".weightList[862].weights[1]" 0.28580283849626631;
	setAttr ".weightList[862].weights[4]" 0.22924593284904499;
	setAttr -size 2 ".weightList[863].weights[0:1]"  0.75763276295045501 
		0.24236723704954499;
	setAttr -size 2 ".weightList[864].weights[0:1]"  0.7092684739807279 
		0.29073152601927216;
	setAttr -size 2 ".weightList[865].weights[0:1]"  0.60069380766186997 
		0.39930619233813014;
	setAttr ".weightList[866].weights[0]"  1;
	setAttr ".weightList[867].weights[0]"  1;
	setAttr ".weightList[868].weights[0]"  1;
	setAttr ".weightList[869].weights[0]"  1;
	setAttr ".weightList[870].weights[0]"  1;
	setAttr ".weightList[871].weights[0]"  1;
	setAttr ".weightList[872].weights[3]"  1;
	setAttr ".weightList[873].weights[3]"  1;
	setAttr ".weightList[874].weights[3]"  1;
	setAttr ".weightList[875].weights[0]"  1;
	setAttr ".weightList[876].weights[0]"  1;
	setAttr ".weightList[877].weights[0]"  1;
	setAttr ".weightList[878].weights[3]"  1;
	setAttr ".weightList[879].weights[3]"  1;
	setAttr ".weightList[880].weights[3]"  1;
	setAttr ".weightList[881].weights[3]"  1;
	setAttr ".weightList[882].weights[3]"  1;
	setAttr ".weightList[883].weights[0]"  1;
	setAttr ".weightList[884].weights[3]"  1;
	setAttr ".weightList[885].weights[3]"  1;
	setAttr ".weightList[886].weights[3]"  1;
	setAttr ".weightList[887].weights[3]"  1;
	setAttr ".weightList[888].weights[3]"  1;
	setAttr ".weightList[889].weights[0]"  1;
	setAttr ".weightList[890].weights[3]"  1;
	setAttr ".weightList[891].weights[3]"  1;
	setAttr ".weightList[892].weights[3]"  1;
	setAttr ".weightList[893].weights[0]"  1;
	setAttr ".weightList[894].weights[0]"  1;
	setAttr ".weightList[895].weights[3]"  1;
	setAttr ".weightList[896].weights[3]"  1;
	setAttr ".weightList[897].weights[3]"  1;
	setAttr ".weightList[898].weights[3]"  1;
	setAttr ".weightList[899].weights[3]"  1;
	setAttr ".weightList[900].weights[3]"  1;
	setAttr ".weightList[901].weights[0]"  1;
	setAttr ".weightList[902].weights[0]"  1;
	setAttr ".weightList[903].weights[0]"  1;
	setAttr ".weightList[904].weights[3]"  1;
	setAttr ".weightList[905].weights[3]"  1;
	setAttr ".weightList[906].weights[3]"  1;
	setAttr ".weightList[907].weights[3]"  1;
	setAttr ".weightList[908].weights[3]"  1;
	setAttr ".weightList[909].weights[3]"  1;
	setAttr ".weightList[910].weights[3]"  1;
	setAttr ".weightList[911].weights[3]"  1;
	setAttr ".weightList[912].weights[3]"  1;
	setAttr ".weightList[913].weights[3]"  1;
	setAttr ".weightList[914].weights[3]"  1;
	setAttr ".weightList[915].weights[3]"  1;
	setAttr ".weightList[916].weights[3]"  1;
	setAttr ".weightList[917].weights[3]"  1;
	setAttr ".weightList[918].weights[3]"  1;
	setAttr ".weightList[919].weights[3]"  1;
	setAttr ".weightList[920].weights[17]"  1;
	setAttr ".weightList[921].weights[3]"  1;
	setAttr ".weightList[922].weights[3]"  1;
	setAttr ".weightList[923].weights[3]"  0.99999999999999989;
	setAttr ".weightList[924].weights[3]"  1;
	setAttr ".weightList[925].weights[3]"  1;
	setAttr ".weightList[926].weights[3]"  1;
	setAttr ".weightList[927].weights[3]"  1;
	setAttr ".weightList[928].weights[3]"  1;
	setAttr ".weightList[929].weights[3]"  1;
	setAttr ".weightList[930].weights[3]"  1;
	setAttr ".weightList[931].weights[3]"  1;
	setAttr ".weightList[932].weights[3]"  1;
	setAttr ".weightList[933].weights[3]"  1;
	setAttr ".weightList[934].weights[3]"  1;
	setAttr ".weightList[935].weights[0]"  1;
	setAttr ".weightList[936].weights[0]"  1;
	setAttr ".weightList[937].weights[0]"  1;
	setAttr ".weightList[938].weights[0]"  1;
	setAttr ".weightList[939].weights[0]"  1;
	setAttr ".weightList[940].weights[0]"  1;
	setAttr ".weightList[941].weights[0]"  1;
	setAttr ".weightList[942].weights[0]"  1;
	setAttr ".weightList[943].weights[0]"  1;
	setAttr ".weightList[944].weights[0]"  1;
	setAttr ".weightList[945].weights[0]"  1;
	setAttr ".weightList[946].weights[0]"  1;
	setAttr -size 2 ".weightList[947].weights";
	setAttr ".weightList[947].weights[0]" 0.14410177098417398;
	setAttr ".weightList[947].weights[13]" 0.85589822901582602;
	setAttr ".weightList[948].weights[0]"  1;
	setAttr ".weightList[949].weights[0]"  1;
	setAttr ".weightList[950].weights[0]"  1;
	setAttr ".weightList[951].weights[0]"  1;
	setAttr ".weightList[952].weights[0]"  1;
	setAttr ".weightList[953].weights[0]"  1;
	setAttr ".weightList[954].weights[0]"  1;
	setAttr ".weightList[955].weights[0]"  1;
	setAttr ".weightList[956].weights[0]"  1;
	setAttr ".weightList[957].weights[0]"  1;
	setAttr ".weightList[958].weights[0]"  1;
	setAttr ".weightList[959].weights[0]"  1;
	setAttr ".weightList[960].weights[0]"  1;
	setAttr ".weightList[961].weights[0]"  1;
	setAttr ".weightList[962].weights[0]"  1;
	setAttr ".weightList[963].weights[0]"  1;
	setAttr ".weightList[964].weights[0]"  1;
	setAttr ".weightList[965].weights[0]"  1;
	setAttr ".weightList[966].weights[0]"  1;
	setAttr ".weightList[967].weights[0]"  1;
	setAttr ".weightList[968].weights[0]"  1;
	setAttr ".weightList[969].weights[0]"  1;
	setAttr ".weightList[970].weights[0]"  1;
	setAttr ".weightList[971].weights[0]"  1;
	setAttr ".weightList[972].weights[0]"  1;
	setAttr ".weightList[973].weights[0]"  1;
	setAttr ".weightList[974].weights[0]"  1;
	setAttr ".weightList[975].weights[0]"  1;
	setAttr ".weightList[976].weights[0]"  1;
	setAttr ".weightList[977].weights[0]"  1;
	setAttr ".weightList[978].weights[0]"  1;
	setAttr ".weightList[979].weights[0]"  1;
	setAttr ".weightList[980].weights[0]"  1;
	setAttr ".weightList[981].weights[0]"  1;
	setAttr ".weightList[982].weights[0]"  1;
	setAttr -size 3 ".weightList[983].weights";
	setAttr ".weightList[983].weights[1]" 0.1106483703945117;
	setAttr ".weightList[983].weights[8]" 0.30346265736055156;
	setAttr ".weightList[983].weights[9]" 0.58588897224493663;
	setAttr -size 3 ".weightList[984].weights";
	setAttr ".weightList[984].weights[1]" 0.023983251215795261;
	setAttr ".weightList[984].weights[8]" 0.30342618734886606;
	setAttr ".weightList[984].weights[9]" 0.67259056143533857;
	setAttr -size 3 ".weightList[985].weights";
	setAttr ".weightList[985].weights[1]" 0.0010202677440026837;
	setAttr ".weightList[985].weights[8]" 0.25414939200606795;
	setAttr ".weightList[985].weights[9]" 0.74483034024992945;
	setAttr -size 3 ".weightList[986].weights";
	setAttr ".weightList[986].weights[1]" 0.00064993553034139561;
	setAttr ".weightList[986].weights[8]" 0.26903577611668633;
	setAttr ".weightList[986].weights[9]" 0.73031428835297207;
	setAttr -size 3 ".weightList[987].weights";
	setAttr ".weightList[987].weights[1]" 0.0026954126495532813;
	setAttr ".weightList[987].weights[8]" 0.33934001714520989;
	setAttr ".weightList[987].weights[9]" 0.65796457020523691;
	setAttr -size 3 ".weightList[988].weights";
	setAttr ".weightList[988].weights[1]" 0.025352754050074998;
	setAttr ".weightList[988].weights[8]" 0.45571961658333554;
	setAttr ".weightList[988].weights[9]" 0.51892762936658954;
	setAttr -size 3 ".weightList[989].weights";
	setAttr ".weightList[989].weights[1]" 0.076070242991048767;
	setAttr ".weightList[989].weights[8]" 0.39254988121908041;
	setAttr ".weightList[989].weights[9]" 0.53137987578987078;
	setAttr -size 3 ".weightList[990].weights";
	setAttr ".weightList[990].weights[1]" 0.14492584934491312;
	setAttr ".weightList[990].weights[8]" 0.35976387798438386;
	setAttr ".weightList[990].weights[9]" 0.49531027267070299;
	setAttr -size 3 ".weightList[991].weights[8:10]"  6.0291023052127463e-005 
		0.02779472331632514 0.97214498566062268;
	setAttr -size 3 ".weightList[992].weights[8:10]"  6.0673989832583919e-005 
		0.030110945665512073 0.96982838034465535;
	setAttr -size 3 ".weightList[993].weights[8:10]"  6.3730770963261495e-005 
		0.030072130840125673 0.96986413838891106;
	setAttr -size 3 ".weightList[994].weights[8:10]"  6.2644283316007406e-005 
		0.028340940340869428 0.97159641537581443;
	setAttr -size 3 ".weightList[995].weights[8:10]"  5.7378216553554384e-005 
		0.025651609171108956 0.97429101261233753;
	setAttr -size 3 ".weightList[996].weights[8:10]"  5.9922097652791628e-005 
		0.026914224771455456 0.97302585313089174;
	setAttr -size 3 ".weightList[997].weights[8:10]"  6.6133271999917244e-005 
		0.029165563815501873 0.97076830291249816;
	setAttr -size 3 ".weightList[998].weights[8:10]"  6.1652052608332118e-005 
		0.026881178654455246 0.97305716929293651;
	setAttr -size 3 ".weightList[999].weights[8:10]"  2.9607794427098889e-005 
		0.015134015486551961 0.98483637671902102;
	setAttr -size 3 ".weightList[1000].weights[8:10]"  2.9242397628219232e-005 
		0.017031895291763379 0.98293886231060845;
	setAttr -size 3 ".weightList[1001].weights[8:10]"  3.0674697804936939e-005 
		0.025124533678014243 0.9748447916241807;
	setAttr -size 3 ".weightList[1002].weights[8:10]"  2.9761055051214382e-005 
		0.036228926857010166 0.96374131208793867;
	setAttr -size 3 ".weightList[1003].weights[8:10]"  2.3268217096350308e-005 
		0.046621577543145797 0.95335515423975781;
	setAttr -size 3 ".weightList[1004].weights[8:10]"  2.5918067044042001e-005 
		0.03882851856831359 0.9611455633646423;
	setAttr -size 3 ".weightList[1005].weights[8:10]"  2.790920935518483e-005 
		0.016368124543150772 0.98360396624749402;
	setAttr -size 3 ".weightList[1006].weights[8:10]"  3.0872866773186976e-005 
		0.01563372665275066 0.98433540048047607;
	setAttr -size 3 ".weightList[1007].weights[8:10]"  6.5740028102687321e-006 
		0.021355797864669297 0.97863762813252042;
	setAttr -size 3 ".weightList[1008].weights[8:10]"  5.8285019169461696e-006 
		0.04858144917332155 0.95141272232476148;
	setAttr -size 3 ".weightList[1009].weights[8:10]"  5.9818992640468368e-006 
		0.094428418584512105 0.90556559951622384;
	setAttr -size 3 ".weightList[1010].weights[8:10]"  5.5924807477031229e-006 
		0.13657818392730142 0.86341622359195092;
	setAttr -size 3 ".weightList[1011].weights[8:10]"  5.4932939587188242e-006 
		0.15334160008219555 0.84665290662384562;
	setAttr -size 3 ".weightList[1012].weights[8:10]"  3.2429705733325532e-006 
		0.13659702688528294 0.86339973014414362;
	setAttr -size 3 ".weightList[1013].weights[8:10]"  5.8696888322885418e-006 
		0.037940224807260274 0.96205390550390746;
	setAttr -size 3 ".weightList[1014].weights[8:10]"  4.9419505230654262e-006 
		0.025961124285971734 0.97403393376350522;
	setAttr -size 3 ".weightList[1015].weights[8:10]"  1.8958215125080177e-007 
		0.16144375074431414 0.83855605967353453;
	setAttr -size 3 ".weightList[1016].weights[8:10]"  2.6774749347078722e-007 
		0.26029401413383357 0.73970571811867314;
	setAttr -size 3 ".weightList[1017].weights[8:10]"  4.3550486505801606e-007 
		0.35060258336027139 0.64939698113486355;
	setAttr -size 3 ".weightList[1018].weights[8:10]"  5.9786305778670118e-007 
		0.39215393998492387 0.6078454621520184;
	setAttr -size 3 ".weightList[1019].weights[8:10]"  5.1423382964261445e-007 
		0.37654980035666186 0.62344968540950862;
	setAttr -size 3 ".weightList[1020].weights[8:10]"  2.5150779732356067e-007 
		0.32046150575532512 0.67953824273687757;
	setAttr -size 3 ".weightList[1021].weights[8:10]"  2.4511214658965776e-007 
		0.16918558159460942 0.83081417329324403;
	setAttr -size 3 ".weightList[1022].weights[8:10]"  1.3349619127588768e-007 
		0.13191304466019174 0.86808682184361696;
	setAttr -size 3 ".weightList[1023].weights[8:10]"  0.00014106970971355324 
		0.80941653994644369 0.19044239034384283;
	setAttr -size 3 ".weightList[1024].weights[8:10]"  0.00029361082846669729 
		0.85337223199578305 0.1463341571757503;
	setAttr -size 3 ".weightList[1025].weights[8:10]"  0.00038831364844459505 
		0.86117816924087909 0.1384335171106765;
	setAttr -size 3 ".weightList[1026].weights[8:10]"  5.8918367947805925e-005 
		0.78368966321011913 0.21625141842193296;
	setAttr -size 3 ".weightList[1027].weights[8:10]"  0.0001745452544434439 
		0.76036877533880476 0.23945667940675192;
	setAttr -size 3 ".weightList[1028].weights[8:10]"  0.00028328832586222493 
		0.7289907079907233 0.27072600368341437;
	setAttr -size 3 ".weightList[1029].weights[8:10]"  0.00028721281333870163 
		0.71140115266248338 0.28831163452417796;
	setAttr -size 3 ".weightList[1030].weights[8:10]"  0.00017879783676071336 
		0.7366060663643299 0.26321513579890921;
	setAttr -size 3 ".weightList[1031].weights[8:10]"  0.027085172744784964 
		0.94322379535544154 0.029691031899773585;
	setAttr -size 3 ".weightList[1032].weights[8:10]"  0.030958201346885986 
		0.9455692760749479 0.023472522578166115;
	setAttr -size 3 ".weightList[1033].weights[8:10]"  0.016356475313034913 
		0.96237885039643334 0.021264674290531756;
	setAttr -size 3 ".weightList[1034].weights[8:10]"  0.0055329843967369058 
		0.92770771136361074 0.066759304239652192;
	setAttr -size 3 ".weightList[1035].weights[8:10]"  0.014694315386304758 
		0.92356501889993237 0.061740665713762737;
	setAttr -size 3 ".weightList[1036].weights[8:10]"  0.017682117107106005 
		0.92016690311319282 0.062150979779701181;
	setAttr -size 3 ".weightList[1037].weights[8:10]"  0.016091517361525927 
		0.92254946560952089 0.061359017028953237;
	setAttr -size 3 ".weightList[1038].weights[8:10]"  0.019105618569131181 
		0.9342056386881602 0.046688742742708657;
	setAttr -size 3 ".weightList[1039].weights";
	setAttr ".weightList[1039].weights[1]" 0.014505472738230199;
	setAttr ".weightList[1039].weights[8]" 0.18642459554618235;
	setAttr ".weightList[1039].weights[9]" 0.79906993171558738;
	setAttr -size 3 ".weightList[1040].weights";
	setAttr ".weightList[1040].weights[1]" 0.0012286540213957895;
	setAttr ".weightList[1040].weights[8]" 0.14623113189869236;
	setAttr ".weightList[1040].weights[9]" 0.85254021407991198;
	setAttr -size 3 ".weightList[1041].weights[8:10]"  0.10429539328717952 
		0.89402256625894094 0.0016820404538795215;
	setAttr -size 3 ".weightList[1042].weights[8:10]"  0.065993858528091295 
		0.92663603030789343 0.0073701111640152696;
	setAttr -size 3 ".weightList[1043].weights[8:10]"  0.10724811367687451 
		0.88694471810431119 0.0058071682188142425;
	setAttr -size 3 ".weightList[1044].weights";
	setAttr ".weightList[1044].weights[1]" 0.017343032164100391;
	setAttr ".weightList[1044].weights[8]" 0.10887047838413297;
	setAttr ".weightList[1044].weights[9]" 0.87378648945176662;
	setAttr -size 3 ".weightList[1045].weights";
	setAttr ".weightList[1045].weights[1]" 0.052074483914852407;
	setAttr ".weightList[1045].weights[8]" 0.11559189810069048;
	setAttr ".weightList[1045].weights[9]" 0.83233361798445715;
	setAttr -size 3 ".weightList[1046].weights";
	setAttr ".weightList[1046].weights[1]" 0.049505358590587419;
	setAttr ".weightList[1046].weights[8]" 0.14523710969714285;
	setAttr ".weightList[1046].weights[9]" 0.80525753171226988;
	setAttr -size 3 ".weightList[1047].weights";
	setAttr ".weightList[1047].weights[1]" 0.20104522320984136;
	setAttr ".weightList[1047].weights[8]" 0.51882761460701921;
	setAttr ".weightList[1047].weights[9]" 0.28012716218313943;
	setAttr -size 3 ".weightList[1048].weights";
	setAttr ".weightList[1048].weights[1]" 0.11958599811358234;
	setAttr ".weightList[1048].weights[8]" 0.45850481826466011;
	setAttr ".weightList[1048].weights[9]" 0.4219091836217575;
	setAttr -size 3 ".weightList[1049].weights";
	setAttr ".weightList[1049].weights[1]" 0.10432651654067034;
	setAttr ".weightList[1049].weights[8]" 0.57495980608567154;
	setAttr ".weightList[1049].weights[9]" 0.32071367737365819;
	setAttr -size 3 ".weightList[1050].weights";
	setAttr ".weightList[1050].weights[1]" 0.019957844616801897;
	setAttr ".weightList[1050].weights[8]" 0.55738531672997393;
	setAttr ".weightList[1050].weights[9]" 0.42265683865322429;
	setAttr -size 3 ".weightList[1051].weights";
	setAttr ".weightList[1051].weights[1]" 0.0033034020329074446;
	setAttr ".weightList[1051].weights[8]" 0.47119749583897141;
	setAttr ".weightList[1051].weights[9]" 0.52549910212812123;
	setAttr -size 3 ".weightList[1052].weights";
	setAttr ".weightList[1052].weights[1]" 0.00092412921730702468;
	setAttr ".weightList[1052].weights[8]" 0.39084618929211107;
	setAttr ".weightList[1052].weights[9]" 0.60822968149058187;
	setAttr -size 3 ".weightList[1053].weights";
	setAttr ".weightList[1053].weights[1]" 0.0017323617313911854;
	setAttr ".weightList[1053].weights[8]" 0.40054662352701437;
	setAttr ".weightList[1053].weights[9]" 0.59772101474159456;
	setAttr -size 3 ".weightList[1054].weights";
	setAttr ".weightList[1054].weights[1]" 0.022949736189300633;
	setAttr ".weightList[1054].weights[8]" 0.45108641344548361;
	setAttr ".weightList[1054].weights[9]" 0.52596385036521576;
	setAttr -size 3 ".weightList[1055].weights";
	setAttr ".weightList[1055].weights[1]" 0.16076225046471193;
	setAttr ".weightList[1055].weights[8]" 0.65797468673861681;
	setAttr ".weightList[1055].weights[9]" 0.18126306279667118;
	setAttr -size 3 ".weightList[1056].weights";
	setAttr ".weightList[1056].weights[1]" 0.073674015029278117;
	setAttr ".weightList[1056].weights[8]" 0.58272393252500565;
	setAttr ".weightList[1056].weights[9]" 0.34360205244571618;
	setAttr -size 3 ".weightList[1057].weights";
	setAttr ".weightList[1057].weights[1]" 0.12472184280762266;
	setAttr ".weightList[1057].weights[8]" 0.70322218929522073;
	setAttr ".weightList[1057].weights[9]" 0.1720559678971566;
	setAttr -size 3 ".weightList[1058].weights";
	setAttr ".weightList[1058].weights[1]" 0.03318799539957823;
	setAttr ".weightList[1058].weights[8]" 0.65293293432859612;
	setAttr ".weightList[1058].weights[9]" 0.31387907027182549;
	setAttr -size 3 ".weightList[1059].weights";
	setAttr ".weightList[1059].weights[1]" 0.0042003478907758802;
	setAttr ".weightList[1059].weights[8]" 0.54607401961999436;
	setAttr ".weightList[1059].weights[9]" 0.4497256324892297;
	setAttr -size 3 ".weightList[1060].weights";
	setAttr ".weightList[1060].weights[1]" 0.0011455603490700792;
	setAttr ".weightList[1060].weights[8]" 0.47410287739974127;
	setAttr ".weightList[1060].weights[9]" 0.52475156225118869;
	setAttr -size 3 ".weightList[1061].weights";
	setAttr ".weightList[1061].weights[1]" 0.0016540415894622286;
	setAttr ".weightList[1061].weights[8]" 0.48676914388945047;
	setAttr ".weightList[1061].weights[9]" 0.51157681452108716;
	setAttr -size 3 ".weightList[1062].weights";
	setAttr ".weightList[1062].weights[1]" 0.011924427544539033;
	setAttr ".weightList[1062].weights[8]" 0.53940567924692862;
	setAttr ".weightList[1062].weights[9]" 0.44866989320853229;
	setAttr -size 3 ".weightList[1063].weights";
	setAttr ".weightList[1063].weights[1]" 0.07579889595549924;
	setAttr ".weightList[1063].weights[8]" 0.75996977684084777;
	setAttr ".weightList[1063].weights[9]" 0.16423132720365288;
	setAttr -size 3 ".weightList[1064].weights";
	setAttr ".weightList[1064].weights[1]" 0.066561435490480478;
	setAttr ".weightList[1064].weights[8]" 0.70820385145816611;
	setAttr ".weightList[1064].weights[9]" 0.22523471305135331;
	setAttr -size 3 ".weightList[1065].weights";
	setAttr ".weightList[1065].weights[1]" 0.07613736774756405;
	setAttr ".weightList[1065].weights[8]" 0.76578602504629179;
	setAttr ".weightList[1065].weights[9]" 0.15807660720614405;
	setAttr -size 3 ".weightList[1066].weights";
	setAttr ".weightList[1066].weights[1]" 0.029523476002787548;
	setAttr ".weightList[1066].weights[8]" 0.73411860482043756;
	setAttr ".weightList[1066].weights[9]" 0.23635791917677496;
	setAttr -size 3 ".weightList[1067].weights";
	setAttr ".weightList[1067].weights[1]" 0.0046415132623016837;
	setAttr ".weightList[1067].weights[8]" 0.63848660431802895;
	setAttr ".weightList[1067].weights[9]" 0.35687188241966933;
	setAttr -size 3 ".weightList[1068].weights";
	setAttr ".weightList[1068].weights[1]" 0.0014589271570192618;
	setAttr ".weightList[1068].weights[8]" 0.55873499112516689;
	setAttr ".weightList[1068].weights[9]" 0.43980608171781382;
	setAttr -size 3 ".weightList[1069].weights";
	setAttr ".weightList[1069].weights[1]" 0.0018833737517484619;
	setAttr ".weightList[1069].weights[8]" 0.58266971703059134;
	setAttr ".weightList[1069].weights[9]" 0.41544690921766031;
	setAttr -size 3 ".weightList[1070].weights";
	setAttr ".weightList[1070].weights[1]" 0.018877479658910259;
	setAttr ".weightList[1070].weights[8]" 0.64535895381661212;
	setAttr ".weightList[1070].weights[9]" 0.33576356652447764;
	setAttr -size 3 ".weightList[1071].weights";
	setAttr ".weightList[1071].weights[1]" 0.018769331039039886;
	setAttr ".weightList[1071].weights[8]" 0.69517325878276837;
	setAttr ".weightList[1071].weights[9]" 0.28605741017819164;
	setAttr -size 3 ".weightList[1072].weights[8:10]"  8.3088577431609228e-007 
		0.48104830409768351 0.51895086501654231;
	setAttr -size 3 ".weightList[1073].weights[8:10]"  9.5762658338266738e-007 
		0.59525585788212709 0.4047431844912896;
	setAttr -size 3 ".weightList[1074].weights[8:10]"  1.7925583834854078e-006 
		0.64256496918041706 0.35743323826119949;
	setAttr -size 3 ".weightList[1075].weights[8:10]"  1.7611285238697292e-006 
		0.62915371575727275 0.37084452311420357;
	setAttr -size 3 ".weightList[1076].weights[8:10]"  2.4846149878695544e-006 
		0.56430316637710243 0.43569434900790971;
	setAttr -size 3 ".weightList[1077].weights[8:10]"  3.4701271260560659e-006 
		0.4718700040462715 0.52812652582660258;
	setAttr -size 3 ".weightList[1078].weights[8:10]"  2.3927579324546785e-006 
		0.40070555978500094 0.59929204745706677;
	setAttr -size 3 ".weightList[1079].weights[8:10]"  1.2778631514534491e-006 
		0.3947497744765644 0.60524894766028414;
	setAttr -size 2 ".weightList[1080].weights[13:14]"  0.54887344929615756 
		0.45112655070384244;
	setAttr -size 2 ".weightList[1081].weights[13:14]"  0.55126750517561351 
		0.44873249482438649;
	setAttr -size 2 ".weightList[1082].weights[13:14]"  0.60858326851140698 
		0.39141673148859296;
	setAttr -size 2 ".weightList[1083].weights[13:14]"  0.6337429612036114 
		0.3662570387963886;
	setAttr -size 2 ".weightList[1084].weights[13:14]"  0.7439581060571836 
		0.2560418939428164;
	setAttr -size 2 ".weightList[1085].weights[13:14]"  0.79207071107654836 
		0.20792928892345167;
	setAttr -size 2 ".weightList[1086].weights[13:14]"  0.88217824366342212 
		0.11782175633657796;
	setAttr -size 2 ".weightList[1087].weights[13:14]"  0.92366109755204462 
		0.076338902447955367;
	setAttr -size 2 ".weightList[1088].weights[13:14]"  0.93899884032643022 
		0.061001159673569789;
	setAttr -size 2 ".weightList[1089].weights[13:14]"  0.9529015131606845 
		0.047098486839315459;
	setAttr -size 2 ".weightList[1090].weights[13:14]"  0.96487390342926538 
		0.035126096570734691;
	setAttr -size 2 ".weightList[1091].weights[13:14]"  0.96658736444586757 
		0.033412635554132375;
	setAttr -size 2 ".weightList[1092].weights[13:14]"  0.95806710250146132 
		0.041932897498538638;
	setAttr -size 2 ".weightList[1093].weights[13:14]"  0.96314509100520607 
		0.03685490899479394;
	setAttr -size 2 ".weightList[1094].weights[13:14]"  0.9410592844926805 
		0.058940715507319483;
	setAttr -size 2 ".weightList[1095].weights[13:14]"  0.96336453386995757 
		0.036635466130042385;
	setAttr -size 2 ".weightList[1096].weights[13:14]"  0.81693301086443981 
		0.18306698913556024;
	setAttr -size 2 ".weightList[1097].weights[13:14]"  0.86916889859278457 
		0.13083110140721543;
	setAttr -size 2 ".weightList[1098].weights[13:14]"  0.65142994267559584 
		0.3485700573244041;
	setAttr -size 2 ".weightList[1099].weights[13:14]"  0.70417837757273494 
		0.29582162242726506;
	setAttr -size 2 ".weightList[1100].weights[13:14]"  0.56390172093291957 
		0.43609827906708043;
	setAttr -size 2 ".weightList[1101].weights[13:14]"  0.58269035069386876 
		0.41730964930613124;
	setAttr -size 2 ".weightList[1102].weights[13:14]"  0.5850724868617786 
		0.4149275131382214;
	setAttr -size 2 ".weightList[1103].weights[13:14]"  0.59241481705404242 
		0.40758518294595752;
	setAttr -size 2 ".weightList[1104].weights[13:14]"  0.55081800169238759 
		0.44918199830761235;
	setAttr -size 2 ".weightList[1105].weights[13:14]"  0.71863731286831534 
		0.28136268713168466;
	setAttr -size 2 ".weightList[1106].weights[13:14]"  0.74960895190439214 
		0.25039104809560792;
	setAttr -size 2 ".weightList[1107].weights[13:14]"  0.6688118471798874 
		0.3311881528201126;
	setAttr -size 2 ".weightList[1108].weights[13:14]"  0.87638896584078751 
		0.12361103415921247;
	setAttr -size 2 ".weightList[1109].weights[13:14]"  0.90112744645807241 
		0.09887255354192763;
	setAttr -size 2 ".weightList[1110].weights[13:14]"  0.84296456673629028 
		0.1570354332637097;
	setAttr -size 2 ".weightList[1111].weights[13:14]"  0.57470454074151167 
		0.42529545925848833;
	setAttr -size 2 ".weightList[1112].weights[13:14]"  0.5806590838261021 
		0.41934091617389796;
	setAttr -size 2 ".weightList[1113].weights[13:14]"  0.55614650186308801 
		0.44385349813691199;
	setAttr -size 2 ".weightList[1114].weights[13:14]"  0.69572240692014087 
		0.30427759307985919;
	setAttr -size 2 ".weightList[1115].weights[13:14]"  0.73960498184875967 
		0.26039501815124039;
	setAttr -size 2 ".weightList[1116].weights[13:14]"  0.66691456998077348 
		0.33308543001922658;
	setAttr -size 2 ".weightList[1117].weights[13:14]"  0.85681949567642657 
		0.1431805043235734;
	setAttr -size 2 ".weightList[1118].weights[13:14]"  0.886786142507068 
		0.11321385749293199;
	setAttr -size 2 ".weightList[1119].weights[13:14]"  0.82221278035279477 
		0.1777872196472052;
	setAttr ".weightList[1120].weights[2]"  1;
	setAttr ".weightList[1121].weights[2]"  1;
	setAttr ".weightList[1122].weights[2]"  1;
	setAttr ".weightList[1123].weights[2]"  1;
	setAttr ".weightList[1124].weights[2]"  1;
	setAttr ".weightList[1125].weights[2]"  1;
	setAttr ".weightList[1126].weights[2]"  1;
	setAttr ".weightList[1127].weights[2]"  1;
	setAttr ".weightList[1128].weights[2]"  1;
	setAttr ".weightList[1129].weights[2]"  1;
	setAttr ".weightList[1130].weights[2]"  1;
	setAttr ".weightList[1131].weights[2]"  1;
	setAttr ".weightList[1132].weights[2]"  1;
	setAttr ".weightList[1133].weights[2]"  1;
	setAttr ".weightList[1134].weights[2]"  1;
	setAttr ".weightList[1135].weights[2]"  1;
	setAttr ".weightList[1136].weights[2]"  1;
	setAttr ".weightList[1137].weights[2]"  1;
	setAttr ".weightList[1138].weights[2]"  1;
	setAttr ".weightList[1139].weights[2]"  1;
	setAttr ".weightList[1140].weights[2]"  1;
	setAttr ".weightList[1141].weights[2]"  1;
	setAttr ".weightList[1142].weights[2]"  1;
	setAttr ".weightList[1143].weights[2]"  1;
	setAttr ".weightList[1144].weights[2]"  1;
	setAttr ".weightList[1145].weights[2]"  1;
	setAttr ".weightList[1146].weights[2]"  1;
	setAttr ".weightList[1147].weights[2]"  1;
	setAttr ".weightList[1148].weights[2]"  1;
	setAttr ".weightList[1149].weights[2]"  1;
	setAttr ".weightList[1150].weights[2]"  1;
	setAttr ".weightList[1151].weights[2]"  1;
	setAttr ".weightList[1152].weights[2]"  1;
	setAttr ".weightList[1153].weights[2]"  1;
	setAttr ".weightList[1154].weights[2]"  1;
	setAttr ".weightList[1155].weights[2]"  1;
	setAttr ".weightList[1156].weights[2]"  1;
	setAttr ".weightList[1157].weights[2]"  1;
	setAttr ".weightList[1158].weights[2]"  1;
	setAttr ".weightList[1159].weights[2]"  1;
	setAttr ".weightList[1160].weights[2]"  1;
	setAttr ".weightList[1161].weights[2]"  1;
	setAttr ".weightList[1162].weights[2]"  1;
	setAttr ".weightList[1163].weights[2]"  1;
	setAttr ".weightList[1164].weights[2]"  1;
	setAttr ".weightList[1165].weights[2]"  1;
	setAttr ".weightList[1166].weights[2]"  1;
	setAttr ".weightList[1167].weights[2]"  1;
	setAttr ".weightList[1168].weights[2]"  1;
	setAttr ".weightList[1169].weights[2]"  1;
	setAttr ".weightList[1170].weights[2]"  1;
	setAttr ".weightList[1171].weights[2]"  1;
	setAttr ".weightList[1172].weights[2]"  1;
	setAttr ".weightList[1173].weights[2]"  1;
	setAttr ".weightList[1174].weights[2]"  1;
	setAttr ".weightList[1175].weights[2]"  1;
	setAttr ".weightList[1176].weights[2]"  1;
	setAttr ".weightList[1177].weights[2]"  1;
	setAttr ".weightList[1178].weights[2]"  1;
	setAttr ".weightList[1179].weights[2]"  1;
	setAttr ".weightList[1180].weights[2]"  1;
	setAttr ".weightList[1181].weights[2]"  1;
	setAttr ".weightList[1182].weights[2]"  1;
	setAttr ".weightList[1183].weights[2]"  1;
	setAttr ".weightList[1184].weights[2]"  1;
	setAttr ".weightList[1185].weights[2]"  1;
	setAttr ".weightList[1186].weights[2]"  1;
	setAttr ".weightList[1187].weights[2]"  1;
	setAttr ".weightList[1188].weights[2]"  1;
	setAttr ".weightList[1189].weights[2]"  1;
	setAttr ".weightList[1190].weights[2]"  1;
	setAttr ".weightList[1191].weights[2]"  1;
	setAttr ".weightList[1192].weights[2]"  1;
	setAttr ".weightList[1193].weights[2]"  1;
	setAttr ".weightList[1194].weights[2]"  1;
	setAttr ".weightList[1195].weights[2]"  1;
	setAttr ".weightList[1196].weights[2]"  1;
	setAttr ".weightList[1197].weights[2]"  1;
	setAttr ".weightList[1198].weights[2]"  1;
	setAttr ".weightList[1199].weights[2]"  1;
	setAttr ".weightList[1200].weights[2]"  1;
	setAttr ".weightList[1201].weights[2]"  1;
	setAttr ".weightList[1202].weights[2]"  1;
	setAttr ".weightList[1203].weights[2]"  1;
	setAttr ".weightList[1204].weights[2]"  1;
	setAttr ".weightList[1205].weights[2]"  1;
	setAttr ".weightList[1206].weights[2]"  1;
	setAttr ".weightList[1207].weights[2]"  1;
	setAttr ".weightList[1208].weights[2]"  1;
	setAttr ".weightList[1209].weights[2]"  1;
	setAttr ".weightList[1210].weights[2]"  1;
	setAttr ".weightList[1211].weights[2]"  1;
	setAttr ".weightList[1212].weights[2]"  1;
	setAttr ".weightList[1213].weights[2]"  1;
	setAttr ".weightList[1214].weights[2]"  1;
	setAttr ".weightList[1215].weights[2]"  1;
	setAttr ".weightList[1216].weights[2]"  1;
	setAttr ".weightList[1217].weights[2]"  1;
	setAttr ".weightList[1218].weights[2]"  1;
	setAttr ".weightList[1219].weights[2]"  1;
	setAttr ".weightList[1220].weights[2]"  1;
	setAttr ".weightList[1221].weights[2]"  1;
	setAttr ".weightList[1222].weights[2]"  1;
	setAttr ".weightList[1223].weights[2]"  1;
	setAttr ".weightList[1224].weights[2]"  1;
	setAttr ".weightList[1225].weights[2]"  1;
	setAttr ".weightList[1226].weights[2]"  1;
	setAttr ".weightList[1227].weights[2]"  1;
	setAttr ".weightList[1228].weights[2]"  1;
	setAttr ".weightList[1229].weights[2]"  1;
	setAttr ".weightList[1230].weights[2]"  1;
	setAttr ".weightList[1231].weights[2]"  1;
	setAttr ".weightList[1232].weights[2]"  1;
	setAttr ".weightList[1233].weights[2]"  1;
	setAttr ".weightList[1234].weights[2]"  1;
	setAttr ".weightList[1235].weights[2]"  1;
	setAttr ".weightList[1236].weights[2]"  1;
	setAttr ".weightList[1237].weights[2]"  1;
	setAttr ".weightList[1238].weights[2]"  1;
	setAttr ".weightList[1239].weights[2]"  1;
	setAttr ".weightList[1240].weights[2]"  1;
	setAttr ".weightList[1241].weights[2]"  1;
	setAttr ".weightList[1242].weights[2]"  1;
	setAttr ".weightList[1243].weights[2]"  1;
	setAttr ".weightList[1244].weights[2]"  1;
	setAttr ".weightList[1245].weights[2]"  1;
	setAttr ".weightList[1246].weights[2]"  1;
	setAttr ".weightList[1247].weights[2]"  1;
	setAttr ".weightList[1248].weights[2]"  1;
	setAttr ".weightList[1249].weights[2]"  1;
	setAttr ".weightList[1250].weights[2]"  1;
	setAttr ".weightList[1251].weights[2]"  1;
	setAttr ".weightList[1252].weights[2]"  1;
	setAttr ".weightList[1253].weights[2]"  1;
	setAttr ".weightList[1254].weights[2]"  1;
	setAttr ".weightList[1255].weights[2]"  1;
	setAttr ".weightList[1256].weights[2]"  1;
	setAttr ".weightList[1257].weights[2]"  1;
	setAttr ".weightList[1258].weights[2]"  1;
	setAttr ".weightList[1259].weights[2]"  1;
	setAttr ".weightList[1260].weights[2]"  1;
	setAttr ".weightList[1261].weights[2]"  1;
	setAttr ".weightList[1262].weights[2]"  1;
	setAttr ".weightList[1263].weights[2]"  1;
	setAttr ".weightList[1264].weights[2]"  1;
	setAttr ".weightList[1265].weights[2]"  1;
	setAttr ".weightList[1266].weights[2]"  1;
	setAttr ".weightList[1267].weights[2]"  1;
	setAttr ".weightList[1268].weights[2]"  1;
	setAttr ".weightList[1269].weights[2]"  1;
	setAttr ".weightList[1270].weights[2]"  1;
	setAttr ".weightList[1271].weights[2]"  1;
	setAttr ".weightList[1272].weights[2]"  1;
	setAttr ".weightList[1273].weights[2]"  1;
	setAttr ".weightList[1274].weights[2]"  1;
	setAttr ".weightList[1275].weights[2]"  1;
	setAttr ".weightList[1276].weights[2]"  1;
	setAttr ".weightList[1277].weights[2]"  1;
	setAttr ".weightList[1278].weights[2]"  1;
	setAttr ".weightList[1279].weights[2]"  1;
	setAttr ".weightList[1280].weights[2]"  1;
	setAttr ".weightList[1281].weights[2]"  1;
	setAttr ".weightList[1282].weights[2]"  1;
	setAttr ".weightList[1283].weights[2]"  1;
	setAttr ".weightList[1284].weights[2]"  1;
	setAttr ".weightList[1285].weights[2]"  1;
	setAttr ".weightList[1286].weights[2]"  1;
	setAttr ".weightList[1287].weights[2]"  1;
	setAttr ".weightList[1288].weights[2]"  1;
	setAttr ".weightList[1289].weights[2]"  1;
	setAttr -size 3 ".weightList[1290].weights[8:10]"  3.1662376792571762e-005 
		0.020160775219002339 0.97980756240420519;
	setAttr -size 3 ".weightList[1291].weights[8:10]"  3.3875926560873704e-005 
		0.021798110064446364 0.97816801400899278;
	setAttr -size 3 ".weightList[1292].weights[8:10]"  3.6702235022086064e-005 
		0.022843662968050443 0.97711963479692743;
	setAttr -size 3 ".weightList[1293].weights[8:10]"  3.7916255180133955e-005 
		0.023694884819497313 0.97626719892532265;
	setAttr -size 3 ".weightList[1294].weights[8:10]"  4.3353267784274616e-005 
		0.026098461478980754 0.97385818525323486;
	setAttr -size 3 ".weightList[1295].weights[8:10]"  5.0530674904570021e-005 
		0.027971479602652886 0.97197798972244254;
	setAttr -size 3 ".weightList[1296].weights[8:10]"  5.0405637102272335e-005 
		0.026378201831797544 0.97357139253110014;
	setAttr -size 3 ".weightList[1297].weights[8:10]"  4.3827025300435824e-005 
		0.022606746946393235 0.97734942602830643;
	setAttr -size 3 ".weightList[1298].weights[8:10]"  3.9641369024710585e-005 
		0.02014936462497954 0.97981099400599569;
	setAttr -size 3 ".weightList[1299].weights[8:10]"  3.8505317719172211e-005 
		0.019476134283479479 0.98048536039880141;
	setAttr -size 3 ".weightList[1300].weights[8:10]"  3.512775949171792e-005 
		0.01898927077598158 0.98097560146452667;
	setAttr -size 3 ".weightList[1301].weights[8:10]"  3.2059545506703325e-005 
		0.018986278304411675 0.98098166215008153;
	setAttr -size 3 ".weightList[1302].weights[8:10]"  7.6790170494328387e-005 
		0.032458652744842949 0.96746455708466261;
	setAttr -size 3 ".weightList[1303].weights[8:10]"  8.1999710386469713e-005 
		0.034698220519526861 0.96521977977008655;
	setAttr -size 3 ".weightList[1304].weights[8:10]"  8.6581294871210582e-005 
		0.036170635966248678 0.96374278273888025;
	setAttr -size 3 ".weightList[1305].weights[8:10]"  8.8460042535999791e-005 
		0.037457201102917802 0.96245433885454634;
	setAttr -size 3 ".weightList[1306].weights[8:10]"  9.8856166348918327e-005 
		0.040309008997670273 0.95959213483598083;
	setAttr -size 3 ".weightList[1307].weights[8:10]"  0.00010922609073200837 
		0.041665068268937566 0.95822570564033049;
	setAttr -size 3 ".weightList[1308].weights[8:10]"  0.00010550806863338356 
		0.03868955066187714 0.96120494126948941;
	setAttr -size 3 ".weightList[1309].weights[8:10]"  9.6691504184371986e-005 
		0.0343160163220241 0.96558729217379147;
	setAttr -size 3 ".weightList[1310].weights[8:10]"  9.3897948534377425e-005 
		0.032092453938144784 0.96781364811332082;
	setAttr -size 3 ".weightList[1311].weights[8:10]"  8.6921610636205382e-005 
		0.030780195753999328 0.96913288263536446;
	setAttr -size 3 ".weightList[1312].weights[8:10]"  7.7632307587462395e-005 
		0.029731653655786644 0.97019071403662605;
	setAttr -size 3 ".weightList[1313].weights[8:10]"  7.5601904791726185e-005 
		0.03041136006393132 0.96951303803127709;
	setAttr -size 3 ".weightList[1314].weights[8:10]"  0.00015304119417917621 
		0.047157721790064493 0.95268923701575614;
	setAttr -size 3 ".weightList[1315].weights[8:10]"  0.00016331351792220133 
		0.049981461672912078 0.94985522480916573;
	setAttr -size 3 ".weightList[1316].weights[8:10]"  0.00016999987293005248 
		0.051698977267157144 0.94813102285991291;
	setAttr -size 3 ".weightList[1317].weights[8:10]"  0.00017562571935993439 
		0.053231054772456973 0.94659331950818315;
	setAttr -size 3 ".weightList[1318].weights[8:10]"  0.00019039451176620006 
		0.055792465034641581 0.9440171404535922;
	setAttr -size 3 ".weightList[1319].weights[8:10]"  0.00019832369148750235 
		0.055957021262651833 0.94384465504586068;
	setAttr -size 3 ".weightList[1320].weights[8:10]"  0.00019021871357392074 
		0.052422504871425378 0.94738727641500065;
	setAttr -size 3 ".weightList[1321].weights[8:10]"  0.00018356761968168919 
		0.048365401656353682 0.95145103072396464;
	setAttr -size 3 ".weightList[1322].weights[8:10]"  0.00017665826751065802 
		0.045719126667432761 0.95410421506505649;
	setAttr -size 3 ".weightList[1323].weights[8:10]"  0.00015728661084665101 
		0.043266417918278753 0.95657629547087453;
	setAttr -size 3 ".weightList[1324].weights[8:10]"  0.00014971284266802155 
		0.043018834347971907 0.95683145280935999;
	setAttr -size 3 ".weightList[1325].weights[8:10]"  0.00015204713210633156 
		0.044862985496717647 0.954984967371176;
	setAttr -size 3 ".weightList[1326].weights[8:10]"  0.00024586891139676941 
		0.059254358775285704 0.94049977231331749;
	setAttr -size 3 ".weightList[1327].weights[8:10]"  0.00026596015445518072 
		0.062816641128125086 0.93691739871741964;
	setAttr -size 3 ".weightList[1328].weights[8:10]"  0.00028142473123184987 
		0.065102248449695491 0.93461632681907258;
	setAttr -size 3 ".weightList[1329].weights[8:10]"  0.0002920260978118711 
		0.066657237658803395 0.93305073624338464;
	setAttr -size 3 ".weightList[1330].weights[8:10]"  0.00030880153626216341 
		0.068382819019105701 0.93130837944463207;
	setAttr -size 3 ".weightList[1331].weights[8:10]"  0.00031342988035092659 
		0.067741456105214135 0.93194511401443503;
	setAttr -size 3 ".weightList[1332].weights[8:10]"  0.00030075328802708527 
		0.064344531819067768 0.93535471489290511;
	setAttr -size 3 ".weightList[1333].weights[8:10]"  0.00028846500092090231 
		0.06001432376053268 0.93969721123854633;
	setAttr -size 3 ".weightList[1334].weights[8:10]"  0.00027091095142683886 
		0.056301597838860316 0.94342749120971292;
	setAttr -size 3 ".weightList[1335].weights[8:10]"  0.00025010482403242716 
		0.054250509236747665 0.94549938593921989;
	setAttr -size 3 ".weightList[1336].weights[8:10]"  0.0002515091565458232 
		0.055545974271029745 0.94420251657242449;
	setAttr -size 3 ".weightList[1337].weights[8:10]"  0.00024663402992252417 
		0.056947988065548072 0.94280537790452956;
	setAttr -size 3 ".weightList[1338].weights[8:10]"  0.000351676236553067 
		0.06895988204527248 0.93068844171817455;
	setAttr -size 3 ".weightList[1339].weights[8:10]"  0.00038817789826754728 
		0.073496667097159116 0.92611515500457331;
	setAttr -size 3 ".weightList[1340].weights[8:10]"  0.00041795965125685826 
		0.07649762480918168 0.92308441553956144;
	setAttr -size 3 ".weightList[1341].weights[8:10]"  0.00044193378262539536 
		0.078272232923517968 0.92128583329385672;
	setAttr -size 3 ".weightList[1342].weights[8:10]"  0.00046398642517122261 
		0.079627110628813155 0.91990890294601557;
	setAttr -size 3 ".weightList[1343].weights[8:10]"  0.00045363464354193715 
		0.078359692181332777 0.92118667317512526;
	setAttr -size 3 ".weightList[1344].weights[8:10]"  0.00042100486465922215 
		0.074183151802968486 0.92539584333237235;
	setAttr -size 3 ".weightList[1345].weights[8:10]"  0.00040040562066687494 
		0.069072239963436699 0.93052735441589651;
	setAttr -size 3 ".weightList[1346].weights[8:10]"  0.0003856124218907622 
		0.065694299385271604 0.93392008819283756;
	setAttr -size 3 ".weightList[1347].weights[8:10]"  0.00037440823418565092 
		0.065011229857502975 0.93461436190831138;
	setAttr -size 3 ".weightList[1348].weights[8:10]"  0.0003719297462456561 
		0.066010389934943445 0.93361768031881087;
	setAttr -size 3 ".weightList[1349].weights[8:10]"  0.00034816456389291661 
		0.066119142751579457 0.93353269268452765;
	setAttr -size 3 ".weightList[1350].weights[8:10]"  0.00047754320813764452 
		0.077379698341817682 0.92214275845004468;
	setAttr -size 3 ".weightList[1351].weights[8:10]"  0.00052020068596230146 
		0.081751505794485729 0.91772829351955199;
	setAttr -size 3 ".weightList[1352].weights[8:10]"  0.00056228422466064862 
		0.084902689106476636 0.91453502666886266;
	setAttr -size 3 ".weightList[1353].weights[8:10]"  0.00060168571155060915 
		0.087011359424403203 0.9123869548640462;
	setAttr -size 3 ".weightList[1354].weights[8:10]"  0.00061646359335778493 
		0.088004152194922733 0.91137938421171949;
	setAttr -size 3 ".weightList[1355].weights[8:10]"  0.00058786361944763933 
		0.086133441655637022 0.91327869472491541;
	setAttr -size 3 ".weightList[1356].weights[8:10]"  0.00054906048905456223 
		0.081573293626577656 0.91787764588436782;
	setAttr -size 3 ".weightList[1357].weights[8:10]"  0.00053087858051476357 
		0.076887131299258726 0.92258199012022668;
	setAttr -size 3 ".weightList[1358].weights[8:10]"  0.0005217359858860417 
		0.07463737073929623 0.92484089327481789;
	setAttr -size 3 ".weightList[1359].weights[8:10]"  0.00051655533421133355 
		0.074511143098112326 0.92497230156767629;
	setAttr -size 3 ".weightList[1360].weights[8:10]"  0.00049830817926086292 
		0.074416926302828382 0.92508476551791075;
	setAttr -size 3 ".weightList[1361].weights[8:10]"  0.00046227169008664467 
		0.074105614611629636 0.92543211369828382;
	setAttr -size 3 ".weightList[1362].weights[8:10]"  0.00061945706682710539 
		0.083989260769090759 0.91539128216408217;
	setAttr -size 3 ".weightList[1363].weights[8:10]"  0.00064210598915098748 
		0.086558976856504419 0.91279891715434458;
	setAttr -size 3 ".weightList[1364].weights[8:10]"  0.00068427465030656144 
		0.088911884053223061 0.91040384129647045;
	setAttr -size 3 ".weightList[1365].weights[8:10]"  0.00072166568337572214 
		0.090765437494877158 0.9085128968217473;
	setAttr -size 3 ".weightList[1366].weights[8:10]"  0.00073485950432150148 
		0.091834659322441684 0.90743048117323666;
	setAttr -size 3 ".weightList[1367].weights[8:10]"  0.0007198894034743656 
		0.090507891045392586 0.90877221955113308;
	setAttr -size 3 ".weightList[1368].weights[8:10]"  0.00068303927770326965 
		0.086397538191701512 0.91291942253059521;
	setAttr -size 3 ".weightList[1369].weights[8:10]"  0.00066087361187513809 
		0.082968385349023385 0.91637074103910132;
	setAttr -size 3 ".weightList[1370].weights[8:10]"  0.00065759432820951941 
		0.082035864997792127 0.91730654067399831;
	setAttr -size 3 ".weightList[1371].weights[8:10]"  0.00066038735831569397 
		0.082382202667322796 0.91695740997436148;
	setAttr -size 3 ".weightList[1372].weights[8:10]"  0.00063222195839315615 
		0.081769058602910463 0.91759871943869631;
	setAttr -size 3 ".weightList[1373].weights[8:10]"  0.00060585064023341089 
		0.081646806783385026 0.91774734257638169;
	setAttr -size 3 ".weightList[1374].weights[8:10]"  0.00075241176247171579 
		0.088831325485604976 0.91041626275192344;
	setAttr -size 3 ".weightList[1375].weights[8:10]"  0.00075802751937073369 
		0.089650866845227592 0.90959110563540169;
	setAttr -size 3 ".weightList[1376].weights[8:10]"  0.00079098864162692169 
		0.09090330423906294 0.90830570711931002;
	setAttr -size 3 ".weightList[1377].weights[8:10]"  0.00081632605277004097 
		0.092127595245556054 0.90705607870167404;
	setAttr -size 3 ".weightList[1378].weights[8:10]"  0.00083544543977489498 
		0.093112634222753593 0.90605192033747162;
	setAttr -size 3 ".weightList[1379].weights[8:10]"  0.00082377803726703283 
		0.091842989999852784 0.90733323196288018;
	setAttr -size 3 ".weightList[1380].weights[8:10]"  0.00078575127747117517 
		0.088936843486801351 0.91027740523572764;
	setAttr -size 3 ".weightList[1381].weights[8:10]"  0.000768055234745991 
		0.087444880643656256 0.91178706412159782;
	setAttr -size 3 ".weightList[1382].weights[8:10]"  0.00077187624720598833 
		0.087529602351615374 0.91169852140117857;
	setAttr -size 3 ".weightList[1383].weights[8:10]"  0.00078060687630339843 
		0.08809150943136064 0.91112788369233588;
	setAttr -size 3 ".weightList[1384].weights[8:10]"  0.00076740455524041285 
		0.087798187309986814 0.91143440813477261;
	setAttr -size 3 ".weightList[1385].weights[8:10]"  0.00076348265550636263 
		0.088204046417155374 0.9110324709273383;
	setAttr -size 3 ".weightList[1386].weights[8:10]"  0.0008519788765708364 
		0.092362669734352101 0.90678535138907712;
	setAttr -size 3 ".weightList[1387].weights[8:10]"  0.000861706692116407 
		0.092744682765560499 0.90639361054232304;
	setAttr -size 3 ".weightList[1388].weights[8:10]"  0.000879425826851254 
		0.093255176561987674 0.90586539761116103;
	setAttr -size 3 ".weightList[1389].weights[8:10]"  0.00089083225355454838 
		0.093721670237336532 0.90538749750910885;
	setAttr -size 3 ".weightList[1390].weights[8:10]"  0.00089566885691077028 
		0.093754561805251727 0.90534976933783751;
	setAttr -size 3 ".weightList[1391].weights[8:10]"  0.0008783870229992632 
		0.092598286994110934 0.90652332598288987;
	setAttr -size 3 ".weightList[1392].weights[8:10]"  0.00085454694111060717 
		0.091308868223661563 0.90783658483522767;
	setAttr -size 3 ".weightList[1393].weights[8:10]"  0.00084166082970507216 
		0.090716473872741482 0.90844186529755344;
	setAttr -size 3 ".weightList[1394].weights[8:10]"  0.00084629585023238542 
		0.090933007403574906 0.90822069674619255;
	setAttr -size 3 ".weightList[1395].weights[8:10]"  0.00085929485654096351 
		0.09150328847814973 0.90763741666530928;
	setAttr -size 3 ".weightList[1396].weights[8:10]"  0.0008708471901845156 
		0.092095235658743946 0.90703391715107151;
	setAttr -size 3 ".weightList[1397].weights[8:10]"  0.00086787229972196155 
		0.092458319445035866 0.90667380825524224;
	setAttr -size 3 ".weightList[1398].weights[8:10]"  2.2097003415159267e-005 
		0.017271823247609067 0.98270607974897572;
	setAttr -size 3 ".weightList[1399].weights[8:10]"  0.00089798114858858106 
		0.093484381441703332 0.90561763740970802;
	setAttr ".weightList[1400].weights[2]"  1;
	setAttr ".weightList[1401].weights[2]"  1;
	setAttr ".weightList[1402].weights[2]"  1;
	setAttr ".weightList[1403].weights[2]"  1;
	setAttr ".weightList[1404].weights[2]"  1;
	setAttr ".weightList[1405].weights[2]"  1;
	setAttr ".weightList[1406].weights[2]"  1;
	setAttr ".weightList[1407].weights[2]"  1;
	setAttr ".weightList[1408].weights[2]"  1;
	setAttr ".weightList[1409].weights[2]"  1;
	setAttr ".weightList[1410].weights[2]"  1;
	setAttr ".weightList[1411].weights[2]"  1;
	setAttr ".weightList[1412].weights[2]"  1;
	setAttr ".weightList[1413].weights[2]"  1;
	setAttr ".weightList[1414].weights[2]"  1;
	setAttr ".weightList[1415].weights[2]"  1;
	setAttr ".weightList[1416].weights[2]"  1;
	setAttr ".weightList[1417].weights[2]"  1;
	setAttr ".weightList[1418].weights[2]"  1;
	setAttr ".weightList[1419].weights[2]"  1;
	setAttr ".weightList[1420].weights[2]"  1;
	setAttr ".weightList[1421].weights[2]"  1;
	setAttr ".weightList[1422].weights[2]"  1;
	setAttr ".weightList[1423].weights[2]"  1;
	setAttr ".weightList[1424].weights[2]"  1;
	setAttr ".weightList[1425].weights[2]"  1;
	setAttr ".weightList[1426].weights[6]"  1;
	setAttr ".weightList[1427].weights[6]"  1;
	setAttr ".weightList[1428].weights[6]"  1;
	setAttr ".weightList[1429].weights[6]"  1;
	setAttr ".weightList[1430].weights[6]"  1;
	setAttr ".weightList[1431].weights[6]"  1;
	setAttr ".weightList[1432].weights[6]"  1;
	setAttr ".weightList[1433].weights[6]"  1;
	setAttr ".weightList[1434].weights[6]"  1;
	setAttr ".weightList[1435].weights[6]"  1;
	setAttr ".weightList[1436].weights[6]"  1;
	setAttr ".weightList[1437].weights[6]"  1;
	setAttr ".weightList[1438].weights[6]"  1;
	setAttr ".weightList[1439].weights[6]"  1;
	setAttr ".weightList[1440].weights[6]"  1;
	setAttr ".weightList[1441].weights[6]"  1;
	setAttr ".weightList[1442].weights[6]"  1;
	setAttr ".weightList[1443].weights[6]"  1;
	setAttr ".weightList[1444].weights[6]"  1;
	setAttr ".weightList[1445].weights[6]"  1;
	setAttr ".weightList[1446].weights[6]"  1;
	setAttr ".weightList[1447].weights[6]"  1;
	setAttr ".weightList[1448].weights[6]"  1;
	setAttr ".weightList[1449].weights[6]"  1;
	setAttr ".weightList[1450].weights[6]"  1;
	setAttr ".weightList[1451].weights[6]"  1;
	setAttr ".weightList[1452].weights[6]"  1;
	setAttr ".weightList[1453].weights[6]"  1;
	setAttr ".weightList[1454].weights[6]"  1;
	setAttr ".weightList[1455].weights[6]"  1;
	setAttr ".weightList[1456].weights[6]"  1;
	setAttr ".weightList[1457].weights[6]"  1;
	setAttr ".weightList[1458].weights[6]"  1;
	setAttr ".weightList[1459].weights[6]"  1;
	setAttr ".weightList[1460].weights[6]"  1;
	setAttr ".weightList[1461].weights[6]"  1;
	setAttr ".weightList[1462].weights[6]"  1;
	setAttr ".weightList[1463].weights[6]"  1;
	setAttr ".weightList[1464].weights[6]"  1;
	setAttr ".weightList[1465].weights[6]"  1;
	setAttr ".weightList[1466].weights[6]"  1;
	setAttr ".weightList[1467].weights[6]"  1;
	setAttr ".weightList[1468].weights[6]"  1;
	setAttr ".weightList[1469].weights[6]"  1;
	setAttr ".weightList[1470].weights[6]"  1;
	setAttr ".weightList[1471].weights[6]"  1;
	setAttr ".weightList[1472].weights[6]"  1;
	setAttr ".weightList[1473].weights[6]"  1;
	setAttr ".weightList[1474].weights[6]"  1;
	setAttr ".weightList[1475].weights[6]"  1;
	setAttr ".weightList[1476].weights[6]"  1;
	setAttr ".weightList[1477].weights[6]"  1;
	setAttr ".weightList[1478].weights[6]"  1;
	setAttr ".weightList[1479].weights[6]"  1;
	setAttr ".weightList[1480].weights[6]"  1;
	setAttr ".weightList[1481].weights[6]"  1;
	setAttr ".weightList[1482].weights[6]"  1;
	setAttr ".weightList[1483].weights[6]"  1;
	setAttr ".weightList[1484].weights[6]"  1;
	setAttr ".weightList[1485].weights[6]"  1;
	setAttr ".weightList[1486].weights[6]"  1;
	setAttr ".weightList[1487].weights[6]"  1;
	setAttr ".weightList[1488].weights[6]"  1;
	setAttr ".weightList[1489].weights[6]"  1;
	setAttr ".weightList[1490].weights[6]"  1;
	setAttr ".weightList[1491].weights[6]"  1;
	setAttr ".weightList[1492].weights[6]"  1;
	setAttr ".weightList[1493].weights[6]"  1;
	setAttr ".weightList[1494].weights[6]"  1;
	setAttr ".weightList[1495].weights[6]"  1;
	setAttr ".weightList[1496].weights[6]"  1;
	setAttr ".weightList[1497].weights[6]"  1;
	setAttr ".weightList[1498].weights[6]"  1;
	setAttr ".weightList[1499].weights[6]"  1;
	setAttr ".weightList[1500].weights[6]"  1;
	setAttr ".weightList[1501].weights[6]"  1;
	setAttr ".weightList[1502].weights[6]"  1;
	setAttr ".weightList[1503].weights[6]"  1;
	setAttr ".weightList[1504].weights[6]"  1;
	setAttr ".weightList[1505].weights[6]"  1;
	setAttr ".weightList[1506].weights[6]"  1;
	setAttr ".weightList[1507].weights[6]"  1;
	setAttr ".weightList[1508].weights[6]"  1;
	setAttr ".weightList[1509].weights[6]"  1;
	setAttr ".weightList[1510].weights[6]"  1;
	setAttr ".weightList[1511].weights[6]"  1;
	setAttr ".weightList[1512].weights[6]"  1;
	setAttr ".weightList[1513].weights[6]"  1;
	setAttr ".weightList[1514].weights[6]"  1;
	setAttr ".weightList[1515].weights[6]"  1;
	setAttr ".weightList[1516].weights[6]"  1;
	setAttr ".weightList[1517].weights[6]"  1;
	setAttr ".weightList[1518].weights[6]"  1;
	setAttr ".weightList[1519].weights[6]"  1;
	setAttr ".weightList[1520].weights[6]"  1;
	setAttr ".weightList[1521].weights[6]"  1;
	setAttr ".weightList[1522].weights[6]"  1;
	setAttr ".weightList[1523].weights[6]"  1;
	setAttr ".weightList[1524].weights[6]"  1;
	setAttr ".weightList[1525].weights[6]"  1;
	setAttr ".weightList[1526].weights[6]"  1;
	setAttr ".weightList[1527].weights[6]"  1;
	setAttr ".weightList[1528].weights[6]"  1;
	setAttr ".weightList[1529].weights[6]"  1;
	setAttr ".weightList[1530].weights[6]"  1;
	setAttr ".weightList[1531].weights[6]"  1;
	setAttr ".weightList[1532].weights[6]"  1;
	setAttr ".weightList[1533].weights[6]"  1;
	setAttr ".weightList[1534].weights[6]"  1;
	setAttr ".weightList[1535].weights[6]"  1;
	setAttr -size 3 ".weightList[1536].weights[8:10]"  0.0011505731990992666 
		0.10552057378897103 0.89332885301192966;
	setAttr -size 3 ".weightList[1537].weights[8:10]"  0.0010832388744128224 
		0.10314079204792286 0.89577596907766432;
	setAttr -size 3 ".weightList[1538].weights[8:10]"  0.0010229704836015553 
		0.10096679378909806 0.89801023572730043;
	setAttr -size 3 ".weightList[1539].weights[8:10]"  0.0010073486208336971 
		0.10037708501976196 0.89861556635940432;
	setAttr -size 3 ".weightList[1540].weights[8:10]"  0.0010421687120238184 
		0.10167111446262694 0.89728671682534922;
	setAttr -size 3 ".weightList[1541].weights[8:10]"  0.001101157225399453 
		0.10382539183386338 0.8950734509407372;
	setAttr -size 3 ".weightList[1542].weights[8:10]"  0.001161705256597492 
		0.10594676241184672 0.89289153233155594;
	setAttr -size 3 ".weightList[1543].weights[8:10]"  0.0011857388641218433 
		0.10676365863585741 0.89205060250002077;
	setAttr -size 3 ".weightList[1544].weights[8:10]"  0.0011336574529601353 
		0.10494874540454081 0.89391759714249897;
	setAttr -size 3 ".weightList[1545].weights[8:10]"  0.0010541174889887217 
		0.10211339564886129 0.89683248686215;
	setAttr -size 3 ".weightList[1546].weights[8:10]"  0.00098075865460892 
		0.099406401710569914 0.8996128396348213;
	setAttr -size 3 ".weightList[1547].weights[8:10]"  0.00094869013032446918 
		0.098148787324778219 0.90090252254489733;
	setAttr -size 3 ".weightList[1548].weights[8:10]"  0.0009976053250208975 
		0.099914745477394123 0.89908764919758499;
	setAttr -size 3 ".weightList[1549].weights[8:10]"  0.001082703276015921 
		0.10305899037239552 0.8958583063515887;
	setAttr -size 3 ".weightList[1550].weights[8:10]"  0.0011536738645408901 
		0.10559241689159955 0.8932539092438595;
	setAttr -size 3 ".weightList[1551].weights[8:10]"  0.0011827102786708176 
		0.10662087107850549 0.89219641864282384;
	setAttr -size 3 ".weightList[1552].weights[8:10]"  0.0011335420406449975 
		0.10490903344132384 0.89395742451803129;
	setAttr -size 3 ".weightList[1553].weights[8:10]"  0.0010288043430980078 
		0.10123156885715784 0.89773962679974417;
	setAttr -size 3 ".weightList[1554].weights[8:10]"  0.00094832201622200717 
		0.098226195385874182 0.90082548259790374;
	setAttr -size 3 ".weightList[1555].weights[8:10]"  0.00090337032450534167 
		0.096451187768929705 0.90264544190656482;
	setAttr -size 3 ".weightList[1556].weights[8:10]"  0.0009502555778677698 
		0.098117216286597517 0.90093252813553482;
	setAttr -size 3 ".weightList[1557].weights[8:10]"  0.0010764691683594891 
		0.10274084907010794 0.8961826817615326;
	setAttr -size 3 ".weightList[1558].weights[8:10]"  0.0011734912658130352 
		0.10620597474007605 0.8926205339941109;
	setAttr -size 3 ".weightList[1559].weights[8:10]"  0.0012070597730355437 
		0.10736324478263316 0.89142969544433126;
	setAttr -size 3 ".weightList[1560].weights[8:10]"  0.0011284981893906641 
		0.10462222270840194 0.89424927910220731;
	setAttr -size 3 ".weightList[1561].weights[8:10]"  0.0010092435835860878 
		0.10042214265147609 0.8985686137649378;
	setAttr -size 3 ".weightList[1562].weights[8:10]"  0.000924148860229245 
		0.097241757317391375 0.90183409382237945;
	setAttr -size 3 ".weightList[1563].weights[8:10]"  0.00087730131626571949 
		0.095411242602405882 0.90371145608132841;
	setAttr -size 3 ".weightList[1564].weights[8:10]"  0.00089855948532118932 
		0.096196466515995227 0.90290497399868375;
	setAttr -size 3 ".weightList[1565].weights[8:10]"  0.001014908711495574 
		0.10053694059910581 0.89844815068939865;
	setAttr -size 3 ".weightList[1566].weights[8:10]"  0.0011403774095715162 
		0.10507634336504561 0.89378327922538292;
	setAttr -size 3 ".weightList[1567].weights[8:10]"  0.0011969127886724549 
		0.10698579237608227 0.8918172948352453;
	setAttr -size 3 ".weightList[1568].weights[8:10]"  0.0010479420495602939 
		0.10151768393110604 0.89743437401933357;
	setAttr -size 3 ".weightList[1569].weights[8:10]"  0.00094532567506083525 
		0.097700651304386585 0.90135402302055256;
	setAttr -size 3 ".weightList[1570].weights[8:10]"  0.00086174278085284449 
		0.094456914784437518 0.90468134243470955;
	setAttr -size 3 ".weightList[1571].weights[8:10]"  0.00082173805196962481 
		0.092895430652734728 0.90628283129529563;
	setAttr -size 3 ".weightList[1572].weights[8:10]"  0.00082999709323509669 
		0.093322350370655435 0.90584765253610944;
	setAttr -size 3 ".weightList[1573].weights[8:10]"  0.00089961383983670914 
		0.096101692546156359 0.90299869361400686;
	setAttr -size 3 ".weightList[1574].weights[8:10]"  0.0010087530838068244 
		0.1002710847765666 0.89872016213962647;
	setAttr -size 3 ".weightList[1575].weights[8:10]"  0.001083169230613654 
		0.10290901064220145 0.89600782012718494;
	setAttr -size 3 ".weightList[1576].weights[8:10]"  0.00087982315232819309 
		0.094782299547259849 0.90433787730041193;
	setAttr -size 3 ".weightList[1577].weights[8:10]"  0.0008109583418469613 
		0.091929174912722789 0.90725986674543024;
	setAttr -size 3 ".weightList[1578].weights[8:10]"  0.00074361181668347587 
		0.089092666854576785 0.91016372132873968;
	setAttr -size 3 ".weightList[1579].weights[8:10]"  0.00070782619930090341 
		0.087543922386731921 0.91174825141396709;
	setAttr -size 3 ".weightList[1580].weights[8:10]"  0.00071828057042966429 
		0.088145576887341467 0.91113614254222886;
	setAttr -size 3 ".weightList[1581].weights[8:10]"  0.00076016586363420791 
		0.090089647721173088 0.90915018641519274;
	setAttr -size 3 ".weightList[1582].weights[8:10]"  0.00082938401086982139 
		0.093025669894232305 0.90614494609489793;
	setAttr -size 3 ".weightList[1583].weights[8:10]"  0.00089180118536274133 
		0.095453260284831573 0.90365493852980572;
	setAttr -size 3 ".weightList[1584].weights[8:10]"  0.00071388343391560484 
		0.087599379688358833 0.91168673687772561;
	setAttr -size 3 ".weightList[1585].weights[8:10]"  0.00067306621889891066 
		0.085671753543761192 0.91365518023733983;
	setAttr -size 3 ".weightList[1586].weights[8:10]"  0.00063291493937997598 
		0.083826414812358765 0.91554067024826136;
	setAttr -size 3 ".weightList[1587].weights[8:10]"  0.00060450780360334696 
		0.082464023314567245 0.91693146888182941;
	setAttr -size 3 ".weightList[1588].weights[8:10]"  0.00060580208325246342 
		0.082566105442121437 0.91682809247462627;
	setAttr -size 3 ".weightList[1589].weights[8:10]"  0.00063458446983034118 
		0.084052726009569798 0.91531268952060008;
	setAttr -size 3 ".weightList[1590].weights[8:10]"  0.00067575182277622176 
		0.086067015365804952 0.9132572328114188;
	setAttr -size 3 ".weightList[1591].weights[8:10]"  0.00071488828165070439 
		0.087801357330752061 0.91148375438759721;
	setAttr -size 3 ".weightList[1592].weights[8:10]"  0.00058839693027512769 
		0.081617527017419117 0.9177940760523059;
	setAttr -size 3 ".weightList[1593].weights[8:10]"  0.00057057681096269386 
		0.080665499336439725 0.91876392385259742;
	setAttr -size 3 ".weightList[1594].weights[8:10]"  0.0005522063265027933 
		0.079705865053175312 0.919741928620322;
	setAttr -size 3 ".weightList[1595].weights[8:10]"  0.00054062550396923135 
		0.079094797194123767 0.92036457730190702;
	setAttr -size 3 ".weightList[1596].weights[8:10]"  0.00053668401223160673 
		0.078900760601241723 0.92056255538652665;
	setAttr -size 3 ".weightList[1597].weights[8:10]"  0.00054657144733626822 
		0.079444373314303249 0.92000905523836063;
	setAttr -size 3 ".weightList[1598].weights[8:10]"  0.00056623355414224888 
		0.080503040080470226 0.91893072636538753;
	setAttr -size 3 ".weightList[1599].weights[8:10]"  0.00058561575167023305 
		0.081514795422106656 0.91789958882622302;
	setAttr -size 3 ".weightList[1600].weights[8:10]"  0.00053743153827127456 
		0.078949202905154475 0.92051336555657415;
	setAttr -size 2 ".weightList[1601].weights";
	setAttr ".weightList[1601].weights[8]" 0.018246842658913038;
	setAttr ".weightList[1601].weights[10]" 0.98175315734108703;
	setAttr -size 2 ".weightList[1602].weights";
	setAttr ".weightList[1602].weights[8]" 0.018553391970937878;
	setAttr ".weightList[1602].weights[10]" 0.98144660802906214;
	setAttr -size 2 ".weightList[1603].weights";
	setAttr ".weightList[1603].weights[8]" 0.014332995080778012;
	setAttr ".weightList[1603].weights[10]" 0.98566700491922199;
	setAttr -size 2 ".weightList[1604].weights";
	setAttr ".weightList[1604].weights[8]" 0.014807947936822777;
	setAttr ".weightList[1604].weights[10]" 0.98519205206317717;
	setAttr -size 2 ".weightList[1605].weights";
	setAttr ".weightList[1605].weights[8]" 0.014101605051528418;
	setAttr ".weightList[1605].weights[10]" 0.98589839494847153;
	setAttr -size 2 ".weightList[1606].weights";
	setAttr ".weightList[1606].weights[8]" 0.014771713502694499;
	setAttr ".weightList[1606].weights[10]" 0.98522828649730554;
	setAttr -size 2 ".weightList[1607].weights";
	setAttr ".weightList[1607].weights[8]" 0.017634687224134644;
	setAttr ".weightList[1607].weights[10]" 0.98236531277586536;
	setAttr -size 2 ".weightList[1608].weights";
	setAttr ".weightList[1608].weights[8]" 0.01857766281429999;
	setAttr ".weightList[1608].weights[10]" 0.98142233718570004;
	setAttr -size 2 ".weightList[1609].weights";
	setAttr ".weightList[1609].weights[8]" 0.019485843962126683;
	setAttr ".weightList[1609].weights[10]" 0.98051415603787329;
	setAttr -size 2 ".weightList[1610].weights";
	setAttr ".weightList[1610].weights[8]" 0.020455281864129937;
	setAttr ".weightList[1610].weights[10]" 0.97954471813587007;
	setAttr -size 2 ".weightList[1611].weights";
	setAttr ".weightList[1611].weights[8]" 0.020314676718647982;
	setAttr ".weightList[1611].weights[10]" 0.97968532328135205;
	setAttr -size 2 ".weightList[1612].weights";
	setAttr ".weightList[1612].weights[8]" 0.020323747232912751;
	setAttr ".weightList[1612].weights[10]" 0.97967625276708725;
	setAttr -size 2 ".weightList[1613].weights";
	setAttr ".weightList[1613].weights[8]" 0.018147369309068566;
	setAttr ".weightList[1613].weights[10]" 0.98185263069093143;
	setAttr -size 2 ".weightList[1614].weights";
	setAttr ".weightList[1614].weights[8]" 0.014331855408527452;
	setAttr ".weightList[1614].weights[10]" 0.98566814459147256;
	setAttr -size 2 ".weightList[1615].weights";
	setAttr ".weightList[1615].weights[8]" 0.014789789537452335;
	setAttr ".weightList[1615].weights[10]" 0.98521021046254764;
	setAttr -size 2 ".weightList[1616].weights";
	setAttr ".weightList[1616].weights[8]" 0.01810335403696731;
	setAttr ".weightList[1616].weights[10]" 0.98189664596303272;
	setAttr -size 2 ".weightList[1617].weights";
	setAttr ".weightList[1617].weights[8]" 0.0196571040666461;
	setAttr ".weightList[1617].weights[10]" 0.98034289593335389;
	setAttr -size 2 ".weightList[1618].weights";
	setAttr ".weightList[1618].weights[8]" 0.020006286966929784;
	setAttr ".weightList[1618].weights[10]" 0.97999371303307026;
	setAttr -size 2 ".weightList[1619].weights";
	setAttr ".weightList[1619].weights[8]" 0.01781146638607746;
	setAttr ".weightList[1619].weights[10]" 0.98218853361392255;
	setAttr -size 2 ".weightList[1620].weights";
	setAttr ".weightList[1620].weights[8]" 0.014508718099040117;
	setAttr ".weightList[1620].weights[10]" 0.98549128190095991;
	setAttr -size 2 ".weightList[1621].weights";
	setAttr ".weightList[1621].weights[8]" 0.014278075161889461;
	setAttr ".weightList[1621].weights[10]" 0.9857219248381105;
	setAttr -size 2 ".weightList[1622].weights";
	setAttr ".weightList[1622].weights[8]" 0.017634303201841919;
	setAttr ".weightList[1622].weights[10]" 0.98236569679815811;
	setAttr -size 2 ".weightList[1623].weights";
	setAttr ".weightList[1623].weights[8]" 0.019224797954084986;
	setAttr ".weightList[1623].weights[10]" 0.98077520204591506;
	setAttr -size 2 ".weightList[1624].weights";
	setAttr ".weightList[1624].weights[8]" 0.019825967124994678;
	setAttr ".weightList[1624].weights[10]" 0.98017403287500537;
	setAttr -size 2 ".weightList[1625].weights";
	setAttr ".weightList[1625].weights[8]" 0.018515395132331226;
	setAttr ".weightList[1625].weights[10]" 0.98148460486766875;
	setAttr -size 2 ".weightList[1626].weights";
	setAttr ".weightList[1626].weights[8]" 0.015066520244691246;
	setAttr ".weightList[1626].weights[10]" 0.98493347975530876;
	setAttr -size 2 ".weightList[1627].weights";
	setAttr ".weightList[1627].weights[8]" 0.014067230905318272;
	setAttr ".weightList[1627].weights[10]" 0.98593276909468175;
	setAttr -size 2 ".weightList[1628].weights";
	setAttr ".weightList[1628].weights[8]" 0.013642935519568565;
	setAttr ".weightList[1628].weights[10]" 0.98635706448043148;
	setAttr -size 2 ".weightList[1629].weights";
	setAttr ".weightList[1629].weights[8]" 0.014435931401900909;
	setAttr ".weightList[1629].weights[10]" 0.98556406859809909;
	setAttr -size 2 ".weightList[1630].weights";
	setAttr ".weightList[1630].weights[8]" 0.017731123669741441;
	setAttr ".weightList[1630].weights[10]" 0.98226887633025861;
	setAttr -size 2 ".weightList[1631].weights";
	setAttr ".weightList[1631].weights[8]" 0.019770591753703427;
	setAttr ".weightList[1631].weights[10]" 0.98022940824629656;
	setAttr -size 2 ".weightList[1632].weights";
	setAttr ".weightList[1632].weights[8]" 0.019949999982166441;
	setAttr ".weightList[1632].weights[10]" 0.9800500000178336;
	setAttr -size 2 ".weightList[1633].weights";
	setAttr ".weightList[1633].weights[8]" 0.02025073331970818;
	setAttr ".weightList[1633].weights[10]" 0.97974926668029183;
	setAttr -size 2 ".weightList[1634].weights";
	setAttr ".weightList[1634].weights[8]" 0.019862287686220576;
	setAttr ".weightList[1634].weights[10]" 0.98013771231377944;
	setAttr -size 2 ".weightList[1635].weights";
	setAttr ".weightList[1635].weights[8]" 0.014132511163022105;
	setAttr ".weightList[1635].weights[10]" 0.98586748883697795;
	setAttr -size 2 ".weightList[1636].weights";
	setAttr ".weightList[1636].weights[8]" 0.013614820954317793;
	setAttr ".weightList[1636].weights[10]" 0.98638517904568224;
	setAttr -size 2 ".weightList[1637].weights";
	setAttr ".weightList[1637].weights[8]" 0.013907675584088534;
	setAttr ".weightList[1637].weights[10]" 0.98609232441591155;
	setAttr -size 2 ".weightList[1638].weights";
	setAttr ".weightList[1638].weights[8]" 0.014695459609637784;
	setAttr ".weightList[1638].weights[10]" 0.98530454039036219;
	setAttr -size 2 ".weightList[1639].weights";
	setAttr ".weightList[1639].weights[8]" 0.017707592441923291;
	setAttr ".weightList[1639].weights[10]" 0.98229240755807679;
	setAttr -size 2 ".weightList[1640].weights";
	setAttr ".weightList[1640].weights[8]" 0.019266406008317367;
	setAttr ".weightList[1640].weights[10]" 0.98073359399168258;
	setAttr -size 2 ".weightList[1641].weights";
	setAttr ".weightList[1641].weights[8]" 0.019767214029634082;
	setAttr ".weightList[1641].weights[10]" 0.98023278597036589;
	setAttr -size 2 ".weightList[1642].weights";
	setAttr ".weightList[1642].weights[8]" 0.020211710598504854;
	setAttr ".weightList[1642].weights[10]" 0.9797882894014952;
	setAttr -size 2 ".weightList[1643].weights";
	setAttr ".weightList[1643].weights[8]" 0.019952130359288601;
	setAttr ".weightList[1643].weights[10]" 0.98004786964071144;
	setAttr -size 2 ".weightList[1644].weights";
	setAttr ".weightList[1644].weights[8]" 0.017933257393522539;
	setAttr ".weightList[1644].weights[10]" 0.98206674260647753;
	setAttr -size 2 ".weightList[1645].weights";
	setAttr ".weightList[1645].weights[8]" 0.0058544701785129445;
	setAttr ".weightList[1645].weights[10]" 0.99414552982148707;
	setAttr -size 2 ".weightList[1646].weights";
	setAttr ".weightList[1646].weights[8]" 0.0058111909823377475;
	setAttr ".weightList[1646].weights[10]" 0.99418880901766227;
	setAttr -size 2 ".weightList[1647].weights";
	setAttr ".weightList[1647].weights[8]" 0.0059026633889205727;
	setAttr ".weightList[1647].weights[10]" 0.99409733661107946;
	setAttr -size 2 ".weightList[1648].weights";
	setAttr ".weightList[1648].weights[8]" 0.005943006595068856;
	setAttr ".weightList[1648].weights[10]" 0.99405699340493114;
	setAttr -size 2 ".weightList[1649].weights";
	setAttr ".weightList[1649].weights[8]" 0.0051896681314924495;
	setAttr ".weightList[1649].weights[10]" 0.99481033186850754;
	setAttr -size 2 ".weightList[1650].weights";
	setAttr ".weightList[1650].weights[8]" 0.005191774077225742;
	setAttr ".weightList[1650].weights[10]" 0.99480822592277429;
	setAttr -size 2 ".weightList[1651].weights";
	setAttr ".weightList[1651].weights[8]" 0.0052624279747614149;
	setAttr ".weightList[1651].weights[10]" 0.9947375720252386;
	setAttr -size 2 ".weightList[1652].weights";
	setAttr ".weightList[1652].weights[8]" 0.005366691750271978;
	setAttr ".weightList[1652].weights[10]" 0.99463330824972807;
	setAttr -size 2 ".weightList[1653].weights";
	setAttr ".weightList[1653].weights[8]" 0.0035578324633741224;
	setAttr ".weightList[1653].weights[10]" 0.99644216753662584;
	setAttr -size 2 ".weightList[1654].weights";
	setAttr ".weightList[1654].weights[8]" 0.0036375497805465474;
	setAttr ".weightList[1654].weights[10]" 0.99636245021945347;
	setAttr -size 2 ".weightList[1655].weights";
	setAttr ".weightList[1655].weights[8]" 0.0035910169890636056;
	setAttr ".weightList[1655].weights[10]" 0.9964089830109365;
	setAttr -size 2 ".weightList[1656].weights";
	setAttr ".weightList[1656].weights[8]" 0.0037692462607853043;
	setAttr ".weightList[1656].weights[10]" 0.99623075373921466;
	setAttr -size 2 ".weightList[1657].weights";
	setAttr ".weightList[1657].weights[8]" 0.0028568658285636882;
	setAttr ".weightList[1657].weights[10]" 0.9971431341714363;
	setAttr -size 2 ".weightList[1658].weights";
	setAttr ".weightList[1658].weights[8]" 0.0028670033617426687;
	setAttr ".weightList[1658].weights[10]" 0.99713299663825739;
	setAttr -size 2 ".weightList[1659].weights";
	setAttr ".weightList[1659].weights[8]" 0.0028197178233357605;
	setAttr ".weightList[1659].weights[10]" 0.99718028217666421;
	setAttr -size 2 ".weightList[1660].weights";
	setAttr ".weightList[1660].weights[8]" 0.0029778431829198962;
	setAttr ".weightList[1660].weights[10]" 0.99702215681708006;
	setAttr -size 2 ".weightList[1661].weights";
	setAttr ".weightList[1661].weights[8]" 0.0028576133666448449;
	setAttr ".weightList[1661].weights[10]" 0.99714238663335519;
	setAttr -size 2 ".weightList[1662].weights";
	setAttr ".weightList[1662].weights[8]" 0.0027356775546487173;
	setAttr ".weightList[1662].weights[10]" 0.99726432244535124;
	setAttr -size 2 ".weightList[1663].weights";
	setAttr ".weightList[1663].weights[8]" 0.002740829491667777;
	setAttr ".weightList[1663].weights[10]" 0.99725917050833224;
	setAttr -size 2 ".weightList[1664].weights";
	setAttr ".weightList[1664].weights[8]" 0.0029580214941957784;
	setAttr ".weightList[1664].weights[10]" 0.99704197850580423;
	setAttr -size 2 ".weightList[1665].weights";
	setAttr ".weightList[1665].weights[8]" 0.0058383429434373775;
	setAttr ".weightList[1665].weights[10]" 0.99416165705656268;
	setAttr -size 2 ".weightList[1666].weights";
	setAttr ".weightList[1666].weights[8]" 0.0059835542695485123;
	setAttr ".weightList[1666].weights[10]" 0.99401644573045156;
	setAttr -size 2 ".weightList[1667].weights";
	setAttr ".weightList[1667].weights[8]" 0.0058203404785760922;
	setAttr ".weightList[1667].weights[10]" 0.99417965952142395;
	setAttr -size 2 ".weightList[1668].weights";
	setAttr ".weightList[1668].weights[8]" 0.0057063769455651973;
	setAttr ".weightList[1668].weights[10]" 0.99429362305443481;
	setAttr -size 2 ".weightList[1669].weights";
	setAttr ".weightList[1669].weights[8]" 0.0078258521856766732;
	setAttr ".weightList[1669].weights[10]" 0.99217414781432323;
	setAttr -size 2 ".weightList[1670].weights";
	setAttr ".weightList[1670].weights[8]" 0.0079698047290591122;
	setAttr ".weightList[1670].weights[10]" 0.99203019527094094;
	setAttr -size 2 ".weightList[1671].weights";
	setAttr ".weightList[1671].weights[8]" 0.0075921608895505545;
	setAttr ".weightList[1671].weights[10]" 0.9924078391104495;
	setAttr -size 2 ".weightList[1672].weights";
	setAttr ".weightList[1672].weights[8]" 0.007351798847788543;
	setAttr ".weightList[1672].weights[10]" 0.99264820115221142;
	setAttr -size 2 ".weightList[1673].weights";
	setAttr ".weightList[1673].weights[8]" 0.0054805707872501172;
	setAttr ".weightList[1673].weights[10]" 0.99451942921274983;
	setAttr -size 2 ".weightList[1674].weights";
	setAttr ".weightList[1674].weights[8]" 0.00434333422586219;
	setAttr ".weightList[1674].weights[10]" 0.99565666577413781;
	setAttr -size 2 ".weightList[1675].weights";
	setAttr ".weightList[1675].weights[8]" 0.0030758862914054327;
	setAttr ".weightList[1675].weights[10]" 0.99692411370859457;
	setAttr -size 2 ".weightList[1676].weights";
	setAttr ".weightList[1676].weights[8]" 0.0027201730990250488;
	setAttr ".weightList[1676].weights[10]" 0.99727982690097494;
	setAttr -size 2 ".weightList[1677].weights";
	setAttr ".weightList[1677].weights[8]" 0.002781155472626997;
	setAttr ".weightList[1677].weights[10]" 0.99721884452737297;
	setAttr -size 2 ".weightList[1678].weights";
	setAttr ".weightList[1678].weights[8]" 0.0028093484132487648;
	setAttr ".weightList[1678].weights[10]" 0.99719065158675124;
	setAttr -size 2 ".weightList[1679].weights";
	setAttr ".weightList[1679].weights[8]" 0.0028236698014503605;
	setAttr ".weightList[1679].weights[10]" 0.99717633019854968;
	setAttr -size 2 ".weightList[1680].weights";
	setAttr ".weightList[1680].weights[8]" 0.0033444801329056552;
	setAttr ".weightList[1680].weights[10]" 0.99665551986709433;
	setAttr -size 2 ".weightList[1681].weights";
	setAttr ".weightList[1681].weights[8]" 0.0047014246797709002;
	setAttr ".weightList[1681].weights[10]" 0.99529857532022914;
	setAttr -size 2 ".weightList[1682].weights";
	setAttr ".weightList[1682].weights[8]" 0.0055420579234900661;
	setAttr ".weightList[1682].weights[10]" 0.99445794207650995;
	setAttr -size 2 ".weightList[1683].weights";
	setAttr ".weightList[1683].weights[8]" 0.0057282888862084293;
	setAttr ".weightList[1683].weights[10]" 0.99427171111379153;
	setAttr -size 2 ".weightList[1684].weights";
	setAttr ".weightList[1684].weights[8]" 0.0076006330815165304;
	setAttr ".weightList[1684].weights[10]" 0.99239936691848352;
	setAttr -size 2 ".weightList[1685].weights";
	setAttr ".weightList[1685].weights[8]" 0.008081643039351008;
	setAttr ".weightList[1685].weights[10]" 0.99191835696064901;
	setAttr -size 2 ".weightList[1686].weights";
	setAttr ".weightList[1686].weights[8]" 0.0058478787644765445;
	setAttr ".weightList[1686].weights[10]" 0.99415212123552343;
	setAttr -size 2 ".weightList[1687].weights";
	setAttr ".weightList[1687].weights[8]" 0.0055711282663163456;
	setAttr ".weightList[1687].weights[10]" 0.99442887173368366;
	setAttr -size 2 ".weightList[1688].weights";
	setAttr ".weightList[1688].weights[8]" 0.0046746054935392;
	setAttr ".weightList[1688].weights[10]" 0.99532539450646085;
	setAttr -size 2 ".weightList[1689].weights";
	setAttr ".weightList[1689].weights[8]" 0.0033053060766771508;
	setAttr ".weightList[1689].weights[10]" 0.99669469392332288;
	setAttr -size 2 ".weightList[1690].weights";
	setAttr ".weightList[1690].weights[8]" 0.0027657483716632767;
	setAttr ".weightList[1690].weights[10]" 0.99723425162833668;
	setAttr -size 2 ".weightList[1691].weights";
	setAttr ".weightList[1691].weights[8]" 0.0026943340708097474;
	setAttr ".weightList[1691].weights[10]" 0.99730566592919023;
	setAttr -size 2 ".weightList[1692].weights";
	setAttr ".weightList[1692].weights[8]" 0.0027356779463956044;
	setAttr ".weightList[1692].weights[10]" 0.99726432205360438;
	setAttr -size 2 ".weightList[1693].weights";
	setAttr ".weightList[1693].weights[8]" 0.0027304116906170261;
	setAttr ".weightList[1693].weights[10]" 0.99726958830938295;
	setAttr -size 2 ".weightList[1694].weights";
	setAttr ".weightList[1694].weights[8]" 0.0030453103024508563;
	setAttr ".weightList[1694].weights[10]" 0.99695468969754919;
	setAttr -size 2 ".weightList[1695].weights";
	setAttr ".weightList[1695].weights[8]" 0.0043009338145968872;
	setAttr ".weightList[1695].weights[10]" 0.99569906618540316;
	setAttr -size 2 ".weightList[1696].weights";
	setAttr ".weightList[1696].weights[8]" 0.0055005195207421731;
	setAttr ".weightList[1696].weights[10]" 0.99449948047925785;
	setAttr -size 2 ".weightList[1697].weights";
	setAttr ".weightList[1697].weights[8]" 0.0059148819091489413;
	setAttr ".weightList[1697].weights[10]" 0.99408511809085109;
	setAttr -size 2 ".weightList[1698].weights";
	setAttr ".weightList[1698].weights[8]" 0.0078678116328674812;
	setAttr ".weightList[1698].weights[10]" 0.99213218836713257;
	setAttr -size 2 ".weightList[1699].weights";
	setAttr ".weightList[1699].weights[8]" 0.0078058201469335536;
	setAttr ".weightList[1699].weights[10]" 0.99219417985306646;
	setAttr -size 2 ".weightList[1700].weights";
	setAttr ".weightList[1700].weights[8]" 0.0059429625231796372;
	setAttr ".weightList[1700].weights[10]" 0.99405703747682039;
	setAttr -size 2 ".weightList[1701].weights";
	setAttr ".weightList[1701].weights[8]" 0.0078019648238799822;
	setAttr ".weightList[1701].weights[10]" 0.99219803517612004;
	setAttr -size 2 ".weightList[1702].weights";
	setAttr ".weightList[1702].weights[8]" 0.0082031507367669176;
	setAttr ".weightList[1702].weights[10]" 0.99179684926323308;
	setAttr -size 2 ".weightList[1703].weights";
	setAttr ".weightList[1703].weights[8]" 0.0083403859747964975;
	setAttr ".weightList[1703].weights[10]" 0.99165961402520353;
	setAttr -size 2 ".weightList[1704].weights";
	setAttr ".weightList[1704].weights[8]" 0.0078020397469387723;
	setAttr ".weightList[1704].weights[10]" 0.99219796025306128;
	setAttr -size 2 ".weightList[1705].weights";
	setAttr ".weightList[1705].weights[8]" 0.0057546690760176466;
	setAttr ".weightList[1705].weights[10]" 0.99424533092398237;
	setAttr -size 2 ".weightList[1706].weights";
	setAttr ".weightList[1706].weights[8]" 0.005441995609729946;
	setAttr ".weightList[1706].weights[10]" 0.99455800439027009;
	setAttr -size 2 ".weightList[1707].weights";
	setAttr ".weightList[1707].weights[8]" 0.0042618246620881274;
	setAttr ".weightList[1707].weights[10]" 0.99573817533791187;
	setAttr -size 2 ".weightList[1708].weights";
	setAttr ".weightList[1708].weights[8]" 0.003043816129750306;
	setAttr ".weightList[1708].weights[10]" 0.99695618387024965;
	setAttr -size 2 ".weightList[1709].weights";
	setAttr ".weightList[1709].weights[8]" 0.0028379850591455369;
	setAttr ".weightList[1709].weights[10]" 0.99716201494085444;
	setAttr -size 2 ".weightList[1710].weights";
	setAttr ".weightList[1710].weights[8]" 0.0028699336692002554;
	setAttr ".weightList[1710].weights[10]" 0.99713006633079981;
	setAttr -size 2 ".weightList[1711].weights";
	setAttr ".weightList[1711].weights[8]" 0.0028129752780599311;
	setAttr ".weightList[1711].weights[10]" 0.9971870247219401;
	setAttr -size 2 ".weightList[1712].weights";
	setAttr ".weightList[1712].weights[8]" 0.0027070876343961792;
	setAttr ".weightList[1712].weights[10]" 0.9972929123656038;
	setAttr -size 2 ".weightList[1713].weights";
	setAttr ".weightList[1713].weights[8]" 0.0027404412435580528;
	setAttr ".weightList[1713].weights[10]" 0.99725955875644201;
	setAttr -size 2 ".weightList[1714].weights";
	setAttr ".weightList[1714].weights[8]" 0.0028221514098710626;
	setAttr ".weightList[1714].weights[10]" 0.99717784859012892;
	setAttr -size 2 ".weightList[1715].weights";
	setAttr ".weightList[1715].weights[8]" 0.0031043186845780258;
	setAttr ".weightList[1715].weights[10]" 0.99689568131542194;
	setAttr -size 2 ".weightList[1716].weights";
	setAttr ".weightList[1716].weights[8]" 0.0042700514278734471;
	setAttr ".weightList[1716].weights[10]" 0.9957299485721266;
	setAttr -size 2 ".weightList[1717].weights";
	setAttr ".weightList[1717].weights[8]" 0.0054327349541896611;
	setAttr ".weightList[1717].weights[10]" 0.99456726504581039;
	setAttr -size 2 ".weightList[1718].weights";
	setAttr ".weightList[1718].weights[8]" 0.0059032784426909478;
	setAttr ".weightList[1718].weights[10]" 0.9940967215573091;
	setAttr -size 2 ".weightList[1719].weights";
	setAttr ".weightList[1719].weights[8]" 0.0078312134551878562;
	setAttr ".weightList[1719].weights[10]" 0.99216878654481222;
	setAttr -size 2 ".weightList[1720].weights";
	setAttr ".weightList[1720].weights[8]" 0.0079971494608965972;
	setAttr ".weightList[1720].weights[10]" 0.99200285053910342;
	setAttr -size 2 ".weightList[1721].weights";
	setAttr ".weightList[1721].weights[8]" 0.008091520076518836;
	setAttr ".weightList[1721].weights[10]" 0.99190847992348119;
	setAttr -size 2 ".weightList[1722].weights";
	setAttr ".weightList[1722].weights[8]" 0.0082694838600555383;
	setAttr ".weightList[1722].weights[10]" 0.99173051613994445;
	setAttr -size 2 ".weightList[1723].weights";
	setAttr ".weightList[1723].weights[8]" 0.0059863524074184535;
	setAttr ".weightList[1723].weights[10]" 0.9940136475925816;
	setAttr -size 2 ".weightList[1724].weights";
	setAttr ".weightList[1724].weights[8]" 0.0056027041516259471;
	setAttr ".weightList[1724].weights[10]" 0.99439729584837411;
	setAttr -size 2 ".weightList[1725].weights";
	setAttr ".weightList[1725].weights[8]" 0.0047132617840299797;
	setAttr ".weightList[1725].weights[10]" 0.99528673821597002;
	setAttr -size 2 ".weightList[1726].weights";
	setAttr ".weightList[1726].weights[8]" 0.0033135494409195655;
	setAttr ".weightList[1726].weights[10]" 0.99668645055908045;
	setAttr -size 2 ".weightList[1727].weights";
	setAttr ".weightList[1727].weights[8]" 0.0028877108006927178;
	setAttr ".weightList[1727].weights[10]" 0.99711228919930728;
	setAttr -size 2 ".weightList[1728].weights";
	setAttr ".weightList[1728].weights[8]" 0.0029381789871554282;
	setAttr ".weightList[1728].weights[10]" 0.99706182101284457;
	setAttr -size 2 ".weightList[1729].weights";
	setAttr ".weightList[1729].weights[8]" 0.0028334788564918045;
	setAttr ".weightList[1729].weights[10]" 0.99716652114350823;
	setAttr -size 2 ".weightList[1730].weights";
	setAttr ".weightList[1730].weights[8]" 0.0027183654404228717;
	setAttr ".weightList[1730].weights[10]" 0.99728163455957708;
	setAttr -size 2 ".weightList[1731].weights";
	setAttr ".weightList[1731].weights[8]" 0.0027212446057409885;
	setAttr ".weightList[1731].weights[10]" 0.99727875539425903;
	setAttr -size 2 ".weightList[1732].weights";
	setAttr ".weightList[1732].weights[8]" 0.0027883788002190961;
	setAttr ".weightList[1732].weights[10]" 0.99721162119978091;
	setAttr -size 2 ".weightList[1733].weights";
	setAttr ".weightList[1733].weights[8]" 0.0032570193898732842;
	setAttr ".weightList[1733].weights[10]" 0.99674298061012678;
	setAttr -size 2 ".weightList[1734].weights";
	setAttr ".weightList[1734].weights[8]" 0.004637132445913416;
	setAttr ".weightList[1734].weights[10]" 0.99536286755408665;
	setAttr -size 2 ".weightList[1735].weights";
	setAttr ".weightList[1735].weights[8]" 0.0056163671242435457;
	setAttr ".weightList[1735].weights[10]" 0.99438363287575648;
	setAttr -size 2 ".weightList[1736].weights";
	setAttr ".weightList[1736].weights[8]" 0.0058892610158778206;
	setAttr ".weightList[1736].weights[10]" 0.99411073898412217;
	setAttr -size 3 ".weightList[1737].weights[8:10]"  0.19337529850374818 
		0.59532604711357839 0.21129865438267342;
	setAttr -size 3 ".weightList[1738].weights[8:10]"  0.112782563859515 
		0.64931739409159261 0.23790004204889229;
	setAttr -size 3 ".weightList[1739].weights[8:10]"  0.05566246139394191 
		0.69591630093944479 0.24842123766661342;
	setAttr -size 3 ".weightList[1740].weights[8:10]"  0.029485947006275142 
		0.71587807239366308 0.25463598060006182;
	setAttr -size 3 ".weightList[1741].weights[8:10]"  0.017596113597836995 
		0.69129121231586577 0.29111267408629732;
	setAttr -size 3 ".weightList[1742].weights[8:10]"  0.0094094159723200985 
		0.64640432678698956 0.34418625724069041;
	setAttr -size 3 ".weightList[1743].weights[8:10]"  0.011525135565895996 
		0.68486303734790277 0.30361182708620121;
	setAttr -size 3 ".weightList[1744].weights[8:10]"  0.019860737332966293 
		0.70936776519935285 0.27077149746768092;
	setAttr -size 3 ".weightList[1745].weights[8:10]"  0.035914576070858011 
		0.7170153962924265 0.24707002763671543;
	setAttr -size 3 ".weightList[1746].weights[8:10]"  0.057489176348523435 
		0.70907537139374122 0.23343545225773527;
	setAttr -size 3 ".weightList[1747].weights[8:10]"  0.09180262819970543 
		0.69841333172954634 0.20978404007074825;
	setAttr -size 3 ".weightList[1748].weights";
	setAttr ".weightList[1748].weights[1]" 0.36554875399395492;
	setAttr ".weightList[1748].weights[8]" 0.48802413112929716;
	setAttr ".weightList[1748].weights[9]" 0.14642711487674806;
	setAttr -size 3 ".weightList[1749].weights";
	setAttr ".weightList[1749].weights[1]" 0.28156935717394899;
	setAttr ".weightList[1749].weights[8]" 0.49023260687139131;
	setAttr ".weightList[1749].weights[9]" 0.22819803595465973;
	setAttr -size 3 ".weightList[1750].weights";
	setAttr ".weightList[1750].weights[1]" 0.18288182127797964;
	setAttr ".weightList[1750].weights[8]" 0.4356857686538918;
	setAttr ".weightList[1750].weights[9]" 0.38143241006812839;
	setAttr -size 3 ".weightList[1751].weights";
	setAttr ".weightList[1751].weights[1]" 0.12470953125993725;
	setAttr ".weightList[1751].weights[8]" 0.35650616291895298;
	setAttr ".weightList[1751].weights[9]" 0.51878430582110968;
	setAttr -size 3 ".weightList[1752].weights";
	setAttr ".weightList[1752].weights[1]" 0.080694112193820278;
	setAttr ".weightList[1752].weights[8]" 0.29858342353360851;
	setAttr ".weightList[1752].weights[9]" 0.62072246427257105;
	setAttr -size 3 ".weightList[1753].weights";
	setAttr ".weightList[1753].weights[1]" 0.056845007441046966;
	setAttr ".weightList[1753].weights[8]" 0.28625059765013761;
	setAttr ".weightList[1753].weights[9]" 0.65690439490881558;
	setAttr -size 3 ".weightList[1754].weights";
	setAttr ".weightList[1754].weights[1]" 0.031343406989819377;
	setAttr ".weightList[1754].weights[8]" 0.2468078950297789;
	setAttr ".weightList[1754].weights[9]" 0.72184869798040163;
	setAttr -size 3 ".weightList[1755].weights";
	setAttr ".weightList[1755].weights[1]" 0.016533778138476805;
	setAttr ".weightList[1755].weights[8]" 0.23365677835724702;
	setAttr ".weightList[1755].weights[9]" 0.74980944350427625;
	setAttr -size 3 ".weightList[1756].weights";
	setAttr ".weightList[1756].weights[1]" 0.027864916703843959;
	setAttr ".weightList[1756].weights[8]" 0.25907057820545942;
	setAttr ".weightList[1756].weights[9]" 0.71306450509069663;
	setAttr -size 3 ".weightList[1757].weights";
	setAttr ".weightList[1757].weights[1]" 0.083211061050256371;
	setAttr ".weightList[1757].weights[8]" 0.32616029084859882;
	setAttr ".weightList[1757].weights[9]" 0.59062864810114479;
	setAttr -size 3 ".weightList[1758].weights";
	setAttr ".weightList[1758].weights[1]" 0.14356905577380466;
	setAttr ".weightList[1758].weights[8]" 0.40412943706544585;
	setAttr ".weightList[1758].weights[9]" 0.45230150716074952;
	setAttr -size 3 ".weightList[1759].weights";
	setAttr ".weightList[1759].weights[1]" 0.32553575638544879;
	setAttr ".weightList[1759].weights[8]" 0.48717036034956579;
	setAttr ".weightList[1759].weights[9]" 0.18729388326498539;
	setAttr -size 3 ".weightList[1760].weights";
	setAttr ".weightList[1760].weights[1]" 0.22245155233413105;
	setAttr ".weightList[1760].weights[8]" 0.45741575249260796;
	setAttr ".weightList[1760].weights[9]" 0.32013269517326098;
	setAttr -size 3 ".weightList[1761].weights";
	setAttr ".weightList[1761].weights[1]" 0.15941621183285776;
	setAttr ".weightList[1761].weights[8]" 0.40000845148616887;
	setAttr ".weightList[1761].weights[9]" 0.44057533668097332;
	setAttr -size 3 ".weightList[1762].weights";
	setAttr ".weightList[1762].weights[1]" 0.10639048938282328;
	setAttr ".weightList[1762].weights[8]" 0.32886077325551838;
	setAttr ".weightList[1762].weights[9]" 0.5647487373616582;
	setAttr -size 3 ".weightList[1763].weights";
	setAttr ".weightList[1763].weights[1]" 0.067489778779431214;
	setAttr ".weightList[1763].weights[8]" 0.29963972171679204;
	setAttr ".weightList[1763].weights[9]" 0.63287049950377672;
	setAttr -size 3 ".weightList[1764].weights";
	setAttr ".weightList[1764].weights[1]" 0.047961777874193111;
	setAttr ".weightList[1764].weights[8]" 0.29248320735094918;
	setAttr ".weightList[1764].weights[9]" 0.65955501477485767;
	setAttr -size 3 ".weightList[1765].weights";
	setAttr ".weightList[1765].weights[1]" 0.042110169977896156;
	setAttr ".weightList[1765].weights[8]" 0.2751511991910246;
	setAttr ".weightList[1765].weights[9]" 0.68273863083107922;
	setAttr -size 3 ".weightList[1766].weights";
	setAttr ".weightList[1766].weights[1]" 0.024843960070950376;
	setAttr ".weightList[1766].weights[8]" 0.25671907727408227;
	setAttr ".weightList[1766].weights[9]" 0.71843696265496737;
	setAttr -size 3 ".weightList[1767].weights";
	setAttr ".weightList[1767].weights[1]" 0.021254766717944348;
	setAttr ".weightList[1767].weights[8]" 0.2635952060886016;
	setAttr ".weightList[1767].weights[9]" 0.715150027193454;
	setAttr -size 3 ".weightList[1768].weights";
	setAttr ".weightList[1768].weights[1]" 0.054162889665922573;
	setAttr ".weightList[1768].weights[8]" 0.29979670857996221;
	setAttr ".weightList[1768].weights[9]" 0.64604040175411537;
	setAttr -size 3 ".weightList[1769].weights";
	setAttr ".weightList[1769].weights[1]" 0.128752363328032;
	setAttr ".weightList[1769].weights[8]" 0.38621809695432235;
	setAttr ".weightList[1769].weights[9]" 0.48502953971764562;
	setAttr -size 3 ".weightList[1770].weights[8:10]"  0.18526890714074537 
		0.60502746175031785 0.20970363110893669;
	setAttr -size 3 ".weightList[1771].weights[8:10]"  0.063880316843215948 
		0.66574710923618208 0.27037257392060199;
	setAttr -size 3 ".weightList[1772].weights[8:10]"  0.053296088587088779 
		0.69028098972193741 0.2564229216909738;
	setAttr -size 3 ".weightList[1773].weights[8:10]"  0.041775506652262359 
		0.68995035389878934 0.26827413944894823;
	setAttr -size 3 ".weightList[1774].weights[8:10]"  0.034254341865475511 
		0.66562030930708171 0.30012534882744263;
	setAttr -size 3 ".weightList[1775].weights[8:10]"  0.0452470378129756 
		0.68713235135891826 0.26762061082810612;
	setAttr -size 3 ".weightList[1776].weights[8:10]"  0.025600422240347753 
		0.66994767224524565 0.3044519055144066;
	setAttr -size 3 ".weightList[1777].weights[8:10]"  0.030547982782209004 
		0.68475379306676754 0.28469822415102342;
	setAttr -size 3 ".weightList[1778].weights[8:10]"  0.036320071887501582 
		0.7012430691718522 0.26243685894064611;
	setAttr -size 3 ".weightList[1779].weights[8:10]"  0.0361849919342771 
		0.6995444480744204 0.26427055999130256;
	setAttr -size 3 ".weightList[1780].weights[8:10]"  0.093871281208159921 
		0.70073391005238894 0.20539480873945129;
	setAttr -size 3 ".weightList[1781].weights[8:10]"  0.21061717949455711 
		0.76718283182778801 0.022199988677654933;
	setAttr -size 3 ".weightList[1782].weights";
	setAttr ".weightList[1782].weights[1]" 0.021612908986843076;
	setAttr ".weightList[1782].weights[8]" 0.22815773507410608;
	setAttr ".weightList[1782].weights[9]" 0.75022935593905082;
	setAttr -size 3 ".weightList[1783].weights";
	setAttr ".weightList[1783].weights[1]" 0.064175108379396911;
	setAttr ".weightList[1783].weights[8]" 0.26948485337560668;
	setAttr ".weightList[1783].weights[9]" 0.66634003824499632;
	setAttr -size 3 ".weightList[1784].weights";
	setAttr ".weightList[1784].weights[1]" 0.12735823240795927;
	setAttr ".weightList[1784].weights[8]" 0.34721132455093179;
	setAttr ".weightList[1784].weights[9]" 0.52543044304110886;
	setAttr -size 3 ".weightList[1785].weights";
	setAttr ".weightList[1785].weights[1]" 0.14762071172484356;
	setAttr ".weightList[1785].weights[8]" 0.38668824474946289;
	setAttr ".weightList[1785].weights[9]" 0.46569104352569352;
	setAttr -size 3 ".weightList[1786].weights";
	setAttr ".weightList[1786].weights[1]" 0.090990906808293373;
	setAttr ".weightList[1786].weights[8]" 0.2924461698849809;
	setAttr ".weightList[1786].weights[9]" 0.61656292330672557;
	setAttr -size 3 ".weightList[1787].weights";
	setAttr ".weightList[1787].weights[1]" 0.036085799725410261;
	setAttr ".weightList[1787].weights[8]" 0.22157245575490556;
	setAttr ".weightList[1787].weights[9]" 0.74234174451968427;
	setAttr -size 3 ".weightList[1788].weights[8:10]"  0.16548543395068072 
		0.81729577036208279 0.01721879568723661;
	setAttr -size 3 ".weightList[1789].weights[8:10]"  0.14457397307828804 
		0.83547123698484593 0.01995478993686603;
	setAttr -size 3 ".weightList[1790].weights";
	setAttr ".weightList[1790].weights[1]" 0.029722138177194331;
	setAttr ".weightList[1790].weights[8]" 0.199950826740982;
	setAttr ".weightList[1790].weights[9]" 0.77032703508182354;
	setAttr -size 3 ".weightList[1791].weights";
	setAttr ".weightList[1791].weights[1]" 0.046251832382259633;
	setAttr ".weightList[1791].weights[8]" 0.22266730822994746;
	setAttr ".weightList[1791].weights[9]" 0.73108085938779288;
	setAttr -size 3 ".weightList[1792].weights";
	setAttr ".weightList[1792].weights[1]" 0.082063044965733231;
	setAttr ".weightList[1792].weights[8]" 0.28055942140341433;
	setAttr ".weightList[1792].weights[9]" 0.63737753363085248;
	setAttr -size 3 ".weightList[1793].weights";
	setAttr ".weightList[1793].weights[1]" 0.17236502822997424;
	setAttr ".weightList[1793].weights[8]" 0.40786186678060343;
	setAttr ".weightList[1793].weights[9]" 0.41977310498942233;
	setAttr -size 3 ".weightList[1794].weights";
	setAttr ".weightList[1794].weights[1]" 0.24744298999996919;
	setAttr ".weightList[1794].weights[8]" 0.44430230515347441;
	setAttr ".weightList[1794].weights[9]" 0.30825470484655643;
	setAttr -size 3 ".weightList[1795].weights";
	setAttr ".weightList[1795].weights[1]" 0.32236656743622683;
	setAttr ".weightList[1795].weights[8]" 0.4906513882888438;
	setAttr ".weightList[1795].weights[9]" 0.18698204427492943;
	setAttr -size 3 ".weightList[1796].weights";
	setAttr ".weightList[1796].weights[1]" 0.27345380860453289;
	setAttr ".weightList[1796].weights[8]" 0.47198627500109636;
	setAttr ".weightList[1796].weights[9]" 0.25455991639437076;
	setAttr -size 3 ".weightList[1797].weights";
	setAttr ".weightList[1797].weights[1]" 0.18918142651793762;
	setAttr ".weightList[1797].weights[8]" 0.3844963467613266;
	setAttr ".weightList[1797].weights[9]" 0.42632222672073594;
	setAttr -size 3 ".weightList[1798].weights";
	setAttr ".weightList[1798].weights[1]" 0.10388181001529692;
	setAttr ".weightList[1798].weights[8]" 0.3140208920934055;
	setAttr ".weightList[1798].weights[9]" 0.5820972978912976;
	setAttr -size 3 ".weightList[1799].weights";
	setAttr ".weightList[1799].weights[1]" 0.048755300743284935;
	setAttr ".weightList[1799].weights[8]" 0.25672706444194493;
	setAttr ".weightList[1799].weights[9]" 0.69451763481477014;
	setAttr -size 3 ".weightList[1800].weights";
	setAttr ".weightList[1800].weights[1]" 0.031129055865104914;
	setAttr ".weightList[1800].weights[8]" 0.25405914308117333;
	setAttr ".weightList[1800].weights[9]" 0.71481180105372166;
	setAttr -size 3 ".weightList[1801].weights";
	setAttr ".weightList[1801].weights[1]" 0.025783528657795599;
	setAttr ".weightList[1801].weights[8]" 0.25778623193062078;
	setAttr ".weightList[1801].weights[9]" 0.71643023941158379;
	setAttr -size 3 ".weightList[1802].weights";
	setAttr ".weightList[1802].weights[1]" 0.026240717930915945;
	setAttr ".weightList[1802].weights[8]" 0.23029928758618004;
	setAttr ".weightList[1802].weights[9]" 0.74345999448290412;
	setAttr -size 3 ".weightList[1803].weights";
	setAttr ".weightList[1803].weights[1]" 0.074769307164942928;
	setAttr ".weightList[1803].weights[8]" 0.23597336864344903;
	setAttr ".weightList[1803].weights[9]" 0.68925732419160801;
	setAttr -size 3 ".weightList[1804].weights";
	setAttr ".weightList[1804].weights[1]" 0.091753082187502402;
	setAttr ".weightList[1804].weights[8]" 0.25467601536567425;
	setAttr ".weightList[1804].weights[9]" 0.65357090244682337;
	setAttr -size 3 ".weightList[1805].weights[8:10]"  0.17026595574008699 
		0.72148968112901857 0.10824436313089446;
	setAttr -size 3 ".weightList[1806].weights[8:10]"  0.14589752508771717 
		0.75826147180695769 0.095841003105325132;
	setAttr -size 3 ".weightList[1807].weights[8:10]"  0.09904567793062917 
		0.80330612039200622 0.097648201677364613;
	setAttr -size 3 ".weightList[1808].weights[8:10]"  0.062960005090541865 
		0.82785249630823177 0.1091874986012264;
	setAttr -size 3 ".weightList[1809].weights[8:10]"  0.071827862535487702 
		0.79898888080073538 0.12918325666377695;
	setAttr -size 3 ".weightList[1810].weights[8:10]"  0.10475017366537874 
		0.79051253126549703 0.10473729506912416;
	setAttr -size 3 ".weightList[1811].weights[8:10]"  0.12633883215596298 
		0.76443271356974618 0.10922845427429091;
	setAttr -size 3 ".weightList[1812].weights";
	setAttr ".weightList[1812].weights[1]" 0.09900117743901124;
	setAttr ".weightList[1812].weights[8]" 0.26511466634132336;
	setAttr ".weightList[1812].weights[9]" 0.63588415621966532;
	setAttr -size 3 ".weightList[1813].weights";
	setAttr ".weightList[1813].weights[1]" 0.15164187728813475;
	setAttr ".weightList[1813].weights[8]" 0.32702619234355734;
	setAttr ".weightList[1813].weights[9]" 0.52133193036830794;
	setAttr -size 3 ".weightList[1814].weights";
	setAttr ".weightList[1814].weights[1]" 0.21641227893427653;
	setAttr ".weightList[1814].weights[8]" 0.40990468807445801;
	setAttr ".weightList[1814].weights[9]" 0.37368303299126532;
	setAttr -size 3 ".weightList[1815].weights";
	setAttr ".weightList[1815].weights[1]" 0.19183584619878621;
	setAttr ".weightList[1815].weights[8]" 0.37965105424238488;
	setAttr ".weightList[1815].weights[9]" 0.42851309955882882;
	setAttr -size 3 ".weightList[1816].weights[8:10]"  0.21783207584055383 
		0.63955744477901488 0.14261047938043139;
	setAttr -size 3 ".weightList[1817].weights[8:10]"  0.19160708701318929 
		0.69907082750832295 0.10932208547848783;
	setAttr -size 3 ".weightList[1818].weights[8:10]"  0.15545373475444066 
		0.73382627125356314 0.11071999399199633;
	setAttr -size 3 ".weightList[1819].weights[8:10]"  0.14399509717143111 
		0.74503830839996432 0.11096659442860449;
	setAttr -size 3 ".weightList[1820].weights[8:10]"  0.1651596338015168 
		0.76678469800538107 0.06805566819310202;
	setAttr -size 3 ".weightList[1821].weights[8:10]"  0.11687347379420847 
		0.77318207302883013 0.10994445317696153;
	setAttr -size 3 ".weightList[1822].weights[8:10]"  0.11742005019684201 
		0.76917564147831841 0.11340430832483964;
	setAttr -size 3 ".weightList[1823].weights[8:10]"  0.13360017625807719 
		0.7542836053894646 0.11211621835245834;
	setAttr -size 3 ".weightList[1824].weights[8:10]"  0.1291663845237907 
		0.73202073084036912 0.13881288463584021;
	setAttr ".weightList[1825].weights[3]"  1;
	setAttr ".weightList[1826].weights[3]"  1;
	setAttr ".weightList[1827].weights[3]"  1;
	setAttr ".weightList[1828].weights[3]"  1;
	setAttr ".weightList[1829].weights[3]"  1;
	setAttr ".weightList[1830].weights[3]"  1;
	setAttr ".weightList[1831].weights[3]"  1;
	setAttr ".weightList[1832].weights[3]"  1;
	setAttr ".weightList[1833].weights[3]"  1;
	setAttr ".weightList[1834].weights[3]"  1;
	setAttr ".weightList[1835].weights[3]"  1;
	setAttr ".weightList[1836].weights[3]"  1;
	setAttr ".weightList[1837].weights[3]"  1;
	setAttr ".weightList[1838].weights[3]"  1;
	setAttr ".weightList[1839].weights[3]"  1;
	setAttr ".weightList[1840].weights[3]"  1;
	setAttr ".weightList[1841].weights[3]"  1;
	setAttr ".weightList[1842].weights[2]"  1;
	setAttr ".weightList[1843].weights[2]"  1;
	setAttr ".weightList[1844].weights[2]"  1;
	setAttr ".weightList[1845].weights[2]"  1;
	setAttr ".weightList[1846].weights[2]"  1;
	setAttr ".weightList[1847].weights[2]"  1;
	setAttr ".weightList[1848].weights[2]"  1;
	setAttr ".weightList[1849].weights[2]"  1;
	setAttr ".weightList[1850].weights[2]"  1;
	setAttr ".weightList[1851].weights[2]"  1;
	setAttr ".weightList[1852].weights[2]"  1;
	setAttr ".weightList[1853].weights[2]"  1;
	setAttr ".weightList[1854].weights[2]"  1;
	setAttr ".weightList[1855].weights[2]"  1;
	setAttr ".weightList[1856].weights[2]"  1;
	setAttr ".weightList[1857].weights[2]"  1;
	setAttr ".weightList[1858].weights[2]"  1;
	setAttr ".weightList[1859].weights[2]"  1;
	setAttr ".weightList[1860].weights[2]"  1;
	setAttr ".weightList[1861].weights[2]"  1;
	setAttr ".weightList[1862].weights[2]"  1;
	setAttr ".weightList[1863].weights[2]"  1;
	setAttr ".weightList[1864].weights[2]"  1;
	setAttr ".weightList[1865].weights[2]"  1;
	setAttr ".weightList[1866].weights[2]"  1;
	setAttr ".weightList[1867].weights[2]"  1;
	setAttr ".weightList[1868].weights[0]"  1;
	setAttr ".weightList[1869].weights[0]"  1;
	setAttr ".weightList[1870].weights[0]"  1;
	setAttr ".weightList[1871].weights[0]"  1;
	setAttr ".weightList[1872].weights[0]"  1;
	setAttr ".weightList[1873].weights[0]"  1;
	setAttr ".weightList[1874].weights[3]"  1;
	setAttr ".weightList[1875].weights[3]"  1;
	setAttr ".weightList[1876].weights[3]"  1;
	setAttr ".weightList[1877].weights[0]"  1;
	setAttr ".weightList[1878].weights[0]"  1;
	setAttr ".weightList[1879].weights[0]"  1;
	setAttr ".weightList[1880].weights[0]"  1;
	setAttr ".weightList[1881].weights[0]"  1;
	setAttr -size 2 ".weightList[1882].weights";
	setAttr ".weightList[1882].weights[0]" 0.65063452149085943;
	setAttr ".weightList[1882].weights[13]" 0.34936547850914057;
	setAttr ".weightList[1883].weights[0]"  1;
	setAttr ".weightList[1884].weights[0]"  1;
	setAttr ".weightList[1885].weights[3]"  1;
	setAttr ".weightList[1886].weights[3]"  1;
	setAttr ".weightList[1887].weights[3]"  1;
	setAttr ".weightList[1888].weights[0]"  1;
	setAttr ".weightList[1889].weights[0]"  1;
	setAttr ".weightList[1890].weights[0]"  1;
	setAttr ".weightList[1891].weights[0]"  1;
	setAttr ".weightList[1892].weights[0]"  1;
	setAttr ".weightList[1893].weights[0]"  1;
	setAttr ".weightList[1894].weights[0]"  1;
	setAttr ".weightList[1895].weights[0]"  1;
	setAttr ".weightList[1896].weights[3]"  1;
	setAttr ".weightList[1897].weights[3]"  1;
	setAttr ".weightList[1898].weights[3]"  1;
	setAttr ".weightList[1899].weights[0]"  1;
	setAttr ".weightList[1900].weights[0]"  1;
	setAttr ".weightList[1901].weights[0]"  1;
	setAttr ".weightList[1902].weights[0]"  1;
	setAttr ".weightList[1903].weights[0]"  1;
	setAttr ".weightList[1904].weights[0]"  1;
	setAttr ".weightList[1905].weights[0]"  1;
	setAttr ".weightList[1906].weights[0]"  1;
	setAttr ".weightList[1907].weights[3]"  1;
	setAttr ".weightList[1908].weights[3]"  1;
	setAttr ".weightList[1909].weights[3]"  1;
	setAttr ".weightList[1910].weights[0]"  1;
	setAttr ".weightList[1911].weights[0]"  1;
	setAttr ".weightList[1912].weights[3]"  1;
	setAttr ".weightList[1913].weights[3]"  1;
	setAttr ".weightList[1914].weights[3]"  1;
	setAttr ".weightList[1915].weights[3]"  1;
	setAttr ".weightList[1916].weights[0]"  1;
	setAttr ".weightList[1917].weights[0]"  1;
	setAttr ".weightList[1918].weights[0]"  1;
	setAttr ".weightList[1919].weights[0]"  1;
	setAttr ".weightList[1920].weights[3]"  1;
	setAttr ".weightList[1921].weights[3]"  1;
	setAttr ".weightList[1922].weights[3]"  1;
	setAttr ".weightList[1923].weights[3]"  1;
	setAttr -size 19 ".bindPreMatrix";
	setAttr ".bindPreMatrix[0]" -type "matrix" -0.00066102230983344789 0.99999978152472924 1.2246465315923121e-016 0
		 0.99999978152472924 0.00066102230983333687 8.0951885590226267e-020 0 -2.1811156620185452e-032 1.2246467991473535e-016 -1 0
		 -61.947833079919754 -0.1178263727329032 -1.4429569022248522e-017 1;
	setAttr ".bindPreMatrix[1]" -type "matrix" -6.0527537842913772e-014 1 1.2246465315923121e-016 0
		 1 6.0416515540451256e-014 8.0951885590226279e-020 0 8.0951885582817912e-020 1.2246465315923121e-016 -1 0
		 -87.449605648208617 -0.060020245531530299 -1.4429569022247912e-017 1;
	setAttr ".bindPreMatrix[2]" -type "matrix" -6.1080140624061744e-014 1.0000000000000002 -1.4344912988097664e-016 0
		 0.99981065197989016 6.0954761513617178e-014 -0.019459192880159081 0 -0.019459192880159078 -1.3319922056231048e-015 -0.99981065197989005 0
		 -96.220586425024067 -0.06002024553211311 1.8727295479186594 1;
	setAttr ".bindPreMatrix[3]" -type "matrix" 1.0000000000000002 -6.8400808445322384e-016 1.4344912988097662e-016 0
		 4.5906358151798774e-016 0.99981065197989016 0.019459192880159203 0 -1.5457180892159338e-016 -0.019459192880159199 0.99981065197989005 0
		 -0.060020245526329362 -126.78296718466039 -1.8749041534746096 1;
	setAttr ".bindPreMatrix[4]" -type "matrix" -0.99943511724692624 0.033607237518477738 1.2246465315923126e-016 0
		 0.033607237518477849 0.99943511724692624 8.0951885590225797e-020 0 -1.223927544195538e-016 4.1966048436065101e-018 -1 0
		 -20.339413153760187 -83.270079777576328 2.1399451790439346e-015 1;
	setAttr ".bindPreMatrix[5]" -type "matrix" -0.57950425958262952 -0.81496920992488331 1.2246465315923124e-016 0
		 -0.81496920992488331 0.57950425958262963 8.0951885590230395e-020 0 -7.1034761448325213e-017 -9.975800966638273e-017 -1 0
		 56.195902676478447 -65.973836952655589 2.5895561234544264e-015 1;
	setAttr ".bindPreMatrix[6]" -type "matrix" -0.24981282550566281 -0.96829414550170501 1.8365114858752443e-016 0
		 -0.96829414550170512 0.24981282550566292 2.372446170699471e-016 0 -2.7560098609663351e-016 -1.1856158386571119e-016 -1 0
		 58.812891466952394 -48.127151987612336 -9.5525410554890735e-015 1;
	setAttr ".bindPreMatrix[7]" -type "matrix" -0.96725360304373975 0.25381187403055822 1.8365114858752448e-016 0
		 0.25381187403055833 0.96725360304373986 2.3724461706994719e-016 0 -1.1742173431221883e-016 2.7608855285450273e-016 -1 0
		 -48.334403981634175 -38.017303715680853 -4.8206328238215348e-015 1;
	setAttr ".bindPreMatrix[8]" -type "matrix" 0.99977373005706516 0.02127178149057795 -1.1985961124777138e-016 0
		 -0.021271781490578061 0.99977373005706516 1.2235601795300925e-016 0 1.2243522109832781e-016 -1.1977870500380103e-016 1 0
		 -15.858175987007916 -84.526188372008704 -8.1828380989210416e-015 1;
	setAttr ".bindPreMatrix[9]" -type "matrix" 0.58986299609804416 0.78373714787022752 -0.19446780937337657 0
		 -0.68777000874896188 0.61380456448131615 0.38757756860705295 0 0.42312416723663004 -0.094868538884832959 0.90109150447119712 0
		 45.464684991710676 -68.064027278890507 -28.514686540561385 1;
	setAttr ".bindPreMatrix[10]" -type "matrix" 0.23219877014318377 0.09840074514021413 -0.96767816163218412 0
		 -0.47239582760348686 0.88106619400766362 -0.023760131305757153 0 0.85025050026848525 0.46264419928569361 0.25106658810062665 0
		 19.610869941572705 -69.626712200808356 30.618033077717335 1;
	setAttr ".bindPreMatrix[11]" -type "matrix" 0.097602234930299306 0.23253554402879373 0.9676781616321839 0
		 0.88268433556207671 -0.46936533735850988 0.023760131305757121 0 0.45971966184833268 0.85183531322055706 -0.25106658810062654 0
		 -66.342002565738014 4.7158732982834639 -25.252905265638319 1;
	setAttr ".bindPreMatrix[12]" -type "matrix" -0.98360655737704916 -0.18032786885245911 1.2246465315923121e-016 0
		 -0.18032786885245899 0.98360655737704916 8.0951885590227302e-020 0 -1.2047163377533384e-016 -2.200416510846115e-017 -1 0
		 7.0887461493331134 -37.91529774555778 -1.9698358299049147e-017 1;
	setAttr ".bindPreMatrix[13]" -type "matrix" -0.093340708693058577 -0.99563422605928809 1.4532653318545112e-016 0
		 -0.99563422605928809 0.093340708693058688 2.4394100549860214e-016 0 -2.564408958131606e-016 -1.219224440614393e-016 -1 0
		 35.308761700295641 -14.487891944165124 -7.2882112853465804e-015 1;
	setAttr ".bindPreMatrix[14]" -type "matrix" -0.097971991070402262 -0.99518917245200222 1.6932275023954336e-016 0
		 -0.99518917245200222 0.097971991070402373 4.8769205241649174e-016 0 -5.0193473703027138e-016 -1.207280062837336e-016 -1 0
		 17.139342785179252 -14.567792207182793 -1.1277759717479087e-014 1;
	setAttr ".bindPreMatrix[15]" -type "matrix" -0.00066102230983325317 0.9999997815247289 1.6932275023954336e-016 0
		 0.9999997815247289 0.00066102230983314215 4.8769205241649174e-016 0 4.8758001975236771e-016 1.6964508857368533e-016 -1 0
		 -0.37710966676887431 14.601793473311762 -1.0141246467459096e-014 1;
	setAttr ".bindPreMatrix[16]" -type "matrix" 0.07197776964677427 0.99740623653387905 -3.1761765714895972e-019 0
		 -0.99740623653387905 0.07197776964677427 8.733782635178535e-018 0 8.7339906794203939e-018 -3.1184436258622196e-019 1 0
		 35.605226483430847 -13.810469360547737 -3.1528243325969368e-016 1;
	setAttr ".bindPreMatrix[17]" -type "matrix" 0.077887667292910162 0.99696214134924366 -3.1761765714895967e-019 0
		 -0.99696214134924366 0.077887667292910162 8.733782635178535e-018 0 8.7319891364528147e-018 -3.6360117649582133e-019 1 0
		 17.265181726864917 -13.913036384274589 -1.5581817567581982e-016 1;
	setAttr ".bindPreMatrix[18]" -type "matrix" -0.98360655737704927 -0.18032786885245924 2.2401412395871753e-017 0
		 -0.18032786885245924 0.98360655737704927 -1.2919084484639363e-016 0 1.2625335993119081e-018 -1.3111256110062633e-016 -1 0
		 13.754965402528327 2.2435951100830924 6.1138102472235429e-016 1;
	setAttr ".geomMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -size 16 ".matrix";
	setAttr -size 19 ".dropoff[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4;
	setAttr -size 16 ".lockWeights";
	setAttr ".maintainMaxInfluences" yes;
	setAttr ".maxInfluences" 3;
	setAttr ".bindMethod" 3;
	setAttr ".useComponentsMatrix" yes;
	setAttr -size 16 ".influenceColor";
createNode tweak -name "tweak1";
	rename -uuid "086235B8-4C1B-46D3-B7E2-C5BCCCE420EB";
createNode objectSet -name "skinCluster1Set";
	rename -uuid "A192625D-46F2-9213-1D23-4E90ACC32B49";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "skinCluster1GroupId";
	rename -uuid "D982984D-4FAC-D53E-CCED-7D93D3826A1B";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "skinCluster1GroupParts";
	rename -uuid "69396D8F-4598-8471-26FA-EF9D10AE9255";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "vtx[0:1923]";
createNode objectSet -name "tweakSet1";
	rename -uuid "E4577C2D-45BC-A216-B535-BBAFD84537A4";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "groupId3";
	rename -uuid "37B6667F-4B27-4B27-67D3-C98D70132F6F";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "groupParts3";
	rename -uuid "9246C6A6-440C-6238-4053-BAA3B24D6162";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "vtx[*]";
createNode dagPose -name "bindPose3";
	rename -uuid "9916DF4B-4B40-58E4-361F-D5BD9B0DBD29";
	setAttr -size 16 ".worldMatrix";
	setAttr -size 19 ".xformMatrix";
	setAttr ".xformMatrix[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.076877447279095928
		 61.947897431711191 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70687303587354589 0.70734044925687423 4.3312110854494093e-017 4.328349003930551e-017 1
		 1 1 no;
	setAttr ".xformMatrix[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 25.50171378799126
		 -2.400857290751901e-015 -6.0897904841524389e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.00033051117293859017 0.99999994538118075 1 1 1 no;
	setAttr ".xformMatrix[2]" -type "matrix" "xform" 1 1 1 -3.1415926535897918 3.16105307474953
		 3.1415926535897927 0 8.7892034047673455 5.3100950472332862e-013 7.1150258845131612e-019 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xformMatrix[3]" -type "matrix" "xform" 1 1 1 -1.2325951644078337e-032 9.8607613152626476e-032
		 -5.5511151231257827e-016 0 30.562380759636341 1.8875317975286521e-012 -0.0021746055559346278 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118652615 0.70710678118656889 4.3297802811775971e-017 4.3297802811773358e-017 1
		 1 1 no;
	setAttr ".xformMatrix[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5430122136998388
		 -17.589466666320831 -2.1543747480661819e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.69512328492198483 0.71889054713445011 1 1 1 no;
	setAttr ".xformMatrix[5]" -type "matrix" "xform" 1 1 1 2.4492906237790937e-016 -2.6991578685891722e-019
		 5.328305214529883 0 3.6735094862663074 1.4460654895742664e-014 -4.4961094441049268e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.015704122214832965 0.99987668266914875 1
		 1 1 no;
	setAttr ".xformMatrix[6]" -type "matrix" "xform" 1 1 1 5.0604807588808774e-019 6.2831853071795862
		 -0.35929707928119287 0 18.478111133405832 -9.0830121202145619e-015 -2.2629066777772871e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0031681143653157127 0.99999498151309152 1
		 1 1 no;
	setAttr ".xformMatrix[7]" -type "matrix" "xform" 1 1 1 1.9915985002059193e-016 1.9435107385270885e-029
		 -1.3322676295501878e-015 0 20.59618508936785 0.04974438107895196 -4.7319082316675418e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70856622701259064 0.70564431687440221 1
		 1 1 no;
	setAttr ".xformMatrix[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.2798746664551857
		 17.59259012218665 2.1542049354473805e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.69954564486863957 0.71458791673615585 4.3755890247015432e-017 4.2834816742292524e-017 1
		 1 1 no;
	setAttr ".xformMatrix[9]" -type "matrix" "xform" 1 1 1 -0.10489538015701007 -0.43689059064884356
		 -0.86188024795064089 0 3.3293256383524024 9.7144514654701197e-016 -4.0762672064000791e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.010636492441938804 0.99994343091423554 1
		 1 1 no;
	setAttr ".xformMatrix[10]" -type "matrix" "xform" 1 1 1 1.0693765015509766 -0.56795388013441828
		 -0.22224331059421551 0 18.555020122381119 1.1060312364412853e-013 -2.2239974985631734e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0017182054495546754 0.99999852388392707 1
		 1 1 no;
	setAttr ".xformMatrix[11]" -type "matrix" "xform" 1 1 1 2.4651903288153025e-032 -9.3677232494995152e-031
		 7.6605388699135786e-015 0 14.667046443806587 -3.3013070032462934 5.3651278120790167 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70589078268998673 0.70832069213973825 4.3372133419938404e-017 4.3223344378445607e-017 1
		 1 1 no;
	setAttr ".xformMatrix[12]" -type "matrix" "xform" 1 1 1 1.2045706221121508e-016 -1.0038088517601257e-016
		 -6.0457932652318913e-033 0 -23.375897004503585 0.043022929390486853 5.2687892768005234e-018 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.76800964954118722 0.64043827041458323 1
		 1 1 no;
	setAttr ".xformMatrix[13]" -type "matrix" "xform" 1 1 1 1.2193002680650598e-016 6.2831853071795862
		 4.4408920985006262e-016 0 11.451986076241694 8.4376949871511897e-015 -1.3796394725772121e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.60359293763158284 0.79729264742707628 1
		 1 1 no;
	setAttr ".xformMatrix[14]" -type "matrix" "xform" 1 1 1 1.2187552345894475e-016 6.2831853071795862
		 -8.1938613635457306e-033 0 18.101826240611743 0 -2.0837982413930496e-016 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0023263087269348136 0.99999729414019267 1
		 1 1 no;
	setAttr ".xformMatrix[15]" -type "matrix" "xform" 1 1 1 2.6755504125015562e-023 -8.0951885590241265e-020
		 -2.7755575615628907e-017 0 18.204243976071584 3.5527136788005009e-014 -1.1365132500199915e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99878030451044186 0.049375128577342262 1
		 1 1 no;
	setAttr ".xformMatrix[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.522531683598562
		 -4.0286615893040647 1.3563139181529948e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.74466849497087095 -0.6674345155877226 -4.0868577157748434e-017 4.55977944395977e-017 1
		 1 1 no;
	setAttr ".xformMatrix[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.257891888940804
		 3.7747582837255322e-015 -1.5946425758387382e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.0029632798855667893 0.99999560947652155 1 1 1 no;
	setAttr ".xformMatrix[18]" -type "matrix" "xform" 1 1 1 -1.2246467991473532e-016
		 -1.2246467991473527e-016 3.3306690738754696e-016 0 18.077715303150768 -1.2434497875801753e-014
		 7.3032400606112567e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.74268743021138606 0.66963824637337399 -4.1003516750389956e-017 4.5476489208767358e-017 1
		 1 1 no;
	setAttr -size 16 ".members";
	setAttr -size 16 ".parents";
	setAttr ".bindPose" yes;
createNode geomBind -name "geomBind1";
	rename -uuid "52EC8EC8-4169-24AC-FCCA-BE96935C45D3";
	setAttr ".maxInfluences" 3;
	setAttr ".gvResolution" 512;
createNode groupParts -name "groupParts4";
	rename -uuid "29175DFF-4A11-A549-3206-87B4E3DC1A2A";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "f[0:1882]";
	setAttr ".groupId" 138;
createNode groupParts -name "groupParts5";
	rename -uuid "310FD285-4ADE-E769-FCBF-ADAA7145F144";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputRemoveComponent" -type "componentList" 1 "f[0:1882]";
	setAttr ".groupId" 138;
createNode groupParts -name "groupParts6";
	rename -uuid "00D6144D-47D2-400A-C295-2D936EE58207";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "f[0:1882]";
	setAttr ".groupId" 142;
createNode psdFileTex -name "PSD_lambert1_color";
	rename -uuid "69EAFE66-49E2-F271-055F-8C9F3C818D78";
	setAttr ".fileTextureName" -type "string" "C:/Users/Schwarzer/Desktop/RIT Second Season/Collaboration/CastleSilVR//sourceimages/GuardUV.psd";
	setAttr ".colorSpace" -type "string" "sRGB";
	setAttr ".layerSetName" -type "string" "lambert1.color";
createNode place2dTexture -name "place2dTexture2";
	rename -uuid "CE2FF490-46DC-EAB3-AD1F-47B3745CE045";
createNode file -name "file1";
	rename -uuid "F61B8064-408B-C02B-8532-689E2C596244";
	setAttr ".fileTextureName" -type "string" "C:/Users/Kevin Li/Desktop/Game Production/CastleSilVR//sourceimages/Guard.jpg";
	setAttr ".colorSpace" -type "string" "sRGB";
createNode place2dTexture -name "place2dTexture3";
	rename -uuid "9A6B937A-4F31-6A20-6C04-EB86617674B5";
createNode groupParts -name "groupParts7";
	rename -uuid "4E83B4A9-4CB2-37BC-D303-6F86F8769BCF";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputRemoveComponent" -type "componentList" 1 "f[0:1882]";
	setAttr ".groupId" 142;
createNode lambert -name "lambert2";
	rename -uuid "6965EF30-4258-1B0D-2F1E-5DBB60EE0087";
createNode shadingEngine -name "lambert2SG";
	rename -uuid "7D69F6B9-4366-0D61-8C8B-4B9015DC4F5B";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".renderableOnlySet" yes;
createNode materialInfo -name "materialInfo1";
	rename -uuid "662D955A-4D23-2CD9-038F-449BE79483D5";
createNode file -name "file2";
	rename -uuid "5F6D9FE4-4D34-4D34-132F-51B125A1AF34";
	setAttr ".fileTextureName" -type "string" "C:/Users/Schwarzer/Desktop/RIT Second Season/Collaboration/CastleSilVR//sourceimages/Guard.jpg";
	setAttr ".colorSpace" -type "string" "sRGB";
createNode place2dTexture -name "place2dTexture4";
	rename -uuid "C977801E-443A-0FB7-E64B-069817063920";
createNode polyTweakUV -name "polyTweakUV1";
	rename -uuid "B5A0C798-4690-A61C-A2E9-0DB10EAEC512";
	setAttr ".useOldPolyArchitecture" yes;
	setAttr -size 138 ".uvTweak";
	setAttr ".uvTweak[0]" -type "float2" -0.039594486 -0.027159482 ;
	setAttr ".uvTweak[1]" -type "float2" -0.034168988 -0.02589163 ;
	setAttr ".uvTweak[2]" -type "float2" -0.034170717 -0.027856488 ;
	setAttr ".uvTweak[3]" -type "float2" -0.03311494 -0.026848286 ;
	setAttr ".uvTweak[4]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[5]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[6]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[7]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[8]" -type "float2" -0.032290787 -0.02368089 ;
	setAttr ".uvTweak[9]" -type "float2" -0.027924925 -0.021677339 ;
	setAttr ".uvTweak[10]" -type "float2" -0.030166775 -0.015460813 ;
	setAttr ".uvTweak[11]" -type "float2" -0.033249944 -0.02394327 ;
	setAttr ".uvTweak[22]" -type "float2" -0.027224571 -0.039341554 ;
	setAttr ".uvTweak[23]" -type "float2" -0.027580529 -0.040295228 ;
	setAttr ".uvTweak[24]" -type "float2" -0.028261632 -0.040589735 ;
	setAttr ".uvTweak[25]" -type "float2" -0.029985934 -0.041115686 ;
	setAttr ".uvTweak[46]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[47]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[48]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[49]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[50]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[51]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[52]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[53]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[54]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[55]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[56]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[57]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[58]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[59]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[60]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[61]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[62]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[63]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[66]" -type "float2" -0.02696386 -0.040028617 ;
	setAttr ".uvTweak[67]" -type "float2" -0.02696386 -0.040028617 ;
	setAttr ".uvTweak[68]" -type "float2" -0.0076930881 -0.02669391 ;
	setAttr ".uvTweak[69]" -type "float2" -0.013195609 -0.011899495 ;
	setAttr ".uvTweak[70]" -type "float2" -0.011249518 -0.010964299 ;
	setAttr ".uvTweak[71]" -type "float2" -0.0037376636 -0.025703339 ;
	setAttr ".uvTweak[72]" -type "float2" -0.01548693 -0.026674718 ;
	setAttr ".uvTweak[73]" -type "float2" -0.0053356644 -0.026714593 ;
	setAttr ".uvTweak[76]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[77]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[78]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[79]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[80]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[81]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[82]" -type "float2" -0.021112774 -0.019331181 ;
	setAttr ".uvTweak[83]" -type "float2" -0.024385601 -0.019354129 ;
	setAttr ".uvTweak[84]" -type "float2" -0.020835795 -0.019853735 ;
	setAttr ".uvTweak[85]" -type "float2" -0.021347973 -0.014222944 ;
	setAttr ".uvTweak[86]" -type "float2" -0.012196635 -0.013320232 ;
	setAttr ".uvTweak[87]" -type "float2" -0.010791158 -0.01303109 ;
	setAttr ".uvTweak[88]" -type "float2" -0.010791158 -0.01303109 ;
	setAttr ".uvTweak[89]" -type "float2" -0.0084818956 -0.014459038 ;
	setAttr ".uvTweak[90]" -type "float2" -0.01207522 -0.016066397 ;
	setAttr ".uvTweak[91]" -type "float2" -0.017127547 -0.013226891 ;
	setAttr ".uvTweak[92]" -type "float2" -0.016783509 -0.015953744 ;
	setAttr ".uvTweak[95]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[96]" -type "float2" -0.0027082532 -0.0054165032 ;
	setAttr ".uvTweak[97]" -type "float2" -0.016189907 -0.014257813 ;
	setAttr ".uvTweak[98]" -type "float2" -0.017794941 -0.01931789 ;
	setAttr ".uvTweak[99]" -type "float2" -0.016550515 -0.026167959 ;
	setAttr ".uvTweak[100]" -type "float2" -0.020377196 -0.027176112 ;
	setAttr ".uvTweak[245]" -type "float2" -0.029632419 -0.014734412 ;
	setAttr ".uvTweak[246]" -type "float2" -0.028809875 -0.010940218 ;
	setAttr ".uvTweak[247]" -type "float2" -0.029565901 -0.017359162 ;
	setAttr ".uvTweak[248]" -type "float2" -0.029565901 -0.017359162 ;
	setAttr ".uvTweak[249]" -type "float2" -0.010542786 -0.0031543616 ;
	setAttr ".uvTweak[250]" -type "float2" -0.011137879 -0.0032069925 ;
	setAttr ".uvTweak[251]" -type "float2" -0.0093351956 -0.010524357 ;
	setAttr ".uvTweak[252]" -type "float2" -0.0087607261 -0.011299336 ;
	setAttr ".uvTweak[253]" -type "float2" -0.011523521 -0.0032409672 ;
	setAttr ".uvTweak[254]" -type "float2" -0.0097650047 -0.01372006 ;
	setAttr ".uvTweak[255]" -type "float2" -0.011296188 -0.0032208208 ;
	setAttr ".uvTweak[256]" -type "float2" -0.0090508219 -0.013574744 ;
	setAttr ".uvTweak[257]" -type "float2" -0.024455458 -0.060351469 ;
	setAttr ".uvTweak[258]" -type "float2" -0.023826513 -0.061971799 ;
	setAttr ".uvTweak[259]" -type "float2" -0.01805035 -0.015888596 ;
	setAttr ".uvTweak[260]" -type "float2" -0.01881722 -0.011414969 ;
	setAttr ".uvTweak[261]" -type "float2" -0.011878465 -0.0032722596 ;
	setAttr ".uvTweak[262]" -type "float2" -0.019051407 -0.0039053205 ;
	setAttr ".uvTweak[263]" -type "float2" -0.018520508 -0.0099206809 ;
	setAttr ".uvTweak[264]" -type "float2" -0.017251287 -0.014121318 ;
	setAttr ".uvTweak[265]" -type "float2" -0.019051407 -0.0039053205 ;
	setAttr ".uvTweak[266]" -type "float2" -0.018552635 -0.009557331 ;
	setAttr ".uvTweak[267]" -type "float2" -0.0094876047 -0.0030612592 ;
	setAttr ".uvTweak[268]" -type "float2" -0.01053611 -0.0031538252 ;
	setAttr ".uvTweak[269]" -type "float2" -0.008985972 -0.0087462906 ;
	setAttr ".uvTweak[270]" -type "float2" -0.008985972 -0.0087462906 ;
	setAttr ".uvTweak[271]" -type "float2" -0.013140415 0.013223149 ;
	setAttr ".uvTweak[272]" -type "float2" -0.013140355 0.013223149 ;
	setAttr ".uvTweak[273]" -type "float2" -0.015822802 0.0071828729 ;
	setAttr ".uvTweak[274]" -type "float2" -0.010721838 0.0052718883 ;
	setAttr ".uvTweak[275]" -type "float2" -0.0058079716 0.0075051552 ;
	setAttr ".uvTweak[276]" -type "float2" -0.009511387 0.012081899 ;
	setAttr ".uvTweak[277]" -type "float2" -0.0094164368 0.012052037 ;
	setAttr ".uvTweak[278]" -type "float2" -0.013140415 0.013223149 ;
	setAttr ".uvTweak[279]" -type "float2" -0.018669162 -0.023615265 ;
	setAttr ".uvTweak[280]" -type "float2" -0.020436682 -0.023737634 ;
	setAttr ".uvTweak[281]" -type "float2" -0.021319006 -0.023798728 ;
	setAttr ".uvTweak[282]" -type "float2" -0.020200111 -0.023721183 ;
	setAttr ".uvTweak[283]" -type "float2" -0.016657863 0.011388578 ;
	setAttr ".uvTweak[284]" -type "float2" -0.015420531 0.0085859066 ;
	setAttr ".uvTweak[285]" -type "float2" -0.016399536 0.0071336394 ;
	setAttr ".uvTweak[286]" -type "float2" -0.017947711 0.010715879 ;
	setAttr ".uvTweak[287]" -type "float2" -0.011769032 0.0072218543 ;
	setAttr ".uvTweak[288]" -type "float2" -0.011298692 0.0052218204 ;
	setAttr ".uvTweak[289]" -type "float2" -0.0082205292 0.0088389283 ;
	setAttr ".uvTweak[290]" -type "float2" -0.006329393 0.0074838763 ;
	setAttr ".uvTweak[291]" -type "float2" -0.013840948 -0.023217464 ;
	setAttr ".uvTweak[292]" -type "float2" -0.014793728 -0.023310268 ;
	setAttr ".uvTweak[293]" -type "float2" -0.014367078 -0.023268724 ;
	setAttr ".uvTweak[294]" -type "float2" -0.013022338 -0.023137772 ;
	setAttr ".uvTweak[295]" -type "float2" -0.027114183 -0.010276223 ;
	setAttr ".uvTweak[296]" -type "float2" -0.027511507 -0.010312283 ;
	setAttr ".uvTweak[297]" -type "float2" -0.027179569 -0.01002481 ;
	setAttr ".uvTweak[298]" -type "float2" -0.0271025 -0.010009492 ;
	setAttr ".uvTweak[299]" -type "float2" -0.028796762 -0.010188008 ;
	setAttr ".uvTweak[300]" -type "float2" -0.02972433 -0.010545338 ;
	setAttr ".uvTweak[301]" -type "float2" -0.030412167 -0.010374511 ;
	setAttr ".uvTweak[302]" -type "float2" -0.030628175 -0.010057056 ;
	setAttr ".uvTweak[303]" -type "float2" -0.031059951 -0.0094221476 ;
	setAttr ".uvTweak[304]" -type "float2" -0.030392498 -0.0093217734 ;
	setAttr ".uvTweak[305]" -type "float2" -0.012864326 -0.023122394 ;
	setAttr ".uvTweak[306]" -type "float2" -0.012047504 -0.023042882 ;
	setAttr ".uvTweak[307]" -type "float2" -0.02715984 -0.0089719538 ;
	setAttr ".uvTweak[308]" -type "float2" -0.027092665 -0.0090030674 ;
	setAttr ".uvTweak[309]" -type "float2" -0.028777093 -0.0091352705 ;
	setAttr ".uvTweak[2134]" -type "float2" -0.018101074 -0.022665406 ;
	setAttr ".uvTweak[2135]" -type "float2" -0.0174664 -0.02352562 ;
	setAttr ".uvTweak[2136]" -type "float2" -0.014866923 -0.022501731 ;
	setAttr ".uvTweak[2137]" -type "float2" -0.017196093 -0.022855962 ;
	setAttr ".uvTweak[2148]" -type "float2" -0.0089769121 -0.012082124 ;
	setAttr ".uvTweak[2149]" -type "float2" -0.0099110957 -0.011914099 ;
	setAttr ".uvTweak[2150]" -type "float2" -0.0099110957 -0.011914099 ;
	setAttr ".uvTweak[2151]" -type "float2" -0.010127341 -0.012160206 ;
select -noExpand :time1;
	setAttr ".outTime" 340;
	setAttr ".unwarpedTime" 340;
select -noExpand :hardwareRenderingGlobals;
	setAttr ".objectTypeFilterNameArray" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".objectTypeFilterValueArray" -type "Int32Array" 22 0 1 1
		 1 1 1 1 1 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 ;
	setAttr ".floatingPointRTEnable" yes;
select -noExpand :renderPartition;
	setAttr -size 3 ".sets";
select -noExpand :renderGlobalsList1;
select -noExpand :defaultShaderList1;
	setAttr -size 5 ".shaders";
select -noExpand :postProcessList1;
	setAttr -size 2 ".postProcesses";
select -noExpand :defaultRenderUtilityList1;
	setAttr -size 4 ".utilities";
select -noExpand :defaultRenderingList1;
select -noExpand :defaultTextureList1;
	setAttr -size 4 ".textures";
select -noExpand :lambert1;
select -noExpand :initialShadingGroup;
	setAttr ".renderableOnlySet" yes;
select -noExpand :initialParticleSE;
	setAttr ".renderableOnlySet" yes;
select -noExpand :initialMaterialInfo;
select -noExpand :defaultResolution;
	setAttr ".pixelAspect" 1;
select -noExpand :hardwareRenderGlobals;
	setAttr ".colorTextureResolution" 256;
	setAttr ".bumpTextureResolution" 512;
select -noExpand :defaultHideFaceDataSet;
	setAttr -size 2 ".dnSetMembers";
connectAttr "joint1_parentConstraint1.constraintTranslateX" "Joint_Main.translateX"
		;
connectAttr "joint1_parentConstraint1.constraintTranslateY" "Joint_Main.translateY"
		;
connectAttr "joint1_parentConstraint1.constraintTranslateZ" "Joint_Main.translateZ"
		;
connectAttr "joint1_parentConstraint1.constraintRotateX" "Joint_Main.rotateX";
connectAttr "joint1_parentConstraint1.constraintRotateY" "Joint_Main.rotateY";
connectAttr "joint1_parentConstraint1.constraintRotateZ" "Joint_Main.rotateZ";
connectAttr "Joint_Main.scale" "Joint_Shoulder.inverseScale";
connectAttr "Joint_Shoulder.scale" "Joint_Neck.inverseScale";
connectAttr "joint3_orientConstraint1.constraintRotateX" "Joint_Neck.rotateX";
connectAttr "joint3_orientConstraint1.constraintRotateY" "Joint_Neck.rotateY";
connectAttr "joint3_orientConstraint1.constraintRotateZ" "Joint_Neck.rotateZ";
connectAttr "Joint_Neck.scale" "Joint_Head.inverseScale";
connectAttr "joint4_parentConstraint1.constraintTranslateX" "Joint_Head.translateX"
		;
connectAttr "joint4_parentConstraint1.constraintTranslateY" "Joint_Head.translateY"
		;
connectAttr "joint4_parentConstraint1.constraintTranslateZ" "Joint_Head.translateZ"
		;
connectAttr "joint4_parentConstraint1.constraintRotateX" "Joint_Head.rotateX";
connectAttr "joint4_parentConstraint1.constraintRotateY" "Joint_Head.rotateY";
connectAttr "joint4_parentConstraint1.constraintRotateZ" "Joint_Head.rotateZ";
connectAttr "Joint_Head.rotateOrder" "joint4_parentConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Head.parentInverseMatrix" "joint4_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Head.rotatePivot" "joint4_parentConstraint1.constraintRotatePivot"
		;
connectAttr "Joint_Head.rotatePivotTranslate" "joint4_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "Joint_Head.jointOrient" "joint4_parentConstraint1.constraintJointOrient"
		;
connectAttr "Ctrl_Head.translate" "joint4_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "Ctrl_Head.rotatePivot" "joint4_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "Ctrl_Head.rotatePivotTranslate" "joint4_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "Ctrl_Head.rotate" "joint4_parentConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Head.rotateOrder" "joint4_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Head.scale" "joint4_parentConstraint1.target[0].targetScale";
connectAttr "Ctrl_Head.parentMatrix" "joint4_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint4_parentConstraint1.nurbsCircle16W0" "joint4_parentConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Neck.rotateOrder" "joint3_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Neck.parentInverseMatrix" "joint3_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Neck.jointOrient" "joint3_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Neck.inverseScale" "joint3_orientConstraint1.inverseScale";
connectAttr "Ctrl_Neck.rotate" "joint3_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Neck.rotateOrder" "joint3_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Neck.parentMatrix" "joint3_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint3_orientConstraint1.nurbsCircle9W0" "joint3_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Shoulder.scale" "Joint_Arm_Right.inverseScale";
connectAttr "Joint_Arm_Right.scale" "Joint_Upper_Right.inverseScale";
connectAttr "joint13_orientConstraint1.constraintRotateX" "Joint_Upper_Right.rotateX"
		;
connectAttr "joint13_orientConstraint1.constraintRotateY" "Joint_Upper_Right.rotateY"
		;
connectAttr "joint13_orientConstraint1.constraintRotateZ" "Joint_Upper_Right.rotateZ"
		;
connectAttr "Joint_Upper_Right.scale" "Joint_Elbow_Right.inverseScale";
connectAttr "joint14_orientConstraint1.constraintRotateX" "Joint_Elbow_Right.rotateX"
		;
connectAttr "joint14_orientConstraint1.constraintRotateY" "Joint_Elbow_Right.rotateY"
		;
connectAttr "joint14_orientConstraint1.constraintRotateZ" "Joint_Elbow_Right.rotateZ"
		;
connectAttr "Joint_Elbow_Right.scale" "Joint_Fist_Right.inverseScale";
connectAttr "joint15_parentConstraint1.constraintTranslateX" "Joint_Fist_Right.translateX"
		;
connectAttr "joint15_parentConstraint1.constraintTranslateY" "Joint_Fist_Right.translateY"
		;
connectAttr "joint15_parentConstraint1.constraintTranslateZ" "Joint_Fist_Right.translateZ"
		;
connectAttr "joint15_parentConstraint1.constraintRotateX" "Joint_Fist_Right.rotateX"
		;
connectAttr "joint15_parentConstraint1.constraintRotateY" "Joint_Fist_Right.rotateY"
		;
connectAttr "joint15_parentConstraint1.constraintRotateZ" "Joint_Fist_Right.rotateZ"
		;
connectAttr "Joint_Fist_Right.rotateOrder" "joint15_parentConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Fist_Right.parentInverseMatrix" "joint15_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Fist_Right.rotatePivot" "joint15_parentConstraint1.constraintRotatePivot"
		;
connectAttr "Joint_Fist_Right.rotatePivotTranslate" "joint15_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "Joint_Fist_Right.jointOrient" "joint15_parentConstraint1.constraintJointOrient"
		;
connectAttr "Ctrl_Fist_Right.translate" "joint15_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "Ctrl_Fist_Right.rotatePivot" "joint15_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "Ctrl_Fist_Right.rotatePivotTranslate" "joint15_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "Ctrl_Fist_Right.rotate" "joint15_parentConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Fist_Right.rotateOrder" "joint15_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Fist_Right.scale" "joint15_parentConstraint1.target[0].targetScale"
		;
connectAttr "Ctrl_Fist_Right.parentMatrix" "joint15_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint15_parentConstraint1.nurbsCircle12W0" "joint15_parentConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Elbow_Right.rotateOrder" "joint14_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Elbow_Right.parentInverseMatrix" "joint14_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Elbow_Right.jointOrient" "joint14_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Elbow_Right.inverseScale" "joint14_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Elbow_Right.rotate" "joint14_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Elbow_Right.rotateOrder" "joint14_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Elbow_Right.parentMatrix" "joint14_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint14_orientConstraint1.nurbsCircle11W0" "joint14_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Upper_Right.rotateOrder" "joint13_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Upper_Right.parentInverseMatrix" "joint13_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Upper_Right.jointOrient" "joint13_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Upper_Right.inverseScale" "joint13_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Shoulder_Right.rotate" "joint13_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Shoulder_Right.rotateOrder" "joint13_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Shoulder_Right.parentMatrix" "joint13_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint13_orientConstraint1.nurbsCircle10W0" "joint13_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Shoulder.scale" "Joint_Arm_Left.inverseScale";
connectAttr "Joint_Arm_Left.scale" "Joint_Upper_Left.inverseScale";
connectAttr "joint17_orientConstraint1.constraintRotateX" "Joint_Upper_Left.rotateX"
		;
connectAttr "joint17_orientConstraint1.constraintRotateY" "Joint_Upper_Left.rotateY"
		;
connectAttr "joint17_orientConstraint1.constraintRotateZ" "Joint_Upper_Left.rotateZ"
		;
connectAttr "Joint_Upper_Left.scale" "Joint_Elbow_Left.inverseScale";
connectAttr "joint18_orientConstraint1.constraintRotateX" "Joint_Elbow_Left.rotateX"
		;
connectAttr "joint18_orientConstraint1.constraintRotateY" "Joint_Elbow_Left.rotateY"
		;
connectAttr "joint18_orientConstraint1.constraintRotateZ" "Joint_Elbow_Left.rotateZ"
		;
connectAttr "Joint_Elbow_Left.scale" "Joint_Fist_Left.inverseScale";
connectAttr "joint19_parentConstraint1.constraintTranslateX" "Joint_Fist_Left.translateX"
		;
connectAttr "joint19_parentConstraint1.constraintTranslateY" "Joint_Fist_Left.translateY"
		;
connectAttr "joint19_parentConstraint1.constraintTranslateZ" "Joint_Fist_Left.translateZ"
		;
connectAttr "joint19_parentConstraint1.constraintRotateX" "Joint_Fist_Left.rotateX"
		;
connectAttr "joint19_parentConstraint1.constraintRotateY" "Joint_Fist_Left.rotateY"
		;
connectAttr "joint19_parentConstraint1.constraintRotateZ" "Joint_Fist_Left.rotateZ"
		;
connectAttr "Joint_Fist_Left.rotateOrder" "joint19_parentConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Fist_Left.parentInverseMatrix" "joint19_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Fist_Left.rotatePivot" "joint19_parentConstraint1.constraintRotatePivot"
		;
connectAttr "Joint_Fist_Left.rotatePivotTranslate" "joint19_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "Joint_Fist_Left.jointOrient" "joint19_parentConstraint1.constraintJointOrient"
		;
connectAttr "Ctrl_Fist_Left.translate" "joint19_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "Ctrl_Fist_Left.rotatePivot" "joint19_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "Ctrl_Fist_Left.rotatePivotTranslate" "joint19_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "Ctrl_Fist_Left.rotate" "joint19_parentConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Fist_Left.rotateOrder" "joint19_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Fist_Left.scale" "joint19_parentConstraint1.target[0].targetScale"
		;
connectAttr "Ctrl_Fist_Left.parentMatrix" "joint19_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint19_parentConstraint1.nurbsCircle14W0" "joint19_parentConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Elbow_Left.rotateOrder" "joint18_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Elbow_Left.parentInverseMatrix" "joint18_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Elbow_Left.jointOrient" "joint18_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Elbow_Left.inverseScale" "joint18_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Elbow_Left.rotate" "joint18_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Elbow_Left.rotateOrder" "joint18_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Elbow_Left.parentMatrix" "joint18_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint18_orientConstraint1.nurbsCircle15W0" "joint18_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Upper_Left.rotateOrder" "joint17_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Upper_Left.parentInverseMatrix" "joint17_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Upper_Left.jointOrient" "joint17_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Upper_Left.inverseScale" "joint17_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Shoulder_Left.rotate" "joint17_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Shoulder_Left.rotateOrder" "joint17_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Shoulder_Left.parentMatrix" "joint17_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint17_orientConstraint1.nurbsCircle13W0" "joint17_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Main.scale" "Joint_Waist.inverseScale";
connectAttr "joint5_parentConstraint1.constraintTranslateX" "Joint_Waist.translateX"
		;
connectAttr "joint5_parentConstraint1.constraintTranslateY" "Joint_Waist.translateY"
		;
connectAttr "joint5_parentConstraint1.constraintTranslateZ" "Joint_Waist.translateZ"
		;
connectAttr "joint5_parentConstraint1.constraintRotateX" "Joint_Waist.rotateX";
connectAttr "joint5_parentConstraint1.constraintRotateY" "Joint_Waist.rotateY";
connectAttr "joint5_parentConstraint1.constraintRotateZ" "Joint_Waist.rotateZ";
connectAttr "Joint_Waist.scale" "Joint_Leg_Right.inverseScale";
connectAttr "joint6_orientConstraint1.constraintRotateX" "Joint_Leg_Right.rotateX"
		;
connectAttr "joint6_orientConstraint1.constraintRotateY" "Joint_Leg_Right.rotateY"
		;
connectAttr "joint6_orientConstraint1.constraintRotateZ" "Joint_Leg_Right.rotateZ"
		;
connectAttr "Joint_Leg_Right.scale" "Joint_Knee_Right.inverseScale";
connectAttr "joint7_orientConstraint1.constraintRotateX" "Joint_Knee_Right.rotateX"
		;
connectAttr "joint7_orientConstraint1.constraintRotateY" "Joint_Knee_Right.rotateY"
		;
connectAttr "joint7_orientConstraint1.constraintRotateZ" "Joint_Knee_Right.rotateZ"
		;
connectAttr "Joint_Knee_Right.scale" "Joint_Feet_Right.inverseScale";
connectAttr "joint8_parentConstraint1.constraintTranslateX" "Joint_Feet_Right.translateX"
		;
connectAttr "joint8_parentConstraint1.constraintTranslateY" "Joint_Feet_Right.translateY"
		;
connectAttr "joint8_parentConstraint1.constraintTranslateZ" "Joint_Feet_Right.translateZ"
		;
connectAttr "joint8_parentConstraint1.constraintRotateX" "Joint_Feet_Right.rotateX"
		;
connectAttr "joint8_parentConstraint1.constraintRotateY" "Joint_Feet_Right.rotateY"
		;
connectAttr "joint8_parentConstraint1.constraintRotateZ" "Joint_Feet_Right.rotateZ"
		;
connectAttr "Joint_Feet_Right.rotateOrder" "joint8_parentConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Feet_Right.parentInverseMatrix" "joint8_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Feet_Right.rotatePivot" "joint8_parentConstraint1.constraintRotatePivot"
		;
connectAttr "Joint_Feet_Right.rotatePivotTranslate" "joint8_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "Joint_Feet_Right.jointOrient" "joint8_parentConstraint1.constraintJointOrient"
		;
connectAttr "Ctrl_Feet_Right.translate" "joint8_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "Ctrl_Feet_Right.rotatePivot" "joint8_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "Ctrl_Feet_Right.rotatePivotTranslate" "joint8_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "Ctrl_Feet_Right.rotate" "joint8_parentConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Feet_Right.rotateOrder" "joint8_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Feet_Right.scale" "joint8_parentConstraint1.target[0].targetScale"
		;
connectAttr "Ctrl_Feet_Right.parentMatrix" "joint8_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint8_parentConstraint1.nurbsCircle5W0" "joint8_parentConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Knee_Right.rotateOrder" "joint7_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Knee_Right.parentInverseMatrix" "joint7_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Knee_Right.jointOrient" "joint7_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Knee_Right.inverseScale" "joint7_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Knee_Right.rotate" "joint7_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Knee_Right.rotateOrder" "joint7_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Knee_Right.parentMatrix" "joint7_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint7_orientConstraint1.nurbsCircle4W0" "joint7_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Leg_Right.rotateOrder" "joint6_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Leg_Right.parentInverseMatrix" "joint6_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Leg_Right.jointOrient" "joint6_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Leg_Right.inverseScale" "joint6_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Leg_Right.rotate" "joint6_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Leg_Right.rotateOrder" "joint6_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Leg_Right.parentMatrix" "joint6_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint6_orientConstraint1.nurbsCircle3W0" "joint6_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Waist.scale" "Joint_Leg_Left.inverseScale";
connectAttr "joint9_orientConstraint1.constraintRotateX" "Joint_Leg_Left.rotateX"
		;
connectAttr "joint9_orientConstraint1.constraintRotateY" "Joint_Leg_Left.rotateY"
		;
connectAttr "joint9_orientConstraint1.constraintRotateZ" "Joint_Leg_Left.rotateZ"
		;
connectAttr "Joint_Leg_Left.scale" "Joint_Knee_Left.inverseScale";
connectAttr "joint10_orientConstraint1.constraintRotateX" "Joint_Knee_Left.rotateX"
		;
connectAttr "joint10_orientConstraint1.constraintRotateY" "Joint_Knee_Left.rotateY"
		;
connectAttr "joint10_orientConstraint1.constraintRotateZ" "Joint_Knee_Left.rotateZ"
		;
connectAttr "Joint_Knee_Left.scale" "Joint_Feet_Left.inverseScale";
connectAttr "joint11_parentConstraint1.constraintRotateX" "Joint_Feet_Left.rotateX"
		;
connectAttr "joint11_parentConstraint1.constraintRotateY" "Joint_Feet_Left.rotateY"
		;
connectAttr "joint11_parentConstraint1.constraintRotateZ" "Joint_Feet_Left.rotateZ"
		;
connectAttr "joint11_parentConstraint1.constraintTranslateX" "Joint_Feet_Left.translateX"
		;
connectAttr "joint11_parentConstraint1.constraintTranslateY" "Joint_Feet_Left.translateY"
		;
connectAttr "joint11_parentConstraint1.constraintTranslateZ" "Joint_Feet_Left.translateZ"
		;
connectAttr "Joint_Feet_Left.rotateOrder" "joint11_parentConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Feet_Left.parentInverseMatrix" "joint11_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Feet_Left.rotatePivot" "joint11_parentConstraint1.constraintRotatePivot"
		;
connectAttr "Joint_Feet_Left.rotatePivotTranslate" "joint11_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "Joint_Feet_Left.jointOrient" "joint11_parentConstraint1.constraintJointOrient"
		;
connectAttr "Ctrl_Feet_Left.translate" "joint11_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "Ctrl_Feet_Left.rotatePivot" "joint11_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "Ctrl_Feet_Left.rotatePivotTranslate" "joint11_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "Ctrl_Feet_Left.rotate" "joint11_parentConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Feet_Left.rotateOrder" "joint11_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Feet_Left.scale" "joint11_parentConstraint1.target[0].targetScale"
		;
connectAttr "Ctrl_Feet_Left.parentMatrix" "joint11_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint11_parentConstraint1.nurbsCircle8W0" "joint11_parentConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Knee_Left.rotateOrder" "joint10_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Knee_Left.parentInverseMatrix" "joint10_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Knee_Left.jointOrient" "joint10_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Knee_Left.inverseScale" "joint10_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Knee_Left.rotate" "joint10_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Knee_Left.rotateOrder" "joint10_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Knee_Left.parentMatrix" "joint10_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint10_orientConstraint1.nurbsCircle7W0" "joint10_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Leg_Left.rotateOrder" "joint9_orientConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Leg_Left.parentInverseMatrix" "joint9_orientConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Leg_Left.jointOrient" "joint9_orientConstraint1.constraintJointOrient"
		;
connectAttr "Joint_Leg_Left.inverseScale" "joint9_orientConstraint1.inverseScale"
		;
connectAttr "Ctrl_Leg_Left.rotate" "joint9_orientConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Leg_Left.rotateOrder" "joint9_orientConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Leg_Left.parentMatrix" "joint9_orientConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint9_orientConstraint1.nurbsCircle6W0" "joint9_orientConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Waist.rotateOrder" "joint5_parentConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Waist.parentInverseMatrix" "joint5_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Waist.rotatePivot" "joint5_parentConstraint1.constraintRotatePivot"
		;
connectAttr "Joint_Waist.rotatePivotTranslate" "joint5_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "Joint_Waist.jointOrient" "joint5_parentConstraint1.constraintJointOrient"
		;
connectAttr "Ctrl_Waist.translate" "joint5_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "Ctrl_Waist.rotatePivot" "joint5_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "Ctrl_Waist.rotatePivotTranslate" "joint5_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "Ctrl_Waist.rotate" "joint5_parentConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Waist.rotateOrder" "joint5_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Waist.scale" "joint5_parentConstraint1.target[0].targetScale";
connectAttr "Ctrl_Waist.parentMatrix" "joint5_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint5_parentConstraint1.nurbsCircle2W0" "joint5_parentConstraint1.target[0].targetWeight"
		;
connectAttr "Joint_Main.rotateOrder" "joint1_parentConstraint1.constraintRotateOrder"
		;
connectAttr "Joint_Main.parentInverseMatrix" "joint1_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "Joint_Main.rotatePivot" "joint1_parentConstraint1.constraintRotatePivot"
		;
connectAttr "Joint_Main.rotatePivotTranslate" "joint1_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "Joint_Main.jointOrient" "joint1_parentConstraint1.constraintJointOrient"
		;
connectAttr "Ctrl_Main.translate" "joint1_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "Ctrl_Main.rotatePivot" "joint1_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "Ctrl_Main.rotatePivotTranslate" "joint1_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "Ctrl_Main.rotate" "joint1_parentConstraint1.target[0].targetRotate"
		;
connectAttr "Ctrl_Main.rotateOrder" "joint1_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "Ctrl_Main.scale" "joint1_parentConstraint1.target[0].targetScale";
connectAttr "Ctrl_Main.parentMatrix" "joint1_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "joint1_parentConstraint1.nurbsCircle1W0" "joint1_parentConstraint1.target[0].targetWeight"
		;
connectAttr "Ctrl_Leg_Left_rotateX.output" "Ctrl_Leg_Left.rotateX";
connectAttr "Ctrl_Leg_Left_rotateY.output" "Ctrl_Leg_Left.rotateY";
connectAttr "Ctrl_Leg_Left_rotateZ.output" "Ctrl_Leg_Left.rotateZ";
connectAttr "Ctrl_Leg_Left_visibility.output" "Ctrl_Leg_Left.visibility";
connectAttr "Ctrl_Leg_Left_translateX.output" "Ctrl_Leg_Left.translateX";
connectAttr "Ctrl_Leg_Left_translateY.output" "Ctrl_Leg_Left.translateY";
connectAttr "Ctrl_Leg_Left_translateZ.output" "Ctrl_Leg_Left.translateZ";
connectAttr "Ctrl_Leg_Left_scaleX.output" "Ctrl_Leg_Left.scaleX";
connectAttr "Ctrl_Leg_Left_scaleY.output" "Ctrl_Leg_Left.scaleY";
connectAttr "Ctrl_Leg_Left_scaleZ.output" "Ctrl_Leg_Left.scaleZ";
connectAttr "Ctrl_Leg_Right_rotateX.output" "Ctrl_Leg_Right.rotateX";
connectAttr "Ctrl_Leg_Right_rotateY.output" "Ctrl_Leg_Right.rotateY";
connectAttr "Ctrl_Leg_Right_rotateZ.output" "Ctrl_Leg_Right.rotateZ";
connectAttr "Ctrl_Leg_Right_visibility.output" "Ctrl_Leg_Right.visibility";
connectAttr "Ctrl_Leg_Right_translateX.output" "Ctrl_Leg_Right.translateX";
connectAttr "Ctrl_Leg_Right_translateY.output" "Ctrl_Leg_Right.translateY";
connectAttr "Ctrl_Leg_Right_translateZ.output" "Ctrl_Leg_Right.translateZ";
connectAttr "Ctrl_Leg_Right_scaleX.output" "Ctrl_Leg_Right.scaleX";
connectAttr "Ctrl_Leg_Right_scaleY.output" "Ctrl_Leg_Right.scaleY";
connectAttr "Ctrl_Leg_Right_scaleZ.output" "Ctrl_Leg_Right.scaleZ";
connectAttr "Ctrl_Shoulder_Right_rotateX.output" "Ctrl_Shoulder_Right.rotateX";
connectAttr "Ctrl_Shoulder_Right_rotateY.output" "Ctrl_Shoulder_Right.rotateY";
connectAttr "Ctrl_Shoulder_Right_rotateZ.output" "Ctrl_Shoulder_Right.rotateZ";
connectAttr "Ctrl_Shoulder_Right_visibility.output" "Ctrl_Shoulder_Right.visibility"
		;
connectAttr "Ctrl_Shoulder_Right_translateX.output" "Ctrl_Shoulder_Right.translateX"
		;
connectAttr "Ctrl_Shoulder_Right_translateY.output" "Ctrl_Shoulder_Right.translateY"
		;
connectAttr "Ctrl_Shoulder_Right_translateZ.output" "Ctrl_Shoulder_Right.translateZ"
		;
connectAttr "Ctrl_Shoulder_Right_scaleX.output" "Ctrl_Shoulder_Right.scaleX";
connectAttr "Ctrl_Shoulder_Right_scaleY.output" "Ctrl_Shoulder_Right.scaleY";
connectAttr "Ctrl_Shoulder_Right_scaleZ.output" "Ctrl_Shoulder_Right.scaleZ";
connectAttr "Ctrl_Elbow_Right_rotateX.output" "Ctrl_Elbow_Right.rotateX";
connectAttr "Ctrl_Elbow_Right_rotateY.output" "Ctrl_Elbow_Right.rotateY";
connectAttr "Ctrl_Elbow_Right_rotateZ.output" "Ctrl_Elbow_Right.rotateZ";
connectAttr "Ctrl_Elbow_Right_visibility.output" "Ctrl_Elbow_Right.visibility";
connectAttr "Ctrl_Elbow_Right_translateX.output" "Ctrl_Elbow_Right.translateX";
connectAttr "Ctrl_Elbow_Right_translateY.output" "Ctrl_Elbow_Right.translateY";
connectAttr "Ctrl_Elbow_Right_translateZ.output" "Ctrl_Elbow_Right.translateZ";
connectAttr "Ctrl_Elbow_Right_scaleX.output" "Ctrl_Elbow_Right.scaleX";
connectAttr "Ctrl_Elbow_Right_scaleY.output" "Ctrl_Elbow_Right.scaleY";
connectAttr "Ctrl_Elbow_Right_scaleZ.output" "Ctrl_Elbow_Right.scaleZ";
connectAttr "Ctrl_Shoulder_Left_rotateX.output" "Ctrl_Shoulder_Left.rotateX";
connectAttr "Ctrl_Shoulder_Left_rotateY.output" "Ctrl_Shoulder_Left.rotateY";
connectAttr "Ctrl_Shoulder_Left_rotateZ.output" "Ctrl_Shoulder_Left.rotateZ";
connectAttr "Ctrl_Shoulder_Left_visibility.output" "Ctrl_Shoulder_Left.visibility"
		;
connectAttr "Ctrl_Shoulder_Left_translateX.output" "Ctrl_Shoulder_Left.translateX"
		;
connectAttr "Ctrl_Shoulder_Left_translateY.output" "Ctrl_Shoulder_Left.translateY"
		;
connectAttr "Ctrl_Shoulder_Left_translateZ.output" "Ctrl_Shoulder_Left.translateZ"
		;
connectAttr "Ctrl_Shoulder_Left_scaleX.output" "Ctrl_Shoulder_Left.scaleX";
connectAttr "Ctrl_Shoulder_Left_scaleY.output" "Ctrl_Shoulder_Left.scaleY";
connectAttr "Ctrl_Shoulder_Left_scaleZ.output" "Ctrl_Shoulder_Left.scaleZ";
connectAttr "Ctrl_Neck_rotateX.output" "Ctrl_Neck.rotateX";
connectAttr "Ctrl_Neck_rotateY.output" "Ctrl_Neck.rotateY";
connectAttr "Ctrl_Neck_rotateZ.output" "Ctrl_Neck.rotateZ";
connectAttr "Ctrl_Neck_visibility.output" "Ctrl_Neck.visibility";
connectAttr "Ctrl_Neck_translateX.output" "Ctrl_Neck.translateX";
connectAttr "Ctrl_Neck_translateY.output" "Ctrl_Neck.translateY";
connectAttr "Ctrl_Neck_translateZ.output" "Ctrl_Neck.translateZ";
connectAttr "Ctrl_Neck_scaleX.output" "Ctrl_Neck.scaleX";
connectAttr "Ctrl_Neck_scaleY.output" "Ctrl_Neck.scaleY";
connectAttr "Ctrl_Neck_scaleZ.output" "Ctrl_Neck.scaleZ";
connectAttr "Ctrl_Head_translateX.output" "Ctrl_Head.translateX";
connectAttr "Ctrl_Head_translateY.output" "Ctrl_Head.translateY";
connectAttr "Ctrl_Head_translateZ.output" "Ctrl_Head.translateZ";
connectAttr "Ctrl_Head_rotateX.output" "Ctrl_Head.rotateX";
connectAttr "Ctrl_Head_rotateY.output" "Ctrl_Head.rotateY";
connectAttr "Ctrl_Head_rotateZ.output" "Ctrl_Head.rotateZ";
connectAttr "Ctrl_Head_scaleX.output" "Ctrl_Head.scaleX";
connectAttr "Ctrl_Head_scaleY.output" "Ctrl_Head.scaleY";
connectAttr "Ctrl_Head_scaleZ.output" "Ctrl_Head.scaleZ";
connectAttr "Ctrl_Head_visibility.output" "Ctrl_Head.visibility";
connectAttr "polyTweakUV1.output" "GuardShape.inMesh";
connectAttr "skinCluster1GroupId.groupId" "GuardShape.instObjGroups.objectGroups[3].objectGroupId"
		;
connectAttr "skinCluster1Set.memberWireframeColor" "GuardShape.instObjGroups.objectGroups[3].objectGrpColor"
		;
connectAttr "groupId3.groupId" "GuardShape.instObjGroups.objectGroups[4].objectGroupId"
		;
connectAttr "tweakSet1.memberWireframeColor" "GuardShape.instObjGroups.objectGroups[4].objectGrpColor"
		;
connectAttr "tweak1.vlist[0].vertex[0]" "GuardShape.tweakLocation";
connectAttr "polyTweakUV1.uvTweak[0]" "GuardShape.uvSet[0].uvSetTweakLocation";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.displayLayerId[0]" "defaultLayer.identification";
connectAttr "renderLayerManager.renderLayerId[0]" "defaultRenderLayer.identification"
		;
connectAttr ":defaultArnoldDisplayDriver.message" ":defaultArnoldRenderOptions.drivers"
		 -nextAvailable;
connectAttr ":defaultArnoldFilter.message" ":defaultArnoldRenderOptions.filter";
connectAttr ":defaultArnoldDriver.message" ":defaultArnoldRenderOptions.driver";
connectAttr "Hero__1_:nurbsCircle4_translateX.output" "anim_Clip1_AnimSource.animation[0].source"
		;
connectAttr "Hero__1_:nurbsCircle4_translateY.output" "anim_Clip1_AnimSource.animation[1].source"
		;
connectAttr "Hero__1_:nurbsCircle4_translateZ.output" "anim_Clip1_AnimSource.animation[2].source"
		;
connectAttr "Hero__1_:nurbsCircle4_rotateX.output" "anim_Clip1_AnimSource.animation[3].source"
		;
connectAttr "Hero__1_:nurbsCircle4_rotateY.output" "anim_Clip1_AnimSource.animation[4].source"
		;
connectAttr "Hero__1_:nurbsCircle4_rotateZ.output" "anim_Clip1_AnimSource.animation[5].source"
		;
connectAttr "Hero__1_:nurbsCircle4_scaleX.output" "anim_Clip1_AnimSource.animation[6].source"
		;
connectAttr "Hero__1_:nurbsCircle4_scaleY.output" "anim_Clip1_AnimSource.animation[7].source"
		;
connectAttr "Hero__1_:nurbsCircle4_scaleZ.output" "anim_Clip1_AnimSource.animation[8].source"
		;
connectAttr "Hero__1_:nurbsCircle4_visibility.output" "anim_Clip1_AnimSource.animation[9].source"
		;
connectAttr "Composition1.clipTime[0]" "anim_Clip1.clip[0].parentTime";
connectAttr "Composition1.track[0].index" "anim_Clip1.track";
connectAttr "Composition1.track[0].trackMuted" "anim_Clip1.clipTrackMuted";
connectAttr "anim_Clip1_AnimSource.rosters" "anim_Clip1.animSource";
connectAttr "Hero__1_:nurbsCircle1_translateX.output" "anim_Clip1_AnimSource1.animation[0].source"
		;
connectAttr "Hero__1_:nurbsCircle1_translateY.output" "anim_Clip1_AnimSource1.animation[1].source"
		;
connectAttr "Hero__1_:nurbsCircle1_translateZ.output" "anim_Clip1_AnimSource1.animation[2].source"
		;
connectAttr "Hero__1_:nurbsCircle1_rotateX.output" "anim_Clip1_AnimSource1.animation[3].source"
		;
connectAttr "Hero__1_:nurbsCircle1_rotateY.output" "anim_Clip1_AnimSource1.animation[4].source"
		;
connectAttr "Hero__1_:nurbsCircle1_rotateZ.output" "anim_Clip1_AnimSource1.animation[5].source"
		;
connectAttr "Hero__1_:nurbsCircle1_scaleX.output" "anim_Clip1_AnimSource1.animation[6].source"
		;
connectAttr "Hero__1_:nurbsCircle1_scaleY.output" "anim_Clip1_AnimSource1.animation[7].source"
		;
connectAttr "Hero__1_:nurbsCircle1_scaleZ.output" "anim_Clip1_AnimSource1.animation[8].source"
		;
connectAttr "Hero__1_:nurbsCircle1_visibility.output" "anim_Clip1_AnimSource1.animation[9].source"
		;
connectAttr "Composition1.clipTime[1]" "anim_Clip2.clip[0].parentTime";
connectAttr "Composition1.track[1].index" "anim_Clip2.track";
connectAttr "Composition1.track[1].trackMuted" "anim_Clip2.clipTrackMuted";
connectAttr "anim_Clip1_AnimSource1.rosters" "anim_Clip2.animSource";
connectAttr "Hero__1_:nurbsCircle13_translateX.output" "anim_Clip1_AnimSource2.animation[0].source"
		;
connectAttr "Hero__1_:nurbsCircle13_translateY.output" "anim_Clip1_AnimSource2.animation[1].source"
		;
connectAttr "Hero__1_:nurbsCircle13_translateZ.output" "anim_Clip1_AnimSource2.animation[2].source"
		;
connectAttr "Hero__1_:nurbsCircle13_rotateX.output" "anim_Clip1_AnimSource2.animation[3].source"
		;
connectAttr "Hero__1_:nurbsCircle13_rotateY.output" "anim_Clip1_AnimSource2.animation[4].source"
		;
connectAttr "Hero__1_:nurbsCircle13_rotateZ.output" "anim_Clip1_AnimSource2.animation[5].source"
		;
connectAttr "Hero__1_:nurbsCircle13_scaleX.output" "anim_Clip1_AnimSource2.animation[6].source"
		;
connectAttr "Hero__1_:nurbsCircle13_scaleY.output" "anim_Clip1_AnimSource2.animation[7].source"
		;
connectAttr "Hero__1_:nurbsCircle13_scaleZ.output" "anim_Clip1_AnimSource2.animation[8].source"
		;
connectAttr "Hero__1_:nurbsCircle13_visibility.output" "anim_Clip1_AnimSource2.animation[9].source"
		;
connectAttr "Hero__1_:nurbsCircle11_translateX.output" "anim_Clip1_AnimSource2.animation[10].source"
		;
connectAttr "Hero__1_:nurbsCircle11_translateY.output" "anim_Clip1_AnimSource2.animation[11].source"
		;
connectAttr "Hero__1_:nurbsCircle11_translateZ.output" "anim_Clip1_AnimSource2.animation[12].source"
		;
connectAttr "Hero__1_:nurbsCircle11_rotateX.output" "anim_Clip1_AnimSource2.animation[13].source"
		;
connectAttr "Hero__1_:nurbsCircle11_rotateY.output" "anim_Clip1_AnimSource2.animation[14].source"
		;
connectAttr "Hero__1_:nurbsCircle11_rotateZ.output" "anim_Clip1_AnimSource2.animation[15].source"
		;
connectAttr "Hero__1_:nurbsCircle11_scaleX.output" "anim_Clip1_AnimSource2.animation[16].source"
		;
connectAttr "Hero__1_:nurbsCircle11_scaleY.output" "anim_Clip1_AnimSource2.animation[17].source"
		;
connectAttr "Hero__1_:nurbsCircle11_scaleZ.output" "anim_Clip1_AnimSource2.animation[18].source"
		;
connectAttr "Hero__1_:nurbsCircle11_visibility.output" "anim_Clip1_AnimSource2.animation[19].source"
		;
connectAttr "Composition1.clipTime[2]" "anim_Clip3.clip[0].parentTime";
connectAttr "Composition1.track[2].index" "anim_Clip3.track";
connectAttr "Composition1.track[2].trackMuted" "anim_Clip3.clipTrackMuted";
connectAttr "anim_Clip1_AnimSource2.rosters" "anim_Clip3.animSource";
connectAttr "Hero__1_:nurbsCircle15_translateX.output" "anim_Clip1_AnimSource3.animation[0].source"
		;
connectAttr "Hero__1_:nurbsCircle15_translateY.output" "anim_Clip1_AnimSource3.animation[1].source"
		;
connectAttr "Hero__1_:nurbsCircle15_translateZ.output" "anim_Clip1_AnimSource3.animation[2].source"
		;
connectAttr "Hero__1_:nurbsCircle15_rotateX.output" "anim_Clip1_AnimSource3.animation[3].source"
		;
connectAttr "Hero__1_:nurbsCircle15_rotateY.output" "anim_Clip1_AnimSource3.animation[4].source"
		;
connectAttr "Hero__1_:nurbsCircle15_rotateZ.output" "anim_Clip1_AnimSource3.animation[5].source"
		;
connectAttr "Hero__1_:nurbsCircle15_scaleX.output" "anim_Clip1_AnimSource3.animation[6].source"
		;
connectAttr "Hero__1_:nurbsCircle15_scaleY.output" "anim_Clip1_AnimSource3.animation[7].source"
		;
connectAttr "Hero__1_:nurbsCircle15_scaleZ.output" "anim_Clip1_AnimSource3.animation[8].source"
		;
connectAttr "Hero__1_:nurbsCircle15_visibility.output" "anim_Clip1_AnimSource3.animation[9].source"
		;
connectAttr "Hero__1_:nurbsCircle16_translateX.output" "anim_Clip1_AnimSource3.animation[10].source"
		;
connectAttr "Hero__1_:nurbsCircle16_translateY.output" "anim_Clip1_AnimSource3.animation[11].source"
		;
connectAttr "Hero__1_:nurbsCircle16_translateZ.output" "anim_Clip1_AnimSource3.animation[12].source"
		;
connectAttr "Hero__1_:nurbsCircle16_rotateX.output" "anim_Clip1_AnimSource3.animation[13].source"
		;
connectAttr "Hero__1_:nurbsCircle16_rotateY.output" "anim_Clip1_AnimSource3.animation[14].source"
		;
connectAttr "Hero__1_:nurbsCircle16_rotateZ.output" "anim_Clip1_AnimSource3.animation[15].source"
		;
connectAttr "Hero__1_:nurbsCircle16_scaleX.output" "anim_Clip1_AnimSource3.animation[16].source"
		;
connectAttr "Hero__1_:nurbsCircle16_scaleY.output" "anim_Clip1_AnimSource3.animation[17].source"
		;
connectAttr "Hero__1_:nurbsCircle16_scaleZ.output" "anim_Clip1_AnimSource3.animation[18].source"
		;
connectAttr "Hero__1_:nurbsCircle16_visibility.output" "anim_Clip1_AnimSource3.animation[19].source"
		;
connectAttr "Composition1.clipTime[3]" "anim_Clip4.clip[0].parentTime";
connectAttr "Composition1.track[3].index" "anim_Clip4.track";
connectAttr "Composition1.track[3].trackMuted" "anim_Clip4.clipTrackMuted";
connectAttr "anim_Clip1_AnimSource3.rosters" "anim_Clip4.animSource";
connectAttr ":mentalrayGlobals.message" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.message" ":mentalrayItemsList.opt" -nextAvailable
		;
connectAttr ":miDefaultFramebuffer.message" ":mentalrayItemsList.fb" -nextAvailable
		;
connectAttr ":miDefaultOptions.message" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.message" ":mentalrayGlobals.fb";
connectAttr "place2dTexture1.outUV" "checker1.uvCoord";
connectAttr "place2dTexture1.outUvFilterSize" "checker1.uvFilterSize";
connectAttr "skinCluster1GroupParts.outputGeometry" "skinCluster1.input[0].inputGeometry"
		;
connectAttr "skinCluster1GroupId.groupId" "skinCluster1.input[0].groupId";
connectAttr "bindPose3.message" "skinCluster1.bindPose";
connectAttr "Joint_Main.worldMatrix" "skinCluster1.matrix[0]";
connectAttr "Joint_Shoulder.worldMatrix" "skinCluster1.matrix[1]";
connectAttr "Joint_Neck.worldMatrix" "skinCluster1.matrix[2]";
connectAttr "Joint_Head.worldMatrix" "skinCluster1.matrix[3]";
connectAttr "Joint_Arm_Right.worldMatrix" "skinCluster1.matrix[4]";
connectAttr "Joint_Upper_Right.worldMatrix" "skinCluster1.matrix[5]";
connectAttr "Joint_Elbow_Right.worldMatrix" "skinCluster1.matrix[6]";
connectAttr "Joint_Fist_Right.worldMatrix" "skinCluster1.matrix[7]";
connectAttr "Joint_Arm_Left.worldMatrix" "skinCluster1.matrix[8]";
connectAttr "Joint_Upper_Left.worldMatrix" "skinCluster1.matrix[9]";
connectAttr "Joint_Elbow_Left.worldMatrix" "skinCluster1.matrix[10]";
connectAttr "Joint_Waist.worldMatrix" "skinCluster1.matrix[12]";
connectAttr "Joint_Leg_Right.worldMatrix" "skinCluster1.matrix[13]";
connectAttr "Joint_Knee_Right.worldMatrix" "skinCluster1.matrix[14]";
connectAttr "Joint_Leg_Left.worldMatrix" "skinCluster1.matrix[16]";
connectAttr "Joint_Knee_Left.worldMatrix" "skinCluster1.matrix[17]";
connectAttr "Joint_Main.lockInfluenceWeights" "skinCluster1.lockWeights[0]";
connectAttr "Joint_Shoulder.lockInfluenceWeights" "skinCluster1.lockWeights[1]";
connectAttr "Joint_Neck.lockInfluenceWeights" "skinCluster1.lockWeights[2]";
connectAttr "Joint_Head.lockInfluenceWeights" "skinCluster1.lockWeights[3]";
connectAttr "Joint_Arm_Right.lockInfluenceWeights" "skinCluster1.lockWeights[4]"
		;
connectAttr "Joint_Upper_Right.lockInfluenceWeights" "skinCluster1.lockWeights[5]"
		;
connectAttr "Joint_Elbow_Right.lockInfluenceWeights" "skinCluster1.lockWeights[6]"
		;
connectAttr "Joint_Fist_Right.lockInfluenceWeights" "skinCluster1.lockWeights[7]"
		;
connectAttr "Joint_Arm_Left.lockInfluenceWeights" "skinCluster1.lockWeights[8]";
connectAttr "Joint_Upper_Left.lockInfluenceWeights" "skinCluster1.lockWeights[9]"
		;
connectAttr "Joint_Elbow_Left.lockInfluenceWeights" "skinCluster1.lockWeights[10]"
		;
connectAttr "Joint_Waist.lockInfluenceWeights" "skinCluster1.lockWeights[12]";
connectAttr "Joint_Leg_Right.lockInfluenceWeights" "skinCluster1.lockWeights[13]"
		;
connectAttr "Joint_Knee_Right.lockInfluenceWeights" "skinCluster1.lockWeights[14]"
		;
connectAttr "Joint_Leg_Left.lockInfluenceWeights" "skinCluster1.lockWeights[16]"
		;
connectAttr "Joint_Knee_Left.lockInfluenceWeights" "skinCluster1.lockWeights[17]"
		;
connectAttr "Joint_Main.objectColorRGB" "skinCluster1.influenceColor[0]";
connectAttr "Joint_Shoulder.objectColorRGB" "skinCluster1.influenceColor[1]";
connectAttr "Joint_Neck.objectColorRGB" "skinCluster1.influenceColor[2]";
connectAttr "Joint_Head.objectColorRGB" "skinCluster1.influenceColor[3]";
connectAttr "Joint_Arm_Right.objectColorRGB" "skinCluster1.influenceColor[4]";
connectAttr "Joint_Upper_Right.objectColorRGB" "skinCluster1.influenceColor[5]";
connectAttr "Joint_Elbow_Right.objectColorRGB" "skinCluster1.influenceColor[6]";
connectAttr "Joint_Fist_Right.objectColorRGB" "skinCluster1.influenceColor[7]";
connectAttr "Joint_Arm_Left.objectColorRGB" "skinCluster1.influenceColor[8]";
connectAttr "Joint_Upper_Left.objectColorRGB" "skinCluster1.influenceColor[9]";
connectAttr "Joint_Elbow_Left.objectColorRGB" "skinCluster1.influenceColor[10]";
connectAttr "Joint_Waist.objectColorRGB" "skinCluster1.influenceColor[12]";
connectAttr "Joint_Leg_Right.objectColorRGB" "skinCluster1.influenceColor[13]";
connectAttr "Joint_Knee_Right.objectColorRGB" "skinCluster1.influenceColor[14]";
connectAttr "Joint_Leg_Left.objectColorRGB" "skinCluster1.influenceColor[16]";
connectAttr "Joint_Knee_Left.objectColorRGB" "skinCluster1.influenceColor[17]";
connectAttr "geomBind1.skinClusters" "skinCluster1.geomBind";
connectAttr "Joint_Fist_Right.message" "skinCluster1.paintTrans";
connectAttr "groupParts3.outputGeometry" "tweak1.input[0].inputGeometry";
connectAttr "groupId3.groupId" "tweak1.input[0].groupId";
connectAttr "skinCluster1GroupId.message" "skinCluster1Set.groupNodes" -nextAvailable
		;
connectAttr "GuardShape.instObjGroups.objectGroups[3]" "skinCluster1Set.dagSetMembers"
		 -nextAvailable;
connectAttr "skinCluster1.message" "skinCluster1Set.usedBy[0]";
connectAttr "tweak1.outputGeometry[0]" "skinCluster1GroupParts.inputGeometry";
connectAttr "skinCluster1GroupId.groupId" "skinCluster1GroupParts.groupId";
connectAttr "groupId3.message" "tweakSet1.groupNodes" -nextAvailable;
connectAttr "GuardShape.instObjGroups.objectGroups[4]" "tweakSet1.dagSetMembers"
		 -nextAvailable;
connectAttr "tweak1.message" "tweakSet1.usedBy[0]";
connectAttr "GuardShapeOrig1.worldMesh" "groupParts3.inputGeometry";
connectAttr "groupId3.groupId" "groupParts3.groupId";
connectAttr "Joint_Main.message" "bindPose3.members[0]";
connectAttr "Joint_Shoulder.message" "bindPose3.members[1]";
connectAttr "Joint_Neck.message" "bindPose3.members[2]";
connectAttr "Joint_Head.message" "bindPose3.members[3]";
connectAttr "Joint_Arm_Right.message" "bindPose3.members[4]";
connectAttr "Joint_Upper_Right.message" "bindPose3.members[5]";
connectAttr "Joint_Elbow_Right.message" "bindPose3.members[6]";
connectAttr "Joint_Fist_Right.message" "bindPose3.members[7]";
connectAttr "Joint_Arm_Left.message" "bindPose3.members[8]";
connectAttr "Joint_Upper_Left.message" "bindPose3.members[9]";
connectAttr "Joint_Elbow_Left.message" "bindPose3.members[10]";
connectAttr "Joint_Waist.message" "bindPose3.members[12]";
connectAttr "Joint_Leg_Right.message" "bindPose3.members[13]";
connectAttr "Joint_Knee_Right.message" "bindPose3.members[14]";
connectAttr "Joint_Leg_Left.message" "bindPose3.members[16]";
connectAttr "Joint_Knee_Left.message" "bindPose3.members[17]";
connectAttr "bindPose3.world" "bindPose3.parents[0]";
connectAttr "bindPose3.members[0]" "bindPose3.parents[1]";
connectAttr "bindPose3.members[1]" "bindPose3.parents[2]";
connectAttr "bindPose3.members[2]" "bindPose3.parents[3]";
connectAttr "bindPose3.members[1]" "bindPose3.parents[4]";
connectAttr "bindPose3.members[4]" "bindPose3.parents[5]";
connectAttr "bindPose3.members[5]" "bindPose3.parents[6]";
connectAttr "bindPose3.members[6]" "bindPose3.parents[7]";
connectAttr "bindPose3.members[1]" "bindPose3.parents[8]";
connectAttr "bindPose3.members[8]" "bindPose3.parents[9]";
connectAttr "bindPose3.members[9]" "bindPose3.parents[10]";
connectAttr "bindPose3.members[0]" "bindPose3.parents[12]";
connectAttr "bindPose3.members[12]" "bindPose3.parents[13]";
connectAttr "bindPose3.members[13]" "bindPose3.parents[14]";
connectAttr "bindPose3.members[12]" "bindPose3.parents[16]";
connectAttr "bindPose3.members[16]" "bindPose3.parents[17]";
connectAttr "Joint_Main.bindPose" "bindPose3.worldMatrix[0]";
connectAttr "Joint_Shoulder.bindPose" "bindPose3.worldMatrix[1]";
connectAttr "Joint_Neck.bindPose" "bindPose3.worldMatrix[2]";
connectAttr "Joint_Head.bindPose" "bindPose3.worldMatrix[3]";
connectAttr "Joint_Arm_Right.bindPose" "bindPose3.worldMatrix[4]";
connectAttr "Joint_Upper_Right.bindPose" "bindPose3.worldMatrix[5]";
connectAttr "Joint_Elbow_Right.bindPose" "bindPose3.worldMatrix[6]";
connectAttr "Joint_Fist_Right.bindPose" "bindPose3.worldMatrix[7]";
connectAttr "Joint_Arm_Left.bindPose" "bindPose3.worldMatrix[8]";
connectAttr "Joint_Upper_Left.bindPose" "bindPose3.worldMatrix[9]";
connectAttr "Joint_Elbow_Left.bindPose" "bindPose3.worldMatrix[10]";
connectAttr "Joint_Waist.bindPose" "bindPose3.worldMatrix[12]";
connectAttr "Joint_Leg_Right.bindPose" "bindPose3.worldMatrix[13]";
connectAttr "Joint_Knee_Right.bindPose" "bindPose3.worldMatrix[14]";
connectAttr "Joint_Leg_Left.bindPose" "bindPose3.worldMatrix[16]";
connectAttr "Joint_Knee_Left.bindPose" "bindPose3.worldMatrix[17]";
connectAttr "bindPose3.message" "geomBind1.bindPose";
connectAttr "skinCluster1.outputGeometry[0]" "groupParts4.inputGeometry";
connectAttr "groupParts4.outputGeometry" "groupParts5.inputGeometry";
connectAttr "groupParts5.outputGeometry" "groupParts6.inputGeometry";
connectAttr "place2dTexture2.coverage" "PSD_lambert1_color.coverage";
connectAttr "place2dTexture2.translateFrame" "PSD_lambert1_color.translateFrame"
		;
connectAttr "place2dTexture2.rotateFrame" "PSD_lambert1_color.rotateFrame";
connectAttr "place2dTexture2.mirrorU" "PSD_lambert1_color.mirrorU";
connectAttr "place2dTexture2.mirrorV" "PSD_lambert1_color.mirrorV";
connectAttr "place2dTexture2.stagger" "PSD_lambert1_color.stagger";
connectAttr "place2dTexture2.wrapU" "PSD_lambert1_color.wrapU";
connectAttr "place2dTexture2.wrapV" "PSD_lambert1_color.wrapV";
connectAttr "place2dTexture2.repeatUV" "PSD_lambert1_color.repeatUV";
connectAttr "place2dTexture2.offset" "PSD_lambert1_color.offset";
connectAttr "place2dTexture2.rotateUV" "PSD_lambert1_color.rotateUV";
connectAttr "place2dTexture2.noiseUV" "PSD_lambert1_color.noiseUV";
connectAttr "place2dTexture2.vertexUvOne" "PSD_lambert1_color.vertexUvOne";
connectAttr "place2dTexture2.vertexUvTwo" "PSD_lambert1_color.vertexUvTwo";
connectAttr "place2dTexture2.vertexUvThree" "PSD_lambert1_color.vertexUvThree";
connectAttr "place2dTexture2.vertexCameraOne" "PSD_lambert1_color.vertexCameraOne"
		;
connectAttr "place2dTexture2.outUV" "PSD_lambert1_color.uvCoord";
connectAttr "place2dTexture2.outUvFilterSize" "PSD_lambert1_color.uvFilterSize";
connectAttr ":defaultColorMgtGlobals.cmEnabled" "file1.colorManagementEnabled";
connectAttr ":defaultColorMgtGlobals.configFileEnabled" "file1.colorManagementConfigFileEnabled"
		;
connectAttr ":defaultColorMgtGlobals.configFilePath" "file1.colorManagementConfigFilePath"
		;
connectAttr ":defaultColorMgtGlobals.workingSpaceName" "file1.workingSpace";
connectAttr "place2dTexture3.coverage" "file1.coverage";
connectAttr "place2dTexture3.translateFrame" "file1.translateFrame";
connectAttr "place2dTexture3.rotateFrame" "file1.rotateFrame";
connectAttr "place2dTexture3.mirrorU" "file1.mirrorU";
connectAttr "place2dTexture3.mirrorV" "file1.mirrorV";
connectAttr "place2dTexture3.stagger" "file1.stagger";
connectAttr "place2dTexture3.wrapU" "file1.wrapU";
connectAttr "place2dTexture3.wrapV" "file1.wrapV";
connectAttr "place2dTexture3.repeatUV" "file1.repeatUV";
connectAttr "place2dTexture3.offset" "file1.offset";
connectAttr "place2dTexture3.rotateUV" "file1.rotateUV";
connectAttr "place2dTexture3.noiseUV" "file1.noiseUV";
connectAttr "place2dTexture3.vertexUvOne" "file1.vertexUvOne";
connectAttr "place2dTexture3.vertexUvTwo" "file1.vertexUvTwo";
connectAttr "place2dTexture3.vertexUvThree" "file1.vertexUvThree";
connectAttr "place2dTexture3.vertexCameraOne" "file1.vertexCameraOne";
connectAttr "place2dTexture3.outUV" "file1.uvCoord";
connectAttr "place2dTexture3.outUvFilterSize" "file1.uvFilterSize";
connectAttr "groupParts6.outputGeometry" "groupParts7.inputGeometry";
connectAttr "file2.outColor" "lambert2.color";
connectAttr "lambert2.outColor" "lambert2SG.surfaceShader";
connectAttr "GuardShape.instObjGroups" "lambert2SG.dagSetMembers" -nextAvailable
		;
connectAttr "lambert2SG.message" "materialInfo1.shadingGroup";
connectAttr "lambert2.message" "materialInfo1.material";
connectAttr "file2.message" "materialInfo1.texture" -nextAvailable;
connectAttr ":defaultColorMgtGlobals.cmEnabled" "file2.colorManagementEnabled";
connectAttr ":defaultColorMgtGlobals.configFileEnabled" "file2.colorManagementConfigFileEnabled"
		;
connectAttr ":defaultColorMgtGlobals.configFilePath" "file2.colorManagementConfigFilePath"
		;
connectAttr ":defaultColorMgtGlobals.workingSpaceName" "file2.workingSpace";
connectAttr "place2dTexture4.coverage" "file2.coverage";
connectAttr "place2dTexture4.translateFrame" "file2.translateFrame";
connectAttr "place2dTexture4.rotateFrame" "file2.rotateFrame";
connectAttr "place2dTexture4.mirrorU" "file2.mirrorU";
connectAttr "place2dTexture4.mirrorV" "file2.mirrorV";
connectAttr "place2dTexture4.stagger" "file2.stagger";
connectAttr "place2dTexture4.wrapU" "file2.wrapU";
connectAttr "place2dTexture4.wrapV" "file2.wrapV";
connectAttr "place2dTexture4.repeatUV" "file2.repeatUV";
connectAttr "place2dTexture4.offset" "file2.offset";
connectAttr "place2dTexture4.rotateUV" "file2.rotateUV";
connectAttr "place2dTexture4.noiseUV" "file2.noiseUV";
connectAttr "place2dTexture4.vertexUvOne" "file2.vertexUvOne";
connectAttr "place2dTexture4.vertexUvTwo" "file2.vertexUvTwo";
connectAttr "place2dTexture4.vertexUvThree" "file2.vertexUvThree";
connectAttr "place2dTexture4.vertexCameraOne" "file2.vertexCameraOne";
connectAttr "place2dTexture4.outUV" "file2.uvCoord";
connectAttr "place2dTexture4.outUvFilterSize" "file2.uvFilterSize";
connectAttr "groupParts7.outputGeometry" "polyTweakUV1.inputPolymesh";
connectAttr "lambert2SG.partition" ":renderPartition.sets" -nextAvailable;
connectAttr "lambert2.message" ":defaultShaderList1.shaders" -nextAvailable;
connectAttr "place2dTexture1.message" ":defaultRenderUtilityList1.utilities" -nextAvailable
		;
connectAttr "place2dTexture2.message" ":defaultRenderUtilityList1.utilities" -nextAvailable
		;
connectAttr "place2dTexture3.message" ":defaultRenderUtilityList1.utilities" -nextAvailable
		;
connectAttr "place2dTexture4.message" ":defaultRenderUtilityList1.utilities" -nextAvailable
		;
connectAttr "defaultRenderLayer.message" ":defaultRenderingList1.rendering" -nextAvailable
		;
connectAttr "checker1.message" ":defaultTextureList1.textures" -nextAvailable;
connectAttr "PSD_lambert1_color.message" ":defaultTextureList1.textures" -nextAvailable
		;
connectAttr "file1.message" ":defaultTextureList1.textures" -nextAvailable;
connectAttr "file2.message" ":defaultTextureList1.textures" -nextAvailable;
connectAttr "file1.outColor" ":lambert1.color";
connectAttr "file1.message" ":initialMaterialInfo.texture" -nextAvailable;
connectAttr "UVShapeHiddenFacesSet.message" ":defaultHideFaceDataSet.dnSetMembers"
		 -nextAvailable;
connectAttr "UVShapeHiddenFacesSet1.message" ":defaultHideFaceDataSet.dnSetMembers"
		 -nextAvailable;
// End of Guard_Maya.ma
