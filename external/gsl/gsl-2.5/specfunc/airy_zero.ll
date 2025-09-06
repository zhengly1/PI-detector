; ModuleID = 'airy_zero.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 439, i32 noundef 1) #5, !dbg !135
  br label %39, !dbg !135

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
  br label %39, !dbg !148

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !149
  %17 = fmul double %16, 4.000000e+00, !dbg !150
  %18 = fadd double %17, -1.000000e+00, !dbg !151
  %19 = fmul double %18, 0x3FF2D97C7F3321D2, !dbg !152
  tail call void @llvm.dbg.value(metadata double %19, metadata !118, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata double %19, metadata !154, metadata !DIExpression()), !dbg !166
  %20 = tail call double @pow(double noundef %19, double noundef 0x3FE5555555555555) #5, !dbg !168
  call void @llvm.dbg.value(metadata double %20, metadata !159, metadata !DIExpression()), !dbg !166
  %21 = fmul double %19, %19, !dbg !169
  %22 = fdiv double 1.000000e+00, %21, !dbg !170
  call void @llvm.dbg.value(metadata double %22, metadata !160, metadata !DIExpression()), !dbg !166
  %23 = fmul double %22, %22, !dbg !171
  call void @llvm.dbg.value(metadata double %23, metadata !161, metadata !DIExpression()), !dbg !166
  %24 = fmul double %22, 0x3FBAAAAAAAAAAAAB, !dbg !172
  call void @llvm.dbg.value(metadata double %24, metadata !162, metadata !DIExpression()), !dbg !166
  %25 = fmul double %23, 0x3FC1C71C71C71C72, !dbg !173
  call void @llvm.dbg.value(metadata double %25, metadata !163, metadata !DIExpression()), !dbg !166
  %26 = fmul double %23, 0x3FEDC148B0FCD6EA, !dbg !174
  %27 = fmul double %22, %26, !dbg !175
  call void @llvm.dbg.value(metadata double %27, metadata !164, metadata !DIExpression()), !dbg !166
  %28 = fmul double %23, 0x402F04AFFD978D9F, !dbg !176
  %29 = fmul double %23, %28, !dbg !177
  call void @llvm.dbg.value(metadata double %29, metadata !165, metadata !DIExpression()), !dbg !166
  %30 = fadd double %24, 1.000000e+00, !dbg !178
  %31 = fsub double %30, %25, !dbg !179
  %32 = fadd double %31, %27, !dbg !180
  %33 = fsub double %32, %29, !dbg !181
  tail call void @llvm.dbg.value(metadata double poison, metadata !122, metadata !DIExpression()), !dbg !153
  %34 = fneg double %33, !dbg !182
  %35 = fmul double %20, %34, !dbg !182
  store double %35, ptr %1, align 8, !dbg !183, !tbaa !129
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !184
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !185
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !186
  store double %37, ptr %38, align 8, !dbg !187, !tbaa !134
  br label %39

39:                                               ; preds = %4, %8, %15
  %40 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !188
  ret i32 %40, !dbg !189
}

declare !dbg !190 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_zero_Bi_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !195 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !197, metadata !DIExpression()), !dbg !204
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !198, metadata !DIExpression()), !dbg !204
  %3 = icmp eq i32 %0, 0, !dbg !205
  br i1 %3, label %4, label %6, !dbg !206

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !207, !tbaa !129
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !207
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !207, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 462, i32 noundef 1) #5, !dbg !210
  br label %39, !dbg !210

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !212
  br i1 %7, label %8, label %15, !dbg !213

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64, !dbg !214
  %10 = getelementptr inbounds [101 x double], ptr @zero_Bi, i64 0, i64 %9, !dbg !215
  %11 = load double, ptr %10, align 8, !dbg !215, !tbaa !142
  store double %11, ptr %1, align 8, !dbg !217, !tbaa !129
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !218
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !219
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !220
  store double %13, ptr %14, align 8, !dbg !221, !tbaa !134
  br label %39, !dbg !222

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !223
  %17 = fmul double %16, 4.000000e+00, !dbg !224
  %18 = fadd double %17, -3.000000e+00, !dbg !225
  %19 = fmul double %18, 0x3FF2D97C7F3321D2, !dbg !226
  tail call void @llvm.dbg.value(metadata double %19, metadata !199, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %19, metadata !154, metadata !DIExpression()), !dbg !228
  %20 = tail call double @pow(double noundef %19, double noundef 0x3FE5555555555555) #5, !dbg !230
  call void @llvm.dbg.value(metadata double %20, metadata !159, metadata !DIExpression()), !dbg !228
  %21 = fmul double %19, %19, !dbg !231
  %22 = fdiv double 1.000000e+00, %21, !dbg !232
  call void @llvm.dbg.value(metadata double %22, metadata !160, metadata !DIExpression()), !dbg !228
  %23 = fmul double %22, %22, !dbg !233
  call void @llvm.dbg.value(metadata double %23, metadata !161, metadata !DIExpression()), !dbg !228
  %24 = fmul double %22, 0x3FBAAAAAAAAAAAAB, !dbg !234
  call void @llvm.dbg.value(metadata double %24, metadata !162, metadata !DIExpression()), !dbg !228
  %25 = fmul double %23, 0x3FC1C71C71C71C72, !dbg !235
  call void @llvm.dbg.value(metadata double %25, metadata !163, metadata !DIExpression()), !dbg !228
  %26 = fmul double %23, 0x3FEDC148B0FCD6EA, !dbg !236
  %27 = fmul double %22, %26, !dbg !237
  call void @llvm.dbg.value(metadata double %27, metadata !164, metadata !DIExpression()), !dbg !228
  %28 = fmul double %23, 0x402F04AFFD978D9F, !dbg !238
  %29 = fmul double %23, %28, !dbg !239
  call void @llvm.dbg.value(metadata double %29, metadata !165, metadata !DIExpression()), !dbg !228
  %30 = fadd double %24, 1.000000e+00, !dbg !240
  %31 = fsub double %30, %25, !dbg !241
  %32 = fadd double %31, %27, !dbg !242
  %33 = fsub double %32, %29, !dbg !243
  tail call void @llvm.dbg.value(metadata double poison, metadata !203, metadata !DIExpression()), !dbg !227
  %34 = fneg double %33, !dbg !244
  %35 = fmul double %20, %34, !dbg !244
  store double %35, ptr %1, align 8, !dbg !245, !tbaa !129
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !246
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !247
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !248
  store double %37, ptr %38, align 8, !dbg !249, !tbaa !134
  br label %39

39:                                               ; preds = %4, %8, %15
  %40 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !250
  ret i32 %40, !dbg !251
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_zero_Ai_deriv_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !252 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !254, metadata !DIExpression()), !dbg !261
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !255, metadata !DIExpression()), !dbg !261
  %3 = icmp eq i32 %0, 0, !dbg !262
  br i1 %3, label %4, label %6, !dbg !263

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !264, !tbaa !129
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !264
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !264, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 485, i32 noundef 1) #5, !dbg !267
  br label %39, !dbg !267

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !269
  br i1 %7, label %8, label %15, !dbg !270

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64, !dbg !271
  %10 = getelementptr inbounds [101 x double], ptr @zero_Aip, i64 0, i64 %9, !dbg !272
  %11 = load double, ptr %10, align 8, !dbg !272, !tbaa !142
  store double %11, ptr %1, align 8, !dbg !274, !tbaa !129
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !275
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !276
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !277
  store double %13, ptr %14, align 8, !dbg !278, !tbaa !134
  br label %39, !dbg !279

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !280
  %17 = fmul double %16, 4.000000e+00, !dbg !281
  %18 = fadd double %17, -3.000000e+00, !dbg !282
  %19 = fmul double %18, 0x3FF2D97C7F3321D2, !dbg !283
  tail call void @llvm.dbg.value(metadata double %19, metadata !256, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %19, metadata !285, metadata !DIExpression()), !dbg !295
  %20 = tail call double @pow(double noundef %19, double noundef 0x3FE5555555555555) #5, !dbg !297
  call void @llvm.dbg.value(metadata double %20, metadata !288, metadata !DIExpression()), !dbg !295
  %21 = fmul double %19, %19, !dbg !298
  %22 = fdiv double 1.000000e+00, %21, !dbg !299
  call void @llvm.dbg.value(metadata double %22, metadata !289, metadata !DIExpression()), !dbg !295
  %23 = fmul double %22, %22, !dbg !300
  call void @llvm.dbg.value(metadata double %23, metadata !290, metadata !DIExpression()), !dbg !295
  %24 = fmul double %22, 0x3FC2AAAAAAAAAAAB, !dbg !301
  call void @llvm.dbg.value(metadata double %24, metadata !291, metadata !DIExpression()), !dbg !295
  %25 = fmul double %23, 0x3FBF1C71C71C71C7, !dbg !302
  call void @llvm.dbg.value(metadata double %25, metadata !292, metadata !DIExpression()), !dbg !295
  %26 = fmul double %23, 0x3FEBF76D5A63DF22, !dbg !303
  %27 = fmul double %22, %26, !dbg !304
  call void @llvm.dbg.value(metadata double %27, metadata !293, metadata !DIExpression()), !dbg !295
  %28 = fmul double %23, 0x402E08A14A60801B, !dbg !305
  %29 = fmul double %23, %28, !dbg !306
  call void @llvm.dbg.value(metadata double %29, metadata !294, metadata !DIExpression()), !dbg !295
  %30 = fsub double 1.000000e+00, %24, !dbg !307
  %31 = fadd double %30, %25, !dbg !308
  %32 = fsub double %31, %27, !dbg !309
  %33 = fadd double %29, %32, !dbg !310
  tail call void @llvm.dbg.value(metadata double poison, metadata !260, metadata !DIExpression()), !dbg !284
  %34 = fneg double %33, !dbg !311
  %35 = fmul double %20, %34, !dbg !311
  store double %35, ptr %1, align 8, !dbg !312, !tbaa !129
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !313
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !314
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !315
  store double %37, ptr %38, align 8, !dbg !316, !tbaa !134
  br label %39

39:                                               ; preds = %4, %8, %15
  %40 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !317
  ret i32 %40, !dbg !318
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_zero_Bi_deriv_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !319 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !321, metadata !DIExpression()), !dbg !328
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !322, metadata !DIExpression()), !dbg !328
  %3 = icmp eq i32 %0, 0, !dbg !329
  br i1 %3, label %4, label %6, !dbg !330

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !331, !tbaa !129
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !331
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !331, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 508, i32 noundef 1) #5, !dbg !334
  br label %39, !dbg !334

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 51, !dbg !336
  br i1 %7, label %8, label %15, !dbg !337

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64, !dbg !338
  %10 = getelementptr inbounds [51 x double], ptr @zero_Bip, i64 0, i64 %9, !dbg !339
  %11 = load double, ptr %10, align 8, !dbg !339, !tbaa !142
  store double %11, ptr %1, align 8, !dbg !341, !tbaa !129
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !342
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !343
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !344
  store double %13, ptr %14, align 8, !dbg !345, !tbaa !134
  br label %39, !dbg !346

15:                                               ; preds = %6
  %16 = uitofp i32 %0 to double, !dbg !347
  %17 = fmul double %16, 4.000000e+00, !dbg !348
  %18 = fadd double %17, -1.000000e+00, !dbg !349
  %19 = fmul double %18, 0x3FF2D97C7F3321D2, !dbg !350
  tail call void @llvm.dbg.value(metadata double %19, metadata !323, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %19, metadata !285, metadata !DIExpression()), !dbg !352
  %20 = tail call double @pow(double noundef %19, double noundef 0x3FE5555555555555) #5, !dbg !354
  call void @llvm.dbg.value(metadata double %20, metadata !288, metadata !DIExpression()), !dbg !352
  %21 = fmul double %19, %19, !dbg !355
  %22 = fdiv double 1.000000e+00, %21, !dbg !356
  call void @llvm.dbg.value(metadata double %22, metadata !289, metadata !DIExpression()), !dbg !352
  %23 = fmul double %22, %22, !dbg !357
  call void @llvm.dbg.value(metadata double %23, metadata !290, metadata !DIExpression()), !dbg !352
  %24 = fmul double %22, 0x3FC2AAAAAAAAAAAB, !dbg !358
  call void @llvm.dbg.value(metadata double %24, metadata !291, metadata !DIExpression()), !dbg !352
  %25 = fmul double %23, 0x3FBF1C71C71C71C7, !dbg !359
  call void @llvm.dbg.value(metadata double %25, metadata !292, metadata !DIExpression()), !dbg !352
  %26 = fmul double %23, 0x3FEBF76D5A63DF22, !dbg !360
  %27 = fmul double %22, %26, !dbg !361
  call void @llvm.dbg.value(metadata double %27, metadata !293, metadata !DIExpression()), !dbg !352
  %28 = fmul double %23, 0x402E08A14A60801B, !dbg !362
  %29 = fmul double %23, %28, !dbg !363
  call void @llvm.dbg.value(metadata double %29, metadata !294, metadata !DIExpression()), !dbg !352
  %30 = fsub double 1.000000e+00, %24, !dbg !364
  %31 = fadd double %30, %25, !dbg !365
  %32 = fsub double %31, %27, !dbg !366
  %33 = fadd double %29, %32, !dbg !367
  tail call void @llvm.dbg.value(metadata double poison, metadata !327, metadata !DIExpression()), !dbg !351
  %34 = fneg double %33, !dbg !368
  %35 = fmul double %20, %34, !dbg !368
  store double %35, ptr %1, align 8, !dbg !369, !tbaa !129
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !370
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !371
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !372
  store double %37, ptr %38, align 8, !dbg !373, !tbaa !134
  br label %39

39:                                               ; preds = %4, %8, %15
  %40 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !374
  ret i32 %40, !dbg !375
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Ai(i32 noundef %0) local_unnamed_addr #0 !dbg !376 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !380, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i32 %0, metadata !116, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !384
  %2 = icmp eq i32 %0, 0, !dbg !386
  br i1 %2, label %30, label %3, !dbg !387

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !388
  br i1 %4, label %5, label %9, !dbg !389

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !390
  %7 = getelementptr inbounds [101 x double], ptr @zero_Ai, i64 0, i64 %6, !dbg !391
  %8 = load double, ptr %7, align 8, !dbg !391, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !383
  tail call void @llvm.dbg.value(metadata double poison, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !383
  br label %31, !dbg !392

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !393
  %11 = fmul double %10, 4.000000e+00, !dbg !394
  %12 = fadd double %11, -1.000000e+00, !dbg !395
  %13 = fmul double %12, 0x3FF2D97C7F3321D2, !dbg !396
  call void @llvm.dbg.value(metadata double %13, metadata !118, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double %13, metadata !154, metadata !DIExpression()), !dbg !398
  %14 = tail call double @pow(double noundef %13, double noundef 0x3FE5555555555555) #5, !dbg !400
  call void @llvm.dbg.value(metadata double %14, metadata !159, metadata !DIExpression()), !dbg !398
  %15 = fmul double %13, %13, !dbg !401
  %16 = fdiv double 1.000000e+00, %15, !dbg !402
  call void @llvm.dbg.value(metadata double %16, metadata !160, metadata !DIExpression()), !dbg !398
  %17 = fmul double %16, %16, !dbg !403
  call void @llvm.dbg.value(metadata double %17, metadata !161, metadata !DIExpression()), !dbg !398
  %18 = fmul double %16, 0x3FBAAAAAAAAAAAAB, !dbg !404
  call void @llvm.dbg.value(metadata double %18, metadata !162, metadata !DIExpression()), !dbg !398
  %19 = fmul double %17, 0x3FC1C71C71C71C72, !dbg !405
  call void @llvm.dbg.value(metadata double %19, metadata !163, metadata !DIExpression()), !dbg !398
  %20 = fmul double %17, 0x3FEDC148B0FCD6EA, !dbg !406
  %21 = fmul double %16, %20, !dbg !407
  call void @llvm.dbg.value(metadata double %21, metadata !164, metadata !DIExpression()), !dbg !398
  %22 = fmul double %17, 0x402F04AFFD978D9F, !dbg !408
  %23 = fmul double %17, %22, !dbg !409
  call void @llvm.dbg.value(metadata double %23, metadata !165, metadata !DIExpression()), !dbg !398
  %24 = fadd double %18, 1.000000e+00, !dbg !410
  %25 = fsub double %24, %19, !dbg !411
  %26 = fadd double %25, %21, !dbg !412
  %27 = fsub double %26, %23, !dbg !413
  call void @llvm.dbg.value(metadata double poison, metadata !122, metadata !DIExpression()), !dbg !397
  %28 = fneg double %27, !dbg !414
  %29 = fmul double %14, %28, !dbg !414
  tail call void @llvm.dbg.value(metadata double %29, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !383
  tail call void @llvm.dbg.value(metadata double poison, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !383
  br label %31

30:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !383
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !383
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 439, i32 noundef 1) #5, !dbg !415
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !383
  tail call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !383
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 530, i32 noundef 1) #5, !dbg !416
  br label %31, !dbg !416

31:                                               ; preds = %9, %5, %30
  %32 = phi double [ 0x7FF8000000000000, %30 ], [ %29, %9 ], [ %8, %5 ]
  ret double %32, !dbg !420
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Bi(i32 noundef %0) local_unnamed_addr #0 !dbg !421 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !423, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 %0, metadata !197, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata ptr undef, metadata !198, metadata !DIExpression()), !dbg !427
  %2 = icmp eq i32 %0, 0, !dbg !429
  br i1 %2, label %30, label %3, !dbg !430

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !431
  br i1 %4, label %5, label %9, !dbg !432

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !433
  %7 = getelementptr inbounds [101 x double], ptr @zero_Bi, i64 0, i64 %6, !dbg !434
  %8 = load double, ptr %7, align 8, !dbg !434, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double poison, metadata !424, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  br label %31, !dbg !435

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !436
  %11 = fmul double %10, 4.000000e+00, !dbg !437
  %12 = fadd double %11, -3.000000e+00, !dbg !438
  %13 = fmul double %12, 0x3FF2D97C7F3321D2, !dbg !439
  call void @llvm.dbg.value(metadata double %13, metadata !199, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata double %13, metadata !154, metadata !DIExpression()), !dbg !441
  %14 = tail call double @pow(double noundef %13, double noundef 0x3FE5555555555555) #5, !dbg !443
  call void @llvm.dbg.value(metadata double %14, metadata !159, metadata !DIExpression()), !dbg !441
  %15 = fmul double %13, %13, !dbg !444
  %16 = fdiv double 1.000000e+00, %15, !dbg !445
  call void @llvm.dbg.value(metadata double %16, metadata !160, metadata !DIExpression()), !dbg !441
  %17 = fmul double %16, %16, !dbg !446
  call void @llvm.dbg.value(metadata double %17, metadata !161, metadata !DIExpression()), !dbg !441
  %18 = fmul double %16, 0x3FBAAAAAAAAAAAAB, !dbg !447
  call void @llvm.dbg.value(metadata double %18, metadata !162, metadata !DIExpression()), !dbg !441
  %19 = fmul double %17, 0x3FC1C71C71C71C72, !dbg !448
  call void @llvm.dbg.value(metadata double %19, metadata !163, metadata !DIExpression()), !dbg !441
  %20 = fmul double %17, 0x3FEDC148B0FCD6EA, !dbg !449
  %21 = fmul double %16, %20, !dbg !450
  call void @llvm.dbg.value(metadata double %21, metadata !164, metadata !DIExpression()), !dbg !441
  %22 = fmul double %17, 0x402F04AFFD978D9F, !dbg !451
  %23 = fmul double %17, %22, !dbg !452
  call void @llvm.dbg.value(metadata double %23, metadata !165, metadata !DIExpression()), !dbg !441
  %24 = fadd double %18, 1.000000e+00, !dbg !453
  %25 = fsub double %24, %19, !dbg !454
  %26 = fadd double %25, %21, !dbg !455
  %27 = fsub double %26, %23, !dbg !456
  call void @llvm.dbg.value(metadata double poison, metadata !203, metadata !DIExpression()), !dbg !440
  %28 = fneg double %27, !dbg !457
  %29 = fmul double %14, %28, !dbg !457
  tail call void @llvm.dbg.value(metadata double %29, metadata !424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double poison, metadata !424, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  br label %31

30:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !424, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 462, i32 noundef 1) #5, !dbg !458
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata i32 1, metadata !425, metadata !DIExpression()), !dbg !426
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 535, i32 noundef 1) #5, !dbg !459
  br label %31, !dbg !459

31:                                               ; preds = %9, %5, %30
  %32 = phi double [ 0x7FF8000000000000, %30 ], [ %29, %9 ], [ %8, %5 ]
  ret double %32, !dbg !463
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Ai_deriv(i32 noundef %0) local_unnamed_addr #0 !dbg !464 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !466, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i32 %0, metadata !254, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata ptr undef, metadata !255, metadata !DIExpression()), !dbg !470
  %2 = icmp eq i32 %0, 0, !dbg !472
  br i1 %2, label %30, label %3, !dbg !473

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !474
  br i1 %4, label %5, label %9, !dbg !475

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !476
  %7 = getelementptr inbounds [101 x double], ptr @zero_Aip, i64 0, i64 %6, !dbg !477
  %8 = load double, ptr %7, align 8, !dbg !477, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !467, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !469
  tail call void @llvm.dbg.value(metadata double poison, metadata !467, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !469
  br label %31, !dbg !478

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !479
  %11 = fmul double %10, 4.000000e+00, !dbg !480
  %12 = fadd double %11, -3.000000e+00, !dbg !481
  %13 = fmul double %12, 0x3FF2D97C7F3321D2, !dbg !482
  call void @llvm.dbg.value(metadata double %13, metadata !256, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata double %13, metadata !285, metadata !DIExpression()), !dbg !484
  %14 = tail call double @pow(double noundef %13, double noundef 0x3FE5555555555555) #5, !dbg !486
  call void @llvm.dbg.value(metadata double %14, metadata !288, metadata !DIExpression()), !dbg !484
  %15 = fmul double %13, %13, !dbg !487
  %16 = fdiv double 1.000000e+00, %15, !dbg !488
  call void @llvm.dbg.value(metadata double %16, metadata !289, metadata !DIExpression()), !dbg !484
  %17 = fmul double %16, %16, !dbg !489
  call void @llvm.dbg.value(metadata double %17, metadata !290, metadata !DIExpression()), !dbg !484
  %18 = fmul double %16, 0x3FC2AAAAAAAAAAAB, !dbg !490
  call void @llvm.dbg.value(metadata double %18, metadata !291, metadata !DIExpression()), !dbg !484
  %19 = fmul double %17, 0x3FBF1C71C71C71C7, !dbg !491
  call void @llvm.dbg.value(metadata double %19, metadata !292, metadata !DIExpression()), !dbg !484
  %20 = fmul double %17, 0x3FEBF76D5A63DF22, !dbg !492
  %21 = fmul double %16, %20, !dbg !493
  call void @llvm.dbg.value(metadata double %21, metadata !293, metadata !DIExpression()), !dbg !484
  %22 = fmul double %17, 0x402E08A14A60801B, !dbg !494
  %23 = fmul double %17, %22, !dbg !495
  call void @llvm.dbg.value(metadata double %23, metadata !294, metadata !DIExpression()), !dbg !484
  %24 = fsub double 1.000000e+00, %18, !dbg !496
  %25 = fadd double %24, %19, !dbg !497
  %26 = fsub double %25, %21, !dbg !498
  %27 = fadd double %23, %26, !dbg !499
  call void @llvm.dbg.value(metadata double poison, metadata !260, metadata !DIExpression()), !dbg !483
  %28 = fneg double %27, !dbg !500
  %29 = fmul double %14, %28, !dbg !500
  tail call void @llvm.dbg.value(metadata double %29, metadata !467, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !469
  tail call void @llvm.dbg.value(metadata double poison, metadata !467, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !469
  br label %31

30:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !467, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !469
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !467, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !469
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 485, i32 noundef 1) #5, !dbg !501
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !467, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 1, metadata !468, metadata !DIExpression()), !dbg !469
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 540, i32 noundef 1) #5, !dbg !502
  br label %31, !dbg !502

31:                                               ; preds = %9, %5, %30
  %32 = phi double [ 0x7FF8000000000000, %30 ], [ %29, %9 ], [ %8, %5 ]
  ret double %32, !dbg !506
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_zero_Bi_deriv(i32 noundef %0) local_unnamed_addr #0 !dbg !507 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %0, metadata !321, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr undef, metadata !322, metadata !DIExpression()), !dbg !513
  %2 = icmp eq i32 %0, 0, !dbg !515
  br i1 %2, label %30, label %3, !dbg !516

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 51, !dbg !517
  br i1 %4, label %5, label %9, !dbg !518

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64, !dbg !519
  %7 = getelementptr inbounds [51 x double], ptr @zero_Bip, i64 0, i64 %6, !dbg !520
  %8 = load double, ptr %7, align 8, !dbg !520, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %8, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !512
  tail call void @llvm.dbg.value(metadata double poison, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !512
  br label %31, !dbg !521

9:                                                ; preds = %3
  %10 = uitofp i32 %0 to double, !dbg !522
  %11 = fmul double %10, 4.000000e+00, !dbg !523
  %12 = fadd double %11, -1.000000e+00, !dbg !524
  %13 = fmul double %12, 0x3FF2D97C7F3321D2, !dbg !525
  call void @llvm.dbg.value(metadata double %13, metadata !323, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata double %13, metadata !285, metadata !DIExpression()), !dbg !527
  %14 = tail call double @pow(double noundef %13, double noundef 0x3FE5555555555555) #5, !dbg !529
  call void @llvm.dbg.value(metadata double %14, metadata !288, metadata !DIExpression()), !dbg !527
  %15 = fmul double %13, %13, !dbg !530
  %16 = fdiv double 1.000000e+00, %15, !dbg !531
  call void @llvm.dbg.value(metadata double %16, metadata !289, metadata !DIExpression()), !dbg !527
  %17 = fmul double %16, %16, !dbg !532
  call void @llvm.dbg.value(metadata double %17, metadata !290, metadata !DIExpression()), !dbg !527
  %18 = fmul double %16, 0x3FC2AAAAAAAAAAAB, !dbg !533
  call void @llvm.dbg.value(metadata double %18, metadata !291, metadata !DIExpression()), !dbg !527
  %19 = fmul double %17, 0x3FBF1C71C71C71C7, !dbg !534
  call void @llvm.dbg.value(metadata double %19, metadata !292, metadata !DIExpression()), !dbg !527
  %20 = fmul double %17, 0x3FEBF76D5A63DF22, !dbg !535
  %21 = fmul double %16, %20, !dbg !536
  call void @llvm.dbg.value(metadata double %21, metadata !293, metadata !DIExpression()), !dbg !527
  %22 = fmul double %17, 0x402E08A14A60801B, !dbg !537
  %23 = fmul double %17, %22, !dbg !538
  call void @llvm.dbg.value(metadata double %23, metadata !294, metadata !DIExpression()), !dbg !527
  %24 = fsub double 1.000000e+00, %18, !dbg !539
  %25 = fadd double %24, %19, !dbg !540
  %26 = fsub double %25, %21, !dbg !541
  %27 = fadd double %23, %26, !dbg !542
  call void @llvm.dbg.value(metadata double poison, metadata !327, metadata !DIExpression()), !dbg !526
  %28 = fneg double %27, !dbg !543
  %29 = fmul double %14, %28, !dbg !543
  tail call void @llvm.dbg.value(metadata double %29, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !512
  tail call void @llvm.dbg.value(metadata double poison, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !512
  br label %31

30:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !512
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !512
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 508, i32 noundef 1) #5, !dbg !544
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !512
  tail call void @llvm.dbg.value(metadata i32 1, metadata !511, metadata !DIExpression()), !dbg !512
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef 1) #5, !dbg !545
  br label %31, !dbg !545

31:                                               ; preds = %9, %5, %30
  %32 = phi double [ 0x7FF8000000000000, %30 ], [ %29, %9 ], [ %8, %5 ]
  ret double %32, !dbg !549
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !550 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!151 = !DILocation(line: 447, column: 44, scope: !119)
!152 = !DILocation(line: 447, column: 35, scope: !119)
!153 = !DILocation(line: 0, scope: !119)
!154 = !DILocalVariable(name: "z", arg: 1, scope: !155, file: !2, line: 406, type: !86)
!155 = distinct !DISubprogram(name: "zero_f", scope: !2, file: !2, line: 406, type: !156, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!86, !86}
!158 = !{!154, !159, !160, !161, !162, !163, !164, !165}
!159 = !DILocalVariable(name: "pre", scope: !155, file: !2, line: 408, type: !85)
!160 = !DILocalVariable(name: "zi2", scope: !155, file: !2, line: 409, type: !85)
!161 = !DILocalVariable(name: "zi4", scope: !155, file: !2, line: 410, type: !85)
!162 = !DILocalVariable(name: "t1", scope: !155, file: !2, line: 411, type: !85)
!163 = !DILocalVariable(name: "t2", scope: !155, file: !2, line: 412, type: !85)
!164 = !DILocalVariable(name: "t3", scope: !155, file: !2, line: 413, type: !85)
!165 = !DILocalVariable(name: "t4", scope: !155, file: !2, line: 414, type: !85)
!166 = !DILocation(line: 0, scope: !155, inlinedAt: !167)
!167 = distinct !DILocation(line: 448, column: 22, scope: !119)
!168 = !DILocation(line: 408, column: 22, scope: !155, inlinedAt: !167)
!169 = !DILocation(line: 409, column: 28, scope: !155, inlinedAt: !167)
!170 = !DILocation(line: 409, column: 25, scope: !155, inlinedAt: !167)
!171 = !DILocation(line: 410, column: 26, scope: !155, inlinedAt: !167)
!172 = !DILocation(line: 411, column: 32, scope: !155, inlinedAt: !167)
!173 = !DILocation(line: 412, column: 32, scope: !155, inlinedAt: !167)
!174 = !DILocation(line: 413, column: 39, scope: !155, inlinedAt: !167)
!175 = !DILocation(line: 413, column: 45, scope: !155, inlinedAt: !167)
!176 = !DILocation(line: 414, column: 45, scope: !155, inlinedAt: !167)
!177 = !DILocation(line: 414, column: 51, scope: !155, inlinedAt: !167)
!178 = !DILocation(line: 415, column: 21, scope: !155, inlinedAt: !167)
!179 = !DILocation(line: 415, column: 26, scope: !155, inlinedAt: !167)
!180 = !DILocation(line: 415, column: 31, scope: !155, inlinedAt: !167)
!181 = !DILocation(line: 415, column: 36, scope: !155, inlinedAt: !167)
!182 = !DILocation(line: 449, column: 19, scope: !119)
!183 = !DILocation(line: 449, column: 17, scope: !119)
!184 = !DILocation(line: 450, column: 43, scope: !119)
!185 = !DILocation(line: 450, column: 41, scope: !119)
!186 = !DILocation(line: 450, column: 13, scope: !119)
!187 = !DILocation(line: 450, column: 17, scope: !119)
!188 = !DILocation(line: 0, scope: !121)
!189 = !DILocation(line: 453, column: 1, scope: !104)
!190 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !193, !193, !18, !18}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!195 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_e", scope: !2, file: !2, line: 457, type: !105, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !196)
!196 = !{!197, !198, !199, !203}
!197 = !DILocalVariable(name: "s", arg: 1, scope: !195, file: !2, line: 457, type: !107)
!198 = !DILocalVariable(name: "result", arg: 2, scope: !195, file: !2, line: 457, type: !108)
!199 = !DILocalVariable(name: "z", scope: !200, file: !2, line: 470, type: !85)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 469, column: 8)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 464, column: 11)
!202 = distinct !DILexicalBlock(scope: !195, file: !2, line: 461, column: 6)
!203 = !DILocalVariable(name: "f", scope: !200, file: !2, line: 471, type: !85)
!204 = !DILocation(line: 0, scope: !195)
!205 = !DILocation(line: 461, column: 8, scope: !202)
!206 = !DILocation(line: 461, column: 6, scope: !195)
!207 = !DILocation(line: 462, column: 5, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 462, column: 5)
!209 = distinct !DILexicalBlock(scope: !202, file: !2, line: 461, column: 13)
!210 = !DILocation(line: 462, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !2, line: 462, column: 5)
!212 = !DILocation(line: 464, column: 13, scope: !201)
!213 = !DILocation(line: 464, column: 11, scope: !202)
!214 = !DILocation(line: 464, column: 11, scope: !201)
!215 = !DILocation(line: 465, column: 19, scope: !216)
!216 = distinct !DILexicalBlock(scope: !201, file: !2, line: 464, column: 29)
!217 = !DILocation(line: 465, column: 17, scope: !216)
!218 = !DILocation(line: 466, column: 37, scope: !216)
!219 = !DILocation(line: 466, column: 35, scope: !216)
!220 = !DILocation(line: 466, column: 13, scope: !216)
!221 = !DILocation(line: 466, column: 17, scope: !216)
!222 = !DILocation(line: 467, column: 5, scope: !216)
!223 = !DILocation(line: 470, column: 42, scope: !200)
!224 = !DILocation(line: 470, column: 41, scope: !200)
!225 = !DILocation(line: 470, column: 44, scope: !200)
!226 = !DILocation(line: 470, column: 35, scope: !200)
!227 = !DILocation(line: 0, scope: !200)
!228 = !DILocation(line: 0, scope: !155, inlinedAt: !229)
!229 = distinct !DILocation(line: 471, column: 22, scope: !200)
!230 = !DILocation(line: 408, column: 22, scope: !155, inlinedAt: !229)
!231 = !DILocation(line: 409, column: 28, scope: !155, inlinedAt: !229)
!232 = !DILocation(line: 409, column: 25, scope: !155, inlinedAt: !229)
!233 = !DILocation(line: 410, column: 26, scope: !155, inlinedAt: !229)
!234 = !DILocation(line: 411, column: 32, scope: !155, inlinedAt: !229)
!235 = !DILocation(line: 412, column: 32, scope: !155, inlinedAt: !229)
!236 = !DILocation(line: 413, column: 39, scope: !155, inlinedAt: !229)
!237 = !DILocation(line: 413, column: 45, scope: !155, inlinedAt: !229)
!238 = !DILocation(line: 414, column: 45, scope: !155, inlinedAt: !229)
!239 = !DILocation(line: 414, column: 51, scope: !155, inlinedAt: !229)
!240 = !DILocation(line: 415, column: 21, scope: !155, inlinedAt: !229)
!241 = !DILocation(line: 415, column: 26, scope: !155, inlinedAt: !229)
!242 = !DILocation(line: 415, column: 31, scope: !155, inlinedAt: !229)
!243 = !DILocation(line: 415, column: 36, scope: !155, inlinedAt: !229)
!244 = !DILocation(line: 472, column: 19, scope: !200)
!245 = !DILocation(line: 472, column: 17, scope: !200)
!246 = !DILocation(line: 473, column: 43, scope: !200)
!247 = !DILocation(line: 473, column: 41, scope: !200)
!248 = !DILocation(line: 473, column: 13, scope: !200)
!249 = !DILocation(line: 473, column: 17, scope: !200)
!250 = !DILocation(line: 0, scope: !202)
!251 = !DILocation(line: 476, column: 1, scope: !195)
!252 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_deriv_e", scope: !2, file: !2, line: 480, type: !105, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !253)
!253 = !{!254, !255, !256, !260}
!254 = !DILocalVariable(name: "s", arg: 1, scope: !252, file: !2, line: 480, type: !107)
!255 = !DILocalVariable(name: "result", arg: 2, scope: !252, file: !2, line: 480, type: !108)
!256 = !DILocalVariable(name: "z", scope: !257, file: !2, line: 493, type: !85)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 492, column: 8)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 487, column: 11)
!259 = distinct !DILexicalBlock(scope: !252, file: !2, line: 484, column: 6)
!260 = !DILocalVariable(name: "g", scope: !257, file: !2, line: 494, type: !85)
!261 = !DILocation(line: 0, scope: !252)
!262 = !DILocation(line: 484, column: 8, scope: !259)
!263 = !DILocation(line: 484, column: 6, scope: !252)
!264 = !DILocation(line: 485, column: 5, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 485, column: 5)
!266 = distinct !DILexicalBlock(scope: !259, file: !2, line: 484, column: 13)
!267 = !DILocation(line: 485, column: 5, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !2, line: 485, column: 5)
!269 = !DILocation(line: 487, column: 13, scope: !258)
!270 = !DILocation(line: 487, column: 11, scope: !259)
!271 = !DILocation(line: 487, column: 11, scope: !258)
!272 = !DILocation(line: 488, column: 19, scope: !273)
!273 = distinct !DILexicalBlock(scope: !258, file: !2, line: 487, column: 30)
!274 = !DILocation(line: 488, column: 17, scope: !273)
!275 = !DILocation(line: 489, column: 37, scope: !273)
!276 = !DILocation(line: 489, column: 35, scope: !273)
!277 = !DILocation(line: 489, column: 13, scope: !273)
!278 = !DILocation(line: 489, column: 17, scope: !273)
!279 = !DILocation(line: 490, column: 5, scope: !273)
!280 = !DILocation(line: 493, column: 42, scope: !257)
!281 = !DILocation(line: 493, column: 41, scope: !257)
!282 = !DILocation(line: 493, column: 44, scope: !257)
!283 = !DILocation(line: 493, column: 35, scope: !257)
!284 = !DILocation(line: 0, scope: !257)
!285 = !DILocalVariable(name: "z", arg: 1, scope: !286, file: !2, line: 419, type: !86)
!286 = distinct !DISubprogram(name: "zero_g", scope: !2, file: !2, line: 419, type: !156, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !287)
!287 = !{!285, !288, !289, !290, !291, !292, !293, !294}
!288 = !DILocalVariable(name: "pre", scope: !286, file: !2, line: 421, type: !85)
!289 = !DILocalVariable(name: "zi2", scope: !286, file: !2, line: 422, type: !85)
!290 = !DILocalVariable(name: "zi4", scope: !286, file: !2, line: 423, type: !85)
!291 = !DILocalVariable(name: "t1", scope: !286, file: !2, line: 424, type: !85)
!292 = !DILocalVariable(name: "t2", scope: !286, file: !2, line: 425, type: !85)
!293 = !DILocalVariable(name: "t3", scope: !286, file: !2, line: 426, type: !85)
!294 = !DILocalVariable(name: "t4", scope: !286, file: !2, line: 427, type: !85)
!295 = !DILocation(line: 0, scope: !286, inlinedAt: !296)
!296 = distinct !DILocation(line: 494, column: 22, scope: !257)
!297 = !DILocation(line: 421, column: 22, scope: !286, inlinedAt: !296)
!298 = !DILocation(line: 422, column: 28, scope: !286, inlinedAt: !296)
!299 = !DILocation(line: 422, column: 25, scope: !286, inlinedAt: !296)
!300 = !DILocation(line: 423, column: 26, scope: !286, inlinedAt: !296)
!301 = !DILocation(line: 424, column: 32, scope: !286, inlinedAt: !296)
!302 = !DILocation(line: 425, column: 34, scope: !286, inlinedAt: !296)
!303 = !DILocation(line: 426, column: 41, scope: !286, inlinedAt: !296)
!304 = !DILocation(line: 426, column: 47, scope: !286, inlinedAt: !296)
!305 = !DILocation(line: 427, column: 44, scope: !286, inlinedAt: !296)
!306 = !DILocation(line: 427, column: 50, scope: !286, inlinedAt: !296)
!307 = !DILocation(line: 428, column: 21, scope: !286, inlinedAt: !296)
!308 = !DILocation(line: 428, column: 26, scope: !286, inlinedAt: !296)
!309 = !DILocation(line: 428, column: 31, scope: !286, inlinedAt: !296)
!310 = !DILocation(line: 428, column: 36, scope: !286, inlinedAt: !296)
!311 = !DILocation(line: 495, column: 19, scope: !257)
!312 = !DILocation(line: 495, column: 17, scope: !257)
!313 = !DILocation(line: 496, column: 43, scope: !257)
!314 = !DILocation(line: 496, column: 41, scope: !257)
!315 = !DILocation(line: 496, column: 13, scope: !257)
!316 = !DILocation(line: 496, column: 17, scope: !257)
!317 = !DILocation(line: 0, scope: !259)
!318 = !DILocation(line: 499, column: 1, scope: !252)
!319 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_deriv_e", scope: !2, file: !2, line: 503, type: !105, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !320)
!320 = !{!321, !322, !323, !327}
!321 = !DILocalVariable(name: "s", arg: 1, scope: !319, file: !2, line: 503, type: !107)
!322 = !DILocalVariable(name: "result", arg: 2, scope: !319, file: !2, line: 503, type: !108)
!323 = !DILocalVariable(name: "z", scope: !324, file: !2, line: 516, type: !85)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 515, column: 8)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 510, column: 11)
!326 = distinct !DILexicalBlock(scope: !319, file: !2, line: 507, column: 6)
!327 = !DILocalVariable(name: "g", scope: !324, file: !2, line: 517, type: !85)
!328 = !DILocation(line: 0, scope: !319)
!329 = !DILocation(line: 507, column: 8, scope: !326)
!330 = !DILocation(line: 507, column: 6, scope: !319)
!331 = !DILocation(line: 508, column: 5, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 508, column: 5)
!333 = distinct !DILexicalBlock(scope: !326, file: !2, line: 507, column: 13)
!334 = !DILocation(line: 508, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !2, line: 508, column: 5)
!336 = !DILocation(line: 510, column: 13, scope: !325)
!337 = !DILocation(line: 510, column: 11, scope: !326)
!338 = !DILocation(line: 510, column: 11, scope: !325)
!339 = !DILocation(line: 511, column: 19, scope: !340)
!340 = distinct !DILexicalBlock(scope: !325, file: !2, line: 510, column: 30)
!341 = !DILocation(line: 511, column: 17, scope: !340)
!342 = !DILocation(line: 512, column: 37, scope: !340)
!343 = !DILocation(line: 512, column: 35, scope: !340)
!344 = !DILocation(line: 512, column: 13, scope: !340)
!345 = !DILocation(line: 512, column: 17, scope: !340)
!346 = !DILocation(line: 513, column: 5, scope: !340)
!347 = !DILocation(line: 516, column: 42, scope: !324)
!348 = !DILocation(line: 516, column: 41, scope: !324)
!349 = !DILocation(line: 516, column: 44, scope: !324)
!350 = !DILocation(line: 516, column: 35, scope: !324)
!351 = !DILocation(line: 0, scope: !324)
!352 = !DILocation(line: 0, scope: !286, inlinedAt: !353)
!353 = distinct !DILocation(line: 517, column: 22, scope: !324)
!354 = !DILocation(line: 421, column: 22, scope: !286, inlinedAt: !353)
!355 = !DILocation(line: 422, column: 28, scope: !286, inlinedAt: !353)
!356 = !DILocation(line: 422, column: 25, scope: !286, inlinedAt: !353)
!357 = !DILocation(line: 423, column: 26, scope: !286, inlinedAt: !353)
!358 = !DILocation(line: 424, column: 32, scope: !286, inlinedAt: !353)
!359 = !DILocation(line: 425, column: 34, scope: !286, inlinedAt: !353)
!360 = !DILocation(line: 426, column: 41, scope: !286, inlinedAt: !353)
!361 = !DILocation(line: 426, column: 47, scope: !286, inlinedAt: !353)
!362 = !DILocation(line: 427, column: 44, scope: !286, inlinedAt: !353)
!363 = !DILocation(line: 427, column: 50, scope: !286, inlinedAt: !353)
!364 = !DILocation(line: 428, column: 21, scope: !286, inlinedAt: !353)
!365 = !DILocation(line: 428, column: 26, scope: !286, inlinedAt: !353)
!366 = !DILocation(line: 428, column: 31, scope: !286, inlinedAt: !353)
!367 = !DILocation(line: 428, column: 36, scope: !286, inlinedAt: !353)
!368 = !DILocation(line: 518, column: 19, scope: !324)
!369 = !DILocation(line: 518, column: 17, scope: !324)
!370 = !DILocation(line: 519, column: 43, scope: !324)
!371 = !DILocation(line: 519, column: 41, scope: !324)
!372 = !DILocation(line: 519, column: 13, scope: !324)
!373 = !DILocation(line: 519, column: 17, scope: !324)
!374 = !DILocation(line: 0, scope: !326)
!375 = !DILocation(line: 522, column: 1, scope: !319)
!376 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai", scope: !2, file: !2, line: 528, type: !377, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!86, !107}
!379 = !{!380, !381, !382}
!380 = !DILocalVariable(name: "s", arg: 1, scope: !376, file: !2, line: 528, type: !107)
!381 = !DILocalVariable(name: "result", scope: !376, file: !2, line: 530, type: !109)
!382 = !DILocalVariable(name: "status", scope: !376, file: !2, line: 530, type: !18)
!383 = !DILocation(line: 0, scope: !376)
!384 = !DILocation(line: 0, scope: !104, inlinedAt: !385)
!385 = distinct !DILocation(line: 530, column: 3, scope: !376)
!386 = !DILocation(line: 438, column: 8, scope: !121, inlinedAt: !385)
!387 = !DILocation(line: 438, column: 6, scope: !104, inlinedAt: !385)
!388 = !DILocation(line: 441, column: 13, scope: !120, inlinedAt: !385)
!389 = !DILocation(line: 441, column: 11, scope: !121, inlinedAt: !385)
!390 = !DILocation(line: 441, column: 11, scope: !120, inlinedAt: !385)
!391 = !DILocation(line: 442, column: 19, scope: !141, inlinedAt: !385)
!392 = !DILocation(line: 444, column: 5, scope: !141, inlinedAt: !385)
!393 = !DILocation(line: 447, column: 42, scope: !119, inlinedAt: !385)
!394 = !DILocation(line: 447, column: 41, scope: !119, inlinedAt: !385)
!395 = !DILocation(line: 447, column: 44, scope: !119, inlinedAt: !385)
!396 = !DILocation(line: 447, column: 35, scope: !119, inlinedAt: !385)
!397 = !DILocation(line: 0, scope: !119, inlinedAt: !385)
!398 = !DILocation(line: 0, scope: !155, inlinedAt: !399)
!399 = distinct !DILocation(line: 448, column: 22, scope: !119, inlinedAt: !385)
!400 = !DILocation(line: 408, column: 22, scope: !155, inlinedAt: !399)
!401 = !DILocation(line: 409, column: 28, scope: !155, inlinedAt: !399)
!402 = !DILocation(line: 409, column: 25, scope: !155, inlinedAt: !399)
!403 = !DILocation(line: 410, column: 26, scope: !155, inlinedAt: !399)
!404 = !DILocation(line: 411, column: 32, scope: !155, inlinedAt: !399)
!405 = !DILocation(line: 412, column: 32, scope: !155, inlinedAt: !399)
!406 = !DILocation(line: 413, column: 39, scope: !155, inlinedAt: !399)
!407 = !DILocation(line: 413, column: 45, scope: !155, inlinedAt: !399)
!408 = !DILocation(line: 414, column: 45, scope: !155, inlinedAt: !399)
!409 = !DILocation(line: 414, column: 51, scope: !155, inlinedAt: !399)
!410 = !DILocation(line: 415, column: 21, scope: !155, inlinedAt: !399)
!411 = !DILocation(line: 415, column: 26, scope: !155, inlinedAt: !399)
!412 = !DILocation(line: 415, column: 31, scope: !155, inlinedAt: !399)
!413 = !DILocation(line: 415, column: 36, scope: !155, inlinedAt: !399)
!414 = !DILocation(line: 449, column: 19, scope: !119, inlinedAt: !385)
!415 = !DILocation(line: 439, column: 5, scope: !136, inlinedAt: !385)
!416 = !DILocation(line: 530, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 530, column: 3)
!418 = distinct !DILexicalBlock(scope: !419, file: !2, line: 530, column: 3)
!419 = distinct !DILexicalBlock(scope: !376, file: !2, line: 530, column: 3)
!420 = !DILocation(line: 531, column: 1, scope: !376)
!421 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi", scope: !2, file: !2, line: 533, type: !377, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !422)
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(name: "s", arg: 1, scope: !421, file: !2, line: 533, type: !107)
!424 = !DILocalVariable(name: "result", scope: !421, file: !2, line: 535, type: !109)
!425 = !DILocalVariable(name: "status", scope: !421, file: !2, line: 535, type: !18)
!426 = !DILocation(line: 0, scope: !421)
!427 = !DILocation(line: 0, scope: !195, inlinedAt: !428)
!428 = distinct !DILocation(line: 535, column: 3, scope: !421)
!429 = !DILocation(line: 461, column: 8, scope: !202, inlinedAt: !428)
!430 = !DILocation(line: 461, column: 6, scope: !195, inlinedAt: !428)
!431 = !DILocation(line: 464, column: 13, scope: !201, inlinedAt: !428)
!432 = !DILocation(line: 464, column: 11, scope: !202, inlinedAt: !428)
!433 = !DILocation(line: 464, column: 11, scope: !201, inlinedAt: !428)
!434 = !DILocation(line: 465, column: 19, scope: !216, inlinedAt: !428)
!435 = !DILocation(line: 467, column: 5, scope: !216, inlinedAt: !428)
!436 = !DILocation(line: 470, column: 42, scope: !200, inlinedAt: !428)
!437 = !DILocation(line: 470, column: 41, scope: !200, inlinedAt: !428)
!438 = !DILocation(line: 470, column: 44, scope: !200, inlinedAt: !428)
!439 = !DILocation(line: 470, column: 35, scope: !200, inlinedAt: !428)
!440 = !DILocation(line: 0, scope: !200, inlinedAt: !428)
!441 = !DILocation(line: 0, scope: !155, inlinedAt: !442)
!442 = distinct !DILocation(line: 471, column: 22, scope: !200, inlinedAt: !428)
!443 = !DILocation(line: 408, column: 22, scope: !155, inlinedAt: !442)
!444 = !DILocation(line: 409, column: 28, scope: !155, inlinedAt: !442)
!445 = !DILocation(line: 409, column: 25, scope: !155, inlinedAt: !442)
!446 = !DILocation(line: 410, column: 26, scope: !155, inlinedAt: !442)
!447 = !DILocation(line: 411, column: 32, scope: !155, inlinedAt: !442)
!448 = !DILocation(line: 412, column: 32, scope: !155, inlinedAt: !442)
!449 = !DILocation(line: 413, column: 39, scope: !155, inlinedAt: !442)
!450 = !DILocation(line: 413, column: 45, scope: !155, inlinedAt: !442)
!451 = !DILocation(line: 414, column: 45, scope: !155, inlinedAt: !442)
!452 = !DILocation(line: 414, column: 51, scope: !155, inlinedAt: !442)
!453 = !DILocation(line: 415, column: 21, scope: !155, inlinedAt: !442)
!454 = !DILocation(line: 415, column: 26, scope: !155, inlinedAt: !442)
!455 = !DILocation(line: 415, column: 31, scope: !155, inlinedAt: !442)
!456 = !DILocation(line: 415, column: 36, scope: !155, inlinedAt: !442)
!457 = !DILocation(line: 472, column: 19, scope: !200, inlinedAt: !428)
!458 = !DILocation(line: 462, column: 5, scope: !211, inlinedAt: !428)
!459 = !DILocation(line: 535, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 535, column: 3)
!461 = distinct !DILexicalBlock(scope: !462, file: !2, line: 535, column: 3)
!462 = distinct !DILexicalBlock(scope: !421, file: !2, line: 535, column: 3)
!463 = !DILocation(line: 536, column: 1, scope: !421)
!464 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_deriv", scope: !2, file: !2, line: 538, type: !377, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !465)
!465 = !{!466, !467, !468}
!466 = !DILocalVariable(name: "s", arg: 1, scope: !464, file: !2, line: 538, type: !107)
!467 = !DILocalVariable(name: "result", scope: !464, file: !2, line: 540, type: !109)
!468 = !DILocalVariable(name: "status", scope: !464, file: !2, line: 540, type: !18)
!469 = !DILocation(line: 0, scope: !464)
!470 = !DILocation(line: 0, scope: !252, inlinedAt: !471)
!471 = distinct !DILocation(line: 540, column: 3, scope: !464)
!472 = !DILocation(line: 484, column: 8, scope: !259, inlinedAt: !471)
!473 = !DILocation(line: 484, column: 6, scope: !252, inlinedAt: !471)
!474 = !DILocation(line: 487, column: 13, scope: !258, inlinedAt: !471)
!475 = !DILocation(line: 487, column: 11, scope: !259, inlinedAt: !471)
!476 = !DILocation(line: 487, column: 11, scope: !258, inlinedAt: !471)
!477 = !DILocation(line: 488, column: 19, scope: !273, inlinedAt: !471)
!478 = !DILocation(line: 490, column: 5, scope: !273, inlinedAt: !471)
!479 = !DILocation(line: 493, column: 42, scope: !257, inlinedAt: !471)
!480 = !DILocation(line: 493, column: 41, scope: !257, inlinedAt: !471)
!481 = !DILocation(line: 493, column: 44, scope: !257, inlinedAt: !471)
!482 = !DILocation(line: 493, column: 35, scope: !257, inlinedAt: !471)
!483 = !DILocation(line: 0, scope: !257, inlinedAt: !471)
!484 = !DILocation(line: 0, scope: !286, inlinedAt: !485)
!485 = distinct !DILocation(line: 494, column: 22, scope: !257, inlinedAt: !471)
!486 = !DILocation(line: 421, column: 22, scope: !286, inlinedAt: !485)
!487 = !DILocation(line: 422, column: 28, scope: !286, inlinedAt: !485)
!488 = !DILocation(line: 422, column: 25, scope: !286, inlinedAt: !485)
!489 = !DILocation(line: 423, column: 26, scope: !286, inlinedAt: !485)
!490 = !DILocation(line: 424, column: 32, scope: !286, inlinedAt: !485)
!491 = !DILocation(line: 425, column: 34, scope: !286, inlinedAt: !485)
!492 = !DILocation(line: 426, column: 41, scope: !286, inlinedAt: !485)
!493 = !DILocation(line: 426, column: 47, scope: !286, inlinedAt: !485)
!494 = !DILocation(line: 427, column: 44, scope: !286, inlinedAt: !485)
!495 = !DILocation(line: 427, column: 50, scope: !286, inlinedAt: !485)
!496 = !DILocation(line: 428, column: 21, scope: !286, inlinedAt: !485)
!497 = !DILocation(line: 428, column: 26, scope: !286, inlinedAt: !485)
!498 = !DILocation(line: 428, column: 31, scope: !286, inlinedAt: !485)
!499 = !DILocation(line: 428, column: 36, scope: !286, inlinedAt: !485)
!500 = !DILocation(line: 495, column: 19, scope: !257, inlinedAt: !471)
!501 = !DILocation(line: 485, column: 5, scope: !268, inlinedAt: !471)
!502 = !DILocation(line: 540, column: 3, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !2, line: 540, column: 3)
!504 = distinct !DILexicalBlock(scope: !505, file: !2, line: 540, column: 3)
!505 = distinct !DILexicalBlock(scope: !464, file: !2, line: 540, column: 3)
!506 = !DILocation(line: 541, column: 1, scope: !464)
!507 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_deriv", scope: !2, file: !2, line: 543, type: !377, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !508)
!508 = !{!509, !510, !511}
!509 = !DILocalVariable(name: "s", arg: 1, scope: !507, file: !2, line: 543, type: !107)
!510 = !DILocalVariable(name: "result", scope: !507, file: !2, line: 545, type: !109)
!511 = !DILocalVariable(name: "status", scope: !507, file: !2, line: 545, type: !18)
!512 = !DILocation(line: 0, scope: !507)
!513 = !DILocation(line: 0, scope: !319, inlinedAt: !514)
!514 = distinct !DILocation(line: 545, column: 3, scope: !507)
!515 = !DILocation(line: 507, column: 8, scope: !326, inlinedAt: !514)
!516 = !DILocation(line: 507, column: 6, scope: !319, inlinedAt: !514)
!517 = !DILocation(line: 510, column: 13, scope: !325, inlinedAt: !514)
!518 = !DILocation(line: 510, column: 11, scope: !326, inlinedAt: !514)
!519 = !DILocation(line: 510, column: 11, scope: !325, inlinedAt: !514)
!520 = !DILocation(line: 511, column: 19, scope: !340, inlinedAt: !514)
!521 = !DILocation(line: 513, column: 5, scope: !340, inlinedAt: !514)
!522 = !DILocation(line: 516, column: 42, scope: !324, inlinedAt: !514)
!523 = !DILocation(line: 516, column: 41, scope: !324, inlinedAt: !514)
!524 = !DILocation(line: 516, column: 44, scope: !324, inlinedAt: !514)
!525 = !DILocation(line: 516, column: 35, scope: !324, inlinedAt: !514)
!526 = !DILocation(line: 0, scope: !324, inlinedAt: !514)
!527 = !DILocation(line: 0, scope: !286, inlinedAt: !528)
!528 = distinct !DILocation(line: 517, column: 22, scope: !324, inlinedAt: !514)
!529 = !DILocation(line: 421, column: 22, scope: !286, inlinedAt: !528)
!530 = !DILocation(line: 422, column: 28, scope: !286, inlinedAt: !528)
!531 = !DILocation(line: 422, column: 25, scope: !286, inlinedAt: !528)
!532 = !DILocation(line: 423, column: 26, scope: !286, inlinedAt: !528)
!533 = !DILocation(line: 424, column: 32, scope: !286, inlinedAt: !528)
!534 = !DILocation(line: 425, column: 34, scope: !286, inlinedAt: !528)
!535 = !DILocation(line: 426, column: 41, scope: !286, inlinedAt: !528)
!536 = !DILocation(line: 426, column: 47, scope: !286, inlinedAt: !528)
!537 = !DILocation(line: 427, column: 44, scope: !286, inlinedAt: !528)
!538 = !DILocation(line: 427, column: 50, scope: !286, inlinedAt: !528)
!539 = !DILocation(line: 428, column: 21, scope: !286, inlinedAt: !528)
!540 = !DILocation(line: 428, column: 26, scope: !286, inlinedAt: !528)
!541 = !DILocation(line: 428, column: 31, scope: !286, inlinedAt: !528)
!542 = !DILocation(line: 428, column: 36, scope: !286, inlinedAt: !528)
!543 = !DILocation(line: 518, column: 19, scope: !324, inlinedAt: !514)
!544 = !DILocation(line: 508, column: 5, scope: !335, inlinedAt: !514)
!545 = !DILocation(line: 545, column: 3, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 545, column: 3)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 545, column: 3)
!548 = distinct !DILexicalBlock(scope: !507, file: !2, line: 545, column: 3)
!549 = !DILocation(line: 546, column: 1, scope: !507)
!550 = !DISubprogram(name: "pow", scope: !551, file: !551, line: 140, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!552 = !DISubroutineType(types: !553)
!553 = !{!86, !86, !86}
