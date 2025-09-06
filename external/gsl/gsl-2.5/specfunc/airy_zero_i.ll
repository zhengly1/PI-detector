; ModuleID = 'airy_zero.ll'
source_filename = "airy_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [17 x i8] c"s is less than 1\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"airy_zero.c\00", align 1, !dbg !7
@zero_Ai = internal unnamed_addr constant [101 x double] [double 0.000000e+00, double 0xC002B471A873ADF9, double 0xC0105A0F6B48F9C0, double 0xC016150DA2B52089, double 0xC01B2596CE396D64, double 0xC01FC6CAF47EF4F9, double 0xC0220B98E484A6EA, double 0xC0241491BB3642B8, double 0xC026045D4C2B82D5, double 0xC027DF3D6E914B25, double 0xC029A8556D327CAC, double 0xC02B620AD9CF8B96, double 0xC02D0E3FBA3972DA, double 0xC02EAE777509F066, double 0xC03021F7A789BF29, double 0xC030E7D7A1311B7B, double 0xC031A94AF6B6CF6A, double 0xC03266B0A042F43C, double 0xC033205A7883BE5F, double 0xC033D68FAE3ABE6E, double 0xC034898EA6418A2C, double 0xC035398E74871AB5, double 0xC035E6C006D8B659, double 0xC036914F14856F44, double 0xC0373962E0A4B9B5, double 0xC037DF1ED920E200, double 0xC03882A31A1242D2, double 0xC039240CDB1F31C3, double 0xC039C376CB3CB0A4, double 0xC03A60F95E2E7D2E, double 0xC03AFCAB0E67FCFF, double 0xC03B96A09560CF67, double 0xC03C2EED1C02FBEB, double 0xC03CC5A26484E834, double 0xC03D5AD0EEC02391, double 0xC03DEE8817E31021, double 0xC03E80D636332554, double 0xC03F11C8B17576B0, double 0xC03FA16C187978DE, double 0xC04017E61A16A367, double 0xC0405E7A0C48EC5C, double 0xC040A47719EBF2EE, double 0xC040E9E22DF17373, double 0xC0412EBFED333244, double 0xC0417314BBE50513, double 0xC041B6E4C27D4506, double 0xC041FA33F224014E, double 0xC0423D0608B708A5, double 0xC0427F5E946EF920, double 0xC042C140F72FE953, double 0xC04302B0698EDF2C, double 0xC04343AFFD941DD3, double 0xC0438442A14153ED, double 0xC043C46B20E1D7D4, double 0xC044042C292A61E0, double 0xC0444388492D117F, double 0xC0448281F425FBEC, double 0xC044C11B83240852, double 0xC044FF57369171D1, double 0xC0453D37379EEA41, double 0xC0457ABD99940678, double 0xC045B7EC5B0754DE, double 0xC045F4C567003FE9, double 0xC046314A9604A610, double 0xC0466D7DAF13DFBC, double 0xC046A9606890BFEA, double 0xC046E4F4691BF57D, double 0xC047203B486010F4, double 0xC0475B368FD05376, double 0xC04795E7BB5B50E1, double 0xC047D0503A125625, double 0xC0480A716EC66F3E, double 0xC048444CB09BD4AB, double 0xC0487DE34B94768A, double 0xC048B73681124BBF, double 0xC048F0478851FD38, double 0xC04929178EDE78A1, double 0xC04961A7B8FDEA1A, double 0xC04999F922189215, double 0xC049D20CDD19E2FB, double 0xC04A09E3F4CC4984, double 0xC04A417F6C2FFAED, double 0xC04A78E03ECD1D07, double 0xC04AB00761019590, double 0xC04AE6F5C04AC87F, double 0xC04B1DAC438B8763, double 0xC04B542BCB4E6F0A, double 0xC04B8A753204EC40, double 0xC04BC0894C431C24, double 0xC04BF668E8F8B8ED, double 0xC04C2C14D1A74075, double 0xC04C618DCA957E9D, double 0xC04C96D49300A2CA, double 0xC04CCBE9E54B04FA, double 0xC04D00CE7728BC5F, double 0xC04D3582F9CA275A, double 0xC04D6A081A048245, double 0xC04D9E5E8078A8D6, double 0xC04DD286D1B81BD8, double 0xC04E0681AE686376, double 0xC04E3A4FB364E4A0], align 16, !dbg !12
@zero_Bi = internal unnamed_addr constant [101 x double] [double 0.000000e+00, double 0xBFF2C7878426B20D, double 0xC00A2B32F72EC62A, double 0xC01352ACF0D5F3B2, double 0xC018ADEDB760FE7D, double 0xC01D81CDEB2507AE, double 0xC020FBE0B81E2020, double 0xC023138E36B45DC1, double 0xC0250F50D2BA0431, double 0xC026F4334180E826, double 0xC028C5D87799A74D, double 0xC02A86FBC271EFAA, double 0xC02C39BB42AEB3D1, double 0xC02DDFC5FD375A62, double 0xC02F7A79C77674A2, double 0xC030857BC06D783D, double 0xC031491899BD8CD9, double 0xC032087A1CC5B1C7, double 0xC032C3F859D6A8B5, double 0xC0337BDF91825F76, double 0xC034307258A43719, double 0xC034E1EB41E9E923, double 0xC035907E2CEAE0B3, double 0xC0363C59515CC61B, double 0xC036E5A61691BDFC, double 0xC0378C89C30B5162, double 0xC03831260CDCCCAB, double 0xC038D399916A5008, double 0xC0397400397F37F4, double 0xC03A12738D8FC054, double 0xC03AAF0AFD1F2938, double 0xC03B49DC1B9F96B5, double 0xC03BE2FAD4A46F83, double 0xC03C7A7998E09C2A, double 0xC03D106985203F80, double 0xC03DA4DA8433ECB9, double 0xC03E37DB6C9611FB, double 0xC03EC97A1A6F6440, double 0xC03F59C386826BC5, double 0xC03FE8C3DA6F42A7, double 0xC0403B434156F85F, double 0xC040818B1F47511C, double 0xC040C73E9741450D, double 0xC0410C6270730490, double 0xC04150FB2EBE1E77, double 0xC041950D17E28AB1, double 0xC041D89C38289815, double 0xC0421BAC6698E7F6, double 0xC0425E4148CF903A, double 0xC042A05E5675BCB6, double 0xC042E206DC6BAC66, double 0xC043233DFFABA38D, double 0xC0436406BFED5722, double 0xC043A463FA1068D4, double 0xC043E4586A53BF0F, double 0xC04423E6AE5ED46D, double 0xC0446311472181D7, double 0xC044A1DA9A8E4287, double 0xC044E044F5327E33, double 0xC0451E528BB0017A, double 0xC0455C057C1A74FF, double 0xC045995FCF3B56EB, double 0xC045D66379BEB6E5, double 0xC04613125D4AB94D, double 0xC0464F6E4983B1FD, double 0xC0468B78FCFE7881, double 0xC046C73426226E8D, double 0xC04702A163FC8D0F, double 0xC0473DC24704ABB5, double 0xC047789851D619DE, double 0xC047B324F9DC8613, double 0xC047ED69A7F61A0A, double 0xC0482767B90B9C8B, double 0xC04861207E9F57FB, double 0xC0489A953F53739B, double 0xC048D3C737685E95, double 0xC0490CB79933DE4C, double 0xC04945678D91454D, double 0xC0497DD8344B4D15, double 0xC049B60AA48002EA, double 0xC049EDFFECFF2F00, double 0xC04A25B914A394D2, double 0xC04A5D371AA7642E, double 0xC04A947AF6F42B9D, double 0xC04ACB859A6E969E, double 0xC04B0257EF3E3C84, double 0xC04B38F2D911BFA0, double 0xC04B6F57355F779D, double 0xC04BA585DBA2DDB7, double 0xC04BDB7F9D96ED6D, double 0xC04C1145476DA8AB, double 0xC04C46D7A004EB32, double 0xC04C7C376918B5D0, double 0xC04CB1655F731741, double 0xC04CE6623B19D5EB, double 0xC04D1B2EAF79FB57, double 0xC04D4FCB6B915FFF, double 0xC04D84391A16540F, double 0xC04DB878619D7FD5, double 0xC04DEC89E4BE14D4, double 0xC04E206E423466DF], align 16, !dbg !82
@zero_Aip = internal unnamed_addr constant [101 x double] [double 0.000000e+00, double 0xBFF04CF9DBE9EDBF, double 0xC009FC4F039344F5, double 0xC01347C8166DF3C8, double 0xC018A73A0B1EABDD, double 0xC01D7D1C08CAFB1C, double 0xC020FA1AEEE64A03, double 0xC023122660D1C0A7, double 0xC0250E2980E8A723, double 0xC026F33A9F81174D, double 0xC028C502FB41EACA, double 0xC02A864190517C7F, double 0xC02C3916C9492800, double 0xC02DDF3329060C91, double 0xC02F79F587CBBE53, double 0xC030853FBD1BAE58, double 0xC03148E1C65A033F, double 0xC0320847BCB7DB9B, double 0xC032C3C9D495CEA3, double 0xC0337BB46A1BACDA, double 0xC034304A279423EB, double 0xC034E1C5B0908AE7, double 0xC035905AF221C168, double 0xC0363C382EDC8974, double 0xC036E586D6EF6DAA, double 0xC0378C6C3826029E, double 0xC038310A0E9FA59E, double 0xC038D37EFCCEB62C, double 0xC03973E6EFC0579F, double 0xC03A125B73846F86, double 0xC03AAEF3FAB1E4BF, double 0xC03B49C61B5E55E5, double 0xC03BE2E5C36380D8, double 0xC03C7A65656CD341, double 0xC03D10561FFD8D7D, double 0xC03DA4C7DF661A76, double 0xC03E37C97B71CC56, double 0xC03EC968D1722830, double 0xC03F59B2DB302880, double 0xC03FE8B3C334C0CD, double 0xC0403B3B7B639D3E, double 0xC04081839AF865E2, double 0xC040C73750E42B37, double 0xC0410C5B649F7ECF, double 0xC04150F45A4EE48C, double 0xC041950677EEC16A, double 0xC041D895C9FE0D91, double 0xC0421BA627B6F97B, double 0xC0425E3B36E2A2EA, double 0xC042A0586F5335F1, double 0xC042E2011E0E5980, double 0xC0432338683082DB, double 0xC04364014D90B65E, double 0xC043A45EAB2B4E8F, double 0xC043E4533D599645, double 0xC04423E1A1DB528C, double 0xC044630C59B6C08C, double 0xC044A1D5CAF3077E, double 0xC044E0404230ABBB, double 0xC0451E4DF4232B9E, double 0xC0455C00FEEE9736, double 0xC045995B6B6BA6E7, double 0xC045D65F2E54918F, double 0xC046130E295CA73E, double 0xC0464F6A2C348120, double 0xC0468B74F57C68C7, double 0xC046C73033A66FD5, double 0xC047029D85C98CAC, double 0xC0473DBE7C66F00D, double 0xC04778949A22AADB, double 0xC047B3215470A136, double 0xC047ED661436B11D, double 0xC04827643664DDF3, double 0xC048611D0C843FE0, double 0xC0489A91DD3D651C, double 0xC048D3C3E4D6C457, double 0xC0490CB455ABD1CE, double 0xC0494564589D3C67, double 0xC0497DD50D7ACD28, double 0xC049B6078B67594A, double 0xC049EDFCE1372E2D, double 0xC04A25B615C9561D, double 0xC04A5D34285C0D74, double 0xC04A947810DCB8CA, double 0xC04ACB82C033A6A5, double 0xC04B0255208BE19A, double 0xC04B38F015975267, double 0xC04B6F547CCF6D21, double 0xC04BA5832DB29FF0, double 0xC04BDB7CF9FEB624, double 0xC04C1142ADE85E9C, double 0xC04C46D510500138, double 0xC04C7C34E2F40BFB, double 0xC04CB162E2A0DDB4, double 0xC04CE65FC75E716A, double 0xC04D1B2C449BEB58, double 0xC04D4FC909592636, double 0xC04D8436C04E5D52, double 0xC04DB87610120E42, double 0xC04DEC879B3D2B26, double 0xC04E206C008DB4E6], align 16, !dbg !89
@zero_Bip = internal unnamed_addr constant [51 x double] [double 0.000000e+00, double 0xC0025B03313BC73A, double 0xC0104AE92AEC65DB, double 0xC0160CB177560F95, double 0xC01B200BA6B84C98, double 0xC01FC2BE33C98033, double 0xC0220A06D47B225A, double 0xC024134CEF1B38F8, double 0xC026034F1324F03B, double 0xC027DE578AD67DE9, double 0xC029A78E66AE8554, double 0xC02B615C1AC2CCFE, double 0xC02D0DA483757F05, double 0xC02EADEC406DD12F, double 0xC03021B8B7206B90, double 0xC030E79E5014D072, double 0xC031A9167214BA59, double 0xC03266803EC88C4C, double 0xC033202DB057FE13, double 0xC033D6660DCA2B48, double 0xC0348967CEF77D2C, double 0xC035396A16DF1BBC, double 0xC035E69DDF64973C, double 0xC036912EE9A49330, double 0xC037394480BDA86F, double 0xC037DF02193C0F46, double 0xC0388287D4BE4D49, double 0xC03923F2EF8D530C, double 0xC039C35E1C88A124, double 0xC03A60E1D2C84897, double 0xC03AFC948F989930, double 0xC03B968B0EE3FB0D, double 0xC03C2ED87BB22C53, double 0xC03CC58E9A0FFE75, double 0xC03D5ABDEB715699, double 0xC03DEE75CE6C0387, double 0xC03E80C49A818EE1, double 0xC03F11B7B88E06D3, double 0xC03FA15BB857FA68, double 0xC04017DE31D48E5B, double 0xC0405E7267A31447, double 0xC040A46FB5076EB0, double 0xC040E9DB0541D24F, double 0xC0412EB8FD728FE6, double 0xC041730E020D13D0, double 0xC041B6DE3BC12B9F, double 0xC041FA2D9BEAEF12, double 0xC0423CFFE097674B, double 0xC0427F58982A278D, double 0xC042C13B24AE6D88, double 0xC04302AABEDD0043], align 16, !dbg !91
@.str.2 = private unnamed_addr constant [34 x i8] c"gsl_sf_airy_zero_Ai_e(s, &result)\00", align 1, !dbg !68
@.str.3 = private unnamed_addr constant [34 x i8] c"gsl_sf_airy_zero_Bi_e(s, &result)\00", align 1, !dbg !73
@.str.4 = private unnamed_addr constant [40 x i8] c"gsl_sf_airy_zero_Ai_deriv_e(s, &result)\00", align 1, !dbg !75
@.str.5 = private unnamed_addr constant [40 x i8] c"gsl_sf_airy_zero_Bi_deriv_e(s, &result)\00", align 1, !dbg !80

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_zero_Ai_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !104 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !116, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !117, metadata !DIExpression()), !dbg !123
  %3 = icmp eq i32 %0, 0, !dbg !124
  br i1 %3, label %4, label %6, !dbg !125

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !126, !tbaa !129
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !126
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !126, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 439, i32 noundef 1) #4, !dbg !135
  br label %34, !dbg !135

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !137
  br i1 %7, label %8, label %15, !dbg !138

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64, !dbg !139
  %10 = getelementptr inbounds [101 x double], ptr @zero_Ai, i64 0, i64 %9, !dbg !140
  %11 = load double, ptr %10, align 8, !dbg !140, !tbaa !142
  store double %11, ptr %1, align 8, !dbg !143, !tbaa !129
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !144
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !145
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !146
  store double %13, ptr %14, align 8, !dbg !147, !tbaa !134
  br label %34, !dbg !148

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !149
  %17 = fmul double %16, 4.000000e+00, !dbg !150
  %handler_result = call double @fAddHandlerDouble(double %17, double -1.000000e+00), !dbg !151
  %18 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !151
  tail call void @llvm.dbg.value(metadata double %18, metadata !118, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata double %18, metadata !153, metadata !DIExpression()), !dbg !165
  %19 = tail call double @pow(double noundef %18, double noundef 0x3FE5555555555555) #4, !dbg !167
  call void @llvm.dbg.value(metadata double %19, metadata !158, metadata !DIExpression()), !dbg !165
  %20 = fmul double %18, %18, !dbg !168
  %21 = fdiv double 1.000000e+00, %20, !dbg !169
  call void @llvm.dbg.value(metadata double %21, metadata !159, metadata !DIExpression()), !dbg !165
  %22 = fmul double %21, %21, !dbg !170
  call void @llvm.dbg.value(metadata double %22, metadata !160, metadata !DIExpression()), !dbg !165
  %23 = fmul double %21, 0x3FBAAAAAAAAAAAAB, !dbg !171
  call void @llvm.dbg.value(metadata double %23, metadata !161, metadata !DIExpression()), !dbg !165
  %24 = fmul double %22, 0x3FC1C71C71C71C72, !dbg !172
  call void @llvm.dbg.value(metadata double %24, metadata !162, metadata !DIExpression()), !dbg !165
  %25 = fmul double %22, 0x3FEDC148B0FCD6EA, !dbg !173
  %26 = fmul double %21, %25, !dbg !174
  call void @llvm.dbg.value(metadata double %26, metadata !163, metadata !DIExpression()), !dbg !165
  %27 = fmul double %22, 0x402F04AFFD978D9F, !dbg !175
  %28 = fmul double %22, %27, !dbg !176
  call void @llvm.dbg.value(metadata double %28, metadata !164, metadata !DIExpression()), !dbg !165
  %handler_result1 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !177
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %24), !dbg !178
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %26), !dbg !179
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %28), !dbg !180
  tail call void @llvm.dbg.value(metadata double poison, metadata !122, metadata !DIExpression()), !dbg !152
  %29 = fneg double %handler_result4, !dbg !180
  %30 = fmul double %19, %29, !dbg !180
  store double %30, ptr %1, align 8, !dbg !181, !tbaa !129
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !182
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !183
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !184
  store double %32, ptr %33, align 8, !dbg !185, !tbaa !134
  br label %34

34:                                               ; preds = %15, %8, %4
  %35 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !186
  ret i32 %35, !dbg !187
}

declare !dbg !188 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_zero_Bi_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !193 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !195, metadata !DIExpression()), !dbg !202
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !196, metadata !DIExpression()), !dbg !202
  %3 = icmp eq i32 %0, 0, !dbg !203
  br i1 %3, label %4, label %6, !dbg !204

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !205, !tbaa !129
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !205
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !205, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 462, i32 noundef 1) #4, !dbg !208
  br label %34, !dbg !208

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !210
  br i1 %7, label %8, label %15, !dbg !211

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64, !dbg !212
  %10 = getelementptr inbounds [101 x double], ptr @zero_Bi, i64 0, i64 %9, !dbg !213
  %11 = load double, ptr %10, align 8, !dbg !213, !tbaa !142
  store double %11, ptr %1, align 8, !dbg !215, !tbaa !129
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !216
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !217
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !218
  store double %13, ptr %14, align 8, !dbg !219, !tbaa !134
  br label %34, !dbg !220

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !221
  %17 = fmul double %16, 4.000000e+00, !dbg !222
  %handler_result = call double @fAddHandlerDouble(double %17, double -3.000000e+00), !dbg !223
  %18 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !223
  tail call void @llvm.dbg.value(metadata double %18, metadata !197, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %18, metadata !153, metadata !DIExpression()), !dbg !225
  %19 = tail call double @pow(double noundef %18, double noundef 0x3FE5555555555555) #4, !dbg !227
  call void @llvm.dbg.value(metadata double %19, metadata !158, metadata !DIExpression()), !dbg !225
  %20 = fmul double %18, %18, !dbg !228
  %21 = fdiv double 1.000000e+00, %20, !dbg !229
  call void @llvm.dbg.value(metadata double %21, metadata !159, metadata !DIExpression()), !dbg !225
  %22 = fmul double %21, %21, !dbg !230
  call void @llvm.dbg.value(metadata double %22, metadata !160, metadata !DIExpression()), !dbg !225
  %23 = fmul double %21, 0x3FBAAAAAAAAAAAAB, !dbg !231
  call void @llvm.dbg.value(metadata double %23, metadata !161, metadata !DIExpression()), !dbg !225
  %24 = fmul double %22, 0x3FC1C71C71C71C72, !dbg !232
  call void @llvm.dbg.value(metadata double %24, metadata !162, metadata !DIExpression()), !dbg !225
  %25 = fmul double %22, 0x3FEDC148B0FCD6EA, !dbg !233
  %26 = fmul double %21, %25, !dbg !234
  call void @llvm.dbg.value(metadata double %26, metadata !163, metadata !DIExpression()), !dbg !225
  %27 = fmul double %22, 0x402F04AFFD978D9F, !dbg !235
  %28 = fmul double %22, %27, !dbg !236
  call void @llvm.dbg.value(metadata double %28, metadata !164, metadata !DIExpression()), !dbg !225
  %handler_result1 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !237
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %24), !dbg !238
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %26), !dbg !239
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %28), !dbg !240
  tail call void @llvm.dbg.value(metadata double poison, metadata !201, metadata !DIExpression()), !dbg !224
  %29 = fneg double %handler_result4, !dbg !240
  %30 = fmul double %19, %29, !dbg !240
  store double %30, ptr %1, align 8, !dbg !241, !tbaa !129
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !242
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !243
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !244
  store double %32, ptr %33, align 8, !dbg !245, !tbaa !134
  br label %34

34:                                               ; preds = %15, %8, %4
  %35 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !246
  ret i32 %35, !dbg !247
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_zero_Ai_deriv_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !248 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !250, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !251, metadata !DIExpression()), !dbg !257
  %3 = icmp eq i32 %0, 0, !dbg !258
  br i1 %3, label %4, label %6, !dbg !259

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !260, !tbaa !129
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !260
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !260, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 485, i32 noundef 1) #4, !dbg !263
  br label %34, !dbg !263

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !265
  br i1 %7, label %8, label %15, !dbg !266

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64, !dbg !267
  %10 = getelementptr inbounds [101 x double], ptr @zero_Aip, i64 0, i64 %9, !dbg !268
  %11 = load double, ptr %10, align 8, !dbg !268, !tbaa !142
  store double %11, ptr %1, align 8, !dbg !270, !tbaa !129
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !271
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !272
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !273
  store double %13, ptr %14, align 8, !dbg !274, !tbaa !134
  br label %34, !dbg !275

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !276
  %17 = fmul double %16, 4.000000e+00, !dbg !277
  %handler_result = call double @fAddHandlerDouble(double %17, double -3.000000e+00), !dbg !278
  %18 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !278
  tail call void @llvm.dbg.value(metadata double %18, metadata !252, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata double %18, metadata !280, metadata !DIExpression()), !dbg !290
  %19 = tail call double @pow(double noundef %18, double noundef 0x3FE5555555555555) #4, !dbg !292
  call void @llvm.dbg.value(metadata double %19, metadata !283, metadata !DIExpression()), !dbg !290
  %20 = fmul double %18, %18, !dbg !293
  %21 = fdiv double 1.000000e+00, %20, !dbg !294
  call void @llvm.dbg.value(metadata double %21, metadata !284, metadata !DIExpression()), !dbg !290
  %22 = fmul double %21, %21, !dbg !295
  call void @llvm.dbg.value(metadata double %22, metadata !285, metadata !DIExpression()), !dbg !290
  %23 = fmul double %21, 0x3FC2AAAAAAAAAAAB, !dbg !296
  call void @llvm.dbg.value(metadata double %23, metadata !286, metadata !DIExpression()), !dbg !290
  %24 = fmul double %22, 0x3FBF1C71C71C71C7, !dbg !297
  call void @llvm.dbg.value(metadata double %24, metadata !287, metadata !DIExpression()), !dbg !290
  %25 = fmul double %22, 0x3FEBF76D5A63DF22, !dbg !298
  %26 = fmul double %21, %25, !dbg !299
  call void @llvm.dbg.value(metadata double %26, metadata !288, metadata !DIExpression()), !dbg !290
  %27 = fmul double %22, 0x402E08A14A60801B, !dbg !300
  %28 = fmul double %22, %27, !dbg !301
  call void @llvm.dbg.value(metadata double %28, metadata !289, metadata !DIExpression()), !dbg !290
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %23), !dbg !302
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %24), !dbg !303
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %26), !dbg !304
  %handler_result4 = call double @fAddHandlerDouble(double %28, double %handler_result3), !dbg !305
  tail call void @llvm.dbg.value(metadata double poison, metadata !256, metadata !DIExpression()), !dbg !279
  %29 = fneg double %handler_result4, !dbg !305
  %30 = fmul double %19, %29, !dbg !305
  store double %30, ptr %1, align 8, !dbg !306, !tbaa !129
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !307
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !308
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !309
  store double %32, ptr %33, align 8, !dbg !310, !tbaa !134
  br label %34

34:                                               ; preds = %15, %8, %4
  %35 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !311
  ret i32 %35, !dbg !312
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_zero_Bi_deriv_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !313 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !315, metadata !DIExpression()), !dbg !322
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !316, metadata !DIExpression()), !dbg !322
  %3 = icmp eq i32 %0, 0, !dbg !323
  br i1 %3, label %4, label %6, !dbg !324

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !325, !tbaa !129
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !325
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !325, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 508, i32 noundef 1) #4, !dbg !328
  br label %34, !dbg !328

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 51, !dbg !330
  br i1 %7, label %8, label %15, !dbg !331

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64, !dbg !332
  %10 = getelementptr inbounds [51 x double], ptr @zero_Bip, i64 0, i64 %9, !dbg !333
  %11 = load double, ptr %10, align 8, !dbg !333, !tbaa !142
  store double %11, ptr %1, align 8, !dbg !335, !tbaa !129
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !336
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !337
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !338
  store double %13, ptr %14, align 8, !dbg !339, !tbaa !134
  br label %34, !dbg !340

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !341
  %17 = fmul double %16, 4.000000e+00, !dbg !342
  %handler_result = call double @fAddHandlerDouble(double %17, double -1.000000e+00), !dbg !343
  %18 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !343
  tail call void @llvm.dbg.value(metadata double %18, metadata !317, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata double %18, metadata !280, metadata !DIExpression()), !dbg !345
  %19 = tail call double @pow(double noundef %18, double noundef 0x3FE5555555555555) #4, !dbg !347
  call void @llvm.dbg.value(metadata double %19, metadata !283, metadata !DIExpression()), !dbg !345
  %20 = fmul double %18, %18, !dbg !348
  %21 = fdiv double 1.000000e+00, %20, !dbg !349
  call void @llvm.dbg.value(metadata double %21, metadata !284, metadata !DIExpression()), !dbg !345
  %22 = fmul double %21, %21, !dbg !350
  call void @llvm.dbg.value(metadata double %22, metadata !285, metadata !DIExpression()), !dbg !345
  %23 = fmul double %21, 0x3FC2AAAAAAAAAAAB, !dbg !351
  call void @llvm.dbg.value(metadata double %23, metadata !286, metadata !DIExpression()), !dbg !345
  %24 = fmul double %22, 0x3FBF1C71C71C71C7, !dbg !352
  call void @llvm.dbg.value(metadata double %24, metadata !287, metadata !DIExpression()), !dbg !345
  %25 = fmul double %22, 0x3FEBF76D5A63DF22, !dbg !353
  %26 = fmul double %21, %25, !dbg !354
  call void @llvm.dbg.value(metadata double %26, metadata !288, metadata !DIExpression()), !dbg !345
  %27 = fmul double %22, 0x402E08A14A60801B, !dbg !355
  %28 = fmul double %22, %27, !dbg !356
  call void @llvm.dbg.value(metadata double %28, metadata !289, metadata !DIExpression()), !dbg !345
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %23), !dbg !357
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %24), !dbg !358
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %26), !dbg !359
  %handler_result4 = call double @fAddHandlerDouble(double %28, double %handler_result3), !dbg !360
  tail call void @llvm.dbg.value(metadata double poison, metadata !321, metadata !DIExpression()), !dbg !344
  %29 = fneg double %handler_result4, !dbg !360
  %30 = fmul double %19, %29, !dbg !360
  store double %30, ptr %1, align 8, !dbg !361, !tbaa !129
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !362
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !363
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !364
  store double %32, ptr %33, align 8, !dbg !365, !tbaa !134
  br label %34

34:                                               ; preds = %15, %8, %4
  %35 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !366
  ret i32 %35, !dbg !367
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Ai(i32 noundef %0) local_unnamed_addr #0 !dbg !368 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 %0, metadata !116, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !376
  %2 = icmp eq i32 %0, 0, !dbg !378
  br i1 %2, label %25, label %3, !dbg !379

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !380
  br i1 %4, label %5, label %9, !dbg !381

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !382
  %7 = getelementptr inbounds [101 x double], ptr @zero_Ai, i64 0, i64 %6, !dbg !383
  %8 = load double, ptr %7, align 8, !dbg !383, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !375
  tail call void @llvm.dbg.value(metadata double poison, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !375
  br label %26, !dbg !384

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !385
  %11 = fmul double %10, 4.000000e+00, !dbg !386
  %handler_result = call double @fAddHandlerDouble(double %11, double -1.000000e+00), !dbg !387
  %12 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !387
  call void @llvm.dbg.value(metadata double %12, metadata !118, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata double %12, metadata !153, metadata !DIExpression()), !dbg !389
  %13 = tail call double @pow(double noundef %12, double noundef 0x3FE5555555555555) #4, !dbg !391
  call void @llvm.dbg.value(metadata double %13, metadata !158, metadata !DIExpression()), !dbg !389
  %14 = fmul double %12, %12, !dbg !392
  %15 = fdiv double 1.000000e+00, %14, !dbg !393
  call void @llvm.dbg.value(metadata double %15, metadata !159, metadata !DIExpression()), !dbg !389
  %16 = fmul double %15, %15, !dbg !394
  call void @llvm.dbg.value(metadata double %16, metadata !160, metadata !DIExpression()), !dbg !389
  %17 = fmul double %15, 0x3FBAAAAAAAAAAAAB, !dbg !395
  call void @llvm.dbg.value(metadata double %17, metadata !161, metadata !DIExpression()), !dbg !389
  %18 = fmul double %16, 0x3FC1C71C71C71C72, !dbg !396
  call void @llvm.dbg.value(metadata double %18, metadata !162, metadata !DIExpression()), !dbg !389
  %19 = fmul double %16, 0x3FEDC148B0FCD6EA, !dbg !397
  %20 = fmul double %15, %19, !dbg !398
  call void @llvm.dbg.value(metadata double %20, metadata !163, metadata !DIExpression()), !dbg !389
  %21 = fmul double %16, 0x402F04AFFD978D9F, !dbg !399
  %22 = fmul double %16, %21, !dbg !400
  call void @llvm.dbg.value(metadata double %22, metadata !164, metadata !DIExpression()), !dbg !389
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !401
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %18), !dbg !402
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %20), !dbg !403
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %22), !dbg !404
  call void @llvm.dbg.value(metadata double poison, metadata !122, metadata !DIExpression()), !dbg !388
  %23 = fneg double %handler_result4, !dbg !404
  %24 = fmul double %13, %23, !dbg !404
  tail call void @llvm.dbg.value(metadata double %24, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !375
  tail call void @llvm.dbg.value(metadata double poison, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !375
  br label %26

25:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !375
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !375
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 439, i32 noundef 1) #4, !dbg !405
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 1, metadata !374, metadata !DIExpression()), !dbg !375
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 530, i32 noundef 1) #4, !dbg !406
  br label %26, !dbg !406

26:                                               ; preds = %25, %9, %5
  %27 = phi double [ 0x7FF8000000000000, %25 ], [ %24, %9 ], [ %8, %5 ]
  ret double %27, !dbg !410
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Bi(i32 noundef %0) local_unnamed_addr #0 !dbg !411 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !413, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i32 %0, metadata !195, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr undef, metadata !196, metadata !DIExpression()), !dbg !417
  %2 = icmp eq i32 %0, 0, !dbg !419
  br i1 %2, label %25, label %3, !dbg !420

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !421
  br i1 %4, label %5, label %9, !dbg !422

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !423
  %7 = getelementptr inbounds [101 x double], ptr @zero_Bi, i64 0, i64 %6, !dbg !424
  %8 = load double, ptr %7, align 8, !dbg !424, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !416
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !416
  br label %26, !dbg !425

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !426
  %11 = fmul double %10, 4.000000e+00, !dbg !427
  %handler_result = call double @fAddHandlerDouble(double %11, double -3.000000e+00), !dbg !428
  %12 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !428
  call void @llvm.dbg.value(metadata double %12, metadata !197, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata double %12, metadata !153, metadata !DIExpression()), !dbg !430
  %13 = tail call double @pow(double noundef %12, double noundef 0x3FE5555555555555) #4, !dbg !432
  call void @llvm.dbg.value(metadata double %13, metadata !158, metadata !DIExpression()), !dbg !430
  %14 = fmul double %12, %12, !dbg !433
  %15 = fdiv double 1.000000e+00, %14, !dbg !434
  call void @llvm.dbg.value(metadata double %15, metadata !159, metadata !DIExpression()), !dbg !430
  %16 = fmul double %15, %15, !dbg !435
  call void @llvm.dbg.value(metadata double %16, metadata !160, metadata !DIExpression()), !dbg !430
  %17 = fmul double %15, 0x3FBAAAAAAAAAAAAB, !dbg !436
  call void @llvm.dbg.value(metadata double %17, metadata !161, metadata !DIExpression()), !dbg !430
  %18 = fmul double %16, 0x3FC1C71C71C71C72, !dbg !437
  call void @llvm.dbg.value(metadata double %18, metadata !162, metadata !DIExpression()), !dbg !430
  %19 = fmul double %16, 0x3FEDC148B0FCD6EA, !dbg !438
  %20 = fmul double %15, %19, !dbg !439
  call void @llvm.dbg.value(metadata double %20, metadata !163, metadata !DIExpression()), !dbg !430
  %21 = fmul double %16, 0x402F04AFFD978D9F, !dbg !440
  %22 = fmul double %16, %21, !dbg !441
  call void @llvm.dbg.value(metadata double %22, metadata !164, metadata !DIExpression()), !dbg !430
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !442
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %18), !dbg !443
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %20), !dbg !444
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %22), !dbg !445
  call void @llvm.dbg.value(metadata double poison, metadata !201, metadata !DIExpression()), !dbg !429
  %23 = fneg double %handler_result4, !dbg !445
  %24 = fmul double %13, %23, !dbg !445
  tail call void @llvm.dbg.value(metadata double %24, metadata !414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !416
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !416
  br label %26

25:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !416
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !414, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !416
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 462, i32 noundef 1) #4, !dbg !446
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !416
  tail call void @llvm.dbg.value(metadata i32 1, metadata !415, metadata !DIExpression()), !dbg !416
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 535, i32 noundef 1) #4, !dbg !447
  br label %26, !dbg !447

26:                                               ; preds = %25, %9, %5
  %27 = phi double [ 0x7FF8000000000000, %25 ], [ %24, %9 ], [ %8, %5 ]
  ret double %27, !dbg !451
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Ai_deriv(i32 noundef %0) local_unnamed_addr #0 !dbg !452 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !454, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 %0, metadata !250, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata ptr undef, metadata !251, metadata !DIExpression()), !dbg !458
  %2 = icmp eq i32 %0, 0, !dbg !460
  br i1 %2, label %25, label %3, !dbg !461

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !462
  br i1 %4, label %5, label %9, !dbg !463

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !464
  %7 = getelementptr inbounds [101 x double], ptr @zero_Aip, i64 0, i64 %6, !dbg !465
  %8 = load double, ptr %7, align 8, !dbg !465, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !457
  tail call void @llvm.dbg.value(metadata double poison, metadata !455, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !457
  br label %26, !dbg !466

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !467
  %11 = fmul double %10, 4.000000e+00, !dbg !468
  %handler_result = call double @fAddHandlerDouble(double %11, double -3.000000e+00), !dbg !469
  %12 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !469
  call void @llvm.dbg.value(metadata double %12, metadata !252, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double %12, metadata !280, metadata !DIExpression()), !dbg !471
  %13 = tail call double @pow(double noundef %12, double noundef 0x3FE5555555555555) #4, !dbg !473
  call void @llvm.dbg.value(metadata double %13, metadata !283, metadata !DIExpression()), !dbg !471
  %14 = fmul double %12, %12, !dbg !474
  %15 = fdiv double 1.000000e+00, %14, !dbg !475
  call void @llvm.dbg.value(metadata double %15, metadata !284, metadata !DIExpression()), !dbg !471
  %16 = fmul double %15, %15, !dbg !476
  call void @llvm.dbg.value(metadata double %16, metadata !285, metadata !DIExpression()), !dbg !471
  %17 = fmul double %15, 0x3FC2AAAAAAAAAAAB, !dbg !477
  call void @llvm.dbg.value(metadata double %17, metadata !286, metadata !DIExpression()), !dbg !471
  %18 = fmul double %16, 0x3FBF1C71C71C71C7, !dbg !478
  call void @llvm.dbg.value(metadata double %18, metadata !287, metadata !DIExpression()), !dbg !471
  %19 = fmul double %16, 0x3FEBF76D5A63DF22, !dbg !479
  %20 = fmul double %15, %19, !dbg !480
  call void @llvm.dbg.value(metadata double %20, metadata !288, metadata !DIExpression()), !dbg !471
  %21 = fmul double %16, 0x402E08A14A60801B, !dbg !481
  %22 = fmul double %16, %21, !dbg !482
  call void @llvm.dbg.value(metadata double %22, metadata !289, metadata !DIExpression()), !dbg !471
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %17), !dbg !483
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %18), !dbg !484
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %20), !dbg !485
  %handler_result4 = call double @fAddHandlerDouble(double %22, double %handler_result3), !dbg !486
  call void @llvm.dbg.value(metadata double poison, metadata !256, metadata !DIExpression()), !dbg !470
  %23 = fneg double %handler_result4, !dbg !486
  %24 = fmul double %13, %23, !dbg !486
  tail call void @llvm.dbg.value(metadata double %24, metadata !455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !457
  tail call void @llvm.dbg.value(metadata double poison, metadata !455, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !457
  br label %26

25:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !457
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !455, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !457
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 485, i32 noundef 1) #4, !dbg !487
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !457
  tail call void @llvm.dbg.value(metadata i32 1, metadata !456, metadata !DIExpression()), !dbg !457
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 540, i32 noundef 1) #4, !dbg !488
  br label %26, !dbg !488

26:                                               ; preds = %25, %9, %5
  %27 = phi double [ 0x7FF8000000000000, %25 ], [ %24, %9 ], [ %8, %5 ]
  ret double %27, !dbg !492
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Bi_deriv(i32 noundef %0) local_unnamed_addr #0 !dbg !493 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !495, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 %0, metadata !315, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata ptr undef, metadata !316, metadata !DIExpression()), !dbg !499
  %2 = icmp eq i32 %0, 0, !dbg !501
  br i1 %2, label %25, label %3, !dbg !502

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 51, !dbg !503
  br i1 %4, label %5, label %9, !dbg !504

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !505
  %7 = getelementptr inbounds [51 x double], ptr @zero_Bip, i64 0, i64 %6, !dbg !506
  %8 = load double, ptr %7, align 8, !dbg !506, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !498
  tail call void @llvm.dbg.value(metadata double poison, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !498
  br label %26, !dbg !507

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !508
  %11 = fmul double %10, 4.000000e+00, !dbg !509
  %handler_result = call double @fAddHandlerDouble(double %11, double -1.000000e+00), !dbg !510
  %12 = fmul double %handler_result, 0x3FF2D97C7F3321D2, !dbg !510
  call void @llvm.dbg.value(metadata double %12, metadata !317, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata double %12, metadata !280, metadata !DIExpression()), !dbg !512
  %13 = tail call double @pow(double noundef %12, double noundef 0x3FE5555555555555) #4, !dbg !514
  call void @llvm.dbg.value(metadata double %13, metadata !283, metadata !DIExpression()), !dbg !512
  %14 = fmul double %12, %12, !dbg !515
  %15 = fdiv double 1.000000e+00, %14, !dbg !516
  call void @llvm.dbg.value(metadata double %15, metadata !284, metadata !DIExpression()), !dbg !512
  %16 = fmul double %15, %15, !dbg !517
  call void @llvm.dbg.value(metadata double %16, metadata !285, metadata !DIExpression()), !dbg !512
  %17 = fmul double %15, 0x3FC2AAAAAAAAAAAB, !dbg !518
  call void @llvm.dbg.value(metadata double %17, metadata !286, metadata !DIExpression()), !dbg !512
  %18 = fmul double %16, 0x3FBF1C71C71C71C7, !dbg !519
  call void @llvm.dbg.value(metadata double %18, metadata !287, metadata !DIExpression()), !dbg !512
  %19 = fmul double %16, 0x3FEBF76D5A63DF22, !dbg !520
  %20 = fmul double %15, %19, !dbg !521
  call void @llvm.dbg.value(metadata double %20, metadata !288, metadata !DIExpression()), !dbg !512
  %21 = fmul double %16, 0x402E08A14A60801B, !dbg !522
  %22 = fmul double %16, %21, !dbg !523
  call void @llvm.dbg.value(metadata double %22, metadata !289, metadata !DIExpression()), !dbg !512
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %17), !dbg !524
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %18), !dbg !525
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %20), !dbg !526
  %handler_result4 = call double @fAddHandlerDouble(double %22, double %handler_result3), !dbg !527
  call void @llvm.dbg.value(metadata double poison, metadata !321, metadata !DIExpression()), !dbg !511
  %23 = fneg double %handler_result4, !dbg !527
  %24 = fmul double %13, %23, !dbg !527
  tail call void @llvm.dbg.value(metadata double %24, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !498
  tail call void @llvm.dbg.value(metadata double poison, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !498
  br label %26

25:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !498
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !498
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 508, i32 noundef 1) #4, !dbg !528
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !498
  tail call void @llvm.dbg.value(metadata i32 1, metadata !497, metadata !DIExpression()), !dbg !498
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef 1) #4, !dbg !529
  br label %26, !dbg !529

26:                                               ; preds = %25, %9, %5
  %27 = phi double [ 0x7FF8000000000000, %25 ], [ %24, %9 ], [ %8, %5 ]
  ret double %27, !dbg !533
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !534 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "airy_zero.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "dead89808534e1f44178aacbe811f1a7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "zero_Ai", scope: !14, file: !2, line: 29, type: !84, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, globals: !55, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !{!0, !7, !56, !62, !64, !66, !68, !73, !75, !80, !12, !82, !89, !91}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_constu, 101, DW_OP_stack_value))
!57 = distinct !DIGlobalVariable(name: "size_zero_Ai", scope: !14, file: !2, line: 132, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 18, baseType: !61)
!60 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 101, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "size_zero_Bi", scope: !14, file: !2, line: 238, type: !58, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 101, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "size_zero_Aip", scope: !14, file: !2, line: 344, type: !58, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_constu, 51, DW_OP_stack_value))
!67 = distinct !DIGlobalVariable(name: "size_zero_Bip", scope: !14, file: !2, line: 400, type: !58, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 34)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 535, type: !70, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 40)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !77, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "zero_Bi", scope: !14, file: !2, line: 135, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 6464, elements: !87)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!87 = !{!88}
!88 = !DISubrange(count: 101)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "zero_Aip", scope: !14, file: !2, line: 241, type: !84, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "zero_Bip", scope: !14, file: !2, line: 347, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 3264, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 51)
!96 = !{i32 7, !"Dwarf Version", i32 5}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{i32 1, !"wchar_size", i32 4}
!99 = !{i32 8, !"PIC Level", i32 2}
!100 = !{i32 7, !"PIE Level", i32 2}
!101 = !{i32 7, !"uwtable", i32 2}
!102 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!103 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!104 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_e", scope: !2, file: !2, line: 434, type: !105, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !115)
!105 = !DISubroutineType(types: !106)
!106 = !{!18, !107, !108}
!107 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !110, line: 41, baseType: !111)
!110 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !110, line: 37, size: 128, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !111, file: !110, line: 38, baseType: !86, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !111, file: !110, line: 39, baseType: !86, size: 64, offset: 64)
!115 = !{!116, !117, !118, !122}
!116 = !DILocalVariable(name: "s", arg: 1, scope: !104, file: !2, line: 434, type: !107)
!117 = !DILocalVariable(name: "result", arg: 2, scope: !104, file: !2, line: 434, type: !108)
!118 = !DILocalVariable(name: "z", scope: !119, file: !2, line: 447, type: !85)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 446, column: 8)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 441, column: 11)
!121 = distinct !DILexicalBlock(scope: !104, file: !2, line: 438, column: 6)
!122 = !DILocalVariable(name: "f", scope: !119, file: !2, line: 448, type: !85)
!123 = !DILocation(line: 0, scope: !104)
!124 = !DILocation(line: 438, column: 8, scope: !121)
!125 = !DILocation(line: 438, column: 6, scope: !104)
!126 = !DILocation(line: 439, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 439, column: 5)
!128 = distinct !DILexicalBlock(scope: !121, file: !2, line: 438, column: 13)
!129 = !{!130, !131, i64 0}
!130 = !{!"gsl_sf_result_struct", !131, i64 0, !131, i64 8}
!131 = !{!"double", !132, i64 0}
!132 = !{!"omnipotent char", !133, i64 0}
!133 = !{!"Simple C/C++ TBAA"}
!134 = !{!130, !131, i64 8}
!135 = !DILocation(line: 439, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !127, file: !2, line: 439, column: 5)
!137 = !DILocation(line: 441, column: 13, scope: !120)
!138 = !DILocation(line: 441, column: 11, scope: !121)
!139 = !DILocation(line: 441, column: 11, scope: !120)
!140 = !DILocation(line: 442, column: 19, scope: !141)
!141 = distinct !DILexicalBlock(scope: !120, file: !2, line: 441, column: 29)
!142 = !{!131, !131, i64 0}
!143 = !DILocation(line: 442, column: 17, scope: !141)
!144 = !DILocation(line: 443, column: 37, scope: !141)
!145 = !DILocation(line: 443, column: 35, scope: !141)
!146 = !DILocation(line: 443, column: 13, scope: !141)
!147 = !DILocation(line: 443, column: 17, scope: !141)
!148 = !DILocation(line: 444, column: 5, scope: !141)
!149 = !DILocation(line: 447, column: 42, scope: !119)
!150 = !DILocation(line: 447, column: 41, scope: !119)
!151 = !DILocation(line: 447, column: 35, scope: !119)
!152 = !DILocation(line: 0, scope: !119)
!153 = !DILocalVariable(name: "z", arg: 1, scope: !154, file: !2, line: 406, type: !86)
!154 = distinct !DISubprogram(name: "zero_f", scope: !2, file: !2, line: 406, type: !155, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!86, !86}
!157 = !{!153, !158, !159, !160, !161, !162, !163, !164}
!158 = !DILocalVariable(name: "pre", scope: !154, file: !2, line: 408, type: !85)
!159 = !DILocalVariable(name: "zi2", scope: !154, file: !2, line: 409, type: !85)
!160 = !DILocalVariable(name: "zi4", scope: !154, file: !2, line: 410, type: !85)
!161 = !DILocalVariable(name: "t1", scope: !154, file: !2, line: 411, type: !85)
!162 = !DILocalVariable(name: "t2", scope: !154, file: !2, line: 412, type: !85)
!163 = !DILocalVariable(name: "t3", scope: !154, file: !2, line: 413, type: !85)
!164 = !DILocalVariable(name: "t4", scope: !154, file: !2, line: 414, type: !85)
!165 = !DILocation(line: 0, scope: !154, inlinedAt: !166)
!166 = distinct !DILocation(line: 448, column: 22, scope: !119)
!167 = !DILocation(line: 408, column: 22, scope: !154, inlinedAt: !166)
!168 = !DILocation(line: 409, column: 28, scope: !154, inlinedAt: !166)
!169 = !DILocation(line: 409, column: 25, scope: !154, inlinedAt: !166)
!170 = !DILocation(line: 410, column: 26, scope: !154, inlinedAt: !166)
!171 = !DILocation(line: 411, column: 32, scope: !154, inlinedAt: !166)
!172 = !DILocation(line: 412, column: 32, scope: !154, inlinedAt: !166)
!173 = !DILocation(line: 413, column: 39, scope: !154, inlinedAt: !166)
!174 = !DILocation(line: 413, column: 45, scope: !154, inlinedAt: !166)
!175 = !DILocation(line: 414, column: 45, scope: !154, inlinedAt: !166)
!176 = !DILocation(line: 414, column: 51, scope: !154, inlinedAt: !166)
!177 = !DILocation(line: 415, column: 26, scope: !154, inlinedAt: !166)
!178 = !DILocation(line: 415, column: 31, scope: !154, inlinedAt: !166)
!179 = !DILocation(line: 415, column: 36, scope: !154, inlinedAt: !166)
!180 = !DILocation(line: 449, column: 19, scope: !119)
!181 = !DILocation(line: 449, column: 17, scope: !119)
!182 = !DILocation(line: 450, column: 43, scope: !119)
!183 = !DILocation(line: 450, column: 41, scope: !119)
!184 = !DILocation(line: 450, column: 13, scope: !119)
!185 = !DILocation(line: 450, column: 17, scope: !119)
!186 = !DILocation(line: 0, scope: !121)
!187 = !DILocation(line: 453, column: 1, scope: !104)
!188 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191, !191, !18, !18}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!193 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_e", scope: !2, file: !2, line: 457, type: !105, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !194)
!194 = !{!195, !196, !197, !201}
!195 = !DILocalVariable(name: "s", arg: 1, scope: !193, file: !2, line: 457, type: !107)
!196 = !DILocalVariable(name: "result", arg: 2, scope: !193, file: !2, line: 457, type: !108)
!197 = !DILocalVariable(name: "z", scope: !198, file: !2, line: 470, type: !85)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 469, column: 8)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 464, column: 11)
!200 = distinct !DILexicalBlock(scope: !193, file: !2, line: 461, column: 6)
!201 = !DILocalVariable(name: "f", scope: !198, file: !2, line: 471, type: !85)
!202 = !DILocation(line: 0, scope: !193)
!203 = !DILocation(line: 461, column: 8, scope: !200)
!204 = !DILocation(line: 461, column: 6, scope: !193)
!205 = !DILocation(line: 462, column: 5, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 462, column: 5)
!207 = distinct !DILexicalBlock(scope: !200, file: !2, line: 461, column: 13)
!208 = !DILocation(line: 462, column: 5, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !2, line: 462, column: 5)
!210 = !DILocation(line: 464, column: 13, scope: !199)
!211 = !DILocation(line: 464, column: 11, scope: !200)
!212 = !DILocation(line: 464, column: 11, scope: !199)
!213 = !DILocation(line: 465, column: 19, scope: !214)
!214 = distinct !DILexicalBlock(scope: !199, file: !2, line: 464, column: 29)
!215 = !DILocation(line: 465, column: 17, scope: !214)
!216 = !DILocation(line: 466, column: 37, scope: !214)
!217 = !DILocation(line: 466, column: 35, scope: !214)
!218 = !DILocation(line: 466, column: 13, scope: !214)
!219 = !DILocation(line: 466, column: 17, scope: !214)
!220 = !DILocation(line: 467, column: 5, scope: !214)
!221 = !DILocation(line: 470, column: 42, scope: !198)
!222 = !DILocation(line: 470, column: 41, scope: !198)
!223 = !DILocation(line: 470, column: 35, scope: !198)
!224 = !DILocation(line: 0, scope: !198)
!225 = !DILocation(line: 0, scope: !154, inlinedAt: !226)
!226 = distinct !DILocation(line: 471, column: 22, scope: !198)
!227 = !DILocation(line: 408, column: 22, scope: !154, inlinedAt: !226)
!228 = !DILocation(line: 409, column: 28, scope: !154, inlinedAt: !226)
!229 = !DILocation(line: 409, column: 25, scope: !154, inlinedAt: !226)
!230 = !DILocation(line: 410, column: 26, scope: !154, inlinedAt: !226)
!231 = !DILocation(line: 411, column: 32, scope: !154, inlinedAt: !226)
!232 = !DILocation(line: 412, column: 32, scope: !154, inlinedAt: !226)
!233 = !DILocation(line: 413, column: 39, scope: !154, inlinedAt: !226)
!234 = !DILocation(line: 413, column: 45, scope: !154, inlinedAt: !226)
!235 = !DILocation(line: 414, column: 45, scope: !154, inlinedAt: !226)
!236 = !DILocation(line: 414, column: 51, scope: !154, inlinedAt: !226)
!237 = !DILocation(line: 415, column: 26, scope: !154, inlinedAt: !226)
!238 = !DILocation(line: 415, column: 31, scope: !154, inlinedAt: !226)
!239 = !DILocation(line: 415, column: 36, scope: !154, inlinedAt: !226)
!240 = !DILocation(line: 472, column: 19, scope: !198)
!241 = !DILocation(line: 472, column: 17, scope: !198)
!242 = !DILocation(line: 473, column: 43, scope: !198)
!243 = !DILocation(line: 473, column: 41, scope: !198)
!244 = !DILocation(line: 473, column: 13, scope: !198)
!245 = !DILocation(line: 473, column: 17, scope: !198)
!246 = !DILocation(line: 0, scope: !200)
!247 = !DILocation(line: 476, column: 1, scope: !193)
!248 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_deriv_e", scope: !2, file: !2, line: 480, type: !105, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !249)
!249 = !{!250, !251, !252, !256}
!250 = !DILocalVariable(name: "s", arg: 1, scope: !248, file: !2, line: 480, type: !107)
!251 = !DILocalVariable(name: "result", arg: 2, scope: !248, file: !2, line: 480, type: !108)
!252 = !DILocalVariable(name: "z", scope: !253, file: !2, line: 493, type: !85)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 492, column: 8)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 487, column: 11)
!255 = distinct !DILexicalBlock(scope: !248, file: !2, line: 484, column: 6)
!256 = !DILocalVariable(name: "g", scope: !253, file: !2, line: 494, type: !85)
!257 = !DILocation(line: 0, scope: !248)
!258 = !DILocation(line: 484, column: 8, scope: !255)
!259 = !DILocation(line: 484, column: 6, scope: !248)
!260 = !DILocation(line: 485, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 485, column: 5)
!262 = distinct !DILexicalBlock(scope: !255, file: !2, line: 484, column: 13)
!263 = !DILocation(line: 485, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !2, line: 485, column: 5)
!265 = !DILocation(line: 487, column: 13, scope: !254)
!266 = !DILocation(line: 487, column: 11, scope: !255)
!267 = !DILocation(line: 487, column: 11, scope: !254)
!268 = !DILocation(line: 488, column: 19, scope: !269)
!269 = distinct !DILexicalBlock(scope: !254, file: !2, line: 487, column: 30)
!270 = !DILocation(line: 488, column: 17, scope: !269)
!271 = !DILocation(line: 489, column: 37, scope: !269)
!272 = !DILocation(line: 489, column: 35, scope: !269)
!273 = !DILocation(line: 489, column: 13, scope: !269)
!274 = !DILocation(line: 489, column: 17, scope: !269)
!275 = !DILocation(line: 490, column: 5, scope: !269)
!276 = !DILocation(line: 493, column: 42, scope: !253)
!277 = !DILocation(line: 493, column: 41, scope: !253)
!278 = !DILocation(line: 493, column: 35, scope: !253)
!279 = !DILocation(line: 0, scope: !253)
!280 = !DILocalVariable(name: "z", arg: 1, scope: !281, file: !2, line: 419, type: !86)
!281 = distinct !DISubprogram(name: "zero_g", scope: !2, file: !2, line: 419, type: !155, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !282)
!282 = !{!280, !283, !284, !285, !286, !287, !288, !289}
!283 = !DILocalVariable(name: "pre", scope: !281, file: !2, line: 421, type: !85)
!284 = !DILocalVariable(name: "zi2", scope: !281, file: !2, line: 422, type: !85)
!285 = !DILocalVariable(name: "zi4", scope: !281, file: !2, line: 423, type: !85)
!286 = !DILocalVariable(name: "t1", scope: !281, file: !2, line: 424, type: !85)
!287 = !DILocalVariable(name: "t2", scope: !281, file: !2, line: 425, type: !85)
!288 = !DILocalVariable(name: "t3", scope: !281, file: !2, line: 426, type: !85)
!289 = !DILocalVariable(name: "t4", scope: !281, file: !2, line: 427, type: !85)
!290 = !DILocation(line: 0, scope: !281, inlinedAt: !291)
!291 = distinct !DILocation(line: 494, column: 22, scope: !253)
!292 = !DILocation(line: 421, column: 22, scope: !281, inlinedAt: !291)
!293 = !DILocation(line: 422, column: 28, scope: !281, inlinedAt: !291)
!294 = !DILocation(line: 422, column: 25, scope: !281, inlinedAt: !291)
!295 = !DILocation(line: 423, column: 26, scope: !281, inlinedAt: !291)
!296 = !DILocation(line: 424, column: 32, scope: !281, inlinedAt: !291)
!297 = !DILocation(line: 425, column: 34, scope: !281, inlinedAt: !291)
!298 = !DILocation(line: 426, column: 41, scope: !281, inlinedAt: !291)
!299 = !DILocation(line: 426, column: 47, scope: !281, inlinedAt: !291)
!300 = !DILocation(line: 427, column: 44, scope: !281, inlinedAt: !291)
!301 = !DILocation(line: 427, column: 50, scope: !281, inlinedAt: !291)
!302 = !DILocation(line: 428, column: 26, scope: !281, inlinedAt: !291)
!303 = !DILocation(line: 428, column: 31, scope: !281, inlinedAt: !291)
!304 = !DILocation(line: 428, column: 36, scope: !281, inlinedAt: !291)
!305 = !DILocation(line: 495, column: 19, scope: !253)
!306 = !DILocation(line: 495, column: 17, scope: !253)
!307 = !DILocation(line: 496, column: 43, scope: !253)
!308 = !DILocation(line: 496, column: 41, scope: !253)
!309 = !DILocation(line: 496, column: 13, scope: !253)
!310 = !DILocation(line: 496, column: 17, scope: !253)
!311 = !DILocation(line: 0, scope: !255)
!312 = !DILocation(line: 499, column: 1, scope: !248)
!313 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_deriv_e", scope: !2, file: !2, line: 503, type: !105, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !314)
!314 = !{!315, !316, !317, !321}
!315 = !DILocalVariable(name: "s", arg: 1, scope: !313, file: !2, line: 503, type: !107)
!316 = !DILocalVariable(name: "result", arg: 2, scope: !313, file: !2, line: 503, type: !108)
!317 = !DILocalVariable(name: "z", scope: !318, file: !2, line: 516, type: !85)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 515, column: 8)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 510, column: 11)
!320 = distinct !DILexicalBlock(scope: !313, file: !2, line: 507, column: 6)
!321 = !DILocalVariable(name: "g", scope: !318, file: !2, line: 517, type: !85)
!322 = !DILocation(line: 0, scope: !313)
!323 = !DILocation(line: 507, column: 8, scope: !320)
!324 = !DILocation(line: 507, column: 6, scope: !313)
!325 = !DILocation(line: 508, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 508, column: 5)
!327 = distinct !DILexicalBlock(scope: !320, file: !2, line: 507, column: 13)
!328 = !DILocation(line: 508, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !2, line: 508, column: 5)
!330 = !DILocation(line: 510, column: 13, scope: !319)
!331 = !DILocation(line: 510, column: 11, scope: !320)
!332 = !DILocation(line: 510, column: 11, scope: !319)
!333 = !DILocation(line: 511, column: 19, scope: !334)
!334 = distinct !DILexicalBlock(scope: !319, file: !2, line: 510, column: 30)
!335 = !DILocation(line: 511, column: 17, scope: !334)
!336 = !DILocation(line: 512, column: 37, scope: !334)
!337 = !DILocation(line: 512, column: 35, scope: !334)
!338 = !DILocation(line: 512, column: 13, scope: !334)
!339 = !DILocation(line: 512, column: 17, scope: !334)
!340 = !DILocation(line: 513, column: 5, scope: !334)
!341 = !DILocation(line: 516, column: 42, scope: !318)
!342 = !DILocation(line: 516, column: 41, scope: !318)
!343 = !DILocation(line: 516, column: 35, scope: !318)
!344 = !DILocation(line: 0, scope: !318)
!345 = !DILocation(line: 0, scope: !281, inlinedAt: !346)
!346 = distinct !DILocation(line: 517, column: 22, scope: !318)
!347 = !DILocation(line: 421, column: 22, scope: !281, inlinedAt: !346)
!348 = !DILocation(line: 422, column: 28, scope: !281, inlinedAt: !346)
!349 = !DILocation(line: 422, column: 25, scope: !281, inlinedAt: !346)
!350 = !DILocation(line: 423, column: 26, scope: !281, inlinedAt: !346)
!351 = !DILocation(line: 424, column: 32, scope: !281, inlinedAt: !346)
!352 = !DILocation(line: 425, column: 34, scope: !281, inlinedAt: !346)
!353 = !DILocation(line: 426, column: 41, scope: !281, inlinedAt: !346)
!354 = !DILocation(line: 426, column: 47, scope: !281, inlinedAt: !346)
!355 = !DILocation(line: 427, column: 44, scope: !281, inlinedAt: !346)
!356 = !DILocation(line: 427, column: 50, scope: !281, inlinedAt: !346)
!357 = !DILocation(line: 428, column: 26, scope: !281, inlinedAt: !346)
!358 = !DILocation(line: 428, column: 31, scope: !281, inlinedAt: !346)
!359 = !DILocation(line: 428, column: 36, scope: !281, inlinedAt: !346)
!360 = !DILocation(line: 518, column: 19, scope: !318)
!361 = !DILocation(line: 518, column: 17, scope: !318)
!362 = !DILocation(line: 519, column: 43, scope: !318)
!363 = !DILocation(line: 519, column: 41, scope: !318)
!364 = !DILocation(line: 519, column: 13, scope: !318)
!365 = !DILocation(line: 519, column: 17, scope: !318)
!366 = !DILocation(line: 0, scope: !320)
!367 = !DILocation(line: 522, column: 1, scope: !313)
!368 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai", scope: !2, file: !2, line: 528, type: !369, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!86, !107}
!371 = !{!372, !373, !374}
!372 = !DILocalVariable(name: "s", arg: 1, scope: !368, file: !2, line: 528, type: !107)
!373 = !DILocalVariable(name: "result", scope: !368, file: !2, line: 530, type: !109)
!374 = !DILocalVariable(name: "status", scope: !368, file: !2, line: 530, type: !18)
!375 = !DILocation(line: 0, scope: !368)
!376 = !DILocation(line: 0, scope: !104, inlinedAt: !377)
!377 = distinct !DILocation(line: 530, column: 3, scope: !368)
!378 = !DILocation(line: 438, column: 8, scope: !121, inlinedAt: !377)
!379 = !DILocation(line: 438, column: 6, scope: !104, inlinedAt: !377)
!380 = !DILocation(line: 441, column: 13, scope: !120, inlinedAt: !377)
!381 = !DILocation(line: 441, column: 11, scope: !121, inlinedAt: !377)
!382 = !DILocation(line: 441, column: 11, scope: !120, inlinedAt: !377)
!383 = !DILocation(line: 442, column: 19, scope: !141, inlinedAt: !377)
!384 = !DILocation(line: 444, column: 5, scope: !141, inlinedAt: !377)
!385 = !DILocation(line: 447, column: 42, scope: !119, inlinedAt: !377)
!386 = !DILocation(line: 447, column: 41, scope: !119, inlinedAt: !377)
!387 = !DILocation(line: 447, column: 35, scope: !119, inlinedAt: !377)
!388 = !DILocation(line: 0, scope: !119, inlinedAt: !377)
!389 = !DILocation(line: 0, scope: !154, inlinedAt: !390)
!390 = distinct !DILocation(line: 448, column: 22, scope: !119, inlinedAt: !377)
!391 = !DILocation(line: 408, column: 22, scope: !154, inlinedAt: !390)
!392 = !DILocation(line: 409, column: 28, scope: !154, inlinedAt: !390)
!393 = !DILocation(line: 409, column: 25, scope: !154, inlinedAt: !390)
!394 = !DILocation(line: 410, column: 26, scope: !154, inlinedAt: !390)
!395 = !DILocation(line: 411, column: 32, scope: !154, inlinedAt: !390)
!396 = !DILocation(line: 412, column: 32, scope: !154, inlinedAt: !390)
!397 = !DILocation(line: 413, column: 39, scope: !154, inlinedAt: !390)
!398 = !DILocation(line: 413, column: 45, scope: !154, inlinedAt: !390)
!399 = !DILocation(line: 414, column: 45, scope: !154, inlinedAt: !390)
!400 = !DILocation(line: 414, column: 51, scope: !154, inlinedAt: !390)
!401 = !DILocation(line: 415, column: 26, scope: !154, inlinedAt: !390)
!402 = !DILocation(line: 415, column: 31, scope: !154, inlinedAt: !390)
!403 = !DILocation(line: 415, column: 36, scope: !154, inlinedAt: !390)
!404 = !DILocation(line: 449, column: 19, scope: !119, inlinedAt: !377)
!405 = !DILocation(line: 439, column: 5, scope: !136, inlinedAt: !377)
!406 = !DILocation(line: 530, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 530, column: 3)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 530, column: 3)
!409 = distinct !DILexicalBlock(scope: !368, file: !2, line: 530, column: 3)
!410 = !DILocation(line: 531, column: 1, scope: !368)
!411 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi", scope: !2, file: !2, line: 533, type: !369, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !412)
!412 = !{!413, !414, !415}
!413 = !DILocalVariable(name: "s", arg: 1, scope: !411, file: !2, line: 533, type: !107)
!414 = !DILocalVariable(name: "result", scope: !411, file: !2, line: 535, type: !109)
!415 = !DILocalVariable(name: "status", scope: !411, file: !2, line: 535, type: !18)
!416 = !DILocation(line: 0, scope: !411)
!417 = !DILocation(line: 0, scope: !193, inlinedAt: !418)
!418 = distinct !DILocation(line: 535, column: 3, scope: !411)
!419 = !DILocation(line: 461, column: 8, scope: !200, inlinedAt: !418)
!420 = !DILocation(line: 461, column: 6, scope: !193, inlinedAt: !418)
!421 = !DILocation(line: 464, column: 13, scope: !199, inlinedAt: !418)
!422 = !DILocation(line: 464, column: 11, scope: !200, inlinedAt: !418)
!423 = !DILocation(line: 464, column: 11, scope: !199, inlinedAt: !418)
!424 = !DILocation(line: 465, column: 19, scope: !214, inlinedAt: !418)
!425 = !DILocation(line: 467, column: 5, scope: !214, inlinedAt: !418)
!426 = !DILocation(line: 470, column: 42, scope: !198, inlinedAt: !418)
!427 = !DILocation(line: 470, column: 41, scope: !198, inlinedAt: !418)
!428 = !DILocation(line: 470, column: 35, scope: !198, inlinedAt: !418)
!429 = !DILocation(line: 0, scope: !198, inlinedAt: !418)
!430 = !DILocation(line: 0, scope: !154, inlinedAt: !431)
!431 = distinct !DILocation(line: 471, column: 22, scope: !198, inlinedAt: !418)
!432 = !DILocation(line: 408, column: 22, scope: !154, inlinedAt: !431)
!433 = !DILocation(line: 409, column: 28, scope: !154, inlinedAt: !431)
!434 = !DILocation(line: 409, column: 25, scope: !154, inlinedAt: !431)
!435 = !DILocation(line: 410, column: 26, scope: !154, inlinedAt: !431)
!436 = !DILocation(line: 411, column: 32, scope: !154, inlinedAt: !431)
!437 = !DILocation(line: 412, column: 32, scope: !154, inlinedAt: !431)
!438 = !DILocation(line: 413, column: 39, scope: !154, inlinedAt: !431)
!439 = !DILocation(line: 413, column: 45, scope: !154, inlinedAt: !431)
!440 = !DILocation(line: 414, column: 45, scope: !154, inlinedAt: !431)
!441 = !DILocation(line: 414, column: 51, scope: !154, inlinedAt: !431)
!442 = !DILocation(line: 415, column: 26, scope: !154, inlinedAt: !431)
!443 = !DILocation(line: 415, column: 31, scope: !154, inlinedAt: !431)
!444 = !DILocation(line: 415, column: 36, scope: !154, inlinedAt: !431)
!445 = !DILocation(line: 472, column: 19, scope: !198, inlinedAt: !418)
!446 = !DILocation(line: 462, column: 5, scope: !209, inlinedAt: !418)
!447 = !DILocation(line: 535, column: 3, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !2, line: 535, column: 3)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 535, column: 3)
!450 = distinct !DILexicalBlock(scope: !411, file: !2, line: 535, column: 3)
!451 = !DILocation(line: 536, column: 1, scope: !411)
!452 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_deriv", scope: !2, file: !2, line: 538, type: !369, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !453)
!453 = !{!454, !455, !456}
!454 = !DILocalVariable(name: "s", arg: 1, scope: !452, file: !2, line: 538, type: !107)
!455 = !DILocalVariable(name: "result", scope: !452, file: !2, line: 540, type: !109)
!456 = !DILocalVariable(name: "status", scope: !452, file: !2, line: 540, type: !18)
!457 = !DILocation(line: 0, scope: !452)
!458 = !DILocation(line: 0, scope: !248, inlinedAt: !459)
!459 = distinct !DILocation(line: 540, column: 3, scope: !452)
!460 = !DILocation(line: 484, column: 8, scope: !255, inlinedAt: !459)
!461 = !DILocation(line: 484, column: 6, scope: !248, inlinedAt: !459)
!462 = !DILocation(line: 487, column: 13, scope: !254, inlinedAt: !459)
!463 = !DILocation(line: 487, column: 11, scope: !255, inlinedAt: !459)
!464 = !DILocation(line: 487, column: 11, scope: !254, inlinedAt: !459)
!465 = !DILocation(line: 488, column: 19, scope: !269, inlinedAt: !459)
!466 = !DILocation(line: 490, column: 5, scope: !269, inlinedAt: !459)
!467 = !DILocation(line: 493, column: 42, scope: !253, inlinedAt: !459)
!468 = !DILocation(line: 493, column: 41, scope: !253, inlinedAt: !459)
!469 = !DILocation(line: 493, column: 35, scope: !253, inlinedAt: !459)
!470 = !DILocation(line: 0, scope: !253, inlinedAt: !459)
!471 = !DILocation(line: 0, scope: !281, inlinedAt: !472)
!472 = distinct !DILocation(line: 494, column: 22, scope: !253, inlinedAt: !459)
!473 = !DILocation(line: 421, column: 22, scope: !281, inlinedAt: !472)
!474 = !DILocation(line: 422, column: 28, scope: !281, inlinedAt: !472)
!475 = !DILocation(line: 422, column: 25, scope: !281, inlinedAt: !472)
!476 = !DILocation(line: 423, column: 26, scope: !281, inlinedAt: !472)
!477 = !DILocation(line: 424, column: 32, scope: !281, inlinedAt: !472)
!478 = !DILocation(line: 425, column: 34, scope: !281, inlinedAt: !472)
!479 = !DILocation(line: 426, column: 41, scope: !281, inlinedAt: !472)
!480 = !DILocation(line: 426, column: 47, scope: !281, inlinedAt: !472)
!481 = !DILocation(line: 427, column: 44, scope: !281, inlinedAt: !472)
!482 = !DILocation(line: 427, column: 50, scope: !281, inlinedAt: !472)
!483 = !DILocation(line: 428, column: 26, scope: !281, inlinedAt: !472)
!484 = !DILocation(line: 428, column: 31, scope: !281, inlinedAt: !472)
!485 = !DILocation(line: 428, column: 36, scope: !281, inlinedAt: !472)
!486 = !DILocation(line: 495, column: 19, scope: !253, inlinedAt: !459)
!487 = !DILocation(line: 485, column: 5, scope: !264, inlinedAt: !459)
!488 = !DILocation(line: 540, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 540, column: 3)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 540, column: 3)
!491 = distinct !DILexicalBlock(scope: !452, file: !2, line: 540, column: 3)
!492 = !DILocation(line: 541, column: 1, scope: !452)
!493 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_deriv", scope: !2, file: !2, line: 543, type: !369, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !494)
!494 = !{!495, !496, !497}
!495 = !DILocalVariable(name: "s", arg: 1, scope: !493, file: !2, line: 543, type: !107)
!496 = !DILocalVariable(name: "result", scope: !493, file: !2, line: 545, type: !109)
!497 = !DILocalVariable(name: "status", scope: !493, file: !2, line: 545, type: !18)
!498 = !DILocation(line: 0, scope: !493)
!499 = !DILocation(line: 0, scope: !313, inlinedAt: !500)
!500 = distinct !DILocation(line: 545, column: 3, scope: !493)
!501 = !DILocation(line: 507, column: 8, scope: !320, inlinedAt: !500)
!502 = !DILocation(line: 507, column: 6, scope: !313, inlinedAt: !500)
!503 = !DILocation(line: 510, column: 13, scope: !319, inlinedAt: !500)
!504 = !DILocation(line: 510, column: 11, scope: !320, inlinedAt: !500)
!505 = !DILocation(line: 510, column: 11, scope: !319, inlinedAt: !500)
!506 = !DILocation(line: 511, column: 19, scope: !334, inlinedAt: !500)
!507 = !DILocation(line: 513, column: 5, scope: !334, inlinedAt: !500)
!508 = !DILocation(line: 516, column: 42, scope: !318, inlinedAt: !500)
!509 = !DILocation(line: 516, column: 41, scope: !318, inlinedAt: !500)
!510 = !DILocation(line: 516, column: 35, scope: !318, inlinedAt: !500)
!511 = !DILocation(line: 0, scope: !318, inlinedAt: !500)
!512 = !DILocation(line: 0, scope: !281, inlinedAt: !513)
!513 = distinct !DILocation(line: 517, column: 22, scope: !318, inlinedAt: !500)
!514 = !DILocation(line: 421, column: 22, scope: !281, inlinedAt: !513)
!515 = !DILocation(line: 422, column: 28, scope: !281, inlinedAt: !513)
!516 = !DILocation(line: 422, column: 25, scope: !281, inlinedAt: !513)
!517 = !DILocation(line: 423, column: 26, scope: !281, inlinedAt: !513)
!518 = !DILocation(line: 424, column: 32, scope: !281, inlinedAt: !513)
!519 = !DILocation(line: 425, column: 34, scope: !281, inlinedAt: !513)
!520 = !DILocation(line: 426, column: 41, scope: !281, inlinedAt: !513)
!521 = !DILocation(line: 426, column: 47, scope: !281, inlinedAt: !513)
!522 = !DILocation(line: 427, column: 44, scope: !281, inlinedAt: !513)
!523 = !DILocation(line: 427, column: 50, scope: !281, inlinedAt: !513)
!524 = !DILocation(line: 428, column: 26, scope: !281, inlinedAt: !513)
!525 = !DILocation(line: 428, column: 31, scope: !281, inlinedAt: !513)
!526 = !DILocation(line: 428, column: 36, scope: !281, inlinedAt: !513)
!527 = !DILocation(line: 518, column: 19, scope: !318, inlinedAt: !500)
!528 = !DILocation(line: 508, column: 5, scope: !329, inlinedAt: !500)
!529 = !DILocation(line: 545, column: 3, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 545, column: 3)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 545, column: 3)
!532 = distinct !DILexicalBlock(scope: !493, file: !2, line: 545, column: 3)
!533 = !DILocation(line: 546, column: 1, scope: !493)
!534 = !DISubprogram(name: "pow", scope: !535, file: !535, line: 140, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!536 = !DISubroutineType(types: !537)
!537 = !{!86, !86, !86}
