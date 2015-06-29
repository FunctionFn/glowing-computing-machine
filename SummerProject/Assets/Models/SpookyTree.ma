//Maya ASCII 2015 scene
//Name: SpookyTree.ma
//Last modified: Mon, Jun 29, 2015 05:03:01 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.871174344701302 21.145937414315952 213.77650551630626 ;
	setAttr ".r" -type "double3" -5.1383527563721945 4.2000000000023405 9.9659972922829353e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 225.1653070481924;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.2584074106081617 -41.703914513916281 12.492758880520054 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -3.5472728576525343 5.8670617434079375 -18.849112381076626 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.49503979086875916 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 9.7334845641070515;
	setAttr ".h" 11.734123486815875;
	setAttr ".d" 41.702545153432929;
	setAttr ".sw" 4;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  -3.1749239 11.82045364 -1.00081110001
		 -0.94018525 11.8204565 6.15339327 -7.317831e-015 11.8204565 7.66318035 1.11857772
		 11.8204565 6.15339327 3.1749239 11.8204565 -1.00081110001 -3.1749239 4.63894224 3.5527137e-015
		 -0.92208391 9.24482918 7.6773262 1.6727239e-015 11.26175976 9.098686218 1.11065364
		 9.24482918 7.6773262 3.1749239 4.63894129 3.5527137e-015 -3.1749239 -8.65507412 -0.30309439
		 -0.92208391 -6.57253695 -4.93146849 -9.5367432e-007 -4.55561733 -8.63664246 0.92607695
		 -6.57254076 -4.9314661 3.17492437 -8.65507221 -0.30309403 -3.1749239 0 0 -0.94018525
		 2.9802322e-008 -4.41381454 -1.193377e-016 0 -8.33357048 0.93619215 0 -4.41381454
		 3.1749239 0 0;
createNode polySplit -n "polySplit1";
	setAttr -s 11 ".e[0:10]"  0.54504299 0.54504299 0.54504299 0.54504299
		 0.54504299 0.45495701 0.45495701 0.45495701 0.45495701 0.45495701 0.54504299;
	setAttr -s 11 ".d[0:10]"  -2147483627 -2147483626 -2147483625 -2147483624 -2147483623 -2147483613 
		-2147483614 -2147483615 -2147483616 -2147483617 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[0:29]" -type "float3"  5.23472118 1.3062458 16.43139076
		 2.19601607 0.12331152 10.071083069 6.8737418e-015 0.12331152 8.56129456 -2.31214046
		 0.12331152 10.071083069 -5.23472118 1.30624437 16.43138695 5.23472118 -1.50795746
		 14.26388168 2.18423295 -5.26515293 6.016975403 9.9181121e-016 -6.44912815 4.036594391
		 -2.30698252 -5.26515579 6.016979218 -5.23472118 -1.5079565 14.26388168 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.193377e-016 0 0 0 0 0 0 0 0 0 7.64020729 8.21104622
		 0 12.47902966 7.24085617 0 15.50004387 8.61367798 0 12.47902775 7.24085331 0 7.64020729
		 8.21104622 0 2.02415514 8.50117207 0 2.02415514 7.65203571 -1.5837102e-016 2.02415514
		 9.10158253 0 2.02415514 7.65203571 0 2.024152756 8.50117207;
createNode polySplit -n "polySplit2";
	setAttr -s 11 ".e[0:10]"  0.42101699 0.42101699 0.42101699 0.42101699
		 0.42101699 0.57898301 0.57898301 0.57898301 0.57898301 0.57898301 0.42101699;
	setAttr -s 11 ".d[0:10]"  -2147483627 -2147483626 -2147483625 -2147483624 -2147483623 -2147483607 
		-2147483606 -2147483605 -2147483604 -2147483603 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[0:39]" -type "float3"  -0.74205899 -4.48455524 -1.028316498
		 -1.43448663 -4.36608267 -1.82221222 -0.046548553 -4.36608267 -1.82221222 1.41478324
		 -4.36608267 -1.82221222 0.74205899 -4.48455191 -1.028312683 -0.74205899 -4.48896551
		 0.13838196 -0.44742298 -3.38958597 1.19432449 -0.013906995 -4.72918797 1.76465988
		 0.44397175 -3.38958788 1.19432068 0.74205899 -4.48896456 0.13838196 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 -0.43279648 -2.11444139 5.069993973 -0.048674587 -2.11444139
		 8.98974991 0.33499265 -2.11444139 5.069993973 0 0 0 -2.12593746 1.7400198 0 0 0 0
		 0 0 0 0 0 0 2.12593746 1.7400198 0 2.12593746 5.11814928 0 4.022877216 0.11546648
		 -1.46821737 -0.046548553 0.11546648 -1.46821737 -4.022877693 0.11546648 -1.46821737
		 -2.12593746 5.11815023 0 -1.32469559 2.91546726 -2.51175117 -0.78780341 3.64205551
		 -1.4345932 -0.013907076 4.77171707 -1.1109314 0.78780341 3.6420536 -1.43459702 1.32469559
		 2.91546726 -2.51175117 1.32469559 3.32770109 -3.18725014 2.51283503 -1.11227918 -9.18289661
		 -0.046548553 -1.11227918 -9.18289661 -2.52424288 -1.11227918 -9.18289661 -1.32469559
		 3.32770157 -3.18725014;
createNode polySplit -n "polySplit3";
	setAttr -s 11 ".e[0:10]"  0.330176 0.330176 0.330176 0.330176 0.330176
		 0.669824 0.669824 0.669824 0.669824 0.669824 0.330176;
	setAttr -s 11 ".d[0:10]"  -2147483627 -2147483626 -2147483625 -2147483624 -2147483623 -2147483587 
		-2147483586 -2147483585 -2147483584 -2147483583 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[18]" "e[21]" "e[23]" "e[25]" "e[28]" "e[33]" "e[36]" "e[38]" "e[40]" "e[43]" "e[56]" "e[58]" "e[60]" "e[63]" "e[76]" "e[78]" "e[80]" "e[83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 50 ".tk[0:49]" -type "float3"  -0.60082316 0 0.24883652 0.28333068
		 0 0.24883652 0 0 0.24883652 -0.24498749 0 0.24883652 0.60082316 0 0.24883652 -0.60082316
		 0 0.24883652 -0.7100513 0 -0.23752594 0 0.54931736 -0.24884033 0.72859013 0 -0.23752594
		 0.60082316 0 0.24883652 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.95262051 0 0 0 0 0 0 0 0 0 0 0 -1.95262051 0
		 -1.56235218 0 -1.21479988 -0.70987177 0 -1.89749527 -0.0034295525 0 -1.89749527 0.72840238
		 0 -1.89749527 1.56235218 0 -1.21479988 1.56235218 -3.47670317 -1.21479988 1.15513849
		 0 3.84205341 -0.01147892 0 3.84205341 -1.14086103 0 3.84205341 -1.56235218 -3.47670412
		 -1.21479988 -2.20543861 2.96143293 -4.40113068 -0.29403615 3.79470253 -4.97367477
		 -0.0068630297 4.05780983 -4.98125458 0.30835676 3.79470062 -4.97367477 2.20543861
		 2.96143293 -4.40113068 2.20543861 0.14171124 -4.40113068 1.64072704 1.46950531 -2.57327843
		 -0.022971302 1.46950531 -2.57327843 -1.61722279 1.46950531 -2.57327843 -2.20543861
		 0.14171219 -4.40113068;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[31]" "e[35]" "e[41]" "e[45]" "e[61]" "e[65]" "e[81]" "e[85]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 39 ".tk[11:49]" -type "float3"  0 0 0.91962242 0 0 4.53970909
		 0 0 0.91961861 0 0 0 0 0 0 0 0 -4.53970909 0 0 -4.53970909 0 0 -4.53970909 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0;
createNode polySplit -n "polySplit4";
	setAttr -s 11 ".e[0:10]"  0.284372 0.284372 0.284372 0.284372 0.284372
		 0.71562803 0.71562803 0.71562803 0.71562803 0.71562803 0.284372;
	setAttr -s 11 ".d[0:10]"  -2147483617 -2147483616 -2147483615 -2147483614 -2147483613 -2147483608 
		-2147483609 -2147483610 -2147483611 -2147483612 -2147483617;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 64262;
	setAttr ".lt" -type "double3" 0 0 8.056321 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6970998611315382 7.5776854845578399 16.653260360622593 ;
	setAttr ".cbx" -type "double3" 0.6025541458264696 12.366885313659402 16.653260360622593 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 50 ".tk[10:59]" -type "float3"  0 1.22494936 0.15154839 0
		 0 0 0 0 0 0 0 0 0 1.22495079 0.15154839 0 -1.22495079 -0.15154648 0 0 0 0 0 0 0 0
		 0 0 -1.22495079 -0.15154648 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.52095699 -4.073768616 0.41159248 -0.84916544
		 -3.19840002 3.60827637 -0.0084559955 -3.19840002 3.60827637 0.84030151 -3.19840002
		 3.60827637 1.52095699 -4.073768139 0.41159248 1.52095699 -1.76966476 0.62849617 0.5951612
		 2.034383297 3.28258324 -1.4605644e-007 3.51972055 3.34347343 -0.59025812 2.034383774
		 3.28258324 -1.52095699 -1.76966572 0.62849617;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[60:69]" -type "float3"  0 -0.3899889 -4.98729324 0
		 -0.38998902 -4.98729324 0 -0.71700954 -4.98729324 0 -0.71700954 -4.98729324 0 -0.38998902
		 -4.98729324 0 -0.71700954 -4.98729324 0 -0.38998902 -4.98729324 0 -0.71700954 -4.98729324
		 0 -0.3899889 -4.98729324 0 -0.71700954 -4.98729324;
createNode polySplit -n "polySplit5";
	setAttr -s 21 ".e[0:20]"  0.49643099 0.49643099 0.49643099 0.49643099
		 0.49643099 0.49643099 0.49643099 0.50356901 0.50356901 0.50356901 0.49643099 0.50356901
		 0.50356901 0.50356901 0.50356901 0.50356901 0.50356901 0.49643099 0.49643099 0.49643099
		 0.49643099;
	setAttr -s 21 ".d[0:20]"  -2147483632 -2147483528 -2147483531 -2147483524 -2147483519 -2147483514 
		-2147483631 -2147483561 -2147483581 -2147483601 -2147483541 -2147483621 -2147483622 -2147483623 -2147483624 -2147483625 -2147483536 -2147483596 
		-2147483576 -2147483556 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[69:72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 37540;
	setAttr ".lt" -type "double3" 0 0 1.238439 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6971027221544874 7.1876964661175933 19.722287307644077 ;
	setAttr ".cbx" -type "double3" 0.6025541458264696 9.1767417284543242 19.722287307644077 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[71]" -type "float3" 0 0.22611904 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.20493507 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.2261188 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.20493317 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.22611666 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.37677479 0 ;
	setAttr ".tk[83]" -type "float3" 0 -1.3258376 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.37677622 0 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 100 ".tk[0:99]" -type "float3"  0 -0.78959751 0 0 0.12218881
		 0 0 0.12218881 0.029850006 0 0.12218881 0 0 -0.78960156 0 0 -0.13007259 0.032226563
		 0 0.46407557 0.90061951 0 1.15926266 1.59628677 0 0.44104004 0.90632629 0 -0.15476131
		 0.038345337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49261379 0.74585915 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 -1.079215169 0.11994553 0 -0.05783999 0.57694244 0 -2.90767837 1.24876785 1.22164917
		 -0.39470506 -0.047473907 0 -0.048969626 1.20991135 0 -2.90767837 2.41574478 0 -0.058023572
		 0.50218582 0 -2.90767837 1.24876785 0 -1.080900431 0.11994553 -1.22164941 -0.43024015
		 -0.047473907 0 -0.04514122 0.011184692 1.22164917 -0.94695783 -0.047473907 0 -0.93685603
		 1.24876785 0 -0.83902669 2.094024658 0 -0.94260883 1.24876785 -1.22164941 -0.94695783
		 -0.047473907 0 -0.059242249 0.014678955 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.62836814 -1.35582209 0.70151138 0 -0.29136324
		 2.30400085 0.69684243 -0.94695783 0.62780762 1.68213534 -0.94695783 0.11511612 0
		 -0.29136324 3.28668976 0.0090796873 -0.94695783 0.93198776 0 -0.29136324 2.18116379
		 -0.72105408 -0.94695783 0.59716415 -0.62836814 -1.35582685 0.67048264 -1.68213534
		 -0.94695783 0.11022186;
createNode polySplit -n "polySplit6";
	setAttr -s 13 ".e[0:12]"  0.45145401 0.45145401 0.45145401 0.45145401
		 0.45145401 0.45145401 0.54854602 0.54854602 0.54854602 0.54854602 0.54854602 0.54854602
		 0.45145401;
	setAttr -s 13 ".d[0:12]"  -2147483615 -2147483614 -2147483613 -2147483612 -2147483611 -2147483486 
		-2147483551 -2147483552 -2147483553 -2147483554 -2147483555 -2147483479 -2147483615;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[100:111]" -type "float3"  0 1.026789665 -1.18645072
		 0 1.026789665 -1.18645072 0 1.026788712 -1.18645072 0 1.026789665 -1.18645072 0 1.026789665
		 -1.18645072 0 1.026789665 -1.18645072 0 1.026789427 -1.18645072 0 1.026789546 -1.18645096
		 0 1.026789546 -1.18645096 0 1.026789546 -1.18645096 0 1.026789427 -1.18645072 0 1.026789427
		 -1.18645072;
createNode polySplit -n "polySplit7";
	setAttr -s 13 ".e[0:12]"  0.39580801 0.60419202 0.60419202 0.60419202
		 0.60419202 0.60419202 0.60419202 0.39580801 0.39580801 0.39580801 0.39580801 0.39580801
		 0.39580801;
	setAttr -s 13 ".d[0:12]"  -2147483610 -2147483487 -2147483591 -2147483592 -2147483593 -2147483594 
		-2147483595 -2147483478 -2147483606 -2147483607 -2147483608 -2147483609 -2147483610;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 94 ".tk[30:123]" -type "float3"  0 1.036245346 0 0 1.036245346
		 0 0 1.036245346 0 0 1.036245346 0 0 1.036245346 0 0 1.036245823 0 0 1.036245823 0
		 0 1.036245823 0 0 1.036245823 0 0 1.036245823 0 0 1.17035961 0.43765068 0 1.17035961
		 0.43765068 0 1.1703577 -0.30820847 0 1.17035961 0.43765068 0 1.17035961 0.43765259
		 0 1.17035866 0.43765259 0 1.17035913 0.43765068 0 1.17035913 0.43765068 0 1.17035913
		 0.43765068 0 1.17035866 0.43765068 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.17035866 0.43765259 0 1.036245346 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.036245346 0 0 1.17035866 0.43765068
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.15615177 0.88195229 0 1.69664574
		 0.88195229 0 2.24491024 0.88195229 0 3.016933441 0.88195229 0 3.63464737 0.88195229
		 0 3.016933441 0.88195229 0 2.24491119 0.88195229 0 1.69664574 0.88195229 0 1.15615129
		 0.88195229 0 0.81526208 0.88195229 0 0.81526208 0.88195229 0 0.81526208 0.88195229;
createNode polySplit -n "polySplit8";
	setAttr -s 13 ".e[0:12]"  0.52373701 0.52373701 0.52373701 0.52373701
		 0.52373701 0.52373701 0.47626299 0.47626299 0.47626299 0.47626299 0.47626299 0.47626299
		 0.52373701;
	setAttr -s 13 ".d[0:12]"  -2147483630 -2147483629 -2147483628 -2147483627 -2147483626 -2147483489 
		-2147483570 -2147483569 -2147483568 -2147483567 -2147483566 -2147483476 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 4 "f[88]" "f[91]" "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 43880;
	setAttr ".lt" -type "double3" 0 0 4.360716 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6971027221544874 6.8963333460385527 19.842232833767124 ;
	setAttr ".cbx" -type "double3" 0.6025541458264696 7.1729402634198394 24.247414718532749 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 106 ".tk[30:135]" -type "float3"  -1.25454807 0 0 -0.57001758
		 0 0 -0.0027538091 0 0 0.58489776 0 0 1.25454807 0 0 1.25454807 0 0 0.92756128 0 0
		 -0.0092173517 0 0 -0.91609621 0 0 -1.25454807 0 0 -1.39157104 0 0 -0.48551202 0 0
		 -0.0043303724 0 0 0.50238061 0 0 1.39157104 0 0 1.39157104 0 0 1.035253525 0 0 -0.01449424
		 0 0 -1.020422935 0 0 -1.39157104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.39157104 0 0 1.25454807 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.25454807 0 0 -1.39157104 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.7709074 0.73633099 0 -0.32806659 0.73633099 0 -0.0024656001
		 0.73633099 0 0.3394649 0.73633099 0 0.7709074 0.73633099 0 0.7709074 0.73633146 0
		 0.7709074 0.73633146 0 0.52804661 0.73633146 0 -0.0082526691 0.73633146 0 -0.51736951
		 0.73633146 0 -0.7709074 0.73633146 0 -0.7709074 0.73633146 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 4 "f[88]" "f[91]" "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 48083;
	setAttr ".lt" -type "double3" 0 0 0.534935 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.6973094310625685 5.6907864901120391 21.565423141384311 ;
	setAttr ".cbx" -type "double3" -0.38999575041376477 5.990360865264627 24.094979415798374 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[136:145]" -type "float3"  0.7217226 3.14074564 2.22369385
		 0.39681888 3.14074564 1.98163986 0.39681888 3.14074564 0.65483093 0.60470009 3.14074564
		 1.40939713 0.009848997 3.14074564 1.66138458 0.009848997 3.14074564 0.17810822 -0.41070628
		 3.14074564 2.016887665 -0.41070628 3.14074564 0.71158981 -0.7217226 3.14074564 2.22622681
		 -0.60469985 3.14074564 1.42581177;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[136:155]" -type "float3"  0 -1.027759075 0 0 -0.97310638
		 0 0 -0.73958302 0 0 -0.75115204 0 0 -0.97057819 0 0 -0.7281847 0 0 -0.97319126 0
		 0 -0.73985147 0 0 -1.026274204 0 0 -0.75134754 0 0 -2.025257826 0.15548325 0 -1.96676993
		 0.15548325 0 -1.73324656 0.15548325 0 -1.74865127 0.15548325 0 -1.96045661 0.15548325
		 0 -1.71806312 0.15548325 0 -1.96698833 0.15548325 0 -1.73364854 0.15548325 0 -2.023939371
		 0.15548325 0 -1.74901271 0.15548325;
createNode polySplit -n "polySplit9";
	setAttr -s 29 ".e[0:28]"  0.49177799 0.50822198 0.50822198 0.50822198
		 0.49177799 0.50822198 0.50822198 0.49177799 0.49177799 0.50822198 0.49177799 0.50822198
		 0.49177799 0.49177799 0.50822198 0.49177799 0.49177799 0.49177799 0.49177799 0.49177799
		 0.49177799 0.49177799 0.49177799 0.49177799 0.49177799 0.49177799 0.49177799 0.49177799
		 0.49177799;
	setAttr -s 29 ".d[0:28]"  -2147483645 -2147483389 -2147483560 -2147483580 -2147483408 -2147483600 
		-2147483437 -2147483542 -2147483633 -2147483484 -2147483637 -2147483540 -2147483440 -2147483602 -2147483417 -2147483582 -2147483562 -2147483392 
		-2147483641 -2147483516 -2147483491 -2147483456 -2147483459 -2147483364 -2147483341 -2147483344 -2147483367 -2147483519 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	setAttr -s 29 ".e[0:28]"  0.46155599 0.53844398 0.53844398 0.53844398
		 0.46155599 0.53844398 0.53844398 0.46155599 0.46155599 0.53844398 0.46155599 0.53844398
		 0.46155599 0.46155599 0.53844398 0.46155599 0.46155599 0.46155599 0.46155599 0.46155599
		 0.46155599 0.46155599 0.46155599 0.46155599 0.46155599 0.46155599 0.46155599 0.46155599
		 0.46155599;
	setAttr -s 29 ".d[0:28]"  -2147483648 -2147483386 -2147483557 -2147483577 -2147483411 -2147483597 
		-2147483434 -2147483545 -2147483636 -2147483481 -2147483640 -2147483537 -2147483443 -2147483605 -2147483414 -2147483585 -2147483565 -2147483395 
		-2147483644 -2147483530 -2147483494 -2147483470 -2147483474 -2147483378 -2147483357 -2147483361 -2147483381 -2147483533 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 5 "f[41:42]" "f[47]" "f[74]" "f[87]" "f[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 52886;
	setAttr ".lt" -type "double3" 0 0 1.241699 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.613335784898627 10.22362054315159 6.4509211882593114 ;
	setAttr ".cbx" -type "double3" 4.5187900695935594 20.704349646239969 11.665907989406772 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 212 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 0.15010929 -0.008972168 0 0.13582814
		 -0.024703979 0 0.0075300932 0 0 0.12629175 -0.021419525 0 0.1271317 -0.0064201355
		 0 1.25110626 -1.53245926 0 1.20876408 -1.74975204 0 0.18575096 -0.41168976 0 1.27903366
		 -1.81867599 0 1.18727493 -1.41039276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.38025188
		 -1.043725967 0 0.33714676 -1.10841179 0 0 -1.10841179 0 0.48610687 -1.10841179 0
		 0.25951862 -1.043725967 0 0 -1.043725967 0 0 -0.56458473 0 0 -0.56458473 0 0 -0.56458473
		 0 0 -1.043725967 0 0.48078156 -1.090997696 0 0.40522003 -1.090997696 0 0 -1.090997696
		 0 0.55609798 -1.090997696 0 0.35594463 -1.090999603 0 0 -1.090999603 0 0 -1.090997696
		 0 0 -1.090997696 0 0 -1.090997696 0 0 -1.090997696 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.76095462 -0.64752197 0 1.031216145 -1.069454193
		 0 1.51235485 -2.015880585 0 1.54572201 -2.079669952 0 0.33116245 -0.12934494 0 0.40366936
		 -0.39811707 0 1.059146166 -1.12293243 0 1.53629875 -2.052417755 0 0.7778976 -0.6784935
		 0 1.53425264 -2.065086365 0 0.88088846 -0.81079102 0 1.45022726 -1.89774323 0 1.42733455
		 -1.86119461 0 0.44314432 -0.38560104 0 1.45662236 -1.91072083 0 1.45029044 -1.90028763
		 0 0.80970764 -0.68561554 0 0 -1.090999603 0 0 -1.043725967 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.043725967 0 0 -1.090997696 0 0.60961139 -0.40265656
		 0 0.1754266 -0.014797211 0 1.099618673 -1.33075333 0 1.41065121 -1.83346176 0 0 0
		 0 0.40680146 -0.33031464 0 0.23751712 -0.046863556 0 1.15425348 -1.42367554 0 0.65637004
		 -0.4690094 0 1.43741441 -1.87953949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0.48304844 -0.23075294 0 0.42158127 -0.64433861 0 -0.40011883 -0.97565651
		 0 0.54498005 -0.64705467 0 0.37596321 -0.23366928 0 -0.29254293 -0.22239685 0 -0.40012836
		 -0.21540642 0 -0.40012813 -0.21540642 0 -0.40012813 -0.22961998 0 -0.40012813 -0.21540642
		 0 -0.40012836 -0.21540642 0 -0.2432456 -0.22073174 0 0.035665751 0 0 0.019633174
		 0 0 0 0 0 0.0062076449 0 0 0 0 0 0 0 0 0.027429104 0 0 0 0 0 0.042630374 0 0 0.010324895
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.14976478 -0.025131226
		 0 -0.40012836 -0.21540642 0 0 -1.090999603 0 0 -0.80021477 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0;
	setAttr ".tk[166:211]" 0 1.1920929e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.62609863
		 -1.076601028 0 1.62609768 -1.090997696 0 1.22596931 -0.44375992 0 1.62609768 -2.18199539
		 0 1.62609768 -2.18199539 0 1.53462601 -2.035938263 0 1.32061243 -1.69111252 0 0.47785401
		 -0.25317764 0 0.0007148385 0 0 0 0 0 0 0 0 0.040717661 0 0 1.018265724 -1.056301117
		 0 0.17406106 -0.030319214 0 -0.40012836 -0.21540642 0 0 -1.090997696 0 0 -0.82257652
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.62609863 -1.073583603
		 0 1.62609768 -1.090999603 0 1.22596931 -0.42164612 0 1.62609768 -2.18199539 0 1.62609792
		 -2.18199539 0 1.52383566 -2.017242432 0 1.29684663 -1.64860916 0 0.43893385 -0.20790863
		 0 3.9339066e-005 0 0 0 0 0 0 0 0 0.033749104 0 0 0.9922049 -1.0070495605;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 3 "f[41:42]" "f[47]" "f[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.5472729 16.94479 9.5688715 ;
	setAttr ".rs" 64163;
	setAttr ".lt" -type "double3" 0 0 1.2416987293110613 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -12.785475906358588 12.513637671142313 6.8606807097436864 ;
	setAttr ".cbx" -type "double3" 5.6909301910535204 21.375942358642313 12.277062545681186 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[74]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 49376;
	setAttr ".lt" -type "double3" 0 0 10.674441 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -19.367008384691108 9.7748707624966826 5.1757212981225926 ;
	setAttr ".cbx" -type "double3" 12.316348854078424 15.106228003173563 13.01768601980228 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 240 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.12821054 -0.056783915 0.054466248
		 -0.02099371 0.053112507 0.0018920898 -1.6354024e-006 0.065238595 0 0.024417639 0.047580719
		 0.0032119751 0.131392 -0.061527967 0.056159973 -0.81857634 0.024738312 0.41438293
		 -0.37245154 1.2586937 0.33234024 -0.00012049358 1.12743855 0.012001038 0.41482997
		 1.23598099 0.36270142 0.79494429 0.0044412613 0.40768051 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 -1.17956352 0.37122345 -0.85084343 -0.005616188 0.90484047 0 0 0.74638367
		 0 0.004778862 0.86536026 0 1.19390869 0.36820602 -0.8593235 0.23176575 -0.031494141
		 -0.11539268 0.013344288 0 0 0 0 0 -0.011142254 0 0 -0.2227459 -0.032135487 -0.11050224
		 -6.40647984 2.82127571 -2.37213516 -0.43815064 2.94477844 -0.18773651 -0.00040285289
		 3.23227119 -0.0016517639 0.46307898 2.92781067 -0.19509697 6.420228 2.74651527 -2.3739872
		 2.77981567 -0.19073677 -0.67805672 1.032475948 -0.15751648 -0.27526855 -0.0010447875
		 0.5735774 -0.00070762634 -0.9762969 -0.15538216 -0.26092339 -2.71652699 -0.1794138
		 -0.66114616 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.015796661
		 -0.00032019615 0.00031661987 -0.0013730526 0.00045585632 0 -0.030277967 0.14436245
		 0.0090713501 -0.16121316 0.2490263 0.11484909 0 0 0 0 0 0 0.002887249 0.0013663769
		 0 0.036375523 0.14221716 0.013538361 0.018183708 -0.00087809563 0.00086975098 0.16184235
		 0.23483753 0.11498642 -0.50037861 -0.028303623 0.25793457 -0.086935043 0.11751223
		 0.048660278 -0.01702261 0.080934286 0.00075912476 0 0 0 0.021261454 0.081994295 0.0025291443
		 0.090398312 0.11248326 0.051345825 0.48323965 -0.044873714 0.25247574 5.46579456
		 0.50242805 -1.57163048 0.89439583 0.13422298 -0.53404617 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.87782097 0.13231468 -0.52163696 -5.38682938 0.49577713
		 -1.54389381 0 0 0 0 0 0 -5.9604645e-005 0.0096151829 0 -0.017233849 0.065877199 0.00072097778
		 0 0 0 0 0 0 0 0 0 0.00046205521 0.014765263 0 0 0 0 0.019644976 0.069739342 0.0016555786
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -5.063977242 1.069796562
		 0.974823 -0.90083432 2.87893867 0.25535774 -0.0010949746 3.26209164 0.03550148 0.96770334
		 2.85369873 0.26741409 5.070119381 0.99493313 0.97132683 3.92011881 -0.2767849 0.5998764
		 1.98573637 -0.33875656 0.25409317 0.68156624 -0.19302988 0.097444534 -0.001402244
		 0.71270227 0.0028629303 -0.63796091 -0.14673233 0.092348099 -1.93744659 -0.32551289
		 0.24709129 -3.90688419 -0.25591087 0.59844971 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0.064588785 0.0057604313 0.022903442 1.18410063 -0.24671555 0.15797424 1.72780037
		 -0.16823101 -0.4486599 0.083161354 -0.019118786 -0.032331467 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0;
	setAttr ".tk[171:239]" 0.14652348 0.4943943 -0.08915329 1.25214052 2.79460907
		 -0.74250793 1.77356243 2.45261288 0.51074982 0.77585745 0.66790533 0.49352264 0.093839645
		 0.21529961 0.062652588 0.054855585 0.12002134 0.026168823 0.006200552 0.042481184
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012262106 5.5551529e-005 0 -0.065661907 0.007519722
		 0.023391724 -1.19348383 -0.24329162 0.15846825 -1.74580288 -0.16263437 -0.45155525
		 -0.08672142 -0.020079136 -0.034370422 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 -0.19139528 0.48257828 -0.12721825 -1.52826595 2.70645142 -0.8420372
		 -1.953403 2.32125854 0.54071808 -0.77455068 0.64633799 0.48221588 -0.09455061 0.23213577
		 0.063667297 -0.053048611 0.12640047 0.024784088 -0.0053510666 0.039401531 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 -0.010642767 0 0 3.68038511 2.83639145 -1.092414856 3.91824341
		 2.55951786 1.073125839 5.79593086 1.5652914 1.51666832 7.10320187 3.50988102 -2.3134594
		 5.1056118 -0.31916904 0.94201851 6.62541866 0.64828968 -1.68495941 2.84356594 -0.44875264
		 0.42080688 3.69408035 -0.2510581 -0.76284599 -6.58153248 0.64078426 -1.66218758 -7.085042
		 3.60062885 -2.30950928 -5.099916458 -0.29355621 0.94178963 -5.77945995 1.65998363
		 1.52291489 -2.78190804 -0.4311235 0.41025162 -3.62832546 -0.23815918 -0.74697304
		 -4.066648483 2.63335133 1.11777878 -4.0095949173 3.057437897 -1.18329239 6.25173664
		 3.10957527 0.2998867 6.37922382 4.061096191 -0.2517662 6.52344227 3.35958481 -0.01700592
		 6.50870895 3.34577847 0.010946274 6.48085499 3.22487068 -0.09204483 6.46922874 3.066271782
		 0.14085388 -6.49346542 3.0067892075 0.32992935 -6.536623 3.30743599 0.012544632 -6.50270367
		 3.17401409 0.093154907 -6.54919815 3.31820774 -0.0092182159 -6.43211651 4.15358543
		 -0.39875221 -6.33349514 3.30395317 0.10652924;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[74]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 51937;
	setAttr ".lt" -type "double3" 0 0 8.05014 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -24.55205839537226 7.7323087545926299 6.3591548308374364 ;
	setAttr ".cbx" -type "double3" 17.911045852674615 16.955758223205301 14.203984390163608 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 203 ".tk";
	setAttr ".tk[45:210]" -type "float3"  0 -2.56327629 0 0 -2.56327629 0 0 0
		 0 0 -2.56327629 0 0 -2.56327629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 -1.19474554 0 0 -1.19474566 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.19474566
		 0 0 0 0 0 -1.19474554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2.56327629 0 0 -2.56327629
		 0 0 0 0 0 -2.56327629 0 0 -2.56327629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 -2.56327629 0 0 -2.56327629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 -1.19474566 0 0 0 0 0 -2.56327629 0 0 -2.56327629 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[211:247]" 0 -1.19474566 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 -2.56327629 0 0 -2.56327629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2.56327629 0 0 -2.56327629
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 -1.83446121 7.75357151 0 -3.57562065 4.84436178 0 -4.097875595 4.84436226 0 -2.48745346
		 7.75357151 0 3.57214928 4.84436226 0 2.22317314 8.7615881 0 2.86870575 8.7615881
		 0 4.093603134 4.84436226 0;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk[218:255]" -type "float3"  0 -0.033513665 0 0 0.25394702
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.34195924 0 0 -0.36522365 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.56932271 0
		 0 -0.28186154 0 0 0 0 0 0.83887124 0 0 0 0 0 0 0 0 -0.86831164 0 -0.87768173 5.32415295
		 1.24639511 -0.73869324 4.10386753 1.071353912 -0.81338501 4.39132881 -1.077543259
		 -0.97106934 6.30202866 -1.38722229 0.75143433 4.7305069 1.20871353 0.87874794 5.94157982
		 1.38722229 0.97106934 6.8895216 -1.23867226 0.82601166 3.023324251 -0.93130875;
createNode polySplit -n "polySplit11";
	setAttr -s 17 ".e[0:16]"  0.58961499 0.41038501 0.58961499 0.58961499
		 0.58961499 0.41038501 0.58961499 0.58961499 0.41038501 0.58961499 0.41038501 0.41038501
		 0.41038501 0.58961499 0.41038501 0.41038501 0.58961499;
	setAttr -s 17 ".d[0:16]"  -2147483630 -2147483243 -2147483629 -2147483628 -2147483627 -2147483299 
		-2147483626 -2147483489 -2147483405 -2147483316 -2147483404 -2147483403 -2147483402 -2147483260 -2147483401 -2147483400 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	setAttr -s 17 ".e[0:16]"  0.42753199 0.57246798 0.42753199 0.42753199
		 0.42753199 0.57246798 0.42753199 0.57246798 0.42753199 0.42753199 0.42753199 0.42753199
		 0.42753199 0.42753199 0.42753199 0.42753199 0.42753199;
	setAttr -s 17 ".d[0:16]"  -2147483535 -2147483233 -2147483534 -2147483528 -2147483524 -2147483289 
		-2147483520 -2147483490 -2147483518 -2147483298 -2147483522 -2147483526 -2147483532 -2147483242 -2147483531 -2147483495 -2147483535;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	setAttr -s 15 ".e[0:14]"  0.47978699 0.52021301 0.47978699 0.47978699
		 0.47978699 0.52021301 0.47978699 0.47978699 0.47978699 0.47978699 0.47978699 0.47978699
		 0.47978699 0.47978699 0.47978699;
	setAttr -s 15 ".d[0:14]"  -2147483387 -2147483234 -2147483386 -2147483380 -2147483376 -2147483290 
		-2147483372 -2147483370 -2147483294 -2147483374 -2147483378 -2147483384 -2147483238 -2147483383 -2147483387;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	setAttr -s 15 ".e[0:14]"  0.56880999 0.43119001 0.56880999 0.56880999
		 0.56880999 0.43119001 0.56880999 0.56880999 0.56880999 0.56880999 0.56880999 0.56880999
		 0.56880999 0.56880999 0.56880999;
	setAttr -s 15 ".d[0:14]"  -2147483367 -2147483235 -2147483366 -2147483359 -2147483354 -2147483291 
		-2147483349 -2147483347 -2147483293 -2147483352 -2147483357 -2147483364 -2147483237 -2147483362 -2147483367;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	setAttr -s 49 ".e[0:48]"  0.46244299 0.53755701 0.46244299 0.46244299
		 0.53755701 0.46244299 0.46244299 0.46244299 0.53755701 0.46244299 0.46244299 0.46244299
		 0.46244299 0.53755701 0.53755701 0.53755701 0.53755701 0.53755701 0.53755701 0.53755701
		 0.53755701 0.53755701 0.53755701 0.46244299 0.53755701 0.53755701 0.46244299 0.53755701
		 0.46244299 0.53755701 0.53755701 0.53755701 0.46244299 0.53755701 0.53755701 0.46244299
		 0.46244299 0.53755701 0.46244299 0.46244299 0.46244299 0.46244299 0.46244299 0.46244299
		 0.46244299 0.46244299 0.46244299 0.46244299 0.46244299;
	setAttr -s 49 ".d[0:48]"  -2147483632 -2147483077 -2147483529 -2147483470 -2147483239 -2147483473 
		-2147483467 -2147483463 -2147483295 -2147483458 -2147483517 -2147483086 -2147483631 -2147483117 -2147483394 -2147483219 -2147483170 -2147483154 
		-2147483150 -2147483166 -2147483216 -2147483508 -2147483507 -2147483420 -2147483506 -2147483439 -2147483541 -2147483504 -2147483308 -2147483503 
		-2147483502 -2147483501 -2147483252 -2147483500 -2147483499 -2147483434 -2147483596 -2147483413 -2147483576 -2147483556 -2147483205 -2147483158 
		-2147483142 -2147483146 -2147483162 -2147483207 -2147483389 -2147483110 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 364 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 -0.58383679 1.15054321 0 -0.69959009
		 1.42486954 0 -0.77546489 1.54973221 0 -0.69324732 1.40863037 0 -0.5802263 1.13911819
		 0 -0.49559927 1.97146225 0 -0.88158321 3.17969894 0 -1.59614944 3.79632187 0 -0.85820961
		 3.1379509 0 -0.52396345 1.96899414 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0011119843 0.00032424927
		 0 0 0 0 -0.00046920776 0.0001373291 0 0 0 0 0.010727167 0.00091743469 0 0.12625313
		 -0.002904892 0 0.26335526 0.10017967 0 0.13257003 -0.0030956268 0 0.012493849 0.001121521
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.28724468 1.21504593
		 0 -1.53066838 1.59653854 0 -1.71155977 2.60802841 0 -1.33132076 2.66189957 0 -2.21622038
		 2.035076141 0 -2.60762405 2.55881119 0 -1.48021066 1.57956696 0 -1.69403887 2.59712219
		 0 -1.27525139 1.21152115 0 -1.32780671 2.63672256 0 -0.6100769 1.82311249 0 -1.24923134
		 2.22295761 0 -1.67704725 2.36305237 0 -2.50837183 2.46626663 0 -1.65695 2.35575485
		 0 -1.24546576 2.21498871 0 -0.63641667 1.80780029 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2.076563835 1.68244934 0 -2.64791107
		 1.59237289 0 -2.10936546 2.49372482 0 -1.70156431 2.35132217 0 -2.91737461 1.52603149
		 0 -2.53622723 2.42190933 0 -2.61356878 1.61927414 0 -2.06324172 2.48993301 0 -2.050153494
		 1.6932869 0 -1.68540907 2.34452438 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 2.7656555e-005 0.25950813 0 -0.038218498 0.62084961 0 -0.047185898
		 0.57559776 0 -0.041770935 0.59370613 0 0.0035791397 0.25721359 0 0.11792898 0.22934341
		 0 0.26320398 -0.052181244 0 0.35762858 0.070465088 0 0.30930233 1.17960548 0 0.36031878
		 0.090000153 0 0.26571214 -0.048353195 0 0.11728382 0.23691559 0 -1.85029626 0.77774811
		 0 -2.053989887 0.91640472 0 -2.40603805 0.75981522 0 -2.13910961 0.77059174 0 -2.20493007
		 0.95595169 0 -2.56928349 0.74438477 0 -2.037993908 0.91387558 0 -2.38605618 0.76086426
		 0 -1.84668422 0.77588272 0 -2.13181353 0.76982498 0 -1.56848931 0.13371658 0 -1.7527144
		 0.23425293 0 -2.099495173 0.087890625 0 -1.84343839 0.11721039 0 -1.89714646 0.25996017
		 0 -2.25723577 0.058929443 0 -1.73662066 0.23072815 0 -2.080374002 0.090385437 0 -1.56397057
		 0.13019562 0 -1.83570504 0.11576462 0 -0.64290929 1.29881287 0 0.32002509 0.012840271
		 0 0.065419197 0.0023231506 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[173:331]" 0 -0.028478622 0.5610733 0 -0.5924468 2.59572983 0 -1.49723816
		 2.67389679 0 -1.43505096 2.33824921 0 -1.86030746 2.43946838 0 -2.36668706 1.70511627
		 0 -2.26692605 0.77200317 0 -1.96559167 0.10955048 0 -1.65802693 0.1881218 0 -1.95278525
		 0.85792923 0 -1.34849787 1.43039703 0 -0.64292502 1.30298233 0 0.318874 0.015411377
		 0 0.064004183 0.0026512146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.024243355 0.5637188 0 -0.57448196 2.56445313 0
		 -1.48907566 2.69953918 0 -1.42641664 2.34306717 0 -1.87435961 2.43994904 0 -2.37564993
		 1.69065475 0 -2.26929855 0.77390671 0 -1.96789837 0.11120605 0 -1.66045094 0.18767548
		 0 -1.95389199 0.85448456 0 -1.36628819 1.42679977 0 0 0 0 -0.085207939 0.33309937
		 0 -0.040901184 0.18035126 0 0 0 -0.93466282 0.39396191 0.18758774 -0.93466282 -1.12093735
		 0 0 0.6817919 -0.047563553 0 -0.49984336 0 0 0 0 0 0 0 0 0.048351765 0.13991165 0
		 -0.043498039 0.18109512 0 0.17563272 0.0033683777 0 0 0 0 -0.085191727 0.32076263
		 0 0 0 0 0 0 0 -0.027893066 0.0091953278 0 -0.024155617 0.017585754 0 0 0 0 -0.013735771
		 0.04004097 0 0 0 0 0 0 0 0 0 0 -0.014728546 0.044439316 0 -0.024179459 0.017045975
		 0 -0.02368927 0.0070552826 0 0 0 0 -0.11789513 5.7220459e-005 0 0.55181932 -0.014560699
		 0 -0.49984336 0 0 -1.57357979 0 -3.16306782 0.0056350231 8.7738037e-005 0.88994217
		 -1.30229521 -0.15660477 2.77704048 -1.99347115 0.16746712 -1.015037537 0 0 0 0.61822605
		 0 0 0.49984336 0 0 -0.4998436 0 0 -1.81552887 0 -3.053249359 0 0 0.48642159 0.46376228
		 0 3.053251266 -2.19644547 0 -0.97979546 0 0 0 -0.014343262 0.79357147 0 -0.073332787
		 1.4426651 0 -0.1316061 1.7161026 0 -0.24687672 2.14191055 0 -0.12802124 1.66834641
		 0 -0.078372955 1.45796967 0 -0.015674591 0.79221725 0 0.031725407 0.76794052 0 0.13892579
		 0.27190399 0 0.13353658 0.43716812 0 0.12662613 0.54156876 0 -0.056438684 1.51591873
		 0 0.12307775 0.56775284 0 0.13273191 0.44228363 0 0.13828683 0.28387833 0 0.035208225
		 0.77796173 0 -0.8838262 1.24505997 0 -0.95141691 1.41910553 0 -1.058583736 1.56726074
		 0 -1.42058146 1.87914658 0 -1.032357335 1.54553223 0 -0.94329762 1.41430664 0 -0.876176
		 1.23443222 0 -0.89560843 2.014862061 0 -0.8569932 2.30280304 0 -1.0098643303 2.81401825
		 0 -1.33289671 3.25043869 0 -2.13892174 3.48796463 0 -1.35700703 3.27870941 0 -0.99074554
		 2.7966156 0 -0.84053516 2.31933975 0 -0.88215923 2.031925201 0 -1.59439778 1.066226959
		 0 -1.69793582 1.22744751 0 -1.83524227 1.34410858 0 -2.25153232 1.56298447 0 -1.8030479
		 1.33802414 0 -1.68934023 1.23337936 0 -1.58666563 1.064407349 0 -2.13432407 1.30376053
		 0 -2.35195708 1.29377365 0 -2.52774358 1.23126984 0 -2.76646423 1.16569519 0 -2.55362201
		 1.21495819 0 -2.35658479 1.28580093 0 -2.14952469 1.29571533 0 -1.69416547 0.41028595
		 0 -1.79135871 0.47430038 0 -1.88712382 0.52767181 0 -2.0345366 0.5594101 0 -1.87108898
		 0.52456665 0 -1.78953719 0.47603607 0 -1.69006348 0.40745926 0 -1.96802115 0.39675903
		 0 -2.10037327 0.39415741 0 -2.21725869 0.37837982 0 -2.39717674 0.35315323 0 -2.23679161
		 0.37650299 0 -2.10271358 0.39593887 0 -1.975559 0.39792633 0 -0.60809851 1.47980118
		 0 -0.85428631 1.50440979 0 -1.26529837 1.68445969 0 -1.94961476 2.072395325 0 -2.21103954
		 2.13102341 0 -2.48168325 2.120224 0 -2.79749465 2.015102386 0 -2.44094086 2.13243484
		 0 -2.19894505 2.13801575 0 -1.92418957 2.074050903 0 -1.25639355 1.67776871 0 -0.8549881
		 1.48783875 0 -0.61609244 1.45950317 0 0.083447695 0.55994797 0 0.20364094 0.11882401
		 0 0.052207708 0.043611526;
	setAttr ".tk[332:363]" 0 -0.46572542 0.0064277649 0 -0.78272486 0 0 -2.58346415
		 0 0 -1.14670849 0 0 -1.14670849 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.21712875 0
		 0.91709709 -1.075902462 0 0.88525772 -2.46382904 0 -1.41635323 -0.72015572 0 -1.4672966
		 -0.792202 0.0030250549 0 0.17685604 0.09103775 0 0.20481753 0.12722588 0 0.084419012
		 0.57519531;
createNode polySplit -n "polySplit16";
	setAttr -s 7 ".e[0:6]"  0.58877897 0.58877897 0.58877897 0.58877897
		 0.411221 0.58877897 0.58877897;
	setAttr -s 7 ".d[0:6]"  -2147483172 -2147482957 -2147483171 -2147483169 -2147482953 -2147483167 
		-2147483172;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	setAttr -s 7 ".e[0:6]"  0.62241101 0.37758899 0.62241101 0.62241101
		 0.62241101 0.62241101 0.62241101;
	setAttr -s 7 ".d[0:6]"  -2147483164 -2147482928 -2147483163 -2147483161 -2147482932 -2147483159 
		-2147483164;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 136 ".tk[240:375]" -type "float3"  -0.60088158 1.37038422 0 0
		 0 0 0 0 0 -0.60088158 1.37038422 0 0 0 0 -0.98111916 1.38537264 0.033557892 -0.98111916
		 1.13341141 -0.033557892 0 0 0 -1.51980782 0 0 0 0 0 0 0 0 -1.51980782 0 0 0 0 0 0
		 -1.65735245 0 0 -1.65735245 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 -1.30207825 0 0 -1.30207825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0040979385 -0.264925 -0.58420944
		 0.20810795 0.22506738 -0.53468704 0.43239498 0.47616649 -0.49176979 0.083293915 0.3442235
		 0.44815636 -0.18140793 -0.00028038025 0.51107216 -0.43239594 -0.47616625 0.58420944
		 0.73471451 0.48413134 -0.51454735 0.79689312 0.21503496 -0.5576725 0.83226204 -0.13013697
		 -0.58913994 1.097770691 -0.49485779 0.58913994 0.9687767 0.064493656 0.52957344 0.88955879
		 0.49485779 0.46455574;
createNode polySplit -n "polySplit18";
	setAttr -s 7 ".e[0:6]"  0.31126201 0.31126201 0.31126201 0.31126201
		 0.31126201 0.31126201 0.31126201;
	setAttr -s 7 ".d[0:6]"  -2147483198 -2147483197 -2147483195 -2147483190 -2147483188 -2147483193 
		-2147483198;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[213]" -type "float3" 0.758255 0 0 ;
	setAttr ".tk[214]" -type "float3" -0.95513725 0 0 ;
	setAttr ".tk[216]" -type "float3" -0.29713917 0 0 ;
	setAttr ".tk[229]" -type "float3" 0 0 0.23368835 ;
	setAttr ".tk[230]" -type "float3" 0 0 0.48494148 ;
	setAttr ".tk[232]" -type "float3" 0 0 -0.48494148 ;
	setAttr ".tk[238]" -type "float3" 0 -1.3565779 0.54243469 ;
	setAttr ".tk[239]" -type "float3" 0 -1.3565788 0.54243469 ;
	setAttr ".tk[377]" -type "float3" 0.90929222 0.099925995 0.35103989 ;
	setAttr ".tk[378]" -type "float3" -0.20508575 0.12756538 0.69117355 ;
	setAttr ".tk[379]" -type "float3" 0 0 -0.73006821 ;
	setAttr ".tk[380]" -type "float3" 0 0 -0.14626694 ;
	setAttr ".tk[381]" -type "float3" 0 0 0.14626694 ;
createNode polySplit -n "polySplit19";
	setAttr -s 7 ".e[0:6]"  0.46905899 0.46905899 0.46905899 0.46905899
		 0.46905899 0.46905899 0.46905899;
	setAttr -s 7 ".d[0:6]"  -2147483185 -2147483182 -2147483180 -2147483177 -2147483175 -2147483184 
		-2147483185;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 172 ".tk";
	setAttr ".tk[216:381]" -type "float3"  -0.26161671 0.90981483 0 -0.26161671
		 0.90981483 0 0 0 0 0 0 0 0.49421978 1.55448914 0 0 0 0 0.90989017 1.55448866 0 0.96646309
		 0 0 0 0 0 0 0 0 -0.96646309 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.38979149 -1.61637592
		 0 -0.38979149 -1.61637592 0 -0.62571335 -1.74542904 0 0 0 0 -0.62571239 -1.74542904
		 0 0 0 0.67244148 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.45056629 0.25665379 0 0.45056629 0.25665379
		 0 0 0 0;
	setAttr ".tk[382:387]" -0.25222588 -0.26548767 -0.32159233 -0.0024881363 -0.20861769
		 -0.45098877 -0.016543388 0.42296982 1.068042755 0.25717258 0.68395901 -0.42222595
		 0.16345215 0.48472214 -0.25569534 -0.25717163 0.255476 -0.35521698;
createNode polySplit -n "polySplit20";
	setAttr -s 7 ".e[0:6]"  0.486514 0.486514 0.486514 0.486514 0.51348603
		 0.486514 0.486514;
	setAttr -s 7 ".d[0:6]"  -2147483172 -2147482957 -2147483171 -2147483169 -2147482920 -2147483167 
		-2147483172;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 162 ".tk[232:393]" -type "float3"  0 -0.28473759 0.10317612 0
		 -0.9340086 -0.10317612 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.12894535 -0.75662994 -0.63784409
		 0.20316982 -0.17028546 -0.57636261 0.4042511 0.10073805 -0.52620888 -0.0011758804
		 -0.035448551 0.49043846 -0.24919128 -0.38747215 0.55860519 -0.4042511 -0.98241711
		 0.63784409;
createNode polySplit -n "polySplit21";
	setAttr -s 7 ".e[0:6]"  0.40534899 0.59465098 0.40534899 0.40534899
		 0.40534899 0.40534899 0.40534899;
	setAttr -s 7 ".d[0:6]"  -2147483164 -2147482911 -2147483163 -2147483161 -2147482932 -2147483159 
		-2147483164;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[370:399]" -type "float3"  -0.76774788 -0.38442636 0.29986572
		 -0.80398369 -0.22760296 0.32499886 -0.82459545 -0.026444435 0.34333611 -0.97933006
		 0.18610668 -0.34333801 -0.90415382 -0.13987064 -0.30862427 -0.8579874 -0.39067745
		 -0.27073288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.60242081 -0.04060936 -0.72092056 -0.42294502
		 -0.41526508 -0.78903389 -0.35846615 -1.063337803 -0.85128212 0.29009819 -1.63306141
		 0.85128212 0.073187828 -0.61828232 0.75288963 -0.15546894 -0.010925055 0.66113281;
createNode polySplit -n "polySplit22";
	setAttr -s 19 ".e[0:18]"  0.29407701 0.70592302 0.29407701 0.29407701
		 0.29407701 0.70592302 0.29407701 0.70592302 0.70592302 0.70592302 0.29407701 0.70592302
		 0.70592302 0.70592302 0.29407701 0.70592302 0.29407701 0.29407701 0.29407701;
	setAttr -s 19 ".d[0:18]"  -2147483555 -2147483254 -2147483554 -2147483553 -2147483552 -2147483310 
		-2147483551 -2147482947 -2147483451 -2147483452 -2147483305 -2147483453 -2147483454 -2147483455 -2147483249 -2147483456 -2147483479 -2147482938 
		-2147483555;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 18 "f[12]" "f[26]" "f[36]" "f[46]" "f[58]" "f[107]" "f[118]" "f[131]" "f[134]" "f[154:160]" "f[180:181]" "f[263]" "f[266]" "f[271]" "f[274]" "f[287]" "f[290]" "f[399:402]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 36054;
	setAttr ".lt" -type "double3" 0 0 0.848898 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -13.024261650071967 -2.5738094953005586 -31.605427612399868 ;
	setAttr ".cbx" -type "double3" 5.7551525268689501 10.822923788696023 22.783909927272983 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 318 ".tk";
	setAttr ".tk[100:265]" -type "float3"  -1.12870312 0 0 -0.40207696 0 0 -7.9401843e-008
		 0 0 0.40907669 0 0 1.12870312 0 0 1.12870312 0 0 1.12870312 0 0 0.73673153 0 0 -0.0056674667
		 0 0 -0.73489141 0 0 -1.12870312 0 0 -1.12870312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0.92949486 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.76297331 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.94693661 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 -0.79332447 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[341:417]" 1.12870312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 -1.12870312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.2532053
		 2.07357049 1.10352993 -1.013504028 2.07357049 1.10352993 -0.73387194 2.073570251
		 1.10352993 -0.0067689456 2.073570251 1.10352993 0.72931719 2.073570251 1.10352993
		 0.98695374 2.07357049 1.10352993 1.2532053 2.07357049 1.10352993 1.2532053 2.07357049
		 1.10352993 1.2532053 2.07357049 1.10352993 1.2532053 2.073570251 1.10352993 0.860116
		 2.073570251 1.10352993 0.47974586 2.073570251 1.10352993 -1.0890687e-007 2.073570251
		 1.10352993 -0.47460842 2.073570251 1.10352993 -0.89383888 2.073570251 1.10352993
		 -1.2532053 2.073570251 1.10352993 -1.2532053 2.07357049 1.10352993 -1.2532053 2.07357049
		 1.10352993;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[399:402]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 38062;
	setAttr ".lt" -type "double3" 0 0 4.767217 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -12.213403877244819 -1.4858912137453828 -29.04118906412106 ;
	setAttr ".cbx" -type "double3" 4.8823593292371141 2.4202531668240752 -25.652355541324429 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 475 ".tk";
	setAttr ".tk[1:166]" -type "float3"  0 0.45089972 0 0 0.45089972 0 0 0.45089972
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4508996 0 0 2.079838991 0
		 0 0.4508996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4508996 0 0 2.079838753
		 0 0 0.4508996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4508996 0 0 2.079838753
		 0 0 0.4508996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.45089972 0 0 2.079838991 0 0 0.45089972 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4508996 0 0
		 2.079838753 0 0 0.4508996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.45089972
		 0 0 2.079838753 0 0 0.45089972 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[266:332]" 0 0.45089972 0 0 0.62056947 0 0 0.45089972 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[402:475]" 0 0.4508996 0 0 2.079838991 0 0 0.4508996 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.84260464
		 0.28427541 1.44363165 0.81088448 0.62432265 1.75088453 0.58268929 1.1876688 1.75748014
		 0.65937138 0.43614364 1.47044468 0.72823477 -0.38176918 0.10513687 0.74093103 -0.34236765
		 0.48805714 0.62388372 -0.1592896 0.5239048 0.6069169 -0.27778125 0.10301018 0.77367783
		 -0.10169554 -0.30607414 0.60722017 -0.041240931 -0.31750679 0.56449747 0.039298058
		 -0.6781044 0.42107677 0.063869715 -0.67862701 0.27121353 0.23456192 -1.17566681 0.28155494
		 0.12799968 -1.096874237 0.19433928 0.14515081 -1.11032486 0.18574739 0.25231886 -1.19752121
		 0.8039217 -0.19061327 0.86630964 0.67508745 0.0062785149 0.91519022 0.33110428 0.043233514
		 -0.83404541 0.4519949 0.020976186 -0.82910156 0.1960969 0.52539587 -1.29803467 0.23261094
		 0.37407184 -1.23608017 0.1564827 0.39033079 -1.25397491 0.13009369 0.53908896 -1.31181717
		 -0.57531118 0.042752266 -0.67840195 -0.44841051 0.06936121 -0.67822266 -0.46302366
		 0.024573326 -0.82939529 -0.35645342 0.04654038 -0.83323669 -0.78287697 -0.095476627
		 -0.3063488 -0.63514233 -0.040537 -0.31674576 -0.73713493 -0.37333441 0.10499001 -0.62981462
		 -0.2784524 0.10299301 -0.64602518 -0.16027117 0.52390003 -0.74969006 -0.32748222
		 0.49115944 -0.81163979 -0.1741643 0.87072563 -0.69732571 0.0056631565 0.91536999
		 -0.84260464 0.29741013 1.4462285 -0.6760335 0.43611646 1.47071791 -0.59390116 1.1877737
		 1.75760031 -0.80470276 0.63425612 1.75167608 -0.17933619 0.3857007 -1.24852753 -0.24588346
		 0.37265992 -1.23437881 -0.2098701 0.52586412 -1.29798889 -0.15216386 0.53767276 -1.3093071
		 -0.21629643 0.14183113 -1.10594559 -0.29252052 0.12837435 -1.095188141 -0.28332973
		 0.23054504 -1.17208862 -0.2086277 0.24372959 -1.18881607 -0.3007865 0.051725745 -1.041130066
		 -0.22342539 0.064562678 -1.046928406 0.28984952 0.047675967 -1.040859222 0.20132709
		 0.063442707 -1.047412872 0.70784712 1.11248541 1.9724226 0.49090099 1.65974331 1.97113323
		 -0.00250604 1.658988 1.96984291 -0.0020605624 1.55569959 1.74907732 -0.50047255 1.65975666
		 1.97111988 -0.70175457 1.12093306 1.97239685;
createNode polySplit -n "polySplit23";
	setAttr -s 11 ".e[0:10]"  0.527991 0.527991 0.527991 0.527991 0.527991
		 0.527991 0.527991 0.527991 0.527991 0.527991 0.527991;
	setAttr -s 11 ".d[0:10]"  -2147482703 -2147482700 -2147482698 -2147482695 -2147482690 -2147482685 
		-2147482683 -2147482688 -2147482693 -2147482702 -2147482703;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[476:495]" -type "float3"  2.19396639 -0.4528718 1.95341468
		 1.25014734 -0.14581251 1.95341468 1.92521238 -0.39991283 1.95341492 1.056004524 -0.39991283
		 1.95341492 0 -0.39991283 1.95341492 0 -0.65401173 1.95341468 -1.095833778 -0.39991283
		 1.95341492 -1.29344511 -0.1487112 1.95341468 -1.02618885 -0.39991283 1.95341492 -1.29471302
		 -0.38696051 1.95341468 0 -0.10080099 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.031580925
		 0 0 0.23696041 0 0 -0.23812628 0 0 0.23812628 0;
createNode polySplit -n "polySplit24";
	setAttr -s 11 ".e[0:10]"  0.468261 0.468261 0.468261 0.468261 0.468261
		 0.468261 0.468261 0.468261 0.468261 0.468261 0.468261;
	setAttr -s 11 ".d[0:10]"  -2147482680 -2147482671 -2147482672 -2147482673 -2147482674 -2147482675 
		-2147482676 -2147482677 -2147482678 -2147482679 -2147482680;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[496:505]" -type "float3"  -0.57025433 0 0 -0.41356516
		 0 0 0.0038561709 0 0 0.42349386 0 0 0.597188 0 0 0.52683496 0 0 0.35807133 0 0 0.0042003281
		 0 0 -0.34929085 0 0 -0.49984121 0 0;
createNode polySplit -n "polySplit25";
	setAttr -s 11 ".e[0:10]"  0.47929299 0.47929299 0.47929299 0.47929299
		 0.47929299 0.47929299 0.47929299 0.47929299 0.47929299 0.47929299 0.47929299;
	setAttr -s 11 ".d[0:10]"  -2147482703 -2147482700 -2147482698 -2147482695 -2147482690 -2147482685 
		-2147482683 -2147482688 -2147482693 -2147482702 -2147482703;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 1 "e[998:1007]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 96 ".tk[420:515]" -type "float3"  -0.31698036 0 0 0 -0.060700655
		 -0.021244526 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0587008 -0.019369125 0.31698036
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 -0.0019102693 0 0 0 0 0 0 0 0 0 1.29741383 -0.068364978 0 1.29039812
		 -0.067171931 0 0.97924328 1.1158545 0 1.032773972 1.1672349 0 1.045264244 1.14154434
		 0 1.34235764 -0.076007247 0 1.034039497 1.16587615 0 1.29170084 -0.067393541 0 0.99141598
		 1.13139033 0 1.29777384 -0.068426132 0 -0.010015488 0.00082492828 0 0.0037784576
		 0.0029802322 0 0.0083675385 0.036215782 0 0.0066890717 0.023444176 0 0.0087909698
		 0.016568184 0 0.0036993027 0.01770401 0 -0.013398647 0.0030755997 0 -0.012812138
		 0.0032401085 0 -0.014126778 0.0031280518 0 -0.013969898 0.0032300949 0 0.39296675
		 -0.50040793 0 0.47541475 -0.53756857 0 0.52333975 -0.55226159 0 0.44771576 -0.5240767
		 0 0.44286489 -0.52040458 0 0.25559902 -0.01350975 0 0.27550793 0.01364994 0 0.30589485
		 0.062298775 0 0.31142712 0.075424194 0 0.23349667 -0.088718891 -0.25285053 0 0 -0.22093248
		 0 0 -0.15201139 0 0 0.0019749179 0 0 0.15713263 0 0 0.22095966 0 0 0.25285053 0 0
		 0.18607473 0 0 0.0018369146 0 0 -0.18044567 0 0;
createNode polyDelEdge -n "polyDelEdge2";
	setAttr ".ics" -type "componentList" 1 "e[969:978]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[476:505]" -type "float3"  0 -1.77789068 -0.43186021
		 0 -1.77789068 -0.43186021 0 -1.77789021 -0.43186021 0 -1.77789021 -0.43186021 0 -1.77789021
		 -0.43186021 0 -1.77789068 -0.43186021 0 -1.77789021 -0.43186021 0 -1.77789068 -0.43186021
		 0 -1.77789021 -0.43186021 0 -1.77789068 -0.43186021 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[474]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 63191;
	setAttr ".lt" -type "double3" 0 0 3.53491 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -12.563648399339545 -1.8939541486208711 -24.898148407077603 ;
	setAttr ".cbx" -type "double3" -7.1444484557970656 1.4688922258908477 -20.815428961849026 ;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[477]" -type "float3" 1.5573869 0 0 ;
	setAttr ".tk[479]" -type "float3" 1.5573869 0 0 ;
	setAttr ".tk[482]" -type "float3" -0.8974719 0 0 ;
	setAttr ".tk[483]" -type "float3" -0.8974719 0 0 ;
	setAttr ".tk[488]" -type "float3" 1.5573869 0 0 ;
	setAttr ".tk[490]" -type "float3" -0.8974719 0 0 ;
	setAttr ".tk[493]" -type "float3" -0.8974719 0 0 ;
	setAttr ".tk[495]" -type "float3" 1.5573869 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[478]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.0347972 -0.19536243 -22.773836 ;
	setAttr ".rs" 62267;
	setAttr ".lt" -type "double3" 0 0 3.5349104887466019 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4605542983873967 -1.8939541486208711 -24.898148407077603 ;
	setAttr ".cbx" -type "double3" -3.6090401973589552 1.5032292696530547 -20.649525512790493 ;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[478]" -type "float3" 0 2.8793316 -2.8287401 ;
	setAttr ".tk[479]" -type "float3" 0 2.8793316 -2.8287401 ;
	setAttr ".tk[480]" -type "float3" 0 2.8793316 -2.8287401 ;
	setAttr ".tk[482]" -type "float3" 0 2.8793316 -2.8287401 ;
	setAttr ".tk[484]" -type "float3" 0 2.8793316 -2.8287401 ;
	setAttr ".tk[496]" -type "float3" 0.40290165 0.026692867 -1.2558234 ;
	setAttr ".tk[497]" -type "float3" -1.9839947 0.031829834 -1.2368592 ;
	setAttr ".tk[498]" -type "float3" -1.020329 -2.2876654 1.7335825 ;
	setAttr ".tk[499]" -type "float3" 1.983995 -2.4304781 1.673831 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[480]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.81966454 -0.19471107 -22.77388 ;
	setAttr ".rs" 46530;
	setAttr ".lt" -type "double3" 0 0 3.5349104887466019 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.6104592647417677 -1.8926514295046601 -24.898236145114712 ;
	setAttr ".cbx" -type "double3" 1.9711301956311571 1.5032292696530547 -20.649525512790493 ;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[500:503]" -type "float3"  0.86725783 1.39043975 0.19785044
		 -1.89476371 1.34983087 0.047945172 -1.89587283 -1.26466012 3.25438213 1.89587283
		 -1.085385561 3.36849546;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[483]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.8994997 -0.23086487 -22.856169 ;
	setAttr ".rs" 37065;
	setAttr ".lt" -type "double3" 0 0 3.5349104887466019 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.58260041810430163 -1.8926514295046601 -24.898236145114712 ;
	setAttr ".cbx" -type "double3" 5.2163990173474657 1.4309216829831328 -20.81410108957272 ;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[504:507]" -type "float3"  2.056915522 2.64858413 0.72547805
		 -1.033519268 2.68592024 0.86329842 -2.056915522 0.35239291 3.85692978 2.055869579
		 0.1830349 3.74925232;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[91]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 37869;
	setAttr ".lt" -type "double3" 0 0 1.144445 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.7832807865008009 1.1858960482175078 22.166447769069858 ;
	setAttr ".cbx" -type "double3" -3.587106880174507 1.6904174181515899 24.236504684353061 ;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[147]" -type "float3" 0.46346092 0 0 ;
	setAttr ".tk[148]" -type "float3" 0.46346092 0 0 ;
	setAttr ".tk[152]" -type "float3" -0.35453236 0 0 ;
	setAttr ".tk[153]" -type "float3" -0.35453236 0 0 ;
	setAttr ".tk[180]" -type "float3" -0.2017616 0 0 ;
	setAttr ".tk[181]" -type "float3" -0.20176172 0 0 ;
	setAttr ".tk[508]" -type "float3" 1.6439638 1.1791263 -0.78705549 ;
	setAttr ".tk[509]" -type "float3" -0.71592093 1.1748171 -0.80296159 ;
	setAttr ".tk[510]" -type "float3" -1.6439638 -1.1791263 2.043097 ;
	setAttr ".tk[511]" -type "float3" 0.65872765 -1.0673892 2.09495 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.860698 1.4462036 23.177513 ;
	setAttr ".rs" 56516;
	setAttr ".lt" -type "double3" 0 0 1.1444452723845928 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.587106880174507 1.1858960482175078 22.118519912624546 ;
	setAttr ".cbx" -type "double3" -2.1342892017229689 1.7065111490781035 24.236504684353061 ;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[512:515]" -type "float3"  0.38016438 0.15460587 0.65789795
		 -0.38016436 0.2464118 0.37876129 -0.38016436 0.47529697 -0.65789795 0.38016438 0.37503147
		 -0.2906723;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[178]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7264254 1.5739313 22.76498 ;
	setAttr ".rs" 39678;
	setAttr ".lt" -type "double3" 0 0 1.1444452723845928 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1342892017229689 1.3627578112179961 21.939660201931186 ;
	setAttr ".cbx" -type "double3" -1.318561729417671 1.7851048800046172 23.590298782253452 ;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[516:519]" -type "float3"  0.56092542 -0.077050209 0.4416275
		 -0.56092542 -0.20100689 0.81774139 -0.56092542 0.064435959 -0.31874847 0.56092542
		 0.20100689 -0.81774139;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 44546;
	setAttr ".lt" -type "double3" 0 0 0.173423 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.570030030237068 1.4775401445920195 21.740925918483921 ;
	setAttr ".cbx" -type "double3" -0.43167513273798352 1.8791612478787627 23.166554580593296 ;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[520:523]" -type "float3"  0.29271102 0.32783079 0.46394348
		 -0.29271102 0.27142668 0.59230423 -0.11224008 0.49215651 -0.28819656 0.29271102 0.57453203
		 -0.59230423;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 56378;
	setAttr ".lt" -type "double3" 0 0 0.485421 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.004765924440254 1.3436366411740508 21.949120651149936 ;
	setAttr ".cbx" -type "double3" -4.7832807865008009 1.7826806398923125 23.658772598171421 ;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[524:527]" -type "float3"  0.37637603 -0.096992016 -0.47135925
		 0.21008945 -0.30037355 0.33994293 -0.37637615 -0.36256933 0.47135925 -0.038242102
		 -0.18288136 -0.17279816;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[206]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 44477;
	setAttr ".lt" -type "double3" 0 0 0.277422 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.6545466747149122 1.4752332064206328 21.748788009548374 ;
	setAttr ".cbx" -type "double3" -5.7294358577593458 1.8746425005490508 23.170510421657749 ;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[528:531]" -type "float3"  0.2606709 0.068332672 -0.28488159
		 0.47464776 -0.17060471 0.66434097 -0.47464776 -0.098901272 0.49544144 -0.47464776
		 0.17060471 -0.66434097;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 54416;
	setAttr ".lt" -type "double3" 0 0 0.90274680840991883 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.1048697795733107 18.547958502441141 12.542115341091343 ;
	setAttr ".cbx" -type "double3" -3.5654479827746046 22.773599753051492 16.943535934353061 ;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 529 ".tk";
	setAttr ".tk[7:172]" -type "float3"  0 0.98170471 0.57698441 0 0 0 0 0 0
		 0 -5.99830198 2.89731979 0 -6.028004646 1.2710743 0 -5.95492411 0.50877571 0 -6.030675888
		 1.26663971 0 -5.99830198 2.89731979 0 -5.69776154 5.21722221 0 -5.74661493 3.69697571
		 0 -5.21599436 3.16629982 0 -5.75968981 3.71171188 0 -5.69621468 5.2144165 0 1.17688179
		 0.073112965 0 1.031835556 -1.016632557 0 0.67077446 -1.24808693 0 1.030241013 -1.015003204
		 0 1.17812729 0.073246002 0 1.64167166 1.82448292 0 1.67986941 2.66356468 0 1.57184982
		 2.046136379 0 1.67847824 2.67549515 0 1.63910055 1.83589745 0 0.29732513 -0.010223389
		 0 0.1693573 -0.11963081 0 0.070978165 -0.06593132 0 0.1634407 -0.11716461 0 0.30424309
		 -0.006280899 0 0.6066184 0.42526627 0 0.65437841 0.47553062 0 0.59104156 0.21141434
		 0 0.65438652 0.4742775 0 0.60351944 0.42604828 0 0 0 0 0 0 0 0.98170471 0.5769825
		 0 0 0 0 0 0 0 0.0040514469 0.042409897 0 9.7513199e-005 0.034914017 0 0 0 0 0 0.033653259
		 0 0.0037686825 0.041477203 0 -3.053829193 7.46452951 0 -2.9149332 8.060728073 0 -2.77968693
		 6.9191308 0 -2.91687679 8.080956459 0 -3.053828716 7.46452904 0 -3.61968064 4.15538883
		 0 -4.21303177 0.68543434 0 -4.57780743 -1.44779778 0 -4.21303177 0.68543243 0 -3.61968017
		 4.15539074 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4820652 0.18057632 0 1.4024229 0.91055965
		 0 -3.33473516 5.82176876 0 -5.83232594 4.040176392 0 -5.69383717 2.47868538 0 -5.18199921
		 2.024475098 0 -5.68365717 2.4607811 0 -5.83232641 4.040176392 0 -3.33473516 5.82177067
		 0 1.40254402 0.90628529 0 0.47656059 0.18165207 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.53871775 0.89722157 0 -0.89426708 -1.61012268
		 0 -1.028484344 -3.023607254 0 -0.89297771 -1.60842037 0 -0.53792286 0.89735222 0
		 -0.32886195 2.40043068 0 -0.10416314 4.022893906 0 -0.2525413 4.7849679 0 -0.34229887
		 3.62173319 0 -0.25263453 4.78377771 0 -0.10416299 4.022895336 0 -0.33020496 2.41203284
		 0 1.42276669 1.038051605 0 1.19050217 0.41483212 0 0.88438988 -0.04973793 0 0.66516304
		 -0.47834778 0 0.28195953 -0.3708086 0 0.666996 -0.4793787 0 0.8841114 -0.050420761
		 0 1.18911934 0.41400719 0 1.41563892 1.041481972 0 1.65923166 1.52184391 0 1.57329464
		 1.079684258 0 1.66640139 1.51420307 0 0 0 0 0 0 0 0.98170471 0.5769825 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0.0019626617 0.041687012 0 0.63929415 0.47023964 0 1.5725441 1.31424904
		 0 1.69216871 2.30289555 0 -0.15949613 4.55395603 0 -2.98984957 7.83867931 0 -5.88568687
		 4.52970695 0 -5.90655136 3.26191711 0 -6.10446882 2.0041236877 0 -3.92123461 2.39188194
		 0 -0.71695328 -0.3597393 0 1.14529037 -0.57160711 0 0.82853699 -0.36275387 0 0.18239403
		 -0.10059547 0 0 0;
	setAttr ".tk[186:338]" 0 0.0019090176 0.040910721 0 0.63316917 0.46630478 0
		 1.55402136 1.29080296 0 1.6884613 2.27113485 0 -0.15396082 4.50931263 0 -2.99572468
		 7.8043251 0 -5.87408352 4.59094429 0 -5.9087553 3.33106232 0 -6.11171198 2.089637756
		 0 -3.89354563 2.55381012 0 -0.69997787 -0.24602103 0 1.15207672 -0.51369953 0 0.84068489
		 -0.33957291 0 0.1890316 -0.099119186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00036501884
		 0.030063629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00041460991 0.031417847 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0.98170471 0.57698441 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0.010320663 0 0.00059366226 0.012144089 0 0.55726624 0.31074142;
	setAttr ".tk[339:504]" 0 1.31448269 0.74176025 0 1.53328705 1.3998971 0 -0.21781921
		 3.28234792 0 -3.18373203 6.70484543 0 -5.745368 4.64476013 0 -5.91451597 3.96656418
		 0 -5.76564693 3.19341278 0 -5.21376324 2.69613838 0 -5.75186348 3.17988586 0 -5.90572643
		 4.027803421 0 -5.74646235 4.64616394 0 -3.18373203 6.70484638 0 -0.21781921 3.28234911
		 0 1.52619648 1.40686989 0 1.31049252 0.7466917 0 0.55489445 0.31074142 0 0.00048971176
		 0.011714935 0 0 0.0049972534 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00039672852 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0.0011634827 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00065231323 0 -1.86649394
		 5.58854294 0 -1.8474071 5.9943924 0 -1.84702778 6.048872948 0 -1.83371186 4.42033339
		 0 -1.84671307 6.044344902 0 -1.84477353 6.025476456 0 -1.86649442 5.58854198 0 -1.99061537
		 4.83678055 0 -2.13676739 3.9588089 0 -2.35165977 2.17950439 0 -2.62902737 0.59036922
		 0 -2.86559772 -0.97697639 0 -3.18299961 -2.9810667 0 -2.86680698 -0.97829342 0 -2.59510756
		 0.72991562 0 -2.3574028 2.19137859 0 -2.13676739 3.95880938 0 -1.99061513 4.83678198
		 0 0.42182374 4.51019287 0 -0.98469234 5.93476677 0 -0.99668169 5.95118618 0 0.33798027
		 4.9095664 0 0.66912508 0.5532074 0 1.53798723 1.36208057 0 1.64608407 1.62094212
		 0 0.6847589 0.59194183 0 0.013866067 0.087144852 0 0.0077297688 0.086158752 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.79598331 2.35146809 0 1.81319284 2.78482819 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.013849378 0.08817482
		 0 0.0082877874 0.088285446 0 0.67193174 0.55658531 0 0.68703103 0.59175491 0 1.64928174
		 1.61882687 0 1.5520649 1.38111973 0 1.79861736 2.3841877 0 1.81194425 2.78028584
		 0 0.41522747 4.54579306 0 0.33733654 4.90923166 0 -0.99736929 5.94603777 0 -0.98392844
		 5.95747852 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 -2.0098500252 7.70875263 0 -1.97689629 7.6863122 0 -1.91896915 6.66846561 0 -0.9924705
		 4.81620884 0 -1.9773922 7.70350647 0 -2.0046505928 7.7385335 0 0.85182762 7.15114689
		 0 0.7838707 6.86884499 0 -0.65781784 8.25915623 0 -0.63150024 7.85595036 0 -0.65441132
		 7.19497871 0 0.69916201 6.18748522 0 -0.61965179 7.99456501 0 0.80498981 6.96500349
		 0 -0.63987255 8.32992077 0 0.85631037 7.172194 0 -0.60420227 6.28485632 0 -1.60095453
		 8.12234211 0 -1.5689373 7.88621473 0 -1.54549313 7.032287598 0 -1.5680418 8.0093784332
		 0 -1.59466839 8.15103722 0 -0.60516357 6.291924 0 -0.643785 6.1654191 0 -0.65111208
		 5.23044872 0 -0.64759159 6.10197496 0 0.8852582 5.77281284 0 0.87158012 5.725317
		 0 0.55731606 5.52140284 0 0.58763504 5.5915637 0 1.022701502 4.69588614 0 1.0026564598
		 4.59277534 0 0.85744238 4.39962769 0 0.8590672 4.54810238 0 1.19084179 4.0068082809;
	setAttr ".tk[505:535]" 0 1.20959473 4.11601639 0 0.97420806 4.091487408 0 0.95074809
		 3.95666313 0 0.93045282 5.16416073 0 0.95609927 5.24907255 0 0.61090732 5.076956749
		 0 0.59156752 5.018354893 0 -0.97611904 0.14234543 0 -0.97611904 0.14234543 0 -0.97611904
		 0.14234543 0 -0.97611904 0.14234543 0 -1.36542606 0 0 -1.36542606 0 0 -1.36542606
		 0 0 -1.36542606 0 0 -0.7865777 0 0 -0.7865777 0 0 -0.7865777 0 0 -0.7865777 0 0 -0.57778454
		 -0.51061249 0 -0.57778454 -0.51061249 0 -0.57778454 -0.51061249 0 -0.57778454 -0.51061249
		 0 -1.27700996 -0.80419922 0 -1.27700996 -0.80419922 0 -1.27700996 -0.80419922 0 -1.27700996
		 -0.80419922 0.25130129 -0.927351 -0.31791306 -0.10171747 -0.87738895 -0.426754 -0.25130129
		 -0.71035576 -1.090320587 -0.026506662 -0.77797365 -0.85533524;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 50126;
	setAttr ".lt" -type "double3" 0 0 2.059515 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.0542773570879591 19.715458044677469 13.631810317897983 ;
	setAttr ".cbx" -type "double3" -4.4379012551172865 22.839094290405008 16.885380874538608 ;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[536:539]" -type "float3"  0.36986232 0.5510025 -0.16283798
		 -0.46152312 0.25021744 -0.57392502 -0.46077019 -0.5510025 0.49258804 0.46152306 -0.094829559
		 0.57392311;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 47781;
	setAttr ".lt" -type "double3" 0 0 4.822065 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.3260156478747023 21.233356604247781 15.730370651149936 ;
	setAttr ".cbx" -type "double3" -6.1188890304430616 22.819133886962625 17.140172134304233 ;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[540:543]" -type "float3"  0.73704767 0.11143112 -0.26156235
		 -0.74349809 -0.099462509 -0.92188263 -1.018996716 -1.42642784 0.79124069 0.66575146
		 -0.98963356 0.92188263;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 52671;
	setAttr ".lt" -type "double3" 0 0 5.324347 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.473432239518988 23.625246176391336 18.351174484157749 ;
	setAttr ".cbx" -type "double3" -9.0364634361132268 25.512960562377664 20.029412399196811 ;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[544:547]" -type "float3"  -0.051876545 -0.15096855 0.038082123
		 0.11492109 -0.02878952 0.13421631 0.062058449 0.15096855 -0.11519623 -0.11492109
		 -0.012060165 -0.13421631;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[540]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 65535;
	setAttr ".lt" -type "double3" 0 0 0.226878 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.7182146873339308 21.546070227294656 13.631810317897983 ;
	setAttr ".cbx" -type "double3" -4.4400352802141798 23.93441213098118 17.045296798610874 ;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[540:551]" -type "float3"  -0.17704272 0.084830284 1.73812485
		 0.39219952 0.50180054 2.066215515 0.21179199 1.11527824 1.21503067 -0.39219928 0.55889511
		 1.15011597 0 0 0 0 0 0 0 0 0 0 0 0 -0.6065321 -3.27400208 -0.26170731 -1.3137207
		 -3.055360794 0.11410522 -1.71206474 -2.99849129 0.30286407 -0.90311146 -3.34006882
		 -0.15866852;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[540]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 35925;
	setAttr ".lt" -type "double3" 0 0 1.832 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.9966132011278761 22.674614081054422 14.396966110134311 ;
	setAttr ".cbx" -type "double3" -5.3730669584139479 23.857462057738992 16.087525497341343 ;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[552:555]" -type "float3"  0.4921999 0.95241165 0.86146545
		 -0.82731688 0.29977036 0.74510193 0.82731676 0.45992088 -0.77827835 0.053302765 -0.25308228
		 -0.86146545;
createNode polyTweak -n "polyTweak47";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[556:559]" -type "float3"  0.1801908 0.74680328 1.17124557
		 -0.44535923 0.37541389 1.17112732 0.44578433 0.12451744 0.41133118 0.087286949 -0.2739315
		 0.47459412;
createNode polySplit -n "polySplit26";
	setAttr -s 5 ".e[0:4]"  0.68947101 0.68947101 0.68947101 0.68947101
		 0.68947101;
	setAttr -s 5 ".d[0:4]"  -2147482540 -2147482537 -2147482535 -2147482539 -2147482540;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[554]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 53857;
	setAttr ".lt" -type "double3" 0 0 1.199825 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.3412343826159132 24.170108923583719 14.668332229519077 ;
	setAttr ".cbx" -type "double3" -6.268684324251045 25.112655768066141 14.904606948757358 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[540]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 47369;
	setAttr ".lt" -type "double3" 0 0 1.725935 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.4044622745379103 24.70461476769993 14.790551315212436 ;
	setAttr ".cbx" -type "double3" -6.6720589961870802 25.112655768066141 15.784459243679233 ;
createNode polyTweak -n "polyTweak48";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[564:567]" -type "float3"  -0.24480677 0.81920624 0.1643486
		 0.14934301 0.99464798 0.21643066 0.24480677 0.68717384 0.16064072 -0.06066823 0.56438065
		 0.10857391;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[534]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.3309917 18.892849 17.423878 ;
	setAttr ".rs" 49437;
	setAttr ".lt" -type "double3" 0 0 1.7259350277384344 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.4475201930864943 17.855546126037332 16.284363876247593 ;
	setAttr ".cbx" -type "double3" -3.2144630815848005 19.930151114135477 18.563389907741733 ;
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr -s 447 ".tk";
	setAttr ".tk[125:290]" -type "float3"  -0.57996821 0.11916637 -0.72121429 0.57902229
		 0.69241142 -0.61900711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.69376707
		 -0.69241238 1.10326767 0.3509849 -0.3144331 1.61985397 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[536:571]" -0.65305614 -1.16897297 0.56420517 0.8148998 -0.63788414
		 1.29005051 0.81357062 0.7768116 -0.59306717 -0.81489968 -0.028642654 -0.73667526
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30331397 -0.2757225
		 0 0.30331397 -0.2757225 0 0.30331397 -0.2757225 0 0.30331397 -0.2757225 0 -0.34531403
		 -0.24419022 -0.25748062 -0.81124997 -0.43148613 -0.33689499 -0.30128956 -0.14737511
		 -0.84864044 -0.58048153 -0.35706711 -0.94952011;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.6393833 26.505718 3.1074526 ;
	setAttr ".rs" 47989;
	setAttr ".lt" -type "double3" 0 0 1.7259350277384344 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.7114030685289991 24.228033194213602 -0.81134687814693862 ;
	setAttr ".cbx" -type "double3" -3.5673634376391066 28.783403525024148 7.0262519225122411 ;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 34903;
	setAttr ".lt" -type "double3" 0 0 1.330829 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.266768630967964 25.174934515624734 0.71054757680911607 ;
	setAttr ".cbx" -type "double3" -4.518934842573036 28.195514807372781 6.245816360378452 ;
createNode polyTweak -n "polyTweak50";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[576:579]" -type "float3"  1.18893266 -0.3705883 -0.92710686
		 0.10174388 -1.21759796 -1.15116501 0.099920094 -1.90537834 1.13538933 1.49612522
		 -0.84778976 1.15116501;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 46473;
	setAttr ".lt" -type "double3" 0 0 4.616903 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6490117874010695 26.667127737670633 1.847409377956577 ;
	setAttr ".cbx" -type "double3" -5.7627062167986525 28.740667471557352 5.6472083434106786 ;
createNode polyTweak -n "polyTweak51";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[576:583]" -type "float3"  -0.15828204 -0.31072426 0.45857811
		 0.28192794 0.032236099 0.56940651 0.28266644 0.31072426 -0.56160355 -0.28266644 -0.11750221
		 -0.56940651 0.24121094 0.47352028 -0.698843 -0.42963862 -0.049125671 -0.86773491
		 -0.4307642 -0.47352028 0.85584641 0.4307642 0.1790657 0.86773491;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[584:587]" -type "float3"  0 0.11431503 -0.68357086 0
		 0.11431503 -0.68357086 0 0.11431503 -0.68357086 0 0.11431503 -0.68357086;
createNode polySplit -n "polySplit27";
	setAttr -s 5 ".e[0:4]"  0.1645 0.1645 0.1645 0.1645 0.1645;
	setAttr -s 5 ".d[0:4]"  -2147482484 -2147482483 -2147482481 -2147482479 -2147482484;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[586]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 60911;
	setAttr ".lt" -type "double3" 0 0 0.796034 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6979557838305128 26.667127737670633 5.2774134978296239 ;
	setAttr ".cbx" -type "double3" -5.765170034395088 28.411604056030008 5.6883479460718114 ;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[586]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.8505321 27.450912 5.7298117 ;
	setAttr ".rs" 39053;
	setAttr ".lt" -type "double3" 0 0 0.79603350300159503 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.1976012554033888 27.095836767822 5.6687423094751317 ;
	setAttr ".cbx" -type "double3" -6.5034632053240431 27.805986532836648 5.7908812865259129 ;
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[592:595]" -type "float3"  0.39932179 0.55677986 -0.38838387
		 -0.64176702 -0.25431824 -0.6504879 -0.46369338 -0.47754669 -0.67717934 0.59688115
		 0.34872818 -0.41016769;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[586]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 58388;
	setAttr ".lt" -type "double3" 0 0 2.414599 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.9637414779528273 27.574245581298563 6.3786975249292333 ;
	setAttr ".cbx" -type "double3" -7.3165988292559279 28.26135076013157 6.6500007018091161 ;
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[596:599]" -type "float3"  -0.7104609 0.59090424 0.14581871
		 -0.70427275 0.59573746 0.093080521 -0.65137124 0.56785965 -0.14022255 -0.65727735
		 0.56324387 -0.089887619;
createNode polyExtrudeFace -n "polyExtrudeFace36";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.6094818 29.595039 3.9973872 ;
	setAttr ".rs" 49429;
	setAttr ".lt" -type "double3" 0 0 2.4145994247398219 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.5526339378222112 28.558267721801492 2.359555374050327 ;
	setAttr ".cbx" -type "double3" -7.6663290824755324 30.631809363036844 5.6352187499048192 ;
createNode polyTweak -n "polyTweak55";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[584]" -type "float3" 0.9168582 -1.7571487 -0.21105957 ;
	setAttr ".tk[585]" -type "float3" 0.9168582 -1.7571487 -0.26206779 ;
	setAttr ".tk[586]" -type "float3" 0.9168582 -1.7571487 0.25847626 ;
	setAttr ".tk[587]" -type "float3" 0.9168582 -1.7571487 0.26206779 ;
	setAttr ".tk[600]" -type "float3" -0.66288042 0.60147858 -1.1317291 ;
	setAttr ".tk[601]" -type "float3" -0.66288042 0.60147858 -1.1317291 ;
	setAttr ".tk[602]" -type "float3" -0.66288042 0.60147858 -1.1317291 ;
	setAttr ".tk[603]" -type "float3" -0.66288042 0.60147858 -1.1317291 ;
createNode polyExtrudeFace -n "polyExtrudeFace37";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 59499;
	setAttr ".lt" -type "double3" 0 0 2.512161 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.9516169395311955 31.500230917602273 3.9123374327661473 ;
	setAttr ".cbx" -type "double3" -9.0938903655871037 31.960382589965555 5.1807967528345067 ;
createNode polyTweak -n "polyTweak56";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[604:607]" -type "float3"  0.7364254 1.10665131 -0.78868866
		 -0.058986664 0.20306396 -1.01688385 0.037211418 -0.50673866 0.96787643 1.0657897
		 0.64113998 1.019577026;
createNode polyExtrudeFace -n "polyExtrudeFace38";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 62522;
	setAttr ".lt" -type "double3" 0 0 1.249716 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.60588615797602 33.931673178344461 4.531705032253452 ;
	setAttr ".cbx" -type "double3" -10.068600353227485 34.219915518432352 5.3262759551050145 ;
createNode polyTweak -n "polyTweak57";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[608:611]" -type "float3"  0.12821817 0.085954666 -0.2031002
		 -0.12336159 -0.0039863586 -0.2369442 -0.16022062 -0.085954666 0.2369442 0.16022062
		 0.019006729 0.22601318;
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[576:615]" -type "float3"  -0.057784319 0.90936852 -0.58320808
		 -0.61763191 0.47319984 -0.72415733 -0.61857116 0.11902809 0.7142334 0.10040474 0.66363525
		 0.72415733 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.10143757 0.068002701 -0.2839489 -0.097595692
		 -0.0031528473 -0.31072426 -0.12675571 -0.068002701 0.064184189 0.12675571 0.015037537
		 0.055538177;
createNode polySplit -n "polySplit28";
	setAttr -s 51 ".e[0:50]"  0.494358 0.494358 0.505642 0.505642 0.494358
		 0.494358 0.505642 0.505642 0.505642 0.494358 0.494358 0.505642 0.505642 0.505642
		 0.505642 0.494358 0.494358 0.494358 0.494358 0.505642 0.505642 0.505642 0.494358
		 0.494358 0.505642 0.494358 0.505642 0.494358 0.494358 0.494358 0.505642 0.505642
		 0.494358 0.494358 0.494358 0.494358 0.494358 0.494358 0.494358 0.494358 0.494358
		 0.505642 0.505642 0.494358 0.494358 0.494358 0.494358 0.494358 0.505642 0.505642
		 0.494358;
	setAttr -s 51 ".d[0:50]"  -2147483573 -2147483236 -2147482893 -2147482941 -2147483187 -2147483171 
		-2147482980 -2147483168 -2147483184 -2147482938 -2147482890 -2147483241 -2147482916 -2147483206 -2147483211 -2147483215 -2147482919 -2147483249 
		-2147483316 -2147483416 -2147483417 -2147483418 -2147483263 -2147483219 -2147482904 -2147483193 -2147483197 -2147483200 -2147482907 -2147483230 
		-2147482881 -2147482929 -2147483179 -2147483163 -2147482955 -2147483160 -2147483176 -2147482926 -2147482878 -2147483223 -2147483569 -2147483278 
		-2147482821 -2147482819 -2147483570 -2147483571 -2147483572 -2147482777 -2147482778 -2147483331 -2147483573;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[534]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 45828;
	setAttr ".lt" -type "double3" 0 0 2.09222 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.8775915469988478 18.720461020141336 17.713460098171421 ;
	setAttr ".cbx" -type "double3" -5.3947697248324049 19.256953367858621 17.99931443777103 ;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr -s 625 ".tk";
	setAttr ".tk[41:206]" -type "float3"  0 0 1.046369553 0 0 1.046369553 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[572:665]" 2.45852757 0.47555351 -0.1074295 -1.32394278 -0.82089329
		 -2.011104584 -0.91540492 -1.062560081 -1.68468475 2.42629218 0.098400116 -0.017932892
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0.35534525 1.10837173 0 0.19923592 1.10837173 0 0 0 0 -0.18639469
		 1.10837173 0 -0.35534525 1.10837173 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[492]" "e[1072]" "e[1075:1125]" "e[1127]" "e[1129]" "e[1132:1139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[584]" -type "float3" 1.303277 0.81865692 -0.33993912 ;
	setAttr ".tk[585]" -type "float3" 0.92473984 0.52374458 -0.42209435 ;
	setAttr ".tk[586]" -type "float3" 0.92410469 0.28427124 0.41631126 ;
	setAttr ".tk[587]" -type "float3" 1.4102354 0.65250397 0.42209435 ;
	setAttr ".tk[666]" -type "float3" 0 -0.04241848 -0.98503113 ;
	setAttr ".tk[667]" -type "float3" 0 -0.04241848 -0.98503113 ;
	setAttr ".tk[668]" -type "float3" 0 -0.04241848 -0.98503113 ;
	setAttr ".tk[669]" -type "float3" 0 -0.04241848 -0.98503113 ;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[72]" "e[1152]" "e[1154]" "e[1157:1160]" "e[1162]" "e[1165:1168]" "e[1170:1178]" "e[1181]" "e[1183]" "e[1189:1227]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[62]" "e[71:72]" "e[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[576:583]" -type "float3"  0.072009131 -0.93831539 1.51975489
		 0.8787474 -0.30979964 1.72286057 0.88010091 0.20056149 -0.34985313 -0.15594016 -0.58421296
		 -0.36415178 -0.16083527 -0.31573626 0.46597576 0.28647599 0.032757089 0.57859236
		 0.28722638 0.31573626 -0.57066375 -0.28722638 -0.11939716 -0.57859236;
createNode polySoftEdge -n "polySoftEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[240]" "e[491:492]" "e[507]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode objectSet -n "set1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "e[507]" "e[1068:1070]" "e[1140:1147]" "e[1328:1335]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 3 "f[534]" "f[570:573]" "f[664:667]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 2 "e[507]" "e[1068:1070]";
createNode polySoftEdge -n "polySoftEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[507]" "e[1068:1070]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1074]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[41]" -type "float3" -0.17376132 0.064806312 0 ;
	setAttr ".tk[42]" -type "float3" 0.17376132 -0.46007296 0 ;
	setAttr ".tk[538]" -type "float3" 0 -0.30887741 -0.070169792 ;
	setAttr ".tk[539]" -type "float3" 0 -0.30887741 -0.070169792 ;
createNode polySoftEdge -n "polySoftEdge10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1142]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak63";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[32]" -type "float3" 0.12587845 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.12587845 0 0 ;
createNode polySoftEdge -n "polySoftEdge12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1140]" "e[1145]" "e[1148]" "e[1153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1156]" "e[1161]" "e[1164]" "e[1180:1195]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:1319]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak64";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[240]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[241]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[242]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[243]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[244]" -type "float3" -1.4985318 0 0 ;
	setAttr ".tk[245]" -type "float3" -1.4985318 0 0 ;
	setAttr ".tk[246]" -type "float3" -1.4985318 0 0 ;
	setAttr ".tk[247]" -type "float3" -1.4985318 0 0 ;
	setAttr ".tk[332]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[335]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[357]" -type "float3" -1.4985318 0 0 ;
	setAttr ".tk[360]" -type "float3" -1.4985318 0 0 ;
	setAttr ".tk[616]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[620]" -type "float3" 0.94562447 0 0 ;
	setAttr ".tk[644]" -type "float3" -1.4985318 0 0 ;
	setAttr ".tk[648]" -type "float3" -1.4985318 0 0 ;
createNode polySplit -n "polySplit29";
	setAttr -s 51 ".e[0:50]"  0.533409 0.533409 0.466591 0.466591 0.533409
		 0.533409 0.466591 0.466591 0.466591 0.533409 0.533409 0.466591 0.466591 0.466591
		 0.466591 0.533409 0.533409 0.533409 0.533409 0.466591 0.466591 0.466591 0.533409
		 0.533409 0.466591 0.533409 0.466591 0.533409 0.533409 0.533409 0.466591 0.466591
		 0.533409 0.533409 0.533409 0.533409 0.533409 0.533409 0.533409 0.533409 0.533409
		 0.466591 0.466591 0.533409 0.533409 0.533409 0.533409 0.533409 0.466591 0.466591
		 0.533409;
	setAttr -s 51 ".d[0:50]"  -2147483573 -2147483236 -2147482426 -2147482425 -2147483187 -2147483171 
		-2147482422 -2147482421 -2147482420 -2147482938 -2147482890 -2147482417 -2147482416 -2147482415 -2147482414 -2147483215 -2147482919 -2147483249 
		-2147483316 -2147482409 -2147482408 -2147482407 -2147483263 -2147483219 -2147482404 -2147483193 -2147482402 -2147483200 -2147482907 -2147483230 
		-2147482398 -2147482397 -2147483179 -2147483163 -2147482955 -2147483160 -2147483176 -2147482926 -2147482878 -2147483223 -2147483569 -2147482387 
		-2147482386 -2147482819 -2147483570 -2147483571 -2147483572 -2147482777 -2147482380 -2147482379 -2147483573;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	setAttr -s 51 ".e[0:50]"  0.56957299 0.56957299 0.56957299 0.43042701
		 0.43042701 0.43042701 0.43042701 0.56957299 0.56957299 0.56957299 0.56957299 0.43042701
		 0.43042701 0.56957299 0.56957299 0.56957299 0.43042701 0.43042701 0.56957299 0.56957299
		 0.43042701 0.43042701 0.56957299 0.56957299 0.43042701 0.43042701 0.43042701 0.43042701
		 0.43042701 0.56957299 0.56957299 0.43042701 0.43042701 0.43042701 0.43042701 0.43042701
		 0.43042701 0.43042701 0.43042701 0.43042701 0.56957299 0.56957299 0.43042701 0.43042701
		 0.43042701 0.56957299 0.43042701 0.56957299 0.43042701 0.43042701 0.56957299;
	setAttr -s 51 ".d[0:50]"  -2147483418 -2147483417 -2147483416 -2147482410 -2147482411 -2147482412 
		-2147482413 -2147483211 -2147483206 -2147482916 -2147483241 -2147482418 -2147482419 -2147483184 -2147483168 -2147482980 -2147482423 -2147482424 
		-2147482941 -2147482893 -2147482427 -2147482428 -2147483331 -2147482778 -2147482381 -2147482382 -2147482383 -2147482384 -2147482385 -2147482821 
		-2147483278 -2147482388 -2147482389 -2147482390 -2147482391 -2147482392 -2147482393 -2147482394 -2147482395 -2147482396 -2147482929 -2147482881 
		-2147482399 -2147482400 -2147482401 -2147483197 -2147482403 -2147482904 -2147482405 -2147482406 -2147483418;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak65";
	setAttr ".uopa" yes;
	setAttr -s 534 ".tk";
	setAttr ".tk[228:393]" -type "float3"  0.28885746 -0.86628151 0 0.28885746
		 -0.86628151 0 -0.39528084 0 0 -0.39528084 0 0 0.54771328 0 0 0.54771233 0 0 -0.81196022
		 0 0 -0.81196022 0 0 -0.81195927 0 0 -0.81195927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.017763138 0 0 0.055290222 0 0 0 0 0 -0.042066574
		 0 0 0 0 0 0 0 0 -0.065656662 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.00038719177
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[617:725]" 3.58743668 0 0 3.58743668 0 0 3.58743668 0 0 0.32233047
		 0 0 0 -1.14318323 0 0 -1.14318323 0 -0.58405972 -1.14318323 0 -0.58405972 0 0 0.64154243
		 0 0 0.51469421 0 0 1.040049553 -0.4880619 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 -1.38463497 0 0 -1.38463593 0 0 0 0 0 0.66973782 0 0 0.66973782
		 -1.24254608 0 0 -1.24254608 0 -0.088327408 -1.24254608 0 -2.5758419 0 0 -2.5758419
		 0 0 -2.5758419 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.15345573 0 0 1.89913368 0 0
		 1.59122467 0 0 0.21255875 0 0 0 -1.14318323 0 0 -1.14318323 0 -0.58405972 -1.14318275
		 0 -0.58405972 0 0 0 0 0 -0.94299412 0 0 1.040049553 -0.4880619 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66973782 0 0 0.66973782
		 -1.24254608 0 0 -1.24254608 0 -0.00022697449 -1.24254608 0 -1.2192421 0 0 -1.43748283
		 0 0 -1.61227226 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.040049553 -0.4880619
		 0 -0.94299412 0 0 0 0 0 -0.58405972 0 0 -0.58405972 -1.14318323 0 0 -1.14318323 0
		 0 -1.14318323 0 0.020181656 0 0;
	setAttr ".tk[726:761]" 1.76130295 0 0 2.051399231 0 0 2.28803825 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 -0.0021247864 0 0 -1.70390129 0 0 -1.54188538 0 0 -1.33728027
		 0 0 -0.038482666 -1.24254608 0 0 -1.24254608 0 0.66973782 -1.24254608 0 0.66973782
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polySplit -n "polySplit31";
	setAttr -s 13 ".e[0:12]"  0.58405602 0.41594401 0.58405602 0.41594401
		 0.58405602 0.58405602 0.58405602 0.58405602 0.58405602 0.41594401 0.41594401 0.58405602
		 0.58405602;
	setAttr -s 13 ".d[0:12]"  -2147483167 -2147482954 -2147483166 -2147482140 -2147482346 -2147482246 
		-2147483164 -2147482956 -2147483162 -2147482243 -2147482343 -2147482143 -2147483167;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	setAttr -s 13 ".e[0:12]"  0.52060997 0.52060997 0.52060997 0.47939
		 0.52060997 0.52060997 0.52060997 0.47939 0.52060997 0.47939 0.47939 0.52060997 0.52060997;
	setAttr -s 13 ".d[0:12]"  -2147483175 -2147482981 -2147483174 -2147482162 -2147482374 -2147482274 
		-2147483172 -2147482979 -2147483170 -2147482271 -2147482371 -2147482165 -2147483175;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace40";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 6 "f[52]" "f[57]" "f[78]" "f[83]" "f[340]" "f[347]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 61911;
	setAttr ".lt" -type "double3" 0 0 1.342799 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -13.714452918992865 -6.1681584027712617 -36.954609741306115 ;
	setAttr ".cbx" -type "double3" 6.6199072036877977 2.8316725584561553 -24.140898574924282 ;
createNode polyTweak -n "polyTweak66";
	setAttr ".uopa" yes;
	setAttr -s 776 ".tk";
	setAttr ".tk[10:175]" -type "float3"  0 0.75455332 0 0 0 0 0 0 0 0 0 0 0 0.75455332
		 0 0 0.75455379 0 0 0 0 0 0 0 0 0 0 0 0.75455379 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.75455379 0
		 0 0 0 0 0 0 0 0 0 0 0.75455379 0 0 0.75455332 0 0 0 0 0 0 0 0 0 0 0 0.75455332 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.75455332 0 0 0.75455379 0 0 0 0 0 0 0 0
		 0 0 0 0.75455379 0 0 0.75455332 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[342:507]" 0 0.75455332 0 0 0.75455379 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0.75455379 0 0 0.75455332 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[620:673]" 0 -2.31592321 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 -1.46149158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 -2.31592321 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[694:785]" 0 -1.46149158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2.31592321 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.46149158 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.46149158
		 0 0 -1.46149158 0 0 -1.46149158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2.31592321 0 0 -2.31592321 0 0 -2.31592321
		 0;
createNode polyTweak -n "polyTweak67";
	setAttr ".uopa" yes;
	setAttr -s 792 ".tk";
	setAttr ".tk[10:175]" -type "float3"  0 0 -3.99214554 0 0 0 0 0 0 0 0 0 0
		 0 -3.99214554 0 0 -3.99214554 0 0 0 0 0 0 0 0 0 0 0 -3.99214554 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 -3.99214554 0 0 0 0 0 0 0 0 0 0 0 -3.99214554 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.44547081 0 0 -0.42593193 0 0
		 -0.38772202 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[192:341]" 0 0 -0.76220131 0 0 -0.73330498 0 0 -0.69046402 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[343:507]" 0 0 -3.99214554 0 0 -0.4614048 0 0 0 0 0 0 0 0 0 0 0
		 -0.77742958 0 0 -3.99214554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[786:801]" 3.84467888 0.46168661 1.59458256 1.69132423 0.3260901
		 1.03594017 3.13301659 -0.63240814 -1.76301575 1.37824154 -0.93665409 -2.52513123
		 3.84491062 -0.092177868 1.89148712 3.13324738 -1.097232819 -1.55935669 3.84497929
		 -0.56900501 2.14637208 3.13331604 -1.50605202 -1.3680954 -3.13301849 -0.63241959
		 -1.76301575 -3.84468174 0.46167517 1.59458399 -1.69132805 0.32608938 1.035941124
		 -1.3782444 -0.93665504 -2.52512932 -3.13324833 -1.09762764 -1.55888557 -3.84491158
		 -0.092206478 1.89148855 -3.13331604 -1.50660515 -1.36715889 -3.84497929 -0.56904125
		 2.14637208;
createNode polySplit -n "polySplit33";
	setAttr -s 23 ".e[0:22]"  0.496898 0.503102 0.496898 0.496898 0.496898
		 0.503102 0.496898 0.496898 0.503102 0.503102 0.503102 0.503102 0.496898 0.503102
		 0.503102 0.503102 0.496898 0.503102 0.503102 0.496898 0.496898 0.496898 0.496898;
	setAttr -s 23 ".d[0:22]"  -2147483621 -2147483274 -2147483620 -2147483619 -2147483618 -2147483327 
		-2147483617 -2147482068 -2147482073 -2147482080 -2147482077 -2147483557 -2147483324 -2147483556 -2147483555 -2147483554 -2147483271 -2147483553 
		-2147482060 -2147482064 -2147482056 -2147482051 -2147483621;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:1643]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak68";
	setAttr ".uopa" yes;
	setAttr -s 809 ".tk";
	setAttr ".tk[15:180]" -type "float3"  0 -1.395154 0 0 0 0 0 0 0 0 0 0 0 -1.39670086
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 -4.195364 0 0 0 0 0 0 0 0 0 0 0 -4.19536591 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2.73984718 0 0 -0.00061607361
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0;
	setAttr ".tk[191:346]" 0 -2.80420971 0 0 -0.053728104 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0;
	setAttr ".tk[786:823]" -1.38134384 0 -2.27934361 -1.38134384 0 -2.27934361
		 0 0 0 0 0 0 -1.21336842 0 -3.28895855 0 0 0 -2.64065933 -3.50770378 -3.28895831 0
		 0.22800827 0 0 0 0 1.21202087 0 -2.39144516 1.21202087 0 -2.39144516 0 0 0 0 0 0
		 1.044045448 0 -3.4010601 0 0.23021412 0 2.47133636 -3.50755978 -3.40106034 -0.1791153
		 -3.45582294 0.22539425 -0.13947535 -2.089687347 0.28508949 -0.093232632 -1.55030441
		 0.19246197 -0.0010351911 -1.88446426 0.11110783 0.091644764 -1.54276085 0.19416523
		 0.13466072 -2.030984879 0.29074478 0.1791153 -3.4566021 0.22525692 0.27368546 -2.29751015
		 0.43499279 2.24276733 -0.41518688 0.3483448 2.24261665 -0.21727467 0.25115395 1.92747498
		 0.040854931 0.049670219 1.46782303 0.082619667 -0.048773766 1.022524357 0.18530726
		 -0.097463608 0.59163284 0.36453462 -0.29045105 -9.2318226e-007 0.66086483 -0.43517685
		 -0.58868265 0.36466599 -0.29023361 -1.062051773 0.16828823 -0.091436386 -1.46782494
		 0.082619667 -0.048773766 -1.92747593 0.040854454 0.049671173 -2.24262047 -0.21727848
		 0.2511549 -2.24276733 -0.41526985 0.34843731 -0.27368546 -2.2963295 0.4351759;
createNode polyExtrudeFace -n "polyExtrudeFace41";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 50380;
	setAttr ".lt" -type "double3" 0 0 3.367731 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.994967397676338 25.868673453002664 -13.929759849643521 ;
	setAttr ".cbx" -type "double3" -3.5472733344896925 32.625736364989969 -6.9860905304906886 ;
createNode polyTweak -n "polyTweak69";
	setAttr ".uopa" yes;
	setAttr -s 99 ".tk";
	setAttr ".tk[31]" -type "float3" 0 0.015998125 -0.0010287985 ;
	setAttr ".tk[32]" -type "float3" -4.4703484e-008 0.015997767 -0.0010287985 ;
	setAttr ".tk[33]" -type "float3" 4.6566129e-010 6.9849193e-010 0 ;
	setAttr ".tk[41]" -type "float3" 1.4901161e-008 0.009031415 -0.00058077584 ;
	setAttr ".tk[42]" -type "float3" 5.9604645e-008 2.3841858e-007 0 ;
	setAttr ".tk[43]" -type "float3" -5.5879354e-009 1.4901161e-008 0 ;
	setAttr ".tk[51]" -type "float3" 0 -2.4252567 3.5527137e-015 ;
	setAttr ".tk[52]" -type "float3" 4.4408921e-016 -2.4252567 3.5527137e-015 ;
	setAttr ".tk[53]" -type "float3" 0 -2.4252567 3.5527137e-015 ;
	setAttr ".tk[117]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[125]" -type "float3" -1.4551915e-011 -2.3283064e-010 0 ;
	setAttr ".tk[126]" -type "float3" -2.3283064e-010 3.7252903e-009 0 ;
	setAttr ".tk[199]" -type "float3" 1.8626451e-008 2.9802322e-008 0 ;
	setAttr ".tk[200]" -type "float3" 1.8626451e-009 5.9604645e-008 0 ;
	setAttr ".tk[470]" -type "float3" 1.1505284 -1.3347778 -0.33032978 ;
	setAttr ".tk[471]" -type "float3" 0.79638147 -1.3347778 -0.33032978 ;
	setAttr ".tk[472]" -type "float3" -0.0090632783 -1.3347778 -0.33032978 ;
	setAttr ".tk[474]" -type "float3" -0.82195163 -1.3347778 -0.33032978 ;
	setAttr ".tk[475]" -type "float3" -1.1505284 -1.3347778 -0.33032978 ;
	setAttr ".tk[487]" -type "float3" 0 -0.61505365 0.82893091 ;
	setAttr ".tk[488]" -type "float3" 4.4408921e-016 -0.61505365 0.82893091 ;
	setAttr ".tk[489]" -type "float3" 4.4408921e-016 -0.61505365 0.82893091 ;
	setAttr ".tk[490]" -type "float3" 0 -0.61505365 0.82893091 ;
	setAttr ".tk[491]" -type "float3" 0 -0.61505365 0.82893091 ;
	setAttr ".tk[536]" -type "float3" 2.3841858e-007 3.5762787e-007 1.1920929e-007 ;
	setAttr ".tk[537]" -type "float3" 2.3841858e-007 3.5762787e-007 7.4505806e-009 ;
	setAttr ".tk[538]" -type "float3" 0 5.9604645e-008 1.1920929e-006 ;
	setAttr ".tk[539]" -type "float3" 3.2782555e-007 -5.9604645e-008 1.0728836e-006 ;
	setAttr ".tk[540]" -type "float3" 2.9802322e-007 -2.9802322e-008 1.4901161e-008 ;
	setAttr ".tk[541]" -type "float3" -3.5762787e-007 -1.4901161e-008 5.9604645e-008 ;
	setAttr ".tk[542]" -type "float3" 0 3.5762787e-007 8.9406967e-008 ;
	setAttr ".tk[543]" -type "float3" 0 7.4505806e-008 -1.4901161e-007 ;
	setAttr ".tk[544]" -type "float3" -1.0258086 3.0040936 0.59095067 ;
	setAttr ".tk[545]" -type "float3" -0.92567956 1.8792872 0.29977542 ;
	setAttr ".tk[546]" -type "float3" -0.6527884 1.2036628 0.3540706 ;
	setAttr ".tk[547]" -type "float3" -0.86484635 2.4095085 0.6938867 ;
	setAttr ".tk[548]" -type "float3" 2.0466633 7.7463365 0.00079407467 ;
	setAttr ".tk[549]" -type "float3" 1.8486245 7.1666017 -0.57560319 ;
	setAttr ".tk[550]" -type "float3" 2.2786796 6.4699121 0.23310499 ;
	setAttr ".tk[551]" -type "float3" 2.4542334 7.2728782 0.57560396 ;
	setAttr ".tk[572]" -type "float3" 0.25265893 0.68924481 -0.74410838 ;
	setAttr ".tk[573]" -type "float3" -0.45002973 0.16011259 -0.92219651 ;
	setAttr ".tk[574]" -type "float3" -0.4512085 0.010569623 0.864218 ;
	setAttr ".tk[575]" -type "float3" 0.45120829 0.64495534 0.87983406 ;
	setAttr ".tk[576]" -type "float3" -1.2492179 1.4551628 -0.77039969 ;
	setAttr ".tk[577]" -type "float3" -2.0627515 1.8131233 -0.87461895 ;
	setAttr ".tk[578]" -type "float3" -2.3874133 1.7383957 0.0084689371 ;
	setAttr ".tk[579]" -type "float3" -1.3642646 1.3013725 0.033541597 ;
	setAttr ".tk[580]" -type "float3" -3.7978561 6.0341191 -1.3413641 ;
	setAttr ".tk[581]" -type "float3" -3.8422444 6.2844448 -1.268225 ;
	setAttr ".tk[582]" -type "float3" -4.2215466 6.9271555 -0.93957746 ;
	setAttr ".tk[583]" -type "float3" -4.1946654 6.6811156 -0.96806771 ;
	setAttr ".tk[584]" -type "float3" -2.1096544 3.0761368 -0.80337155 ;
	setAttr ".tk[585]" -type "float3" -2.7606544 3.4360437 -0.92647392 ;
	setAttr ".tk[586]" -type "float3" -3.0174708 3.4066181 -0.20750754 ;
	setAttr ".tk[587]" -type "float3" -2.1961224 2.9551969 -0.1802016 ;
	setAttr ".tk[588]" -type "float3" -1.6279914 1.2049764 0.23473755 ;
	setAttr ".tk[589]" -type "float3" -1.4404866 2.0624719 0.14214942 ;
	setAttr ".tk[590]" -type "float3" -2.3791873 3.7435486 -0.43102372 ;
	setAttr ".tk[591]" -type "float3" -2.5505605 2.8984942 -0.33494809 ;
	setAttr ".tk[592]" -type "float3" -3.4598482 5.5023856 1.9851619 ;
	setAttr ".tk[593]" -type "float3" -3.0390761 5.4076757 2.146296 ;
	setAttr ".tk[594]" -type "float3" -2.7690942 5.0687618 0.93453568 ;
	setAttr ".tk[595]" -type "float3" -3.2361486 5.1404881 0.95431745 ;
	setAttr ".tk[596]" -type "float3" -3.8284779 6.4845076 0.24076775 ;
	setAttr ".tk[597]" -type "float3" -3.9217985 6.2000194 0.2136247 ;
	setAttr ".tk[598]" -type "float3" -3.7299888 5.921102 -0.04164445 ;
	setAttr ".tk[599]" -type "float3" -3.6351812 6.1892624 -0.027264416 ;
	setAttr ".tk[600]" -type "float3" -5.5890617 8.4365902 -0.93255115 ;
	setAttr ".tk[601]" -type "float3" -5.5618591 8.6834517 -0.93699163 ;
	setAttr ".tk[602]" -type "float3" -5.6617718 8.9000387 -0.89077127 ;
	setAttr ".tk[603]" -type "float3" -5.700757 8.5751314 -0.88494909 ;
	setAttr ".tk[604]" -type "float3" -6.5328875 8.7225637 -0.62066174 ;
	setAttr ".tk[605]" -type "float3" -6.5178699 8.8842936 -0.60936803 ;
	setAttr ".tk[606]" -type "float3" -6.5535717 8.925643 -0.76750422 ;
	setAttr ".tk[607]" -type "float3" -6.5779915 8.7221117 -0.76385802 ;
	setAttr ".tk[608]" -type "float3" -6.8206577 8.2344675 -0.60070854 ;
	setAttr ".tk[609]" -type "float3" -6.8127213 8.319869 -0.59474301 ;
	setAttr ".tk[610]" -type "float3" -6.838603 8.3663511 -0.67991477 ;
	setAttr ".tk[611]" -type "float3" -6.8535299 8.2659788 -0.67845792 ;
	setAttr ".tk[631]" -type "float3" -6.0535967e-009 3.7252903e-009 0 ;
	setAttr ".tk[632]" -type "float3" -7.4505806e-009 -1.1920929e-007 0 ;
	setAttr ".tk[633]" -type "float3" 3.7252903e-008 -2.3841858e-007 0 ;
	setAttr ".tk[634]" -type "float3" -3.7252903e-009 2.9802322e-008 0 ;
	setAttr ".tk[681]" -type "float3" -1.5832484e-008 2.9802322e-008 0 ;
	setAttr ".tk[682]" -type "float3" 5.9604645e-008 1.1920929e-007 0 ;
	setAttr ".tk[683]" -type "float3" -2.9802322e-008 2.3841858e-007 0 ;
	setAttr ".tk[684]" -type "float3" -2.0489097e-008 -8.9406967e-008 0 ;
	setAttr ".tk[712]" -type "float3" -2.2351742e-008 -1.1920929e-007 0 ;
	setAttr ".tk[713]" -type "float3" 1.4901161e-008 5.9604645e-008 0 ;
	setAttr ".tk[802]" -type "float3" 0 0 0.30145758 ;
	setAttr ".tk[803]" -type "float3" 0 0 -0.36789262 ;
	setAttr ".tk[804]" -type "float3" 0 0 0.47482213 ;
	setAttr ".tk[805]" -type "float3" 0 0 1.4398676 ;
	setAttr ".tk[806]" -type "float3" 0 0 0.45462844 ;
	setAttr ".tk[807]" -type "float3" 0 0 -0.4313063 ;
	setAttr ".tk[808]" -type "float3" 0 0 0.30299979 ;
	setAttr ".tk[809]" -type "float3" 0 0 -2.0487182 ;
	setAttr ".tk[823]" -type "float3" 0 0 -2.0507724 ;
createNode polyExtrudeFace -n "polyExtrudeFace42";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 54873;
	setAttr ".lt" -type "double3" 0 0 1.30268 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.7828957404955519 28.209964880614969 -13.593000759219937 ;
	setAttr ".cbx" -type "double3" -5.2674407329424513 33.139955649047586 -8.526862968540005 ;
createNode polyTweak -n "polyTweak70";
	setAttr ".uopa" yes;
	setAttr -s 807 ".tk";
	setAttr ".tk[21:186]" -type "float3"  -0.91208053 0.60889816 0 -1.11007869
		 0.74108124 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.87230122
		 0.58234215 0 -1.12335944 0.74994659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[824:827]" 0.97360468 -1.4178257 -0.93876553 1.90398741 -0.13233948
		 -0.90940857 0.97174883 -0.85535431 0.938766 1.87904549 0.40925026 0.87618065;
createNode polyExtrudeFace -n "polyExtrudeFace43";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 55029;
	setAttr ".lt" -type "double3" 0 0 6.964226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.4354183044298772 30.522243628173563 -12.779209007358364 ;
	setAttr ".cbx" -type "double3" -7.9593412246569288 33.415176520019266 -9.8063839570043605 ;
createNode polyTweak -n "polyTweak71";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[824:831]" -type "float3"  -0.36212945 -0.050498962 0
		 -0.36212969 -0.050498962 0 -0.36212945 -0.050498962 0 -0.36212969 -0.050498962 0
		 -1.64856553 -0.47211456 -1.046656609 -0.61125469 0.96110916 -1.013925552 -1.65063405
		 0.15500069 1.046656609 -0.63906193 1.56494141 0.97688055;
createNode polyExtrudeFace -n "polyExtrudeFace44";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 64066;
	setAttr ".lt" -type "double3" 0 0 7.932133 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -12.148719963060248 33.030450949340555 -9.5513037339208644 ;
	setAttr ".cbx" -type "double3" -10.720475372300971 34.635711798339578 -7.5590551987646144 ;
createNode polyTweak -n "polyTweak72";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[832:835]" -type "float3"  2.80849361 -2.80752373 3.49223614
		 3.72388887 -2.34465218 3.32249069 1.86748791 -1.88418579 4.61145687 2.81389618 -1.45255089
		 4.37371922;
createNode polyExtrudeFace -n "polyExtrudeFace45";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 62045;
	setAttr ".lt" -type "double3" 0 0 6.210529 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -18.84920137785517 35.132516989379617 -5.8407047883031886 ;
	setAttr ".cbx" -type "double3" -17.776558097825873 36.338102469115945 -4.3444832459447902 ;
createNode polyTweak -n "polyTweak73";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[836:839]" -type "float3"  -0.17780113 -0.19168663 -0.2480135
		 -0.038934708 0.19983864 -0.19417763 0.055757523 -0.19983864 0.2134943 0.17780113
		 0.19123077 0.2480135;
createNode polyTweak -n "polyTweak74";
	setAttr ".uopa" yes;
	setAttr -s 823 ".tk";
	setAttr ".tk[21:186]" -type "float3"  0.7924037 -1.57603455 0 0.79240364 -1.57603455
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.79240364 -1.57603455
		 0 0.7924037 -1.57603455 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[840:843]" -0.14386368 -0.64751434 -3.17519093 -0.031503677 -0.33072281
		 -3.1316309 0.045114517 -0.65410995 -2.80177307 0.14386368 -0.33768654 -2.77384281;
createNode polySplit -n "polySplit34";
	setAttr -s 23 ".e[0:22]"  0.520769 0.479231 0.520769 0.520769 0.520769
		 0.479231 0.520769 0.520769 0.520769 0.479231 0.520769 0.520769 0.479231 0.479231
		 0.479231 0.479231 0.479231 0.520769 0.520769 0.479231 0.479231 0.479231 0.520769;
	setAttr -s 23 ".d[0:22]"  -2147483597 -2147483267 -2147483596 -2147483595 -2147483594 -2147483320 
		-2147483593 -2147483495 -2147482977 -2147483443 -2147483331 -2147482772 -2147482771 -2147483432 -2147483433 -2147483434 -2147482833 -2147482837 
		-2147483278 -2147483435 -2147482964 -2147483436 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit35";
	setAttr -s 23 ".e[0:22]"  0.47163701 0.52836299 0.47163701 0.47163701
		 0.47163701 0.52836299 0.47163701 0.47163701 0.47163701 0.52836299 0.47163701 0.47163701
		 0.52836299 0.52836299 0.52836299 0.52836299 0.52836299 0.47163701 0.47163701 0.52836299
		 0.52836299 0.52836299 0.47163701;
	setAttr -s 23 ".d[0:22]"  -2147483616 -2147483269 -2147483615 -2147483614 -2147483613 -2147483322 
		-2147483612 -2147483494 -2147482975 -2147483460 -2147483329 -2147482762 -2147482761 -2147483459 -2147483458 -2147483457 -2147482810 -2147482812 
		-2147483276 -2147483456 -2147482966 -2147483455 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak75";
	setAttr ".uopa" yes;
	setAttr -s 867 ".tk";
	setAttr ".tk[21:186]" -type "float3"  -1.032010555 0.64578629 0 -0.46131214
		 -0.72650325 0.52274853 -0.63263404 -4.1723251e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 -0.17085284 -0.8618775 -0.16930163 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30285171 -0.18821214 0.2619963 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.39660537
		 -0.15685587 0.1178441 0.27325749 -0.27490985 0.213405 0.073974088 -2.68624973 2.021659851
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.43360525 -0.010899306 -0.026934536
		 0 0 0 0 0 0 0 0 0 -0.72214484 0.0030994415 0 -0.56440431 -2.18061376 -0.48396957
		 -1.035115242 0.64411354 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[195:352]" 0.28630131 -0.21301624 0.26159853 0.85747802 -0.77883595
		 0.64000517 -0.24252987 0.40961647 0 -0.33567381 0.49449921 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 -0.44349951 -0.95605743 -1.36545169 -0.67181742 -0.73722523 -0.86044323
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[413:518]" 0.0829788 -0.055330411 0.077083759 0.28015837 -0.1702406
		 0.29718047 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[537:684]" -0.099306613 -0.10598522 -0.33107594 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.085402712 -0.78611046
		 -0.38939238 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[713:850]" -0.012333322 -0.69376391 -0.54312336 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.69536686
		 0.18833923 0 -0.0041284561 0.823246 0 0.36244249 0.22418022 0 -0.32621384 0.84405518
		 0 0.82344174 0.69082832 0 0.41297531 1.063392639 0 0.62808013 0.71185875 0 0.22397518
		 1.075603485 0 1.15102863 1.26673317 0 0.8197813 1.42730713 0 1.1810379 1.47163391
		 0 0.84854794 1.61734772 0 1.69784355 2.77235031 0 1.44906998 2.89294434 0 1.72038078
		 2.9262352 0 1.47067261 3.035671234 0 2.017015457 3.96431351 0 1.83497238 4.052558899
		 0 2.033508301 4.076919556 0 1.85078239 4.15699959 0 0 0 0 -0.0059256554 0.023309708
		 0 -0.26403904 0.19615364 0 -0.22986899 0.078699112 0 -0.062466383 0 0 0 0 0 0 0 0;
	setAttr ".tk[869:887]" -0.31583029 0.053424835 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polySoftEdge -n "polySoftEdge17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1066]" "e[1068]" "e[1071]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak76";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[536:539]" -type "float3"  0.40379566 0.56547815 -0.22561994
		 -0.48119876 0.26194137 -0.59622496 -0.50396812 -0.56547821 0.50734055 0.50396812
		 -0.066945143 0.59622496;
createNode polyExtrudeFace -n "polyExtrudeFace46";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.0452662 22.292919 2.0755465 ;
	setAttr ".rs" 51466;
	setAttr ".lt" -type "double3" 0 0 4.7879834630984668 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.1515143547192919 20.319608816772195 -1.5573204651830714 ;
	setAttr ".cbx" -type "double3" 10.939018074049127 24.266229757934305 5.7084132536889989 ;
createNode polyTweak -n "polyTweak77";
	setAttr ".uopa" yes;
	setAttr -s 863 ".tk";
	setAttr ".tk[25:190]" -type "float3"  0 0 -0.19112873 0 0 0 0 0 0 0 0 0 0
		 0 -0.19683647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.91171026 0 0 -3.27229714 0 0 0 0
		 0 -2.68134308 0 0 -1.50623989 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.70526659 0 0 -3.27229691
		 0 0 0 0 0 -2.62953925 0 0 -1.32612073 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 -0.42422056 0.07354641 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.20510817
		 0.097530365 0 -2.47644973 0 0 0 0 0 -3.27229714 0 0 0 0 -0.14160538 0.3466835 0 0.14160526
		 -0.3466835 0 0 0 0 0 0 0 0 0 0 0 -0.29145348 0 0 -2.61561632 0 0 0 0 0 -2.60864258
		 0 0 0.084747553 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.11660588
		 0 0 -1.23285735 0 0 -2.65289783 0 0 -2.49344254 0.34456825 0 0 0.076639175 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.24334931 0 0 -0.89530683 0
		 0 -2.85177422 0 0 -2.75918984 0.34518147 0 0 0.045590401 0 0 0;
	setAttr ".tk[218:356]" 0 -0.56653178 0 0 -1.38463557 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 -1.061521888 0 0 -0.88630319 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 -0.49274635 0 0 -0.42229676 0 0 -0.27713585 0 0 0 0 0 -0.27201533
		 0 0 -0.4088285 0 0 -0.49971187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0080804825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.017963409 0 0 0 0 0 0 0;
	setAttr ".tk[390:522]" 0 -0.86170161 0 0 -1.51629126 0 0 0 0 0 0 0 0 -1.17426527
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.075553298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 -3.27229714 0 0 -3.27229714 -0.34518242 0 -3.27229691 0 0 -3.27229691
		 0 0 -3.27229691 0 0 -3.27229691 0 0 -3.27229691 0 0 -3.27229691 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 -0.78245997 -1.13603973 0 -0.78245997 -1.02456522 0 -1.29992783 0 0 -1.56533694
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -3.27229691 0 0 -3.27229691 0 0 -1.57244217 0 0 -1.29632521
		 0 0 -3.27229691 0 0 -3.27229691 0 0 -2.71303034 0 0 -3.27229691 0 0 -3.27229691 0
		 0 -2.48162222 -0.3445673 0 -0.78897643 -1.10745811 0 -0.78904152 -1.017293453 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[536:688]" 0.26734594 0.37439322 -0.14937878 -0.31859323 0.17342697
		 -0.39474985 -0.33366841 -0.37439322 0.33590123 0.33366841 -0.044323139 0.39474985
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 -1.0063368082 0 0 -0.98019946 0 0 -1.19268954 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.12435186 0 0 -0.97292352 0 0 -0.62864709
		 0 0 -0.33240342 0 0 -3.27229691 0 0 -3.27229691 0 0 -2.62442756 0 0 0 0 0 -2.62745523
		 0 0 -3.27229691 0 0 -3.27229691 0 0 -0.68102944 0 0 -1.33245146 0 0 -1.16890585 0
		 0 -1.34367907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[700:854]" 0 -1.10158288 0 0 -0.9325068 0 0 -0.95408177 0 0 -0.59504914
		 0 0 -3.27229691 0 0 -3.27229691 0 0 -2.62808108 0 0 0 0 0 -2.51643109 0 0 -3.27229691
		 0 0 -3.27229691 0 0 -0.93850768 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.050223947
		 0 0 -0.8021456 0 0 -0.69863188 0 0 -0.43808615 0 0 -3.27229691 0 0 -3.27229691 0
		 0 -2.62365985 0 0 0 0 0 -2.61894131 0 0 -3.27229691 0 0 -3.27229691 0 0 -0.084583521
		 0 0 -0.32158303 0 0 -1.011059046 0 0 -1.14583623 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.67437506 0 0 -2.59904313 0;
	setAttr ".tk[855:887]" 0 -2.69894648 0 0 -3.27229691 0 0 -3.27229714 0 0 0
		 0 0 -2.62970304 0 0 -3.27229691 0 0 -3.27229714 0 0 -2.83326435 0 0 -1.36838627 0
		 0 -0.0027017593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace47";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 62288;
	setAttr ".lt" -type "double3" 0 0 14.736105 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.3146818313733446 22.572767386108133 -0.61626707468014175 ;
	setAttr ".cbx" -type "double3" 10.102905097974908 24.99938786950657 3.8511439665796239 ;
createNode polyTweak -n "polyTweak78";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[888:891]" -type "float3"  -0.29342556 -3.37780762 1.13886261
		 -0.24823856 -3.082302094 -1.39916229 -3.24751949 -1.85780716 -0.7708149 -1.65306377
		 -1.9464283 1.39916229;
createNode polyExtrudeFace -n "polyExtrudeFace48";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 59323;
	setAttr ".lt" -type "double3" 0 0 2.464979 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.1444109115735399 24.884523520141336 -0.025889267062954247 ;
	setAttr ".cbx" -type "double3" 9.5893152389661189 25.722177633910867 3.0976268157007176 ;
createNode polyTweak -n "polyTweak79";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[892:895]" -type "float3"  -6.66405964 -11.92963982 2.37539101
		 -5.93576431 -11.61742592 0.6564064 -7.93524075 -10.34067345 0.45485497 -6.3071785
		 -10.25907898 2.00030136108;
createNode polyExtrudeFace -n "polyExtrudeFace49";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 39690;
	setAttr ".lt" -type "double3" 0 0 2.924795 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.0738561782971727 27.343261847167703 1.1677352293970067 ;
	setAttr ".cbx" -type "double3" 10.518759552015435 28.180915960937234 4.2912513121606786 ;
createNode polyTweak -n "polyTweak80";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[892:899]" -type "float3"  0.34703732 0 0.96661758 0.34703732
		 0 0.96661758 0.34703732 0 0.96661758 0.34703732 0 0.96661758 0.34703732 0.063550949
		 1.19361877 0.34703732 0.063550949 1.19361877 0.34703732 0.063550949 1.19361877 0.34703732
		 0.063550949 1.19361877;
createNode polyExtrudeFace -n "polyExtrudeFace50";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[897]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 54831;
	setAttr ".lt" -type "double3" 0 0 2.416709 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.4914482269421923 25.107601294189188 0.94072831716556138 ;
	setAttr ".cbx" -type "double3" 9.6013410720960017 28.180915960937234 1.9583827361108739 ;
createNode polyTweak -n "polyTweak81";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[900:907]" -type "float3"  0.35965538 1.63555527 -0.31619835
		 0.22264671 1.66887093 -0.80331039 -0.35965538 1.81046295 -0.55176735 -0.16809464
		 1.76388168 -0.15110779 0.36942387 1.74095345 -0.93471909 -0.23105526 1.88696289 -0.74687576
		 0.23105526 1.15680695 -0.98865128 -0.36942387 1.30281639 -0.80080795;
createNode polySplit -n "polySplit36";
	setAttr -s 5 ".e[0:4]"  0.48669401 0.48669401 0.48669401 0.48669401
		 0.48669401;
	setAttr -s 5 ".d[0:4]"  -2147481844 -2147481841 -2147481839 -2147481843 -2147481844;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak82";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[904:911]" -type "float3"  0.45265007 0.26842117 -0.082038879
		 -0.28310966 0.44732666 0.14812088 0.28310966 -0.44732666 -0.14812088 -0.45265007
		 -0.26842117 0.082038879 0.30194855 -0.31985283 -0.054725647 0.18885326 -0.79730415
		 -0.098806381 -0.30194855 -0.67796135 0.054725647 -0.18885326 -0.20051003 0.098806381;
createNode polySplit -n "polySplit37";
	setAttr -s 5 ".e[0:4]"  0.37163401 0.37163401 0.37163401 0.37163401
		 0.37163401;
	setAttr -s 5 ".d[0:4]"  -2147481852 -2147481851 -2147481849 -2147481847 -2147481852;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[45]" "e[64]" "e[74]" "e[83:84]" "e[219]" "e[240]" "e[300:303]" "e[327:331]" "e[395:401]" "e[403]" "e[406]" "e[429:436]" "e[438]" "e[441]" "e[508]" "e[719:721]" "e[724:727]" "e[729:730]" "e[1230:1234]" "e[1279:1284]" "e[1330:1334]" "e[1379:1384]" "e[1419:1423]" "e[1468:1473]" "e[1689]" "e[1710:1711]" "e[1772:1827]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak83";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[892:915]" -type "float3"  0.59171009 1.091798782 -0.079418182
		 0 0.73830986 0 0 0.73830986 0 -0.42832184 1.33982658 0.23966789 0.58324337 0.044418335
		 -0.069595337 0.23517704 0.68112564 -0.34445381 -0.37989616 0.83068466 -0.078754425
		 -0.76926517 0.37328911 0.35349464 0.76238728 2.98299408 -0.42308426 0.47196007 3.053611755
		 -1.45565224 -0.76238728 3.35375214 -0.92243767 -0.35632133 3.25501633 -0.073129654
		 0 0.73830986 0 0 0.73830986 0 0 0.73830986 0 0 0.73830986 0 0 0.73830986 0 0 0.73830986
		 0 0 0.73830986 0 0 0.73830986 0 0.63672066 1.61591911 0.28504944 0.39416599 1.67489815
		 -0.57731819 -0.63672066 1.92556572 -0.13199425 -0.29758835 1.84310341 0.57731819;
createNode polyExtrudeFace -n "polyExtrudeFace51";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 14 "f[43]" "f[183]" "f[216]" "f[222]" "f[388]" "f[397]" "f[609:610]" "f[647:649]" "f[658]" "f[660:661]" "f[698:700]" "f[709]" "f[729:731]" "f[740:742]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 46162;
	setAttr ".lt" -type "double3" 0 0 11.362803 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.463897880540717 7.489316353469583 5.8161918028833348 ;
	setAttr ".cbx" -type "double3" 10.565650764478814 7.489316353469583 12.489287506008335 ;
createNode polyTweak -n "polyTweak84";
	setAttr ".uopa" yes;
	setAttr -s 871 ".tk";
	setAttr ".tk[45:210]" -type "float3"  0 0.19597507 0 0 0 0 0 0 0 0 0 0 0 -0.19597459
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.19597507
		 0 0 0 0 0 0 0 0 0 0 0 -0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0.19597507 0 0 0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.19597507 0 0 -0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[212:376]" 0.078568459 0.070604324 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0.19597507 0 0 0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.19597459 0 0 -0.19597507
		 0 0 0 0 0 0 0 -0.37467289 -1.76549911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0.080971718 -0.49140358 0;
	setAttr ".tk[390:542]" 0 0.19597507 0 0 0.19597507 0 0 0 0 0 0 0 0 -0.19597459
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.19597459 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[612:708]" 0 0.19597507 0 0 0.19597507 0 0 0.19597507 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.79861927 -1.82725334
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.19597459 0 0 -0.19597507
		 0 0 -0.19597507 0 0 -0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.19597507
		 0 0 0.19597507 0 0 0.19597507 0 0 0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.55928612 -1.99257088 0 -0.32727432 -0.40306854
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.19597459 0 0 -0.19597507 0 0 -0.19597507
		 0 0 -0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[711:874]" 0 0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.19597507
		 0 0 0.19597507 0 0 0.19597507 0 0 0.19597507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 -0.19597507 0 0 -0.19597507 0 0 -0.19597507 0 0 -0.19597459 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[888:915]" 0.59742737 0.48102951 0 0.37575436 0.57670784 0 0 0
		 0 0 0 0 1.26849556 -0.58144379 0 1.009144783 -0.54733467 0 0.32038212 -1.8255024
		 0 0.89618587 -1.27235603 0 2.004067421 -1.50995064 0.61895752 2.3159771 -2.087114334
		 0.28739357 1.14827061 -3.023286819 0.13051987 1.38302231 -2.031614304 0.51318169
		 6.41727066 -5.99490166 0 6.22929382 -6.17111969 0 5.43037319 -6.92006683 0 5.6931982
		 -6.67368317 0 2.85536289 -0.66493797 -0.08536911 1.9846096 -0.67383766 0.15413666
		 2.91312981 -1.54976463 -0.15413666 1.99828148 -1.51963234 0.08536911 2.11954212 -0.40686798
		 -0.097625732 2.30587673 -1.46475983 -0.1762619 1.21573448 -1.65010262 0.097623825
		 1.029399872 -0.59221268 0.1762619 3.66255283 -2.24208641 0 3.49966145 -2.46917725
		 0 2.80734634 -3.4343338 0 3.03509903 -3.1168251 0;
createNode polyTweak -n "polyTweak85";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[904:943]" -type "float3"  -1.11552429 -29.58127022 0.85966301
		 -2.75075674 -29.58127022 0.89788437 -2.31399393 -29.58127022 -0.19379807 -0.62210941
		 -29.58127022 -0.28126144 0.65701008 -29.58127022 1.29582596 1.16106415 -29.58127022
		 0.10411644 2.12681007 -29.58127022 1.29273605 2.49420547 -29.58127022 0.3716774 -0.099173546
		 -29.58127022 -1.49044037 1.69527626 -29.58127022 -1.15889549 2.88357925 -29.58127022
		 -0.60449028 -1.85110092 -29.58127022 -1.35079575 0.49864769 -29.58127022 -2.87278366
		 2.30598831 -29.58127022 -2.60276985 3.32871342 -29.58127022 -1.72044373 -1.32191801
		 -29.58127213 -2.67347908 -0.0099925995 -29.58127022 2.87278366 1.64064789 -29.58127022
		 2.511549 -1.76844788 -29.58127022 2.36941528 -3.32871437 -29.58127213 2.3424778 0.66182899
		 -29.58127022 -0.32444954 2.37531137 -29.58127022 -0.23622704 2.8503623 -29.58127022
		 0.94561005 1.19234133 -29.58127022 0.90538025 -1.25910664 -29.58127022 0.11295128
		 -0.71486568 -29.58127022 1.40636826 -2.79071045 -29.58127022 0.35032082 -2.4876976
		 -29.58127022 1.2871666 -3.1118536 -29.58127022 -0.6425705 -1.83590889 -29.58127022
		 -1.25784683 0.099575996 -29.58127022 -1.62785339 1.87184 -29.58127022 -1.48876953
		 -2.49531174 -29.58127022 -2.82494736 -3.47898388 -29.58127022 -1.7776413 -0.54319382
		 -29.58127022 -3.1179142 1.29626846 -29.58127022 -2.92067909 3.47898459 -29.58127022
		 2.5095005 1.8943553 -29.58127022 2.53278351 0.0053138733 -29.58127022 3.11791611
		 -2.086725235 -29.58127022 2.52685738;
createNode polySplit -n "polySplit38";
	setAttr -s 15 ".e[0:14]"  0.49115399 0.49115399 0.49115399 0.49115399
		 0.49115399 0.49115399 0.49115399 0.49115399 0.49115399 0.49115399 0.49115399 0.49115399
		 0.49115399 0.49115399 0.49115399;
	setAttr -s 15 ".d[0:14]"  -2147481854 -2147481852 -2147481834 -2147481823 -2147481831 -2147481829 
		-2147481826 -2147481837 -2147481843 -2147481845 -2147481818 -2147481820 -2147481815 -2147481812 -2147481854;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit39";
	setAttr -s 15 ".e[0:14]"  0.50228399 0.50228399 0.50228399 0.50228399
		 0.50228399 0.50228399 0.50228399 0.50228399 0.50228399 0.50228399 0.50228399 0.50228399
		 0.50228399 0.50228399 0.50228399;
	setAttr -s 15 ".d[0:14]"  -2147481809 -2147481807 -2147481775 -2147481773 -2147481770 -2147481767 
		-2147481798 -2147481800 -2147481795 -2147481784 -2147481786 -2147481781 -2147481778 -2147481789 -2147481809;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak86";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[944:971]" -type "float3"  1.26924849 0 -0.41429901 1.067718029
		 0 0.089422226 0.85413122 0 0.62328148 0.60995674 0 1.23359108 -0.23008442 0 1.32555389
		 -1.064023972 0 1.20096397 -1.53592777 0 0.79384232 -1.33053493 0 0.27892113 -1.15087128
		 0 -0.17149734 -0.98134804 0 -0.59649086 -0.75702381 0 -1.15887451 0.0046110153 0
		 -1.32555389 0.81599331 0 -1.093290329 1.53592825 0 -1.080862045 -0.95696449 0 0.095170975
		 -1.1483531 0 -0.38096619 -1.40161228 0 -1.011026382 -0.76319695 0 -1.020406723 -0.0021409988
		 0 -1.25614548 0.8406992 0 -1.01802063 1.002243042 0 -0.51857376 1.12432098 0 -0.14113808
		 1.25370312 0 0.25887871 1.40161228 0 0.71617508 1.0053110123 0 1.13811302 0.21884155
		 0 1.25614548 -0.52224064 0 1.17668343 -0.75412655 0 0.59979439;
createNode polySplit -n "polySplit40";
	setAttr -s 15 ".e[0:14]"  0.51056898 0.51056898 0.51056898 0.51056898
		 0.51056898 0.51056898 0.51056898 0.51056898 0.51056898 0.51056898 0.51056898 0.51056898
		 0.51056898 0.51056898 0.51056898;
	setAttr -s 15 ".d[0:14]"  -2147481854 -2147481852 -2147481834 -2147481823 -2147481831 -2147481829 
		-2147481826 -2147481837 -2147481843 -2147481845 -2147481818 -2147481820 -2147481815 -2147481812 -2147481854;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit41";
	setAttr -s 15 ".e[0:14]"  0.51248801 0.51248801 0.51248801 0.51248801
		 0.51248801 0.51248801 0.51248801 0.51248801 0.51248801 0.51248801 0.51248801 0.51248801
		 0.51248801 0.51248801 0.51248801;
	setAttr -s 15 ".d[0:14]"  -2147481809 -2147481807 -2147481775 -2147481773 -2147481770 -2147481767 
		-2147481798 -2147481800 -2147481795 -2147481784 -2147481786 -2147481781 -2147481778 -2147481789 -2147481809;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak87";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[972:999]" -type "float3"  0.81266356 0 -0.26526451 0.68362951
		 0 0.057254791 0.54687595 0 0.39906883 0.39053822 0 0.78983307 -0.14731693 0 0.84871483
		 -0.68126488 0 0.76894379 -0.98341084 0 0.50827599 -0.85190392 0 0.17858505 -0.73686981
		 0 -0.10980606 -0.62832928 0 -0.38191605 -0.48470116 0 -0.74199486 0.0029525757 0
		 -0.84871483 0.52245808 0 -0.70000267 0.98341131 0 -0.69204521 -0.76357841 0 0.075939178
		 -0.91629076 0 -0.30397987 -1.11837101 0 -0.80671501 -0.60896873 0 -0.81420135 -0.0017080307
		 0 -1.0023002625 0.67080879 0 -0.81229591 0.79970646 0 -0.41377831 0.89711475 0 -0.11261559
		 1.00035095215 0 0.20656204 1.11837101 0 0.57144928 0.80215454 0 0.90812111 0.17461777
		 0 1.0023002625 -0.41670513 0 0.93889427 -0.60173035 0 0.4785862;
createNode polySplit -n "polySplit42";
	setAttr -s 15 ".e[0:14]"  0.127847 0.127847 0.127847 0.127847 0.127847
		 0.127847 0.127847 0.127847 0.127847 0.127847 0.127847 0.127847 0.127847 0.127847
		 0.127847;
	setAttr -s 15 ".d[0:14]"  -2147481809 -2147481807 -2147481775 -2147481773 -2147481770 -2147481767 
		-2147481798 -2147481800 -2147481795 -2147481784 -2147481786 -2147481781 -2147481778 -2147481789 -2147481809;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit43";
	setAttr -s 15 ".e[0:14]"  0.173347 0.173347 0.173347 0.173347 0.173347
		 0.173347 0.173347 0.173347 0.173347 0.173347 0.173347 0.173347 0.173347 0.173347
		 0.173347;
	setAttr -s 15 ".d[0:14]"  -2147481854 -2147481852 -2147481834 -2147481823 -2147481831 -2147481829 
		-2147481826 -2147481837 -2147481843 -2147481845 -2147481818 -2147481820 -2147481815 -2147481812 -2147481854;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:2051]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak88";
	setAttr ".uopa" yes;
	setAttr -s 124 ".tk[904:1027]" -type "float3"  0 -0.32252502 0 1.35100317
		 0.14202499 -0.21805954 1.13649225 0.14202499 0.047065735 0 -0.32252502 0 0 -0.32252502
		 0 0 -0.32252502 0 -1.044559479 0.14202499 -0.3139534 -1.22500229 0.14202499 -0.090265274
		 0 -0.32252502 0 0 -0.32252502 0 -1.41623688 0.14202499 0.14680672 0.90914726 0.14202499
		 0.32805443 -0.24490547 0.14202499 0.69768333 -1.13256073 0.14202499 0.63210869 -1.63486195
		 0.14202499 0.41782761 0.64924479 0.14202499 0.64928055 0.004907608 0.14202499 -0.69768524
		 -0.80578613 0.14202499 -0.60995483 0.86855316 0.14202499 -0.57543564 1.63486052 0.14202499
		 -0.56889343 0 -0.32252502 0 -1.50564528 0 0.14973831 -1.80676699 0 -0.59939575 0
		 -0.32252502 0 0 -0.32252502 0 0 -0.32252502 0 1.76895618 0 -0.22205925 1.57688427
		 0 -0.8158989 1.97251987 0 0.40730858 0 -0.32252502 0 0 -0.32252502 0 -1.18650866
		 0 0.94369125 1.58171082 0 1.79065704 2.20523357 0 1.12679863 0.34431553 0 1.97636223
		 -0.82166958 0 1.85133934 -2.20523381 0 -1.59070396 -1.20078039 0 -1.60546303 -0.0033683777
		 0 -1.97636032 1.32271862 0 -1.60170555 -0.59553194 3.95116329 0.19438934 -0.5009737
		 3.95116329 -0.041955948 -0.40075827 3.95116329 -0.29244423 -0.28619194 3.95116138
		 -0.57880211 0.10795593 3.95116329 -0.62195015 0.49924088 3.95116329 -0.56349373 0.7206583
		 3.95116329 -0.37247086 0.62428856 3.95116329 -0.13087082 0.53998947 3.95116329 0.080467224
		 0.46044922 3.95116329 0.2798748 0.355196 3.95116329 0.54374504 -0.0021629333 3.95116329
		 0.62195206 -0.38286448 3.95116329 0.51297188 -0.7206583 3.95116138 0.50714111 0 2.56438637
		 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637
		 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637 0 0 2.56438637
		 0 0 2.56438637 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polySplit -n "polySplit44";
	setAttr -s 15 ".e[0:14]"  0.79809803 0.79809803 0.79809803 0.79809803
		 0.79809803 0.79809803 0.79809803 0.79809803 0.79809803 0.79809803 0.79809803 0.79809803
		 0.79809803 0.79809803 0.79809803;
	setAttr -s 15 ".d[0:14]"  -2147481764 -2147481751 -2147481752 -2147481753 -2147481754 -2147481755 
		-2147481756 -2147481757 -2147481758 -2147481759 -2147481760 -2147481761 -2147481762 -2147481763 -2147481764;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit45";
	setAttr -s 15 ".e[0:14]"  0.82308799 0.82308799 0.82308799 0.82308799
		 0.82308799 0.82308799 0.82308799 0.82308799 0.82308799 0.82308799 0.82308799 0.82308799
		 0.82308799 0.82308799 0.82308799;
	setAttr -s 15 ".d[0:14]"  -2147481736 -2147481723 -2147481724 -2147481725 -2147481726 -2147481727 
		-2147481728 -2147481729 -2147481730 -2147481731 -2147481732 -2147481733 -2147481734 -2147481735 -2147481736;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak89";
	setAttr ".uopa" yes;
	setAttr -s 899 ".tk";
	setAttr ".tk[157:322]" -type "float3"  0.55299759 0 0 0.94719315 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.42322636 0
		 -0.66715431 -0.68544483 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[390:488]" -0.74777126 0 0 -0.64444828 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0.49965954 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[904:986]" 0.29874992 -0.50342941 0.28267479 0.21330595 -0.96797943
		 0.27382278 0.24151516 -0.96797943 -0.059104919 0.339571 -0.50342941 -0.091749191
		 0.45705318 -0.50342941 0.42821503 0.50425053 -0.50342941 0.034519196 0.52767277 -0.96797943
		 0.39423752 0.55136871 -0.96797943 0.11335373 0.38831234 -0.50342941 -0.49228096 0.54364681
		 -0.50342941 -0.38755798 0.57637882 -0.96797943 -0.18434906 0.27134705 -0.96797943
		 -0.41194534 0.422616 -0.96797943 -0.87584496 0.53894043 -0.96797943 -0.79352951 -0.58597755
		 -0.96797943 -0.52462959 1.49643898 -0.96797562 -0.8151207 0.3898592 -0.96797943 0.30310822
		 -0.47716999 -0.96797943 0.76577759 0.27658415 -0.96797943 1.26531982 1.14933729 -0.96797562
		 -0.65083885 -0.95458984 -0.62216949 1.016363144 -0.26489353 -0.94469452 0.73534966
		 -0.23910618 -0.94469452 0.96921539 -1.27787447 -0.62216949 0.55961037 -0.27441883
		 -0.62216949 0.25183678 -0.67795086 -0.62216949 0.041339874 -0.54483891 -0.94469452
		 0.024951935 -0.52843189 -0.94469452 0.58202171 -0.56219864 -1.68395233 -0.77326965
		 0.87928295 -1.36142731 0.90613937 -0.35297489 -1.36142731 1.67113876 -0.29220009
		 -1.68395233 0.439888 0.66824913 -0.94469452 -0.66801071 0.24372673 -0.94469452 -0.41863251
		 0.0053348541 -0.94469452 -0.73780823 -1.14928246 -0.94469452 -0.69084358 -1.59688425
		 -0.94469452 -0.064861298 -0.86872578 -0.94469452 0.60786247 -0.97753239 -0.94469452
		 0.44647217 0.46194458 -0.94469452 0.60645485 0.018466473 3.20519447 0.010780334 0.020385265
		 3.20580196 -0.0023345947 0.022923946 3.20522785 -0.016222 1.07117939 3.20315075 -0.031721115
		 0.032646179 3.20273113 -0.034002304 0.044518471 3.20279694 -0.030818939 -0.83540726
		 3.2044754 -0.020572662 0.051525116 3.20530319 -0.0072631836 0.050107956 3.20565319
		 0.0044746399 0.047634125 3.20516682 0.015520096 -0.8000412 3.20343781 0.029850006
		 0.031279564 3.20275974 0.034008026 0.023569107 3.2035675 0.028182983 0.7573247 3.20321178
		 0.027805328 -0.042264462 0.24200439 -0.0032615662 -0.038944244 0.24150467 0.014890671
		 -1.17895794 0.24084663 -0.62835693 -0.046143055 0.2413559 0.039236069 -0.05900383
		 0.24139977 0.048223495 0.73173809 0.24151611 0.039171219 -0.08400631 0.24168015 0.020149231
		 -0.087443352 0.24167252 0.0057544708 -0.089060783 0.24134254 -0.0094871521 0.49057388
		 0.24131393 -0.026901245 -0.076617241 0.24072456 -0.042863846 -0.061595917 0.24135399
		 -0.047472 -0.76917839 0.24143028 -0.044458389 -0.046206474 0.24200058 -0.022533417
		 0 0 0 0 0 0 0 0 0 0.83736134 0 0 0 0 0 0 0 0 -0.36788368 0 0 0 0 0 0 0 0 0 0 0 -0.64351463
		 0 0 0 0 0 0 0 0 0.3414712 0 0 0 0 0;
	setAttr ".tk[988:1055]" -0.8384285 0 -0.66715431 0 0 0 0 0 0 0.62256813 0 0
		 0 0 0 0 0 0 0 0 0 0.28086567 0 0 0 0 0 0 0 0 -0.60392284 0 0 0 0 0 0 0 0 0 0 0 -1.030456543
		 0 -0.66715431 0 0 0 0 0 0 0.7377491 0 0 0 0 0 0 0 0 0 0 0 0.47168732 0 0 0 0 0 0
		 0 0 -0.67502308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.92815399 0 0 0 0 0 0 0 0 -0.59650707
		 0 0 0 0 0 0 0 0 0 0 0 -0.72969818 0 0 0 0 0 0 0 0 0.51633024 0 0 0.19899702 0.09513092
		 0.29180717 1.094863415 0.09513092 -0.40920448 0.25477934 0.09513092 0.77004623 0.35463715
		 0.09513092 0.93363953 -0.50132561 0.09513092 0.81624222 0.47598076 0.09513092 0.42013359
		 0.49684429 0.09513092 0.1207943 0.51895618 0.09513092 -0.196455 -0.58864975 0.09513092
		 -0.55913353 0.48615551 0.09513092 -0.84588623 0.38352108 0.09513092 -0.93363953 1.44567871
		 0.09513092 -0.86886597 0.25008583 0.09513092 -0.43900108 0.22379923 0.09513092 -0.062982559
		 -0.25065756 -0.09513092 -0.053777695 -0.27527475 -0.09513092 -0.36587143 -1.11254025
		 -0.09513092 -0.72265816 -0.39335918 -0.09513092 -0.7718029 -0.48880863 -0.09513092
		 -0.69880486 0.24742699 -0.09513092 -0.43784904 -0.51895618 -0.09513092 -0.15502548
		 -0.50325298 -0.09513092 0.092372894 -0.4884367 -0.09513092 0.32580376 0.47360897
		 -0.09513092 0.63469696 -0.366539 -0.09513092 0.78196716 -0.27417469 -0.09513092 0.63617325
		 -1.5464468 -0.09513092 -0.036783218 -0.22742939 -0.09513092 0.24069977;
createNode polySplit -n "polySplit46";
	setAttr -s 15 ".e[0:14]"  0.803671 0.803671 0.803671 0.803671 0.803671
		 0.803671 0.803671 0.803671 0.803671 0.803671 0.803671 0.803671 0.803671 0.803671
		 0.803671;
	setAttr -s 15 ".d[0:14]"  -2147481764 -2147481763 -2147481762 -2147481761 -2147481760 -2147481759 
		-2147481758 -2147481757 -2147481756 -2147481755 -2147481754 -2147481753 -2147481752 -2147481751 -2147481764;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit47";
	setAttr -s 15 ".e[0:14]"  0.61690497 0.61690497 0.61690497 0.61690497
		 0.61690497 0.61690497 0.61690497 0.61690497 0.61690497 0.61690497 0.61690497 0.61690497
		 0.61690497 0.61690497 0.61690497;
	setAttr -s 15 ".d[0:14]"  -2147481764 -2147481763 -2147481762 -2147481761 -2147481760 -2147481759 
		-2147481758 -2147481757 -2147481756 -2147481755 -2147481754 -2147481753 -2147481752 -2147481751 -2147481764;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace52";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[1028]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 64255;
	setAttr ".lt" -type "double3" 0 0 2.017313 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3214314613477098 -43.07744204077175 14.187432418728061 ;
	setAttr ".cbx" -type "double3" 8.0945232544080135 -32.706058373779562 16.550465713405796 ;
createNode polyTweak -n "polyTweak90";
	setAttr ".uopa" yes;
	setAttr -s 180 ".tk";
	setAttr ".tk[904:1069]" -type "float3"  -1.37781382 -8.84645844 0.64633179 -2.57535505
		 -8.84645844 0.60773849 -2.1750083 -8.84645844 -0.038225174 -0.79223061 -8.84645844
		 -0.10980797 0.73200607 -8.84645844 0.93603516 1.33313179 -8.84645844 0.14554405 1.89517879
		 -8.84645844 0.84137726 2.2319231 -8.84645844 0.29637527 -0.16870785 -8.84645844 -0.91217232
		 1.9645853 -8.84645844 -0.69353294 2.58875942 -8.84645844 -0.28123665 -1.75074577
		 -8.84645844 -0.72283554 0.40282249 -8.84645844 -1.62334824 2.059253693 -8.84645844
		 -1.4635849 2.36489773 -8.84645844 -0.9415493 -0.63390827 -8.84645844 -1.50543213
		 0.99832058 -8.79673004 1.62334824 0.93314171 -8.84645844 1.56252289 -2.73671627 -8.79673004
		 1.62334824 -2.58875871 -8.84645844 1.098070145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 -1.43629122 -3.39465332 0 -1.44695854 -3.39550781 0 -1.62750387 -4.4640007
		 0 1.026122093 -4.50575256 0 0.5210762 -3.3911438 0 1.061333656 -3.39297867 0 1.24877644
		 -3.3932724 0 1.44700623 -3.39211273 0 1.32771015 -3.39149475 0 1.15270901 -3.38885498
		 0 0.22760296 -3.39057541 0 -0.3478117 -3.39180756 0 -0.97716141 -3.3951149 0 -1.21365881
		 -3.39588928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 -0.48874664 0 0 -0.41344595 0 0 -0.33331347 0 0 -0.11889839 0 0 0.074365616
		 0 0 0.3873558 0 0 0.4481926 0 0 0.48735714 0 0 0.42028809 0 0 0.35676003 0 0 0.17287159
		 0 0 -0.013914108 0 0 -0.32409239 0 0 -0.49322748 0 0;
	setAttr ".tk[1070:1083]" 0.027555943 0.95284462 -0.019403458 0.023044586 0.95284081
		 0.0041885376 0.018483162 0.95284462 0.029191971 0.0060434341 0.95285797 0.05777359
		 -0.0051851273 0.95285988 0.062078476 -0.023825645 0.95285797 0.056245804 -0.027338982
		 0.95284843 0.037179947 -0.029373169 0.95284462 0.013063431 -0.025320053 0.95284081
		 -0.0080337524 -0.021641731 0.95284462 -0.027936935 -0.010886192 0.95285416 -0.054275513
		 1.8119812e-005 0.95285988 -0.062080383 0.017875195 0.95285606 -0.051204681 0.02786684
		 0.95285606 -0.043535233;
createNode polyTweak -n "polyTweak91";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk[1028:1087]" -type "float3"  0 -5.93386078 0 0 -5.93386078
		 0 0 -5.42794418 0.58583832 0 -5.42794418 0.58583832 0 -5.93386078 0 0 -5.93386078
		 0 0 -5.93386078 0 0 -5.93386078 0 0 -5.93386078 0 0 -5.93386078 0 0 -5.93386078 0
		 0 -5.93386078 0 0 -5.93386078 0 0 -5.93386078 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.41638184 -6.98909378 0.91360855
		 -0.63809299 -6.98121643 0.71086121 0.63939333 -0.81648254 -0.22307205 -0.63939381
		 -0.81648254 -0.22307205;
createNode polySplit -n "polySplit48";
	setAttr -s 17 ".e[0:16]"  0.57239503 0.57239503 0.57239503 0.57239503
		 0.57239503 0.57239503 0.57239503 0.57239503 0.57239503 0.57239503 0.57239503 0.57239503
		 0.57239503 0.57239503 0.57239503 0.57239503 0.57239503;
	setAttr -s 17 ".d[0:16]"  -2147481596 -2147481595 -2147481594 -2147481480 -2147481477 -2147481593 
		-2147481592 -2147481591 -2147481590 -2147481589 -2147481588 -2147481587 -2147481586 -2147481585 -2147481584 -2147481583 -2147481596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace53";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[1028]" "f[1089]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 64970;
	setAttr ".lt" -type "double3" 0 0 4.209619 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.68946153260625476 -42.864902367920187 19.306344161892124 ;
	setAttr ".cbx" -type "double3" 8.7042368087903377 -37.652301659912375 21.49665559377689 ;
createNode polyTweak -n "polyTweak92";
	setAttr ".uopa" yes;
	setAttr -s 200 ".tk";
	setAttr ".tk[904:1069]" -type "float3"  -0.14734364 0.042713165 -0.071327209
		 -0.42404437 0.08612442 0.031799316 -0.01656723 0.010417938 -0.0081367493 1.5258789e-005
		 -0.00011825562 -0.00063705444 0.54964924 0.08731842 0.084651947 0.0022602081 0.0024185181
		 -0.0027923584 0.28937531 0.070484161 0.056922913 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1.80221367 0.066150665 1.95185471 1.14430046 0.24085236 1.10519791
		 -0.86312771 0.14450073 1.48662567 -0.93784857 0.19161987 0.52750397 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.2970891 0.56393814 0.087587357 -0.60116386
		 1.086006165 0.36819267 -0.57504845 1.64516449 1.10784912 0.89626312 1.65002441 1.40416718
		 0.8512001 1.2048645 0.67339706 0.25070858 0.2806282 0.15542412 0.0012760162 0.011508942
		 0.030614853 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.035542965 0.11438751 0.046581268
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0;
	setAttr ".tk[1084:1103]" -0.60998297 1.6842308 2.2274704 0.80830765 1.67362595
		 2.50017929 -0.91859341 0.67040253 1.95908737 0.69536972 0.67040253 3.19142914 -0.40619469
		 0.31056213 -0.0013771057 -0.85197783 0.65585709 0.44828033 -1.63730669 1.029087067
		 1.55953217 -1.51042461 1.75725555 2.13182449 1.42215443 1.75271988 2.87922287 1.72019958
		 0.9356575 1.52575684 1.12600899 0.78752899 1.0068664551 0.32709599 0.17574692 0.11261177
		 0 0.0030784607 0.0062217712 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.041007042 0.055374146
		 -0.045349121;
createNode polyExtrudeFace -n "polyExtrudeFace54";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[1028]" "f[1089]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.0558767 -40.508953 24.247007 ;
	setAttr ".rs" 55285;
	setAttr ".lt" -type "double3" 0 0 4.2096192615276049 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.6318457756177294 -42.235935082763937 23.551213394069858 ;
	setAttr ".cbx" -type "double3" 6.4799078140393602 -38.7819708493655 24.942799697780796 ;
createNode polyTweak -n "polyTweak93";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[1104:1109]" -type "float3"  1.011830807 -2.2710495 0.2443428
		 -1.33861065 -2.25347519 -0.20759964 1.58335662 -1.25204086 -0.016998291 -1.58335686
		 -1.24452209 -0.45947647 1.51045609 -0.014953613 -0.17771912 -1.29808712 -0.014953613
		 -0.66463089;
createNode polyExtrudeFace -n "polyExtrudeFace55";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[1028]" "f[1089]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.4145875 -40.872734 28.304304 ;
	setAttr ".rs" 39898;
	setAttr ".lt" -type "double3" 0 0 4.2096192615276049 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8454344902173387 -42.137512078613547 27.821316848659702 ;
	setAttr ".cbx" -type "double3" 4.9837406311169969 -39.607955804199484 28.787289749050327 ;
createNode polyTweak -n "polyTweak94";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[1110:1115]" -type "float3"  0.5474391 -1.94388962 0.263134
		 -0.72159958 -1.93440247 0.019123077 0.85487795 -1.31370926 0.10428238 -0.85487843
		 -1.30965042 -0.13462067 0.8143816 -0.56578445 -0.00024414063 -0.70199299 -0.56578445
		 -0.263134;
createNode polyExtrudeFace -n "polyExtrudeFace56";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[1028]" "f[1089]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 41733;
	setAttr ".lt" -type "double3" 0 0 1.407702 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.873459640516411 -41.751098504394797 29.793084274196811 ;
	setAttr ".cbx" -type "double3" 3.6724393997327196 -40.071464410156516 30.397885452175327 ;
createNode polyTweak -n "polyTweak95";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[1116:1121]" -type "float3"  0.43063593 -1.5531311 -2.042766571
		 -0.56345749 -1.54569626 -2.23390579 0.66966343 -0.97400665 -2.18621445 -0.66966343
		 -0.97082901 -2.37335587 0.63613749 -0.30265045 -2.28710556 -0.55170488 -0.30265045
		 -2.49303818;
createNode polyExtrudeFace -n "polyExtrudeFace57";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[1028]" "f[1089]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5582736 -41.052452 31.453386 ;
	setAttr ".rs" 35918;
	setAttr ".lt" -type "double3" 0 0 1.4077017957272844 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0784314308301317 -41.546024194092062 31.335309158230015 ;
	setAttr ".cbx" -type "double3" 3.0381158027783739 -40.558879723877219 31.571461807155796 ;
createNode polyTweak -n "polyTweak96";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[1122:1127]" -type "float3"  0.27068043 -0.84204483 0.19722748
		 -0.35227251 -0.85144424 0.076171875 0.41964769 -0.46110916 0.054901123 -0.41964769
		 -0.47289276 -0.06332016 0.39781809 -0.018890381 -0.067394257 -0.34654903 -0.034061432
		 -0.19722748;
createNode polyExtrudeFace -n "polyExtrudeFace58";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[1028]" "f[1089]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".rs" 33882;
	setAttr ".lt" -type "double3" 0 0 1.055143 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1353386078015673 -41.135005822510031 32.895688186550331 ;
	setAttr ".cbx" -type "double3" 2.5517757568494188 -40.658954491943625 33.003789077663612 ;
createNode polyTweak -n "polyTweak97";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[1128:1133]" -type "float3"  0.17627716 -0.31050873 0.18545151
		 -0.22693968 -0.29953766 0.10864639 0.27162361 -0.022014618 0.14598083 -0.27162361
		 -0.012924194 0.070606232 0.25642014 0.30192184 0.12752533 -0.22538376 0.31050873
		 0.044437408;
createNode polySoftEdge -n "polySoftEdge20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[1795]" "e[1797:1802]" "e[1804]" "e[1806:1810]" "e[1812:1813]" "e[1815:1816]" "e[1818]" "e[1820:1821]" "e[1823:1824]" "e[1826:1827]" "e[1829]" "e[1831:1832]" "e[1834:1835]" "e[1837:1838]" "e[1840]" "e[1842:1847]" "e[1849]" "e[1851:1852]" "e[1854:1858]" "e[1860:1861]" "e[1863]" "e[1865:1866]" "e[1868:1869]" "e[1871:1872]" "e[1874]" "e[1876:1877]" "e[1879:1880]" "e[1882:1939]" "e[2052:2275]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak98";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[1134:1139]" -type "float3"  0.040167332 -0.080810547 0.066802979
		 -0.050660133 -0.078338623 0.017974854 0.06118536 -0.0049591064 0.21352768 -0.06118536
		 -0.002910614 0.16560745 0.057300568 0.078876495 0.02268219 -0.051229 0.080810547
		 -0.030147552;
createNode polyTweak -n "polyTweak99";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1030]" -type "float3" 0 1.3468285 0 ;
	setAttr ".tk[1031]" -type "float3" 0 1.3468285 0 ;
	setAttr ".tk[1084]" -type "float3" 0 1.0770378 0 ;
	setAttr ".tk[1085]" -type "float3" 0 1.0770378 0 ;
createNode polySplit -n "polySplit49";
	setAttr -s 7 ".e[0:6]"  0.300145 0.300145 0.300145 0.300145 0.300145
		 0.300145 0.300145;
	setAttr -s 7 ".d[0:6]"  -2147481445 -2147481442 -2147481438 -2147481436 -2147481440 -2147481444 
		-2147481445;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace59";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 4 "f[1026]" "f[1038:1039]" "f[1086]" "f[1100:1101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.91216153 -39.806297 10.000353 ;
	setAttr ".rs" 61059;
	setAttr ".lt" -type "double3" 0 0 1.0551427490189722 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1908459033831251 -43.127170434326437 5.4156638487817723 ;
	setAttr ".cbx" -type "double3" 3.0151689682141649 -36.485423913330344 14.585042129421421 ;
createNode polyTweak -n "polyTweak100";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[1104:1145]" -type "float3"  0 0.071525574 0.74335861 0
		 -0.012031555 0.73501205 0 0.034564972 0.55157089 0 -0.047351837 0.54519653 0 0.018707275
		 0.32050323 0 -0.071525574 0.31502151 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.048816681 0.24439621 0.69854736
		 -0.07644701 0.13762283 0.36595154 -0.072963238 0.061561584 0.061973572 0.062637329
		 -0.06810379 0.077880859 0.076447487 0.019542694 0.37840271 0.064666748 0.12346649
		 0.70862961;
createNode polySoftEdge -n "polySoftEdge21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[1795]" "e[1797:1798]" "e[1815:1816]" "e[1826:1827]" "e[1837:1838]" "e[2052]" "e[2062:2064]" "e[2074:2077]" "e[2106:2109]" "e[2170]" "e[2182:2184]" "e[2194:2195]" "e[2281:2307]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak101";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[1144:1155]" -type "float3"  0.019608259 -0.20426178 -0.16571808
		 0.080565214 -0.90028763 -0.52429962 0.15064049 -0.012077332 -0.21226501 0.23121679
		 -0.068023682 -0.63384628 -0.32832623 -0.72919846 0.5928154 -0.17091465 -0.13287735
		 0.21302986 -0.25267649 0.034946442 0.66510773 -0.075003624 0.028446198 0.23078537
		 0.2364645 0.095077515 -0.26372147 0.32832611 0.98830795 -0.71879196 -0.19597673 1.017894745
		 0.71879196 -0.0079469681 0.10677719 0.22746468;
createNode polyExtrudeFace -n "polyExtrudeFace60";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 4 "f[1026]" "f[1038:1039]" "f[1086]" "f[1100:1101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.073927522 -41.182178 9.7034788 ;
	setAttr ".rs" 45701;
	setAttr ".lt" -type "double3" 0 0 1.0551427490189722 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8791790571077955 -44.848472466797141 5.7513133391382176 ;
	setAttr ".cbx" -type "double3" 1.7313240203992235 -37.515884270996359 13.655644546413608 ;
createNode polyTweak -n "polyTweak102";
	setAttr ".uopa" yes;
	setAttr -s 252 ".tk";
	setAttr ".tk[904:1069]" -type "float3"  0 -2.97686386 0 0 -2.039997101 0 0 -1.98672104
		 0 0 -2.97686386 0 0 -2.97686386 0 0 -2.97686386 0 0 -2.29472351 0 0 -2.46334457 0
		 0 -1.8229866 0 0 -1.74595261 0 0 -1.85267639 0 0 -1.91407394 0 0 -0.25549698 0 0
		 -0.26935959 0 0 -1.0030593872 0 0 -0.70798492 0 0 -1.38692093 0 0 -1.84182739 0 0
		 -0.66778946 0 0 -1.40423584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 -0.683815 0 0 -0.42287064 0 0 -0.051834106 0 0 -0.07403183 0 0 -0.54121017 0 0 -0.80647659
		 0 0 -1.021015167 0 0 -0.81466675 0 0 -0.48118973 0 0 -0.17867661 0 0 -0.15273285
		 0 0 -0.37332535 0 0 -0.81612778 0 0 -0.74167252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[1085:1155]" 0 -0.0015983582 0 0 -0.093444824 0 0 -0.16363525 0 0
		 -1.30736542 0 0 -0.5428009 0 0 -0.053279877 0 0 -0.15700912 0 0 -1.25223541 0 0 -1.64897156
		 0 0 -2.0028915405 0 0 -2.23649597 0 0 -1.75319672 0 0 -1.03729248 0 0 -0.3748703
		 0 0 -0.34454346 0 0 -0.78763962 0 0 -1.78131485 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0069885254 0 0 -0.0011634827 0 0 0 0 0
		 -0.51170731 0 0 -0.52467728 0 0 -1.41545486 0 0 -1.12388992 0 0 -0.81329727 0 0 -0.53701782
		 0 0 -1.40982819 0 0 -1.36678314 0 0 -2.072071075 0 0 -2.72136307 0 0 -2.84348679
		 0 0 -1.96549225 0;
createNode polyTweak -n "polyTweak103";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[1144:1165]" -type "float3"  -0.69267035 0.2636528 0 -0.69267035
		 0.2636528 0 -0.69267023 0.2636528 0 -0.69267035 0.2636528 0 -0.69267035 0.2636528
		 0 -0.69267035 0.2636528 0 -0.69267023 0.2636528 0 -0.69267023 0.2636528 0 -0.69267035
		 0.2636528 0 -0.69267035 0.2636528 0 -1.97451591 -3.30040359 -0.4224453 -1.76677716
		 -3.27732849 -1.44571877 -0.42548907 -1.30194092 -0.54293251 -0.92825103 -1.67021942
		 -1.73162842 -2.76784301 -2.36385727 1.63772583 -2.46120262 -2.9514389 0.64055061
		 -2.17892671 -0.90224075 1.81965446 -1.041236758 -1.054153442 0.68104935 -0.46260715
		 0.23311996 -0.68069839 -0.23623851 -0.024726868 -1.95204353 -1.66508555 0.4793396
		 1.95204353 -1.15119267 0.38087845 0.66535759;
createNode polySplit -n "polySplit50";
	setAttr -s 11 ".e[0:10]"  0.50748599 0.50748599 0.50748599 0.50748599
		 0.50748599 0.50748599 0.50748599 0.50748599 0.50748599 0.50748599 0.50748599;
	setAttr -s 11 ".d[0:10]"  -2147481347 -2147481339 -2147481340 -2147481337 -2147481326 -2147481324 
		-2147481331 -2147481329 -2147481343 -2147481346 -2147481347;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak104";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[1166:1175]" -type "float3"  0 0.71042633 0 0 0.67792892
		 0 0 0.58941269 0 0 0.28908157 0 0 0.0078773499 0 0 -0.0049858093 0 0 -0.020469666
		 0 0 0.011535645 0 0 0.35063171 0 0 0.69178391 0;
createNode polySplit -n "polySplit51";
	setAttr -s 11 ".e[0:10]"  0.40649 0.40649 0.40649 0.40649 0.40649 0.40649
		 0.40649 0.40649 0.40649 0.40649 0.40649;
	setAttr -s 11 ".d[0:10]"  -2147481367 -2147481361 -2147481362 -2147481359 -2147481352 -2147481350 
		-2147481356 -2147481355 -2147481364 -2147481366 -2147481367;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 32 "e[1795]" "e[1797:1802]" "e[1804]" "e[1806:1810]" "e[1812:1813]" "e[1815:1816]" "e[1818]" "e[1820:1821]" "e[1823:1824]" "e[1826:1827]" "e[1829]" "e[1831:1832]" "e[1834:1835]" "e[1837:1838]" "e[1840]" "e[1842:1847]" "e[1849]" "e[1851:1852]" "e[1854:1858]" "e[1860:1861]" "e[1863]" "e[1865:1866]" "e[1868:1869]" "e[1871:1872]" "e[1874]" "e[1876:1877]" "e[1879:1880]" "e[1882:1884]" "e[1892:1897]" "e[1912:1925]" "e[2052:2148]" "e[2155:2367]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5472728576525343 5.8670617434079375 -18.849112381076626 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak105";
	setAttr ".uopa" yes;
	setAttr -s 264 ".tk";
	setAttr ".tk[922:1087]" -type "float3"  0 0 -0.81171036 0.80482936 -0.06595993
		 1.11301041 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.80236816 0 -0.031779528
		 0.06595993 1.11301041 0 0 -0.81171036 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1.80236816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[1088:1185]" 0.47425723 -0.014518738 1.11301041 0 0 -0.81171036 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 -1.52451706 0 0 0 0 0 0 0 0 -0.7206459 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 -0.73490477 0.25458908 0 0 0.15082932 0 0 0 0 0 0 0 0 0.24119949 0 -0.73490477
		 0.25458908 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.50524902 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 -1.0050926208 0 0 0 0 -0.42045164 1.071815491 0.56600952 -0.37150335
		 1.032569885 0.53513908 0.084705353 0.37565231 -0.04864502 0.065131664 -0.23265457
		 -0.054746628 0.050490856 -0.15086365 -0.059293747 0.0010621548 -0.15531921 -0.017892838
		 -0.061917067 -0.15563965 0.022403717 -0.084705591 -0.10659409 0.059295654 -0.059543371
		 -1.18714905 0.052230835 -0.020441532 0.49024963 0.043115616;
select -ne :time1;
	setAttr ".o" 20;
	setAttr ".unw" 20;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polySoftEdge22.out" "pCubeShape1.i";
connectAttr "groupId1.id" "pCubeShape1.iog.og[1].gid";
connectAttr "set1.mwc" "pCubeShape1.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit3.ip";
connectAttr "polyTweak4.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polySplit3.out" "polyTweak4.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit4.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit4.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit5.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polySplit5.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polySplit8.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polySplit8.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace4.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplit10.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace8.out" "polyTweak18.ip";
connectAttr "polyTweak18.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polyTweak19.ip";
connectAttr "polyTweak19.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyTweak20.ip";
connectAttr "polyTweak20.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polyTweak21.ip";
connectAttr "polyTweak21.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polyTweak22.ip";
connectAttr "polyTweak22.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polyTweak24.ip";
connectAttr "polyTweak24.out" "polySplit22.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polySplit22.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak26.ip";
connectAttr "polyExtrudeFace10.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polyTweak27.ip";
connectAttr "polyTweak27.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polyTweak28.ip";
connectAttr "polyTweak28.out" "polySplit25.ip";
connectAttr "polyTweak29.out" "polyDelEdge1.ip";
connectAttr "polySplit25.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge1.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyDelEdge2.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak42.ip";
connectAttr "polyTweak43.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak43.ip";
connectAttr "polyTweak44.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyExtrudeFace25.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak45.ip";
connectAttr "polyTweak46.out" "polyExtrudeFace26.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak46.ip";
connectAttr "polyExtrudeFace26.out" "polyTweak47.ip";
connectAttr "polyTweak47.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polyExtrudeFace27.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace27.mp";
connectAttr "polyTweak48.out" "polyExtrudeFace28.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak48.ip";
connectAttr "polyTweak49.out" "polyExtrudeFace29.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak49.ip";
connectAttr "polyExtrudeFace29.out" "polyExtrudeFace30.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace30.mp";
connectAttr "polyTweak50.out" "polyExtrudeFace31.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace31.mp";
connectAttr "polyExtrudeFace30.out" "polyTweak50.ip";
connectAttr "polyTweak51.out" "polyExtrudeFace32.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace32.mp";
connectAttr "polyExtrudeFace31.out" "polyTweak51.ip";
connectAttr "polyExtrudeFace32.out" "polyTweak52.ip";
connectAttr "polyTweak52.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polyExtrudeFace33.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace33.mp";
connectAttr "polyTweak53.out" "polyExtrudeFace34.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace34.mp";
connectAttr "polyExtrudeFace33.out" "polyTweak53.ip";
connectAttr "polyTweak54.out" "polyExtrudeFace35.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace35.mp";
connectAttr "polyExtrudeFace34.out" "polyTweak54.ip";
connectAttr "polyTweak55.out" "polyExtrudeFace36.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace36.mp";
connectAttr "polyExtrudeFace35.out" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polyExtrudeFace37.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace37.mp";
connectAttr "polyExtrudeFace36.out" "polyTweak56.ip";
connectAttr "polyTweak57.out" "polyExtrudeFace38.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace38.mp";
connectAttr "polyExtrudeFace37.out" "polyTweak57.ip";
connectAttr "polyExtrudeFace38.out" "polyTweak58.ip";
connectAttr "polyTweak58.out" "polySplit28.ip";
connectAttr "polyTweak59.out" "polyExtrudeFace39.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace39.mp";
connectAttr "polySplit28.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polySoftEdge3.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge3.mp";
connectAttr "polyExtrudeFace39.out" "polyTweak60.ip";
connectAttr "polySoftEdge3.out" "polySoftEdge4.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge4.mp";
connectAttr "polyTweak61.out" "polySoftEdge5.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge4.out" "polyTweak61.ip";
connectAttr "polySoftEdge5.out" "polySoftEdge6.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge6.mp";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "set1.dsm" -na;
connectAttr "polySoftEdge6.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySoftEdge7.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge7.mp";
connectAttr "polySoftEdge7.out" "polySoftEdge8.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge8.mp";
connectAttr "polyTweak62.out" "polySoftEdge9.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge9.mp";
connectAttr "polySoftEdge8.out" "polyTweak62.ip";
connectAttr "polySoftEdge9.out" "polySoftEdge10.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge10.mp";
connectAttr "polyTweak63.out" "polySoftEdge11.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge11.mp";
connectAttr "polySoftEdge10.out" "polyTweak63.ip";
connectAttr "polySoftEdge11.out" "polySoftEdge12.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge12.mp";
connectAttr "polySoftEdge12.out" "polySoftEdge13.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge13.mp";
connectAttr "polySoftEdge13.out" "polySoftEdge14.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge14.mp";
connectAttr "polySoftEdge14.out" "polyTweak64.ip";
connectAttr "polyTweak64.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polyTweak65.ip";
connectAttr "polyTweak65.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polyTweak66.out" "polyExtrudeFace40.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace40.mp";
connectAttr "polySplit32.out" "polyTweak66.ip";
connectAttr "polyExtrudeFace40.out" "polyTweak67.ip";
connectAttr "polyTweak67.out" "polySplit33.ip";
connectAttr "polyTweak68.out" "polySoftEdge15.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge15.mp";
connectAttr "polySplit33.out" "polyTweak68.ip";
connectAttr "polyTweak69.out" "polyExtrudeFace41.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace41.mp";
connectAttr "polySoftEdge15.out" "polyTweak69.ip";
connectAttr "polyTweak70.out" "polyExtrudeFace42.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace42.mp";
connectAttr "polyExtrudeFace41.out" "polyTweak70.ip";
connectAttr "polyTweak71.out" "polyExtrudeFace43.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace43.mp";
connectAttr "polyExtrudeFace42.out" "polyTweak71.ip";
connectAttr "polyTweak72.out" "polyExtrudeFace44.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace44.mp";
connectAttr "polyExtrudeFace43.out" "polyTweak72.ip";
connectAttr "polyTweak73.out" "polyExtrudeFace45.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace45.mp";
connectAttr "polyExtrudeFace44.out" "polyTweak73.ip";
connectAttr "polyExtrudeFace45.out" "polyTweak74.ip";
connectAttr "polyTweak74.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polySplit35.ip";
connectAttr "polyTweak75.out" "polySoftEdge16.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge16.mp";
connectAttr "polySplit35.out" "polyTweak75.ip";
connectAttr "polyTweak76.out" "polySoftEdge17.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge17.mp";
connectAttr "polySoftEdge16.out" "polyTweak76.ip";
connectAttr "polyTweak77.out" "polyExtrudeFace46.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace46.mp";
connectAttr "polySoftEdge17.out" "polyTweak77.ip";
connectAttr "polyTweak78.out" "polyExtrudeFace47.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace47.mp";
connectAttr "polyExtrudeFace46.out" "polyTweak78.ip";
connectAttr "polyTweak79.out" "polyExtrudeFace48.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace48.mp";
connectAttr "polyExtrudeFace47.out" "polyTweak79.ip";
connectAttr "polyTweak80.out" "polyExtrudeFace49.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace49.mp";
connectAttr "polyExtrudeFace48.out" "polyTweak80.ip";
connectAttr "polyExtrudeFace49.out" "polyExtrudeFace50.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace50.mp";
connectAttr "polyExtrudeFace50.out" "polyTweak81.ip";
connectAttr "polyTweak81.out" "polySplit36.ip";
connectAttr "polySplit36.out" "polyTweak82.ip";
connectAttr "polyTweak82.out" "polySplit37.ip";
connectAttr "polyTweak83.out" "polySoftEdge18.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge18.mp";
connectAttr "polySplit37.out" "polyTweak83.ip";
connectAttr "polyTweak84.out" "polyExtrudeFace51.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace51.mp";
connectAttr "polySoftEdge18.out" "polyTweak84.ip";
connectAttr "polyExtrudeFace51.out" "polyTweak85.ip";
connectAttr "polyTweak85.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polySplit39.ip";
connectAttr "polySplit39.out" "polyTweak86.ip";
connectAttr "polyTweak86.out" "polySplit40.ip";
connectAttr "polySplit40.out" "polySplit41.ip";
connectAttr "polySplit41.out" "polyTweak87.ip";
connectAttr "polyTweak87.out" "polySplit42.ip";
connectAttr "polySplit42.out" "polySplit43.ip";
connectAttr "polySplit43.out" "polySoftEdge19.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge19.mp";
connectAttr "polySoftEdge19.out" "polyTweak88.ip";
connectAttr "polyTweak88.out" "polySplit44.ip";
connectAttr "polySplit44.out" "polySplit45.ip";
connectAttr "polySplit45.out" "polyTweak89.ip";
connectAttr "polyTweak89.out" "polySplit46.ip";
connectAttr "polySplit46.out" "polySplit47.ip";
connectAttr "polyTweak90.out" "polyExtrudeFace52.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace52.mp";
connectAttr "polySplit47.out" "polyTweak90.ip";
connectAttr "polyExtrudeFace52.out" "polyTweak91.ip";
connectAttr "polyTweak91.out" "polySplit48.ip";
connectAttr "polyTweak92.out" "polyExtrudeFace53.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace53.mp";
connectAttr "polySplit48.out" "polyTweak92.ip";
connectAttr "polyTweak93.out" "polyExtrudeFace54.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace54.mp";
connectAttr "polyExtrudeFace53.out" "polyTweak93.ip";
connectAttr "polyTweak94.out" "polyExtrudeFace55.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace55.mp";
connectAttr "polyExtrudeFace54.out" "polyTweak94.ip";
connectAttr "polyTweak95.out" "polyExtrudeFace56.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace56.mp";
connectAttr "polyExtrudeFace55.out" "polyTweak95.ip";
connectAttr "polyTweak96.out" "polyExtrudeFace57.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace57.mp";
connectAttr "polyExtrudeFace56.out" "polyTweak96.ip";
connectAttr "polyTweak97.out" "polyExtrudeFace58.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace58.mp";
connectAttr "polyExtrudeFace57.out" "polyTweak97.ip";
connectAttr "polyTweak98.out" "polySoftEdge20.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge20.mp";
connectAttr "polyExtrudeFace58.out" "polyTweak98.ip";
connectAttr "polySoftEdge20.out" "polyTweak99.ip";
connectAttr "polyTweak99.out" "polySplit49.ip";
connectAttr "polyTweak100.out" "polyExtrudeFace59.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace59.mp";
connectAttr "polySplit49.out" "polyTweak100.ip";
connectAttr "polyTweak101.out" "polySoftEdge21.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge21.mp";
connectAttr "polyExtrudeFace59.out" "polyTweak101.ip";
connectAttr "polyTweak102.out" "polyExtrudeFace60.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace60.mp";
connectAttr "polySoftEdge21.out" "polyTweak102.ip";
connectAttr "polyExtrudeFace60.out" "polyTweak103.ip";
connectAttr "polyTweak103.out" "polySplit50.ip";
connectAttr "polySplit50.out" "polyTweak104.ip";
connectAttr "polyTweak104.out" "polySplit51.ip";
connectAttr "polyTweak105.out" "polySoftEdge22.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge22.mp";
connectAttr "polySplit51.out" "polyTweak105.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of SpookyTree.ma
