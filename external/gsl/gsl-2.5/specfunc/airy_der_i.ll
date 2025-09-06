; ModuleID = 'airy_der.ll'
source_filename = "airy_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"airy_der.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [48 x i8] c"gsl_sf_airy_Ai_deriv_scaled_e(x, mode, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [41 x i8] c"gsl_sf_airy_Ai_deriv_e(x, mode, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"gsl_sf_airy_Bi_deriv_scaled_e(x, mode, &result)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_airy_Bi_deriv_e(x, mode, &result)\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [22 x i8] c"x is greater than 1.0\00", align 1, !dbg !31
@an20_data = internal unnamed_addr constant [16 x double] [double 0x3F89F46B06647521, double 0xBF4114DA628208E0, double 0xBED6179FF769D5C7, double 0xBE85DA75C9B03772, double 0xBE438A4EB5E73C28, double 0xBE098F1A6BD65D9D, double 0xBDD5DDCBF28D9667, double 0xBDA6E18C22EB4F2D, double 0xBD7C0753A7D51F16, double 0xBD537F27DD469740, double -5.353430e-14, double -1.130620e-14, double -2.577200e-15, double -6.278000e-16, double -1.621000e-16, double -4.410000e-17], align 16, !dbg !36
@aph0_data = internal unnamed_addr constant [15 x double] [double 0xBFB5E8E4C218AC34, double 0x3F525FA6C310CAAB, double 0x3ED1EB22B68F37D4, double 0x3E75F28E1DDBB458, double 0x3E2D205EB7A37081, double 0x3DEEF7F829C4B8FE, double 0x3DB6AE6260FCB00C, double 0x3D84FC840BFB24F3, double 0x3D573BAA8E8F9C3E, double 5.270100e-14, double 9.455500e-15, double 1.870900e-15, double 4.024000e-16, double 9.300000e-17, double 2.290000e-17], align 16, !dbg !97
@an21_data = internal unnamed_addr constant [24 x double] [double 0x3F944EA90E7D1EED, double 0xBF6810A55CDF0FA9, double 0xBF1DC95102F4D3A9, double 0xBEE51679DA394FE6, double 0xBEB5E46950F9439B, double 0xBE8C819A5BA58D50, double 0xBE6598C4AB10E804, double 0xBE4240BEDAB8A7AB, double 0xBE20C35BCB6A311A, double 0xBE006FEEB58315D0, double 0xBDE0FF5EF2F89467, double 0xBDC25E912A7BD616, double 0xBDA49B0002A99112, double 0xBD87DD29665287D7, double 0xBD6C6A2C3515C023, double 0xBD515554F4D7E7DE, double 0xBD359B8B607A3572, double -2.438830e-14, double -7.883100e-15, double -2.588200e-15, double 0xBCCF0D9FD5F68237, double -2.908000e-16, double -9.930000e-17, double -3.430000e-17], align 16, !dbg !104
@aph1_data = internal unnamed_addr constant [22 x double] [double 0xBFBA3805029071EF, double 0x3F7D5E011325A6D4, double 0x3F1FB7E65B8E4772, double 0x3EDEC521E8F6058E, double 0x3EA948D83C4FD9CC, double 0x3E7BF4FBC69DE1D7, double 0x3E52B8BC79EA2F55, double 0x3E2CB0B14E499F0D, double 0x3E084D8AEF971BFD, double 0x3DE641027534F65F, double 0x3DC5B0A817BD708D, double 0x3DA6409E79A860F0, double 0x3D87D4C0519C05C1, double 0x3D6A78D78BF9A4B0, double 0x3D4E59235A83D434, double 0x3D31E1B24AA2395B, double 1.917570e-14, double 5.914300e-15, double 1.859700e-15, double 5.950000e-16, double 1.934000e-16, double 0x3C92639BED2A6842], align 16, !dbg !111
@an22_data = internal unnamed_addr constant [33 x double] [double 0x3FAB840DAFB447CE, double 0xBF89F0B503BEFF19, double 0xBF53896DA017956D, double 0xBF2AA35C23872AE5, double 0xBF076867AD12E3D8, double 0xBEE7C5EABA6995AD, double 0xBECA8AEDBE3136F4, double 0xBEAFB2A940BE85AF, double 0xBE93E883DE91942B, double 0xBE7A03BBFC1985E7, double 0xBE618BD094A8A634, double 0xBE484C30F30B508B, double 0xBE3132BD8D3DA713, double 0xBE18CEED08F3160F, double 0xBE022FA4B539A128, double 0xBDEB0B73ADF8F37A, double 0xBDD45CEAD0846CE6, double 0xBDBF020DB4E59AA9, double 0xBDA7D8A20CF7B6E5, double 0xBD928133926652F8, double 0xBD7CF48ACC5A7033, double 0xBD66D2D0780FEA94, double 0xBD521D13CACB05E2, double 0xBD3CEEB8882BC942, double -4.128460e-14, double -1.667110e-14, double -6.765700e-15, double -2.758500e-15, double -1.129600e-15, double -4.645000e-16, double -1.917000e-16, double -7.940000e-17, double -3.300000e-17], align 16, !dbg !116
@aph2_data = internal unnamed_addr constant [32 x double] [double 0xBFCA54AB16D2540E, double 0x3FA59DD1EC4CE9B7, double 0x3F60C781181BD558, double 0x3F311729E31FA901, double 0x3F08E4FBC30EA0D8, double 0x3EE60AA948FC3437, double 0x3EC61B60DAA6AF00, double 0x3EA830555A1CE80D, double 0x3E8C3AAA88EB6CC4, double 0x3E71503D22BE9735, double 0x3E56190D7BD2C030, double 0x3E3D22AD5CB97976, double 0x3E23BC0A1559E350, double 0x3E0B5AD6E8B4FF7E, double 0x3DF3563228D2D1D1, double 0x3DDBCF8D12084B54, double 0x3DC44D87C00774C2, double 0x3DAE0ABE97D2AF55, double 0x3D967E296F91A8C2, double 0x3D81059CEB8069EC, double 0x3D6A0391B38DCB12, double 0x3D540DBA979947C4, double 0x3D3F2ACCEC26DEE1, double 4.334120e-14, double 1.708010e-14, double 6.773300e-15, double 2.701700e-15, double 1.083500e-15, double 4.367000e-16, double 1.769000e-16, double 7.190000e-17, double 2.940000e-17], align 16, !dbg !123
@aip1_data = internal unnamed_addr constant [25 x double] [double 0x3FA25FB773C0A3CB, double 0x3F877BEF91C29760, double 0xBF48E0B163382612, double 0x3F16CB3BE17E56F4, double 0xBEEAE4AFF3D3A0BF, double 0x3EC281ED85A65441, double 0xBE9C55D90FA6283B, double 0x3E777ACC9D97CC8B, double 0xBE54B2EB8862EFC8, double 0x3E332F596016491F, double 0xBE12898A2A412AAC, double 0x3DF28DF12940762E, double 0xBDD3250B059E1DA3, double 0x3DB448EDE1DC742C, double 0xBD9600A1A6B4C646, double 0x3D785E7EE259399E, double 0xBD5B806B6E4610F1, double 0x3D3F9184C192BB35, double -3.268620e-14, double 9.661900e-15, double -2.893500e-15, double 0x3CCF98E5B3E6A8E9, double -2.688000e-16, double 8.320000e-17, double -2.600000e-17], align 16, !dbg !142
@aip2_data = internal unnamed_addr constant [15 x double] [double 0x3F7ACFBC8A301CC2, double 0x3F63864B520CCA55, double 0xBF0694C493F5AE4B, double 0x3EBA38A88FB4E085, double 0xBE75E3811593552E, double 0x3E373CC4D748D991, double 0xBDFD70B9065B2980, double 0x3DC569B24E08DC2D, double 0xBD916D2BDC24B2F7, double 0x3D5F291B6C8A1C14, double -5.362970e-14, double 6.965000e-15, double -9.620000e-16, double 1.403000e-16, double -2.150000e-17], align 16, !dbg !149
@bip1_data = internal unnamed_addr constant [24 x double] [double 0xBFC622337C13C1EB, double 0xBF8E96AFC233046B, double 0xBF41ED7ED78EC393, double 0x3F24288EFC7272C8, double 0x3EF02F6502FA3E6A, double 0xBEDB71EF39D04E14, double 0x3E9904CBFB92C11D, double 0x3E8BCF9B6CD8B5A9, double 0xBE71AAEEC7498296, double 0x3E40172435916640, double 0x3E13126B6A961275, double 0xBE08F67C36E09364, double 0x3DE88066A1D1935F, double 0xBDB7E5C18511E0F8, double 0xBD81DB9CA30E6FE9, double 0x3D80FCA3083638BD, double 0xBD6544CF42F8B61E, double 1.209450e-13, double -1.251090e-14, double -1.991700e-15, double 1.515400e-15, double -4.977000e-16, double 1.155000e-16, double -1.860000e-17], align 16, !dbg !170
@bip2_data = internal unnamed_addr constant [29 x double] [double 0xBFC0FC379289999E, double 0xBF7748903D5BA1FA, double 0xBF24811F1AA044F7, double 0xBEE7D6CFB76A3069, double 0xBEB811BF388A728D, double 0xBE884A9BA381DDB9, double 0x3E43E3B6BB2A4D25, double 0x3E525C6D63A1EBC7, double 0x3E34795A0B71A809, double 0xBDF82F92E1744BE0, double 0xBE043C12BE527689, double 0xBDD25B9388A9B173, double 0x3DD1947A959BBD2C, double 0x3DB1179C80F2FE59, double -7.923970e-12, double 0xBD86B8FD675F1B6E, double 0x3D7566DB35B78921, double 0x3D5B3CDEDA74AB97, double 0xBD4FA5CFD208AE25, double 0xBD2BE2B6732B5823, double 0x3D29B11A5F09D98F, double 3.329980e-15, double 0xBD04C186E87261FC, double 9.415700e-16, double 1.671540e-15, double -5.513400e-16, double -2.236900e-16, double 1.748700e-16, double 2.070000e-18], align 16, !dbg !174

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_Ai_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !190 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !207, metadata !DIExpression(), metadata !233, metadata ptr %4, metadata !DIExpression()), !dbg !234
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !210, metadata !DIExpression(), metadata !235, metadata ptr %5, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %0, metadata !204, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !205, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !206, metadata !DIExpression()), !dbg !236
  %6 = fcmp olt double %0, -1.000000e+00, !dbg !237
  br i1 %6, label %7, label %23, !dbg !238

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !239
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !240
  %8 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !241, !range !242
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !211, metadata !DIExpression()), !dbg !234
  %9 = load double, ptr %5, align 8, !dbg !243, !tbaa !244
  %handler_result78 = call double @callHandler(i32 2, double %9, double %9), !dbg !249
  tail call void @llvm.dbg.value(metadata double %handler_result78, metadata !212, metadata !DIExpression()), !dbg !234
  %10 = load double, ptr %4, align 8, !dbg !249, !tbaa !244
  %11 = fmul double %handler_result78, %10, !dbg !250
  store double %11, ptr %2, align 8, !dbg !251, !tbaa !244
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !252
  %13 = load double, ptr %12, align 8, !dbg !252, !tbaa !253
  %14 = fmul double %11, %13, !dbg !254
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !255
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !256
  %17 = load double, ptr %16, align 8, !dbg !256, !tbaa !253
  %18 = fmul double %handler_result78, %17, !dbg !257
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !258
  %handler_result = call double @fAddHandlerDouble(double %15, double %19), !dbg !259
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !259
  %21 = tail call double @llvm.fabs.f64(double %11), !dbg !260
  %22 = fmul double %21, 0x3CB0000000000000, !dbg !261
  %handler_result1 = call double @fAddHandlerDouble(double %22, double %handler_result), !dbg !262
  store double %handler_result1, ptr %20, align 8, !dbg !262, !tbaa !253
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !263
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !263
  br label %193

23:                                               ; preds = %3
  %24 = fcmp ugt double %0, 1.000000e+00, !dbg !264
  br i1 %24, label %69, label %25, !dbg !265

25:                                               ; preds = %23
  %26 = fmul double %0, %0, !dbg !266
  tail call void @llvm.dbg.value(metadata double poison, metadata !213, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %26, metadata !216, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i32 7, metadata !285, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 7, metadata !280, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double poison, metadata !213, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double poison, metadata !217, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !217, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !267
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 8, metadata !285, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 8, metadata !280, metadata !DIExpression()), !dbg !301
  %27 = fmul double %26, %0, !dbg !305
  tail call void @llvm.dbg.value(metadata double %27, metadata !213, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %27, metadata !277, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %27, metadata !277, metadata !DIExpression()), !dbg !301
  %28 = fmul double %27, 2.000000e+00, !dbg !306
  %handler_result2 = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !307
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !308
  %29 = fmul double %handler_result3, 5.000000e-01, !dbg !308
  call void @llvm.dbg.value(metadata double %29, metadata !283, metadata !DIExpression()), !dbg !301
  %30 = fmul double %29, 2.000000e+00, !dbg !309
  call void @llvm.dbg.value(metadata double %30, metadata !284, metadata !DIExpression()), !dbg !301
  %handler_result4 = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !310
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !311
  %31 = fmul double %handler_result5, 5.000000e-01, !dbg !311
  call void @llvm.dbg.value(metadata double %31, metadata !283, metadata !DIExpression()), !dbg !290
  %32 = fmul double %31, 2.000000e+00, !dbg !312
  call void @llvm.dbg.value(metadata double %32, metadata !284, metadata !DIExpression()), !dbg !290
  %33 = fmul double %32, 0.000000e+00, !dbg !313
  %handler_result6 = call double @fAddHandlerDouble(double %33, double 5.220000e-18), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !282, metadata !DIExpression()), !dbg !290
  %34 = fmul double %32, %handler_result6, !dbg !313
  %handler_result7 = call double @fAddHandlerDouble(double %34, double 5.046220e-15), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !282, metadata !DIExpression()), !dbg !290
  %35 = fmul double %32, %handler_result7, !dbg !313
  %handler_result8 = call double @fSubHandlerDouble(double %35, double %handler_result6), !dbg !314
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D8FF5705AC91EC3), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !282, metadata !DIExpression()), !dbg !290
  %36 = fmul double %32, %handler_result9, !dbg !313
  %handler_result10 = call double @fSubHandlerDouble(double %36, double %handler_result7), !dbg !314
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3E1FD58801700D16), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !282, metadata !DIExpression()), !dbg !290
  %37 = fmul double %32, %handler_result11, !dbg !313
  %handler_result12 = call double @fSubHandlerDouble(double %37, double %handler_result9), !dbg !314
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3EA4E432D4BABD0B), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !282, metadata !DIExpression()), !dbg !290
  %38 = fmul double %32, %handler_result13, !dbg !313
  %handler_result14 = call double @fSubHandlerDouble(double %38, double %handler_result11), !dbg !314
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3F2028A015BCE79A), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !281, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !286, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !282, metadata !DIExpression()), !dbg !290
  %39 = fmul double %32, %handler_result15, !dbg !313
  %handler_result16 = call double @fSubHandlerDouble(double %39, double %handler_result13), !dbg !314
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F883D8B51EBDE69), !dbg !315
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !281, metadata !DIExpression()), !dbg !290
  %40 = fmul double %31, %handler_result17, !dbg !315
  %handler_result18 = call double @fSubHandlerDouble(double %40, double %handler_result15), !dbg !316
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FAAF346E8C752A0), !dbg !317
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !217, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !318
  %41 = fmul double %30, 0.000000e+00, !dbg !317
  %handler_result20 = call double @fAddHandlerDouble(double %41, double 3.140000e-19), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !286, metadata !DIExpression()), !dbg !318
  %42 = fmul double %30, %handler_result20, !dbg !317
  %handler_result21 = call double @fAddHandlerDouble(double %42, double 3.315620e-16), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !286, metadata !DIExpression()), !dbg !318
  %43 = fmul double %30, %handler_result21, !dbg !317
  %handler_result22 = call double @fSubHandlerDouble(double %43, double %handler_result20), !dbg !319
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 0x3D529E6336575AAD), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !286, metadata !DIExpression()), !dbg !318
  %44 = fmul double %30, %handler_result23, !dbg !317
  %handler_result24 = call double @fSubHandlerDouble(double %44, double %handler_result21), !dbg !319
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x3DE4F2377D2D1DB9), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !286, metadata !DIExpression()), !dbg !318
  %45 = fmul double %30, %handler_result25, !dbg !317
  %handler_result26 = call double @fSubHandlerDouble(double %45, double %handler_result23), !dbg !319
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x3E6FE9188AD28E95), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !286, metadata !DIExpression()), !dbg !318
  %46 = fmul double %30, %handler_result27, !dbg !317
  %handler_result28 = call double @fSubHandlerDouble(double %46, double %handler_result25), !dbg !319
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 0x3EEDEABB5FA79163), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !286, metadata !DIExpression()), !dbg !318
  %47 = fmul double %30, %handler_result29, !dbg !317
  %handler_result30 = call double @fSubHandlerDouble(double %47, double %handler_result27), !dbg !319
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double 0x3F5D73A8A245C45E), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !286, metadata !DIExpression()), !dbg !318
  %48 = fmul double %30, %handler_result31, !dbg !317
  %handler_result32 = call double @fSubHandlerDouble(double %48, double %handler_result29), !dbg !319
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double 0x3FB618CD01E9DF15), !dbg !320
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !301
  %49 = fmul double %29, %handler_result33, !dbg !320
  %handler_result34 = call double @fSubHandlerDouble(double %49, double %handler_result31), !dbg !321
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double 0x3F85BE5570E6DAF5), !dbg !322
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !218, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  %50 = tail call double @llvm.fabs.f64(double %handler_result35), !dbg !322
  %51 = fmul double %50, 0x3CB0000000000000, !dbg !323
  %handler_result36 = call double @fAddHandlerDouble(double %51, double 3.140000e-19), !dbg !324
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !218, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !267
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result19, double 1.250000e-01), !dbg !325
  %52 = fmul double %26, %handler_result37, !dbg !325
  %handler_result38 = call double @fSubHandlerDouble(double %52, double %handler_result35), !dbg !326
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double -2.500000e-01), !dbg !327
  store double %handler_result39, ptr %2, align 8, !dbg !327, !tbaa !244
  %53 = fmul double %26, %handler_result19, !dbg !328
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !329
  %handler_result40 = call double @fAddHandlerDouble(double %54, double %handler_result36), !dbg !330
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !330
  %56 = tail call double @llvm.fabs.f64(double %handler_result39), !dbg !331
  %57 = fmul double %56, 0x3CB0000000000000, !dbg !332
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %57), !dbg !333
  store double %handler_result41, ptr %55, align 8, !dbg !333, !tbaa !253
  %58 = fcmp ogt double %0, 0x3DC428A2F98D7292, !dbg !334
  br i1 %58, label %59, label %193, !dbg !335

59:                                               ; preds = %25
  %60 = fmul double %0, 2.000000e+00, !dbg !336
  %61 = tail call double @sqrt(double noundef %0) #6, !dbg !337
  %62 = fmul double %60, %61, !dbg !338
  %63 = fdiv double %62, 3.000000e+00, !dbg !339
  %64 = tail call double @exp(double noundef %63) #6, !dbg !340
  tail call void @llvm.dbg.value(metadata double %64, metadata !219, metadata !DIExpression()), !dbg !341
  %65 = load double, ptr %2, align 8, !dbg !342, !tbaa !244
  %66 = fmul double %64, %65, !dbg !342
  store double %66, ptr %2, align 8, !dbg !342, !tbaa !244
  %67 = load double, ptr %55, align 8, !dbg !343, !tbaa !253
  %68 = fmul double %64, %67, !dbg !343
  store double %68, ptr %55, align 8, !dbg !343, !tbaa !253
  br label %193, !dbg !344

69:                                               ; preds = %23
  %70 = fcmp ugt double %0, 4.000000e+00, !dbg !345
  %71 = tail call double @sqrt(double noundef %0) #6, !dbg !346
  %72 = fmul double %71, %0, !dbg !346
  %73 = fdiv double 1.600000e+01, %72, !dbg !346
  br i1 %70, label %134, label %74, !dbg !347

74:                                               ; preds = %69
  tail call void @llvm.dbg.value(metadata double %71, metadata !222, metadata !DIExpression()), !dbg !348
  %handler_result42 = call double @fAddHandlerDouble(double %73, double -9.000000e+00), !dbg !349
  %75 = fdiv double %handler_result42, 7.000000e+00, !dbg !349
  tail call void @llvm.dbg.value(metadata double %75, metadata !225, metadata !DIExpression()), !dbg !348
  %76 = tail call double @sqrt(double noundef %71) #6, !dbg !350
  tail call void @llvm.dbg.value(metadata double %76, metadata !226, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %75, metadata !277, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !351
  %77 = fmul double %75, 2.000000e+00, !dbg !353
  %handler_result43 = call double @fAddHandlerDouble(double %77, double 1.000000e+00), !dbg !354
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double -1.000000e+00), !dbg !355
  %78 = fmul double %handler_result44, 5.000000e-01, !dbg !355
  call void @llvm.dbg.value(metadata double %78, metadata !283, metadata !DIExpression()), !dbg !351
  %79 = fmul double %78, 2.000000e+00, !dbg !356
  call void @llvm.dbg.value(metadata double %79, metadata !284, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !357
  %80 = and i32 %1, 7, !dbg !359
  %81 = icmp eq i32 %80, 0, !dbg !360
  %82 = select i1 %81, i32 24, i32 14, !dbg !361
  call void @llvm.dbg.value(metadata i32 %82, metadata !285, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %82, metadata !280, metadata !DIExpression()), !dbg !351
  %83 = zext nneg i32 %82 to i64, !dbg !362
  %84 = and i64 %83, 2, !dbg !362
  %85 = icmp eq i64 %84, 0, !dbg !362
  br i1 %85, label %97, label %86, !dbg !362

86:                                               ; preds = %86, %74
  %87 = phi i64 [ %94, %86 ], [ %83, %74 ]
  %88 = phi double [ %handler_result46, %86 ], [ 0.000000e+00, %74 ]
  %89 = phi double [ %88, %86 ], [ 0.000000e+00, %74 ]
  %90 = phi i64 [ %95, %86 ], [ 0, %74 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !280, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %88, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %89, metadata !282, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %88, metadata !286, metadata !DIExpression()), !dbg !363
  %91 = fmul double %79, %88, !dbg !364
  %handler_result45 = call double @fSubHandlerDouble(double %91, double %89), !dbg !365
  %92 = getelementptr inbounds double, ptr @aip1_data, i64 %87, !dbg !365
  %93 = load double, ptr %92, align 8, !dbg !365, !tbaa !366
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double %93), !dbg !367
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %88, metadata !282, metadata !DIExpression()), !dbg !351
  %94 = add nsw i64 %87, -1, !dbg !367
  call void @llvm.dbg.value(metadata i64 %94, metadata !280, metadata !DIExpression()), !dbg !351
  %95 = add i64 %90, 1, !dbg !362
  %96 = icmp eq i64 %95, %84, !dbg !362
  br i1 %96, label %97, label %86, !dbg !362, !llvm.loop !368

97:                                               ; preds = %86, %74
  %98 = phi i64 [ %83, %74 ], [ %94, %86 ]
  %99 = phi double [ 0.000000e+00, %74 ], [ %handler_result46, %86 ]
  %100 = phi double [ 0.000000e+00, %74 ], [ %88, %86 ]
  br label %101, !dbg !362

101:                                              ; preds = %101, %97
  %102 = phi i64 [ %98, %97 ], [ %118, %101 ]
  %103 = phi double [ %99, %97 ], [ %handler_result54, %101 ]
  %104 = phi double [ %100, %97 ], [ %handler_result52, %101 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !280, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %103, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %104, metadata !282, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %103, metadata !286, metadata !DIExpression()), !dbg !363
  %105 = fmul double %79, %103, !dbg !364
  %handler_result47 = call double @fSubHandlerDouble(double %105, double %104), !dbg !365
  %106 = getelementptr inbounds double, ptr @aip1_data, i64 %102, !dbg !365
  %107 = load double, ptr %106, align 8, !dbg !365, !tbaa !366
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double %107), !dbg !364
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %103, metadata !282, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %102, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata i64 %102, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %103, metadata !282, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !286, metadata !DIExpression()), !dbg !363
  %108 = fmul double %79, %handler_result48, !dbg !364
  %handler_result49 = call double @fSubHandlerDouble(double %108, double %103), !dbg !365
  %109 = getelementptr double, ptr getelementptr (double, ptr @aip1_data, i64 -1), i64 %102, !dbg !365
  %110 = load double, ptr %109, align 8, !dbg !365, !tbaa !366
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double %110), !dbg !364
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !282, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %102, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata i64 %102, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !282, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !286, metadata !DIExpression()), !dbg !363
  %111 = fmul double %79, %handler_result50, !dbg !364
  %handler_result51 = call double @fSubHandlerDouble(double %111, double %handler_result48), !dbg !365
  %112 = getelementptr double, ptr getelementptr (double, ptr @aip1_data, i64 -2), i64 %102, !dbg !365
  %113 = load double, ptr %112, align 8, !dbg !365, !tbaa !366
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double %113), !dbg !367
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !282, metadata !DIExpression()), !dbg !351
  %114 = add nsw i64 %102, -3, !dbg !367
  call void @llvm.dbg.value(metadata i64 %114, metadata !280, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %114, metadata !280, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !282, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !286, metadata !DIExpression()), !dbg !363
  %115 = fmul double %79, %handler_result52, !dbg !364
  %handler_result53 = call double @fSubHandlerDouble(double %115, double %handler_result50), !dbg !365
  %116 = getelementptr inbounds double, ptr @aip1_data, i64 %114, !dbg !365
  %117 = load double, ptr %116, align 8, !dbg !365, !tbaa !366
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double %117), !dbg !367
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !281, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !282, metadata !DIExpression()), !dbg !351
  %118 = add nsw i64 %102, -4, !dbg !367
  call void @llvm.dbg.value(metadata i64 %118, metadata !280, metadata !DIExpression()), !dbg !351
  %119 = icmp ugt i64 %114, 1, !dbg !370
  br i1 %119, label %101, label %120, !dbg !362, !llvm.loop !371

120:                                              ; preds = %101
  %121 = fmul double %78, %handler_result54, !dbg !374
  %handler_result55 = call double @fSubHandlerDouble(double %121, double %handler_result52), !dbg !375
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double 0x3F925FB773C0A3CB), !dbg !376
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  %122 = tail call double @llvm.fabs.f64(double %handler_result56), !dbg !376
  %123 = fmul double %122, 0x3CB0000000000000, !dbg !377
  %124 = zext nneg i32 %82 to i64, !dbg !378
  %125 = getelementptr inbounds double, ptr @aip1_data, i64 %124, !dbg !378
  %126 = load double, ptr %125, align 16, !dbg !378, !tbaa !366
  %127 = tail call double @llvm.fabs.f64(double %126), !dbg !379
  %handler_result57 = call double @fAddHandlerDouble(double %127, double %123), !dbg !380
  tail call void @llvm.dbg.value(metadata double %handler_result57, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result56, double 2.812500e-01), !dbg !381
  %128 = fneg double %handler_result58, !dbg !381
  %129 = fmul double %76, %128, !dbg !382
  store double %129, ptr %2, align 8, !dbg !383, !tbaa !244
  %130 = fmul double %76, %handler_result57, !dbg !384
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !385
  %132 = tail call double @llvm.fabs.f64(double %129), !dbg !386
  %133 = fmul double %132, 0x3CB0000000000000, !dbg !387
  %handler_result59 = call double @fAddHandlerDouble(double %130, double %133), !dbg !388
  store double %handler_result59, ptr %131, align 8, !dbg !388, !tbaa !253
  br label %193

134:                                              ; preds = %69
  tail call void @llvm.dbg.value(metadata double %71, metadata !228, metadata !DIExpression()), !dbg !389
  %handler_result60 = call double @fAddHandlerDouble(double %73, double -1.000000e+00), !dbg !390
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !230, metadata !DIExpression()), !dbg !389
  %135 = tail call double @sqrt(double noundef %71) #6, !dbg !390
  tail call void @llvm.dbg.value(metadata double %135, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !277, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !391
  %136 = fmul double %handler_result60, 2.000000e+00, !dbg !393
  %handler_result61 = call double @fAddHandlerDouble(double %136, double 1.000000e+00), !dbg !394
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double -1.000000e+00), !dbg !395
  %137 = fmul double %handler_result62, 5.000000e-01, !dbg !395
  call void @llvm.dbg.value(metadata double %137, metadata !283, metadata !DIExpression()), !dbg !391
  %138 = fmul double %137, 2.000000e+00, !dbg !396
  call void @llvm.dbg.value(metadata double %138, metadata !284, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !397
  %139 = and i32 %1, 7, !dbg !399
  %140 = icmp eq i32 %139, 0, !dbg !400
  %141 = select i1 %140, i32 14, i32 9, !dbg !401
  call void @llvm.dbg.value(metadata i32 %141, metadata !285, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i32 %141, metadata !280, metadata !DIExpression()), !dbg !391
  %142 = zext nneg i32 %141 to i64, !dbg !402
  %143 = and i64 %142, 3, !dbg !402
  %144 = icmp eq i64 %143, 0, !dbg !402
  br i1 %144, label %156, label %145, !dbg !402

145:                                              ; preds = %145, %134
  %146 = phi i64 [ %153, %145 ], [ %142, %134 ]
  %147 = phi double [ %handler_result64, %145 ], [ 0.000000e+00, %134 ]
  %148 = phi double [ %147, %145 ], [ 0.000000e+00, %134 ]
  %149 = phi i64 [ %154, %145 ], [ 0, %134 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !280, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %147, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %148, metadata !282, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %147, metadata !286, metadata !DIExpression()), !dbg !403
  %150 = fmul double %138, %147, !dbg !404
  %handler_result63 = call double @fSubHandlerDouble(double %150, double %148), !dbg !405
  %151 = getelementptr inbounds double, ptr @aip2_data, i64 %146, !dbg !405
  %152 = load double, ptr %151, align 8, !dbg !405, !tbaa !366
  %handler_result64 = call double @fAddHandlerDouble(double %handler_result63, double %152), !dbg !406
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %147, metadata !282, metadata !DIExpression()), !dbg !391
  %153 = add nsw i64 %146, -1, !dbg !406
  call void @llvm.dbg.value(metadata i64 %153, metadata !280, metadata !DIExpression()), !dbg !391
  %154 = add i64 %149, 1, !dbg !402
  %155 = icmp eq i64 %154, %143, !dbg !402
  br i1 %155, label %156, label %145, !dbg !402, !llvm.loop !407

156:                                              ; preds = %145, %134
  %157 = phi i64 [ %142, %134 ], [ %153, %145 ]
  %158 = phi double [ 0.000000e+00, %134 ], [ %handler_result64, %145 ]
  %159 = phi double [ 0.000000e+00, %134 ], [ %147, %145 ]
  br label %160, !dbg !402

160:                                              ; preds = %160, %156
  %161 = phi i64 [ %157, %156 ], [ %177, %160 ]
  %162 = phi double [ %158, %156 ], [ %handler_result72, %160 ]
  %163 = phi double [ %159, %156 ], [ %handler_result70, %160 ]
  call void @llvm.dbg.value(metadata i64 %161, metadata !280, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %162, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %163, metadata !282, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %162, metadata !286, metadata !DIExpression()), !dbg !403
  %164 = fmul double %138, %162, !dbg !404
  %handler_result65 = call double @fSubHandlerDouble(double %164, double %163), !dbg !405
  %165 = getelementptr inbounds double, ptr @aip2_data, i64 %161, !dbg !405
  %166 = load double, ptr %165, align 8, !dbg !405, !tbaa !366
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result65, double %166), !dbg !404
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %162, metadata !282, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i64 %161, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata i64 %161, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %162, metadata !282, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !286, metadata !DIExpression()), !dbg !403
  %167 = fmul double %138, %handler_result66, !dbg !404
  %handler_result67 = call double @fSubHandlerDouble(double %167, double %162), !dbg !405
  %168 = getelementptr double, ptr getelementptr (double, ptr @aip2_data, i64 -1), i64 %161, !dbg !405
  %169 = load double, ptr %168, align 8, !dbg !405, !tbaa !366
  %handler_result68 = call double @fAddHandlerDouble(double %handler_result67, double %169), !dbg !404
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !282, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i64 %161, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata i64 %161, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !282, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !286, metadata !DIExpression()), !dbg !403
  %170 = fmul double %138, %handler_result68, !dbg !404
  %handler_result69 = call double @fSubHandlerDouble(double %170, double %handler_result66), !dbg !405
  %171 = getelementptr double, ptr getelementptr (double, ptr @aip2_data, i64 -2), i64 %161, !dbg !405
  %172 = load double, ptr %171, align 8, !dbg !405, !tbaa !366
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double %172), !dbg !406
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !282, metadata !DIExpression()), !dbg !391
  %173 = add nsw i64 %161, -3, !dbg !406
  call void @llvm.dbg.value(metadata i64 %173, metadata !280, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i64 %173, metadata !280, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !282, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !286, metadata !DIExpression()), !dbg !403
  %174 = fmul double %138, %handler_result70, !dbg !404
  %handler_result71 = call double @fSubHandlerDouble(double %174, double %handler_result68), !dbg !405
  %175 = getelementptr inbounds double, ptr @aip2_data, i64 %173, !dbg !405
  %176 = load double, ptr %175, align 8, !dbg !405, !tbaa !366
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double %176), !dbg !406
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !281, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !282, metadata !DIExpression()), !dbg !391
  %177 = add nsw i64 %161, -4, !dbg !406
  call void @llvm.dbg.value(metadata i64 %177, metadata !280, metadata !DIExpression()), !dbg !391
  %178 = icmp ugt i64 %173, 1, !dbg !408
  br i1 %178, label %160, label %179, !dbg !402, !llvm.loop !409

179:                                              ; preds = %160
  %180 = fmul double %137, %handler_result72, !dbg !411
  %handler_result73 = call double @fSubHandlerDouble(double %180, double %handler_result70), !dbg !412
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3F6ACFBC8A301CC2), !dbg !413
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !232, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !389
  %181 = tail call double @llvm.fabs.f64(double %handler_result74), !dbg !413
  %182 = fmul double %181, 0x3CB0000000000000, !dbg !414
  %183 = zext nneg i32 %141 to i64, !dbg !415
  %184 = getelementptr inbounds double, ptr @aip2_data, i64 %183, !dbg !415
  %185 = load double, ptr %184, align 8, !dbg !415, !tbaa !366
  %186 = tail call double @llvm.fabs.f64(double %185), !dbg !416
  %handler_result75 = call double @fAddHandlerDouble(double %186, double %182), !dbg !417
  tail call void @llvm.dbg.value(metadata double %handler_result75, metadata !232, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !389
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result74, double 2.812500e-01), !dbg !418
  %187 = fneg double %handler_result76, !dbg !418
  %188 = fmul double %135, %187, !dbg !419
  store double %188, ptr %2, align 8, !dbg !420, !tbaa !244
  %189 = fmul double %135, %handler_result75, !dbg !421
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !422
  %191 = tail call double @llvm.fabs.f64(double %188), !dbg !423
  %192 = fmul double %191, 0x3CB0000000000000, !dbg !424
  %handler_result77 = call double @fAddHandlerDouble(double %189, double %192), !dbg !425
  store double %handler_result77, ptr %190, align 8, !dbg !425, !tbaa !253
  br label %193

193:                                              ; preds = %179, %120, %59, %25, %7
  %194 = phi i32 [ %8, %7 ], [ 0, %120 ], [ 0, %179 ], [ 0, %59 ], [ 0, %25 ], !dbg !426
  ret i32 %194, !dbg !427
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !428 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !432, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !433, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !434, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !435, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double 0x4002D97C7F3321D2, metadata !436, metadata !DIExpression()), !dbg !451
  %5 = fcmp ugt double %0, -4.000000e+00, !dbg !452
  br i1 %5, label %98, label %6, !dbg !453

6:                                                ; preds = %4
  %7 = fmul double %0, %0, !dbg !454
  %8 = fmul double %7, %0, !dbg !455
  %9 = fdiv double 1.280000e+02, %8, !dbg !456
  %handler_result = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !457
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !442, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result, metadata !277, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !460
  %10 = fmul double %handler_result, 2.000000e+00, !dbg !457
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !461
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !462
  %11 = fmul double %handler_result2, 5.000000e-01, !dbg !462
  call void @llvm.dbg.value(metadata double %11, metadata !283, metadata !DIExpression()), !dbg !460
  %12 = fmul double %11, 2.000000e+00, !dbg !463
  call void @llvm.dbg.value(metadata double %12, metadata !284, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !464
  %13 = and i32 %1, 7, !dbg !466
  %14 = icmp eq i32 %13, 0, !dbg !467
  %15 = select i1 %14, i32 15, i32 8, !dbg !468
  call void @llvm.dbg.value(metadata i32 %15, metadata !285, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 %15, metadata !280, metadata !DIExpression()), !dbg !460
  %16 = zext nneg i32 %15 to i64, !dbg !469
  %17 = and i64 %16, 3, !dbg !469
  %18 = icmp eq i64 %17, 0, !dbg !469
  br i1 %18, label %30, label %19, !dbg !469

19:                                               ; preds = %19, %6
  %20 = phi i64 [ %27, %19 ], [ %16, %6 ]
  %21 = phi double [ %handler_result4, %19 ], [ 0.000000e+00, %6 ]
  %22 = phi double [ %21, %19 ], [ 0.000000e+00, %6 ]
  %23 = phi i64 [ %28, %19 ], [ 0, %6 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !280, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %21, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %22, metadata !282, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %21, metadata !286, metadata !DIExpression()), !dbg !470
  %24 = fmul double %12, %21, !dbg !471
  %handler_result3 = call double @fSubHandlerDouble(double %24, double %22), !dbg !472
  %25 = getelementptr inbounds double, ptr @an20_data, i64 %20, !dbg !472
  %26 = load double, ptr %25, align 8, !dbg !472, !tbaa !366
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %26), !dbg !473
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %21, metadata !282, metadata !DIExpression()), !dbg !460
  %27 = add nsw i64 %20, -1, !dbg !473
  call void @llvm.dbg.value(metadata i64 %27, metadata !280, metadata !DIExpression()), !dbg !460
  %28 = add i64 %23, 1, !dbg !469
  %29 = icmp eq i64 %28, %17, !dbg !469
  br i1 %29, label %30, label %19, !dbg !469, !llvm.loop !474

30:                                               ; preds = %19, %6
  %31 = phi i64 [ %16, %6 ], [ %27, %19 ]
  %32 = phi double [ 0.000000e+00, %6 ], [ %handler_result4, %19 ]
  %33 = phi double [ 0.000000e+00, %6 ], [ %21, %19 ]
  br label %34, !dbg !469

34:                                               ; preds = %34, %30
  %35 = phi i64 [ %31, %30 ], [ %51, %34 ]
  %36 = phi double [ %32, %30 ], [ %handler_result12, %34 ]
  %37 = phi double [ %33, %30 ], [ %handler_result10, %34 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !280, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %36, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %37, metadata !282, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %36, metadata !286, metadata !DIExpression()), !dbg !470
  %38 = fmul double %12, %36, !dbg !471
  %handler_result5 = call double @fSubHandlerDouble(double %38, double %37), !dbg !472
  %39 = getelementptr inbounds double, ptr @an20_data, i64 %35, !dbg !472
  %40 = load double, ptr %39, align 8, !dbg !472, !tbaa !366
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %40), !dbg !471
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %36, metadata !282, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %35, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !460
  call void @llvm.dbg.value(metadata i64 %35, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %36, metadata !282, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !286, metadata !DIExpression()), !dbg !470
  %41 = fmul double %12, %handler_result6, !dbg !471
  %handler_result7 = call double @fSubHandlerDouble(double %41, double %36), !dbg !472
  %42 = getelementptr double, ptr getelementptr (double, ptr @an20_data, i64 -1), i64 %35, !dbg !472
  %43 = load double, ptr %42, align 8, !dbg !472, !tbaa !366
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %43), !dbg !471
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !282, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %35, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !460
  call void @llvm.dbg.value(metadata i64 %35, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !282, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !286, metadata !DIExpression()), !dbg !470
  %44 = fmul double %12, %handler_result8, !dbg !471
  %handler_result9 = call double @fSubHandlerDouble(double %44, double %handler_result6), !dbg !472
  %45 = getelementptr double, ptr getelementptr (double, ptr @an20_data, i64 -2), i64 %35, !dbg !472
  %46 = load double, ptr %45, align 8, !dbg !472, !tbaa !366
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double %46), !dbg !473
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !282, metadata !DIExpression()), !dbg !460
  %47 = add nsw i64 %35, -3, !dbg !473
  call void @llvm.dbg.value(metadata i64 %47, metadata !280, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %47, metadata !280, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !282, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !286, metadata !DIExpression()), !dbg !470
  %48 = fmul double %12, %handler_result10, !dbg !471
  %handler_result11 = call double @fSubHandlerDouble(double %48, double %handler_result8), !dbg !472
  %49 = getelementptr inbounds double, ptr @an20_data, i64 %47, !dbg !472
  %50 = load double, ptr %49, align 8, !dbg !472, !tbaa !366
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %50), !dbg !473
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !281, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !282, metadata !DIExpression()), !dbg !460
  %51 = add nsw i64 %35, -4, !dbg !473
  call void @llvm.dbg.value(metadata i64 %51, metadata !280, metadata !DIExpression()), !dbg !460
  %52 = icmp ugt i64 %47, 1, !dbg !475
  br i1 %52, label %34, label %53, !dbg !469, !llvm.loop !476

53:                                               ; preds = %34
  %54 = fmul double %11, %handler_result12, !dbg !478
  %handler_result13 = call double @fSubHandlerDouble(double %54, double %handler_result10), !dbg !479
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3F79F46B06647521), !dbg !480
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  %55 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !480
  %56 = fmul double %55, 0x3CB0000000000000, !dbg !481
  %57 = zext nneg i32 %15 to i64, !dbg !482
  %58 = getelementptr inbounds double, ptr @an20_data, i64 %57, !dbg !482
  %59 = load double, ptr %58, align 8, !dbg !482, !tbaa !366
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !483
  %handler_result15 = call double @fAddHandlerDouble(double %60, double %56), !dbg !484
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result, metadata !277, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !486
  %handler_result16 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !487
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double -1.000000e+00), !dbg !488
  %61 = fmul double %handler_result17, 5.000000e-01, !dbg !488
  call void @llvm.dbg.value(metadata double %61, metadata !283, metadata !DIExpression()), !dbg !486
  %62 = fmul double %61, 2.000000e+00, !dbg !489
  call void @llvm.dbg.value(metadata double %62, metadata !284, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !490
  %63 = select i1 %14, i32 14, i32 7, !dbg !492
  call void @llvm.dbg.value(metadata i32 %63, metadata !285, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i32 %63, metadata !280, metadata !DIExpression()), !dbg !486
  %64 = zext nneg i32 %63 to i64, !dbg !493
  %65 = and i64 %64, 3, !dbg !493
  br label %66, !dbg !493

66:                                               ; preds = %66, %53
  %67 = phi i64 [ %64, %53 ], [ %74, %66 ]
  %68 = phi double [ 0.000000e+00, %53 ], [ %handler_result19, %66 ]
  %69 = phi double [ 0.000000e+00, %53 ], [ %68, %66 ]
  %70 = phi i64 [ 0, %53 ], [ %75, %66 ]
  call void @llvm.dbg.value(metadata i64 %67, metadata !280, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %68, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %69, metadata !282, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %68, metadata !286, metadata !DIExpression()), !dbg !494
  %71 = fmul double %62, %68, !dbg !495
  %handler_result18 = call double @fSubHandlerDouble(double %71, double %69), !dbg !496
  %72 = getelementptr inbounds double, ptr @aph0_data, i64 %67, !dbg !496
  %73 = load double, ptr %72, align 8, !dbg !496, !tbaa !366
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %73), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %68, metadata !282, metadata !DIExpression()), !dbg !486
  %74 = add nsw i64 %67, -1, !dbg !497
  call void @llvm.dbg.value(metadata i64 %74, metadata !280, metadata !DIExpression()), !dbg !486
  %75 = add i64 %70, 1, !dbg !493
  %76 = icmp eq i64 %75, %65, !dbg !493
  br i1 %76, label %77, label %66, !dbg !493, !llvm.loop !498

77:                                               ; preds = %77, %66
  %78 = phi i64 [ %94, %77 ], [ %74, %66 ]
  %79 = phi double [ %handler_result27, %77 ], [ %handler_result19, %66 ]
  %80 = phi double [ %handler_result25, %77 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !280, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %79, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %80, metadata !282, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %79, metadata !286, metadata !DIExpression()), !dbg !494
  %81 = fmul double %62, %79, !dbg !495
  %handler_result20 = call double @fSubHandlerDouble(double %81, double %80), !dbg !496
  %82 = getelementptr inbounds double, ptr @aph0_data, i64 %78, !dbg !496
  %83 = load double, ptr %82, align 8, !dbg !496, !tbaa !366
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %83), !dbg !495
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %79, metadata !282, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i64 %78, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !486
  call void @llvm.dbg.value(metadata i64 %78, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %79, metadata !282, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !286, metadata !DIExpression()), !dbg !494
  %84 = fmul double %62, %handler_result21, !dbg !495
  %handler_result22 = call double @fSubHandlerDouble(double %84, double %79), !dbg !496
  %85 = getelementptr double, ptr getelementptr (double, ptr @aph0_data, i64 -1), i64 %78, !dbg !496
  %86 = load double, ptr %85, align 8, !dbg !496, !tbaa !366
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %86), !dbg !495
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i64 %78, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !486
  call void @llvm.dbg.value(metadata i64 %78, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !286, metadata !DIExpression()), !dbg !494
  %87 = fmul double %62, %handler_result23, !dbg !495
  %handler_result24 = call double @fSubHandlerDouble(double %87, double %handler_result21), !dbg !496
  %88 = getelementptr double, ptr getelementptr (double, ptr @aph0_data, i64 -2), i64 %78, !dbg !496
  %89 = load double, ptr %88, align 8, !dbg !496, !tbaa !366
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %89), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !282, metadata !DIExpression()), !dbg !486
  %90 = add nsw i64 %78, -3, !dbg !497
  call void @llvm.dbg.value(metadata i64 %90, metadata !280, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i64 %90, metadata !280, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !282, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !286, metadata !DIExpression()), !dbg !494
  %91 = fmul double %62, %handler_result25, !dbg !495
  %handler_result26 = call double @fSubHandlerDouble(double %91, double %handler_result23), !dbg !496
  %92 = getelementptr inbounds double, ptr @aph0_data, i64 %90, !dbg !496
  %93 = load double, ptr %92, align 8, !dbg !496, !tbaa !366
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %93), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !281, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !282, metadata !DIExpression()), !dbg !486
  %94 = add nsw i64 %78, -4, !dbg !497
  call void @llvm.dbg.value(metadata i64 %94, metadata !280, metadata !DIExpression()), !dbg !486
  %95 = icmp ugt i64 %90, 1, !dbg !499
  br i1 %95, label %77, label %96, !dbg !493, !llvm.loop !500

96:                                               ; preds = %77
  %97 = fmul double %61, %handler_result27, !dbg !502
  %handler_result28 = call double @fSubHandlerDouble(double %97, double %handler_result25), !dbg !503
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 0xBFA5E8E4C218AC34), !dbg !504
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  br label %245, !dbg !504

98:                                               ; preds = %4
  %99 = fcmp ugt double %0, -2.000000e+00, !dbg !505
  br i1 %99, label %171, label %100, !dbg !506

100:                                              ; preds = %98
  %101 = fmul double %0, %0, !dbg !507
  %102 = fmul double %101, %0, !dbg !508
  %103 = fdiv double 1.280000e+02, %102, !dbg !509
  %handler_result30 = call double @fAddHandlerDouble(double %103, double 9.000000e+00), !dbg !510
  %104 = fdiv double %handler_result30, 7.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata double %104, metadata !445, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %104, metadata !277, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !512
  %105 = fmul double %104, 2.000000e+00, !dbg !514
  %handler_result31 = call double @fAddHandlerDouble(double %105, double 1.000000e+00), !dbg !515
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double -1.000000e+00), !dbg !516
  %106 = fmul double %handler_result32, 5.000000e-01, !dbg !516
  call void @llvm.dbg.value(metadata double %106, metadata !283, metadata !DIExpression()), !dbg !512
  %107 = fmul double %106, 2.000000e+00, !dbg !517
  call void @llvm.dbg.value(metadata double %107, metadata !284, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !518
  %108 = and i32 %1, 7, !dbg !520
  %109 = icmp eq i32 %108, 0, !dbg !521
  %110 = select i1 %109, i32 23, i32 12, !dbg !522
  call void @llvm.dbg.value(metadata i32 %110, metadata !285, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %110, metadata !280, metadata !DIExpression()), !dbg !512
  %111 = zext nneg i32 %110 to i64, !dbg !523
  %112 = and i64 %111, 3, !dbg !523
  %113 = icmp eq i64 %112, 0, !dbg !523
  br i1 %113, label %125, label %114, !dbg !523

114:                                              ; preds = %114, %100
  %115 = phi i64 [ %122, %114 ], [ %111, %100 ]
  %116 = phi double [ %handler_result34, %114 ], [ 0.000000e+00, %100 ]
  %117 = phi double [ %116, %114 ], [ 0.000000e+00, %100 ]
  %118 = phi i64 [ %123, %114 ], [ 0, %100 ]
  call void @llvm.dbg.value(metadata i64 %115, metadata !280, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %116, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %117, metadata !282, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %116, metadata !286, metadata !DIExpression()), !dbg !524
  %119 = fmul double %107, %116, !dbg !525
  %handler_result33 = call double @fSubHandlerDouble(double %119, double %117), !dbg !526
  %120 = getelementptr inbounds double, ptr @an21_data, i64 %115, !dbg !526
  %121 = load double, ptr %120, align 8, !dbg !526, !tbaa !366
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double %121), !dbg !527
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %116, metadata !282, metadata !DIExpression()), !dbg !512
  %122 = add nsw i64 %115, -1, !dbg !527
  call void @llvm.dbg.value(metadata i64 %122, metadata !280, metadata !DIExpression()), !dbg !512
  %123 = add i64 %118, 1, !dbg !523
  %124 = icmp eq i64 %123, %112, !dbg !523
  br i1 %124, label %125, label %114, !dbg !523, !llvm.loop !528

125:                                              ; preds = %114, %100
  %126 = phi i64 [ %111, %100 ], [ %122, %114 ]
  %127 = phi double [ 0.000000e+00, %100 ], [ %handler_result34, %114 ]
  %128 = phi double [ 0.000000e+00, %100 ], [ %116, %114 ]
  br label %129, !dbg !523

129:                                              ; preds = %129, %125
  %130 = phi i64 [ %126, %125 ], [ %146, %129 ]
  %131 = phi double [ %127, %125 ], [ %handler_result42, %129 ]
  %132 = phi double [ %128, %125 ], [ %handler_result40, %129 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !280, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %131, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %132, metadata !282, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %131, metadata !286, metadata !DIExpression()), !dbg !524
  %133 = fmul double %107, %131, !dbg !525
  %handler_result35 = call double @fSubHandlerDouble(double %133, double %132), !dbg !526
  %134 = getelementptr inbounds double, ptr @an21_data, i64 %130, !dbg !526
  %135 = load double, ptr %134, align 8, !dbg !526, !tbaa !366
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double %135), !dbg !525
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %131, metadata !282, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 %130, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !512
  call void @llvm.dbg.value(metadata i64 %130, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %131, metadata !282, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !286, metadata !DIExpression()), !dbg !524
  %136 = fmul double %107, %handler_result36, !dbg !525
  %handler_result37 = call double @fSubHandlerDouble(double %136, double %131), !dbg !526
  %137 = getelementptr double, ptr getelementptr (double, ptr @an21_data, i64 -1), i64 %130, !dbg !526
  %138 = load double, ptr %137, align 8, !dbg !526, !tbaa !366
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double %138), !dbg !525
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !282, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 %130, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !512
  call void @llvm.dbg.value(metadata i64 %130, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !282, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !286, metadata !DIExpression()), !dbg !524
  %139 = fmul double %107, %handler_result38, !dbg !525
  %handler_result39 = call double @fSubHandlerDouble(double %139, double %handler_result36), !dbg !526
  %140 = getelementptr double, ptr getelementptr (double, ptr @an21_data, i64 -2), i64 %130, !dbg !526
  %141 = load double, ptr %140, align 8, !dbg !526, !tbaa !366
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double %141), !dbg !527
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !282, metadata !DIExpression()), !dbg !512
  %142 = add nsw i64 %130, -3, !dbg !527
  call void @llvm.dbg.value(metadata i64 %142, metadata !280, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 %142, metadata !280, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !282, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !286, metadata !DIExpression()), !dbg !524
  %143 = fmul double %107, %handler_result40, !dbg !525
  %handler_result41 = call double @fSubHandlerDouble(double %143, double %handler_result38), !dbg !526
  %144 = getelementptr inbounds double, ptr @an21_data, i64 %142, !dbg !526
  %145 = load double, ptr %144, align 8, !dbg !526, !tbaa !366
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %145), !dbg !527
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !281, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !282, metadata !DIExpression()), !dbg !512
  %146 = add nsw i64 %130, -4, !dbg !527
  call void @llvm.dbg.value(metadata i64 %146, metadata !280, metadata !DIExpression()), !dbg !512
  %147 = icmp ugt i64 %142, 1, !dbg !529
  br i1 %147, label %129, label %148, !dbg !523, !llvm.loop !530

148:                                              ; preds = %129
  %149 = fmul double %106, %handler_result42, !dbg !532
  %handler_result43 = call double @fSubHandlerDouble(double %149, double %handler_result40), !dbg !533
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3F844EA90E7D1EED), !dbg !534
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  %150 = tail call double @llvm.fabs.f64(double %handler_result44), !dbg !534
  %151 = fmul double %150, 0x3CB0000000000000, !dbg !535
  %152 = zext nneg i32 %110 to i64, !dbg !536
  %153 = getelementptr inbounds double, ptr @an21_data, i64 %152, !dbg !536
  %154 = load double, ptr %153, align 8, !dbg !536, !tbaa !366
  %155 = tail call double @llvm.fabs.f64(double %154), !dbg !537
  %handler_result45 = call double @fAddHandlerDouble(double %155, double %151), !dbg !538
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata double %104, metadata !277, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !540
  %handler_result46 = call double @fAddHandlerDouble(double %105, double 1.000000e+00), !dbg !541
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double -1.000000e+00), !dbg !542
  %156 = fmul double %handler_result47, 5.000000e-01, !dbg !542
  call void @llvm.dbg.value(metadata double %156, metadata !283, metadata !DIExpression()), !dbg !540
  %157 = fmul double %156, 2.000000e+00, !dbg !543
  call void @llvm.dbg.value(metadata double %157, metadata !284, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !544
  %158 = select i1 %109, i32 21, i32 10, !dbg !546
  call void @llvm.dbg.value(metadata i32 %158, metadata !285, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %158, metadata !280, metadata !DIExpression()), !dbg !540
  %159 = zext nneg i32 %158 to i64, !dbg !547
  br label %160, !dbg !547

160:                                              ; preds = %160, %148
  %161 = phi i64 [ %159, %148 ], [ %167, %160 ]
  %162 = phi double [ 0.000000e+00, %148 ], [ %handler_result49, %160 ]
  %163 = phi double [ 0.000000e+00, %148 ], [ %162, %160 ]
  call void @llvm.dbg.value(metadata i64 %161, metadata !280, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata double %162, metadata !281, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata double %163, metadata !282, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata double %162, metadata !286, metadata !DIExpression()), !dbg !548
  %164 = fmul double %157, %162, !dbg !549
  %handler_result48 = call double @fSubHandlerDouble(double %164, double %163), !dbg !550
  %165 = getelementptr inbounds double, ptr @aph1_data, i64 %161, !dbg !550
  %166 = load double, ptr %165, align 8, !dbg !550, !tbaa !366
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double %166), !dbg !551
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !281, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata double %162, metadata !282, metadata !DIExpression()), !dbg !540
  %167 = add nsw i64 %161, -1, !dbg !551
  call void @llvm.dbg.value(metadata i64 %167, metadata !280, metadata !DIExpression()), !dbg !540
  %168 = icmp ugt i64 %161, 1, !dbg !552
  br i1 %168, label %160, label %169, !dbg !547, !llvm.loop !553

169:                                              ; preds = %160
  %170 = fmul double %156, %handler_result49, !dbg !555
  %handler_result50 = call double @fSubHandlerDouble(double %170, double %162), !dbg !556
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0xBFAA3805029071EF), !dbg !557
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  br label %245, !dbg !557

171:                                              ; preds = %98
  %172 = fcmp ugt double %0, -1.000000e+00, !dbg !558
  br i1 %172, label %244, label %173, !dbg !559

173:                                              ; preds = %171
  %174 = fmul double %0, %0, !dbg !560
  %175 = fmul double %174, %0, !dbg !561
  %176 = fdiv double 1.600000e+01, %175, !dbg !562
  %handler_result52 = call double @fAddHandlerDouble(double %176, double 9.000000e+00), !dbg !563
  %177 = fdiv double %handler_result52, 7.000000e+00, !dbg !563
  tail call void @llvm.dbg.value(metadata double %177, metadata !448, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %177, metadata !277, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !565
  %178 = fmul double %177, 2.000000e+00, !dbg !567
  %handler_result53 = call double @fAddHandlerDouble(double %178, double 1.000000e+00), !dbg !568
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double -1.000000e+00), !dbg !569
  %179 = fmul double %handler_result54, 5.000000e-01, !dbg !569
  call void @llvm.dbg.value(metadata double %179, metadata !283, metadata !DIExpression()), !dbg !565
  %180 = fmul double %179, 2.000000e+00, !dbg !570
  call void @llvm.dbg.value(metadata double %180, metadata !284, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !571
  %181 = and i32 %1, 7, !dbg !573
  %182 = icmp eq i32 %181, 0, !dbg !574
  %183 = select i1 %182, i32 32, i32 18, !dbg !575
  call void @llvm.dbg.value(metadata i32 %183, metadata !285, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %183, metadata !280, metadata !DIExpression()), !dbg !565
  %184 = zext nneg i32 %183 to i64, !dbg !576
  br label %185, !dbg !576

185:                                              ; preds = %185, %173
  %186 = phi i64 [ %184, %173 ], [ %192, %185 ]
  %187 = phi double [ 0.000000e+00, %173 ], [ %handler_result56, %185 ]
  %188 = phi double [ 0.000000e+00, %173 ], [ %187, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !280, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %187, metadata !281, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %188, metadata !282, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %187, metadata !286, metadata !DIExpression()), !dbg !577
  %189 = fmul double %180, %187, !dbg !578
  %handler_result55 = call double @fSubHandlerDouble(double %189, double %188), !dbg !579
  %190 = getelementptr inbounds double, ptr @an22_data, i64 %186, !dbg !579
  %191 = load double, ptr %190, align 8, !dbg !579, !tbaa !366
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double %191), !dbg !580
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !281, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %187, metadata !282, metadata !DIExpression()), !dbg !565
  %192 = add nsw i64 %186, -1, !dbg !580
  call void @llvm.dbg.value(metadata i64 %192, metadata !280, metadata !DIExpression()), !dbg !565
  %193 = icmp ugt i64 %186, 1, !dbg !581
  br i1 %193, label %185, label %194, !dbg !576, !llvm.loop !582

194:                                              ; preds = %185
  %195 = fmul double %179, %handler_result56, !dbg !584
  %handler_result57 = call double @fSubHandlerDouble(double %195, double %187), !dbg !585
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double 0x3F9B840DAFB447CE), !dbg !586
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  %196 = tail call double @llvm.fabs.f64(double %handler_result58), !dbg !586
  %197 = fmul double %196, 0x3CB0000000000000, !dbg !587
  %198 = zext nneg i32 %183 to i64, !dbg !588
  %199 = getelementptr inbounds double, ptr @an22_data, i64 %198, !dbg !588
  %200 = load double, ptr %199, align 16, !dbg !588, !tbaa !366
  %201 = tail call double @llvm.fabs.f64(double %200), !dbg !589
  %handler_result59 = call double @fAddHandlerDouble(double %201, double %197), !dbg !590
  tail call void @llvm.dbg.value(metadata double %handler_result59, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %177, metadata !277, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !592
  %handler_result60 = call double @fAddHandlerDouble(double %178, double 1.000000e+00), !dbg !593
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double -1.000000e+00), !dbg !594
  %202 = fmul double %handler_result61, 5.000000e-01, !dbg !594
  call void @llvm.dbg.value(metadata double %202, metadata !283, metadata !DIExpression()), !dbg !592
  %203 = fmul double %202, 2.000000e+00, !dbg !595
  call void @llvm.dbg.value(metadata double %203, metadata !284, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !596
  %204 = select i1 %182, i32 31, i32 16, !dbg !598
  call void @llvm.dbg.value(metadata i32 %204, metadata !285, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %204, metadata !280, metadata !DIExpression()), !dbg !592
  %205 = zext nneg i32 %204 to i64, !dbg !599
  %206 = and i64 %205, 3, !dbg !599
  %207 = icmp eq i64 %206, 0, !dbg !599
  br i1 %207, label %219, label %208, !dbg !599

208:                                              ; preds = %208, %194
  %209 = phi i64 [ %216, %208 ], [ %205, %194 ]
  %210 = phi double [ %handler_result63, %208 ], [ 0.000000e+00, %194 ]
  %211 = phi double [ %210, %208 ], [ 0.000000e+00, %194 ]
  %212 = phi i64 [ %217, %208 ], [ 0, %194 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !280, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %210, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %211, metadata !282, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %210, metadata !286, metadata !DIExpression()), !dbg !600
  %213 = fmul double %203, %210, !dbg !601
  %handler_result62 = call double @fSubHandlerDouble(double %213, double %211), !dbg !602
  %214 = getelementptr inbounds double, ptr @aph2_data, i64 %209, !dbg !602
  %215 = load double, ptr %214, align 8, !dbg !602, !tbaa !366
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result62, double %215), !dbg !603
  call void @llvm.dbg.value(metadata double %handler_result63, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %210, metadata !282, metadata !DIExpression()), !dbg !592
  %216 = add nsw i64 %209, -1, !dbg !603
  call void @llvm.dbg.value(metadata i64 %216, metadata !280, metadata !DIExpression()), !dbg !592
  %217 = add i64 %212, 1, !dbg !599
  %218 = icmp eq i64 %217, %206, !dbg !599
  br i1 %218, label %219, label %208, !dbg !599, !llvm.loop !604

219:                                              ; preds = %208, %194
  %220 = phi i64 [ %205, %194 ], [ %216, %208 ]
  %221 = phi double [ 0.000000e+00, %194 ], [ %handler_result63, %208 ]
  %222 = phi double [ 0.000000e+00, %194 ], [ %210, %208 ]
  br label %223, !dbg !599

223:                                              ; preds = %223, %219
  %224 = phi i64 [ %220, %219 ], [ %240, %223 ]
  %225 = phi double [ %221, %219 ], [ %handler_result71, %223 ]
  %226 = phi double [ %222, %219 ], [ %handler_result69, %223 ]
  call void @llvm.dbg.value(metadata i64 %224, metadata !280, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %225, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %226, metadata !282, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %225, metadata !286, metadata !DIExpression()), !dbg !600
  %227 = fmul double %203, %225, !dbg !601
  %handler_result64 = call double @fSubHandlerDouble(double %227, double %226), !dbg !602
  %228 = getelementptr inbounds double, ptr @aph2_data, i64 %224, !dbg !602
  %229 = load double, ptr %228, align 8, !dbg !602, !tbaa !366
  %handler_result65 = call double @fAddHandlerDouble(double %handler_result64, double %229), !dbg !601
  call void @llvm.dbg.value(metadata double %handler_result65, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %225, metadata !282, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 %224, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !592
  call void @llvm.dbg.value(metadata i64 %224, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result65, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %225, metadata !282, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result65, metadata !286, metadata !DIExpression()), !dbg !600
  %230 = fmul double %203, %handler_result65, !dbg !601
  %handler_result66 = call double @fSubHandlerDouble(double %230, double %225), !dbg !602
  %231 = getelementptr double, ptr getelementptr (double, ptr @aph2_data, i64 -1), i64 %224, !dbg !602
  %232 = load double, ptr %231, align 8, !dbg !602, !tbaa !366
  %handler_result67 = call double @fAddHandlerDouble(double %handler_result66, double %232), !dbg !601
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result65, metadata !282, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 %224, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !592
  call void @llvm.dbg.value(metadata i64 %224, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result65, metadata !282, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !286, metadata !DIExpression()), !dbg !600
  %233 = fmul double %203, %handler_result67, !dbg !601
  %handler_result68 = call double @fSubHandlerDouble(double %233, double %handler_result65), !dbg !602
  %234 = getelementptr double, ptr getelementptr (double, ptr @aph2_data, i64 -2), i64 %224, !dbg !602
  %235 = load double, ptr %234, align 8, !dbg !602, !tbaa !366
  %handler_result69 = call double @fAddHandlerDouble(double %handler_result68, double %235), !dbg !603
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !282, metadata !DIExpression()), !dbg !592
  %236 = add nsw i64 %224, -3, !dbg !603
  call void @llvm.dbg.value(metadata i64 %236, metadata !280, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 %236, metadata !280, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !282, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !286, metadata !DIExpression()), !dbg !600
  %237 = fmul double %203, %handler_result69, !dbg !601
  %handler_result70 = call double @fSubHandlerDouble(double %237, double %handler_result67), !dbg !602
  %238 = getelementptr inbounds double, ptr @aph2_data, i64 %236, !dbg !602
  %239 = load double, ptr %238, align 8, !dbg !602, !tbaa !366
  %handler_result71 = call double @fAddHandlerDouble(double %handler_result70, double %239), !dbg !603
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !281, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !282, metadata !DIExpression()), !dbg !592
  %240 = add nsw i64 %224, -4, !dbg !603
  call void @llvm.dbg.value(metadata i64 %240, metadata !280, metadata !DIExpression()), !dbg !592
  %241 = icmp ugt i64 %236, 1, !dbg !605
  br i1 %241, label %223, label %242, !dbg !599, !llvm.loop !606

242:                                              ; preds = %223
  %243 = fmul double %202, %handler_result71, !dbg !608
  %handler_result72 = call double @fSubHandlerDouble(double %243, double %handler_result69), !dbg !609
  %handler_result73 = call double @fAddHandlerDouble(double %handler_result72, double 0xBFBA54AB16D2540E)
  tail call void @llvm.dbg.value(metadata double %handler_result73, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  br label %245

244:                                              ; preds = %171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !610
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !612
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 616, i32 noundef 1) #6, !dbg !613
  br label %273, !dbg !613

245:                                              ; preds = %242, %169, %96
  %246 = phi double [ %handler_result51, %169 ], [ %handler_result73, %242 ], [ %handler_result29, %96 ]
  %247 = phi i32 [ %158, %169 ], [ %204, %242 ], [ %63, %96 ]
  %248 = phi ptr [ @aph1_data, %169 ], [ @aph2_data, %242 ], [ @aph0_data, %96 ]
  %249 = phi double [ %handler_result45, %169 ], [ %handler_result59, %242 ], [ %handler_result15, %96 ], !dbg !615
  %250 = phi double [ %handler_result44, %169 ], [ %handler_result58, %242 ], [ %handler_result14, %96 ], !dbg !617
  %251 = tail call double @llvm.fabs.f64(double %246), !dbg !618
  %252 = fmul double %251, 0x3CB0000000000000, !dbg !619
  %253 = zext nneg i32 %247 to i64, !dbg !620
  %254 = getelementptr inbounds double, ptr %248, i64 %253, !dbg !620
  %255 = load double, ptr %254, align 8, !dbg !620, !tbaa !366
  %256 = tail call double @llvm.fabs.f64(double %255), !dbg !621
  %handler_result74 = call double @fAddHandlerDouble(double %256, double %252), !dbg !622
  tail call void @llvm.dbg.value(metadata double %246, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !438, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %250, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %249, metadata !437, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  %handler_result75 = call double @fAddHandlerDouble(double %250, double 3.125000e-01), !dbg !623
  tail call void @llvm.dbg.value(metadata double %handler_result75, metadata !439, metadata !DIExpression()), !dbg !451
  %handler_result76 = call double @fAddHandlerDouble(double %246, double -6.250000e-01), !dbg !624
  tail call void @llvm.dbg.value(metadata double %handler_result76, metadata !440, metadata !DIExpression()), !dbg !451
  %257 = fneg double %0, !dbg !624
  %258 = tail call double @sqrt(double noundef %257) #6, !dbg !625
  tail call void @llvm.dbg.value(metadata double %258, metadata !441, metadata !DIExpression()), !dbg !451
  %259 = fmul double %handler_result75, %258, !dbg !626
  %260 = tail call double @sqrt(double noundef %259) #6, !dbg !627
  store double %260, ptr %2, align 8, !dbg !628, !tbaa !244
  %261 = tail call double @llvm.fabs.f64(double %260), !dbg !629
  %262 = fdiv double %249, %250, !dbg !630
  %263 = tail call double @llvm.fabs.f64(double %262), !dbg !631
  %handler_result77 = call double @fAddHandlerDouble(double %263, double 0x3CB0000000000000), !dbg !632
  %264 = fmul double %handler_result77, %261, !dbg !632
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !633
  store double %264, ptr %265, align 8, !dbg !634, !tbaa !253
  %266 = fmul double %258, %0, !dbg !635
  %267 = fmul double %handler_result76, %266, !dbg !636
  %handler_result78 = call double @fSubHandlerDouble(double 0x4002D97C7F3321D2, double %267), !dbg !637
  store double %handler_result78, ptr %3, align 8, !dbg !637, !tbaa !244
  %268 = tail call double @llvm.fabs.f64(double %handler_result78), !dbg !638
  %269 = fdiv double %handler_result74, %246, !dbg !639
  %270 = tail call double @llvm.fabs.f64(double %269), !dbg !640
  %handler_result79 = call double @fAddHandlerDouble(double %270, double 0x3CB0000000000000), !dbg !641
  %271 = fmul double %handler_result79, %268, !dbg !641
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !642
  store double %271, ptr %272, align 8, !dbg !643, !tbaa !253
  br label %273, !dbg !644

273:                                              ; preds = %245, %244
  %274 = phi i32 [ 0, %245 ], [ 1, %244 ], !dbg !451
  ret i32 %274, !dbg !645
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !646 double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !650 double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !651 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Ai_deriv_e(double noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !652 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !675
  call void @llvm.dbg.assign(metadata i1 undef, metadata !657, metadata !DIExpression(), metadata !675, metadata ptr %4, metadata !DIExpression()), !dbg !676
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !677
  call void @llvm.dbg.assign(metadata i1 undef, metadata !660, metadata !DIExpression(), metadata !677, metadata ptr %5, metadata !DIExpression()), !dbg !676
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !678
  call void @llvm.dbg.assign(metadata i1 undef, metadata !668, metadata !DIExpression(), metadata !678, metadata ptr %6, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata double %0, metadata !654, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !655, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !656, metadata !DIExpression()), !dbg !680
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !681
  br i1 %7, label %8, label %24, !dbg !682

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !683
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !684
  %9 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !685, !range !242
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !661, metadata !DIExpression()), !dbg !676
  %10 = load double, ptr %5, align 8, !dbg !686, !tbaa !244
  %handler_result43 = call double @callHandler(i32 2, double %10, double %10), !dbg !687
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !662, metadata !DIExpression()), !dbg !676
  %11 = load double, ptr %4, align 8, !dbg !687, !tbaa !244
  %12 = fmul double %handler_result43, %11, !dbg !688
  store double %12, ptr %2, align 8, !dbg !689, !tbaa !244
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !690
  %14 = load double, ptr %13, align 8, !dbg !690, !tbaa !253
  %15 = fmul double %12, %14, !dbg !691
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !692
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !693
  %18 = load double, ptr %17, align 8, !dbg !693, !tbaa !253
  %19 = fmul double %handler_result43, %18, !dbg !694
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !695
  %handler_result = call double @fAddHandlerDouble(double %16, double %20), !dbg !696
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !696
  %22 = tail call double @llvm.fabs.f64(double %12), !dbg !697
  %23 = fmul double %22, 0x3CB0000000000000, !dbg !698
  %handler_result1 = call double @fAddHandlerDouble(double %23, double %handler_result), !dbg !699
  store double %handler_result1, ptr %21, align 8, !dbg !699, !tbaa !253
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !700
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !700
  br label %80

24:                                               ; preds = %3
  %25 = fcmp olt double %0, 1.000000e+00, !dbg !701
  %26 = fmul double %0, %0, !dbg !702
  %27 = fmul double %26, %0, !dbg !702
  br i1 %25, label %28, label %61, !dbg !703

28:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double %27, metadata !663, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %27, metadata !277, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 7, metadata !285, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 7, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !705
  tail call void @llvm.dbg.value(metadata double poison, metadata !666, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !704
  tail call void @llvm.dbg.value(metadata double poison, metadata !666, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !704
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %27, metadata !277, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 8, metadata !285, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 8, metadata !280, metadata !DIExpression()), !dbg !710
  %29 = fmul double %27, 2.000000e+00, !dbg !714
  %handler_result2 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !715
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !716
  %30 = fmul double %handler_result3, 5.000000e-01, !dbg !716
  call void @llvm.dbg.value(metadata double %30, metadata !283, metadata !DIExpression()), !dbg !710
  %31 = fmul double %30, 2.000000e+00, !dbg !717
  call void @llvm.dbg.value(metadata double %31, metadata !284, metadata !DIExpression()), !dbg !710
  %handler_result4 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !718
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !719
  %32 = fmul double %handler_result5, 5.000000e-01, !dbg !719
  call void @llvm.dbg.value(metadata double %32, metadata !283, metadata !DIExpression()), !dbg !705
  %33 = fmul double %32, 2.000000e+00, !dbg !720
  call void @llvm.dbg.value(metadata double %33, metadata !284, metadata !DIExpression()), !dbg !705
  %34 = fmul double %33, 0.000000e+00, !dbg !721
  %handler_result6 = call double @fAddHandlerDouble(double %34, double 5.220000e-18), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !282, metadata !DIExpression()), !dbg !705
  %35 = fmul double %33, %handler_result6, !dbg !721
  %handler_result7 = call double @fAddHandlerDouble(double %35, double 5.046220e-15), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !282, metadata !DIExpression()), !dbg !705
  %36 = fmul double %33, %handler_result7, !dbg !721
  %handler_result8 = call double @fSubHandlerDouble(double %36, double %handler_result6), !dbg !722
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D8FF5705AC91EC3), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !282, metadata !DIExpression()), !dbg !705
  %37 = fmul double %33, %handler_result9, !dbg !721
  %handler_result10 = call double @fSubHandlerDouble(double %37, double %handler_result7), !dbg !722
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3E1FD58801700D16), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !282, metadata !DIExpression()), !dbg !705
  %38 = fmul double %33, %handler_result11, !dbg !721
  %handler_result12 = call double @fSubHandlerDouble(double %38, double %handler_result9), !dbg !722
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3EA4E432D4BABD0B), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !282, metadata !DIExpression()), !dbg !705
  %39 = fmul double %33, %handler_result13, !dbg !721
  %handler_result14 = call double @fSubHandlerDouble(double %39, double %handler_result11), !dbg !722
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3F2028A015BCE79A), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !281, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !286, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !282, metadata !DIExpression()), !dbg !705
  %40 = fmul double %33, %handler_result15, !dbg !721
  %handler_result16 = call double @fSubHandlerDouble(double %40, double %handler_result13), !dbg !722
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F883D8B51EBDE69), !dbg !723
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !281, metadata !DIExpression()), !dbg !705
  %41 = fmul double %32, %handler_result17, !dbg !723
  %handler_result18 = call double @fSubHandlerDouble(double %41, double %handler_result15), !dbg !724
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FAAF346E8C752A0), !dbg !725
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !666, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !704
  %42 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !725
  %43 = fmul double %42, 0x3CB0000000000000, !dbg !726
  %handler_result20 = call double @fAddHandlerDouble(double %43, double 5.220000e-18), !dbg !727
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !666, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !704
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !728
  %44 = fmul double %31, 0.000000e+00, !dbg !727
  %handler_result21 = call double @fAddHandlerDouble(double %44, double 3.140000e-19), !dbg !727
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !286, metadata !DIExpression()), !dbg !728
  %45 = fmul double %31, %handler_result21, !dbg !727
  %handler_result22 = call double @fAddHandlerDouble(double %45, double 3.315620e-16), !dbg !727
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !286, metadata !DIExpression()), !dbg !728
  %46 = fmul double %31, %handler_result22, !dbg !727
  %handler_result23 = call double @fSubHandlerDouble(double %46, double %handler_result21), !dbg !729
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3D529E6336575AAD), !dbg !727
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !286, metadata !DIExpression()), !dbg !728
  %47 = fmul double %31, %handler_result24, !dbg !727
  %handler_result25 = call double @fSubHandlerDouble(double %47, double %handler_result22), !dbg !729
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3DE4F2377D2D1DB9), !dbg !727
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !286, metadata !DIExpression()), !dbg !728
  %48 = fmul double %31, %handler_result26, !dbg !727
  %handler_result27 = call double @fSubHandlerDouble(double %48, double %handler_result24), !dbg !729
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3E6FE9188AD28E95), !dbg !727
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !286, metadata !DIExpression()), !dbg !728
  %49 = fmul double %31, %handler_result28, !dbg !727
  %handler_result29 = call double @fSubHandlerDouble(double %49, double %handler_result26), !dbg !729
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EEDEABB5FA79163), !dbg !727
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !286, metadata !DIExpression()), !dbg !728
  %50 = fmul double %31, %handler_result30, !dbg !727
  %handler_result31 = call double @fSubHandlerDouble(double %50, double %handler_result28), !dbg !729
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F5D73A8A245C45E), !dbg !727
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !286, metadata !DIExpression()), !dbg !728
  %51 = fmul double %31, %handler_result32, !dbg !727
  %handler_result33 = call double @fSubHandlerDouble(double %51, double %handler_result30), !dbg !729
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3FB618CD01E9DF15), !dbg !730
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !281, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !282, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !710
  %52 = fmul double %30, %handler_result34, !dbg !730
  %handler_result35 = call double @fSubHandlerDouble(double %52, double %handler_result32), !dbg !731
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F85BE5570E6DAF5), !dbg !732
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !667, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !704
  %53 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !732
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !733
  %handler_result37 = call double @fAddHandlerDouble(double %54, double 3.140000e-19), !dbg !734
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !667, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !704
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result19, double 1.250000e-01), !dbg !735
  %55 = fmul double %26, %handler_result38, !dbg !735
  %handler_result39 = call double @fSubHandlerDouble(double %55, double %handler_result36), !dbg !736
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double -2.500000e-01), !dbg !737
  store double %handler_result40, ptr %2, align 8, !dbg !737, !tbaa !244
  %56 = fmul double %26, %handler_result20, !dbg !738
  %57 = tail call double @llvm.fabs.f64(double %56), !dbg !739
  %handler_result41 = call double @fAddHandlerDouble(double %57, double %handler_result37), !dbg !740
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !740
  %59 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !741
  %60 = fmul double %59, 0x3CB0000000000000, !dbg !742
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %60), !dbg !743
  store double %handler_result42, ptr %58, align 8, !dbg !743, !tbaa !253
  br label %80

61:                                               ; preds = %24
  %62 = fcmp olt double %27, 0x41313A9357D08D7F, !dbg !744
  br i1 %62, label %63, label %78, !dbg !745

63:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !746
  %64 = fmul double %0, -2.000000e+00, !dbg !747
  %65 = tail call double @sqrt(double noundef %0) #6, !dbg !748
  %66 = fmul double %64, %65, !dbg !749
  %67 = fdiv double %66, 3.000000e+00, !dbg !750
  tail call void @llvm.dbg.value(metadata double %67, metadata !671, metadata !DIExpression()), !dbg !679
  %68 = call i32 @gsl_sf_airy_Ai_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %6), !dbg !751, !range !242
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !672, metadata !DIExpression()), !dbg !679
  %69 = fmul double %67, 0x3CB0000000000000, !dbg !752
  %70 = tail call double @llvm.fabs.f64(double %69), !dbg !753
  %71 = fmul double %70, 1.500000e+00, !dbg !754
  %72 = load double, ptr %6, align 8, !dbg !755, !tbaa !244
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !756
  %74 = load double, ptr %73, align 8, !dbg !756, !tbaa !253
  %75 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %67, double noundef %71, double noundef %72, double noundef %74, ptr noundef %2) #6, !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !674, metadata !DIExpression()), !dbg !679
  %76 = icmp eq i32 %75, 0, !dbg !758
  %77 = select i1 %76, i32 %68, i32 %75, !dbg !758
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !759
  br label %80

78:                                               ; preds = %61
  store double 0.000000e+00, ptr %2, align 8, !dbg !760, !tbaa !244
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !760
  store double 0x10000000000000, ptr %79, align 8, !dbg !760, !tbaa !253
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 732, i32 noundef 15) #6, !dbg !763
  br label %80, !dbg !763

80:                                               ; preds = %78, %63, %28, %8
  %81 = phi i32 [ %9, %8 ], [ 0, %28 ], [ %77, %63 ], [ 15, %78 ], !dbg !765
  ret i32 %81, !dbg !766
}

declare !dbg !767 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !771 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_Bi_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !776 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !783, metadata !DIExpression(), metadata !815, metadata ptr %4, metadata !DIExpression()), !dbg !816
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !786, metadata !DIExpression(), metadata !817, metadata ptr %5, metadata !DIExpression()), !dbg !816
  tail call void @llvm.dbg.value(metadata double %0, metadata !778, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !779, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !780, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata double 0x4021805A83B66B50, metadata !781, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata double 0xC000C02D41DB35A8, metadata !782, metadata !DIExpression()), !dbg !818
  %6 = fcmp olt double %0, -1.000000e+00, !dbg !819
  br i1 %6, label %7, label %23, !dbg !820

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !821
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !822
  %8 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !823, !range !242
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !787, metadata !DIExpression()), !dbg !816
  %9 = load double, ptr %5, align 8, !dbg !824, !tbaa !244
  %handler_result127 = call double @callHandler(i32 1, double %9, double %9), !dbg !825
  tail call void @llvm.dbg.value(metadata double %handler_result127, metadata !788, metadata !DIExpression()), !dbg !816
  %10 = load double, ptr %4, align 8, !dbg !825, !tbaa !244
  %11 = fmul double %handler_result127, %10, !dbg !826
  store double %11, ptr %2, align 8, !dbg !827, !tbaa !244
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !828
  %13 = load double, ptr %12, align 8, !dbg !828, !tbaa !253
  %14 = fmul double %11, %13, !dbg !829
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !830
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !831
  %17 = load double, ptr %16, align 8, !dbg !831, !tbaa !253
  %18 = fmul double %handler_result127, %17, !dbg !832
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !833
  %handler_result = call double @fAddHandlerDouble(double %15, double %19), !dbg !834
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !834
  %21 = tail call double @llvm.fabs.f64(double %11), !dbg !835
  %22 = fmul double %21, 0x3CB0000000000000, !dbg !836
  %handler_result1 = call double @fAddHandlerDouble(double %22, double %handler_result), !dbg !837
  store double %handler_result1, ptr %20, align 8, !dbg !837, !tbaa !253
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !838
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !838
  br label %233

23:                                               ; preds = %3
  %24 = fcmp olt double %0, 1.000000e+00, !dbg !839
  br i1 %24, label %25, label %70, !dbg !840

25:                                               ; preds = %23
  %26 = fmul double %0, %0, !dbg !841
  tail call void @llvm.dbg.value(metadata double poison, metadata !789, metadata !DIExpression()), !dbg !842
  tail call void @llvm.dbg.value(metadata double %26, metadata !792, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32 7, metadata !285, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 7, metadata !280, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double poison, metadata !789, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double poison, metadata !793, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !842
  tail call void @llvm.dbg.value(metadata double poison, metadata !793, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !842
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i32 8, metadata !285, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i32 8, metadata !280, metadata !DIExpression()), !dbg !848
  %27 = fmul double %26, %0, !dbg !852
  tail call void @llvm.dbg.value(metadata double %27, metadata !789, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double %27, metadata !277, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %27, metadata !277, metadata !DIExpression()), !dbg !848
  %28 = fmul double %27, 2.000000e+00, !dbg !853
  %handler_result2 = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !854
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !855
  %29 = fmul double %handler_result3, 5.000000e-01, !dbg !855
  call void @llvm.dbg.value(metadata double %29, metadata !283, metadata !DIExpression()), !dbg !848
  %30 = fmul double %29, 2.000000e+00, !dbg !856
  call void @llvm.dbg.value(metadata double %30, metadata !284, metadata !DIExpression()), !dbg !848
  %handler_result4 = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !857
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !858
  %31 = fmul double %handler_result5, 5.000000e-01, !dbg !858
  call void @llvm.dbg.value(metadata double %31, metadata !283, metadata !DIExpression()), !dbg !843
  %32 = fmul double %31, 2.000000e+00, !dbg !859
  call void @llvm.dbg.value(metadata double %32, metadata !284, metadata !DIExpression()), !dbg !843
  %33 = fmul double %32, 0.000000e+00, !dbg !860
  %handler_result6 = call double @fAddHandlerDouble(double %33, double 0x3C64C0A98C0C8C21), !dbg !860
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !282, metadata !DIExpression()), !dbg !843
  %34 = fmul double %32, %handler_result6, !dbg !860
  %handler_result7 = call double @fAddHandlerDouble(double %34, double 8.740300e-15), !dbg !860
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !282, metadata !DIExpression()), !dbg !843
  %35 = fmul double %32, %handler_result7, !dbg !860
  %handler_result8 = call double @fSubHandlerDouble(double %35, double %handler_result6), !dbg !861
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D9BAD557CF40EE1), !dbg !860
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !282, metadata !DIExpression()), !dbg !843
  %36 = fmul double %32, %handler_result9, !dbg !860
  %handler_result10 = call double @fSubHandlerDouble(double %36, double %handler_result7), !dbg !861
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3E2B91B37BF883E9), !dbg !860
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !282, metadata !DIExpression()), !dbg !843
  %37 = fmul double %32, %handler_result11, !dbg !860
  %handler_result12 = call double @fSubHandlerDouble(double %37, double %handler_result9), !dbg !861
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3EB217AD02495704), !dbg !860
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !282, metadata !DIExpression()), !dbg !843
  %38 = fmul double %32, %handler_result13, !dbg !860
  %handler_result14 = call double @fSubHandlerDouble(double %38, double %handler_result11), !dbg !861
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3F2BFCD86210EF79), !dbg !860
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !281, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !286, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !282, metadata !DIExpression()), !dbg !843
  %39 = fmul double %32, %handler_result15, !dbg !860
  %handler_result16 = call double @fSubHandlerDouble(double %39, double %handler_result13), !dbg !861
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F94FE28B0252EE1), !dbg !862
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !281, metadata !DIExpression()), !dbg !843
  %40 = fmul double %31, %handler_result17, !dbg !862
  %handler_result18 = call double @fSubHandlerDouble(double %40, double %handler_result15), !dbg !863
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FAD87D1972257AB), !dbg !864
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !793, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !842
  %41 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !864
  %42 = fmul double %41, 0x3CB0000000000000, !dbg !865
  %handler_result20 = call double @fAddHandlerDouble(double %42, double 0x3C64C0A98C0C8C21), !dbg !866
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !793, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !842
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !867
  %43 = fmul double %30, 0.000000e+00, !dbg !866
  %handler_result21 = call double @fAddHandlerDouble(double %43, double 5.440000e-19), !dbg !866
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !286, metadata !DIExpression()), !dbg !867
  %44 = fmul double %30, %handler_result21, !dbg !866
  %handler_result22 = call double @fAddHandlerDouble(double %44, double 5.742830e-16), !dbg !866
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !286, metadata !DIExpression()), !dbg !867
  %45 = fmul double %30, %handler_result22, !dbg !866
  %handler_result23 = call double @fSubHandlerDouble(double %45, double %handler_result21), !dbg !868
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3D601FD00DA5423B), !dbg !866
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !286, metadata !DIExpression()), !dbg !867
  %46 = fmul double %30, %handler_result24, !dbg !866
  %handler_result25 = call double @fSubHandlerDouble(double %46, double %handler_result22), !dbg !868
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3DF223D0E0BFAC63), !dbg !866
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !286, metadata !DIExpression()), !dbg !867
  %47 = fmul double %30, %handler_result26, !dbg !866
  %handler_result27 = call double @fSubHandlerDouble(double %47, double %handler_result24), !dbg !868
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3E7BA2A50116C6B9), !dbg !866
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !286, metadata !DIExpression()), !dbg !867
  %48 = fmul double %30, %handler_result28, !dbg !866
  %handler_result29 = call double @fSubHandlerDouble(double %48, double %handler_result26), !dbg !868
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EF9E8A80A88240B), !dbg !866
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !286, metadata !DIExpression()), !dbg !867
  %49 = fmul double %30, %handler_result30, !dbg !866
  %handler_result31 = call double @fSubHandlerDouble(double %49, double %handler_result28), !dbg !868
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F69818936D0805E), !dbg !866
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !286, metadata !DIExpression()), !dbg !867
  %50 = fmul double %30, %handler_result32, !dbg !866
  %handler_result33 = call double @fSubHandlerDouble(double %50, double %handler_result30), !dbg !868
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3FC322EEE696951C), !dbg !869
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !281, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !282, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !848
  %51 = fmul double %29, %handler_result34, !dbg !869
  %handler_result35 = call double @fSubHandlerDouble(double %51, double %handler_result32), !dbg !870
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0xBFA8E1DDACE0511C), !dbg !871
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !794, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !842
  %52 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !871
  %53 = fmul double %52, 0x3CB0000000000000, !dbg !872
  %handler_result37 = call double @fAddHandlerDouble(double %53, double 5.440000e-19), !dbg !873
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !794, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !842
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result19, double 2.500000e-01), !dbg !874
  %54 = fmul double %26, %handler_result38, !dbg !874
  %handler_result39 = call double @fAddHandlerDouble(double %54, double %handler_result36), !dbg !875
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 5.000000e-01), !dbg !876
  store double %handler_result40, ptr %2, align 8, !dbg !876, !tbaa !244
  %55 = fmul double %26, %handler_result20, !dbg !877
  %handler_result41 = call double @fAddHandlerDouble(double %55, double %handler_result37), !dbg !878
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !878
  %57 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !879
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !880
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %58), !dbg !881
  store double %handler_result42, ptr %56, align 8, !dbg !881, !tbaa !253
  %59 = fcmp ogt double %0, 0x3DC428A2F98D7292, !dbg !882
  br i1 %59, label %60, label %233, !dbg !883

60:                                               ; preds = %25
  %61 = fmul double %0, -2.000000e+00, !dbg !884
  %62 = tail call double @sqrt(double noundef %0) #6, !dbg !885
  %63 = fmul double %61, %62, !dbg !886
  %64 = fdiv double %63, 3.000000e+00, !dbg !887
  %65 = tail call double @exp(double noundef %64) #6, !dbg !888
  tail call void @llvm.dbg.value(metadata double %65, metadata !795, metadata !DIExpression()), !dbg !889
  %66 = load double, ptr %2, align 8, !dbg !890, !tbaa !244
  %67 = fmul double %65, %66, !dbg !890
  store double %67, ptr %2, align 8, !dbg !890, !tbaa !244
  %68 = load double, ptr %56, align 8, !dbg !891, !tbaa !253
  %69 = fmul double %65, %68, !dbg !891
  store double %69, ptr %56, align 8, !dbg !891, !tbaa !253
  br label %233, !dbg !892

70:                                               ; preds = %23
  %71 = fcmp olt double %0, 2.000000e+00, !dbg !893
  br i1 %71, label %72, label %119, !dbg !894

72:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata double poison, metadata !798, metadata !DIExpression()), !dbg !895
  %73 = fmul double %0, -2.000000e+00, !dbg !896
  %74 = tail call double @sqrt(double noundef %0) #6, !dbg !897
  %75 = fmul double %73, %74, !dbg !898
  %76 = fdiv double %75, 3.000000e+00, !dbg !899
  %77 = tail call double @exp(double noundef %76) #6, !dbg !900
  tail call void @llvm.dbg.value(metadata double %77, metadata !801, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i32 9, metadata !285, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i32 9, metadata !280, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata double poison, metadata !798, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 9, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata double poison, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !895
  tail call void @llvm.dbg.value(metadata double poison, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !895
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 9, metadata !285, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 9, metadata !280, metadata !DIExpression()), !dbg !906
  %78 = fmul double %0, 2.000000e+00, !dbg !910
  %79 = fmul double %78, %0, !dbg !911
  %80 = fmul double %79, %0, !dbg !912
  %handler_result43 = call double @fAddHandlerDouble(double %80, double -9.000000e+00), !dbg !913
  %81 = fdiv double %handler_result43, 7.000000e+00, !dbg !913
  tail call void @llvm.dbg.value(metadata double %81, metadata !798, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %81, metadata !277, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %81, metadata !277, metadata !DIExpression()), !dbg !906
  %82 = fmul double %81, 2.000000e+00, !dbg !914
  %handler_result44 = call double @fAddHandlerDouble(double %82, double 1.000000e+00), !dbg !915
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double -1.000000e+00), !dbg !916
  %83 = fmul double %handler_result45, 5.000000e-01, !dbg !916
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !906
  %84 = fmul double %83, 2.000000e+00, !dbg !917
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !906
  %handler_result46 = call double @fAddHandlerDouble(double %82, double 1.000000e+00), !dbg !918
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double -1.000000e+00), !dbg !919
  %85 = fmul double %handler_result47, 5.000000e-01, !dbg !919
  call void @llvm.dbg.value(metadata double %85, metadata !283, metadata !DIExpression()), !dbg !901
  %86 = fmul double %85, 2.000000e+00, !dbg !920
  call void @llvm.dbg.value(metadata double %86, metadata !284, metadata !DIExpression()), !dbg !901
  %87 = fmul double %86, 0.000000e+00, !dbg !921
  %handler_result48 = call double @fAddHandlerDouble(double %87, double 3.820000e-19), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !282, metadata !DIExpression()), !dbg !901
  %88 = fmul double %86, %handler_result48, !dbg !921
  %handler_result49 = call double @fAddHandlerDouble(double %88, double 1.719110e-16), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !282, metadata !DIExpression()), !dbg !901
  %89 = fmul double %86, %handler_result49, !dbg !921
  %handler_result50 = call double @fSubHandlerDouble(double %89, double %handler_result48), !dbg !922
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0x3D315B532C1052B5), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !282, metadata !DIExpression()), !dbg !901
  %90 = fmul double %86, %handler_result51, !dbg !921
  %handler_result52 = call double @fSubHandlerDouble(double %90, double %handler_result49), !dbg !922
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double 0x3DB2DA69C400FB0F), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !282, metadata !DIExpression()), !dbg !901
  %91 = fmul double %86, %handler_result53, !dbg !921
  %handler_result54 = call double @fSubHandlerDouble(double %91, double %handler_result51), !dbg !922
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 0x3E2E985FC5232C55), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !282, metadata !DIExpression()), !dbg !901
  %92 = fmul double %86, %handler_result55, !dbg !921
  %handler_result56 = call double @fSubHandlerDouble(double %92, double %handler_result53), !dbg !922
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result56, double 0x3EA1A4EEF043E8FC), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !282, metadata !DIExpression()), !dbg !901
  %93 = fmul double %86, %handler_result57, !dbg !921
  %handler_result58 = call double @fSubHandlerDouble(double %93, double %handler_result55), !dbg !922
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result58, double 0x3F0AF6E37FAD4768), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !282, metadata !DIExpression()), !dbg !901
  %94 = fmul double %86, %handler_result59, !dbg !921
  %handler_result60 = call double @fSubHandlerDouble(double %94, double %handler_result57), !dbg !922
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double 0x3F6886ED3AA0192F), !dbg !921
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !281, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !286, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !282, metadata !DIExpression()), !dbg !901
  %95 = fmul double %86, %handler_result61, !dbg !921
  %handler_result62 = call double @fSubHandlerDouble(double %95, double %handler_result59), !dbg !922
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result62, double 0x3FB6179E07F5ABF0), !dbg !923
  call void @llvm.dbg.value(metadata double %handler_result63, metadata !281, metadata !DIExpression()), !dbg !901
  %96 = fmul double %85, %handler_result63, !dbg !923
  %handler_result64 = call double @fSubHandlerDouble(double %96, double %handler_result61), !dbg !924
  %handler_result65 = call double @fAddHandlerDouble(double %handler_result64, double 0x3FC4B420204D6CA7), !dbg !925
  tail call void @llvm.dbg.value(metadata double %handler_result65, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !895
  %97 = tail call double @llvm.fabs.f64(double %handler_result65), !dbg !925
  %98 = fmul double %97, 0x3CB0000000000000, !dbg !926
  %handler_result66 = call double @fAddHandlerDouble(double %98, double 3.820000e-19), !dbg !927
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !895
  call void @llvm.dbg.value(metadata i64 9, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !928
  %99 = fmul double %84, 0.000000e+00, !dbg !927
  %handler_result67 = call double @fAddHandlerDouble(double %99, double 3.350000e-17), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !286, metadata !DIExpression()), !dbg !928
  %100 = fmul double %84, %handler_result67, !dbg !927
  %handler_result68 = call double @fAddHandlerDouble(double %100, double 1.300170e-14), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !286, metadata !DIExpression()), !dbg !928
  %101 = fmul double %84, %handler_result68, !dbg !927
  %handler_result69 = call double @fSubHandlerDouble(double %101, double %handler_result67), !dbg !929
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 0x3D9164B320CC30DC), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !286, metadata !DIExpression()), !dbg !928
  %102 = fmul double %84, %handler_result70, !dbg !927
  %handler_result71 = call double @fSubHandlerDouble(double %102, double %handler_result68), !dbg !929
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double 0x3E0F505F53BAE897), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !286, metadata !DIExpression()), !dbg !928
  %103 = fmul double %84, %handler_result72, !dbg !927
  %handler_result73 = call double @fSubHandlerDouble(double %103, double %handler_result70), !dbg !929
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3E846D36D9B9968B), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !286, metadata !DIExpression()), !dbg !928
  %104 = fmul double %84, %handler_result74, !dbg !927
  %handler_result75 = call double @fSubHandlerDouble(double %104, double %handler_result72), !dbg !929
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0x3EF229E75A591D73), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !286, metadata !DIExpression()), !dbg !928
  %105 = fmul double %84, %handler_result76, !dbg !927
  %handler_result77 = call double @fSubHandlerDouble(double %105, double %handler_result74), !dbg !929
  %handler_result78 = call double @fAddHandlerDouble(double %handler_result77, double 0x3F542075C674FDA9), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !286, metadata !DIExpression()), !dbg !928
  %106 = fmul double %84, %handler_result78, !dbg !927
  %handler_result79 = call double @fSubHandlerDouble(double %106, double %handler_result76), !dbg !929
  %handler_result80 = call double @fAddHandlerDouble(double %handler_result79, double 0x3FA81233D561FD01), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !286, metadata !DIExpression()), !dbg !928
  %107 = fmul double %84, %handler_result80, !dbg !927
  %handler_result81 = call double @fSubHandlerDouble(double %107, double %handler_result78), !dbg !929
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double 0x3FE7D64B26D45FE0), !dbg !930
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !281, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !282, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !906
  %108 = fmul double %83, %handler_result82, !dbg !930
  %handler_result83 = call double @fSubHandlerDouble(double %108, double %handler_result80), !dbg !931
  %handler_result84 = call double @fAddHandlerDouble(double %handler_result83, double 0x3FE9B36792931206), !dbg !932
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !803, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !895
  %109 = tail call double @llvm.fabs.f64(double %handler_result84), !dbg !932
  %110 = fmul double %109, 0x3CB0000000000000, !dbg !933
  %handler_result85 = call double @fAddHandlerDouble(double %110, double 3.350000e-17), !dbg !934
  tail call void @llvm.dbg.value(metadata double %handler_result85, metadata !803, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !895
  %111 = fmul double %0, %0, !dbg !934
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result65, double 2.500000e-01), !dbg !935
  %112 = fmul double %111, %handler_result86, !dbg !935
  %handler_result87 = call double @fAddHandlerDouble(double %112, double 5.000000e-01), !dbg !936
  %handler_result88 = call double @fAddHandlerDouble(double %handler_result87, double %handler_result84), !dbg !937
  %113 = fmul double %77, %handler_result88, !dbg !937
  store double %113, ptr %2, align 8, !dbg !938, !tbaa !244
  %114 = fmul double %111, %handler_result66, !dbg !939
  %handler_result89 = call double @fAddHandlerDouble(double %114, double %handler_result85), !dbg !940
  %115 = fmul double %77, %handler_result89, !dbg !940
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !941
  %117 = tail call double @llvm.fabs.f64(double %113), !dbg !942
  %118 = fmul double %117, 0x3CB0000000000000, !dbg !943
  %handler_result90 = call double @fAddHandlerDouble(double %118, double %115), !dbg !944
  store double %handler_result90, ptr %116, align 8, !dbg !944, !tbaa !253
  br label %233

119:                                              ; preds = %70
  %120 = fcmp olt double %0, 4.000000e+00, !dbg !945
  %121 = tail call double @sqrt(double noundef %0) #6, !dbg !946
  %122 = fmul double %121, %0, !dbg !946
  %123 = tail call double @sqrt(double noundef %121) #6, !dbg !946
  %124 = and i32 %1, 7, !dbg !947
  %125 = icmp eq i32 %124, 0, !dbg !949
  br i1 %120, label %126, label %177, !dbg !950

126:                                              ; preds = %119
  tail call void @llvm.dbg.value(metadata double %121, metadata !804, metadata !DIExpression()), !dbg !951
  %127 = fdiv double 0x4021805A83B66B50, %122, !dbg !952
  %handler_result91 = call double @fAddHandlerDouble(double %127, double 0xC000C02D41DB35A8), !dbg !953
  tail call void @llvm.dbg.value(metadata double %handler_result91, metadata !807, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata double %123, metadata !808, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result91, metadata !277, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !955
  %128 = fmul double %handler_result91, 2.000000e+00, !dbg !953
  %handler_result92 = call double @fAddHandlerDouble(double %128, double 1.000000e+00), !dbg !956
  %handler_result93 = call double @fAddHandlerDouble(double %handler_result92, double -1.000000e+00), !dbg !957
  %129 = fmul double %handler_result93, 5.000000e-01, !dbg !957
  call void @llvm.dbg.value(metadata double %129, metadata !283, metadata !DIExpression()), !dbg !955
  %130 = fmul double %129, 2.000000e+00, !dbg !958
  call void @llvm.dbg.value(metadata double %130, metadata !284, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !959
  %131 = select i1 %125, i32 23, i32 13, !dbg !961
  call void @llvm.dbg.value(metadata i32 %131, metadata !285, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %131, metadata !280, metadata !DIExpression()), !dbg !955
  %132 = zext nneg i32 %131 to i64, !dbg !962
  %133 = and i64 %132, 3, !dbg !962
  br label %134, !dbg !962

134:                                              ; preds = %134, %126
  %135 = phi i64 [ %132, %126 ], [ %142, %134 ]
  %136 = phi double [ 0.000000e+00, %126 ], [ %handler_result95, %134 ]
  %137 = phi double [ 0.000000e+00, %126 ], [ %136, %134 ]
  %138 = phi i64 [ 0, %126 ], [ %143, %134 ]
  call void @llvm.dbg.value(metadata i64 %135, metadata !280, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %136, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %137, metadata !282, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %136, metadata !286, metadata !DIExpression()), !dbg !963
  %139 = fmul double %130, %136, !dbg !964
  %handler_result94 = call double @fSubHandlerDouble(double %139, double %137), !dbg !965
  %140 = getelementptr inbounds double, ptr @bip1_data, i64 %135, !dbg !965
  %141 = load double, ptr %140, align 8, !dbg !965, !tbaa !366
  %handler_result95 = call double @fAddHandlerDouble(double %handler_result94, double %141), !dbg !966
  call void @llvm.dbg.value(metadata double %handler_result95, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %136, metadata !282, metadata !DIExpression()), !dbg !955
  %142 = add nsw i64 %135, -1, !dbg !966
  call void @llvm.dbg.value(metadata i64 %142, metadata !280, metadata !DIExpression()), !dbg !955
  %143 = add i64 %138, 1, !dbg !962
  %144 = icmp eq i64 %143, %133, !dbg !962
  br i1 %144, label %145, label %134, !dbg !962, !llvm.loop !967

145:                                              ; preds = %145, %134
  %146 = phi i64 [ %162, %145 ], [ %142, %134 ]
  %147 = phi double [ %handler_result103, %145 ], [ %handler_result95, %134 ]
  %148 = phi double [ %handler_result101, %145 ], [ %136, %134 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !280, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %147, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %148, metadata !282, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %147, metadata !286, metadata !DIExpression()), !dbg !963
  %149 = fmul double %130, %147, !dbg !964
  %handler_result96 = call double @fSubHandlerDouble(double %149, double %148), !dbg !965
  %150 = getelementptr inbounds double, ptr @bip1_data, i64 %146, !dbg !965
  %151 = load double, ptr %150, align 8, !dbg !965, !tbaa !366
  %handler_result97 = call double @fAddHandlerDouble(double %handler_result96, double %151), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %147, metadata !282, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %146, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !955
  call void @llvm.dbg.value(metadata i64 %146, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %147, metadata !282, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !286, metadata !DIExpression()), !dbg !963
  %152 = fmul double %130, %handler_result97, !dbg !964
  %handler_result98 = call double @fSubHandlerDouble(double %152, double %147), !dbg !965
  %153 = getelementptr double, ptr getelementptr (double, ptr @bip1_data, i64 -1), i64 %146, !dbg !965
  %154 = load double, ptr %153, align 8, !dbg !965, !tbaa !366
  %handler_result99 = call double @fAddHandlerDouble(double %handler_result98, double %154), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !282, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %146, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !955
  call void @llvm.dbg.value(metadata i64 %146, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !282, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !286, metadata !DIExpression()), !dbg !963
  %155 = fmul double %130, %handler_result99, !dbg !964
  %handler_result100 = call double @fSubHandlerDouble(double %155, double %handler_result97), !dbg !965
  %156 = getelementptr double, ptr getelementptr (double, ptr @bip1_data, i64 -2), i64 %146, !dbg !965
  %157 = load double, ptr %156, align 8, !dbg !965, !tbaa !366
  %handler_result101 = call double @fAddHandlerDouble(double %handler_result100, double %157), !dbg !966
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !282, metadata !DIExpression()), !dbg !955
  %158 = add nsw i64 %146, -3, !dbg !966
  call void @llvm.dbg.value(metadata i64 %158, metadata !280, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %158, metadata !280, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !282, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !286, metadata !DIExpression()), !dbg !963
  %159 = fmul double %130, %handler_result101, !dbg !964
  %handler_result102 = call double @fSubHandlerDouble(double %159, double %handler_result99), !dbg !965
  %160 = getelementptr inbounds double, ptr @bip1_data, i64 %158, !dbg !965
  %161 = load double, ptr %160, align 8, !dbg !965, !tbaa !366
  %handler_result103 = call double @fAddHandlerDouble(double %handler_result102, double %161), !dbg !966
  call void @llvm.dbg.value(metadata double %handler_result103, metadata !281, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !282, metadata !DIExpression()), !dbg !955
  %162 = add nsw i64 %146, -4, !dbg !966
  call void @llvm.dbg.value(metadata i64 %162, metadata !280, metadata !DIExpression()), !dbg !955
  %163 = icmp ugt i64 %158, 1, !dbg !968
  br i1 %163, label %145, label %164, !dbg !962, !llvm.loop !969

164:                                              ; preds = %145
  %165 = fmul double %129, %handler_result103, !dbg !971
  %handler_result104 = call double @fSubHandlerDouble(double %165, double %handler_result101), !dbg !972
  %handler_result105 = call double @fAddHandlerDouble(double %handler_result104, double 0xBFB622337C13C1EB), !dbg !973
  tail call void @llvm.dbg.value(metadata double %handler_result105, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !951
  %166 = tail call double @llvm.fabs.f64(double %handler_result105), !dbg !973
  %167 = fmul double %166, 0x3CB0000000000000, !dbg !974
  %168 = zext nneg i32 %131 to i64, !dbg !975
  %169 = getelementptr inbounds double, ptr @bip1_data, i64 %168, !dbg !975
  %170 = load double, ptr %169, align 8, !dbg !975, !tbaa !366
  %171 = tail call double @llvm.fabs.f64(double %170), !dbg !976
  %handler_result106 = call double @fAddHandlerDouble(double %171, double %167), !dbg !977
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !951
  %handler_result107 = call double @fAddHandlerDouble(double %handler_result105, double 6.250000e-01), !dbg !978
  %172 = fmul double %123, %handler_result107, !dbg !978
  store double %172, ptr %2, align 8, !dbg !979, !tbaa !244
  %173 = fmul double %123, %handler_result106, !dbg !980
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !981
  %175 = tail call double @llvm.fabs.f64(double %172), !dbg !982
  %176 = fmul double %175, 0x3CB0000000000000, !dbg !983
  %handler_result108 = call double @fAddHandlerDouble(double %173, double %176), !dbg !984
  store double %handler_result108, ptr %174, align 8, !dbg !984, !tbaa !253
  br label %233

177:                                              ; preds = %119
  tail call void @llvm.dbg.value(metadata double %121, metadata !810, metadata !DIExpression()), !dbg !985
  %178 = fdiv double 1.600000e+01, %122, !dbg !986
  %handler_result109 = call double @fAddHandlerDouble(double %178, double -1.000000e+00), !dbg !987
  tail call void @llvm.dbg.value(metadata double %handler_result109, metadata !812, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata double %123, metadata !813, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result109, metadata !277, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !989
  %179 = fmul double %handler_result109, 2.000000e+00, !dbg !987
  %handler_result110 = call double @fAddHandlerDouble(double %179, double 1.000000e+00), !dbg !990
  %handler_result111 = call double @fAddHandlerDouble(double %handler_result110, double -1.000000e+00), !dbg !991
  %180 = fmul double %handler_result111, 5.000000e-01, !dbg !991
  call void @llvm.dbg.value(metadata double %180, metadata !283, metadata !DIExpression()), !dbg !989
  %181 = fmul double %180, 2.000000e+00, !dbg !992
  call void @llvm.dbg.value(metadata double %181, metadata !284, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !993
  %182 = select i1 %125, i32 28, i32 14, !dbg !995
  call void @llvm.dbg.value(metadata i32 %182, metadata !285, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %182, metadata !280, metadata !DIExpression()), !dbg !989
  %183 = zext nneg i32 %182 to i64, !dbg !996
  %184 = and i64 %183, 2, !dbg !996
  %185 = icmp eq i64 %184, 0, !dbg !996
  br i1 %185, label %197, label %186, !dbg !996

186:                                              ; preds = %186, %177
  %187 = phi i64 [ %194, %186 ], [ %183, %177 ]
  %188 = phi double [ %handler_result113, %186 ], [ 0.000000e+00, %177 ]
  %189 = phi double [ %188, %186 ], [ 0.000000e+00, %177 ]
  %190 = phi i64 [ %195, %186 ], [ 0, %177 ]
  call void @llvm.dbg.value(metadata i64 %187, metadata !280, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %188, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %189, metadata !282, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %188, metadata !286, metadata !DIExpression()), !dbg !997
  %191 = fmul double %181, %188, !dbg !998
  %handler_result112 = call double @fSubHandlerDouble(double %191, double %189), !dbg !999
  %192 = getelementptr inbounds double, ptr @bip2_data, i64 %187, !dbg !999
  %193 = load double, ptr %192, align 8, !dbg !999, !tbaa !366
  %handler_result113 = call double @fAddHandlerDouble(double %handler_result112, double %193), !dbg !1000
  call void @llvm.dbg.value(metadata double %handler_result113, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %188, metadata !282, metadata !DIExpression()), !dbg !989
  %194 = add nsw i64 %187, -1, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %194, metadata !280, metadata !DIExpression()), !dbg !989
  %195 = add i64 %190, 1, !dbg !996
  %196 = icmp eq i64 %195, %184, !dbg !996
  br i1 %196, label %197, label %186, !dbg !996, !llvm.loop !1001

197:                                              ; preds = %186, %177
  %198 = phi i64 [ %183, %177 ], [ %194, %186 ]
  %199 = phi double [ 0.000000e+00, %177 ], [ %handler_result113, %186 ]
  %200 = phi double [ 0.000000e+00, %177 ], [ %188, %186 ]
  br label %201, !dbg !996

201:                                              ; preds = %201, %197
  %202 = phi i64 [ %198, %197 ], [ %218, %201 ]
  %203 = phi double [ %199, %197 ], [ %handler_result121, %201 ]
  %204 = phi double [ %200, %197 ], [ %handler_result119, %201 ]
  call void @llvm.dbg.value(metadata i64 %202, metadata !280, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %203, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %204, metadata !282, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %203, metadata !286, metadata !DIExpression()), !dbg !997
  %205 = fmul double %181, %203, !dbg !998
  %handler_result114 = call double @fSubHandlerDouble(double %205, double %204), !dbg !999
  %206 = getelementptr inbounds double, ptr @bip2_data, i64 %202, !dbg !999
  %207 = load double, ptr %206, align 8, !dbg !999, !tbaa !366
  %handler_result115 = call double @fAddHandlerDouble(double %handler_result114, double %207), !dbg !998
  call void @llvm.dbg.value(metadata double %handler_result115, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %203, metadata !282, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %202, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !989
  call void @llvm.dbg.value(metadata i64 %202, metadata !280, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result115, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %203, metadata !282, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result115, metadata !286, metadata !DIExpression()), !dbg !997
  %208 = fmul double %181, %handler_result115, !dbg !998
  %handler_result116 = call double @fSubHandlerDouble(double %208, double %203), !dbg !999
  %209 = getelementptr double, ptr getelementptr (double, ptr @bip2_data, i64 -1), i64 %202, !dbg !999
  %210 = load double, ptr %209, align 8, !dbg !999, !tbaa !366
  %handler_result117 = call double @fAddHandlerDouble(double %handler_result116, double %210), !dbg !998
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result115, metadata !282, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %202, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !989
  call void @llvm.dbg.value(metadata i64 %202, metadata !280, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result115, metadata !282, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !286, metadata !DIExpression()), !dbg !997
  %211 = fmul double %181, %handler_result117, !dbg !998
  %handler_result118 = call double @fSubHandlerDouble(double %211, double %handler_result115), !dbg !999
  %212 = getelementptr double, ptr getelementptr (double, ptr @bip2_data, i64 -2), i64 %202, !dbg !999
  %213 = load double, ptr %212, align 8, !dbg !999, !tbaa !366
  %handler_result119 = call double @fAddHandlerDouble(double %handler_result118, double %213), !dbg !1000
  call void @llvm.dbg.value(metadata double %handler_result119, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !282, metadata !DIExpression()), !dbg !989
  %214 = add nsw i64 %202, -3, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %214, metadata !280, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %214, metadata !280, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result119, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !282, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result119, metadata !286, metadata !DIExpression()), !dbg !997
  %215 = fmul double %181, %handler_result119, !dbg !998
  %handler_result120 = call double @fSubHandlerDouble(double %215, double %handler_result117), !dbg !999
  %216 = getelementptr inbounds double, ptr @bip2_data, i64 %214, !dbg !999
  %217 = load double, ptr %216, align 8, !dbg !999, !tbaa !366
  %handler_result121 = call double @fAddHandlerDouble(double %handler_result120, double %217), !dbg !1000
  call void @llvm.dbg.value(metadata double %handler_result121, metadata !281, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata double %handler_result119, metadata !282, metadata !DIExpression()), !dbg !989
  %218 = add nsw i64 %202, -4, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %218, metadata !280, metadata !DIExpression()), !dbg !989
  %219 = icmp ugt i64 %214, 1, !dbg !1002
  br i1 %219, label %201, label %220, !dbg !996, !llvm.loop !1003

220:                                              ; preds = %201
  %221 = fmul double %180, %handler_result121, !dbg !1005
  %handler_result122 = call double @fSubHandlerDouble(double %221, double %handler_result119), !dbg !1006
  %handler_result123 = call double @fAddHandlerDouble(double %handler_result122, double 0xBFB0FC379289999E), !dbg !1007
  tail call void @llvm.dbg.value(metadata double %handler_result123, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !985
  %222 = tail call double @llvm.fabs.f64(double %handler_result123), !dbg !1007
  %223 = fmul double %222, 0x3CB0000000000000, !dbg !1008
  %224 = zext nneg i32 %182 to i64, !dbg !1009
  %225 = getelementptr inbounds double, ptr @bip2_data, i64 %224, !dbg !1009
  %226 = load double, ptr %225, align 16, !dbg !1009, !tbaa !366
  %227 = tail call double @llvm.fabs.f64(double %226), !dbg !1010
  %handler_result124 = call double @fAddHandlerDouble(double %227, double %223), !dbg !1011
  tail call void @llvm.dbg.value(metadata double %handler_result124, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !985
  %handler_result125 = call double @fAddHandlerDouble(double %handler_result123, double 6.250000e-01), !dbg !1012
  %228 = fmul double %123, %handler_result125, !dbg !1012
  store double %228, ptr %2, align 8, !dbg !1013, !tbaa !244
  %229 = fmul double %123, %handler_result124, !dbg !1014
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1015
  %231 = tail call double @llvm.fabs.f64(double %228), !dbg !1016
  %232 = fmul double %231, 0x3CB0000000000000, !dbg !1017
  %handler_result126 = call double @fAddHandlerDouble(double %229, double %232), !dbg !1018
  store double %handler_result126, ptr %230, align 8, !dbg !1018, !tbaa !253
  br label %233

233:                                              ; preds = %220, %164, %72, %60, %25, %7
  %234 = phi i32 [ %8, %7 ], [ 0, %72 ], [ 0, %164 ], [ 0, %220 ], [ 0, %60 ], [ 0, %25 ], !dbg !1019
  ret i32 %234, !dbg !1020
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1021 double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Bi_deriv_e(double noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1022 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1050
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1027, metadata !DIExpression(), metadata !1050, metadata ptr %4, metadata !DIExpression()), !dbg !1051
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1052
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1030, metadata !DIExpression(), metadata !1052, metadata ptr %5, metadata !DIExpression()), !dbg !1051
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1053
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1044, metadata !DIExpression(), metadata !1053, metadata ptr %6, metadata !DIExpression()), !dbg !1054
  tail call void @llvm.dbg.value(metadata double %0, metadata !1024, metadata !DIExpression()), !dbg !1055
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1025, metadata !DIExpression()), !dbg !1055
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1026, metadata !DIExpression()), !dbg !1055
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !1056
  br i1 %7, label %8, label %24, !dbg !1057

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1058
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1059
  %9 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !1060, !range !242
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1031, metadata !DIExpression()), !dbg !1051
  %10 = load double, ptr %5, align 8, !dbg !1061, !tbaa !244
  %handler_result91 = call double @callHandler(i32 1, double %10, double %10), !dbg !1062
  tail call void @llvm.dbg.value(metadata double %handler_result91, metadata !1032, metadata !DIExpression()), !dbg !1051
  %11 = load double, ptr %4, align 8, !dbg !1062, !tbaa !244
  %12 = fmul double %handler_result91, %11, !dbg !1063
  store double %12, ptr %2, align 8, !dbg !1064, !tbaa !244
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1065
  %14 = load double, ptr %13, align 8, !dbg !1065, !tbaa !253
  %15 = fmul double %12, %14, !dbg !1066
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !1067
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1068
  %18 = load double, ptr %17, align 8, !dbg !1068, !tbaa !253
  %19 = fmul double %handler_result91, %18, !dbg !1069
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !1070
  %handler_result = call double @fAddHandlerDouble(double %16, double %20), !dbg !1071
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1071
  %22 = tail call double @llvm.fabs.f64(double %12), !dbg !1072
  %23 = fmul double %22, 0x3CB0000000000000, !dbg !1073
  %handler_result1 = call double @fAddHandlerDouble(double %23, double %handler_result), !dbg !1074
  store double %handler_result1, ptr %21, align 8, !dbg !1074, !tbaa !253
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1075
  br label %121

24:                                               ; preds = %3
  %25 = fcmp olt double %0, 1.000000e+00, !dbg !1076
  br i1 %25, label %26, label %60, !dbg !1077

26:                                               ; preds = %24
  %27 = fmul double %0, %0, !dbg !1078
  tail call void @llvm.dbg.value(metadata double poison, metadata !1033, metadata !DIExpression()), !dbg !1079
  tail call void @llvm.dbg.value(metadata double %27, metadata !1036, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 7, metadata !285, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 7, metadata !280, metadata !DIExpression()), !dbg !1080
  tail call void @llvm.dbg.value(metadata double poison, metadata !1033, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !1080
  tail call void @llvm.dbg.value(metadata double poison, metadata !1037, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1079
  tail call void @llvm.dbg.value(metadata double poison, metadata !1037, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1079
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i32 8, metadata !285, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32 8, metadata !280, metadata !DIExpression()), !dbg !1085
  %28 = fmul double %27, %0, !dbg !1089
  tail call void @llvm.dbg.value(metadata double %28, metadata !1033, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %28, metadata !277, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double %28, metadata !277, metadata !DIExpression()), !dbg !1085
  %29 = fmul double %28, 2.000000e+00, !dbg !1090
  %handler_result2 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !1091
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !1092
  %30 = fmul double %handler_result3, 5.000000e-01, !dbg !1092
  call void @llvm.dbg.value(metadata double %30, metadata !283, metadata !DIExpression()), !dbg !1085
  %31 = fmul double %30, 2.000000e+00, !dbg !1093
  call void @llvm.dbg.value(metadata double %31, metadata !284, metadata !DIExpression()), !dbg !1085
  %handler_result4 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !1094
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !1095
  %32 = fmul double %handler_result5, 5.000000e-01, !dbg !1095
  call void @llvm.dbg.value(metadata double %32, metadata !283, metadata !DIExpression()), !dbg !1080
  %33 = fmul double %32, 2.000000e+00, !dbg !1096
  call void @llvm.dbg.value(metadata double %33, metadata !284, metadata !DIExpression()), !dbg !1080
  %34 = fmul double %33, 0.000000e+00, !dbg !1097
  %handler_result6 = call double @fAddHandlerDouble(double %34, double 0x3C64C0A98C0C8C21), !dbg !1097
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !282, metadata !DIExpression()), !dbg !1080
  %35 = fmul double %33, %handler_result6, !dbg !1097
  %handler_result7 = call double @fAddHandlerDouble(double %35, double 8.740300e-15), !dbg !1097
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !282, metadata !DIExpression()), !dbg !1080
  %36 = fmul double %33, %handler_result7, !dbg !1097
  %handler_result8 = call double @fSubHandlerDouble(double %36, double %handler_result6), !dbg !1098
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D9BAD557CF40EE1), !dbg !1097
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !282, metadata !DIExpression()), !dbg !1080
  %37 = fmul double %33, %handler_result9, !dbg !1097
  %handler_result10 = call double @fSubHandlerDouble(double %37, double %handler_result7), !dbg !1098
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3E2B91B37BF883E9), !dbg !1097
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !282, metadata !DIExpression()), !dbg !1080
  %38 = fmul double %33, %handler_result11, !dbg !1097
  %handler_result12 = call double @fSubHandlerDouble(double %38, double %handler_result9), !dbg !1098
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3EB217AD02495704), !dbg !1097
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !282, metadata !DIExpression()), !dbg !1080
  %39 = fmul double %33, %handler_result13, !dbg !1097
  %handler_result14 = call double @fSubHandlerDouble(double %39, double %handler_result11), !dbg !1098
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3F2BFCD86210EF79), !dbg !1097
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !281, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !282, metadata !DIExpression()), !dbg !1080
  %40 = fmul double %33, %handler_result15, !dbg !1097
  %handler_result16 = call double @fSubHandlerDouble(double %40, double %handler_result13), !dbg !1098
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F94FE28B0252EE1), !dbg !1099
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !281, metadata !DIExpression()), !dbg !1080
  %41 = fmul double %32, %handler_result17, !dbg !1099
  %handler_result18 = call double @fSubHandlerDouble(double %41, double %handler_result15), !dbg !1100
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FAD87D1972257AB), !dbg !1101
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !1037, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1079
  %42 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !1101
  %43 = fmul double %42, 0x3CB0000000000000, !dbg !1102
  %handler_result20 = call double @fAddHandlerDouble(double %43, double 0x3C64C0A98C0C8C21), !dbg !1103
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1037, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1079
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !1104
  %44 = fmul double %31, 0.000000e+00, !dbg !1103
  %handler_result21 = call double @fAddHandlerDouble(double %44, double 5.440000e-19), !dbg !1103
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !286, metadata !DIExpression()), !dbg !1104
  %45 = fmul double %31, %handler_result21, !dbg !1103
  %handler_result22 = call double @fAddHandlerDouble(double %45, double 5.742830e-16), !dbg !1103
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !286, metadata !DIExpression()), !dbg !1104
  %46 = fmul double %31, %handler_result22, !dbg !1103
  %handler_result23 = call double @fSubHandlerDouble(double %46, double %handler_result21), !dbg !1105
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3D601FD00DA5423B), !dbg !1103
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !286, metadata !DIExpression()), !dbg !1104
  %47 = fmul double %31, %handler_result24, !dbg !1103
  %handler_result25 = call double @fSubHandlerDouble(double %47, double %handler_result22), !dbg !1105
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3DF223D0E0BFAC63), !dbg !1103
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !286, metadata !DIExpression()), !dbg !1104
  %48 = fmul double %31, %handler_result26, !dbg !1103
  %handler_result27 = call double @fSubHandlerDouble(double %48, double %handler_result24), !dbg !1105
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3E7BA2A50116C6B9), !dbg !1103
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !286, metadata !DIExpression()), !dbg !1104
  %49 = fmul double %31, %handler_result28, !dbg !1103
  %handler_result29 = call double @fSubHandlerDouble(double %49, double %handler_result26), !dbg !1105
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EF9E8A80A88240B), !dbg !1103
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !286, metadata !DIExpression()), !dbg !1104
  %50 = fmul double %31, %handler_result30, !dbg !1103
  %handler_result31 = call double @fSubHandlerDouble(double %50, double %handler_result28), !dbg !1105
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F69818936D0805E), !dbg !1103
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !286, metadata !DIExpression()), !dbg !1104
  %51 = fmul double %31, %handler_result32, !dbg !1103
  %handler_result33 = call double @fSubHandlerDouble(double %51, double %handler_result30), !dbg !1105
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3FC322EEE696951C), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !281, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !282, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !1085
  %52 = fmul double %30, %handler_result34, !dbg !1106
  %handler_result35 = call double @fSubHandlerDouble(double %52, double %handler_result32), !dbg !1107
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0xBFA8E1DDACE0511C), !dbg !1108
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !1038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1079
  %53 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !1108
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !1109
  %handler_result37 = call double @fAddHandlerDouble(double %54, double 5.440000e-19), !dbg !1110
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !1038, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1079
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result19, double 2.500000e-01), !dbg !1111
  %55 = fmul double %27, %handler_result38, !dbg !1111
  %handler_result39 = call double @fAddHandlerDouble(double %55, double %handler_result36), !dbg !1112
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 5.000000e-01), !dbg !1113
  store double %handler_result40, ptr %2, align 8, !dbg !1113, !tbaa !244
  %56 = fmul double %27, %handler_result20, !dbg !1114
  %handler_result41 = call double @fAddHandlerDouble(double %56, double %handler_result37), !dbg !1115
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1115
  %58 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !1116
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !1117
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %59), !dbg !1118
  store double %handler_result42, ptr %57, align 8, !dbg !1118, !tbaa !253
  br label %121

60:                                               ; preds = %24
  %61 = fcmp olt double %0, 2.000000e+00, !dbg !1119
  br i1 %61, label %62, label %102, !dbg !1120

62:                                               ; preds = %60
  tail call void @llvm.dbg.value(metadata double poison, metadata !1039, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i32 9, metadata !285, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i32 9, metadata !280, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata double poison, metadata !1039, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 9, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double poison, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double poison, metadata !282, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata double poison, metadata !1042, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1121
  tail call void @llvm.dbg.value(metadata double poison, metadata !1042, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1121
  call void @llvm.dbg.value(metadata !268, metadata !269, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !277, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i32 9, metadata !285, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 9, metadata !280, metadata !DIExpression()), !dbg !1127
  %63 = fmul double %0, 2.000000e+00, !dbg !1131
  %64 = fmul double %63, %0, !dbg !1132
  %65 = fmul double %64, %0, !dbg !1133
  %handler_result43 = call double @fAddHandlerDouble(double %65, double -9.000000e+00), !dbg !1134
  %66 = fdiv double %handler_result43, 7.000000e+00, !dbg !1134
  tail call void @llvm.dbg.value(metadata double %66, metadata !1039, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %66, metadata !277, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %66, metadata !277, metadata !DIExpression()), !dbg !1127
  %67 = fmul double %66, 2.000000e+00, !dbg !1135
  %handler_result44 = call double @fAddHandlerDouble(double %67, double 1.000000e+00), !dbg !1136
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double -1.000000e+00), !dbg !1137
  %68 = fmul double %handler_result45, 5.000000e-01, !dbg !1137
  call void @llvm.dbg.value(metadata double %68, metadata !283, metadata !DIExpression()), !dbg !1127
  %69 = fmul double %68, 2.000000e+00, !dbg !1138
  call void @llvm.dbg.value(metadata double %69, metadata !284, metadata !DIExpression()), !dbg !1127
  %handler_result46 = call double @fAddHandlerDouble(double %67, double 1.000000e+00), !dbg !1139
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double -1.000000e+00), !dbg !1140
  %70 = fmul double %handler_result47, 5.000000e-01, !dbg !1140
  call void @llvm.dbg.value(metadata double %70, metadata !283, metadata !DIExpression()), !dbg !1122
  %71 = fmul double %70, 2.000000e+00, !dbg !1141
  call void @llvm.dbg.value(metadata double %71, metadata !284, metadata !DIExpression()), !dbg !1122
  %72 = fmul double %71, 0.000000e+00, !dbg !1142
  %handler_result48 = call double @fAddHandlerDouble(double %72, double 3.820000e-19), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !282, metadata !DIExpression()), !dbg !1122
  %73 = fmul double %71, %handler_result48, !dbg !1142
  %handler_result49 = call double @fAddHandlerDouble(double %73, double 1.719110e-16), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !282, metadata !DIExpression()), !dbg !1122
  %74 = fmul double %71, %handler_result49, !dbg !1142
  %handler_result50 = call double @fSubHandlerDouble(double %74, double %handler_result48), !dbg !1143
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0x3D315B532C1052B5), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !282, metadata !DIExpression()), !dbg !1122
  %75 = fmul double %71, %handler_result51, !dbg !1142
  %handler_result52 = call double @fSubHandlerDouble(double %75, double %handler_result49), !dbg !1143
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double 0x3DB2DA69C400FB0F), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !282, metadata !DIExpression()), !dbg !1122
  %76 = fmul double %71, %handler_result53, !dbg !1142
  %handler_result54 = call double @fSubHandlerDouble(double %76, double %handler_result51), !dbg !1143
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 0x3E2E985FC5232C55), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !282, metadata !DIExpression()), !dbg !1122
  %77 = fmul double %71, %handler_result55, !dbg !1142
  %handler_result56 = call double @fSubHandlerDouble(double %77, double %handler_result53), !dbg !1143
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result56, double 0x3EA1A4EEF043E8FC), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !282, metadata !DIExpression()), !dbg !1122
  %78 = fmul double %71, %handler_result57, !dbg !1142
  %handler_result58 = call double @fSubHandlerDouble(double %78, double %handler_result55), !dbg !1143
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result58, double 0x3F0AF6E37FAD4768), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !282, metadata !DIExpression()), !dbg !1122
  %79 = fmul double %71, %handler_result59, !dbg !1142
  %handler_result60 = call double @fSubHandlerDouble(double %79, double %handler_result57), !dbg !1143
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double 0x3F6886ED3AA0192F), !dbg !1142
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !281, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !286, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !282, metadata !DIExpression()), !dbg !1122
  %80 = fmul double %71, %handler_result61, !dbg !1142
  %handler_result62 = call double @fSubHandlerDouble(double %80, double %handler_result59), !dbg !1143
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result62, double 0x3FB6179E07F5ABF0), !dbg !1144
  call void @llvm.dbg.value(metadata double %handler_result63, metadata !281, metadata !DIExpression()), !dbg !1122
  %81 = fmul double %70, %handler_result63, !dbg !1144
  %handler_result64 = call double @fSubHandlerDouble(double %81, double %handler_result61), !dbg !1145
  %handler_result65 = call double @fAddHandlerDouble(double %handler_result64, double 0x3FC4B420204D6CA7), !dbg !1146
  tail call void @llvm.dbg.value(metadata double %handler_result65, metadata !1042, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1121
  %82 = tail call double @llvm.fabs.f64(double %handler_result65), !dbg !1146
  %83 = fmul double %82, 0x3CB0000000000000, !dbg !1147
  %handler_result66 = call double @fAddHandlerDouble(double %83, double 3.820000e-19), !dbg !1148
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !1042, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1121
  call void @llvm.dbg.value(metadata i64 9, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !286, metadata !DIExpression()), !dbg !1149
  %84 = fmul double %69, 0.000000e+00, !dbg !1148
  %handler_result67 = call double @fAddHandlerDouble(double %84, double 3.350000e-17), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !286, metadata !DIExpression()), !dbg !1149
  %85 = fmul double %69, %handler_result67, !dbg !1148
  %handler_result68 = call double @fAddHandlerDouble(double %85, double 1.300170e-14), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 7, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !286, metadata !DIExpression()), !dbg !1149
  %86 = fmul double %69, %handler_result68, !dbg !1148
  %handler_result69 = call double @fSubHandlerDouble(double %86, double %handler_result67), !dbg !1150
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 0x3D9164B320CC30DC), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 6, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !286, metadata !DIExpression()), !dbg !1149
  %87 = fmul double %69, %handler_result70, !dbg !1148
  %handler_result71 = call double @fSubHandlerDouble(double %87, double %handler_result68), !dbg !1150
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double 0x3E0F505F53BAE897), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 5, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !286, metadata !DIExpression()), !dbg !1149
  %88 = fmul double %69, %handler_result72, !dbg !1148
  %handler_result73 = call double @fSubHandlerDouble(double %88, double %handler_result70), !dbg !1150
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3E846D36D9B9968B), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 4, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !286, metadata !DIExpression()), !dbg !1149
  %89 = fmul double %69, %handler_result74, !dbg !1148
  %handler_result75 = call double @fSubHandlerDouble(double %89, double %handler_result72), !dbg !1150
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0x3EF229E75A591D73), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 3, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !286, metadata !DIExpression()), !dbg !1149
  %90 = fmul double %69, %handler_result76, !dbg !1148
  %handler_result77 = call double @fSubHandlerDouble(double %90, double %handler_result74), !dbg !1150
  %handler_result78 = call double @fAddHandlerDouble(double %handler_result77, double 0x3F542075C674FDA9), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 2, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !286, metadata !DIExpression()), !dbg !1149
  %91 = fmul double %69, %handler_result78, !dbg !1148
  %handler_result79 = call double @fSubHandlerDouble(double %91, double %handler_result76), !dbg !1150
  %handler_result80 = call double @fAddHandlerDouble(double %handler_result79, double 0x3FA81233D561FD01), !dbg !1148
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 1, metadata !280, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !286, metadata !DIExpression()), !dbg !1149
  %92 = fmul double %69, %handler_result80, !dbg !1148
  %handler_result81 = call double @fSubHandlerDouble(double %92, double %handler_result78), !dbg !1150
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double 0x3FE7D64B26D45FE0), !dbg !1151
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !281, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !282, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !1127
  %93 = fmul double %68, %handler_result82, !dbg !1151
  %handler_result83 = call double @fSubHandlerDouble(double %93, double %handler_result80), !dbg !1152
  %handler_result84 = call double @fAddHandlerDouble(double %handler_result83, double 0x3FE9B36792931206), !dbg !1153
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !1043, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1121
  %94 = tail call double @llvm.fabs.f64(double %handler_result84), !dbg !1153
  %95 = fmul double %94, 0x3CB0000000000000, !dbg !1154
  %handler_result85 = call double @fAddHandlerDouble(double %95, double 3.350000e-17), !dbg !1155
  tail call void @llvm.dbg.value(metadata double %handler_result85, metadata !1043, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1121
  %96 = fmul double %0, %0, !dbg !1155
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result65, double 2.500000e-01), !dbg !1156
  %97 = fmul double %96, %handler_result86, !dbg !1156
  %handler_result87 = call double @fAddHandlerDouble(double %97, double %handler_result84), !dbg !1157
  %handler_result88 = call double @fAddHandlerDouble(double %handler_result87, double 5.000000e-01), !dbg !1158
  store double %handler_result88, ptr %2, align 8, !dbg !1158, !tbaa !244
  %98 = fmul double %96, %handler_result66, !dbg !1159
  %handler_result89 = call double @fAddHandlerDouble(double %98, double %handler_result85), !dbg !1160
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1160
  %100 = tail call double @llvm.fabs.f64(double %handler_result88), !dbg !1161
  %101 = fmul double %100, 0x3CB0000000000000, !dbg !1162
  %handler_result90 = call double @fAddHandlerDouble(double %handler_result89, double %101), !dbg !1163
  store double %handler_result90, ptr %99, align 8, !dbg !1163, !tbaa !253
  br label %121

102:                                              ; preds = %60
  %103 = fcmp olt double %0, 0x6A9965FEA53D6D85, !dbg !1164
  br i1 %103, label %104, label %119, !dbg !1165

104:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !1166
  %105 = tail call double @sqrt(double noundef %0) #6, !dbg !1167
  %106 = fmul double %105, %0, !dbg !1168
  %107 = fdiv double %106, 3.000000e+00, !dbg !1169
  %108 = fmul double %107, 2.000000e+00, !dbg !1170
  tail call void @llvm.dbg.value(metadata double %108, metadata !1047, metadata !DIExpression()), !dbg !1054
  %109 = call i32 @gsl_sf_airy_Bi_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %6), !dbg !1171, !range !242
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !1048, metadata !DIExpression()), !dbg !1054
  %110 = fmul double %108, 0x3CB0000000000000, !dbg !1172
  %111 = tail call double @llvm.fabs.f64(double %110), !dbg !1173
  %112 = fmul double %111, 1.500000e+00, !dbg !1174
  %113 = load double, ptr %6, align 8, !dbg !1175, !tbaa !244
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1176
  %115 = load double, ptr %114, align 8, !dbg !1176, !tbaa !253
  %116 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %108, double noundef %112, double noundef %113, double noundef %115, ptr noundef %2) #6, !dbg !1177
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1049, metadata !DIExpression()), !dbg !1054
  %117 = icmp eq i32 %116, 0, !dbg !1178
  %118 = select i1 %117, i32 %109, i32 %116, !dbg !1178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !1179
  br label %121

119:                                              ; preds = %102
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1180, !tbaa !244
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1180
  store double 0x7FF0000000000000, ptr %120, align 8, !dbg !1180, !tbaa !253
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 860, i32 noundef 16) #6, !dbg !1183
  br label %121, !dbg !1183

121:                                              ; preds = %119, %104, %62, %26, %8
  %122 = phi i32 [ %9, %8 ], [ 0, %26 ], [ 0, %62 ], [ %118, %104 ], [ 16, %119 ], !dbg !1185
  ret i32 %122, !dbg !1186
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai_deriv_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1187 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1195
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1193, metadata !DIExpression(), metadata !1195, metadata ptr %3, metadata !DIExpression()), !dbg !1196
  tail call void @llvm.dbg.value(metadata double %0, metadata !1191, metadata !DIExpression()), !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1192, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1197
  %4 = call i32 @gsl_sf_airy_Ai_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1197, !range !242
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1194, metadata !DIExpression()), !dbg !1196
  %5 = icmp eq i32 %4, 0, !dbg !1198
  br i1 %5, label %7, label %6, !dbg !1197

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 870, i32 noundef 1) #6, !dbg !1200
  br label %7, !dbg !1200

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1197, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1203
  ret double %8, !dbg !1203
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai_deriv(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1204 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1210
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1208, metadata !DIExpression(), metadata !1210, metadata ptr %3, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata double %0, metadata !1206, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1207, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1212
  %4 = call i32 @gsl_sf_airy_Ai_deriv_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1209, metadata !DIExpression()), !dbg !1211
  %5 = icmp eq i32 %4, 0, !dbg !1213
  br i1 %5, label %7, label %6, !dbg !1212

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 875, i32 noundef %4) #6, !dbg !1215
  br label %7, !dbg !1215

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1212, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1218
  ret double %8, !dbg !1218
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi_deriv_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1219 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1223, metadata !DIExpression(), metadata !1225, metadata ptr %3, metadata !DIExpression()), !dbg !1226
  tail call void @llvm.dbg.value(metadata double %0, metadata !1221, metadata !DIExpression()), !dbg !1226
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1222, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1227
  %4 = call i32 @gsl_sf_airy_Bi_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1227, !range !242
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1224, metadata !DIExpression()), !dbg !1226
  %5 = icmp eq i32 %4, 0, !dbg !1228
  br i1 %5, label %7, label %6, !dbg !1227

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 880, i32 noundef 1) #6, !dbg !1230
  br label %7, !dbg !1230

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1227, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1233
  ret double %8, !dbg !1233
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi_deriv(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1234 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1238, metadata !DIExpression(), metadata !1240, metadata ptr %3, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata double %0, metadata !1236, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1237, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1242
  %4 = call i32 @gsl_sf_airy_Bi_deriv_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1239, metadata !DIExpression()), !dbg !1241
  %5 = icmp eq i32 %4, 0, !dbg !1243
  br i1 %5, label %7, label %6, !dbg !1242

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 885, i32 noundef %4) #6, !dbg !1245
  br label %7, !dbg !1245

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1242, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1248
  ret double %8, !dbg !1248
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 732, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "airy_der.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "48cffb679b3faafc5adf2dbe8599db3b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 732, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 870, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 48)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 875, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 41)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 880, type: !19, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 885, type: !24, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 616, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 22)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "an20_data", scope: !38, file: !2, line: 442, type: !179, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !79, globals: !81, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 39, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!44 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!45 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!46 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!47 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!48 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!49 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!50 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!51 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!52 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!53 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!54 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!55 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!56 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!57 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!58 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!59 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!60 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!61 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!62 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!63 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!64 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!65 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!66 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!67 = !DIEnumerator(name: "GSL_ESING", value: 21)
!68 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!69 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!70 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!71 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!72 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!73 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!74 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!75 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!76 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!77 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!78 = !DIEnumerator(name: "GSL_EOF", value: 32)
!79 = !{!80}
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!0, !7, !12, !17, !22, !27, !29, !31, !82, !36, !95, !97, !102, !104, !109, !111, !114, !116, !121, !123, !128, !130, !135, !137, !140, !142, !147, !149, !151, !153, !155, !157, !159, !161, !164, !166, !168, !170, !172, !174}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "an20_cs", scope: !38, file: !2, line: 460, type: !84, isLocal: true, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !85, line: 29, baseType: !86)
!85 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !85, line: 22, size: 320, elements: !87)
!87 = !{!88, !91, !92, !93, !94}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !86, file: !85, line: 23, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !86, file: !85, line: 24, baseType: !42, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !86, file: !85, line: 25, baseType: !90, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !86, file: !85, line: 26, baseType: !90, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !86, file: !85, line: 27, baseType: !42, size: 32, offset: 256)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "aph0_cs", scope: !38, file: !2, line: 577, type: !84, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "aph0_data", scope: !38, file: !2, line: 560, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 960, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 15)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "an21_cs", scope: !38, file: !2, line: 428, type: !84, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "an21_data", scope: !38, file: !2, line: 402, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1536, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 24)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "aph1_cs", scope: !38, file: !2, line: 546, type: !84, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "aph1_data", scope: !38, file: !2, line: 522, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1408, elements: !34)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "an22_cs", scope: !38, file: !2, line: 388, type: !84, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "an22_data", scope: !38, file: !2, line: 353, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2112, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 33)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "aph2_cs", scope: !38, file: !2, line: 508, type: !84, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "aph2_data", scope: !38, file: !2, line: 474, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2048, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 32)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "aif_cs", scope: !38, file: !2, line: 55, type: !84, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "aif_data", scope: !38, file: !2, line: 45, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 512, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 8)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "aig_cs", scope: !38, file: !2, line: 80, type: !84, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "aig_data", scope: !38, file: !2, line: 69, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 576, elements: !15)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "aip1_cs", scope: !38, file: !2, line: 152, type: !84, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "aip1_data", scope: !38, file: !2, line: 125, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1600, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 25)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "aip2_cs", scope: !38, file: !2, line: 111, type: !84, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "aip2_data", scope: !38, file: !2, line: 94, type: !99, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "bif_cs", scope: !38, file: !2, line: 177, type: !84, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "bif_data", scope: !38, file: !2, line: 167, type: !132, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "big_cs", scope: !38, file: !2, line: 202, type: !84, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "big_data", scope: !38, file: !2, line: 191, type: !139, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "bif2_cs", scope: !38, file: !2, line: 228, type: !84, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "bif2_data", scope: !38, file: !2, line: 216, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 640, elements: !5)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "big2_cs", scope: !38, file: !2, line: 254, type: !84, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "big2_data", scope: !38, file: !2, line: 242, type: !163, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "bip1_cs", scope: !38, file: !2, line: 339, type: !84, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "bip1_data", scope: !38, file: !2, line: 313, type: !106, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "bip2_cs", scope: !38, file: !2, line: 299, type: !84, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "bip2_data", scope: !38, file: !2, line: 268, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1856, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 29)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1024, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 16)
!182 = !{i32 7, !"Dwarf Version", i32 5}
!183 = !{i32 2, !"Debug Info Version", i32 3}
!184 = !{i32 1, !"wchar_size", i32 4}
!185 = !{i32 8, !"PIC Level", i32 2}
!186 = !{i32 7, !"PIE Level", i32 2}
!187 = !{i32 7, !"uwtable", i32 2}
!188 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!189 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!190 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_scaled_e", scope: !2, file: !2, line: 636, type: !191, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !203)
!191 = !DISubroutineType(types: !192)
!192 = !{!42, !193, !194, !196}
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !195, line: 50, baseType: !80)
!195 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !198, line: 41, baseType: !199)
!198 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !198, line: 37, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !198, line: 38, baseType: !90, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !199, file: !198, line: 39, baseType: !90, size: 64, offset: 64)
!203 = !{!204, !205, !206, !207, !210, !211, !212, !213, !216, !217, !218, !219, !222, !225, !226, !227, !228, !230, !231, !232}
!204 = !DILocalVariable(name: "x", arg: 1, scope: !190, file: !2, line: 636, type: !193)
!205 = !DILocalVariable(name: "mode", arg: 2, scope: !190, file: !2, line: 636, type: !194)
!206 = !DILocalVariable(name: "result", arg: 3, scope: !190, file: !2, line: 636, type: !196)
!207 = !DILocalVariable(name: "a", scope: !208, file: !2, line: 641, type: !197)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 640, column: 16)
!209 = distinct !DILexicalBlock(scope: !190, file: !2, line: 640, column: 6)
!210 = !DILocalVariable(name: "p", scope: !208, file: !2, line: 642, type: !197)
!211 = !DILocalVariable(name: "status_ap", scope: !208, file: !2, line: 643, type: !42)
!212 = !DILocalVariable(name: "c", scope: !208, file: !2, line: 644, type: !90)
!213 = !DILocalVariable(name: "x3", scope: !214, file: !2, line: 651, type: !193)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 650, column: 21)
!215 = distinct !DILexicalBlock(scope: !209, file: !2, line: 650, column: 11)
!216 = !DILocalVariable(name: "x2", scope: !214, file: !2, line: 652, type: !193)
!217 = !DILocalVariable(name: "result_c0", scope: !214, file: !2, line: 653, type: !197)
!218 = !DILocalVariable(name: "result_c1", scope: !214, file: !2, line: 654, type: !197)
!219 = !DILocalVariable(name: "s", scope: !220, file: !2, line: 664, type: !90)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 662, column: 57)
!221 = distinct !DILexicalBlock(scope: !214, file: !2, line: 662, column: 8)
!222 = !DILocalVariable(name: "sqrtx", scope: !223, file: !2, line: 672, type: !193)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 671, column: 21)
!224 = distinct !DILexicalBlock(scope: !215, file: !2, line: 671, column: 11)
!225 = !DILocalVariable(name: "z", scope: !223, file: !2, line: 673, type: !193)
!226 = !DILocalVariable(name: "s", scope: !223, file: !2, line: 674, type: !193)
!227 = !DILocalVariable(name: "result_c0", scope: !223, file: !2, line: 675, type: !197)
!228 = !DILocalVariable(name: "sqrtx", scope: !229, file: !2, line: 683, type: !193)
!229 = distinct !DILexicalBlock(scope: !224, file: !2, line: 682, column: 8)
!230 = !DILocalVariable(name: "z", scope: !229, file: !2, line: 684, type: !193)
!231 = !DILocalVariable(name: "s", scope: !229, file: !2, line: 685, type: !193)
!232 = !DILocalVariable(name: "result_c0", scope: !229, file: !2, line: 686, type: !197)
!233 = distinct !DIAssignID()
!234 = !DILocation(line: 0, scope: !208)
!235 = distinct !DIAssignID()
!236 = !DILocation(line: 0, scope: !190)
!237 = !DILocation(line: 640, column: 8, scope: !209)
!238 = !DILocation(line: 640, column: 6, scope: !190)
!239 = !DILocation(line: 641, column: 5, scope: !208)
!240 = !DILocation(line: 642, column: 5, scope: !208)
!241 = !DILocation(line: 643, column: 21, scope: !208)
!242 = !{i32 0, i32 2}
!243 = !DILocation(line: 644, column: 25, scope: !208)
!244 = !{!245, !246, i64 0}
!245 = !{!"gsl_sf_result_struct", !246, i64 0, !246, i64 8}
!246 = !{!"double", !247, i64 0}
!247 = !{!"omnipotent char", !248, i64 0}
!248 = !{!"Simple C/C++ TBAA"}
!249 = !DILocation(line: 645, column: 22, scope: !208)
!250 = !DILocation(line: 645, column: 26, scope: !208)
!251 = !DILocation(line: 645, column: 18, scope: !208)
!252 = !DILocation(line: 646, column: 41, scope: !208)
!253 = !{!245, !246, i64 8}
!254 = !DILocation(line: 646, column: 37, scope: !208)
!255 = !DILocation(line: 646, column: 20, scope: !208)
!256 = !DILocation(line: 646, column: 59, scope: !208)
!257 = !DILocation(line: 646, column: 55, scope: !208)
!258 = !DILocation(line: 646, column: 48, scope: !208)
!259 = !DILocation(line: 646, column: 13, scope: !208)
!260 = !DILocation(line: 647, column: 38, scope: !208)
!261 = !DILocation(line: 647, column: 36, scope: !208)
!262 = !DILocation(line: 647, column: 17, scope: !208)
!263 = !DILocation(line: 649, column: 3, scope: !209)
!264 = !DILocation(line: 650, column: 13, scope: !215)
!265 = !DILocation(line: 650, column: 11, scope: !209)
!266 = !DILocation(line: 651, column: 24, scope: !214)
!267 = !DILocation(line: 0, scope: !214)
!268 = !{}
!269 = !DILocalVariable(name: "cs", arg: 1, scope: !270, file: !271, line: 2, type: !274)
!270 = distinct !DISubprogram(name: "cheb_eval_mode_e", scope: !271, file: !271, line: 2, type: !272, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !276)
!271 = !DIFile(filename: "./cheb_eval_mode.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "1b36305c73b17885740c92e41c9327b0")
!272 = !DISubroutineType(types: !273)
!273 = !{!42, !274, !193, !194, !196}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!276 = !{!269, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!277 = !DILocalVariable(name: "x", arg: 2, scope: !270, file: !271, line: 3, type: !193)
!278 = !DILocalVariable(name: "mode", arg: 3, scope: !270, file: !271, line: 4, type: !194)
!279 = !DILocalVariable(name: "result", arg: 4, scope: !270, file: !271, line: 5, type: !196)
!280 = !DILocalVariable(name: "j", scope: !270, file: !271, line: 7, type: !42)
!281 = !DILocalVariable(name: "d", scope: !270, file: !271, line: 8, type: !90)
!282 = !DILocalVariable(name: "dd", scope: !270, file: !271, line: 9, type: !90)
!283 = !DILocalVariable(name: "y", scope: !270, file: !271, line: 11, type: !90)
!284 = !DILocalVariable(name: "y2", scope: !270, file: !271, line: 12, type: !90)
!285 = !DILocalVariable(name: "eval_order", scope: !270, file: !271, line: 14, type: !42)
!286 = !DILocalVariable(name: "temp", scope: !287, file: !271, line: 22, type: !90)
!287 = distinct !DILexicalBlock(scope: !288, file: !271, line: 21, column: 34)
!288 = distinct !DILexicalBlock(scope: !289, file: !271, line: 21, column: 3)
!289 = distinct !DILexicalBlock(scope: !270, file: !271, line: 21, column: 3)
!290 = !DILocation(line: 0, scope: !270, inlinedAt: !291)
!291 = distinct !DILocation(line: 655, column: 5, scope: !214)
!292 = !DILocalVariable(name: "mt", arg: 1, scope: !293, file: !195, line: 74, type: !194)
!293 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !195, file: !195, line: 74, type: !294, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{!80, !194}
!296 = !{!292}
!297 = !DILocation(line: 0, scope: !293, inlinedAt: !298)
!298 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !291)
!299 = distinct !DILexicalBlock(scope: !270, file: !271, line: 16, column: 6)
!300 = !DILocation(line: 0, scope: !287, inlinedAt: !291)
!301 = !DILocation(line: 0, scope: !270, inlinedAt: !302)
!302 = distinct !DILocation(line: 656, column: 5, scope: !214)
!303 = !DILocation(line: 0, scope: !293, inlinedAt: !304)
!304 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !302)
!305 = !DILocation(line: 651, column: 26, scope: !214)
!306 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !291)
!307 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !302)
!308 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !302)
!309 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !302)
!310 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !291)
!311 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !291)
!312 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !291)
!313 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !291)
!314 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !291)
!315 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !291)
!316 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !291)
!317 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !302)
!318 = !DILocation(line: 0, scope: !287, inlinedAt: !302)
!319 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !302)
!320 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !302)
!321 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !302)
!322 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !302)
!323 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !302)
!324 = !DILocation(line: 658, column: 31, scope: !214)
!325 = !DILocation(line: 658, column: 23, scope: !214)
!326 = !DILocation(line: 658, column: 65, scope: !214)
!327 = !DILocation(line: 658, column: 18, scope: !214)
!328 = !DILocation(line: 659, column: 27, scope: !214)
!329 = !DILocation(line: 659, column: 20, scope: !214)
!330 = !DILocation(line: 659, column: 13, scope: !214)
!331 = !DILocation(line: 660, column: 38, scope: !214)
!332 = !DILocation(line: 660, column: 36, scope: !214)
!333 = !DILocation(line: 660, column: 17, scope: !214)
!334 = !DILocation(line: 662, column: 10, scope: !221)
!335 = !DILocation(line: 662, column: 8, scope: !214)
!336 = !DILocation(line: 664, column: 25, scope: !220)
!337 = !DILocation(line: 664, column: 28, scope: !220)
!338 = !DILocation(line: 664, column: 27, scope: !220)
!339 = !DILocation(line: 664, column: 35, scope: !220)
!340 = !DILocation(line: 664, column: 18, scope: !220)
!341 = !DILocation(line: 0, scope: !220)
!342 = !DILocation(line: 665, column: 19, scope: !220)
!343 = !DILocation(line: 666, column: 19, scope: !220)
!344 = !DILocation(line: 667, column: 5, scope: !220)
!345 = !DILocation(line: 671, column: 13, scope: !224)
!346 = !DILocation(line: 0, scope: !224)
!347 = !DILocation(line: 671, column: 11, scope: !215)
!348 = !DILocation(line: 0, scope: !223)
!349 = !DILocation(line: 673, column: 44, scope: !223)
!350 = !DILocation(line: 674, column: 22, scope: !223)
!351 = !DILocation(line: 0, scope: !270, inlinedAt: !352)
!352 = distinct !DILocation(line: 676, column: 5, scope: !223)
!353 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !352)
!354 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !352)
!355 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !352)
!356 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !352)
!357 = !DILocation(line: 0, scope: !293, inlinedAt: !358)
!358 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !352)
!359 = !DILocation(line: 75, column: 15, scope: !293, inlinedAt: !358)
!360 = !DILocation(line: 16, column: 26, scope: !299, inlinedAt: !352)
!361 = !DILocation(line: 0, scope: !299, inlinedAt: !352)
!362 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !352)
!363 = !DILocation(line: 0, scope: !287, inlinedAt: !352)
!364 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !352)
!365 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !352)
!366 = !{!246, !246, i64 0}
!367 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !352)
!368 = distinct !{!368, !369}
!369 = !{!"llvm.loop.unroll.disable"}
!370 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !352)
!371 = distinct !{!371, !362, !372, !373}
!372 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !352)
!373 = !{!"llvm.loop.mustprogress"}
!374 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !352)
!375 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !352)
!376 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !352)
!377 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !352)
!378 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !352)
!379 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !352)
!380 = !DILocation(line: 677, column: 30, scope: !223)
!381 = !DILocation(line: 677, column: 20, scope: !223)
!382 = !DILocation(line: 677, column: 47, scope: !223)
!383 = !DILocation(line: 677, column: 18, scope: !223)
!384 = !DILocation(line: 678, column: 34, scope: !223)
!385 = !DILocation(line: 678, column: 13, scope: !223)
!386 = !DILocation(line: 679, column: 38, scope: !223)
!387 = !DILocation(line: 679, column: 36, scope: !223)
!388 = !DILocation(line: 679, column: 17, scope: !223)
!389 = !DILocation(line: 0, scope: !229)
!390 = !DILocation(line: 685, column: 22, scope: !229)
!391 = !DILocation(line: 0, scope: !270, inlinedAt: !392)
!392 = distinct !DILocation(line: 687, column: 5, scope: !229)
!393 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !392)
!394 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !392)
!395 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !392)
!396 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !392)
!397 = !DILocation(line: 0, scope: !293, inlinedAt: !398)
!398 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !392)
!399 = !DILocation(line: 75, column: 15, scope: !293, inlinedAt: !398)
!400 = !DILocation(line: 16, column: 26, scope: !299, inlinedAt: !392)
!401 = !DILocation(line: 0, scope: !299, inlinedAt: !392)
!402 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !392)
!403 = !DILocation(line: 0, scope: !287, inlinedAt: !392)
!404 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !392)
!405 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !392)
!406 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !392)
!407 = distinct !{!407, !369}
!408 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !392)
!409 = distinct !{!409, !402, !410, !373}
!410 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !392)
!411 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !392)
!412 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !392)
!413 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !392)
!414 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !392)
!415 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !392)
!416 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !392)
!417 = !DILocation(line: 688, column: 30, scope: !229)
!418 = !DILocation(line: 688, column: 20, scope: !229)
!419 = !DILocation(line: 688, column: 47, scope: !229)
!420 = !DILocation(line: 688, column: 18, scope: !229)
!421 = !DILocation(line: 689, column: 34, scope: !229)
!422 = !DILocation(line: 689, column: 13, scope: !229)
!423 = !DILocation(line: 690, column: 38, scope: !229)
!424 = !DILocation(line: 690, column: 36, scope: !229)
!425 = !DILocation(line: 690, column: 17, scope: !229)
!426 = !DILocation(line: 0, scope: !209)
!427 = !DILocation(line: 693, column: 1, scope: !190)
!428 = distinct !DISubprogram(name: "airy_deriv_mod_phase", scope: !2, file: !2, line: 587, type: !429, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!42, !193, !194, !196, !196}
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !445, !448}
!432 = !DILocalVariable(name: "x", arg: 1, scope: !428, file: !2, line: 587, type: !193)
!433 = !DILocalVariable(name: "mode", arg: 2, scope: !428, file: !2, line: 587, type: !194)
!434 = !DILocalVariable(name: "ampl", arg: 3, scope: !428, file: !2, line: 588, type: !196)
!435 = !DILocalVariable(name: "phi", arg: 4, scope: !428, file: !2, line: 588, type: !196)
!436 = !DILocalVariable(name: "pi34", scope: !428, file: !2, line: 590, type: !193)
!437 = !DILocalVariable(name: "result_a", scope: !428, file: !2, line: 591, type: !197)
!438 = !DILocalVariable(name: "result_p", scope: !428, file: !2, line: 592, type: !197)
!439 = !DILocalVariable(name: "a", scope: !428, file: !2, line: 593, type: !90)
!440 = !DILocalVariable(name: "p", scope: !428, file: !2, line: 593, type: !90)
!441 = !DILocalVariable(name: "sqx", scope: !428, file: !2, line: 594, type: !90)
!442 = !DILocalVariable(name: "z", scope: !443, file: !2, line: 597, type: !90)
!443 = distinct !DILexicalBlock(scope: !444, file: !2, line: 596, column: 17)
!444 = distinct !DILexicalBlock(scope: !428, file: !2, line: 596, column: 6)
!445 = !DILocalVariable(name: "z", scope: !446, file: !2, line: 602, type: !90)
!446 = distinct !DILexicalBlock(scope: !447, file: !2, line: 601, column: 22)
!447 = distinct !DILexicalBlock(scope: !444, file: !2, line: 601, column: 11)
!448 = !DILocalVariable(name: "z", scope: !449, file: !2, line: 607, type: !90)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 606, column: 22)
!450 = distinct !DILexicalBlock(scope: !447, file: !2, line: 606, column: 11)
!451 = !DILocation(line: 0, scope: !428)
!452 = !DILocation(line: 596, column: 8, scope: !444)
!453 = !DILocation(line: 596, column: 6, scope: !428)
!454 = !DILocation(line: 597, column: 24, scope: !443)
!455 = !DILocation(line: 597, column: 26, scope: !443)
!456 = !DILocation(line: 597, column: 21, scope: !443)
!457 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !458)
!458 = distinct !DILocation(line: 598, column: 5, scope: !443)
!459 = !DILocation(line: 0, scope: !443)
!460 = !DILocation(line: 0, scope: !270, inlinedAt: !458)
!461 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !458)
!462 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !458)
!463 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !458)
!464 = !DILocation(line: 0, scope: !293, inlinedAt: !465)
!465 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !458)
!466 = !DILocation(line: 75, column: 15, scope: !293, inlinedAt: !465)
!467 = !DILocation(line: 16, column: 26, scope: !299, inlinedAt: !458)
!468 = !DILocation(line: 0, scope: !299, inlinedAt: !458)
!469 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !458)
!470 = !DILocation(line: 0, scope: !287, inlinedAt: !458)
!471 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !458)
!472 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !458)
!473 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !458)
!474 = distinct !{!474, !369}
!475 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !458)
!476 = distinct !{!476, !469, !477, !373}
!477 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !458)
!478 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !458)
!479 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !458)
!480 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !458)
!481 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !458)
!482 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !458)
!483 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !458)
!484 = !DILocation(line: 11, column: 21, scope: !270, inlinedAt: !485)
!485 = distinct !DILocation(line: 599, column: 5, scope: !443)
!486 = !DILocation(line: 0, scope: !270, inlinedAt: !485)
!487 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !485)
!488 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !485)
!489 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !485)
!490 = !DILocation(line: 0, scope: !293, inlinedAt: !491)
!491 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !485)
!492 = !DILocation(line: 0, scope: !299, inlinedAt: !485)
!493 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !485)
!494 = !DILocation(line: 0, scope: !287, inlinedAt: !485)
!495 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !485)
!496 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !485)
!497 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !485)
!498 = distinct !{!498, !369}
!499 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !485)
!500 = distinct !{!500, !493, !501, !373}
!501 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !485)
!502 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !485)
!503 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !485)
!504 = !DILocation(line: 600, column: 3, scope: !443)
!505 = !DILocation(line: 601, column: 13, scope: !447)
!506 = !DILocation(line: 601, column: 11, scope: !444)
!507 = !DILocation(line: 602, column: 25, scope: !446)
!508 = !DILocation(line: 602, column: 27, scope: !446)
!509 = !DILocation(line: 602, column: 22, scope: !446)
!510 = !DILocation(line: 602, column: 38, scope: !446)
!511 = !DILocation(line: 0, scope: !446)
!512 = !DILocation(line: 0, scope: !270, inlinedAt: !513)
!513 = distinct !DILocation(line: 603, column: 5, scope: !446)
!514 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !513)
!515 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !513)
!516 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !513)
!517 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !513)
!518 = !DILocation(line: 0, scope: !293, inlinedAt: !519)
!519 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !513)
!520 = !DILocation(line: 75, column: 15, scope: !293, inlinedAt: !519)
!521 = !DILocation(line: 16, column: 26, scope: !299, inlinedAt: !513)
!522 = !DILocation(line: 0, scope: !299, inlinedAt: !513)
!523 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !513)
!524 = !DILocation(line: 0, scope: !287, inlinedAt: !513)
!525 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !513)
!526 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !513)
!527 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !513)
!528 = distinct !{!528, !369}
!529 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !513)
!530 = distinct !{!530, !523, !531, !373}
!531 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !513)
!532 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !513)
!533 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !513)
!534 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !513)
!535 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !513)
!536 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !513)
!537 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !513)
!538 = !DILocation(line: 11, column: 21, scope: !270, inlinedAt: !539)
!539 = distinct !DILocation(line: 604, column: 5, scope: !446)
!540 = !DILocation(line: 0, scope: !270, inlinedAt: !539)
!541 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !539)
!542 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !539)
!543 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !539)
!544 = !DILocation(line: 0, scope: !293, inlinedAt: !545)
!545 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !539)
!546 = !DILocation(line: 0, scope: !299, inlinedAt: !539)
!547 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !539)
!548 = !DILocation(line: 0, scope: !287, inlinedAt: !539)
!549 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !539)
!550 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !539)
!551 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !539)
!552 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !539)
!553 = distinct !{!553, !547, !554, !373}
!554 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !539)
!555 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !539)
!556 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !539)
!557 = !DILocation(line: 605, column: 3, scope: !446)
!558 = !DILocation(line: 606, column: 13, scope: !450)
!559 = !DILocation(line: 606, column: 11, scope: !447)
!560 = !DILocation(line: 607, column: 24, scope: !449)
!561 = !DILocation(line: 607, column: 26, scope: !449)
!562 = !DILocation(line: 607, column: 21, scope: !449)
!563 = !DILocation(line: 607, column: 37, scope: !449)
!564 = !DILocation(line: 0, scope: !449)
!565 = !DILocation(line: 0, scope: !270, inlinedAt: !566)
!566 = distinct !DILocation(line: 608, column: 5, scope: !449)
!567 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !566)
!568 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !566)
!569 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !566)
!570 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !566)
!571 = !DILocation(line: 0, scope: !293, inlinedAt: !572)
!572 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !566)
!573 = !DILocation(line: 75, column: 15, scope: !293, inlinedAt: !572)
!574 = !DILocation(line: 16, column: 26, scope: !299, inlinedAt: !566)
!575 = !DILocation(line: 0, scope: !299, inlinedAt: !566)
!576 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !566)
!577 = !DILocation(line: 0, scope: !287, inlinedAt: !566)
!578 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !566)
!579 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !566)
!580 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !566)
!581 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !566)
!582 = distinct !{!582, !576, !583, !373}
!583 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !566)
!584 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !566)
!585 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !566)
!586 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !566)
!587 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !566)
!588 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !566)
!589 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !566)
!590 = !DILocation(line: 11, column: 21, scope: !270, inlinedAt: !591)
!591 = distinct !DILocation(line: 609, column: 5, scope: !449)
!592 = !DILocation(line: 0, scope: !270, inlinedAt: !591)
!593 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !591)
!594 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !591)
!595 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !591)
!596 = !DILocation(line: 0, scope: !293, inlinedAt: !597)
!597 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !591)
!598 = !DILocation(line: 0, scope: !299, inlinedAt: !591)
!599 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !591)
!600 = !DILocation(line: 0, scope: !287, inlinedAt: !591)
!601 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !591)
!602 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !591)
!603 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !591)
!604 = distinct !{!604, !369}
!605 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !591)
!606 = distinct !{!606, !599, !607, !373}
!607 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !591)
!608 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !591)
!609 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !591)
!610 = !DILocation(line: 613, column: 15, scope: !611)
!611 = distinct !DILexicalBlock(scope: !450, file: !2, line: 611, column: 8)
!612 = !DILocation(line: 615, column: 15, scope: !611)
!613 = !DILocation(line: 616, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !2, line: 616, column: 5)
!615 = !DILocation(line: 28, column: 15, scope: !270, inlinedAt: !616)
!616 = !DILocation(line: 0, scope: !444)
!617 = !DILocation(line: 27, column: 15, scope: !270, inlinedAt: !616)
!618 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !616)
!619 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !616)
!620 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !616)
!621 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !616)
!622 = !DILocation(line: 619, column: 15, scope: !428)
!623 = !DILocation(line: 620, column: 15, scope: !428)
!624 = !DILocation(line: 622, column: 14, scope: !428)
!625 = !DILocation(line: 622, column: 9, scope: !428)
!626 = !DILocation(line: 624, column: 22, scope: !428)
!627 = !DILocation(line: 624, column: 15, scope: !428)
!628 = !DILocation(line: 624, column: 13, scope: !428)
!629 = !DILocation(line: 625, column: 15, scope: !428)
!630 = !DILocation(line: 625, column: 69, scope: !428)
!631 = !DILocation(line: 625, column: 52, scope: !428)
!632 = !DILocation(line: 625, column: 31, scope: !428)
!633 = !DILocation(line: 625, column: 9, scope: !428)
!634 = !DILocation(line: 625, column: 13, scope: !428)
!635 = !DILocation(line: 626, column: 24, scope: !428)
!636 = !DILocation(line: 626, column: 30, scope: !428)
!637 = !DILocation(line: 626, column: 13, scope: !428)
!638 = !DILocation(line: 627, column: 14, scope: !428)
!639 = !DILocation(line: 627, column: 67, scope: !428)
!640 = !DILocation(line: 627, column: 50, scope: !428)
!641 = !DILocation(line: 627, column: 29, scope: !428)
!642 = !DILocation(line: 627, column: 8, scope: !428)
!643 = !DILocation(line: 627, column: 12, scope: !428)
!644 = !DILocation(line: 629, column: 3, scope: !428)
!645 = !DILocation(line: 630, column: 1, scope: !428)
!646 = !DISubprogram(name: "cos", scope: !647, file: !647, line: 62, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!648 = !DISubroutineType(types: !649)
!649 = !{!90, !90}
!650 = !DISubprogram(name: "exp", scope: !647, file: !647, line: 95, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubprogram(name: "sqrt", scope: !647, file: !647, line: 143, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_e", scope: !2, file: !2, line: 697, type: !191, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !653)
!653 = !{!654, !655, !656, !657, !660, !661, !662, !663, !666, !667, !668, !671, !672, !674}
!654 = !DILocalVariable(name: "x", arg: 1, scope: !652, file: !2, line: 697, type: !193)
!655 = !DILocalVariable(name: "mode", arg: 2, scope: !652, file: !2, line: 697, type: !194)
!656 = !DILocalVariable(name: "result", arg: 3, scope: !652, file: !2, line: 697, type: !196)
!657 = !DILocalVariable(name: "a", scope: !658, file: !2, line: 702, type: !197)
!658 = distinct !DILexicalBlock(scope: !659, file: !2, line: 701, column: 16)
!659 = distinct !DILexicalBlock(scope: !652, file: !2, line: 701, column: 6)
!660 = !DILocalVariable(name: "p", scope: !658, file: !2, line: 703, type: !197)
!661 = !DILocalVariable(name: "status_ap", scope: !658, file: !2, line: 704, type: !42)
!662 = !DILocalVariable(name: "c", scope: !658, file: !2, line: 705, type: !90)
!663 = !DILocalVariable(name: "x3", scope: !664, file: !2, line: 712, type: !193)
!664 = distinct !DILexicalBlock(scope: !665, file: !2, line: 711, column: 20)
!665 = distinct !DILexicalBlock(scope: !659, file: !2, line: 711, column: 11)
!666 = !DILocalVariable(name: "result_c1", scope: !664, file: !2, line: 713, type: !197)
!667 = !DILocalVariable(name: "result_c2", scope: !664, file: !2, line: 714, type: !197)
!668 = !DILocalVariable(name: "result_aps", scope: !669, file: !2, line: 723, type: !197)
!669 = distinct !DILexicalBlock(scope: !670, file: !2, line: 722, column: 62)
!670 = distinct !DILexicalBlock(scope: !665, file: !2, line: 722, column: 11)
!671 = !DILocalVariable(name: "arg", scope: !669, file: !2, line: 724, type: !193)
!672 = !DILocalVariable(name: "stat_a", scope: !669, file: !2, line: 725, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!674 = !DILocalVariable(name: "stat_e", scope: !669, file: !2, line: 726, type: !673)
!675 = distinct !DIAssignID()
!676 = !DILocation(line: 0, scope: !658)
!677 = distinct !DIAssignID()
!678 = distinct !DIAssignID()
!679 = !DILocation(line: 0, scope: !669)
!680 = !DILocation(line: 0, scope: !652)
!681 = !DILocation(line: 701, column: 8, scope: !659)
!682 = !DILocation(line: 701, column: 6, scope: !652)
!683 = !DILocation(line: 702, column: 5, scope: !658)
!684 = !DILocation(line: 703, column: 5, scope: !658)
!685 = !DILocation(line: 704, column: 21, scope: !658)
!686 = !DILocation(line: 705, column: 25, scope: !658)
!687 = !DILocation(line: 706, column: 22, scope: !658)
!688 = !DILocation(line: 706, column: 26, scope: !658)
!689 = !DILocation(line: 706, column: 18, scope: !658)
!690 = !DILocation(line: 707, column: 41, scope: !658)
!691 = !DILocation(line: 707, column: 37, scope: !658)
!692 = !DILocation(line: 707, column: 20, scope: !658)
!693 = !DILocation(line: 707, column: 59, scope: !658)
!694 = !DILocation(line: 707, column: 55, scope: !658)
!695 = !DILocation(line: 707, column: 48, scope: !658)
!696 = !DILocation(line: 707, column: 13, scope: !658)
!697 = !DILocation(line: 708, column: 38, scope: !658)
!698 = !DILocation(line: 708, column: 36, scope: !658)
!699 = !DILocation(line: 708, column: 17, scope: !658)
!700 = !DILocation(line: 710, column: 3, scope: !659)
!701 = !DILocation(line: 711, column: 13, scope: !665)
!702 = !DILocation(line: 0, scope: !665)
!703 = !DILocation(line: 711, column: 11, scope: !659)
!704 = !DILocation(line: 0, scope: !664)
!705 = !DILocation(line: 0, scope: !270, inlinedAt: !706)
!706 = distinct !DILocation(line: 715, column: 5, scope: !664)
!707 = !DILocation(line: 0, scope: !293, inlinedAt: !708)
!708 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !706)
!709 = !DILocation(line: 0, scope: !287, inlinedAt: !706)
!710 = !DILocation(line: 0, scope: !270, inlinedAt: !711)
!711 = distinct !DILocation(line: 716, column: 5, scope: !664)
!712 = !DILocation(line: 0, scope: !293, inlinedAt: !713)
!713 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !711)
!714 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !706)
!715 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !711)
!716 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !711)
!717 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !711)
!718 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !706)
!719 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !706)
!720 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !706)
!721 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !706)
!722 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !706)
!723 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !706)
!724 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !706)
!725 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !706)
!726 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !706)
!727 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !711)
!728 = !DILocation(line: 0, scope: !287, inlinedAt: !711)
!729 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !711)
!730 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !711)
!731 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !711)
!732 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !711)
!733 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !711)
!734 = !DILocation(line: 717, column: 32, scope: !664)
!735 = !DILocation(line: 717, column: 24, scope: !664)
!736 = !DILocation(line: 717, column: 66, scope: !664)
!737 = !DILocation(line: 717, column: 18, scope: !664)
!738 = !DILocation(line: 718, column: 28, scope: !664)
!739 = !DILocation(line: 718, column: 20, scope: !664)
!740 = !DILocation(line: 718, column: 13, scope: !664)
!741 = !DILocation(line: 719, column: 38, scope: !664)
!742 = !DILocation(line: 719, column: 36, scope: !664)
!743 = !DILocation(line: 719, column: 17, scope: !664)
!744 = !DILocation(line: 722, column: 17, scope: !670)
!745 = !DILocation(line: 722, column: 11, scope: !665)
!746 = !DILocation(line: 723, column: 5, scope: !669)
!747 = !DILocation(line: 724, column: 28, scope: !669)
!748 = !DILocation(line: 724, column: 31, scope: !669)
!749 = !DILocation(line: 724, column: 30, scope: !669)
!750 = !DILocation(line: 724, column: 38, scope: !669)
!751 = !DILocation(line: 725, column: 24, scope: !669)
!752 = !DILocation(line: 726, column: 63, scope: !669)
!753 = !DILocation(line: 726, column: 55, scope: !669)
!754 = !DILocation(line: 726, column: 54, scope: !669)
!755 = !DILocation(line: 727, column: 60, scope: !669)
!756 = !DILocation(line: 727, column: 76, scope: !669)
!757 = !DILocation(line: 726, column: 24, scope: !669)
!758 = !DILocation(line: 729, column: 12, scope: !669)
!759 = !DILocation(line: 730, column: 3, scope: !670)
!760 = !DILocation(line: 732, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 732, column: 5)
!762 = distinct !DILexicalBlock(scope: !670, file: !2, line: 731, column: 8)
!763 = !DILocation(line: 732, column: 5, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !2, line: 732, column: 5)
!765 = !DILocation(line: 0, scope: !659)
!766 = !DILocation(line: 734, column: 1, scope: !652)
!767 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !768, file: !768, line: 122, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!768 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!769 = !DISubroutineType(types: !770)
!770 = !{!42, !193, !193, !193, !193, !196}
!771 = !DISubprogram(name: "gsl_error", scope: !41, file: !41, line: 77, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !774, !774, !42, !42}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!776 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_scaled_e", scope: !2, file: !2, line: 738, type: !191, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !786, !787, !788, !789, !792, !793, !794, !795, !798, !801, !802, !803, !804, !807, !808, !809, !810, !812, !813, !814}
!778 = !DILocalVariable(name: "x", arg: 1, scope: !776, file: !2, line: 738, type: !193)
!779 = !DILocalVariable(name: "mode", arg: 2, scope: !776, file: !2, line: 738, type: !194)
!780 = !DILocalVariable(name: "result", arg: 3, scope: !776, file: !2, line: 738, type: !196)
!781 = !DILocalVariable(name: "atr", scope: !776, file: !2, line: 740, type: !193)
!782 = !DILocalVariable(name: "btr", scope: !776, file: !2, line: 741, type: !193)
!783 = !DILocalVariable(name: "a", scope: !784, file: !2, line: 746, type: !197)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 745, column: 16)
!785 = distinct !DILexicalBlock(scope: !776, file: !2, line: 745, column: 6)
!786 = !DILocalVariable(name: "p", scope: !784, file: !2, line: 747, type: !197)
!787 = !DILocalVariable(name: "status_ap", scope: !784, file: !2, line: 748, type: !42)
!788 = !DILocalVariable(name: "s", scope: !784, file: !2, line: 749, type: !90)
!789 = !DILocalVariable(name: "x3", scope: !790, file: !2, line: 756, type: !193)
!790 = distinct !DILexicalBlock(scope: !791, file: !2, line: 755, column: 20)
!791 = distinct !DILexicalBlock(scope: !785, file: !2, line: 755, column: 11)
!792 = !DILocalVariable(name: "x2", scope: !790, file: !2, line: 757, type: !193)
!793 = !DILocalVariable(name: "result_c1", scope: !790, file: !2, line: 758, type: !197)
!794 = !DILocalVariable(name: "result_c2", scope: !790, file: !2, line: 759, type: !197)
!795 = !DILocalVariable(name: "s", scope: !796, file: !2, line: 768, type: !193)
!796 = distinct !DILexicalBlock(scope: !797, file: !2, line: 766, column: 57)
!797 = distinct !DILexicalBlock(scope: !790, file: !2, line: 766, column: 8)
!798 = !DILocalVariable(name: "z", scope: !799, file: !2, line: 776, type: !193)
!799 = distinct !DILexicalBlock(scope: !800, file: !2, line: 775, column: 20)
!800 = distinct !DILexicalBlock(scope: !791, file: !2, line: 775, column: 11)
!801 = !DILocalVariable(name: "s", scope: !799, file: !2, line: 777, type: !193)
!802 = !DILocalVariable(name: "result_c0", scope: !799, file: !2, line: 778, type: !197)
!803 = !DILocalVariable(name: "result_c1", scope: !799, file: !2, line: 779, type: !197)
!804 = !DILocalVariable(name: "sqrtx", scope: !805, file: !2, line: 788, type: !193)
!805 = distinct !DILexicalBlock(scope: !806, file: !2, line: 787, column: 20)
!806 = distinct !DILexicalBlock(scope: !800, file: !2, line: 787, column: 11)
!807 = !DILocalVariable(name: "z", scope: !805, file: !2, line: 789, type: !193)
!808 = !DILocalVariable(name: "s", scope: !805, file: !2, line: 790, type: !193)
!809 = !DILocalVariable(name: "result_c0", scope: !805, file: !2, line: 791, type: !197)
!810 = !DILocalVariable(name: "sqrtx", scope: !811, file: !2, line: 799, type: !193)
!811 = distinct !DILexicalBlock(scope: !806, file: !2, line: 798, column: 8)
!812 = !DILocalVariable(name: "z", scope: !811, file: !2, line: 800, type: !193)
!813 = !DILocalVariable(name: "s", scope: !811, file: !2, line: 801, type: !193)
!814 = !DILocalVariable(name: "result_c0", scope: !811, file: !2, line: 802, type: !197)
!815 = distinct !DIAssignID()
!816 = !DILocation(line: 0, scope: !784)
!817 = distinct !DIAssignID()
!818 = !DILocation(line: 0, scope: !776)
!819 = !DILocation(line: 745, column: 8, scope: !785)
!820 = !DILocation(line: 745, column: 6, scope: !776)
!821 = !DILocation(line: 746, column: 5, scope: !784)
!822 = !DILocation(line: 747, column: 5, scope: !784)
!823 = !DILocation(line: 748, column: 21, scope: !784)
!824 = !DILocation(line: 749, column: 26, scope: !784)
!825 = !DILocation(line: 750, column: 22, scope: !784)
!826 = !DILocation(line: 750, column: 26, scope: !784)
!827 = !DILocation(line: 750, column: 18, scope: !784)
!828 = !DILocation(line: 751, column: 41, scope: !784)
!829 = !DILocation(line: 751, column: 37, scope: !784)
!830 = !DILocation(line: 751, column: 20, scope: !784)
!831 = !DILocation(line: 751, column: 59, scope: !784)
!832 = !DILocation(line: 751, column: 55, scope: !784)
!833 = !DILocation(line: 751, column: 48, scope: !784)
!834 = !DILocation(line: 751, column: 13, scope: !784)
!835 = !DILocation(line: 752, column: 38, scope: !784)
!836 = !DILocation(line: 752, column: 36, scope: !784)
!837 = !DILocation(line: 752, column: 17, scope: !784)
!838 = !DILocation(line: 754, column: 3, scope: !785)
!839 = !DILocation(line: 755, column: 13, scope: !791)
!840 = !DILocation(line: 755, column: 11, scope: !785)
!841 = !DILocation(line: 756, column: 24, scope: !790)
!842 = !DILocation(line: 0, scope: !790)
!843 = !DILocation(line: 0, scope: !270, inlinedAt: !844)
!844 = distinct !DILocation(line: 760, column: 5, scope: !790)
!845 = !DILocation(line: 0, scope: !293, inlinedAt: !846)
!846 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !844)
!847 = !DILocation(line: 0, scope: !287, inlinedAt: !844)
!848 = !DILocation(line: 0, scope: !270, inlinedAt: !849)
!849 = distinct !DILocation(line: 761, column: 5, scope: !790)
!850 = !DILocation(line: 0, scope: !293, inlinedAt: !851)
!851 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !849)
!852 = !DILocation(line: 756, column: 26, scope: !790)
!853 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !844)
!854 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !849)
!855 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !849)
!856 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !849)
!857 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !844)
!858 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !844)
!859 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !844)
!860 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !844)
!861 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !844)
!862 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !844)
!863 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !844)
!864 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !844)
!865 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !844)
!866 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !849)
!867 = !DILocation(line: 0, scope: !287, inlinedAt: !849)
!868 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !849)
!869 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !849)
!870 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !849)
!871 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !849)
!872 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !849)
!873 = !DILocation(line: 762, column: 40, scope: !790)
!874 = !DILocation(line: 762, column: 23, scope: !790)
!875 = !DILocation(line: 762, column: 64, scope: !790)
!876 = !DILocation(line: 762, column: 18, scope: !790)
!877 = !DILocation(line: 763, column: 23, scope: !790)
!878 = !DILocation(line: 763, column: 13, scope: !790)
!879 = !DILocation(line: 764, column: 38, scope: !790)
!880 = !DILocation(line: 764, column: 36, scope: !790)
!881 = !DILocation(line: 764, column: 17, scope: !790)
!882 = !DILocation(line: 766, column: 10, scope: !797)
!883 = !DILocation(line: 766, column: 8, scope: !790)
!884 = !DILocation(line: 768, column: 32, scope: !796)
!885 = !DILocation(line: 768, column: 35, scope: !796)
!886 = !DILocation(line: 768, column: 34, scope: !796)
!887 = !DILocation(line: 768, column: 42, scope: !796)
!888 = !DILocation(line: 768, column: 24, scope: !796)
!889 = !DILocation(line: 0, scope: !796)
!890 = !DILocation(line: 769, column: 19, scope: !796)
!891 = !DILocation(line: 770, column: 19, scope: !796)
!892 = !DILocation(line: 771, column: 5, scope: !796)
!893 = !DILocation(line: 775, column: 13, scope: !800)
!894 = !DILocation(line: 775, column: 11, scope: !791)
!895 = !DILocation(line: 0, scope: !799)
!896 = !DILocation(line: 777, column: 30, scope: !799)
!897 = !DILocation(line: 777, column: 33, scope: !799)
!898 = !DILocation(line: 777, column: 32, scope: !799)
!899 = !DILocation(line: 777, column: 40, scope: !799)
!900 = !DILocation(line: 777, column: 22, scope: !799)
!901 = !DILocation(line: 0, scope: !270, inlinedAt: !902)
!902 = distinct !DILocation(line: 780, column: 5, scope: !799)
!903 = !DILocation(line: 0, scope: !293, inlinedAt: !904)
!904 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !902)
!905 = !DILocation(line: 0, scope: !287, inlinedAt: !902)
!906 = !DILocation(line: 0, scope: !270, inlinedAt: !907)
!907 = distinct !DILocation(line: 781, column: 5, scope: !799)
!908 = !DILocation(line: 0, scope: !293, inlinedAt: !909)
!909 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !907)
!910 = !DILocation(line: 776, column: 26, scope: !799)
!911 = !DILocation(line: 776, column: 28, scope: !799)
!912 = !DILocation(line: 776, column: 30, scope: !799)
!913 = !DILocation(line: 776, column: 40, scope: !799)
!914 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !902)
!915 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !907)
!916 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !907)
!917 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !907)
!918 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !902)
!919 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !902)
!920 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !902)
!921 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !902)
!922 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !902)
!923 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !902)
!924 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !902)
!925 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !902)
!926 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !902)
!927 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !907)
!928 = !DILocation(line: 0, scope: !287, inlinedAt: !907)
!929 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !907)
!930 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !907)
!931 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !907)
!932 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !907)
!933 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !907)
!934 = !DILocation(line: 782, column: 26, scope: !799)
!935 = !DILocation(line: 782, column: 29, scope: !799)
!936 = !DILocation(line: 782, column: 60, scope: !799)
!937 = !DILocation(line: 782, column: 22, scope: !799)
!938 = !DILocation(line: 782, column: 18, scope: !799)
!939 = !DILocation(line: 783, column: 29, scope: !799)
!940 = !DILocation(line: 783, column: 22, scope: !799)
!941 = !DILocation(line: 783, column: 13, scope: !799)
!942 = !DILocation(line: 784, column: 38, scope: !799)
!943 = !DILocation(line: 784, column: 36, scope: !799)
!944 = !DILocation(line: 784, column: 17, scope: !799)
!945 = !DILocation(line: 787, column: 13, scope: !806)
!946 = !DILocation(line: 0, scope: !806)
!947 = !DILocation(line: 75, column: 15, scope: !293, inlinedAt: !948)
!948 = !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !946)
!949 = !DILocation(line: 16, column: 26, scope: !299, inlinedAt: !946)
!950 = !DILocation(line: 787, column: 11, scope: !800)
!951 = !DILocation(line: 0, scope: !805)
!952 = !DILocation(line: 789, column: 25, scope: !805)
!953 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !954)
!954 = distinct !DILocation(line: 792, column: 5, scope: !805)
!955 = !DILocation(line: 0, scope: !270, inlinedAt: !954)
!956 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !954)
!957 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !954)
!958 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !954)
!959 = !DILocation(line: 0, scope: !293, inlinedAt: !960)
!960 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !954)
!961 = !DILocation(line: 0, scope: !299, inlinedAt: !954)
!962 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !954)
!963 = !DILocation(line: 0, scope: !287, inlinedAt: !954)
!964 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !954)
!965 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !954)
!966 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !954)
!967 = distinct !{!967, !369}
!968 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !954)
!969 = distinct !{!969, !962, !970, !373}
!970 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !954)
!971 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !954)
!972 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !954)
!973 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !954)
!974 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !954)
!975 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !954)
!976 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !954)
!977 = !DILocation(line: 793, column: 31, scope: !805)
!978 = !DILocation(line: 793, column: 22, scope: !805)
!979 = !DILocation(line: 793, column: 18, scope: !805)
!980 = !DILocation(line: 794, column: 22, scope: !805)
!981 = !DILocation(line: 794, column: 13, scope: !805)
!982 = !DILocation(line: 795, column: 38, scope: !805)
!983 = !DILocation(line: 795, column: 36, scope: !805)
!984 = !DILocation(line: 795, column: 17, scope: !805)
!985 = !DILocation(line: 0, scope: !811)
!986 = !DILocation(line: 800, column: 26, scope: !811)
!987 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !988)
!988 = distinct !DILocation(line: 803, column: 5, scope: !811)
!989 = !DILocation(line: 0, scope: !270, inlinedAt: !988)
!990 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !988)
!991 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !988)
!992 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !988)
!993 = !DILocation(line: 0, scope: !293, inlinedAt: !994)
!994 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !988)
!995 = !DILocation(line: 0, scope: !299, inlinedAt: !988)
!996 = !DILocation(line: 21, column: 3, scope: !289, inlinedAt: !988)
!997 = !DILocation(line: 0, scope: !287, inlinedAt: !988)
!998 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !988)
!999 = !DILocation(line: 23, column: 21, scope: !287, inlinedAt: !988)
!1000 = !DILocation(line: 21, column: 30, scope: !288, inlinedAt: !988)
!1001 = distinct !{!1001, !369}
!1002 = !DILocation(line: 21, column: 24, scope: !288, inlinedAt: !988)
!1003 = distinct !{!1003, !996, !1004, !373}
!1004 = !DILocation(line: 25, column: 3, scope: !289, inlinedAt: !988)
!1005 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !988)
!1006 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !988)
!1007 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !988)
!1008 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !988)
!1009 = !DILocation(line: 28, column: 60, scope: !270, inlinedAt: !988)
!1010 = !DILocation(line: 28, column: 55, scope: !270, inlinedAt: !988)
!1011 = !DILocation(line: 804, column: 31, scope: !811)
!1012 = !DILocation(line: 804, column: 22, scope: !811)
!1013 = !DILocation(line: 804, column: 18, scope: !811)
!1014 = !DILocation(line: 805, column: 22, scope: !811)
!1015 = !DILocation(line: 805, column: 13, scope: !811)
!1016 = !DILocation(line: 806, column: 38, scope: !811)
!1017 = !DILocation(line: 806, column: 36, scope: !811)
!1018 = !DILocation(line: 806, column: 17, scope: !811)
!1019 = !DILocation(line: 0, scope: !785)
!1020 = !DILocation(line: 809, column: 1, scope: !776)
!1021 = !DISubprogram(name: "sin", scope: !647, file: !647, line: 64, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_e", scope: !2, file: !2, line: 813, type: !191, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1030, !1031, !1032, !1033, !1036, !1037, !1038, !1039, !1042, !1043, !1044, !1047, !1048, !1049}
!1024 = !DILocalVariable(name: "x", arg: 1, scope: !1022, file: !2, line: 813, type: !193)
!1025 = !DILocalVariable(name: "mode", arg: 2, scope: !1022, file: !2, line: 813, type: !194)
!1026 = !DILocalVariable(name: "result", arg: 3, scope: !1022, file: !2, line: 813, type: !196)
!1027 = !DILocalVariable(name: "a", scope: !1028, file: !2, line: 818, type: !197)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 817, column: 16)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 817, column: 6)
!1030 = !DILocalVariable(name: "p", scope: !1028, file: !2, line: 819, type: !197)
!1031 = !DILocalVariable(name: "status_ap", scope: !1028, file: !2, line: 820, type: !42)
!1032 = !DILocalVariable(name: "s", scope: !1028, file: !2, line: 821, type: !90)
!1033 = !DILocalVariable(name: "x3", scope: !1034, file: !2, line: 828, type: !193)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 827, column: 20)
!1035 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 827, column: 11)
!1036 = !DILocalVariable(name: "x2", scope: !1034, file: !2, line: 829, type: !193)
!1037 = !DILocalVariable(name: "result_c1", scope: !1034, file: !2, line: 830, type: !197)
!1038 = !DILocalVariable(name: "result_c2", scope: !1034, file: !2, line: 831, type: !197)
!1039 = !DILocalVariable(name: "z", scope: !1040, file: !2, line: 840, type: !193)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 839, column: 20)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 839, column: 11)
!1042 = !DILocalVariable(name: "result_c1", scope: !1040, file: !2, line: 841, type: !197)
!1043 = !DILocalVariable(name: "result_c2", scope: !1040, file: !2, line: 842, type: !197)
!1044 = !DILocalVariable(name: "result_bps", scope: !1045, file: !2, line: 851, type: !197)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 850, column: 52)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 850, column: 11)
!1047 = !DILocalVariable(name: "arg", scope: !1045, file: !2, line: 852, type: !193)
!1048 = !DILocalVariable(name: "stat_b", scope: !1045, file: !2, line: 853, type: !42)
!1049 = !DILocalVariable(name: "stat_e", scope: !1045, file: !2, line: 854, type: !42)
!1050 = distinct !DIAssignID()
!1051 = !DILocation(line: 0, scope: !1028)
!1052 = distinct !DIAssignID()
!1053 = distinct !DIAssignID()
!1054 = !DILocation(line: 0, scope: !1045)
!1055 = !DILocation(line: 0, scope: !1022)
!1056 = !DILocation(line: 817, column: 8, scope: !1029)
!1057 = !DILocation(line: 817, column: 6, scope: !1022)
!1058 = !DILocation(line: 818, column: 5, scope: !1028)
!1059 = !DILocation(line: 819, column: 5, scope: !1028)
!1060 = !DILocation(line: 820, column: 21, scope: !1028)
!1061 = !DILocation(line: 821, column: 25, scope: !1028)
!1062 = !DILocation(line: 822, column: 22, scope: !1028)
!1063 = !DILocation(line: 822, column: 26, scope: !1028)
!1064 = !DILocation(line: 822, column: 18, scope: !1028)
!1065 = !DILocation(line: 823, column: 41, scope: !1028)
!1066 = !DILocation(line: 823, column: 37, scope: !1028)
!1067 = !DILocation(line: 823, column: 20, scope: !1028)
!1068 = !DILocation(line: 823, column: 59, scope: !1028)
!1069 = !DILocation(line: 823, column: 55, scope: !1028)
!1070 = !DILocation(line: 823, column: 48, scope: !1028)
!1071 = !DILocation(line: 823, column: 13, scope: !1028)
!1072 = !DILocation(line: 824, column: 38, scope: !1028)
!1073 = !DILocation(line: 824, column: 36, scope: !1028)
!1074 = !DILocation(line: 824, column: 17, scope: !1028)
!1075 = !DILocation(line: 826, column: 3, scope: !1029)
!1076 = !DILocation(line: 827, column: 13, scope: !1035)
!1077 = !DILocation(line: 827, column: 11, scope: !1029)
!1078 = !DILocation(line: 828, column: 24, scope: !1034)
!1079 = !DILocation(line: 0, scope: !1034)
!1080 = !DILocation(line: 0, scope: !270, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 832, column: 5, scope: !1034)
!1082 = !DILocation(line: 0, scope: !293, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !1081)
!1084 = !DILocation(line: 0, scope: !287, inlinedAt: !1081)
!1085 = !DILocation(line: 0, scope: !270, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 833, column: 5, scope: !1034)
!1087 = !DILocation(line: 0, scope: !293, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !1086)
!1089 = !DILocation(line: 828, column: 26, scope: !1034)
!1090 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !1081)
!1091 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !1086)
!1092 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !1086)
!1093 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !1086)
!1094 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !1081)
!1095 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !1081)
!1096 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !1081)
!1097 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !1081)
!1098 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !1081)
!1099 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !1081)
!1100 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !1081)
!1101 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !1081)
!1102 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !1081)
!1103 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !1086)
!1104 = !DILocation(line: 0, scope: !287, inlinedAt: !1086)
!1105 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !1086)
!1106 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !1086)
!1107 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !1086)
!1108 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !1086)
!1109 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !1086)
!1110 = !DILocation(line: 834, column: 40, scope: !1034)
!1111 = !DILocation(line: 834, column: 23, scope: !1034)
!1112 = !DILocation(line: 834, column: 64, scope: !1034)
!1113 = !DILocation(line: 834, column: 18, scope: !1034)
!1114 = !DILocation(line: 835, column: 23, scope: !1034)
!1115 = !DILocation(line: 835, column: 13, scope: !1034)
!1116 = !DILocation(line: 836, column: 38, scope: !1034)
!1117 = !DILocation(line: 836, column: 36, scope: !1034)
!1118 = !DILocation(line: 836, column: 17, scope: !1034)
!1119 = !DILocation(line: 839, column: 13, scope: !1041)
!1120 = !DILocation(line: 839, column: 11, scope: !1035)
!1121 = !DILocation(line: 0, scope: !1040)
!1122 = !DILocation(line: 0, scope: !270, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 843, column: 5, scope: !1040)
!1124 = !DILocation(line: 0, scope: !293, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !1123)
!1126 = !DILocation(line: 0, scope: !287, inlinedAt: !1123)
!1127 = !DILocation(line: 0, scope: !270, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 844, column: 5, scope: !1040)
!1129 = !DILocation(line: 0, scope: !293, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 16, column: 6, scope: !299, inlinedAt: !1128)
!1131 = !DILocation(line: 840, column: 26, scope: !1040)
!1132 = !DILocation(line: 840, column: 28, scope: !1040)
!1133 = !DILocation(line: 840, column: 30, scope: !1040)
!1134 = !DILocation(line: 840, column: 40, scope: !1040)
!1135 = !DILocation(line: 11, column: 18, scope: !270, inlinedAt: !1123)
!1136 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !1128)
!1137 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !1128)
!1138 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !1128)
!1139 = !DILocation(line: 11, column: 29, scope: !270, inlinedAt: !1123)
!1140 = !DILocation(line: 11, column: 38, scope: !270, inlinedAt: !1123)
!1141 = !DILocation(line: 12, column: 19, scope: !270, inlinedAt: !1123)
!1142 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !1123)
!1143 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !1123)
!1144 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !1123)
!1145 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !1123)
!1146 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !1123)
!1147 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !1123)
!1148 = !DILocation(line: 23, column: 11, scope: !287, inlinedAt: !1128)
!1149 = !DILocation(line: 0, scope: !287, inlinedAt: !1128)
!1150 = !DILocation(line: 23, column: 19, scope: !287, inlinedAt: !1128)
!1151 = !DILocation(line: 27, column: 18, scope: !270, inlinedAt: !1128)
!1152 = !DILocation(line: 27, column: 26, scope: !270, inlinedAt: !1128)
!1153 = !DILocation(line: 28, column: 35, scope: !270, inlinedAt: !1128)
!1154 = !DILocation(line: 28, column: 33, scope: !270, inlinedAt: !1128)
!1155 = !DILocation(line: 845, column: 21, scope: !1040)
!1156 = !DILocation(line: 845, column: 24, scope: !1040)
!1157 = !DILocation(line: 845, column: 65, scope: !1040)
!1158 = !DILocation(line: 845, column: 18, scope: !1040)
!1159 = !DILocation(line: 846, column: 24, scope: !1040)
!1160 = !DILocation(line: 846, column: 13, scope: !1040)
!1161 = !DILocation(line: 847, column: 38, scope: !1040)
!1162 = !DILocation(line: 847, column: 36, scope: !1040)
!1163 = !DILocation(line: 847, column: 17, scope: !1040)
!1164 = !DILocation(line: 850, column: 13, scope: !1046)
!1165 = !DILocation(line: 850, column: 11, scope: !1041)
!1166 = !DILocation(line: 851, column: 5, scope: !1045)
!1167 = !DILocation(line: 852, column: 31, scope: !1045)
!1168 = !DILocation(line: 852, column: 30, scope: !1045)
!1169 = !DILocation(line: 852, column: 38, scope: !1045)
!1170 = !DILocation(line: 852, column: 27, scope: !1045)
!1171 = !DILocation(line: 853, column: 18, scope: !1045)
!1172 = !DILocation(line: 854, column: 57, scope: !1045)
!1173 = !DILocation(line: 854, column: 49, scope: !1045)
!1174 = !DILocation(line: 854, column: 48, scope: !1045)
!1175 = !DILocation(line: 855, column: 54, scope: !1045)
!1176 = !DILocation(line: 855, column: 70, scope: !1045)
!1177 = !DILocation(line: 854, column: 18, scope: !1045)
!1178 = !DILocation(line: 857, column: 12, scope: !1045)
!1179 = !DILocation(line: 858, column: 3, scope: !1046)
!1180 = !DILocation(line: 860, column: 5, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 860, column: 5)
!1182 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 859, column: 8)
!1183 = !DILocation(line: 860, column: 5, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 860, column: 5)
!1185 = !DILocation(line: 0, scope: !1029)
!1186 = !DILocation(line: 862, column: 1, scope: !1022)
!1187 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_scaled", scope: !2, file: !2, line: 868, type: !1188, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!90, !193, !194}
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DILocalVariable(name: "x", arg: 1, scope: !1187, file: !2, line: 868, type: !193)
!1192 = !DILocalVariable(name: "mode", arg: 2, scope: !1187, file: !2, line: 868, type: !194)
!1193 = !DILocalVariable(name: "result", scope: !1187, file: !2, line: 870, type: !197)
!1194 = !DILocalVariable(name: "status", scope: !1187, file: !2, line: 870, type: !42)
!1195 = distinct !DIAssignID()
!1196 = !DILocation(line: 0, scope: !1187)
!1197 = !DILocation(line: 870, column: 3, scope: !1187)
!1198 = !DILocation(line: 870, column: 3, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 870, column: 3)
!1200 = !DILocation(line: 870, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 870, column: 3)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 870, column: 3)
!1203 = !DILocation(line: 871, column: 1, scope: !1187)
!1204 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv", scope: !2, file: !2, line: 873, type: !1188, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1205)
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DILocalVariable(name: "x", arg: 1, scope: !1204, file: !2, line: 873, type: !193)
!1207 = !DILocalVariable(name: "mode", arg: 2, scope: !1204, file: !2, line: 873, type: !194)
!1208 = !DILocalVariable(name: "result", scope: !1204, file: !2, line: 875, type: !197)
!1209 = !DILocalVariable(name: "status", scope: !1204, file: !2, line: 875, type: !42)
!1210 = distinct !DIAssignID()
!1211 = !DILocation(line: 0, scope: !1204)
!1212 = !DILocation(line: 875, column: 3, scope: !1204)
!1213 = !DILocation(line: 875, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 875, column: 3)
!1215 = !DILocation(line: 875, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 875, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 875, column: 3)
!1218 = !DILocation(line: 876, column: 1, scope: !1204)
!1219 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_scaled", scope: !2, file: !2, line: 878, type: !1188, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1220)
!1220 = !{!1221, !1222, !1223, !1224}
!1221 = !DILocalVariable(name: "x", arg: 1, scope: !1219, file: !2, line: 878, type: !193)
!1222 = !DILocalVariable(name: "mode", arg: 2, scope: !1219, file: !2, line: 878, type: !194)
!1223 = !DILocalVariable(name: "result", scope: !1219, file: !2, line: 880, type: !197)
!1224 = !DILocalVariable(name: "status", scope: !1219, file: !2, line: 880, type: !42)
!1225 = distinct !DIAssignID()
!1226 = !DILocation(line: 0, scope: !1219)
!1227 = !DILocation(line: 880, column: 3, scope: !1219)
!1228 = !DILocation(line: 880, column: 3, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 880, column: 3)
!1230 = !DILocation(line: 880, column: 3, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 880, column: 3)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 880, column: 3)
!1233 = !DILocation(line: 881, column: 1, scope: !1219)
!1234 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv", scope: !2, file: !2, line: 883, type: !1188, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1235)
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(name: "x", arg: 1, scope: !1234, file: !2, line: 883, type: !193)
!1237 = !DILocalVariable(name: "mode", arg: 2, scope: !1234, file: !2, line: 883, type: !194)
!1238 = !DILocalVariable(name: "result", scope: !1234, file: !2, line: 885, type: !197)
!1239 = !DILocalVariable(name: "status", scope: !1234, file: !2, line: 885, type: !42)
!1240 = distinct !DIAssignID()
!1241 = !DILocation(line: 0, scope: !1234)
!1242 = !DILocation(line: 885, column: 3, scope: !1234)
!1243 = !DILocation(line: 885, column: 3, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 885, column: 3)
!1245 = !DILocation(line: 885, column: 3, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 885, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 885, column: 3)
!1248 = !DILocation(line: 886, column: 1, scope: !1234)
