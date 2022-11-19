module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<64x3x299x299xf32>) -> tensor<64x1000xf32> attributes {input_names = ["input"], output_names = ["output"]} {
    %0 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000x2048xf32>} : () -> tensor<1000x2048xf32>
    %1 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x3x3x3xf32>} : () -> tensor<32x3x3x3xf32>
    %3 = "onnx.Constant"() {value = dense<[0.576775551, -1.10271919, 1.53925371, 4.03889513, 0.836085736, 3.99563718, -0.139125854, 1.09188855, -1.18599176, -0.168081075, -0.912534654, 0.0824229493, 0.364416838, 1.93217647, -0.498423427, -1.43665612, 3.94183636, 0.422266483, -0.956053078, 1.85993469, 1.09405804, -0.0661486611, -0.573558211, -1.33798659, -0.85765922, 0.383194476, -1.3415879, 1.63765168, -1.01240265, -1.52651501, -1.2799772, -0.838584601]> : tensor<32xf32>} : () -> tensor<32xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x32x3x3xf32>} : () -> tensor<32x32x3x3xf32>
    %5 = "onnx.Constant"() {value = dense<[0.911990404, 1.34413981, 0.89203763, 1.48251867, -2.05934381, -1.45657051, 1.57063341, 0.548014879, 0.374377847, -3.1723156, 1.40879643, -2.86863852, -0.572124064, -2.92029595, 3.70898461, -2.08754468, 0.82083857, 0.785718679, -0.626023412, 0.745962739, -1.3235203, 0.403562158, 1.0529567, -0.278341174, -2.99086952, 0.876550316, 1.28768849, 0.00186541677, 0.836207211, 4.98871374, -0.051764667, 0.379181147]> : tensor<32xf32>} : () -> tensor<32xf32>
    %6 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x32x3x3xf32>} : () -> tensor<64x32x3x3xf32>
    %7 = "onnx.Constant"() {value = dense<[-0.0376210809, 3.70158243, 1.51951706, -0.823296309, 1.21596265, 1.32368708, 0.823670446, 0.965824902, 0.907704592, 1.66212356, 1.86138415, 1.15487158, 0.732192755, 2.16989636, 0.735458433, 1.43540919, 0.674449086, 0.826364279, 3.53642821, -0.0604712218, 2.01906109, 4.04176283, -0.20975709, -0.0123339444, 1.45928311, 0.190562695, 3.49503183, 1.10174274, 0.650966167, 0.956483066, 1.93780363, 1.80392885, 1.49024749, 3.14394283, 0.464293152, 1.06310463, 1.55305147, 3.25301766, 0.540272236, 2.52994776, 2.35007739, 1.50254488, 2.05211115, 1.09180558, 1.79171693, 1.55342102, 0.208758533, 0.245484635, -2.16630745, 2.31921482, 0.331771225, 2.69078159, 3.83322287, 1.25298774, 0.970096826, 1.47723675, 0.474872977, 1.19133198, 0.228704825, 1.88630247, 1.1728723, 0.746446788, 2.37108827, 0.454325914]> : tensor<64xf32>} : () -> tensor<64xf32>
    %8 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<80x64x1x1xf32>} : () -> tensor<80x64x1x1xf32>
    %9 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x80x3x3xf32>} : () -> tensor<192x80x3x3xf32>
    %10 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %11 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x192x1x1xf32>} : () -> tensor<64x192x1x1xf32>
    %12 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<48x192x1x1xf32>} : () -> tensor<48x192x1x1xf32>
    %13 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x48x5x5xf32>} : () -> tensor<64x48x5x5xf32>
    %14 = "onnx.Constant"() {value = dense<[1.04370475, 1.07699239, -0.915571868, 4.11331558, 1.28695345, 0.119227007, 0.897879064, -0.365177035, 0.35502553, 0.377248108, -0.342971325, 0.0566132963, -0.0242693424, 2.7182653, -0.377417505, -0.438734412, 1.51169121, 2.74691176, 0.322910666, 0.965848445, 2.35676241, -0.160921067, 2.29966688, 0.0284059942, 0.200558364, -0.249663889, 4.36889648, 1.9049176, -0.217202753, -0.589142084, -0.623690187, 0.0917549729, 3.32898402, -0.467622876, 0.155541241, 0.0737835914, 0.298442662, 0.970289707, -1.5622828, -0.598573685, 0.827161729, -0.307278097, -0.839369059, -0.554156065, 0.437202811, -0.249423742, 3.09199142, 2.96046066, -0.254410833, -0.688559294, -0.63605386, 0.411538661, 4.61334753, -0.322790444, -0.528453171, 1.14981115, -0.589570045, -1.98350573, 3.18886423, 0.239352942, 3.31575775, -0.491692901, -1.1113838, -2.1856823]> : tensor<64xf32>} : () -> tensor<64xf32>
    %15 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x192x1x1xf32>} : () -> tensor<64x192x1x1xf32>
    %16 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x64x3x3xf32>} : () -> tensor<96x64x3x3xf32>
    %17 = "onnx.Constant"() {value = dense<[0.585334659, 0.0817434191, 2.95771313, -0.140029371, -0.216576323, 0.661122441, -0.675100743, 2.73321104, -0.331574917, 0.0414239764, 0.886846899, -0.525748253, 0.915805339, 1.01267588, 0.829108834, 4.97450781, 3.34846115, -0.802674829, 0.671788096, 0.890003323, 1.04954076, -0.953689157, -0.616816401, 1.62514222, 1.54068613, -1.66950119, 0.162857264, -0.306581706, -0.631465316, 0.518687963, -2.47681808, 0.0731993914, 0.811645627, 8.365090e-01, -6.855190e-03, 0.204916656, 1.38144445, 2.4840281, 0.317602217, 3.9620924, -0.51791662, -0.558394969, -0.25038287, -0.290222049, -0.48724547, 6.568860e-01, -0.367401183, 1.13984215, 1.11202347, -0.331400216, 0.758073389, -0.826841116, 2.11538601, 1.49445522, 0.736359655, -1.12390888, 0.445412278, 2.0093236, 0.0250662565, 2.84820795, -0.142727166, 0.714270473, 1.1655792, -1.95972264, -1.26465797, -0.23024638, 2.70620775, 0.195405185, -0.108188882, -0.399894834, 1.59964204, 2.55234599, 1.2139225, 0.500472307, -2.31582737, 0.467547208, -2.70226479, -0.205540076, 0.376640499, 2.31370473, 1.84131503, -1.15605116, 0.950829386, 0.2545968, -1.22310698, 1.35726535, 0.265077651, 0.0316053629, -0.0658290386, -1.77856135, -1.08370471, 0.19271037, 6.1439104, -1.79810286, -0.457554579, 1.71461785]> : tensor<96xf32>} : () -> tensor<96xf32>
    %18 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x96x3x3xf32>} : () -> tensor<96x96x3x3xf32>
    %19 = "onnx.Constant"() {value = dense<[0.209520876, -2.36450696, 0.374764889, 0.346611261, 0.880611836, 0.493012816, -0.478423119, 0.735429883, -1.33044541, 0.544905305, 1.15626121, -0.341649681, 0.575728357, -0.937139451, 0.051553905, 2.75159431, -0.411935598, 0.442843676, 1.29419827, 9.493460e-01, 1.22306657, 0.560260415, 0.802686691, -0.523185253, -0.13122201, -1.70536137, -0.112172037, 3.02678823, -0.0522555709, -0.102981389, 0.571265042, 0.0251047611, 1.0857302, -0.106708318, 0.617456495, -0.27917996, 0.265999794, -0.273641706, 1.20544028, 0.210000664, 1.01280963, 0.245551586, -0.254802853, 2.64690495, 0.876011788, -0.65514338, 2.10856724, -0.665418207, -1.66381097, -0.206021041, 0.0539765134, -0.0915094316, 0.380983829, 2.93941426, -0.00971013307, 0.579916179, -0.226951987, -0.115697503, 0.141874433, 0.135164589, -0.155496746, -0.128994852, 0.343496948, 1.41986477, 0.148426861, 0.0404388383, 0.722433448, -0.32471016, -0.0684684515, -0.961222827, 0.045047015, -0.992569804, 0.173109055, -1.85770369, 1.27110696, -1.307374, 1.42327809, 1.18041587, 0.862496435, -0.242428482, -0.40553689, -0.508628786, -0.204900265, 0.976152181, 1.26458764, 0.1973003, -0.823320686, 0.556004882, -0.158928573, -0.040175885, 0.096180588, 0.0567705631, 0.98706448, -1.57632089, 1.69476712, 1.81395817]> : tensor<96xf32>} : () -> tensor<96xf32>
    %20 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x192x1x1xf32>} : () -> tensor<32x192x1x1xf32>
    %21 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x256x1x1xf32>} : () -> tensor<64x256x1x1xf32>
    %22 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<48x256x1x1xf32>} : () -> tensor<48x256x1x1xf32>
    %23 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x48x5x5xf32>} : () -> tensor<64x48x5x5xf32>
    %24 = "onnx.Constant"() {value = dense<[0.282068938, -9.825170e-03, 0.146140516, 1.49902654, 0.0638467818, 0.788443804, -0.557036161, 0.616491973, 0.68395865, -0.729215384, 1.3150351, 0.303483546, -0.146729663, 0.162003875, 2.2864871, 1.16501808, -0.105588317, 0.211334631, 0.510086358, 0.570960701, -0.101581931, 0.455083251, 0.380378097, 0.582651556, 3.49987841, 1.06503093, 0.827445507, 2.38162112, 1.5250802, 0.765415251, -0.077515304, 0.511818528, -0.204246312, 0.689002156, 3.92084789, 3.20601273, -0.863795638, -0.412239373, -0.126907781, 3.00656033, 0.393920034, 0.01615192, 2.09109735, 1.56328917, 4.13400126, -0.394995302, 0.965049266, 0.441544056, 0.641657948, 1.32854903, 0.388367832, 0.357069254, 0.631096601, 0.804884135, 1.76954901, -2.70440555, 0.0846793503, 0.0939780474, -1.28372109, 0.731861353, 0.811345577, -0.0201314762, 0.70845294, 0.226272225]> : tensor<64xf32>} : () -> tensor<64xf32>
    %25 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x256x1x1xf32>} : () -> tensor<64x256x1x1xf32>
    %26 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x64x3x3xf32>} : () -> tensor<96x64x3x3xf32>
    %27 = "onnx.Constant"() {value = dense<[0.772208392, 0.168834627, -0.697550296, 0.86311382, 0.809498549, -1.00050199, 3.16346169, 0.879615545, 1.30077136, 0.131098688, -0.984558939, -0.0313775539, -0.620315492, -0.0549461842, 0.36895439, 1.23563266, 4.64648342, -0.361776292, -0.105849981, 0.650064408, 0.367904842, 0.370582759, -0.53030479, 0.481303215, -0.118507847, 0.60120368, 0.546212554, 0.196956947, 1.10940742, -0.0724648833, 0.620220542, 4.44604445, 0.764336884, -1.2320838, -0.638035714, -0.664267778, 0.574681222, 0.458469033, 0.755665719, 1.90971732, 1.45447528, -2.08241796, 0.0344834626, 2.07099962, 0.923365533, 0.941082835, 1.15422034, 2.58496356, 3.668450e+00, -0.367539197, -0.0897712409, -0.608799755, -0.680345714, 2.33796406, 0.535345554, 3.28506923, 0.243742585, -0.0870271623, -0.527517438, 0.0687036514, 0.434115529, 0.130914301, 0.376715571, 0.461036682, -0.394131482, -0.797956287, -0.499871701, -0.618470728, 0.448539913, 0.248932779, -0.243850827, 1.19170439, 0.132939875, -0.559357405, -1.03694713, 0.00243860483, 0.802993237, 0.947974741, -1.02316642, -0.00461581349, 2.79192138, 1.36430907, 1.44866753, -0.124875128, 2.29644656, 3.06311941, -8.335760e-02, 1.40247667, -0.724619508, 0.484299779, 0.0820729136, 0.0850323439, 0.535352767, 3.794801, -0.314779639, -0.654198408]> : tensor<96xf32>} : () -> tensor<96xf32>
    %28 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x96x3x3xf32>} : () -> tensor<96x96x3x3xf32>
    %29 = "onnx.Constant"() {value = dense<[-6.542270e-02, 0.103391528, -0.389229536, -0.0975092649, 0.164520621, -0.167698324, -0.263050288, 5.660510e-02, -0.95733869, 0.0933976471, 0.242823035, -0.894664526, -0.376947939, -1.44096804, 0.156678423, 0.840744137, -0.12365523, -0.95270276, 0.908185959, 0.551830232, 0.277609587, 0.558540821, -0.465944737, -0.128311396, -2.28964281, -0.228705376, -0.839145779, 0.28703624, -0.257353872, -0.00686225295, -0.0916656553, -1.81514573, 1.2875762, -0.3606098, -0.557020426, -1.01053476, -0.33539778, 0.0437263846, 0.540398479, 0.173267066, 0.975080549, 0.232360512, 0.0231277943, -0.464532435, -0.0200469494, 0.752564907, 1.32275319, 0.0767043903, -0.39854303, 0.103410721, -5.247110e-01, -0.507750869, 0.430574179, 0.167054892, 0.0665008426, 0.762551784, 0.0787877663, -0.263632596, 0.199183702, 0.644156456, -0.34443903, -1.4376868, 0.0344664752, -1.01671362, 0.811213076, -0.343741596, 0.151282966, -0.178177416, -0.689290523, -0.0127978325, 0.122593284, 0.181862473, 0.337404817, 0.429990768, 0.0580678284, -0.174693525, 0.574762404, 0.172009647, -3.414950e-01, -0.473343074, -0.732756615, -0.176897168, 0.527863741, -8.53352248E-4, -0.283649921, 1.69691944, 0.318310291, -0.245152831, 0.44867295, -0.155652791, -0.00899881124, -0.445061326, 0.287679493, -0.605953097, 0.708314657, -0.253972918]> : tensor<96xf32>} : () -> tensor<96xf32>
    %30 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x256x1x1xf32>} : () -> tensor<64x256x1x1xf32>
    %31 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x288x1x1xf32>} : () -> tensor<64x288x1x1xf32>
    %32 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<48x288x1x1xf32>} : () -> tensor<48x288x1x1xf32>
    %33 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x48x5x5xf32>} : () -> tensor<64x48x5x5xf32>
    %34 = "onnx.Constant"() {value = dense<[0.376738846, 0.308567822, 0.717092633, 0.0799641385, -0.679410577, 0.368810296, -0.097161591, 0.158281729, 1.70451117, -0.391064882, -0.204233378, -0.556835711, 1.36881912, 0.579163313, 0.42361176, -0.528515756, 0.073944211, 0.0353683531, -0.578357816, -8.733070e-01, 0.395520687, 0.287549853, -0.00794136524, -0.175020039, -0.0219857544, 0.032242924, 0.354089618, -0.268011063, 0.424346447, 2.70833516, 0.613129079, -1.20939016, -0.346144795, -0.789509356, -0.0736470222, -0.104271024, -0.077342391, -0.0494176745, 0.349115312, 0.282034844, 0.540663242, -0.0305298567, 1.17637694, 0.0450778604, -0.34209621, -0.953907668, 0.0450382233, 1.13186872, 0.727968574, -0.018175751, -0.767059862, 1.55345201, 0.357104838, -0.59746635, -0.632725656, -1.01044083, -0.135182977, -0.34662348, 0.082736209, 0.937639653, -0.196663558, 1.45540965, -0.620790839, 0.0615005195]> : tensor<64xf32>} : () -> tensor<64xf32>
    %35 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x288x1x1xf32>} : () -> tensor<64x288x1x1xf32>
    %36 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x64x3x3xf32>} : () -> tensor<96x64x3x3xf32>
    %37 = "onnx.Constant"() {value = dense<[0.89569956, 1.62001896, 0.76669532, 0.1114012, 2.896310e-01, -0.179665446, 3.401140e-01, 0.00317134336, 0.255608797, -0.827196419, 1.16673744, 0.47211349, -1.16155362, -0.376350641, 0.519806087, -0.426635951, 0.931671202, 0.0162764434, 0.745443761, 1.6683706, 0.0971453487, 0.820808291, 0.771652102, 0.479074836, 2.11478591, 0.305788845, 0.0156070292, 0.158669025, 0.889499306, -4.006010e-01, -0.409837127, 0.11144498, 0.444789767, -1.1294719, -1.71057987, 0.194823578, -0.990302264, -1.13684285, 0.959474205, -0.290180266, -0.568088412, 0.794545412, 0.040821217, -1.09707963, -0.479042888, -0.876128971, 0.740889549, 1.42174721, -0.245152831, 0.687374591, -0.713115811, 0.221233517, -1.07356071, -0.126360476, 0.712926745, 0.435850799, 0.0319222137, -0.518415332, -0.203504771, 0.0116078854, -1.01161766, -0.893298685, -1.24447525, 0.35001713, 0.559242249, 0.560184181, 1.079050e-01, -1.05462301, 0.136406511, -0.285068661, 0.467372417, 0.37419498, -0.697995782, 0.17910251, -0.75557065, 0.798358798, 0.589412689, -0.106060244, -0.00432831049, 0.248619556, 0.108988106, 0.660701036, 0.0369384885, 0.644121229, 0.250959396, 0.298492819, -0.858403205, -0.16747731, -1.12253761, 0.275623679, 1.5765419, -0.421933055, -0.207144737, 0.374969244, 0.768784999, -0.730858803]> : tensor<96xf32>} : () -> tensor<96xf32>
    %38 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x96x3x3xf32>} : () -> tensor<96x96x3x3xf32>
    %39 = "onnx.Constant"() {value = dense<[0.471343458, 0.401487947, -0.109356046, 0.468425333, 0.0594486147, 0.617509127, 1.23138416, 0.481356621, -0.144230604, 0.119152188, 0.392547697, 0.424438477, 0.517055809, 0.407131791, 0.557256937, -0.162233591, 0.344709873, 0.583467841, 0.152067274, -0.00458031893, 0.253561258, 0.434615344, 0.412678272, 0.25219059, 0.363153607, 0.225575387, -2.658840e-01, 1.11447859, -0.0635504723, -0.193365782, 0.448049307, 1.95229197, 0.489381313, 0.421985507, 0.400348485, -0.186399579, 0.300850272, 0.158398628, 0.345356047, 8.353430e-02, 0.403520852, -0.0217975378, 0.597689092, 0.559608459, 0.199685961, 0.376922935, 0.289570063, 0.353334188, -0.0255921334, 0.543808758, 0.0392770171, 0.519716263, 4.704380e-02, -0.0279354155, 0.803019344, 0.0869390368, 0.082147628, 0.245437354, 0.797896206, 0.111150384, -0.0353344679, -0.448233426, 0.0657515526, 0.184302807, -0.781847894, -0.0154756308, 0.184916675, -0.432229489, -0.125790179, -0.0709384381, 0.275990188, 0.232566714, 0.529817164, 0.0655273795, 0.465528488, 0.336127669, 0.452049345, 0.388817251, 0.309164613, 0.377634346, 0.0728846788, 0.263889879, 0.619836688, 0.335928738, 0.488275349, 0.107767925, 0.118996084, 0.434717506, 0.143497646, 0.198253751, 0.59924829, 0.486343622, 0.471544862, 0.124792814, -0.197653145, -0.00502371788]> : tensor<96xf32>} : () -> tensor<96xf32>
    %40 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x288x1x1xf32>} : () -> tensor<64x288x1x1xf32>
    %41 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x288x3x3xf32>} : () -> tensor<384x288x3x3xf32>
    %42 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %43 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x288x1x1xf32>} : () -> tensor<64x288x1x1xf32>
    %44 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x64x3x3xf32>} : () -> tensor<96x64x3x3xf32>
    %45 = "onnx.Constant"() {value = dense<[-1.60326028, -0.0180903673, 0.492158949, 0.335912049, 0.317326665, 0.730998397, 0.436959505, 0.224491358, -0.231763422, 0.294003695, -0.257144868, -0.328148246, 0.0128141642, -0.0666957498, -0.176737934, 0.0116043687, 0.270309389, 0.0750792623, 0.670910954, 0.096437633, 0.593980372, 0.385388076, 0.0106054544, 0.147560477, 0.0874298811, -0.765041887, 0.376200497, -1.17442691, -0.721776902, 0.0625964403, -0.742280722, 0.71706605, 0.465186477, -0.785209059, -0.529692531, 0.256881773, 0.130383253, 0.223077893, 0.481435299, -0.284579575, -0.106985331, 0.208490968, 0.286811352, 0.743529916, 0.225786239, 0.493839443, -0.446496546, -0.106699347, 0.330334306, 0.145329297, -0.0371923447, -0.190315664, 0.554785132, 0.213856339, 0.421262622, -0.0128369331, 0.0759085417, 0.00172531605, 1.884610e-01, -0.0237269402, -0.83040291, -3.03862906, 0.413638175, -0.728111743, 0.590155244, 0.211031675, 0.363374531, -2.9037528, 0.0339593291, -1.19382131, -0.15043205, 0.165097535, -0.0837675333, 0.376732945, 0.189457595, 0.152428091, 0.755549669, 0.618081093, -0.0348145962, 0.0534537435, 5.108340e-01, -0.300755084, 0.503289163, 0.822037696, -0.0827655196, -0.0273348093, 0.194721878, 0.260206342, 0.0146887302, -0.00658810138, 0.476075053, 0.403465509, 0.512467504, 0.257402301, 0.0598040819, -0.499805152]> : tensor<96xf32>} : () -> tensor<96xf32>
    %46 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x96x3x3xf32>} : () -> tensor<96x96x3x3xf32>
    %47 = "onnx.Constant"() {value = dense<[-0.407608837, -0.322785646, 0.444397748, -0.124250367, 0.161984622, 0.141312286, -2.69263983E-5, 0.377040207, 0.207476541, -0.274505436, -0.499321043, -0.172787905, 0.77158618, -0.0366622657, -0.339080691, -0.256086171, 0.627378702, 0.462909371, 0.0400338769, 1.10038483, 0.451287121, -1.39161491, 2.101130e-01, 0.165640935, 0.00607287883, 0.10186334, -0.199917585, 0.616964936, -0.530267775, -0.271370828, -0.0224940628, 0.60567063, 0.12841557, 0.860538125, 0.526783943, 1.14514196, -0.187713921, 1.03924441, -0.180395246, -0.0208229125, 0.773284971, 0.0904324204, -0.139498889, -0.29811731, 1.17256868, 0.243120089, 1.19790721, 0.240586728, -0.0481547341, -0.299844056, 0.185427308, 0.0705132559, 0.152060121, 0.382982135, 0.170356482, 1.42396295, 0.606641531, -0.0693975687, -0.39708674, 0.774417519, 0.630420982, -0.467241764, 1.24658704, -0.216465205, 1.04937911, 0.769346117, -0.28493306, 1.19235718, 0.0382282436, 0.0335027277, -0.108059883, -0.0395933427, 0.165080696, -0.553031147, -0.100561969, 0.566540122, 0.332843333, 0.157777429, -0.288104862, -0.179682523, 1.16870987, 0.0669122636, 0.462789893, -0.117737189, -0.0484454408, 0.342809618, 0.0198671483, -0.610582948, -0.212255761, 6.525540e-02, 0.0757059604, 0.932596147, -1.19973326, -0.219202459, 0.412172943, 0.98494172]> : tensor<96xf32>} : () -> tensor<96xf32>
    %48 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %49 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x768x1x1xf32>} : () -> tensor<128x768x1x1xf32>
    %50 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x128x1x7xf32>} : () -> tensor<128x128x1x7xf32>
    %51 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %52 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x128x7x1xf32>} : () -> tensor<192x128x7x1xf32>
    %53 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %54 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x768x1x1xf32>} : () -> tensor<128x768x1x1xf32>
    %55 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x128x7x1xf32>} : () -> tensor<128x128x7x1xf32>
    %56 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %57 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x128x1x7xf32>} : () -> tensor<128x128x1x7xf32>
    %58 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %59 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x128x7x1xf32>} : () -> tensor<128x128x7x1xf32>
    %60 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %61 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x128x1x7xf32>} : () -> tensor<192x128x1x7xf32>
    %62 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %63 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %64 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %65 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x768x1x1xf32>} : () -> tensor<160x768x1x1xf32>
    %66 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x1x7xf32>} : () -> tensor<160x160x1x7xf32>
    %67 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %68 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x160x7x1xf32>} : () -> tensor<192x160x7x1xf32>
    %69 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %70 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x768x1x1xf32>} : () -> tensor<160x768x1x1xf32>
    %71 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x7x1xf32>} : () -> tensor<160x160x7x1xf32>
    %72 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %73 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x1x7xf32>} : () -> tensor<160x160x1x7xf32>
    %74 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %75 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x7x1xf32>} : () -> tensor<160x160x7x1xf32>
    %76 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %77 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x160x1x7xf32>} : () -> tensor<192x160x1x7xf32>
    %78 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %79 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %80 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %81 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x768x1x1xf32>} : () -> tensor<160x768x1x1xf32>
    %82 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x1x7xf32>} : () -> tensor<160x160x1x7xf32>
    %83 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %84 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x160x7x1xf32>} : () -> tensor<192x160x7x1xf32>
    %85 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %86 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x768x1x1xf32>} : () -> tensor<160x768x1x1xf32>
    %87 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x7x1xf32>} : () -> tensor<160x160x7x1xf32>
    %88 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %89 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x1x7xf32>} : () -> tensor<160x160x1x7xf32>
    %90 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %91 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x160x7x1xf32>} : () -> tensor<160x160x7x1xf32>
    %92 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160xf32>} : () -> tensor<160xf32>
    %93 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x160x1x7xf32>} : () -> tensor<192x160x1x7xf32>
    %94 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %95 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %96 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %97 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %98 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x1x7xf32>} : () -> tensor<192x192x1x7xf32>
    %99 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %100 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x7x1xf32>} : () -> tensor<192x192x7x1xf32>
    %101 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %102 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %103 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x7x1xf32>} : () -> tensor<192x192x7x1xf32>
    %104 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %105 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x1x7xf32>} : () -> tensor<192x192x1x7xf32>
    %106 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %107 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x7x1xf32>} : () -> tensor<192x192x7x1xf32>
    %108 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %109 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x1x7xf32>} : () -> tensor<192x192x1x7xf32>
    %110 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %111 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %112 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %113 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x192x3x3xf32>} : () -> tensor<320x192x3x3xf32>
    %114 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320xf32>} : () -> tensor<320xf32>
    %115 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x768x1x1xf32>} : () -> tensor<192x768x1x1xf32>
    %116 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x1x7xf32>} : () -> tensor<192x192x1x7xf32>
    %117 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %118 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x7x1xf32>} : () -> tensor<192x192x7x1xf32>
    %119 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %120 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x192x3x3xf32>} : () -> tensor<192x192x3x3xf32>
    %121 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %122 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x1280x1x1xf32>} : () -> tensor<320x1280x1x1xf32>
    %123 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1280x1x1xf32>} : () -> tensor<384x1280x1x1xf32>
    %124 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x1x3xf32>} : () -> tensor<384x384x1x3xf32>
    %125 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %126 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x3x1xf32>} : () -> tensor<384x384x3x1xf32>
    %127 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %128 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<448x1280x1x1xf32>} : () -> tensor<448x1280x1x1xf32>
    %129 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x448x3x3xf32>} : () -> tensor<384x448x3x3xf32>
    %130 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %131 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x1x3xf32>} : () -> tensor<384x384x1x3xf32>
    %132 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %133 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x3x1xf32>} : () -> tensor<384x384x3x1xf32>
    %134 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %135 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1280x1x1xf32>} : () -> tensor<192x1280x1x1xf32>
    %136 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x2048x1x1xf32>} : () -> tensor<320x2048x1x1xf32>
    %137 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x2048x1x1xf32>} : () -> tensor<384x2048x1x1xf32>
    %138 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x1x3xf32>} : () -> tensor<384x384x1x3xf32>
    %139 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %140 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x3x1xf32>} : () -> tensor<384x384x3x1xf32>
    %141 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %142 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<448x2048x1x1xf32>} : () -> tensor<448x2048x1x1xf32>
    %143 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x448x3x3xf32>} : () -> tensor<384x448x3x3xf32>
    %144 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %145 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x1x3xf32>} : () -> tensor<384x384x1x3xf32>
    %146 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %147 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x384x3x1xf32>} : () -> tensor<384x384x3x1xf32>
    %148 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %149 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x2048x1x1xf32>} : () -> tensor<192x2048x1x1xf32>
    %150 = "onnx.Constant"() {value = dense<0> : tensor<i64>} : () -> tensor<i64>
    %151 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %152 = "onnx.Constant"() {value = dense<4.580000e-01> : tensor<f32>} : () -> tensor<f32>
    %153 = "onnx.Constant"() {value = dense<-3.000000e-02> : tensor<f32>} : () -> tensor<f32>
    %154 = "onnx.Constant"() {value = dense<1> : tensor<i64>} : () -> tensor<i64>
    %155 = "onnx.Constant"() {value = dense<4.480000e-01> : tensor<f32>} : () -> tensor<f32>
    %156 = "onnx.Constant"() {value = dense<-0.0879999995> : tensor<f32>} : () -> tensor<f32>
    %157 = "onnx.Constant"() {value = dense<2> : tensor<i64>} : () -> tensor<i64>
    %158 = "onnx.Constant"() {value = dense<4.500000e-01> : tensor<f32>} : () -> tensor<f32>
    %159 = "onnx.Constant"() {value = dense<-1.880000e-01> : tensor<f32>} : () -> tensor<f32>
    %160 = "onnx.Gather"(%arg0, %150) {axis = 1 : si64, onnx_node_name = "Gather_1"} : (tensor<64x3x299x299xf32>, tensor<i64>) -> tensor<64x299x299xf32>
    %161 = "onnx.Unsqueeze"(%160, %151) {onnx_node_name = "Unsqueeze_3"} : (tensor<64x299x299xf32>, tensor<1xi64>) -> tensor<64x1x299x299xf32>
    %162 = "onnx.Mul"(%161, %152) {onnx_node_name = "Mul_5"} : (tensor<64x1x299x299xf32>, tensor<f32>) -> tensor<64x1x299x299xf32>
    %163 = "onnx.Add"(%162, %153) {onnx_node_name = "Add_7"} : (tensor<64x1x299x299xf32>, tensor<f32>) -> tensor<64x1x299x299xf32>
    %164 = "onnx.Gather"(%arg0, %154) {axis = 1 : si64, onnx_node_name = "Gather_9"} : (tensor<64x3x299x299xf32>, tensor<i64>) -> tensor<64x299x299xf32>
    %165 = "onnx.Unsqueeze"(%164, %151) {onnx_node_name = "Unsqueeze_11"} : (tensor<64x299x299xf32>, tensor<1xi64>) -> tensor<64x1x299x299xf32>
    %166 = "onnx.Mul"(%165, %155) {onnx_node_name = "Mul_13"} : (tensor<64x1x299x299xf32>, tensor<f32>) -> tensor<64x1x299x299xf32>
    %167 = "onnx.Add"(%166, %156) {onnx_node_name = "Add_15"} : (tensor<64x1x299x299xf32>, tensor<f32>) -> tensor<64x1x299x299xf32>
    %168 = "onnx.Gather"(%arg0, %157) {axis = 1 : si64, onnx_node_name = "Gather_17"} : (tensor<64x3x299x299xf32>, tensor<i64>) -> tensor<64x299x299xf32>
    %169 = "onnx.Unsqueeze"(%168, %151) {onnx_node_name = "Unsqueeze_19"} : (tensor<64x299x299xf32>, tensor<1xi64>) -> tensor<64x1x299x299xf32>
    %170 = "onnx.Mul"(%169, %158) {onnx_node_name = "Mul_21"} : (tensor<64x1x299x299xf32>, tensor<f32>) -> tensor<64x1x299x299xf32>
    %171 = "onnx.Add"(%170, %159) {onnx_node_name = "Add_23"} : (tensor<64x1x299x299xf32>, tensor<f32>) -> tensor<64x1x299x299xf32>
    %172 = "onnx.Concat"(%163, %167, %171) {axis = 1 : si64, onnx_node_name = "Concat_24"} : (tensor<64x1x299x299xf32>, tensor<64x1x299x299xf32>, tensor<64x1x299x299xf32>) -> tensor<64x3x299x299xf32>
    %173 = "onnx.Conv"(%172, %2, %3) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_25", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<64x3x299x299xf32>, tensor<32x3x3x3xf32>, tensor<32xf32>) -> tensor<64x32x149x149xf32>
    %174 = "onnx.Relu"(%173) {onnx_node_name = "Relu_26"} : (tensor<64x32x149x149xf32>) -> tensor<64x32x149x149xf32>
    %175 = "onnx.Conv"(%174, %4, %5) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_27", pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<64x32x149x149xf32>, tensor<32x32x3x3xf32>, tensor<32xf32>) -> tensor<64x32x147x147xf32>
    %176 = "onnx.Relu"(%175) {onnx_node_name = "Relu_28"} : (tensor<64x32x147x147xf32>) -> tensor<64x32x147x147xf32>
    %177 = "onnx.Conv"(%176, %6, %7) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_29", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x32x147x147xf32>, tensor<64x32x3x3xf32>, tensor<64xf32>) -> tensor<64x64x147x147xf32>
    %178 = "onnx.Relu"(%177) {onnx_node_name = "Relu_30"} : (tensor<64x64x147x147xf32>) -> tensor<64x64x147x147xf32>
    %179 = "onnx.MaxPoolSingleOut"(%178) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "MaxPool_31", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<64x64x147x147xf32>) -> tensor<64x64x73x73xf32>
    %180 = "onnx.Dim"(%179) {axis = 0 : si64} : (tensor<64x64x73x73xf32>) -> tensor<1xi64>
    %181 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %182 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %183 = "onnx.Concat"(%180, %181, %182) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %184 = "onnx.Reshape"(%179, %183) {allowzero = 0 : si64} : (tensor<64x64x73x73xf32>, tensor<3xi64>) -> tensor<64x64x64xf32>
    %185 = "onnx.Constant"() {value = dense<[80, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %186 = "onnx.Reshape"(%8, %185) {allowzero = 0 : si64} : (tensor<80x64x1x1xf32>, tensor<2xi64>) -> tensor<80x64xf32>
    %187 = "onnx.MatMul"(%186, %184) : (tensor<80x64xf32>, tensor<64x64x64xf32>) -> tensor<64x80x64xf32>
    %188 = "onnx.Constant"() {value = dense<[[[1.62182713], [0.331476659], [2.42558432], [0.319705069], [-0.055840224], [1.3874476], [0.5352121], [1.26708078], [-0.327045679], [0.792273461], [0.066691868], [-0.419697404], [0.427504659], [0.369316339], [1.34301889], [0.353310466], [-0.472540736], [1.33799458], [-0.81397134], [0.870808243], [-0.320680052], [1.56707358], [0.827443957], [0.373333514], [0.883009314], [1.92633355], [-0.022809267], [7.09427595], [0.479305714], [-1.35269499], [2.5512743], [1.64944506], [-0.170414984], [5.158100e-01], [0.489479363], [1.05981445], [0.751492679], [0.952932596], [1.21953583], [-0.219568402], [0.875948786], [7.114660e-01], [0.585584879], [0.671708822], [1.03909051], [0.455926895], [0.567795098], [-1.63945973], [1.43552554], [0.461382419], [0.590962231], [0.476914704], [0.719803392], [0.811679482], [1.13617229], [1.91536975], [1.85937333], [-1.26549876], [1.24667799], [1.59474647], [1.77241158], [2.10194516], [-0.147631645], [3.00030136], [0.327178329], [0.727802693], [1.41014588], [0.641742945], [1.14226937], [1.84649241], [0.0881471335], [0.344209194], [1.56948221], [1.87531328], [1.12316668], [1.77829421], [1.67879367], [-0.620910167], [0.842626452], [0.859189629]]]> : tensor<1x80x1xf32>} : () -> tensor<1x80x1xf32>
    %189 = "onnx.Add"(%187, %188) : (tensor<64x80x64xf32>, tensor<1x80x1xf32>) -> tensor<64x80x64xf32>
    %190 = "onnx.Dim"(%179) {axis = 0 : si64} : (tensor<64x64x73x73xf32>) -> tensor<1xi64>
    %191 = "onnx.Constant"() {value = dense<73> : tensor<1xi64>} : () -> tensor<1xi64>
    %192 = "onnx.Constant"() {value = dense<73> : tensor<1xi64>} : () -> tensor<1xi64>
    %193 = "onnx.Constant"() {value = dense<80> : tensor<1xi64>} : () -> tensor<1xi64>
    %194 = "onnx.Concat"(%190, %193, %191, %192) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %195 = "onnx.Reshape"(%189, %194) {allowzero = 0 : si64} : (tensor<64x80x64xf32>, tensor<4xi64>) -> tensor<64x80x73x73xf32>
    %196 = "onnx.Relu"(%195) {onnx_node_name = "Relu_33"} : (tensor<64x80x73x73xf32>) -> tensor<64x80x73x73xf32>
    %197 = "onnx.Conv"(%196, %9, %10) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_34", pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<64x80x73x73xf32>, tensor<192x80x3x3xf32>, tensor<192xf32>) -> tensor<64x192x71x71xf32>
    %198 = "onnx.Relu"(%197) {onnx_node_name = "Relu_35"} : (tensor<64x192x71x71xf32>) -> tensor<64x192x71x71xf32>
    %199 = "onnx.MaxPoolSingleOut"(%198) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "MaxPool_36", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<64x192x71x71xf32>) -> tensor<64x192x35x35xf32>
    %200 = "onnx.Dim"(%199) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %201 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %202 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %203 = "onnx.Concat"(%200, %201, %202) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %204 = "onnx.Reshape"(%199, %203) {allowzero = 0 : si64} : (tensor<64x192x35x35xf32>, tensor<3xi64>) -> tensor<64x192x64xf32>
    %205 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %206 = "onnx.Reshape"(%11, %205) {allowzero = 0 : si64} : (tensor<64x192x1x1xf32>, tensor<2xi64>) -> tensor<64x192xf32>
    %207 = "onnx.MatMul"(%206, %204) : (tensor<64x192xf32>, tensor<64x192x64xf32>) -> tensor<64x64x64xf32>
    %208 = "onnx.Constant"() {value = dense<[[[2.47409964], [0.812396168], [2.88219047], [-0.884943902], [0.854157328], [-1.04618406], [0.563140333], [0.799774408], [-1.16820943], [2.11915588], [0.453628778], [3.76920629], [0.0539682359], [-0.809173107], [0.928968727], [-0.791933775], [6.45884799], [0.714466989], [0.678208947], [1.41840267], [-0.377066135], [-0.780958712], [1.28073621], [1.23796058], [1.21306312], [0.0144810081], [3.85336661], [1.21709824], [0.934184551], [4.34414244], [1.41909814], [-0.394063652], [0.382966071], [0.186001644], [1.85149026], [0.207187325], [1.25456417], [-1.2320888], [1.05634379], [3.39291072], [2.13185716], [0.710793614], [0.0655832365], [4.22081804], [1.79543412], [4.87892818], [1.0303359], [2.69201541], [1.15307021], [-0.0683204085], [0.473672599], [-0.598802865], [0.732116938], [3.05133891], [-1.07980824], [0.891098856], [0.0848412811], [0.791018068], [2.281760e-01], [-0.454246283], [0.380819201], [0.949371039], [1.62996769], [-0.0590492785]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %209 = "onnx.Add"(%207, %208) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %210 = "onnx.Dim"(%199) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %211 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %212 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %213 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %214 = "onnx.Concat"(%210, %213, %211, %212) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %215 = "onnx.Reshape"(%209, %214) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %216 = "onnx.Relu"(%215) {onnx_node_name = "Relu_38"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %217 = "onnx.Dim"(%199) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %218 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %219 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %220 = "onnx.Concat"(%217, %218, %219) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %221 = "onnx.Reshape"(%199, %220) {allowzero = 0 : si64} : (tensor<64x192x35x35xf32>, tensor<3xi64>) -> tensor<64x192x64xf32>
    %222 = "onnx.Constant"() {value = dense<[48, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %223 = "onnx.Reshape"(%12, %222) {allowzero = 0 : si64} : (tensor<48x192x1x1xf32>, tensor<2xi64>) -> tensor<48x192xf32>
    %224 = "onnx.MatMul"(%223, %221) : (tensor<48x192xf32>, tensor<64x192x64xf32>) -> tensor<64x48x64xf32>
    %225 = "onnx.Constant"() {value = dense<[[[0.974860966], [1.20391393], [-0.49561888], [-0.676321864], [2.00021338], [0.739598333], [2.54109502], [1.25898397], [1.22258008], [-0.67711836], [1.6076082], [-0.523333311], [-0.531137466], [-2.50531673], [3.07801533], [0.690322458], [1.98215055], [2.32952571], [2.5445416], [2.16799355], [0.870536208], [-0.155818835], [-1.00884438], [-2.57240248], [0.436115623], [-0.747257292], [1.12877166], [1.96898186], [-0.606758237], [0.107576787], [1.06831014], [0.851003944], [-1.22254169], [0.205656052], [-1.66324496], [-1.87313294], [-1.0842514], [-0.458331645], [-1.10918832], [2.06008053], [1.03811693], [0.338729382], [1.55859637], [-0.195445314], [0.405283123], [1.28172827], [1.17992377], [1.324940e+00]]]> : tensor<1x48x1xf32>} : () -> tensor<1x48x1xf32>
    %226 = "onnx.Add"(%224, %225) : (tensor<64x48x64xf32>, tensor<1x48x1xf32>) -> tensor<64x48x64xf32>
    %227 = "onnx.Dim"(%199) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %228 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %229 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %230 = "onnx.Constant"() {value = dense<48> : tensor<1xi64>} : () -> tensor<1xi64>
    %231 = "onnx.Concat"(%227, %230, %228, %229) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %232 = "onnx.Reshape"(%226, %231) {allowzero = 0 : si64} : (tensor<64x48x64xf32>, tensor<4xi64>) -> tensor<64x48x35x35xf32>
    %233 = "onnx.Relu"(%232) {onnx_node_name = "Relu_40"} : (tensor<64x48x35x35xf32>) -> tensor<64x48x35x35xf32>
    %234 = "onnx.Conv"(%233, %13, %14) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [5, 5], onnx_node_name = "Conv_41", pads = [2, 2, 2, 2], strides = [1, 1]} : (tensor<64x48x35x35xf32>, tensor<64x48x5x5xf32>, tensor<64xf32>) -> tensor<64x64x35x35xf32>
    %235 = "onnx.Relu"(%234) {onnx_node_name = "Relu_42"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %236 = "onnx.Dim"(%199) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %237 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %238 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %239 = "onnx.Concat"(%236, %237, %238) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %240 = "onnx.Reshape"(%199, %239) {allowzero = 0 : si64} : (tensor<64x192x35x35xf32>, tensor<3xi64>) -> tensor<64x192x64xf32>
    %241 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %242 = "onnx.Reshape"(%15, %241) {allowzero = 0 : si64} : (tensor<64x192x1x1xf32>, tensor<2xi64>) -> tensor<64x192xf32>
    %243 = "onnx.MatMul"(%242, %240) : (tensor<64x192xf32>, tensor<64x192x64xf32>) -> tensor<64x64x64xf32>
    %244 = "onnx.Constant"() {value = dense<[[[1.35396767], [1.76322103], [0.717256605], [-1.78992856], [0.878991246], [0.521338761], [-2.43833375], [-0.219435498], [4.261780e+00], [-0.414131016], [-0.334563613], [0.494288504], [0.372784078], [0.443707824], [0.237550825], [-0.587251306], [-0.302847534], [1.03955293], [1.3913883], [0.981180846], [1.86086059], [-1.20488536], [1.57321227], [0.977301776], [-0.797907471], [0.0491741896], [1.41355145], [2.34313154], [-1.584530e+00], [-0.160839885], [-1.1241833], [0.883625507], [-3.96097565], [-0.629445791], [-2.3752768], [2.207920e-01], [-0.580424368], [-0.230235577], [2.06635451], [1.32859302], [9.032430e-01], [-0.155427054], [1.25591373], [-0.683592498], [-0.41268754], [1.61118579], [3.37655258], [0.485042125], [-2.90267944], [1.26462841], [1.14362383], [-1.98294079], [0.603621542], [3.26489687], [-0.753049731], [-1.11768425], [-0.0760581493], [0.898364305], [2.6217165], [-2.12300634], [0.220463693], [5.67396736], [7.99188899], [-0.167055637]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %245 = "onnx.Add"(%243, %244) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %246 = "onnx.Dim"(%199) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %247 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %248 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %249 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %250 = "onnx.Concat"(%246, %249, %247, %248) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %251 = "onnx.Reshape"(%245, %250) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %252 = "onnx.Relu"(%251) {onnx_node_name = "Relu_44"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %253 = "onnx.Conv"(%252, %16, %17) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_45", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x64x35x35xf32>, tensor<96x64x3x3xf32>, tensor<96xf32>) -> tensor<64x96x35x35xf32>
    %254 = "onnx.Relu"(%253) {onnx_node_name = "Relu_46"} : (tensor<64x96x35x35xf32>) -> tensor<64x96x35x35xf32>
    %255 = "onnx.Conv"(%254, %18, %19) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_47", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x96x35x35xf32>, tensor<96x96x3x3xf32>, tensor<96xf32>) -> tensor<64x96x35x35xf32>
    %256 = "onnx.Relu"(%255) {onnx_node_name = "Relu_48"} : (tensor<64x96x35x35xf32>) -> tensor<64x96x35x35xf32>
    %257 = "onnx.AveragePool"(%199) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_51", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x192x35x35xf32>) -> tensor<64x192x35x35xf32>
    %258 = "onnx.Dim"(%257) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %259 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %260 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %261 = "onnx.Concat"(%258, %259, %260) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %262 = "onnx.Reshape"(%257, %261) {allowzero = 0 : si64} : (tensor<64x192x35x35xf32>, tensor<3xi64>) -> tensor<64x192x64xf32>
    %263 = "onnx.Constant"() {value = dense<[32, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %264 = "onnx.Reshape"(%20, %263) {allowzero = 0 : si64} : (tensor<32x192x1x1xf32>, tensor<2xi64>) -> tensor<32x192xf32>
    %265 = "onnx.MatMul"(%264, %262) : (tensor<32x192xf32>, tensor<64x192x64xf32>) -> tensor<64x32x64xf32>
    %266 = "onnx.Constant"() {value = dense<[[[-3.04400396], [3.30362511], [1.24675226], [-6.07493544], [-1.44434679], [2.25040197], [2.53251433], [1.05669832], [0.409422576], [-1.65254247], [-2.8895092], [0.0664495826], [1.99757242], [1.46062112], [-0.245225936], [-3.7368834], [2.12868309], [1.26740432], [-0.710075438], [1.82249212], [0.535727203], [-1.54994345], [1.15923703], [0.977044463], [-1.95018971], [-0.984163045], [2.14129448], [1.09211862], [-6.6556735], [-0.785356283], [-5.59510612], [-0.590590417]]]> : tensor<1x32x1xf32>} : () -> tensor<1x32x1xf32>
    %267 = "onnx.Add"(%265, %266) : (tensor<64x32x64xf32>, tensor<1x32x1xf32>) -> tensor<64x32x64xf32>
    %268 = "onnx.Dim"(%257) {axis = 0 : si64} : (tensor<64x192x35x35xf32>) -> tensor<1xi64>
    %269 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %270 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %271 = "onnx.Constant"() {value = dense<32> : tensor<1xi64>} : () -> tensor<1xi64>
    %272 = "onnx.Concat"(%268, %271, %269, %270) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %273 = "onnx.Reshape"(%267, %272) {allowzero = 0 : si64} : (tensor<64x32x64xf32>, tensor<4xi64>) -> tensor<64x32x35x35xf32>
    %274 = "onnx.Relu"(%273) {onnx_node_name = "Relu_53"} : (tensor<64x32x35x35xf32>) -> tensor<64x32x35x35xf32>
    %275 = "onnx.Concat"(%216, %235, %256, %274) {axis = 1 : si64, onnx_node_name = "Concat_54"} : (tensor<64x64x35x35xf32>, tensor<64x64x35x35xf32>, tensor<64x96x35x35xf32>, tensor<64x32x35x35xf32>) -> tensor<64x256x35x35xf32>
    %276 = "onnx.Dim"(%275) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %277 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %278 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %279 = "onnx.Concat"(%276, %277, %278) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %280 = "onnx.Reshape"(%275, %279) {allowzero = 0 : si64} : (tensor<64x256x35x35xf32>, tensor<3xi64>) -> tensor<64x256x64xf32>
    %281 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %282 = "onnx.Reshape"(%21, %281) {allowzero = 0 : si64} : (tensor<64x256x1x1xf32>, tensor<2xi64>) -> tensor<64x256xf32>
    %283 = "onnx.MatMul"(%282, %280) : (tensor<64x256xf32>, tensor<64x256x64xf32>) -> tensor<64x64x64xf32>
    %284 = "onnx.Constant"() {value = dense<[[[1.95083857], [-2.8270905], [0.768231749], [-0.0567318797], [2.07600737], [-1.08183765], [1.8844974], [0.358507395], [-0.835405409], [1.91280162], [0.887853264], [-0.56034863], [1.15786648], [2.36700654], [-1.52509129], [-2.90776038], [-0.0990378856], [0.183828861], [0.372289598], [-0.352392644], [-1.16483021], [-2.42530632], [-0.409353852], [1.70251942], [2.88583207], [1.33910143], [0.176012218], [1.52652657], [-0.910334527], [2.51297045], [-0.58423388], [-2.1156671], [-0.1677742], [-2.84306788], [-0.325358868], [4.26453114], [2.8186245], [2.70501041], [3.32680964], [1.96100879], [0.0209723115], [1.41099775], [-3.83104706], [-1.58703232], [-0.514218092], [1.27428508], [1.15225708], [2.99889326], [2.81074381], [-0.833198249], [-2.75361466], [4.13094378], [1.09338117], [-0.687917768], [-1.55651784], [3.23885846], [-0.481988639], [3.13916254], [0.550518036], [-0.93884927], [2.95940447], [2.2893281], [0.889361381], [-3.3757751]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %285 = "onnx.Add"(%283, %284) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %286 = "onnx.Dim"(%275) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %287 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %288 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %289 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %290 = "onnx.Concat"(%286, %289, %287, %288) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %291 = "onnx.Reshape"(%285, %290) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %292 = "onnx.Relu"(%291) {onnx_node_name = "Relu_56"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %293 = "onnx.Dim"(%275) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %294 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %295 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %296 = "onnx.Concat"(%293, %294, %295) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %297 = "onnx.Reshape"(%275, %296) {allowzero = 0 : si64} : (tensor<64x256x35x35xf32>, tensor<3xi64>) -> tensor<64x256x64xf32>
    %298 = "onnx.Constant"() {value = dense<[48, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %299 = "onnx.Reshape"(%22, %298) {allowzero = 0 : si64} : (tensor<48x256x1x1xf32>, tensor<2xi64>) -> tensor<48x256xf32>
    %300 = "onnx.MatMul"(%299, %297) : (tensor<48x256xf32>, tensor<64x256x64xf32>) -> tensor<64x48x64xf32>
    %301 = "onnx.Constant"() {value = dense<[[[-0.524870694], [-2.37384653], [-1.83883142], [2.17789459], [2.38037658], [0.945978879], [1.14072156], [0.946388185], [1.88445485], [-2.49969125], [6.93032932], [1.20489407], [-0.307582617], [-0.960338711], [0.346163601], [-2.07072282], [-2.24080682], [-0.369881094], [2.34112597], [-2.20017433], [0.226732075], [1.6557014], [1.55244172], [0.808309376], [-0.12473774], [0.47511223], [1.6274116], [3.00727415], [-3.04806662], [-3.24748564], [-4.624300e+00], [2.73300266], [1.03717971], [1.77159917], [-0.228521138], [-0.511634827], [2.77980208], [-0.196950406], [1.03535974], [0.773471355], [1.60737765], [1.19744468], [0.815968155], [0.0837807804], [-1.31264317], [-0.459449232], [-0.144266427], [-0.986380815]]]> : tensor<1x48x1xf32>} : () -> tensor<1x48x1xf32>
    %302 = "onnx.Add"(%300, %301) : (tensor<64x48x64xf32>, tensor<1x48x1xf32>) -> tensor<64x48x64xf32>
    %303 = "onnx.Dim"(%275) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %304 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %305 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %306 = "onnx.Constant"() {value = dense<48> : tensor<1xi64>} : () -> tensor<1xi64>
    %307 = "onnx.Concat"(%303, %306, %304, %305) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %308 = "onnx.Reshape"(%302, %307) {allowzero = 0 : si64} : (tensor<64x48x64xf32>, tensor<4xi64>) -> tensor<64x48x35x35xf32>
    %309 = "onnx.Relu"(%308) {onnx_node_name = "Relu_58"} : (tensor<64x48x35x35xf32>) -> tensor<64x48x35x35xf32>
    %310 = "onnx.Conv"(%309, %23, %24) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [5, 5], onnx_node_name = "Conv_59", pads = [2, 2, 2, 2], strides = [1, 1]} : (tensor<64x48x35x35xf32>, tensor<64x48x5x5xf32>, tensor<64xf32>) -> tensor<64x64x35x35xf32>
    %311 = "onnx.Relu"(%310) {onnx_node_name = "Relu_60"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %312 = "onnx.Dim"(%275) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %313 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %314 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %315 = "onnx.Concat"(%312, %313, %314) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %316 = "onnx.Reshape"(%275, %315) {allowzero = 0 : si64} : (tensor<64x256x35x35xf32>, tensor<3xi64>) -> tensor<64x256x64xf32>
    %317 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %318 = "onnx.Reshape"(%25, %317) {allowzero = 0 : si64} : (tensor<64x256x1x1xf32>, tensor<2xi64>) -> tensor<64x256xf32>
    %319 = "onnx.MatMul"(%318, %316) : (tensor<64x256xf32>, tensor<64x256x64xf32>) -> tensor<64x64x64xf32>
    %320 = "onnx.Constant"() {value = dense<[[[-1.43373668], [0.701793611], [-0.163198411], [-1.4040556], [-0.613909602], [1.03238773], [-0.00866587832], [3.67513132], [-1.09396672], [4.44237614], [1.54866743], [0.974932432], [-2.97735262], [1.40394545], [-1.01657915], [2.12865162], [3.66933775], [1.29142857], [2.29024148], [-1.14127159], [0.0652350783], [-1.05579388], [2.47852612], [-3.323500e+00], [0.576807678], [0.0926924422], [-0.314152718], [1.81472135], [-1.12042642], [0.977774858], [3.22511292], [-2.17503548], [-1.83832991], [2.27132964], [0.986103057], [-1.35839534], [0.986265778], [3.07133651], [0.250334501], [-6.888210e-01], [-0.35262984], [2.51311207], [2.68315363], [2.12152195], [-1.29788494], [3.04218721], [-1.8982029], [2.16380835], [0.809595704], [-1.17999482], [1.32528806], [1.16155708], [0.393943071], [3.58890533], [-0.51684612], [-3.06969213], [0.524297595], [-5.231710e+00], [-1.32293296], [0.346992254], [-0.281227738], [-0.775620222], [-1.22925758], [0.550854743]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %321 = "onnx.Add"(%319, %320) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %322 = "onnx.Dim"(%275) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %323 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %324 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %325 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %326 = "onnx.Concat"(%322, %325, %323, %324) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %327 = "onnx.Reshape"(%321, %326) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %328 = "onnx.Relu"(%327) {onnx_node_name = "Relu_62"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %329 = "onnx.Conv"(%328, %26, %27) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_63", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x64x35x35xf32>, tensor<96x64x3x3xf32>, tensor<96xf32>) -> tensor<64x96x35x35xf32>
    %330 = "onnx.Relu"(%329) {onnx_node_name = "Relu_64"} : (tensor<64x96x35x35xf32>) -> tensor<64x96x35x35xf32>
    %331 = "onnx.Conv"(%330, %28, %29) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_65", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x96x35x35xf32>, tensor<96x96x3x3xf32>, tensor<96xf32>) -> tensor<64x96x35x35xf32>
    %332 = "onnx.Relu"(%331) {onnx_node_name = "Relu_66"} : (tensor<64x96x35x35xf32>) -> tensor<64x96x35x35xf32>
    %333 = "onnx.AveragePool"(%275) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_69", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x256x35x35xf32>) -> tensor<64x256x35x35xf32>
    %334 = "onnx.Dim"(%333) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %335 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %336 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %337 = "onnx.Concat"(%334, %335, %336) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %338 = "onnx.Reshape"(%333, %337) {allowzero = 0 : si64} : (tensor<64x256x35x35xf32>, tensor<3xi64>) -> tensor<64x256x64xf32>
    %339 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %340 = "onnx.Reshape"(%30, %339) {allowzero = 0 : si64} : (tensor<64x256x1x1xf32>, tensor<2xi64>) -> tensor<64x256xf32>
    %341 = "onnx.MatMul"(%340, %338) : (tensor<64x256xf32>, tensor<64x256x64xf32>) -> tensor<64x64x64xf32>
    %342 = "onnx.Constant"() {value = dense<[[[-0.264323711], [4.41687393], [0.322549582], [4.31044436], [2.0715239], [1.01743019], [0.089721024], [3.0462265], [-3.45316887], [2.22231746], [-3.53680205], [0.863870859], [0.174234062], [-0.938692629], [-0.992606818], [0.581918538], [-0.120945215], [-4.092890e+00], [-0.187948555], [0.75053668], [1.30423355], [0.901359915], [1.93197322], [3.93627262], [-0.252012849], [2.3096242], [3.99776936], [3.12586427], [-0.875489234], [3.58922243], [-3.00712109], [-1.38161588], [3.07666183], [-0.748174429], [1.2188518], [0.85160011], [-1.76237369], [0.315428257], [-3.47845459], [2.7358911], [-1.5423727], [0.255971432], [-0.752405763], [2.19922113], [2.45454526], [4.25946426], [-4.662500e-01], [-3.437500e+00], [0.204859316], [1.13226366], [1.13294411], [1.91332507], [0.585991919], [1.2905519], [1.06380773], [-0.333001435], [-0.841067433], [2.116660e+00], [-1.13012934], [1.70603442], [-1.76046836], [0.699772357], [-0.426680744], [-0.974404811]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %343 = "onnx.Add"(%341, %342) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %344 = "onnx.Dim"(%333) {axis = 0 : si64} : (tensor<64x256x35x35xf32>) -> tensor<1xi64>
    %345 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %346 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %347 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %348 = "onnx.Concat"(%344, %347, %345, %346) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %349 = "onnx.Reshape"(%343, %348) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %350 = "onnx.Relu"(%349) {onnx_node_name = "Relu_71"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %351 = "onnx.Concat"(%292, %311, %332, %350) {axis = 1 : si64, onnx_node_name = "Concat_72"} : (tensor<64x64x35x35xf32>, tensor<64x64x35x35xf32>, tensor<64x96x35x35xf32>, tensor<64x64x35x35xf32>) -> tensor<64x288x35x35xf32>
    %352 = "onnx.Dim"(%351) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %353 = "onnx.Constant"() {value = dense<288> : tensor<1xi64>} : () -> tensor<1xi64>
    %354 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %355 = "onnx.Concat"(%352, %353, %354) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %356 = "onnx.Reshape"(%351, %355) {allowzero = 0 : si64} : (tensor<64x288x35x35xf32>, tensor<3xi64>) -> tensor<64x288x64xf32>
    %357 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %358 = "onnx.Reshape"(%31, %357) {allowzero = 0 : si64} : (tensor<64x288x1x1xf32>, tensor<2xi64>) -> tensor<64x288xf32>
    %359 = "onnx.MatMul"(%358, %356) : (tensor<64x288xf32>, tensor<64x288x64xf32>) -> tensor<64x64x64xf32>
    %360 = "onnx.Constant"() {value = dense<[[[1.83216107], [-0.927242041], [0.0279891677], [-2.91937733], [-0.353359759], [1.27674294], [-0.423970282], [-0.475790977], [-2.945858], [0.63374418], [0.371654928], [0.743366897], [0.183821306], [0.186399072], [-0.0406382978], [0.573420823], [-1.26372981], [1.4210881], [-2.98135233], [-0.516083479], [4.30072403], [0.63870269], [-0.145317093], [-1.40024734], [-0.00697618723], [-1.25636744], [2.26893878], [-0.295635343], [0.5971421], [1.07621789], [-0.0493945479], [-1.49773765], [-0.56029129], [0.828828573], [0.155177325], [2.38060474], [1.00696111], [1.17845166], [3.58708644], [-1.89515495], [0.397680223], [0.638139426], [1.07958603], [-0.558215857], [-1.48407578], [-0.193568826], [1.33926439], [1.98307514], [-2.4844451], [0.793666124], [-0.153682292], [-1.34783053], [2.66217923], [-0.509748101], [1.95605063], [1.55869102], [0.651033103], [-1.60817075], [-0.685210704], [1.2000494], [-0.177875772], [0.135787696], [-0.321203321], [-7.95643777E-4]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %361 = "onnx.Add"(%359, %360) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %362 = "onnx.Dim"(%351) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %363 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %364 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %365 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %366 = "onnx.Concat"(%362, %365, %363, %364) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %367 = "onnx.Reshape"(%361, %366) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %368 = "onnx.Relu"(%367) {onnx_node_name = "Relu_74"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %369 = "onnx.Dim"(%351) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %370 = "onnx.Constant"() {value = dense<288> : tensor<1xi64>} : () -> tensor<1xi64>
    %371 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %372 = "onnx.Concat"(%369, %370, %371) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %373 = "onnx.Reshape"(%351, %372) {allowzero = 0 : si64} : (tensor<64x288x35x35xf32>, tensor<3xi64>) -> tensor<64x288x64xf32>
    %374 = "onnx.Constant"() {value = dense<[48, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %375 = "onnx.Reshape"(%32, %374) {allowzero = 0 : si64} : (tensor<48x288x1x1xf32>, tensor<2xi64>) -> tensor<48x288xf32>
    %376 = "onnx.MatMul"(%375, %373) : (tensor<48x288xf32>, tensor<64x288x64xf32>) -> tensor<64x48x64xf32>
    %377 = "onnx.Constant"() {value = dense<[[[-1.28406954], [1.93365264], [-2.822090e-01], [-2.30477047], [-0.451515675], [-0.0506169647], [0.140444383], [-1.94176757], [0.163884476], [2.25102401], [-0.745784699], [0.504520714], [-2.46328187], [-0.195279747], [0.51064676], [2.08258581], [0.466414809], [0.709277808], [-0.970585107], [1.10546744], [1.90588212], [1.3246845], [2.002850e+00], [-0.140165985], [1.94345653], [1.11116874], [-2.15620685], [-0.591149926], [-1.44521916], [2.22094536], [0.827665091], [0.72441858], [2.093436], [-0.281654477], [1.66640425], [0.696517825], [-0.864346743], [1.45681405], [0.541763723], [-2.36106682], [2.1493175], [-1.63264966], [-1.05032969], [-2.93439603], [0.597571731], [0.853695213], [-0.663273751], [2.687280e+00]]]> : tensor<1x48x1xf32>} : () -> tensor<1x48x1xf32>
    %378 = "onnx.Add"(%376, %377) : (tensor<64x48x64xf32>, tensor<1x48x1xf32>) -> tensor<64x48x64xf32>
    %379 = "onnx.Dim"(%351) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %380 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %381 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %382 = "onnx.Constant"() {value = dense<48> : tensor<1xi64>} : () -> tensor<1xi64>
    %383 = "onnx.Concat"(%379, %382, %380, %381) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %384 = "onnx.Reshape"(%378, %383) {allowzero = 0 : si64} : (tensor<64x48x64xf32>, tensor<4xi64>) -> tensor<64x48x35x35xf32>
    %385 = "onnx.Relu"(%384) {onnx_node_name = "Relu_76"} : (tensor<64x48x35x35xf32>) -> tensor<64x48x35x35xf32>
    %386 = "onnx.Conv"(%385, %33, %34) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [5, 5], onnx_node_name = "Conv_77", pads = [2, 2, 2, 2], strides = [1, 1]} : (tensor<64x48x35x35xf32>, tensor<64x48x5x5xf32>, tensor<64xf32>) -> tensor<64x64x35x35xf32>
    %387 = "onnx.Relu"(%386) {onnx_node_name = "Relu_78"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %388 = "onnx.Dim"(%351) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %389 = "onnx.Constant"() {value = dense<288> : tensor<1xi64>} : () -> tensor<1xi64>
    %390 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %391 = "onnx.Concat"(%388, %389, %390) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %392 = "onnx.Reshape"(%351, %391) {allowzero = 0 : si64} : (tensor<64x288x35x35xf32>, tensor<3xi64>) -> tensor<64x288x64xf32>
    %393 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %394 = "onnx.Reshape"(%35, %393) {allowzero = 0 : si64} : (tensor<64x288x1x1xf32>, tensor<2xi64>) -> tensor<64x288xf32>
    %395 = "onnx.MatMul"(%394, %392) : (tensor<64x288xf32>, tensor<64x288x64xf32>) -> tensor<64x64x64xf32>
    %396 = "onnx.Constant"() {value = dense<[[[-1.78424311], [-0.841147541], [-1.49751604], [-2.12292051], [1.41006529], [-0.200740978], [-2.24936652], [-0.684069514], [-2.34058475], [-2.4108212], [-1.27613664], [-0.507396936], [-1.58795881], [1.90702701], [0.565545142], [-2.28217745], [0.774171114], [-0.690235555], [-0.622764647], [-1.45315027], [-0.515803099], [-0.0873779579], [-0.947201967], [-0.483309031], [0.248901352], [5.04585266], [2.05308914], [0.773613512], [-0.76111114], [-0.210310653], [0.497335434], [0.272908568], [-0.106500208], [1.68603086], [-1.53710544], [-0.0653381348], [0.0248904228], [-2.53115559], [-0.051007092], [-0.0511821806], [-0.0984897911], [-2.55516315], [-2.70759964], [3.14163351], [-6.676080e-01], [-0.886321187], [-0.764313101], [-3.2686038], [-1.12973762], [-0.40952006], [-2.42394018], [-5.614970e-01], [0.249147207], [0.0403347611], [-0.195888788], [0.380401582], [1.02085471], [0.791945576], [-1.03563333], [0.497173458], [2.91009831], [0.399121106], [2.03886318], [3.64252663]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %397 = "onnx.Add"(%395, %396) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %398 = "onnx.Dim"(%351) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %399 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %400 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %401 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %402 = "onnx.Concat"(%398, %401, %399, %400) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %403 = "onnx.Reshape"(%397, %402) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %404 = "onnx.Relu"(%403) {onnx_node_name = "Relu_80"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %405 = "onnx.Conv"(%404, %36, %37) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_81", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x64x35x35xf32>, tensor<96x64x3x3xf32>, tensor<96xf32>) -> tensor<64x96x35x35xf32>
    %406 = "onnx.Relu"(%405) {onnx_node_name = "Relu_82"} : (tensor<64x96x35x35xf32>) -> tensor<64x96x35x35xf32>
    %407 = "onnx.Conv"(%406, %38, %39) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_83", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x96x35x35xf32>, tensor<96x96x3x3xf32>, tensor<96xf32>) -> tensor<64x96x35x35xf32>
    %408 = "onnx.Relu"(%407) {onnx_node_name = "Relu_84"} : (tensor<64x96x35x35xf32>) -> tensor<64x96x35x35xf32>
    %409 = "onnx.AveragePool"(%351) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_87", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x288x35x35xf32>) -> tensor<64x288x35x35xf32>
    %410 = "onnx.Dim"(%409) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %411 = "onnx.Constant"() {value = dense<288> : tensor<1xi64>} : () -> tensor<1xi64>
    %412 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %413 = "onnx.Concat"(%410, %411, %412) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %414 = "onnx.Reshape"(%409, %413) {allowzero = 0 : si64} : (tensor<64x288x35x35xf32>, tensor<3xi64>) -> tensor<64x288x64xf32>
    %415 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %416 = "onnx.Reshape"(%40, %415) {allowzero = 0 : si64} : (tensor<64x288x1x1xf32>, tensor<2xi64>) -> tensor<64x288xf32>
    %417 = "onnx.MatMul"(%416, %414) : (tensor<64x288xf32>, tensor<64x288x64xf32>) -> tensor<64x64x64xf32>
    %418 = "onnx.Constant"() {value = dense<[[[-0.844534695], [0.830715537], [-0.912094355], [-0.937882781], [-1.05264473], [1.84711885], [-0.785269618], [-0.422189623], [0.881768703], [2.00252151], [-0.209745288], [-2.97806954], [-0.760324358], [1.49305367], [0.720675349], [1.02778316], [0.838226557], [1.27714491], [-1.37708402], [-1.54911375], [-0.792247116], [-0.511855185], [-1.02378941], [-0.994315505], [-0.520998657], [-3.59747934], [-2.82415557], [-2.82403517], [1.54716492], [1.93989766], [-1.17762589], [-0.199081868], [1.82805252], [0.973117232], [1.2121942], [-2.81189108], [-1.05697477], [-0.0968264639], [0.155403793], [2.410410e+00], [-0.133537918], [1.42885768], [2.46672869], [2.74028397], [-1.33011556], [3.05680561], [0.574164748], [-0.298623562], [0.306209683], [-0.215582967], [-2.36527371], [-0.118938565], [-0.557212353], [-0.0197560787], [2.89454794], [-1.8063786], [-4.77498484], [-0.964530467], [0.189049184], [-9.480500e-02], [-1.42111492], [1.01240396], [1.41974068], [0.781782329]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %419 = "onnx.Add"(%417, %418) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %420 = "onnx.Dim"(%409) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %421 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %422 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %423 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %424 = "onnx.Concat"(%420, %423, %421, %422) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %425 = "onnx.Reshape"(%419, %424) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %426 = "onnx.Relu"(%425) {onnx_node_name = "Relu_89"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %427 = "onnx.Concat"(%368, %387, %408, %426) {axis = 1 : si64, onnx_node_name = "Concat_90"} : (tensor<64x64x35x35xf32>, tensor<64x64x35x35xf32>, tensor<64x96x35x35xf32>, tensor<64x64x35x35xf32>) -> tensor<64x288x35x35xf32>
    %428 = "onnx.Conv"(%427, %41, %42) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_91", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<64x288x35x35xf32>, tensor<384x288x3x3xf32>, tensor<384xf32>) -> tensor<64x384x17x17xf32>
    %429 = "onnx.Relu"(%428) {onnx_node_name = "Relu_92"} : (tensor<64x384x17x17xf32>) -> tensor<64x384x17x17xf32>
    %430 = "onnx.Dim"(%427) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %431 = "onnx.Constant"() {value = dense<288> : tensor<1xi64>} : () -> tensor<1xi64>
    %432 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %433 = "onnx.Concat"(%430, %431, %432) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %434 = "onnx.Reshape"(%427, %433) {allowzero = 0 : si64} : (tensor<64x288x35x35xf32>, tensor<3xi64>) -> tensor<64x288x64xf32>
    %435 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %436 = "onnx.Reshape"(%43, %435) {allowzero = 0 : si64} : (tensor<64x288x1x1xf32>, tensor<2xi64>) -> tensor<64x288xf32>
    %437 = "onnx.MatMul"(%436, %434) : (tensor<64x288xf32>, tensor<64x288x64xf32>) -> tensor<64x64x64xf32>
    %438 = "onnx.Constant"() {value = dense<[[[-1.46911168], [1.22657251], [1.42839646], [-0.221390724], [-0.978853166], [3.5548749], [-0.251358688], [0.0782753527], [-2.39883137], [-1.94482613], [-0.210702538], [-0.331150651], [-0.765224039], [-0.849804461], [0.342932522], [-0.495088637], [2.0229578], [-1.85639668], [0.182673156], [-2.22979546], [-0.751384377], [-0.925413131], [-2.16191864], [-1.18619156], [-0.227042139], [-0.362068981], [0.486620784], [-1.27978337], [0.825107336], [-1.132653], [-2.21682358], [0.346993297], [-0.811932444], [-0.902998805], [-0.355991215], [-2.32964873], [1.10474753], [0.272839457], [0.368401289], [-0.971152663], [0.834477424], [-1.12759328], [-1.42997146], [-1.93927741], [1.16696811], [-1.95558929], [1.89669156], [-1.80778909], [-1.42435241], [0.132137299], [-0.0126542747], [0.284844935], [-0.0441632569], [1.13316369], [-0.913254797], [-1.47028244], [-0.475932389], [-1.3884927], [0.152247861], [-1.16394663], [-1.36790502], [-1.1885612], [-1.16665709], [-1.81553066]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %439 = "onnx.Add"(%437, %438) : (tensor<64x64x64xf32>, tensor<1x64x1xf32>) -> tensor<64x64x64xf32>
    %440 = "onnx.Dim"(%427) {axis = 0 : si64} : (tensor<64x288x35x35xf32>) -> tensor<1xi64>
    %441 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %442 = "onnx.Constant"() {value = dense<35> : tensor<1xi64>} : () -> tensor<1xi64>
    %443 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %444 = "onnx.Concat"(%440, %443, %441, %442) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %445 = "onnx.Reshape"(%439, %444) {allowzero = 0 : si64} : (tensor<64x64x64xf32>, tensor<4xi64>) -> tensor<64x64x35x35xf32>
    %446 = "onnx.Relu"(%445) {onnx_node_name = "Relu_94"} : (tensor<64x64x35x35xf32>) -> tensor<64x64x35x35xf32>
    %447 = "onnx.Conv"(%446, %44, %45) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_95", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x64x35x35xf32>, tensor<96x64x3x3xf32>, tensor<96xf32>) -> tensor<64x96x35x35xf32>
    %448 = "onnx.Relu"(%447) {onnx_node_name = "Relu_96"} : (tensor<64x96x35x35xf32>) -> tensor<64x96x35x35xf32>
    %449 = "onnx.Conv"(%448, %46, %47) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_97", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<64x96x35x35xf32>, tensor<96x96x3x3xf32>, tensor<96xf32>) -> tensor<64x96x17x17xf32>
    %450 = "onnx.Relu"(%449) {onnx_node_name = "Relu_98"} : (tensor<64x96x17x17xf32>) -> tensor<64x96x17x17xf32>
    %451 = "onnx.MaxPoolSingleOut"(%427) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "MaxPool_99", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<64x288x35x35xf32>) -> tensor<64x288x17x17xf32>
    %452 = "onnx.Concat"(%429, %450, %451) {axis = 1 : si64, onnx_node_name = "Concat_100"} : (tensor<64x384x17x17xf32>, tensor<64x96x17x17xf32>, tensor<64x288x17x17xf32>) -> tensor<64x768x17x17xf32>
    %453 = "onnx.Dim"(%452) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %454 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %455 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %456 = "onnx.Concat"(%453, %454, %455) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %457 = "onnx.Reshape"(%452, %456) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %458 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %459 = "onnx.Reshape"(%48, %458) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %460 = "onnx.MatMul"(%459, %457) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %461 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %462 = "onnx.Add"(%460, %461) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %463 = "onnx.Dim"(%452) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %464 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %465 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %466 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %467 = "onnx.Concat"(%463, %466, %464, %465) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %468 = "onnx.Reshape"(%462, %467) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %469 = "onnx.Relu"(%468) {onnx_node_name = "Relu_102"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %470 = "onnx.Dim"(%452) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %471 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %472 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %473 = "onnx.Concat"(%470, %471, %472) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %474 = "onnx.Reshape"(%452, %473) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %475 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %476 = "onnx.Reshape"(%49, %475) {allowzero = 0 : si64} : (tensor<128x768x1x1xf32>, tensor<2xi64>) -> tensor<128x768xf32>
    %477 = "onnx.MatMul"(%476, %474) : (tensor<128x768xf32>, tensor<64x768x64xf32>) -> tensor<64x128x64xf32>
    %478 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %479 = "onnx.Add"(%477, %478) : (tensor<64x128x64xf32>, tensor<1x128x1xf32>) -> tensor<64x128x64xf32>
    %480 = "onnx.Dim"(%452) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %481 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %482 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %483 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %484 = "onnx.Concat"(%480, %483, %481, %482) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %485 = "onnx.Reshape"(%479, %484) {allowzero = 0 : si64} : (tensor<64x128x64xf32>, tensor<4xi64>) -> tensor<64x128x17x17xf32>
    %486 = "onnx.Relu"(%485) {onnx_node_name = "Relu_104"} : (tensor<64x128x17x17xf32>) -> tensor<64x128x17x17xf32>
    %487 = "onnx.Conv"(%486, %50, %51) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_105", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x128x17x17xf32>, tensor<128x128x1x7xf32>, tensor<128xf32>) -> tensor<64x128x17x17xf32>
    %488 = "onnx.Relu"(%487) {onnx_node_name = "Relu_106"} : (tensor<64x128x17x17xf32>) -> tensor<64x128x17x17xf32>
    %489 = "onnx.Conv"(%488, %52, %53) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_107", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x128x17x17xf32>, tensor<192x128x7x1xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %490 = "onnx.Relu"(%489) {onnx_node_name = "Relu_108"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %491 = "onnx.Dim"(%452) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %492 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %493 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %494 = "onnx.Concat"(%491, %492, %493) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %495 = "onnx.Reshape"(%452, %494) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %496 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %497 = "onnx.Reshape"(%54, %496) {allowzero = 0 : si64} : (tensor<128x768x1x1xf32>, tensor<2xi64>) -> tensor<128x768xf32>
    %498 = "onnx.MatMul"(%497, %495) : (tensor<128x768xf32>, tensor<64x768x64xf32>) -> tensor<64x128x64xf32>
    %499 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %500 = "onnx.Add"(%498, %499) : (tensor<64x128x64xf32>, tensor<1x128x1xf32>) -> tensor<64x128x64xf32>
    %501 = "onnx.Dim"(%452) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %502 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %503 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %504 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %505 = "onnx.Concat"(%501, %504, %502, %503) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %506 = "onnx.Reshape"(%500, %505) {allowzero = 0 : si64} : (tensor<64x128x64xf32>, tensor<4xi64>) -> tensor<64x128x17x17xf32>
    %507 = "onnx.Relu"(%506) {onnx_node_name = "Relu_110"} : (tensor<64x128x17x17xf32>) -> tensor<64x128x17x17xf32>
    %508 = "onnx.Conv"(%507, %55, %56) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_111", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x128x17x17xf32>, tensor<128x128x7x1xf32>, tensor<128xf32>) -> tensor<64x128x17x17xf32>
    %509 = "onnx.Relu"(%508) {onnx_node_name = "Relu_112"} : (tensor<64x128x17x17xf32>) -> tensor<64x128x17x17xf32>
    %510 = "onnx.Conv"(%509, %57, %58) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_113", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x128x17x17xf32>, tensor<128x128x1x7xf32>, tensor<128xf32>) -> tensor<64x128x17x17xf32>
    %511 = "onnx.Relu"(%510) {onnx_node_name = "Relu_114"} : (tensor<64x128x17x17xf32>) -> tensor<64x128x17x17xf32>
    %512 = "onnx.Conv"(%511, %59, %60) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_115", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x128x17x17xf32>, tensor<128x128x7x1xf32>, tensor<128xf32>) -> tensor<64x128x17x17xf32>
    %513 = "onnx.Relu"(%512) {onnx_node_name = "Relu_116"} : (tensor<64x128x17x17xf32>) -> tensor<64x128x17x17xf32>
    %514 = "onnx.Conv"(%513, %61, %62) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_117", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x128x17x17xf32>, tensor<192x128x1x7xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %515 = "onnx.Relu"(%514) {onnx_node_name = "Relu_118"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %516 = "onnx.AveragePool"(%452) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_121", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x768x17x17xf32>) -> tensor<64x768x17x17xf32>
    %517 = "onnx.Dim"(%516) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %518 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %519 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %520 = "onnx.Concat"(%517, %518, %519) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %521 = "onnx.Reshape"(%516, %520) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %522 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %523 = "onnx.Reshape"(%63, %522) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %524 = "onnx.MatMul"(%523, %521) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %525 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %526 = "onnx.Add"(%524, %525) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %527 = "onnx.Dim"(%516) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %528 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %529 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %530 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %531 = "onnx.Concat"(%527, %530, %528, %529) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %532 = "onnx.Reshape"(%526, %531) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %533 = "onnx.Relu"(%532) {onnx_node_name = "Relu_123"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %534 = "onnx.Concat"(%469, %490, %515, %533) {axis = 1 : si64, onnx_node_name = "Concat_124"} : (tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>) -> tensor<64x768x17x17xf32>
    %535 = "onnx.Dim"(%534) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %536 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %537 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %538 = "onnx.Concat"(%535, %536, %537) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %539 = "onnx.Reshape"(%534, %538) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %540 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %541 = "onnx.Reshape"(%64, %540) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %542 = "onnx.MatMul"(%541, %539) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %543 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %544 = "onnx.Add"(%542, %543) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %545 = "onnx.Dim"(%534) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %546 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %547 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %548 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %549 = "onnx.Concat"(%545, %548, %546, %547) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %550 = "onnx.Reshape"(%544, %549) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %551 = "onnx.Relu"(%550) {onnx_node_name = "Relu_126"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %552 = "onnx.Dim"(%534) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %553 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %554 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %555 = "onnx.Concat"(%552, %553, %554) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %556 = "onnx.Reshape"(%534, %555) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %557 = "onnx.Constant"() {value = dense<[160, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %558 = "onnx.Reshape"(%65, %557) {allowzero = 0 : si64} : (tensor<160x768x1x1xf32>, tensor<2xi64>) -> tensor<160x768xf32>
    %559 = "onnx.MatMul"(%558, %556) : (tensor<160x768xf32>, tensor<64x768x64xf32>) -> tensor<64x160x64xf32>
    %560 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x160x1xf32>} : () -> tensor<1x160x1xf32>
    %561 = "onnx.Add"(%559, %560) : (tensor<64x160x64xf32>, tensor<1x160x1xf32>) -> tensor<64x160x64xf32>
    %562 = "onnx.Dim"(%534) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %563 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %564 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %565 = "onnx.Constant"() {value = dense<160> : tensor<1xi64>} : () -> tensor<1xi64>
    %566 = "onnx.Concat"(%562, %565, %563, %564) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %567 = "onnx.Reshape"(%561, %566) {allowzero = 0 : si64} : (tensor<64x160x64xf32>, tensor<4xi64>) -> tensor<64x160x17x17xf32>
    %568 = "onnx.Relu"(%567) {onnx_node_name = "Relu_128"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %569 = "onnx.Conv"(%568, %66, %67) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_129", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x1x7xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %570 = "onnx.Relu"(%569) {onnx_node_name = "Relu_130"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %571 = "onnx.Conv"(%570, %68, %69) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_131", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<192x160x7x1xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %572 = "onnx.Relu"(%571) {onnx_node_name = "Relu_132"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %573 = "onnx.Dim"(%534) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %574 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %575 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %576 = "onnx.Concat"(%573, %574, %575) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %577 = "onnx.Reshape"(%534, %576) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %578 = "onnx.Constant"() {value = dense<[160, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %579 = "onnx.Reshape"(%70, %578) {allowzero = 0 : si64} : (tensor<160x768x1x1xf32>, tensor<2xi64>) -> tensor<160x768xf32>
    %580 = "onnx.MatMul"(%579, %577) : (tensor<160x768xf32>, tensor<64x768x64xf32>) -> tensor<64x160x64xf32>
    %581 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x160x1xf32>} : () -> tensor<1x160x1xf32>
    %582 = "onnx.Add"(%580, %581) : (tensor<64x160x64xf32>, tensor<1x160x1xf32>) -> tensor<64x160x64xf32>
    %583 = "onnx.Dim"(%534) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %584 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %585 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %586 = "onnx.Constant"() {value = dense<160> : tensor<1xi64>} : () -> tensor<1xi64>
    %587 = "onnx.Concat"(%583, %586, %584, %585) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %588 = "onnx.Reshape"(%582, %587) {allowzero = 0 : si64} : (tensor<64x160x64xf32>, tensor<4xi64>) -> tensor<64x160x17x17xf32>
    %589 = "onnx.Relu"(%588) {onnx_node_name = "Relu_134"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %590 = "onnx.Conv"(%589, %71, %72) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_135", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x7x1xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %591 = "onnx.Relu"(%590) {onnx_node_name = "Relu_136"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %592 = "onnx.Conv"(%591, %73, %74) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_137", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x1x7xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %593 = "onnx.Relu"(%592) {onnx_node_name = "Relu_138"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %594 = "onnx.Conv"(%593, %75, %76) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_139", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x7x1xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %595 = "onnx.Relu"(%594) {onnx_node_name = "Relu_140"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %596 = "onnx.Conv"(%595, %77, %78) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_141", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<192x160x1x7xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %597 = "onnx.Relu"(%596) {onnx_node_name = "Relu_142"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %598 = "onnx.AveragePool"(%534) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_145", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x768x17x17xf32>) -> tensor<64x768x17x17xf32>
    %599 = "onnx.Dim"(%598) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %600 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %601 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %602 = "onnx.Concat"(%599, %600, %601) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %603 = "onnx.Reshape"(%598, %602) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %604 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %605 = "onnx.Reshape"(%79, %604) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %606 = "onnx.MatMul"(%605, %603) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %607 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %608 = "onnx.Add"(%606, %607) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %609 = "onnx.Dim"(%598) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %610 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %611 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %612 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %613 = "onnx.Concat"(%609, %612, %610, %611) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %614 = "onnx.Reshape"(%608, %613) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %615 = "onnx.Relu"(%614) {onnx_node_name = "Relu_147"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %616 = "onnx.Concat"(%551, %572, %597, %615) {axis = 1 : si64, onnx_node_name = "Concat_148"} : (tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>) -> tensor<64x768x17x17xf32>
    %617 = "onnx.Dim"(%616) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %618 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %619 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %620 = "onnx.Concat"(%617, %618, %619) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %621 = "onnx.Reshape"(%616, %620) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %622 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %623 = "onnx.Reshape"(%80, %622) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %624 = "onnx.MatMul"(%623, %621) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %625 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %626 = "onnx.Add"(%624, %625) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %627 = "onnx.Dim"(%616) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %628 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %629 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %630 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %631 = "onnx.Concat"(%627, %630, %628, %629) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %632 = "onnx.Reshape"(%626, %631) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %633 = "onnx.Relu"(%632) {onnx_node_name = "Relu_150"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %634 = "onnx.Dim"(%616) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %635 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %636 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %637 = "onnx.Concat"(%634, %635, %636) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %638 = "onnx.Reshape"(%616, %637) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %639 = "onnx.Constant"() {value = dense<[160, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %640 = "onnx.Reshape"(%81, %639) {allowzero = 0 : si64} : (tensor<160x768x1x1xf32>, tensor<2xi64>) -> tensor<160x768xf32>
    %641 = "onnx.MatMul"(%640, %638) : (tensor<160x768xf32>, tensor<64x768x64xf32>) -> tensor<64x160x64xf32>
    %642 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x160x1xf32>} : () -> tensor<1x160x1xf32>
    %643 = "onnx.Add"(%641, %642) : (tensor<64x160x64xf32>, tensor<1x160x1xf32>) -> tensor<64x160x64xf32>
    %644 = "onnx.Dim"(%616) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %645 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %646 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %647 = "onnx.Constant"() {value = dense<160> : tensor<1xi64>} : () -> tensor<1xi64>
    %648 = "onnx.Concat"(%644, %647, %645, %646) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %649 = "onnx.Reshape"(%643, %648) {allowzero = 0 : si64} : (tensor<64x160x64xf32>, tensor<4xi64>) -> tensor<64x160x17x17xf32>
    %650 = "onnx.Relu"(%649) {onnx_node_name = "Relu_152"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %651 = "onnx.Conv"(%650, %82, %83) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_153", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x1x7xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %652 = "onnx.Relu"(%651) {onnx_node_name = "Relu_154"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %653 = "onnx.Conv"(%652, %84, %85) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_155", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<192x160x7x1xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %654 = "onnx.Relu"(%653) {onnx_node_name = "Relu_156"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %655 = "onnx.Dim"(%616) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %656 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %657 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %658 = "onnx.Concat"(%655, %656, %657) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %659 = "onnx.Reshape"(%616, %658) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %660 = "onnx.Constant"() {value = dense<[160, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %661 = "onnx.Reshape"(%86, %660) {allowzero = 0 : si64} : (tensor<160x768x1x1xf32>, tensor<2xi64>) -> tensor<160x768xf32>
    %662 = "onnx.MatMul"(%661, %659) : (tensor<160x768xf32>, tensor<64x768x64xf32>) -> tensor<64x160x64xf32>
    %663 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x160x1xf32>} : () -> tensor<1x160x1xf32>
    %664 = "onnx.Add"(%662, %663) : (tensor<64x160x64xf32>, tensor<1x160x1xf32>) -> tensor<64x160x64xf32>
    %665 = "onnx.Dim"(%616) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %666 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %667 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %668 = "onnx.Constant"() {value = dense<160> : tensor<1xi64>} : () -> tensor<1xi64>
    %669 = "onnx.Concat"(%665, %668, %666, %667) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %670 = "onnx.Reshape"(%664, %669) {allowzero = 0 : si64} : (tensor<64x160x64xf32>, tensor<4xi64>) -> tensor<64x160x17x17xf32>
    %671 = "onnx.Relu"(%670) {onnx_node_name = "Relu_158"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %672 = "onnx.Conv"(%671, %87, %88) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_159", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x7x1xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %673 = "onnx.Relu"(%672) {onnx_node_name = "Relu_160"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %674 = "onnx.Conv"(%673, %89, %90) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_161", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x1x7xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %675 = "onnx.Relu"(%674) {onnx_node_name = "Relu_162"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %676 = "onnx.Conv"(%675, %91, %92) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_163", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<160x160x7x1xf32>, tensor<160xf32>) -> tensor<64x160x17x17xf32>
    %677 = "onnx.Relu"(%676) {onnx_node_name = "Relu_164"} : (tensor<64x160x17x17xf32>) -> tensor<64x160x17x17xf32>
    %678 = "onnx.Conv"(%677, %93, %94) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_165", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x160x17x17xf32>, tensor<192x160x1x7xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %679 = "onnx.Relu"(%678) {onnx_node_name = "Relu_166"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %680 = "onnx.AveragePool"(%616) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_169", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x768x17x17xf32>) -> tensor<64x768x17x17xf32>
    %681 = "onnx.Dim"(%680) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %682 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %683 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %684 = "onnx.Concat"(%681, %682, %683) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %685 = "onnx.Reshape"(%680, %684) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %686 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %687 = "onnx.Reshape"(%95, %686) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %688 = "onnx.MatMul"(%687, %685) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %689 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %690 = "onnx.Add"(%688, %689) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %691 = "onnx.Dim"(%680) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %692 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %693 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %694 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %695 = "onnx.Concat"(%691, %694, %692, %693) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %696 = "onnx.Reshape"(%690, %695) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %697 = "onnx.Relu"(%696) {onnx_node_name = "Relu_171"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %698 = "onnx.Concat"(%633, %654, %679, %697) {axis = 1 : si64, onnx_node_name = "Concat_172"} : (tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>) -> tensor<64x768x17x17xf32>
    %699 = "onnx.Dim"(%698) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %700 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %701 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %702 = "onnx.Concat"(%699, %700, %701) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %703 = "onnx.Reshape"(%698, %702) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %704 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %705 = "onnx.Reshape"(%96, %704) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %706 = "onnx.MatMul"(%705, %703) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %707 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %708 = "onnx.Add"(%706, %707) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %709 = "onnx.Dim"(%698) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %710 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %711 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %712 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %713 = "onnx.Concat"(%709, %712, %710, %711) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %714 = "onnx.Reshape"(%708, %713) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %715 = "onnx.Relu"(%714) {onnx_node_name = "Relu_174"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %716 = "onnx.Dim"(%698) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %717 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %718 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %719 = "onnx.Concat"(%716, %717, %718) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %720 = "onnx.Reshape"(%698, %719) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %721 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %722 = "onnx.Reshape"(%97, %721) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %723 = "onnx.MatMul"(%722, %720) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %724 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %725 = "onnx.Add"(%723, %724) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %726 = "onnx.Dim"(%698) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %727 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %728 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %729 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %730 = "onnx.Concat"(%726, %729, %727, %728) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %731 = "onnx.Reshape"(%725, %730) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %732 = "onnx.Relu"(%731) {onnx_node_name = "Relu_176"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %733 = "onnx.Conv"(%732, %98, %99) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_177", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x1x7xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %734 = "onnx.Relu"(%733) {onnx_node_name = "Relu_178"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %735 = "onnx.Conv"(%734, %100, %101) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_179", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x7x1xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %736 = "onnx.Relu"(%735) {onnx_node_name = "Relu_180"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %737 = "onnx.Dim"(%698) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %738 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %739 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %740 = "onnx.Concat"(%737, %738, %739) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %741 = "onnx.Reshape"(%698, %740) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %742 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %743 = "onnx.Reshape"(%102, %742) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %744 = "onnx.MatMul"(%743, %741) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %745 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %746 = "onnx.Add"(%744, %745) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %747 = "onnx.Dim"(%698) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %748 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %749 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %750 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %751 = "onnx.Concat"(%747, %750, %748, %749) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %752 = "onnx.Reshape"(%746, %751) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %753 = "onnx.Relu"(%752) {onnx_node_name = "Relu_182"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %754 = "onnx.Conv"(%753, %103, %104) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_183", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x7x1xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %755 = "onnx.Relu"(%754) {onnx_node_name = "Relu_184"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %756 = "onnx.Conv"(%755, %105, %106) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_185", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x1x7xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %757 = "onnx.Relu"(%756) {onnx_node_name = "Relu_186"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %758 = "onnx.Conv"(%757, %107, %108) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_187", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x7x1xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %759 = "onnx.Relu"(%758) {onnx_node_name = "Relu_188"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %760 = "onnx.Conv"(%759, %109, %110) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_189", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x1x7xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %761 = "onnx.Relu"(%760) {onnx_node_name = "Relu_190"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %762 = "onnx.AveragePool"(%698) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_193", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x768x17x17xf32>) -> tensor<64x768x17x17xf32>
    %763 = "onnx.Dim"(%762) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %764 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %765 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %766 = "onnx.Concat"(%763, %764, %765) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %767 = "onnx.Reshape"(%762, %766) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %768 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %769 = "onnx.Reshape"(%111, %768) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %770 = "onnx.MatMul"(%769, %767) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %771 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %772 = "onnx.Add"(%770, %771) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %773 = "onnx.Dim"(%762) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %774 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %775 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %776 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %777 = "onnx.Concat"(%773, %776, %774, %775) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %778 = "onnx.Reshape"(%772, %777) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %779 = "onnx.Relu"(%778) {onnx_node_name = "Relu_195"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %780 = "onnx.Concat"(%715, %736, %761, %779) {axis = 1 : si64, onnx_node_name = "Concat_196"} : (tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>, tensor<64x192x17x17xf32>) -> tensor<64x768x17x17xf32>
    %781 = "onnx.Dim"(%780) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %782 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %783 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %784 = "onnx.Concat"(%781, %782, %783) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %785 = "onnx.Reshape"(%780, %784) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %786 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %787 = "onnx.Reshape"(%112, %786) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %788 = "onnx.MatMul"(%787, %785) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %789 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %790 = "onnx.Add"(%788, %789) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %791 = "onnx.Dim"(%780) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %792 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %793 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %794 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %795 = "onnx.Concat"(%791, %794, %792, %793) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %796 = "onnx.Reshape"(%790, %795) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %797 = "onnx.Relu"(%796) {onnx_node_name = "Relu_198"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %798 = "onnx.Conv"(%797, %113, %114) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_199", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<64x192x17x17xf32>, tensor<320x192x3x3xf32>, tensor<320xf32>) -> tensor<64x320x8x8xf32>
    %799 = "onnx.Relu"(%798) {onnx_node_name = "Relu_200"} : (tensor<64x320x8x8xf32>) -> tensor<64x320x8x8xf32>
    %800 = "onnx.Dim"(%780) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %801 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %802 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %803 = "onnx.Concat"(%800, %801, %802) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %804 = "onnx.Reshape"(%780, %803) {allowzero = 0 : si64} : (tensor<64x768x17x17xf32>, tensor<3xi64>) -> tensor<64x768x64xf32>
    %805 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %806 = "onnx.Reshape"(%115, %805) {allowzero = 0 : si64} : (tensor<192x768x1x1xf32>, tensor<2xi64>) -> tensor<192x768xf32>
    %807 = "onnx.MatMul"(%806, %804) : (tensor<192x768xf32>, tensor<64x768x64xf32>) -> tensor<64x192x64xf32>
    %808 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %809 = "onnx.Add"(%807, %808) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %810 = "onnx.Dim"(%780) {axis = 0 : si64} : (tensor<64x768x17x17xf32>) -> tensor<1xi64>
    %811 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %812 = "onnx.Constant"() {value = dense<17> : tensor<1xi64>} : () -> tensor<1xi64>
    %813 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %814 = "onnx.Concat"(%810, %813, %811, %812) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %815 = "onnx.Reshape"(%809, %814) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x17x17xf32>
    %816 = "onnx.Relu"(%815) {onnx_node_name = "Relu_202"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %817 = "onnx.Conv"(%816, %116, %117) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 7], onnx_node_name = "Conv_203", pads = [0, 3, 0, 3], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x1x7xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %818 = "onnx.Relu"(%817) {onnx_node_name = "Relu_204"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %819 = "onnx.Conv"(%818, %118, %119) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 1], onnx_node_name = "Conv_205", pads = [3, 0, 3, 0], strides = [1, 1]} : (tensor<64x192x17x17xf32>, tensor<192x192x7x1xf32>, tensor<192xf32>) -> tensor<64x192x17x17xf32>
    %820 = "onnx.Relu"(%819) {onnx_node_name = "Relu_206"} : (tensor<64x192x17x17xf32>) -> tensor<64x192x17x17xf32>
    %821 = "onnx.Conv"(%820, %120, %121) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_207", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<64x192x17x17xf32>, tensor<192x192x3x3xf32>, tensor<192xf32>) -> tensor<64x192x8x8xf32>
    %822 = "onnx.Relu"(%821) {onnx_node_name = "Relu_208"} : (tensor<64x192x8x8xf32>) -> tensor<64x192x8x8xf32>
    %823 = "onnx.MaxPoolSingleOut"(%780) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "MaxPool_209", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<64x768x17x17xf32>) -> tensor<64x768x8x8xf32>
    %824 = "onnx.Concat"(%799, %822, %823) {axis = 1 : si64, onnx_node_name = "Concat_210"} : (tensor<64x320x8x8xf32>, tensor<64x192x8x8xf32>, tensor<64x768x8x8xf32>) -> tensor<64x1280x8x8xf32>
    %825 = "onnx.Dim"(%824) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %826 = "onnx.Constant"() {value = dense<1280> : tensor<1xi64>} : () -> tensor<1xi64>
    %827 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %828 = "onnx.Concat"(%825, %826, %827) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %829 = "onnx.Reshape"(%824, %828) {allowzero = 0 : si64} : (tensor<64x1280x8x8xf32>, tensor<3xi64>) -> tensor<64x1280x64xf32>
    %830 = "onnx.Constant"() {value = dense<[320, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %831 = "onnx.Reshape"(%122, %830) {allowzero = 0 : si64} : (tensor<320x1280x1x1xf32>, tensor<2xi64>) -> tensor<320x1280xf32>
    %832 = "onnx.MatMul"(%831, %829) : (tensor<320x1280xf32>, tensor<64x1280x64xf32>) -> tensor<64x320x64xf32>
    %833 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x320x1xf32>} : () -> tensor<1x320x1xf32>
    %834 = "onnx.Add"(%832, %833) : (tensor<64x320x64xf32>, tensor<1x320x1xf32>) -> tensor<64x320x64xf32>
    %835 = "onnx.Dim"(%824) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %836 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %837 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %838 = "onnx.Constant"() {value = dense<320> : tensor<1xi64>} : () -> tensor<1xi64>
    %839 = "onnx.Concat"(%835, %838, %836, %837) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %840 = "onnx.Reshape"(%834, %839) {allowzero = 0 : si64} : (tensor<64x320x64xf32>, tensor<4xi64>) -> tensor<64x320x8x8xf32>
    %841 = "onnx.Relu"(%840) {onnx_node_name = "Relu_212"} : (tensor<64x320x8x8xf32>) -> tensor<64x320x8x8xf32>
    %842 = "onnx.Dim"(%824) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %843 = "onnx.Constant"() {value = dense<1280> : tensor<1xi64>} : () -> tensor<1xi64>
    %844 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %845 = "onnx.Concat"(%842, %843, %844) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %846 = "onnx.Reshape"(%824, %845) {allowzero = 0 : si64} : (tensor<64x1280x8x8xf32>, tensor<3xi64>) -> tensor<64x1280x64xf32>
    %847 = "onnx.Constant"() {value = dense<[384, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %848 = "onnx.Reshape"(%123, %847) {allowzero = 0 : si64} : (tensor<384x1280x1x1xf32>, tensor<2xi64>) -> tensor<384x1280xf32>
    %849 = "onnx.MatMul"(%848, %846) : (tensor<384x1280xf32>, tensor<64x1280x64xf32>) -> tensor<64x384x64xf32>
    %850 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x384x1xf32>} : () -> tensor<1x384x1xf32>
    %851 = "onnx.Add"(%849, %850) : (tensor<64x384x64xf32>, tensor<1x384x1xf32>) -> tensor<64x384x64xf32>
    %852 = "onnx.Dim"(%824) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %853 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %854 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %855 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %856 = "onnx.Concat"(%852, %855, %853, %854) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %857 = "onnx.Reshape"(%851, %856) {allowzero = 0 : si64} : (tensor<64x384x64xf32>, tensor<4xi64>) -> tensor<64x384x8x8xf32>
    %858 = "onnx.Relu"(%857) {onnx_node_name = "Relu_214"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %859 = "onnx.Conv"(%858, %124, %125) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 3], onnx_node_name = "Conv_215", pads = [0, 1, 0, 1], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x1x3xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %860 = "onnx.Relu"(%859) {onnx_node_name = "Relu_216"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %861 = "onnx.Conv"(%858, %126, %127) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 1], onnx_node_name = "Conv_217", pads = [1, 0, 1, 0], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x3x1xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %862 = "onnx.Relu"(%861) {onnx_node_name = "Relu_218"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %863 = "onnx.Dim"(%824) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %864 = "onnx.Constant"() {value = dense<1280> : tensor<1xi64>} : () -> tensor<1xi64>
    %865 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %866 = "onnx.Concat"(%863, %864, %865) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %867 = "onnx.Reshape"(%824, %866) {allowzero = 0 : si64} : (tensor<64x1280x8x8xf32>, tensor<3xi64>) -> tensor<64x1280x64xf32>
    %868 = "onnx.Constant"() {value = dense<[448, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %869 = "onnx.Reshape"(%128, %868) {allowzero = 0 : si64} : (tensor<448x1280x1x1xf32>, tensor<2xi64>) -> tensor<448x1280xf32>
    %870 = "onnx.MatMul"(%869, %867) : (tensor<448x1280xf32>, tensor<64x1280x64xf32>) -> tensor<64x448x64xf32>
    %871 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x448x1xf32>} : () -> tensor<1x448x1xf32>
    %872 = "onnx.Add"(%870, %871) : (tensor<64x448x64xf32>, tensor<1x448x1xf32>) -> tensor<64x448x64xf32>
    %873 = "onnx.Dim"(%824) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %874 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %875 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %876 = "onnx.Constant"() {value = dense<448> : tensor<1xi64>} : () -> tensor<1xi64>
    %877 = "onnx.Concat"(%873, %876, %874, %875) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %878 = "onnx.Reshape"(%872, %877) {allowzero = 0 : si64} : (tensor<64x448x64xf32>, tensor<4xi64>) -> tensor<64x448x8x8xf32>
    %879 = "onnx.Relu"(%878) {onnx_node_name = "Relu_221"} : (tensor<64x448x8x8xf32>) -> tensor<64x448x8x8xf32>
    %880 = "onnx.Conv"(%879, %129, %130) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_222", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x448x8x8xf32>, tensor<384x448x3x3xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %881 = "onnx.Relu"(%880) {onnx_node_name = "Relu_223"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %882 = "onnx.Conv"(%881, %131, %132) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 3], onnx_node_name = "Conv_224", pads = [0, 1, 0, 1], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x1x3xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %883 = "onnx.Relu"(%882) {onnx_node_name = "Relu_225"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %884 = "onnx.Conv"(%881, %133, %134) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 1], onnx_node_name = "Conv_226", pads = [1, 0, 1, 0], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x3x1xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %885 = "onnx.Relu"(%884) {onnx_node_name = "Relu_227"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %886 = "onnx.AveragePool"(%824) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_231", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x1280x8x8xf32>) -> tensor<64x1280x8x8xf32>
    %887 = "onnx.Dim"(%886) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %888 = "onnx.Constant"() {value = dense<1280> : tensor<1xi64>} : () -> tensor<1xi64>
    %889 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %890 = "onnx.Concat"(%887, %888, %889) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %891 = "onnx.Reshape"(%886, %890) {allowzero = 0 : si64} : (tensor<64x1280x8x8xf32>, tensor<3xi64>) -> tensor<64x1280x64xf32>
    %892 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %893 = "onnx.Reshape"(%135, %892) {allowzero = 0 : si64} : (tensor<192x1280x1x1xf32>, tensor<2xi64>) -> tensor<192x1280xf32>
    %894 = "onnx.MatMul"(%893, %891) : (tensor<192x1280xf32>, tensor<64x1280x64xf32>) -> tensor<64x192x64xf32>
    %895 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %896 = "onnx.Add"(%894, %895) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %897 = "onnx.Dim"(%886) {axis = 0 : si64} : (tensor<64x1280x8x8xf32>) -> tensor<1xi64>
    %898 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %899 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %900 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %901 = "onnx.Concat"(%897, %900, %898, %899) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %902 = "onnx.Reshape"(%896, %901) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x8x8xf32>
    %903 = "onnx.Relu"(%902) {onnx_node_name = "Relu_233"} : (tensor<64x192x8x8xf32>) -> tensor<64x192x8x8xf32>
    %904 = "onnx.Concat"(%841, %860, %862, %883, %885, %903) {axis = 1 : si64, onnx_node_name = "Concat_234"} : (tensor<64x320x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x192x8x8xf32>) -> tensor<64x2048x8x8xf32>
    %905 = "onnx.Dim"(%904) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %906 = "onnx.Constant"() {value = dense<2048> : tensor<1xi64>} : () -> tensor<1xi64>
    %907 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %908 = "onnx.Concat"(%905, %906, %907) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %909 = "onnx.Reshape"(%904, %908) {allowzero = 0 : si64} : (tensor<64x2048x8x8xf32>, tensor<3xi64>) -> tensor<64x2048x64xf32>
    %910 = "onnx.Constant"() {value = dense<[320, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %911 = "onnx.Reshape"(%136, %910) {allowzero = 0 : si64} : (tensor<320x2048x1x1xf32>, tensor<2xi64>) -> tensor<320x2048xf32>
    %912 = "onnx.MatMul"(%911, %909) : (tensor<320x2048xf32>, tensor<64x2048x64xf32>) -> tensor<64x320x64xf32>
    %913 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x320x1xf32>} : () -> tensor<1x320x1xf32>
    %914 = "onnx.Add"(%912, %913) : (tensor<64x320x64xf32>, tensor<1x320x1xf32>) -> tensor<64x320x64xf32>
    %915 = "onnx.Dim"(%904) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %916 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %917 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %918 = "onnx.Constant"() {value = dense<320> : tensor<1xi64>} : () -> tensor<1xi64>
    %919 = "onnx.Concat"(%915, %918, %916, %917) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %920 = "onnx.Reshape"(%914, %919) {allowzero = 0 : si64} : (tensor<64x320x64xf32>, tensor<4xi64>) -> tensor<64x320x8x8xf32>
    %921 = "onnx.Relu"(%920) {onnx_node_name = "Relu_236"} : (tensor<64x320x8x8xf32>) -> tensor<64x320x8x8xf32>
    %922 = "onnx.Dim"(%904) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %923 = "onnx.Constant"() {value = dense<2048> : tensor<1xi64>} : () -> tensor<1xi64>
    %924 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %925 = "onnx.Concat"(%922, %923, %924) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %926 = "onnx.Reshape"(%904, %925) {allowzero = 0 : si64} : (tensor<64x2048x8x8xf32>, tensor<3xi64>) -> tensor<64x2048x64xf32>
    %927 = "onnx.Constant"() {value = dense<[384, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %928 = "onnx.Reshape"(%137, %927) {allowzero = 0 : si64} : (tensor<384x2048x1x1xf32>, tensor<2xi64>) -> tensor<384x2048xf32>
    %929 = "onnx.MatMul"(%928, %926) : (tensor<384x2048xf32>, tensor<64x2048x64xf32>) -> tensor<64x384x64xf32>
    %930 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x384x1xf32>} : () -> tensor<1x384x1xf32>
    %931 = "onnx.Add"(%929, %930) : (tensor<64x384x64xf32>, tensor<1x384x1xf32>) -> tensor<64x384x64xf32>
    %932 = "onnx.Dim"(%904) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %933 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %934 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %935 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %936 = "onnx.Concat"(%932, %935, %933, %934) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %937 = "onnx.Reshape"(%931, %936) {allowzero = 0 : si64} : (tensor<64x384x64xf32>, tensor<4xi64>) -> tensor<64x384x8x8xf32>
    %938 = "onnx.Relu"(%937) {onnx_node_name = "Relu_238"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %939 = "onnx.Conv"(%938, %138, %139) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 3], onnx_node_name = "Conv_239", pads = [0, 1, 0, 1], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x1x3xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %940 = "onnx.Relu"(%939) {onnx_node_name = "Relu_240"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %941 = "onnx.Conv"(%938, %140, %141) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 1], onnx_node_name = "Conv_241", pads = [1, 0, 1, 0], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x3x1xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %942 = "onnx.Relu"(%941) {onnx_node_name = "Relu_242"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %943 = "onnx.Dim"(%904) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %944 = "onnx.Constant"() {value = dense<2048> : tensor<1xi64>} : () -> tensor<1xi64>
    %945 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %946 = "onnx.Concat"(%943, %944, %945) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %947 = "onnx.Reshape"(%904, %946) {allowzero = 0 : si64} : (tensor<64x2048x8x8xf32>, tensor<3xi64>) -> tensor<64x2048x64xf32>
    %948 = "onnx.Constant"() {value = dense<[448, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %949 = "onnx.Reshape"(%142, %948) {allowzero = 0 : si64} : (tensor<448x2048x1x1xf32>, tensor<2xi64>) -> tensor<448x2048xf32>
    %950 = "onnx.MatMul"(%949, %947) : (tensor<448x2048xf32>, tensor<64x2048x64xf32>) -> tensor<64x448x64xf32>
    %951 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x448x1xf32>} : () -> tensor<1x448x1xf32>
    %952 = "onnx.Add"(%950, %951) : (tensor<64x448x64xf32>, tensor<1x448x1xf32>) -> tensor<64x448x64xf32>
    %953 = "onnx.Dim"(%904) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %954 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %955 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %956 = "onnx.Constant"() {value = dense<448> : tensor<1xi64>} : () -> tensor<1xi64>
    %957 = "onnx.Concat"(%953, %956, %954, %955) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %958 = "onnx.Reshape"(%952, %957) {allowzero = 0 : si64} : (tensor<64x448x64xf32>, tensor<4xi64>) -> tensor<64x448x8x8xf32>
    %959 = "onnx.Relu"(%958) {onnx_node_name = "Relu_245"} : (tensor<64x448x8x8xf32>) -> tensor<64x448x8x8xf32>
    %960 = "onnx.Conv"(%959, %143, %144) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_246", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x448x8x8xf32>, tensor<384x448x3x3xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %961 = "onnx.Relu"(%960) {onnx_node_name = "Relu_247"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %962 = "onnx.Conv"(%961, %145, %146) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 3], onnx_node_name = "Conv_248", pads = [0, 1, 0, 1], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x1x3xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %963 = "onnx.Relu"(%962) {onnx_node_name = "Relu_249"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %964 = "onnx.Conv"(%961, %147, %148) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 1], onnx_node_name = "Conv_250", pads = [1, 0, 1, 0], strides = [1, 1]} : (tensor<64x384x8x8xf32>, tensor<384x384x3x1xf32>, tensor<384xf32>) -> tensor<64x384x8x8xf32>
    %965 = "onnx.Relu"(%964) {onnx_node_name = "Relu_251"} : (tensor<64x384x8x8xf32>) -> tensor<64x384x8x8xf32>
    %966 = "onnx.AveragePool"(%904) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "AveragePool_255", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<64x2048x8x8xf32>) -> tensor<64x2048x8x8xf32>
    %967 = "onnx.Dim"(%966) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %968 = "onnx.Constant"() {value = dense<2048> : tensor<1xi64>} : () -> tensor<1xi64>
    %969 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %970 = "onnx.Concat"(%967, %968, %969) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %971 = "onnx.Reshape"(%966, %970) {allowzero = 0 : si64} : (tensor<64x2048x8x8xf32>, tensor<3xi64>) -> tensor<64x2048x64xf32>
    %972 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %973 = "onnx.Reshape"(%149, %972) {allowzero = 0 : si64} : (tensor<192x2048x1x1xf32>, tensor<2xi64>) -> tensor<192x2048xf32>
    %974 = "onnx.MatMul"(%973, %971) : (tensor<192x2048xf32>, tensor<64x2048x64xf32>) -> tensor<64x192x64xf32>
    %975 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %976 = "onnx.Add"(%974, %975) : (tensor<64x192x64xf32>, tensor<1x192x1xf32>) -> tensor<64x192x64xf32>
    %977 = "onnx.Dim"(%966) {axis = 0 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<1xi64>
    %978 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %979 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %980 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %981 = "onnx.Concat"(%977, %980, %978, %979) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %982 = "onnx.Reshape"(%976, %981) {allowzero = 0 : si64} : (tensor<64x192x64xf32>, tensor<4xi64>) -> tensor<64x192x8x8xf32>
    %983 = "onnx.Relu"(%982) {onnx_node_name = "Relu_257"} : (tensor<64x192x8x8xf32>) -> tensor<64x192x8x8xf32>
    %984 = "onnx.Concat"(%921, %940, %942, %963, %965, %983) {axis = 1 : si64, onnx_node_name = "Concat_258"} : (tensor<64x320x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x384x8x8xf32>, tensor<64x192x8x8xf32>) -> tensor<64x2048x8x8xf32>
    %985 = "onnx.ReduceMean"(%984) {axes = [2, 3], keepdims = 1 : si64} : (tensor<64x2048x8x8xf32>) -> tensor<64x2048x1x1xf32>
    %986 = "onnx.Flatten"(%985) {axis = 1 : si64, onnx_node_name = "Flatten_260"} : (tensor<64x2048x1x1xf32>) -> tensor<64x2048xf32>
    %987 = "onnx.Gemm"(%986, %0, %1) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "Gemm_261", transA = 0 : si64, transB = 1 : si64} : (tensor<64x2048xf32>, tensor<1000x2048xf32>, tensor<1000xf32>) -> tensor<64x1000xf32>
    return %987 : tensor<64x1000xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
