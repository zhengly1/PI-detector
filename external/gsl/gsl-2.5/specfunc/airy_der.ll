; ModuleID = 'airy_der.c'
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
  br i1 %6, label %7, label %26, !dbg !238

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !239
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !240
  %8 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !241, !range !242
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !211, metadata !DIExpression()), !dbg !234
  %9 = load double, ptr %5, align 8, !dbg !243, !tbaa !244
  %10 = tail call double @cos(double noundef %9) #7, !dbg !249
  tail call void @llvm.dbg.value(metadata double %10, metadata !212, metadata !DIExpression()), !dbg !234
  %11 = load double, ptr %4, align 8, !dbg !250, !tbaa !244
  %12 = fmul double %10, %11, !dbg !251
  store double %12, ptr %2, align 8, !dbg !252, !tbaa !244
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !253
  %14 = load double, ptr %13, align 8, !dbg !253, !tbaa !254
  %15 = fmul double %12, %14, !dbg !255
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !256
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !257
  %18 = load double, ptr %17, align 8, !dbg !257, !tbaa !254
  %19 = fmul double %10, %18, !dbg !258
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !259
  %21 = fadd double %16, %20, !dbg !260
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !261
  %23 = tail call double @llvm.fabs.f64(double %12), !dbg !262
  %24 = fmul double %23, 0x3CB0000000000000, !dbg !263
  %25 = fadd double %24, %21, !dbg !264
  store double %25, ptr %22, align 8, !dbg !264, !tbaa !254
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !265
  br label %272

26:                                               ; preds = %3
  %27 = fcmp ugt double %0, 1.000000e+00, !dbg !266
  br i1 %27, label %112, label %28, !dbg !267

28:                                               ; preds = %26
  %29 = fmul double %0, %0, !dbg !268
  tail call void @llvm.dbg.value(metadata double poison, metadata !213, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata double %29, metadata !216, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 7, metadata !287, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 7, metadata !282, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double poison, metadata !213, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double poison, metadata !217, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  tail call void @llvm.dbg.value(metadata double poison, metadata !217, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !269
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 8, metadata !287, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 8, metadata !282, metadata !DIExpression()), !dbg !303
  %30 = fmul double %29, %0, !dbg !307
  tail call void @llvm.dbg.value(metadata double %30, metadata !213, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata double %30, metadata !279, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double %30, metadata !279, metadata !DIExpression()), !dbg !303
  %31 = fmul double %30, 2.000000e+00, !dbg !308
  %32 = fadd double %31, 1.000000e+00, !dbg !309
  %33 = fadd double %32, -1.000000e+00, !dbg !310
  %34 = fmul double %33, 5.000000e-01, !dbg !311
  call void @llvm.dbg.value(metadata double %34, metadata !285, metadata !DIExpression()), !dbg !303
  %35 = fmul double %34, 2.000000e+00, !dbg !312
  call void @llvm.dbg.value(metadata double %35, metadata !286, metadata !DIExpression()), !dbg !303
  %36 = fadd double %31, 1.000000e+00, !dbg !313
  %37 = fadd double %36, -1.000000e+00, !dbg !314
  %38 = fmul double %37, 5.000000e-01, !dbg !315
  call void @llvm.dbg.value(metadata double %38, metadata !285, metadata !DIExpression()), !dbg !292
  %39 = fmul double %38, 2.000000e+00, !dbg !316
  call void @llvm.dbg.value(metadata double %39, metadata !286, metadata !DIExpression()), !dbg !292
  %40 = fmul double %39, 0.000000e+00, !dbg !317
  %41 = fadd double %40, 5.220000e-18, !dbg !318
  call void @llvm.dbg.value(metadata double %41, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double %41, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %41, metadata !284, metadata !DIExpression()), !dbg !292
  %42 = fmul double %39, %41, !dbg !317
  %43 = fadd double %42, 5.046220e-15, !dbg !318
  call void @llvm.dbg.value(metadata double %43, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double %43, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %43, metadata !284, metadata !DIExpression()), !dbg !292
  %44 = fmul double %39, %43, !dbg !317
  %45 = fsub double %44, %41, !dbg !319
  %46 = fadd double %45, 0x3D8FF5705AC91EC3, !dbg !318
  call void @llvm.dbg.value(metadata double %46, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double %46, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %46, metadata !284, metadata !DIExpression()), !dbg !292
  %47 = fmul double %39, %46, !dbg !317
  %48 = fsub double %47, %43, !dbg !319
  %49 = fadd double %48, 0x3E1FD58801700D16, !dbg !318
  call void @llvm.dbg.value(metadata double %49, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double %49, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %49, metadata !284, metadata !DIExpression()), !dbg !292
  %50 = fmul double %39, %49, !dbg !317
  %51 = fsub double %50, %46, !dbg !319
  %52 = fadd double %51, 0x3EA4E432D4BABD0B, !dbg !318
  call void @llvm.dbg.value(metadata double %52, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double %52, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %52, metadata !284, metadata !DIExpression()), !dbg !292
  %53 = fmul double %39, %52, !dbg !317
  %54 = fsub double %53, %49, !dbg !319
  %55 = fadd double %54, 0x3F2028A015BCE79A, !dbg !318
  call void @llvm.dbg.value(metadata double %55, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double %55, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %55, metadata !284, metadata !DIExpression()), !dbg !292
  %56 = fmul double %39, %55, !dbg !317
  %57 = fsub double %56, %52, !dbg !319
  %58 = fadd double %57, 0x3F883D8B51EBDE69, !dbg !318
  call void @llvm.dbg.value(metadata double %58, metadata !283, metadata !DIExpression()), !dbg !292
  %59 = fmul double %38, %58, !dbg !320
  %60 = fsub double %59, %55, !dbg !321
  %61 = fadd double %60, 0x3FAAF346E8C752A0, !dbg !322
  tail call void @llvm.dbg.value(metadata double %61, metadata !217, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !323
  %62 = fmul double %35, 0.000000e+00, !dbg !324
  %63 = fadd double %62, 3.140000e-19, !dbg !325
  call void @llvm.dbg.value(metadata double %63, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %63, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %63, metadata !288, metadata !DIExpression()), !dbg !323
  %64 = fmul double %35, %63, !dbg !324
  %65 = fadd double %64, 3.315620e-16, !dbg !325
  call void @llvm.dbg.value(metadata double %65, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %63, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %65, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %63, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %65, metadata !288, metadata !DIExpression()), !dbg !323
  %66 = fmul double %35, %65, !dbg !324
  %67 = fsub double %66, %63, !dbg !326
  %68 = fadd double %67, 0x3D529E6336575AAD, !dbg !325
  call void @llvm.dbg.value(metadata double %68, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %65, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %68, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %65, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %68, metadata !288, metadata !DIExpression()), !dbg !323
  %69 = fmul double %35, %68, !dbg !324
  %70 = fsub double %69, %65, !dbg !326
  %71 = fadd double %70, 0x3DE4F2377D2D1DB9, !dbg !325
  call void @llvm.dbg.value(metadata double %71, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %68, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %71, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %68, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %71, metadata !288, metadata !DIExpression()), !dbg !323
  %72 = fmul double %35, %71, !dbg !324
  %73 = fsub double %72, %68, !dbg !326
  %74 = fadd double %73, 0x3E6FE9188AD28E95, !dbg !325
  call void @llvm.dbg.value(metadata double %74, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %71, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %74, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %71, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %74, metadata !288, metadata !DIExpression()), !dbg !323
  %75 = fmul double %35, %74, !dbg !324
  %76 = fsub double %75, %71, !dbg !326
  %77 = fadd double %76, 0x3EEDEABB5FA79163, !dbg !325
  call void @llvm.dbg.value(metadata double %77, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %74, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %77, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %74, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %77, metadata !288, metadata !DIExpression()), !dbg !323
  %78 = fmul double %35, %77, !dbg !324
  %79 = fsub double %78, %74, !dbg !326
  %80 = fadd double %79, 0x3F5D73A8A245C45E, !dbg !325
  call void @llvm.dbg.value(metadata double %80, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %77, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %80, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %77, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %80, metadata !288, metadata !DIExpression()), !dbg !323
  %81 = fmul double %35, %80, !dbg !324
  %82 = fsub double %81, %77, !dbg !326
  %83 = fadd double %82, 0x3FB618CD01E9DF15, !dbg !325
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %80, metadata !284, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !303
  %84 = fmul double %34, %83, !dbg !327
  %85 = fsub double %84, %80, !dbg !328
  %86 = fadd double %85, 0x3F85BE5570E6DAF5, !dbg !329
  tail call void @llvm.dbg.value(metadata double %86, metadata !218, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  %87 = tail call double @llvm.fabs.f64(double %86), !dbg !330
  %88 = fmul double %87, 0x3CB0000000000000, !dbg !331
  %89 = fadd double %88, 3.140000e-19, !dbg !332
  tail call void @llvm.dbg.value(metadata double %89, metadata !218, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !269
  %90 = fadd double %61, 1.250000e-01, !dbg !333
  %91 = fmul double %29, %90, !dbg !334
  %92 = fsub double %91, %86, !dbg !335
  %93 = fadd double %92, -2.500000e-01, !dbg !336
  store double %93, ptr %2, align 8, !dbg !337, !tbaa !244
  %94 = fmul double %29, %61, !dbg !338
  %95 = tail call double @llvm.fabs.f64(double %94), !dbg !339
  %96 = fadd double %95, %89, !dbg !340
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !341
  %98 = tail call double @llvm.fabs.f64(double %93), !dbg !342
  %99 = fmul double %98, 0x3CB0000000000000, !dbg !343
  %100 = fadd double %96, %99, !dbg !344
  store double %100, ptr %97, align 8, !dbg !344, !tbaa !254
  %101 = fcmp ogt double %0, 0x3DC428A2F98D7292, !dbg !345
  br i1 %101, label %102, label %272, !dbg !346

102:                                              ; preds = %28
  %103 = fmul double %0, 2.000000e+00, !dbg !347
  %104 = tail call double @sqrt(double noundef %0) #7, !dbg !348
  %105 = fmul double %103, %104, !dbg !349
  %106 = fdiv double %105, 3.000000e+00, !dbg !350
  %107 = tail call double @exp(double noundef %106) #7, !dbg !351
  tail call void @llvm.dbg.value(metadata double %107, metadata !219, metadata !DIExpression()), !dbg !352
  %108 = load double, ptr %2, align 8, !dbg !353, !tbaa !244
  %109 = fmul double %107, %108, !dbg !353
  store double %109, ptr %2, align 8, !dbg !353, !tbaa !244
  %110 = load double, ptr %97, align 8, !dbg !354, !tbaa !254
  %111 = fmul double %107, %110, !dbg !354
  store double %111, ptr %97, align 8, !dbg !354, !tbaa !254
  br label %272, !dbg !355

112:                                              ; preds = %26
  %113 = fcmp ugt double %0, 4.000000e+00, !dbg !356
  %114 = tail call double @sqrt(double noundef %0) #7, !dbg !357
  %115 = fmul double %114, %0, !dbg !357
  %116 = fdiv double 1.600000e+01, %115, !dbg !357
  br i1 %113, label %195, label %117, !dbg !358

117:                                              ; preds = %112
  tail call void @llvm.dbg.value(metadata double %114, metadata !222, metadata !DIExpression()), !dbg !359
  %118 = fadd double %116, -9.000000e+00, !dbg !360
  %119 = fdiv double %118, 7.000000e+00, !dbg !361
  tail call void @llvm.dbg.value(metadata double %119, metadata !225, metadata !DIExpression()), !dbg !359
  %120 = tail call double @sqrt(double noundef %114) #7, !dbg !362
  tail call void @llvm.dbg.value(metadata double %120, metadata !226, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %119, metadata !279, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !363
  %121 = fmul double %119, 2.000000e+00, !dbg !365
  %122 = fadd double %121, 1.000000e+00, !dbg !366
  %123 = fadd double %122, -1.000000e+00, !dbg !367
  %124 = fmul double %123, 5.000000e-01, !dbg !368
  call void @llvm.dbg.value(metadata double %124, metadata !285, metadata !DIExpression()), !dbg !363
  %125 = fmul double %124, 2.000000e+00, !dbg !369
  call void @llvm.dbg.value(metadata double %125, metadata !286, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !370
  %126 = and i32 %1, 7, !dbg !372
  %127 = icmp eq i32 %126, 0, !dbg !373
  %128 = select i1 %127, i32 24, i32 14, !dbg !374
  call void @llvm.dbg.value(metadata i32 %128, metadata !287, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32 %128, metadata !282, metadata !DIExpression()), !dbg !363
  %129 = zext nneg i32 %128 to i64, !dbg !375
  %130 = and i64 %129, 2, !dbg !375
  %131 = icmp eq i64 %130, 0, !dbg !375
  br i1 %131, label %145, label %132, !dbg !375

132:                                              ; preds = %117, %132
  %133 = phi i64 [ %142, %132 ], [ %129, %117 ]
  %134 = phi double [ %141, %132 ], [ 0.000000e+00, %117 ]
  %135 = phi double [ %134, %132 ], [ 0.000000e+00, %117 ]
  %136 = phi i64 [ %143, %132 ], [ 0, %117 ]
  call void @llvm.dbg.value(metadata i64 %133, metadata !282, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %134, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %135, metadata !284, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %134, metadata !288, metadata !DIExpression()), !dbg !376
  %137 = fmul double %125, %134, !dbg !377
  %138 = fsub double %137, %135, !dbg !378
  %139 = getelementptr inbounds double, ptr @aip1_data, i64 %133, !dbg !379
  %140 = load double, ptr %139, align 8, !dbg !379, !tbaa !380
  %141 = fadd double %138, %140, !dbg !381
  call void @llvm.dbg.value(metadata double %141, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %134, metadata !284, metadata !DIExpression()), !dbg !363
  %142 = add nsw i64 %133, -1, !dbg !382
  call void @llvm.dbg.value(metadata i64 %142, metadata !282, metadata !DIExpression()), !dbg !363
  %143 = add i64 %136, 1, !dbg !375
  %144 = icmp eq i64 %143, %130, !dbg !375
  br i1 %144, label %145, label %132, !dbg !375, !llvm.loop !383

145:                                              ; preds = %117, %132
  %146 = phi i64 [ %129, %117 ], [ %142, %132 ]
  %147 = phi double [ 0.000000e+00, %117 ], [ %141, %132 ]
  %148 = phi double [ 0.000000e+00, %117 ], [ %134, %132 ]
  br label %149, !dbg !375

149:                                              ; preds = %149, %145
  %150 = phi i64 [ %146, %145 ], [ %174, %149 ]
  %151 = phi double [ %147, %145 ], [ %173, %149 ]
  %152 = phi double [ %148, %145 ], [ %167, %149 ]
  call void @llvm.dbg.value(metadata i64 %150, metadata !282, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %151, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %152, metadata !284, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %151, metadata !288, metadata !DIExpression()), !dbg !376
  %153 = fmul double %125, %151, !dbg !377
  %154 = fsub double %153, %152, !dbg !378
  %155 = getelementptr inbounds double, ptr @aip1_data, i64 %150, !dbg !379
  %156 = load double, ptr %155, align 8, !dbg !379, !tbaa !380
  %157 = fadd double %154, %156, !dbg !381
  call void @llvm.dbg.value(metadata double %157, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %151, metadata !284, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 %150, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata i64 %150, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata double %157, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %151, metadata !284, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %157, metadata !288, metadata !DIExpression()), !dbg !376
  %158 = fmul double %125, %157, !dbg !377
  %159 = fsub double %158, %151, !dbg !378
  %160 = getelementptr double, ptr getelementptr (double, ptr @aip1_data, i64 -1), i64 %150, !dbg !379
  %161 = load double, ptr %160, align 8, !dbg !379, !tbaa !380
  %162 = fadd double %159, %161, !dbg !381
  call void @llvm.dbg.value(metadata double %162, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %157, metadata !284, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 %150, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata i64 %150, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata double %162, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %157, metadata !284, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %162, metadata !288, metadata !DIExpression()), !dbg !376
  %163 = fmul double %125, %162, !dbg !377
  %164 = fsub double %163, %157, !dbg !378
  %165 = getelementptr double, ptr getelementptr (double, ptr @aip1_data, i64 -2), i64 %150, !dbg !379
  %166 = load double, ptr %165, align 8, !dbg !379, !tbaa !380
  %167 = fadd double %164, %166, !dbg !381
  call void @llvm.dbg.value(metadata double %167, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %162, metadata !284, metadata !DIExpression()), !dbg !363
  %168 = add nsw i64 %150, -3, !dbg !382
  call void @llvm.dbg.value(metadata i64 %168, metadata !282, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 %168, metadata !282, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %167, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %162, metadata !284, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %167, metadata !288, metadata !DIExpression()), !dbg !376
  %169 = fmul double %125, %167, !dbg !377
  %170 = fsub double %169, %162, !dbg !378
  %171 = getelementptr inbounds double, ptr @aip1_data, i64 %168, !dbg !379
  %172 = load double, ptr %171, align 8, !dbg !379, !tbaa !380
  %173 = fadd double %170, %172, !dbg !381
  call void @llvm.dbg.value(metadata double %173, metadata !283, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %167, metadata !284, metadata !DIExpression()), !dbg !363
  %174 = add nsw i64 %150, -4, !dbg !382
  call void @llvm.dbg.value(metadata i64 %174, metadata !282, metadata !DIExpression()), !dbg !363
  %175 = icmp ugt i64 %168, 1, !dbg !385
  br i1 %175, label %149, label %176, !dbg !375, !llvm.loop !386

176:                                              ; preds = %149
  %177 = fmul double %124, %173, !dbg !389
  %178 = fsub double %177, %167, !dbg !390
  %179 = fadd double %178, 0x3F925FB773C0A3CB, !dbg !391
  tail call void @llvm.dbg.value(metadata double %179, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !359
  %180 = tail call double @llvm.fabs.f64(double %179), !dbg !392
  %181 = fmul double %180, 0x3CB0000000000000, !dbg !393
  %182 = zext nneg i32 %128 to i64, !dbg !394
  %183 = getelementptr inbounds double, ptr @aip1_data, i64 %182, !dbg !394
  %184 = load double, ptr %183, align 16, !dbg !394, !tbaa !380
  %185 = tail call double @llvm.fabs.f64(double %184), !dbg !395
  %186 = fadd double %185, %181, !dbg !396
  tail call void @llvm.dbg.value(metadata double %186, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !359
  %187 = fadd double %179, 2.812500e-01, !dbg !397
  %188 = fneg double %187, !dbg !398
  %189 = fmul double %120, %188, !dbg !399
  store double %189, ptr %2, align 8, !dbg !400, !tbaa !244
  %190 = fmul double %120, %186, !dbg !401
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !402
  %192 = tail call double @llvm.fabs.f64(double %189), !dbg !403
  %193 = fmul double %192, 0x3CB0000000000000, !dbg !404
  %194 = fadd double %190, %193, !dbg !405
  store double %194, ptr %191, align 8, !dbg !405, !tbaa !254
  br label %272

195:                                              ; preds = %112
  tail call void @llvm.dbg.value(metadata double %114, metadata !228, metadata !DIExpression()), !dbg !406
  %196 = fadd double %116, -1.000000e+00, !dbg !407
  tail call void @llvm.dbg.value(metadata double %196, metadata !230, metadata !DIExpression()), !dbg !406
  %197 = tail call double @sqrt(double noundef %114) #7, !dbg !408
  tail call void @llvm.dbg.value(metadata double %197, metadata !231, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %196, metadata !279, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !409
  %198 = fmul double %196, 2.000000e+00, !dbg !411
  %199 = fadd double %198, 1.000000e+00, !dbg !412
  %200 = fadd double %199, -1.000000e+00, !dbg !413
  %201 = fmul double %200, 5.000000e-01, !dbg !414
  call void @llvm.dbg.value(metadata double %201, metadata !285, metadata !DIExpression()), !dbg !409
  %202 = fmul double %201, 2.000000e+00, !dbg !415
  call void @llvm.dbg.value(metadata double %202, metadata !286, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !416
  %203 = and i32 %1, 7, !dbg !418
  %204 = icmp eq i32 %203, 0, !dbg !419
  %205 = select i1 %204, i32 14, i32 9, !dbg !420
  call void @llvm.dbg.value(metadata i32 %205, metadata !287, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 %205, metadata !282, metadata !DIExpression()), !dbg !409
  %206 = zext nneg i32 %205 to i64, !dbg !421
  %207 = and i64 %206, 3, !dbg !421
  %208 = icmp eq i64 %207, 0, !dbg !421
  br i1 %208, label %222, label %209, !dbg !421

209:                                              ; preds = %195, %209
  %210 = phi i64 [ %219, %209 ], [ %206, %195 ]
  %211 = phi double [ %218, %209 ], [ 0.000000e+00, %195 ]
  %212 = phi double [ %211, %209 ], [ 0.000000e+00, %195 ]
  %213 = phi i64 [ %220, %209 ], [ 0, %195 ]
  call void @llvm.dbg.value(metadata i64 %210, metadata !282, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %211, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %212, metadata !284, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %211, metadata !288, metadata !DIExpression()), !dbg !422
  %214 = fmul double %202, %211, !dbg !423
  %215 = fsub double %214, %212, !dbg !424
  %216 = getelementptr inbounds double, ptr @aip2_data, i64 %210, !dbg !425
  %217 = load double, ptr %216, align 8, !dbg !425, !tbaa !380
  %218 = fadd double %215, %217, !dbg !426
  call void @llvm.dbg.value(metadata double %218, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %211, metadata !284, metadata !DIExpression()), !dbg !409
  %219 = add nsw i64 %210, -1, !dbg !427
  call void @llvm.dbg.value(metadata i64 %219, metadata !282, metadata !DIExpression()), !dbg !409
  %220 = add i64 %213, 1, !dbg !421
  %221 = icmp eq i64 %220, %207, !dbg !421
  br i1 %221, label %222, label %209, !dbg !421, !llvm.loop !428

222:                                              ; preds = %195, %209
  %223 = phi i64 [ %206, %195 ], [ %219, %209 ]
  %224 = phi double [ 0.000000e+00, %195 ], [ %218, %209 ]
  %225 = phi double [ 0.000000e+00, %195 ], [ %211, %209 ]
  br label %226, !dbg !421

226:                                              ; preds = %226, %222
  %227 = phi i64 [ %223, %222 ], [ %251, %226 ]
  %228 = phi double [ %224, %222 ], [ %250, %226 ]
  %229 = phi double [ %225, %222 ], [ %244, %226 ]
  call void @llvm.dbg.value(metadata i64 %227, metadata !282, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %228, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %229, metadata !284, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %228, metadata !288, metadata !DIExpression()), !dbg !422
  %230 = fmul double %202, %228, !dbg !423
  %231 = fsub double %230, %229, !dbg !424
  %232 = getelementptr inbounds double, ptr @aip2_data, i64 %227, !dbg !425
  %233 = load double, ptr %232, align 8, !dbg !425, !tbaa !380
  %234 = fadd double %231, %233, !dbg !426
  call void @llvm.dbg.value(metadata double %234, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %228, metadata !284, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i64 %227, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !409
  call void @llvm.dbg.value(metadata i64 %227, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !409
  call void @llvm.dbg.value(metadata double %234, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %228, metadata !284, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %234, metadata !288, metadata !DIExpression()), !dbg !422
  %235 = fmul double %202, %234, !dbg !423
  %236 = fsub double %235, %228, !dbg !424
  %237 = getelementptr double, ptr getelementptr (double, ptr @aip2_data, i64 -1), i64 %227, !dbg !425
  %238 = load double, ptr %237, align 8, !dbg !425, !tbaa !380
  %239 = fadd double %236, %238, !dbg !426
  call void @llvm.dbg.value(metadata double %239, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %234, metadata !284, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i64 %227, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !409
  call void @llvm.dbg.value(metadata i64 %227, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !409
  call void @llvm.dbg.value(metadata double %239, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %234, metadata !284, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %239, metadata !288, metadata !DIExpression()), !dbg !422
  %240 = fmul double %202, %239, !dbg !423
  %241 = fsub double %240, %234, !dbg !424
  %242 = getelementptr double, ptr getelementptr (double, ptr @aip2_data, i64 -2), i64 %227, !dbg !425
  %243 = load double, ptr %242, align 8, !dbg !425, !tbaa !380
  %244 = fadd double %241, %243, !dbg !426
  call void @llvm.dbg.value(metadata double %244, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %239, metadata !284, metadata !DIExpression()), !dbg !409
  %245 = add nsw i64 %227, -3, !dbg !427
  call void @llvm.dbg.value(metadata i64 %245, metadata !282, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i64 %245, metadata !282, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %244, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %239, metadata !284, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %244, metadata !288, metadata !DIExpression()), !dbg !422
  %246 = fmul double %202, %244, !dbg !423
  %247 = fsub double %246, %239, !dbg !424
  %248 = getelementptr inbounds double, ptr @aip2_data, i64 %245, !dbg !425
  %249 = load double, ptr %248, align 8, !dbg !425, !tbaa !380
  %250 = fadd double %247, %249, !dbg !426
  call void @llvm.dbg.value(metadata double %250, metadata !283, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata double %244, metadata !284, metadata !DIExpression()), !dbg !409
  %251 = add nsw i64 %227, -4, !dbg !427
  call void @llvm.dbg.value(metadata i64 %251, metadata !282, metadata !DIExpression()), !dbg !409
  %252 = icmp ugt i64 %245, 1, !dbg !429
  br i1 %252, label %226, label %253, !dbg !421, !llvm.loop !430

253:                                              ; preds = %226
  %254 = fmul double %201, %250, !dbg !432
  %255 = fsub double %254, %244, !dbg !433
  %256 = fadd double %255, 0x3F6ACFBC8A301CC2, !dbg !434
  tail call void @llvm.dbg.value(metadata double %256, metadata !232, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !406
  %257 = tail call double @llvm.fabs.f64(double %256), !dbg !435
  %258 = fmul double %257, 0x3CB0000000000000, !dbg !436
  %259 = zext nneg i32 %205 to i64, !dbg !437
  %260 = getelementptr inbounds double, ptr @aip2_data, i64 %259, !dbg !437
  %261 = load double, ptr %260, align 8, !dbg !437, !tbaa !380
  %262 = tail call double @llvm.fabs.f64(double %261), !dbg !438
  %263 = fadd double %262, %258, !dbg !439
  tail call void @llvm.dbg.value(metadata double %263, metadata !232, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !406
  %264 = fadd double %256, 2.812500e-01, !dbg !440
  %265 = fneg double %264, !dbg !441
  %266 = fmul double %197, %265, !dbg !442
  store double %266, ptr %2, align 8, !dbg !443, !tbaa !244
  %267 = fmul double %197, %263, !dbg !444
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !445
  %269 = tail call double @llvm.fabs.f64(double %266), !dbg !446
  %270 = fmul double %269, 0x3CB0000000000000, !dbg !447
  %271 = fadd double %267, %270, !dbg !448
  store double %271, ptr %268, align 8, !dbg !448, !tbaa !254
  br label %272

272:                                              ; preds = %28, %102, %253, %176, %7
  %273 = phi i32 [ %8, %7 ], [ 0, %176 ], [ 0, %253 ], [ 0, %102 ], [ 0, %28 ], !dbg !449
  ret i32 %273, !dbg !450
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !451 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !455, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !456, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !458, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata double 0x4002D97C7F3321D2, metadata !459, metadata !DIExpression()), !dbg !474
  %5 = fcmp ugt double %0, -4.000000e+00, !dbg !475
  br i1 %5, label %128, label %6, !dbg !476

6:                                                ; preds = %4
  %7 = fmul double %0, %0, !dbg !477
  %8 = fmul double %7, %0, !dbg !478
  %9 = fdiv double 1.280000e+02, %8, !dbg !479
  %10 = fadd double %9, 1.000000e+00, !dbg !480
  tail call void @llvm.dbg.value(metadata double %10, metadata !465, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %10, metadata !279, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !482
  %11 = fmul double %10, 2.000000e+00, !dbg !484
  %12 = fadd double %11, 1.000000e+00, !dbg !485
  %13 = fadd double %12, -1.000000e+00, !dbg !486
  %14 = fmul double %13, 5.000000e-01, !dbg !487
  call void @llvm.dbg.value(metadata double %14, metadata !285, metadata !DIExpression()), !dbg !482
  %15 = fmul double %14, 2.000000e+00, !dbg !488
  call void @llvm.dbg.value(metadata double %15, metadata !286, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !489
  %16 = and i32 %1, 7, !dbg !491
  %17 = icmp eq i32 %16, 0, !dbg !492
  %18 = select i1 %17, i32 15, i32 8, !dbg !493
  call void @llvm.dbg.value(metadata i32 %18, metadata !287, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32 %18, metadata !282, metadata !DIExpression()), !dbg !482
  %19 = zext nneg i32 %18 to i64, !dbg !494
  %20 = and i64 %19, 3, !dbg !494
  %21 = icmp eq i64 %20, 0, !dbg !494
  br i1 %21, label %35, label %22, !dbg !494

22:                                               ; preds = %6, %22
  %23 = phi i64 [ %32, %22 ], [ %19, %6 ]
  %24 = phi double [ %31, %22 ], [ 0.000000e+00, %6 ]
  %25 = phi double [ %24, %22 ], [ 0.000000e+00, %6 ]
  %26 = phi i64 [ %33, %22 ], [ 0, %6 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !282, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %24, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %25, metadata !284, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %24, metadata !288, metadata !DIExpression()), !dbg !495
  %27 = fmul double %15, %24, !dbg !496
  %28 = fsub double %27, %25, !dbg !497
  %29 = getelementptr inbounds double, ptr @an20_data, i64 %23, !dbg !498
  %30 = load double, ptr %29, align 8, !dbg !498, !tbaa !380
  %31 = fadd double %28, %30, !dbg !499
  call void @llvm.dbg.value(metadata double %31, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %24, metadata !284, metadata !DIExpression()), !dbg !482
  %32 = add nsw i64 %23, -1, !dbg !500
  call void @llvm.dbg.value(metadata i64 %32, metadata !282, metadata !DIExpression()), !dbg !482
  %33 = add i64 %26, 1, !dbg !494
  %34 = icmp eq i64 %33, %20, !dbg !494
  br i1 %34, label %35, label %22, !dbg !494, !llvm.loop !501

35:                                               ; preds = %6, %22
  %36 = phi i64 [ %19, %6 ], [ %32, %22 ]
  %37 = phi double [ 0.000000e+00, %6 ], [ %31, %22 ]
  %38 = phi double [ 0.000000e+00, %6 ], [ %24, %22 ]
  br label %39, !dbg !494

39:                                               ; preds = %39, %35
  %40 = phi i64 [ %36, %35 ], [ %64, %39 ]
  %41 = phi double [ %37, %35 ], [ %63, %39 ]
  %42 = phi double [ %38, %35 ], [ %57, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !282, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %41, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %42, metadata !284, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %41, metadata !288, metadata !DIExpression()), !dbg !495
  %43 = fmul double %15, %41, !dbg !496
  %44 = fsub double %43, %42, !dbg !497
  %45 = getelementptr inbounds double, ptr @an20_data, i64 %40, !dbg !498
  %46 = load double, ptr %45, align 8, !dbg !498, !tbaa !380
  %47 = fadd double %44, %46, !dbg !499
  call void @llvm.dbg.value(metadata double %47, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %41, metadata !284, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 %40, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !482
  call void @llvm.dbg.value(metadata i64 %40, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !482
  call void @llvm.dbg.value(metadata double %47, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %41, metadata !284, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %47, metadata !288, metadata !DIExpression()), !dbg !495
  %48 = fmul double %15, %47, !dbg !496
  %49 = fsub double %48, %41, !dbg !497
  %50 = getelementptr double, ptr getelementptr (double, ptr @an20_data, i64 -1), i64 %40, !dbg !498
  %51 = load double, ptr %50, align 8, !dbg !498, !tbaa !380
  %52 = fadd double %49, %51, !dbg !499
  call void @llvm.dbg.value(metadata double %52, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %47, metadata !284, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 %40, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !482
  call void @llvm.dbg.value(metadata i64 %40, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !482
  call void @llvm.dbg.value(metadata double %52, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %47, metadata !284, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %52, metadata !288, metadata !DIExpression()), !dbg !495
  %53 = fmul double %15, %52, !dbg !496
  %54 = fsub double %53, %47, !dbg !497
  %55 = getelementptr double, ptr getelementptr (double, ptr @an20_data, i64 -2), i64 %40, !dbg !498
  %56 = load double, ptr %55, align 8, !dbg !498, !tbaa !380
  %57 = fadd double %54, %56, !dbg !499
  call void @llvm.dbg.value(metadata double %57, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %52, metadata !284, metadata !DIExpression()), !dbg !482
  %58 = add nsw i64 %40, -3, !dbg !500
  call void @llvm.dbg.value(metadata i64 %58, metadata !282, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 %58, metadata !282, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %57, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %52, metadata !284, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %57, metadata !288, metadata !DIExpression()), !dbg !495
  %59 = fmul double %15, %57, !dbg !496
  %60 = fsub double %59, %52, !dbg !497
  %61 = getelementptr inbounds double, ptr @an20_data, i64 %58, !dbg !498
  %62 = load double, ptr %61, align 8, !dbg !498, !tbaa !380
  %63 = fadd double %60, %62, !dbg !499
  call void @llvm.dbg.value(metadata double %63, metadata !283, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %57, metadata !284, metadata !DIExpression()), !dbg !482
  %64 = add nsw i64 %40, -4, !dbg !500
  call void @llvm.dbg.value(metadata i64 %64, metadata !282, metadata !DIExpression()), !dbg !482
  %65 = icmp ugt i64 %58, 1, !dbg !502
  br i1 %65, label %39, label %66, !dbg !494, !llvm.loop !503

66:                                               ; preds = %39
  %67 = fmul double %14, %63, !dbg !505
  %68 = fsub double %67, %57, !dbg !506
  %69 = fadd double %68, 0x3F79F46B06647521, !dbg !507
  tail call void @llvm.dbg.value(metadata double %69, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  %70 = tail call double @llvm.fabs.f64(double %69), !dbg !508
  %71 = fmul double %70, 0x3CB0000000000000, !dbg !509
  %72 = zext nneg i32 %18 to i64, !dbg !510
  %73 = getelementptr inbounds double, ptr @an20_data, i64 %72, !dbg !510
  %74 = load double, ptr %73, align 8, !dbg !510, !tbaa !380
  %75 = tail call double @llvm.fabs.f64(double %74), !dbg !511
  %76 = fadd double %75, %71, !dbg !512
  tail call void @llvm.dbg.value(metadata double %76, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %10, metadata !279, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !513
  %77 = fadd double %11, 1.000000e+00, !dbg !515
  %78 = fadd double %77, -1.000000e+00, !dbg !516
  %79 = fmul double %78, 5.000000e-01, !dbg !517
  call void @llvm.dbg.value(metadata double %79, metadata !285, metadata !DIExpression()), !dbg !513
  %80 = fmul double %79, 2.000000e+00, !dbg !518
  call void @llvm.dbg.value(metadata double %80, metadata !286, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !519
  %81 = select i1 %17, i32 14, i32 7, !dbg !521
  call void @llvm.dbg.value(metadata i32 %81, metadata !287, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %81, metadata !282, metadata !DIExpression()), !dbg !513
  %82 = zext nneg i32 %81 to i64, !dbg !522
  %83 = and i64 %82, 3, !dbg !522
  br label %84, !dbg !522

84:                                               ; preds = %84, %66
  %85 = phi i64 [ %82, %66 ], [ %94, %84 ]
  %86 = phi double [ 0.000000e+00, %66 ], [ %93, %84 ]
  %87 = phi double [ 0.000000e+00, %66 ], [ %86, %84 ]
  %88 = phi i64 [ 0, %66 ], [ %95, %84 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !282, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %86, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %87, metadata !284, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %86, metadata !288, metadata !DIExpression()), !dbg !523
  %89 = fmul double %80, %86, !dbg !524
  %90 = fsub double %89, %87, !dbg !525
  %91 = getelementptr inbounds double, ptr @aph0_data, i64 %85, !dbg !526
  %92 = load double, ptr %91, align 8, !dbg !526, !tbaa !380
  %93 = fadd double %90, %92, !dbg !527
  call void @llvm.dbg.value(metadata double %93, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %86, metadata !284, metadata !DIExpression()), !dbg !513
  %94 = add nsw i64 %85, -1, !dbg !528
  call void @llvm.dbg.value(metadata i64 %94, metadata !282, metadata !DIExpression()), !dbg !513
  %95 = add i64 %88, 1, !dbg !522
  %96 = icmp eq i64 %95, %83, !dbg !522
  br i1 %96, label %97, label %84, !dbg !522, !llvm.loop !529

97:                                               ; preds = %84, %97
  %98 = phi i64 [ %122, %97 ], [ %94, %84 ]
  %99 = phi double [ %121, %97 ], [ %93, %84 ]
  %100 = phi double [ %115, %97 ], [ %86, %84 ]
  call void @llvm.dbg.value(metadata i64 %98, metadata !282, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %99, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %100, metadata !284, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %99, metadata !288, metadata !DIExpression()), !dbg !523
  %101 = fmul double %80, %99, !dbg !524
  %102 = fsub double %101, %100, !dbg !525
  %103 = getelementptr inbounds double, ptr @aph0_data, i64 %98, !dbg !526
  %104 = load double, ptr %103, align 8, !dbg !526, !tbaa !380
  %105 = fadd double %102, %104, !dbg !527
  call void @llvm.dbg.value(metadata double %105, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %99, metadata !284, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i64 %98, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  call void @llvm.dbg.value(metadata i64 %98, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  call void @llvm.dbg.value(metadata double %105, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %99, metadata !284, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %105, metadata !288, metadata !DIExpression()), !dbg !523
  %106 = fmul double %80, %105, !dbg !524
  %107 = fsub double %106, %99, !dbg !525
  %108 = getelementptr double, ptr getelementptr (double, ptr @aph0_data, i64 -1), i64 %98, !dbg !526
  %109 = load double, ptr %108, align 8, !dbg !526, !tbaa !380
  %110 = fadd double %107, %109, !dbg !527
  call void @llvm.dbg.value(metadata double %110, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %105, metadata !284, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i64 %98, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  call void @llvm.dbg.value(metadata i64 %98, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  call void @llvm.dbg.value(metadata double %110, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %105, metadata !284, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %110, metadata !288, metadata !DIExpression()), !dbg !523
  %111 = fmul double %80, %110, !dbg !524
  %112 = fsub double %111, %105, !dbg !525
  %113 = getelementptr double, ptr getelementptr (double, ptr @aph0_data, i64 -2), i64 %98, !dbg !526
  %114 = load double, ptr %113, align 8, !dbg !526, !tbaa !380
  %115 = fadd double %112, %114, !dbg !527
  call void @llvm.dbg.value(metadata double %115, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %110, metadata !284, metadata !DIExpression()), !dbg !513
  %116 = add nsw i64 %98, -3, !dbg !528
  call void @llvm.dbg.value(metadata i64 %116, metadata !282, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i64 %116, metadata !282, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %115, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %110, metadata !284, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %115, metadata !288, metadata !DIExpression()), !dbg !523
  %117 = fmul double %80, %115, !dbg !524
  %118 = fsub double %117, %110, !dbg !525
  %119 = getelementptr inbounds double, ptr @aph0_data, i64 %116, !dbg !526
  %120 = load double, ptr %119, align 8, !dbg !526, !tbaa !380
  %121 = fadd double %118, %120, !dbg !527
  call void @llvm.dbg.value(metadata double %121, metadata !283, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %115, metadata !284, metadata !DIExpression()), !dbg !513
  %122 = add nsw i64 %98, -4, !dbg !528
  call void @llvm.dbg.value(metadata i64 %122, metadata !282, metadata !DIExpression()), !dbg !513
  %123 = icmp ugt i64 %116, 1, !dbg !530
  br i1 %123, label %97, label %124, !dbg !522, !llvm.loop !531

124:                                              ; preds = %97
  %125 = fmul double %79, %121, !dbg !533
  %126 = fsub double %125, %115, !dbg !534
  %127 = fadd double %126, 0xBFA5E8E4C218AC34, !dbg !535
  tail call void @llvm.dbg.value(metadata double %127, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  tail call void @llvm.dbg.value(metadata double %331, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  br label %319, !dbg !536

128:                                              ; preds = %4
  %129 = fcmp ugt double %0, -2.000000e+00, !dbg !537
  br i1 %129, label %223, label %130, !dbg !538

130:                                              ; preds = %128
  %131 = fmul double %0, %0, !dbg !539
  %132 = fmul double %131, %0, !dbg !540
  %133 = fdiv double 1.280000e+02, %132, !dbg !541
  %134 = fadd double %133, 9.000000e+00, !dbg !542
  %135 = fdiv double %134, 7.000000e+00, !dbg !543
  tail call void @llvm.dbg.value(metadata double %135, metadata !468, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %135, metadata !279, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !545
  %136 = fmul double %135, 2.000000e+00, !dbg !547
  %137 = fadd double %136, 1.000000e+00, !dbg !548
  %138 = fadd double %137, -1.000000e+00, !dbg !549
  %139 = fmul double %138, 5.000000e-01, !dbg !550
  call void @llvm.dbg.value(metadata double %139, metadata !285, metadata !DIExpression()), !dbg !545
  %140 = fmul double %139, 2.000000e+00, !dbg !551
  call void @llvm.dbg.value(metadata double %140, metadata !286, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !552
  %141 = and i32 %1, 7, !dbg !554
  %142 = icmp eq i32 %141, 0, !dbg !555
  %143 = select i1 %142, i32 23, i32 12, !dbg !556
  call void @llvm.dbg.value(metadata i32 %143, metadata !287, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %143, metadata !282, metadata !DIExpression()), !dbg !545
  %144 = zext nneg i32 %143 to i64, !dbg !557
  %145 = and i64 %144, 3, !dbg !557
  %146 = icmp eq i64 %145, 0, !dbg !557
  br i1 %146, label %160, label %147, !dbg !557

147:                                              ; preds = %130, %147
  %148 = phi i64 [ %157, %147 ], [ %144, %130 ]
  %149 = phi double [ %156, %147 ], [ 0.000000e+00, %130 ]
  %150 = phi double [ %149, %147 ], [ 0.000000e+00, %130 ]
  %151 = phi i64 [ %158, %147 ], [ 0, %130 ]
  call void @llvm.dbg.value(metadata i64 %148, metadata !282, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %149, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %150, metadata !284, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %149, metadata !288, metadata !DIExpression()), !dbg !558
  %152 = fmul double %140, %149, !dbg !559
  %153 = fsub double %152, %150, !dbg !560
  %154 = getelementptr inbounds double, ptr @an21_data, i64 %148, !dbg !561
  %155 = load double, ptr %154, align 8, !dbg !561, !tbaa !380
  %156 = fadd double %153, %155, !dbg !562
  call void @llvm.dbg.value(metadata double %156, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %149, metadata !284, metadata !DIExpression()), !dbg !545
  %157 = add nsw i64 %148, -1, !dbg !563
  call void @llvm.dbg.value(metadata i64 %157, metadata !282, metadata !DIExpression()), !dbg !545
  %158 = add i64 %151, 1, !dbg !557
  %159 = icmp eq i64 %158, %145, !dbg !557
  br i1 %159, label %160, label %147, !dbg !557, !llvm.loop !564

160:                                              ; preds = %130, %147
  %161 = phi i64 [ %144, %130 ], [ %157, %147 ]
  %162 = phi double [ 0.000000e+00, %130 ], [ %156, %147 ]
  %163 = phi double [ 0.000000e+00, %130 ], [ %149, %147 ]
  br label %164, !dbg !557

164:                                              ; preds = %164, %160
  %165 = phi i64 [ %161, %160 ], [ %189, %164 ]
  %166 = phi double [ %162, %160 ], [ %188, %164 ]
  %167 = phi double [ %163, %160 ], [ %182, %164 ]
  call void @llvm.dbg.value(metadata i64 %165, metadata !282, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %166, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %167, metadata !284, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %166, metadata !288, metadata !DIExpression()), !dbg !558
  %168 = fmul double %140, %166, !dbg !559
  %169 = fsub double %168, %167, !dbg !560
  %170 = getelementptr inbounds double, ptr @an21_data, i64 %165, !dbg !561
  %171 = load double, ptr %170, align 8, !dbg !561, !tbaa !380
  %172 = fadd double %169, %171, !dbg !562
  call void @llvm.dbg.value(metadata double %172, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %166, metadata !284, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %165, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  call void @llvm.dbg.value(metadata i64 %165, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  call void @llvm.dbg.value(metadata double %172, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %166, metadata !284, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %172, metadata !288, metadata !DIExpression()), !dbg !558
  %173 = fmul double %140, %172, !dbg !559
  %174 = fsub double %173, %166, !dbg !560
  %175 = getelementptr double, ptr getelementptr (double, ptr @an21_data, i64 -1), i64 %165, !dbg !561
  %176 = load double, ptr %175, align 8, !dbg !561, !tbaa !380
  %177 = fadd double %174, %176, !dbg !562
  call void @llvm.dbg.value(metadata double %177, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %172, metadata !284, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %165, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  call void @llvm.dbg.value(metadata i64 %165, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  call void @llvm.dbg.value(metadata double %177, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %172, metadata !284, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %177, metadata !288, metadata !DIExpression()), !dbg !558
  %178 = fmul double %140, %177, !dbg !559
  %179 = fsub double %178, %172, !dbg !560
  %180 = getelementptr double, ptr getelementptr (double, ptr @an21_data, i64 -2), i64 %165, !dbg !561
  %181 = load double, ptr %180, align 8, !dbg !561, !tbaa !380
  %182 = fadd double %179, %181, !dbg !562
  call void @llvm.dbg.value(metadata double %182, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %177, metadata !284, metadata !DIExpression()), !dbg !545
  %183 = add nsw i64 %165, -3, !dbg !563
  call void @llvm.dbg.value(metadata i64 %183, metadata !282, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %183, metadata !282, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %182, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %177, metadata !284, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %182, metadata !288, metadata !DIExpression()), !dbg !558
  %184 = fmul double %140, %182, !dbg !559
  %185 = fsub double %184, %177, !dbg !560
  %186 = getelementptr inbounds double, ptr @an21_data, i64 %183, !dbg !561
  %187 = load double, ptr %186, align 8, !dbg !561, !tbaa !380
  %188 = fadd double %185, %187, !dbg !562
  call void @llvm.dbg.value(metadata double %188, metadata !283, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %182, metadata !284, metadata !DIExpression()), !dbg !545
  %189 = add nsw i64 %165, -4, !dbg !563
  call void @llvm.dbg.value(metadata i64 %189, metadata !282, metadata !DIExpression()), !dbg !545
  %190 = icmp ugt i64 %183, 1, !dbg !565
  br i1 %190, label %164, label %191, !dbg !557, !llvm.loop !566

191:                                              ; preds = %164
  %192 = fmul double %139, %188, !dbg !568
  %193 = fsub double %192, %182, !dbg !569
  %194 = fadd double %193, 0x3F844EA90E7D1EED, !dbg !570
  tail call void @llvm.dbg.value(metadata double %194, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  %195 = tail call double @llvm.fabs.f64(double %194), !dbg !571
  %196 = fmul double %195, 0x3CB0000000000000, !dbg !572
  %197 = zext nneg i32 %143 to i64, !dbg !573
  %198 = getelementptr inbounds double, ptr @an21_data, i64 %197, !dbg !573
  %199 = load double, ptr %198, align 8, !dbg !573, !tbaa !380
  %200 = tail call double @llvm.fabs.f64(double %199), !dbg !574
  %201 = fadd double %200, %196, !dbg !575
  tail call void @llvm.dbg.value(metadata double %201, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double %135, metadata !279, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !576
  %202 = fadd double %136, 1.000000e+00, !dbg !578
  %203 = fadd double %202, -1.000000e+00, !dbg !579
  %204 = fmul double %203, 5.000000e-01, !dbg !580
  call void @llvm.dbg.value(metadata double %204, metadata !285, metadata !DIExpression()), !dbg !576
  %205 = fmul double %204, 2.000000e+00, !dbg !581
  call void @llvm.dbg.value(metadata double %205, metadata !286, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !582
  %206 = select i1 %142, i32 21, i32 10, !dbg !584
  call void @llvm.dbg.value(metadata i32 %206, metadata !287, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 %206, metadata !282, metadata !DIExpression()), !dbg !576
  %207 = zext nneg i32 %206 to i64, !dbg !585
  br label %208, !dbg !585

208:                                              ; preds = %208, %191
  %209 = phi i64 [ %207, %191 ], [ %217, %208 ]
  %210 = phi double [ 0.000000e+00, %191 ], [ %216, %208 ]
  %211 = phi double [ 0.000000e+00, %191 ], [ %210, %208 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !282, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double %210, metadata !283, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double %211, metadata !284, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double %210, metadata !288, metadata !DIExpression()), !dbg !586
  %212 = fmul double %205, %210, !dbg !587
  %213 = fsub double %212, %211, !dbg !588
  %214 = getelementptr inbounds double, ptr @aph1_data, i64 %209, !dbg !589
  %215 = load double, ptr %214, align 8, !dbg !589, !tbaa !380
  %216 = fadd double %213, %215, !dbg !590
  call void @llvm.dbg.value(metadata double %216, metadata !283, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double %210, metadata !284, metadata !DIExpression()), !dbg !576
  %217 = add nsw i64 %209, -1, !dbg !591
  call void @llvm.dbg.value(metadata i64 %217, metadata !282, metadata !DIExpression()), !dbg !576
  %218 = icmp ugt i64 %209, 1, !dbg !592
  br i1 %218, label %208, label %219, !dbg !585, !llvm.loop !593

219:                                              ; preds = %208
  %220 = fmul double %204, %216, !dbg !595
  %221 = fsub double %220, %210, !dbg !596
  %222 = fadd double %221, 0xBFAA3805029071EF, !dbg !597
  tail call void @llvm.dbg.value(metadata double %222, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  tail call void @llvm.dbg.value(metadata double %331, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  br label %319, !dbg !598

223:                                              ; preds = %128
  %224 = fcmp ugt double %0, -1.000000e+00, !dbg !599
  br i1 %224, label %318, label %225, !dbg !600

225:                                              ; preds = %223
  %226 = fmul double %0, %0, !dbg !601
  %227 = fmul double %226, %0, !dbg !602
  %228 = fdiv double 1.600000e+01, %227, !dbg !603
  %229 = fadd double %228, 9.000000e+00, !dbg !604
  %230 = fdiv double %229, 7.000000e+00, !dbg !605
  tail call void @llvm.dbg.value(metadata double %230, metadata !471, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata double %230, metadata !279, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !607
  %231 = fmul double %230, 2.000000e+00, !dbg !609
  %232 = fadd double %231, 1.000000e+00, !dbg !610
  %233 = fadd double %232, -1.000000e+00, !dbg !611
  %234 = fmul double %233, 5.000000e-01, !dbg !612
  call void @llvm.dbg.value(metadata double %234, metadata !285, metadata !DIExpression()), !dbg !607
  %235 = fmul double %234, 2.000000e+00, !dbg !613
  call void @llvm.dbg.value(metadata double %235, metadata !286, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !614
  %236 = and i32 %1, 7, !dbg !616
  %237 = icmp eq i32 %236, 0, !dbg !617
  %238 = select i1 %237, i32 32, i32 18, !dbg !618
  call void @llvm.dbg.value(metadata i32 %238, metadata !287, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %238, metadata !282, metadata !DIExpression()), !dbg !607
  %239 = zext nneg i32 %238 to i64, !dbg !619
  br label %240, !dbg !619

240:                                              ; preds = %240, %225
  %241 = phi i64 [ %239, %225 ], [ %249, %240 ]
  %242 = phi double [ 0.000000e+00, %225 ], [ %248, %240 ]
  %243 = phi double [ 0.000000e+00, %225 ], [ %242, %240 ]
  call void @llvm.dbg.value(metadata i64 %241, metadata !282, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata double %242, metadata !283, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata double %243, metadata !284, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata double %242, metadata !288, metadata !DIExpression()), !dbg !620
  %244 = fmul double %235, %242, !dbg !621
  %245 = fsub double %244, %243, !dbg !622
  %246 = getelementptr inbounds double, ptr @an22_data, i64 %241, !dbg !623
  %247 = load double, ptr %246, align 8, !dbg !623, !tbaa !380
  %248 = fadd double %245, %247, !dbg !624
  call void @llvm.dbg.value(metadata double %248, metadata !283, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata double %242, metadata !284, metadata !DIExpression()), !dbg !607
  %249 = add nsw i64 %241, -1, !dbg !625
  call void @llvm.dbg.value(metadata i64 %249, metadata !282, metadata !DIExpression()), !dbg !607
  %250 = icmp ugt i64 %241, 1, !dbg !626
  br i1 %250, label %240, label %251, !dbg !619, !llvm.loop !627

251:                                              ; preds = %240
  %252 = fmul double %234, %248, !dbg !629
  %253 = fsub double %252, %242, !dbg !630
  %254 = fadd double %253, 0x3F9B840DAFB447CE, !dbg !631
  tail call void @llvm.dbg.value(metadata double %254, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  %255 = tail call double @llvm.fabs.f64(double %254), !dbg !632
  %256 = fmul double %255, 0x3CB0000000000000, !dbg !633
  %257 = zext nneg i32 %238 to i64, !dbg !634
  %258 = getelementptr inbounds double, ptr @an22_data, i64 %257, !dbg !634
  %259 = load double, ptr %258, align 16, !dbg !634, !tbaa !380
  %260 = tail call double @llvm.fabs.f64(double %259), !dbg !635
  %261 = fadd double %260, %256, !dbg !636
  tail call void @llvm.dbg.value(metadata double %261, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %230, metadata !279, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !637
  %262 = fadd double %231, 1.000000e+00, !dbg !639
  %263 = fadd double %262, -1.000000e+00, !dbg !640
  %264 = fmul double %263, 5.000000e-01, !dbg !641
  call void @llvm.dbg.value(metadata double %264, metadata !285, metadata !DIExpression()), !dbg !637
  %265 = fmul double %264, 2.000000e+00, !dbg !642
  call void @llvm.dbg.value(metadata double %265, metadata !286, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !643
  %266 = select i1 %237, i32 31, i32 16, !dbg !645
  call void @llvm.dbg.value(metadata i32 %266, metadata !287, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 %266, metadata !282, metadata !DIExpression()), !dbg !637
  %267 = zext nneg i32 %266 to i64, !dbg !646
  %268 = and i64 %267, 3, !dbg !646
  %269 = icmp eq i64 %268, 0, !dbg !646
  br i1 %269, label %283, label %270, !dbg !646

270:                                              ; preds = %251, %270
  %271 = phi i64 [ %280, %270 ], [ %267, %251 ]
  %272 = phi double [ %279, %270 ], [ 0.000000e+00, %251 ]
  %273 = phi double [ %272, %270 ], [ 0.000000e+00, %251 ]
  %274 = phi i64 [ %281, %270 ], [ 0, %251 ]
  call void @llvm.dbg.value(metadata i64 %271, metadata !282, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %272, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %273, metadata !284, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %272, metadata !288, metadata !DIExpression()), !dbg !647
  %275 = fmul double %265, %272, !dbg !648
  %276 = fsub double %275, %273, !dbg !649
  %277 = getelementptr inbounds double, ptr @aph2_data, i64 %271, !dbg !650
  %278 = load double, ptr %277, align 8, !dbg !650, !tbaa !380
  %279 = fadd double %276, %278, !dbg !651
  call void @llvm.dbg.value(metadata double %279, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %272, metadata !284, metadata !DIExpression()), !dbg !637
  %280 = add nsw i64 %271, -1, !dbg !652
  call void @llvm.dbg.value(metadata i64 %280, metadata !282, metadata !DIExpression()), !dbg !637
  %281 = add i64 %274, 1, !dbg !646
  %282 = icmp eq i64 %281, %268, !dbg !646
  br i1 %282, label %283, label %270, !dbg !646, !llvm.loop !653

283:                                              ; preds = %251, %270
  %284 = phi i64 [ %267, %251 ], [ %280, %270 ]
  %285 = phi double [ 0.000000e+00, %251 ], [ %279, %270 ]
  %286 = phi double [ 0.000000e+00, %251 ], [ %272, %270 ]
  br label %287, !dbg !646

287:                                              ; preds = %287, %283
  %288 = phi i64 [ %284, %283 ], [ %312, %287 ]
  %289 = phi double [ %285, %283 ], [ %311, %287 ]
  %290 = phi double [ %286, %283 ], [ %305, %287 ]
  call void @llvm.dbg.value(metadata i64 %288, metadata !282, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %289, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %290, metadata !284, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %289, metadata !288, metadata !DIExpression()), !dbg !647
  %291 = fmul double %265, %289, !dbg !648
  %292 = fsub double %291, %290, !dbg !649
  %293 = getelementptr inbounds double, ptr @aph2_data, i64 %288, !dbg !650
  %294 = load double, ptr %293, align 8, !dbg !650, !tbaa !380
  %295 = fadd double %292, %294, !dbg !651
  call void @llvm.dbg.value(metadata double %295, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %289, metadata !284, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %288, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata i64 %288, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata double %295, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %289, metadata !284, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %295, metadata !288, metadata !DIExpression()), !dbg !647
  %296 = fmul double %265, %295, !dbg !648
  %297 = fsub double %296, %289, !dbg !649
  %298 = getelementptr double, ptr getelementptr (double, ptr @aph2_data, i64 -1), i64 %288, !dbg !650
  %299 = load double, ptr %298, align 8, !dbg !650, !tbaa !380
  %300 = fadd double %297, %299, !dbg !651
  call void @llvm.dbg.value(metadata double %300, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %295, metadata !284, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %288, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata i64 %288, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata double %300, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %295, metadata !284, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %300, metadata !288, metadata !DIExpression()), !dbg !647
  %301 = fmul double %265, %300, !dbg !648
  %302 = fsub double %301, %295, !dbg !649
  %303 = getelementptr double, ptr getelementptr (double, ptr @aph2_data, i64 -2), i64 %288, !dbg !650
  %304 = load double, ptr %303, align 8, !dbg !650, !tbaa !380
  %305 = fadd double %302, %304, !dbg !651
  call void @llvm.dbg.value(metadata double %305, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %300, metadata !284, metadata !DIExpression()), !dbg !637
  %306 = add nsw i64 %288, -3, !dbg !652
  call void @llvm.dbg.value(metadata i64 %306, metadata !282, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %306, metadata !282, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %305, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %300, metadata !284, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %305, metadata !288, metadata !DIExpression()), !dbg !647
  %307 = fmul double %265, %305, !dbg !648
  %308 = fsub double %307, %300, !dbg !649
  %309 = getelementptr inbounds double, ptr @aph2_data, i64 %306, !dbg !650
  %310 = load double, ptr %309, align 8, !dbg !650, !tbaa !380
  %311 = fadd double %308, %310, !dbg !651
  call void @llvm.dbg.value(metadata double %311, metadata !283, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %305, metadata !284, metadata !DIExpression()), !dbg !637
  %312 = add nsw i64 %288, -4, !dbg !652
  call void @llvm.dbg.value(metadata i64 %312, metadata !282, metadata !DIExpression()), !dbg !637
  %313 = icmp ugt i64 %306, 1, !dbg !654
  br i1 %313, label %287, label %314, !dbg !646, !llvm.loop !655

314:                                              ; preds = %287
  %315 = fmul double %264, %311, !dbg !657
  %316 = fsub double %315, %305, !dbg !658
  %317 = fadd double %316, 0xBFBA54AB16D2540E, !dbg !659
  tail call void @llvm.dbg.value(metadata double %317, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  tail call void @llvm.dbg.value(metadata double %331, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  br label %319

318:                                              ; preds = %223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !662
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 616, i32 noundef 1) #7, !dbg !663
  br label %353, !dbg !663

319:                                              ; preds = %219, %314, %124
  %320 = phi double [ %222, %219 ], [ %317, %314 ], [ %127, %124 ]
  %321 = phi i32 [ %206, %219 ], [ %266, %314 ], [ %81, %124 ]
  %322 = phi ptr [ @aph1_data, %219 ], [ @aph2_data, %314 ], [ @aph0_data, %124 ]
  %323 = phi double [ %201, %219 ], [ %261, %314 ], [ %76, %124 ], !dbg !665
  %324 = phi double [ %194, %219 ], [ %254, %314 ], [ %69, %124 ], !dbg !667
  %325 = tail call double @llvm.fabs.f64(double %320), !dbg !668
  %326 = fmul double %325, 0x3CB0000000000000, !dbg !669
  %327 = zext nneg i32 %321 to i64, !dbg !670
  %328 = getelementptr inbounds double, ptr %322, i64 %327, !dbg !670
  %329 = load double, ptr %328, align 8, !dbg !670, !tbaa !380
  %330 = tail call double @llvm.fabs.f64(double %329), !dbg !671
  %331 = fadd double %330, %326, !dbg !672
  tail call void @llvm.dbg.value(metadata double %320, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  tail call void @llvm.dbg.value(metadata double %331, metadata !461, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  tail call void @llvm.dbg.value(metadata double %324, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !474
  tail call void @llvm.dbg.value(metadata double %323, metadata !460, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !474
  %332 = fadd double %324, 3.125000e-01, !dbg !673
  tail call void @llvm.dbg.value(metadata double %332, metadata !462, metadata !DIExpression()), !dbg !474
  %333 = fadd double %320, -6.250000e-01, !dbg !674
  tail call void @llvm.dbg.value(metadata double %333, metadata !463, metadata !DIExpression()), !dbg !474
  %334 = fneg double %0, !dbg !675
  %335 = tail call double @sqrt(double noundef %334) #7, !dbg !676
  tail call void @llvm.dbg.value(metadata double %335, metadata !464, metadata !DIExpression()), !dbg !474
  %336 = fmul double %332, %335, !dbg !677
  %337 = tail call double @sqrt(double noundef %336) #7, !dbg !678
  store double %337, ptr %2, align 8, !dbg !679, !tbaa !244
  %338 = tail call double @llvm.fabs.f64(double %337), !dbg !680
  %339 = fdiv double %323, %324, !dbg !681
  %340 = tail call double @llvm.fabs.f64(double %339), !dbg !682
  %341 = fadd double %340, 0x3CB0000000000000, !dbg !683
  %342 = fmul double %341, %338, !dbg !684
  %343 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !685
  store double %342, ptr %343, align 8, !dbg !686, !tbaa !254
  %344 = fmul double %335, %0, !dbg !687
  %345 = fmul double %333, %344, !dbg !688
  %346 = fsub double 0x4002D97C7F3321D2, %345, !dbg !689
  store double %346, ptr %3, align 8, !dbg !690, !tbaa !244
  %347 = tail call double @llvm.fabs.f64(double %346), !dbg !691
  %348 = fdiv double %331, %320, !dbg !692
  %349 = tail call double @llvm.fabs.f64(double %348), !dbg !693
  %350 = fadd double %349, 0x3CB0000000000000, !dbg !694
  %351 = fmul double %350, %347, !dbg !695
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !696
  store double %351, ptr %352, align 8, !dbg !697, !tbaa !254
  br label %353, !dbg !698

353:                                              ; preds = %319, %318
  %354 = phi i32 [ 0, %319 ], [ 1, %318 ], !dbg !474
  ret i32 %354, !dbg !699
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !700 double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !704 double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !705 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Ai_deriv_e(double noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !706 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !729
  call void @llvm.dbg.assign(metadata i1 undef, metadata !711, metadata !DIExpression(), metadata !729, metadata ptr %4, metadata !DIExpression()), !dbg !730
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !731
  call void @llvm.dbg.assign(metadata i1 undef, metadata !714, metadata !DIExpression(), metadata !731, metadata ptr %5, metadata !DIExpression()), !dbg !730
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !722, metadata !DIExpression(), metadata !732, metadata ptr %6, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata double %0, metadata !708, metadata !DIExpression()), !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !709, metadata !DIExpression()), !dbg !734
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !710, metadata !DIExpression()), !dbg !734
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !735
  br i1 %7, label %8, label %27, !dbg !736

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !737
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !738
  %9 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !739, !range !242
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !715, metadata !DIExpression()), !dbg !730
  %10 = load double, ptr %5, align 8, !dbg !740, !tbaa !244
  %11 = tail call double @cos(double noundef %10) #7, !dbg !741
  tail call void @llvm.dbg.value(metadata double %11, metadata !716, metadata !DIExpression()), !dbg !730
  %12 = load double, ptr %4, align 8, !dbg !742, !tbaa !244
  %13 = fmul double %11, %12, !dbg !743
  store double %13, ptr %2, align 8, !dbg !744, !tbaa !244
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !745
  %15 = load double, ptr %14, align 8, !dbg !745, !tbaa !254
  %16 = fmul double %13, %15, !dbg !746
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !747
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !748
  %19 = load double, ptr %18, align 8, !dbg !748, !tbaa !254
  %20 = fmul double %11, %19, !dbg !749
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !750
  %22 = fadd double %17, %21, !dbg !751
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !752
  %24 = tail call double @llvm.fabs.f64(double %13), !dbg !753
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !754
  %26 = fadd double %25, %22, !dbg !755
  store double %26, ptr %23, align 8, !dbg !755, !tbaa !254
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !756
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !756
  br label %124

27:                                               ; preds = %3
  %28 = fcmp olt double %0, 1.000000e+00, !dbg !757
  %29 = fmul double %0, %0, !dbg !758
  %30 = fmul double %29, %0, !dbg !758
  br i1 %28, label %31, label %105, !dbg !759

31:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata double %30, metadata !717, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %30, metadata !279, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 7, metadata !287, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 7, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double poison, metadata !720, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !760
  tail call void @llvm.dbg.value(metadata double poison, metadata !720, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !760
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %30, metadata !279, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i32 8, metadata !287, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 8, metadata !282, metadata !DIExpression()), !dbg !766
  %32 = fmul double %30, 2.000000e+00, !dbg !770
  %33 = fadd double %32, 1.000000e+00, !dbg !771
  %34 = fadd double %33, -1.000000e+00, !dbg !772
  %35 = fmul double %34, 5.000000e-01, !dbg !773
  call void @llvm.dbg.value(metadata double %35, metadata !285, metadata !DIExpression()), !dbg !766
  %36 = fmul double %35, 2.000000e+00, !dbg !774
  call void @llvm.dbg.value(metadata double %36, metadata !286, metadata !DIExpression()), !dbg !766
  %37 = fadd double %32, 1.000000e+00, !dbg !775
  %38 = fadd double %37, -1.000000e+00, !dbg !776
  %39 = fmul double %38, 5.000000e-01, !dbg !777
  call void @llvm.dbg.value(metadata double %39, metadata !285, metadata !DIExpression()), !dbg !761
  %40 = fmul double %39, 2.000000e+00, !dbg !778
  call void @llvm.dbg.value(metadata double %40, metadata !286, metadata !DIExpression()), !dbg !761
  %41 = fmul double %40, 0.000000e+00, !dbg !779
  %42 = fadd double %41, 5.220000e-18, !dbg !780
  call void @llvm.dbg.value(metadata double %42, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %42, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %42, metadata !284, metadata !DIExpression()), !dbg !761
  %43 = fmul double %40, %42, !dbg !779
  %44 = fadd double %43, 5.046220e-15, !dbg !780
  call void @llvm.dbg.value(metadata double %44, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %44, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %44, metadata !284, metadata !DIExpression()), !dbg !761
  %45 = fmul double %40, %44, !dbg !779
  %46 = fsub double %45, %42, !dbg !781
  %47 = fadd double %46, 0x3D8FF5705AC91EC3, !dbg !780
  call void @llvm.dbg.value(metadata double %47, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %47, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %47, metadata !284, metadata !DIExpression()), !dbg !761
  %48 = fmul double %40, %47, !dbg !779
  %49 = fsub double %48, %44, !dbg !781
  %50 = fadd double %49, 0x3E1FD58801700D16, !dbg !780
  call void @llvm.dbg.value(metadata double %50, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %50, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %50, metadata !284, metadata !DIExpression()), !dbg !761
  %51 = fmul double %40, %50, !dbg !779
  %52 = fsub double %51, %47, !dbg !781
  %53 = fadd double %52, 0x3EA4E432D4BABD0B, !dbg !780
  call void @llvm.dbg.value(metadata double %53, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %53, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %53, metadata !284, metadata !DIExpression()), !dbg !761
  %54 = fmul double %40, %53, !dbg !779
  %55 = fsub double %54, %50, !dbg !781
  %56 = fadd double %55, 0x3F2028A015BCE79A, !dbg !780
  call void @llvm.dbg.value(metadata double %56, metadata !283, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %56, metadata !288, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %56, metadata !284, metadata !DIExpression()), !dbg !761
  %57 = fmul double %40, %56, !dbg !779
  %58 = fsub double %57, %53, !dbg !781
  %59 = fadd double %58, 0x3F883D8B51EBDE69, !dbg !780
  call void @llvm.dbg.value(metadata double %59, metadata !283, metadata !DIExpression()), !dbg !761
  %60 = fmul double %39, %59, !dbg !782
  %61 = fsub double %60, %56, !dbg !783
  %62 = fadd double %61, 0x3FAAF346E8C752A0, !dbg !784
  tail call void @llvm.dbg.value(metadata double %62, metadata !720, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !760
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !785
  %64 = fmul double %63, 0x3CB0000000000000, !dbg !786
  %65 = fadd double %64, 5.220000e-18, !dbg !787
  tail call void @llvm.dbg.value(metadata double %65, metadata !720, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !760
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !788
  %66 = fmul double %36, 0.000000e+00, !dbg !789
  %67 = fadd double %66, 3.140000e-19, !dbg !790
  call void @llvm.dbg.value(metadata double %67, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %67, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %67, metadata !288, metadata !DIExpression()), !dbg !788
  %68 = fmul double %36, %67, !dbg !789
  %69 = fadd double %68, 3.315620e-16, !dbg !790
  call void @llvm.dbg.value(metadata double %69, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %67, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %69, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %67, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %69, metadata !288, metadata !DIExpression()), !dbg !788
  %70 = fmul double %36, %69, !dbg !789
  %71 = fsub double %70, %67, !dbg !791
  %72 = fadd double %71, 0x3D529E6336575AAD, !dbg !790
  call void @llvm.dbg.value(metadata double %72, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %69, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %72, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %69, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %72, metadata !288, metadata !DIExpression()), !dbg !788
  %73 = fmul double %36, %72, !dbg !789
  %74 = fsub double %73, %69, !dbg !791
  %75 = fadd double %74, 0x3DE4F2377D2D1DB9, !dbg !790
  call void @llvm.dbg.value(metadata double %75, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %72, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %75, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %72, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %75, metadata !288, metadata !DIExpression()), !dbg !788
  %76 = fmul double %36, %75, !dbg !789
  %77 = fsub double %76, %72, !dbg !791
  %78 = fadd double %77, 0x3E6FE9188AD28E95, !dbg !790
  call void @llvm.dbg.value(metadata double %78, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %75, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %78, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %75, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %78, metadata !288, metadata !DIExpression()), !dbg !788
  %79 = fmul double %36, %78, !dbg !789
  %80 = fsub double %79, %75, !dbg !791
  %81 = fadd double %80, 0x3EEDEABB5FA79163, !dbg !790
  call void @llvm.dbg.value(metadata double %81, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %78, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %81, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %78, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %81, metadata !288, metadata !DIExpression()), !dbg !788
  %82 = fmul double %36, %81, !dbg !789
  %83 = fsub double %82, %78, !dbg !791
  %84 = fadd double %83, 0x3F5D73A8A245C45E, !dbg !790
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %81, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %81, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %84, metadata !288, metadata !DIExpression()), !dbg !788
  %85 = fmul double %36, %84, !dbg !789
  %86 = fsub double %85, %81, !dbg !791
  %87 = fadd double %86, 0x3FB618CD01E9DF15, !dbg !790
  call void @llvm.dbg.value(metadata double %87, metadata !283, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !766
  %88 = fmul double %35, %87, !dbg !792
  %89 = fsub double %88, %84, !dbg !793
  %90 = fadd double %89, 0x3F85BE5570E6DAF5, !dbg !794
  tail call void @llvm.dbg.value(metadata double %90, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !760
  %91 = tail call double @llvm.fabs.f64(double %90), !dbg !795
  %92 = fmul double %91, 0x3CB0000000000000, !dbg !796
  %93 = fadd double %92, 3.140000e-19, !dbg !797
  tail call void @llvm.dbg.value(metadata double %93, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !760
  %94 = fadd double %62, 1.250000e-01, !dbg !798
  %95 = fmul double %29, %94, !dbg !799
  %96 = fsub double %95, %90, !dbg !800
  %97 = fadd double %96, -2.500000e-01, !dbg !801
  store double %97, ptr %2, align 8, !dbg !802, !tbaa !244
  %98 = fmul double %29, %65, !dbg !803
  %99 = tail call double @llvm.fabs.f64(double %98), !dbg !804
  %100 = fadd double %99, %93, !dbg !805
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !806
  %102 = tail call double @llvm.fabs.f64(double %97), !dbg !807
  %103 = fmul double %102, 0x3CB0000000000000, !dbg !808
  %104 = fadd double %100, %103, !dbg !809
  store double %104, ptr %101, align 8, !dbg !809, !tbaa !254
  br label %124

105:                                              ; preds = %27
  %106 = fcmp olt double %30, 0x41313A9357D08D7F, !dbg !810
  br i1 %106, label %107, label %122, !dbg !811

107:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !812
  %108 = fmul double %0, -2.000000e+00, !dbg !813
  %109 = tail call double @sqrt(double noundef %0) #7, !dbg !814
  %110 = fmul double %108, %109, !dbg !815
  %111 = fdiv double %110, 3.000000e+00, !dbg !816
  tail call void @llvm.dbg.value(metadata double %111, metadata !725, metadata !DIExpression()), !dbg !733
  %112 = call i32 @gsl_sf_airy_Ai_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %6), !dbg !817, !range !242
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !726, metadata !DIExpression()), !dbg !733
  %113 = fmul double %111, 0x3CB0000000000000, !dbg !818
  %114 = tail call double @llvm.fabs.f64(double %113), !dbg !819
  %115 = fmul double %114, 1.500000e+00, !dbg !820
  %116 = load double, ptr %6, align 8, !dbg !821, !tbaa !244
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !822
  %118 = load double, ptr %117, align 8, !dbg !822, !tbaa !254
  %119 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %111, double noundef %115, double noundef %116, double noundef %118, ptr noundef %2) #7, !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !728, metadata !DIExpression()), !dbg !733
  %120 = icmp eq i32 %119, 0, !dbg !824
  %121 = select i1 %120, i32 %112, i32 %119, !dbg !824
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !825
  br label %124

122:                                              ; preds = %105
  store double 0.000000e+00, ptr %2, align 8, !dbg !826, !tbaa !244
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !826
  store double 0x10000000000000, ptr %123, align 8, !dbg !826, !tbaa !254
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 732, i32 noundef 15) #7, !dbg !829
  br label %124, !dbg !829

124:                                              ; preds = %8, %31, %107, %122
  %125 = phi i32 [ %9, %8 ], [ 0, %31 ], [ %121, %107 ], [ 15, %122 ], !dbg !831
  ret i32 %125, !dbg !832
}

declare !dbg !833 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !837 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_airy_Bi_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !842 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !881
  call void @llvm.dbg.assign(metadata i1 undef, metadata !849, metadata !DIExpression(), metadata !881, metadata ptr %4, metadata !DIExpression()), !dbg !882
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !883
  call void @llvm.dbg.assign(metadata i1 undef, metadata !852, metadata !DIExpression(), metadata !883, metadata ptr %5, metadata !DIExpression()), !dbg !882
  tail call void @llvm.dbg.value(metadata double %0, metadata !844, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !845, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !846, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata double 0x4021805A83B66B50, metadata !847, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata double 0xC000C02D41DB35A8, metadata !848, metadata !DIExpression()), !dbg !884
  %6 = fcmp olt double %0, -1.000000e+00, !dbg !885
  br i1 %6, label %7, label %26, !dbg !886

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !887
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !888
  %8 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !889, !range !242
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !853, metadata !DIExpression()), !dbg !882
  %9 = load double, ptr %5, align 8, !dbg !890, !tbaa !244
  %10 = tail call double @sin(double noundef %9) #7, !dbg !891
  tail call void @llvm.dbg.value(metadata double %10, metadata !854, metadata !DIExpression()), !dbg !882
  %11 = load double, ptr %4, align 8, !dbg !892, !tbaa !244
  %12 = fmul double %10, %11, !dbg !893
  store double %12, ptr %2, align 8, !dbg !894, !tbaa !244
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !895
  %14 = load double, ptr %13, align 8, !dbg !895, !tbaa !254
  %15 = fmul double %12, %14, !dbg !896
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !897
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !898
  %18 = load double, ptr %17, align 8, !dbg !898, !tbaa !254
  %19 = fmul double %10, %18, !dbg !899
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !900
  %21 = fadd double %16, %20, !dbg !901
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !902
  %23 = tail call double @llvm.fabs.f64(double %12), !dbg !903
  %24 = fmul double %23, 0x3CB0000000000000, !dbg !904
  %25 = fadd double %24, %21, !dbg !905
  store double %25, ptr %22, align 8, !dbg !905, !tbaa !254
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !906
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !906
  br label %361

26:                                               ; preds = %3
  %27 = fcmp olt double %0, 1.000000e+00, !dbg !907
  br i1 %27, label %28, label %114, !dbg !908

28:                                               ; preds = %26
  %29 = fmul double %0, %0, !dbg !909
  tail call void @llvm.dbg.value(metadata double poison, metadata !855, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata double %29, metadata !858, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i32 7, metadata !287, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 7, metadata !282, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata double poison, metadata !855, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata double poison, metadata !859, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !910
  tail call void @llvm.dbg.value(metadata double poison, metadata !859, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !910
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i32 8, metadata !287, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 8, metadata !282, metadata !DIExpression()), !dbg !916
  %30 = fmul double %29, %0, !dbg !920
  tail call void @llvm.dbg.value(metadata double %30, metadata !855, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double %30, metadata !279, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double %30, metadata !279, metadata !DIExpression()), !dbg !916
  %31 = fmul double %30, 2.000000e+00, !dbg !921
  %32 = fadd double %31, 1.000000e+00, !dbg !922
  %33 = fadd double %32, -1.000000e+00, !dbg !923
  %34 = fmul double %33, 5.000000e-01, !dbg !924
  call void @llvm.dbg.value(metadata double %34, metadata !285, metadata !DIExpression()), !dbg !916
  %35 = fmul double %34, 2.000000e+00, !dbg !925
  call void @llvm.dbg.value(metadata double %35, metadata !286, metadata !DIExpression()), !dbg !916
  %36 = fadd double %31, 1.000000e+00, !dbg !926
  %37 = fadd double %36, -1.000000e+00, !dbg !927
  %38 = fmul double %37, 5.000000e-01, !dbg !928
  call void @llvm.dbg.value(metadata double %38, metadata !285, metadata !DIExpression()), !dbg !911
  %39 = fmul double %38, 2.000000e+00, !dbg !929
  call void @llvm.dbg.value(metadata double %39, metadata !286, metadata !DIExpression()), !dbg !911
  %40 = fmul double %39, 0.000000e+00, !dbg !930
  %41 = fadd double %40, 0x3C64C0A98C0C8C21, !dbg !931
  call void @llvm.dbg.value(metadata double %41, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double %41, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %41, metadata !284, metadata !DIExpression()), !dbg !911
  %42 = fmul double %39, %41, !dbg !930
  %43 = fadd double %42, 8.740300e-15, !dbg !931
  call void @llvm.dbg.value(metadata double %43, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double %43, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %43, metadata !284, metadata !DIExpression()), !dbg !911
  %44 = fmul double %39, %43, !dbg !930
  %45 = fsub double %44, %41, !dbg !932
  %46 = fadd double %45, 0x3D9BAD557CF40EE1, !dbg !931
  call void @llvm.dbg.value(metadata double %46, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double %46, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %46, metadata !284, metadata !DIExpression()), !dbg !911
  %47 = fmul double %39, %46, !dbg !930
  %48 = fsub double %47, %43, !dbg !932
  %49 = fadd double %48, 0x3E2B91B37BF883E9, !dbg !931
  call void @llvm.dbg.value(metadata double %49, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double %49, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %49, metadata !284, metadata !DIExpression()), !dbg !911
  %50 = fmul double %39, %49, !dbg !930
  %51 = fsub double %50, %46, !dbg !932
  %52 = fadd double %51, 0x3EB217AD02495704, !dbg !931
  call void @llvm.dbg.value(metadata double %52, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double %52, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %52, metadata !284, metadata !DIExpression()), !dbg !911
  %53 = fmul double %39, %52, !dbg !930
  %54 = fsub double %53, %49, !dbg !932
  %55 = fadd double %54, 0x3F2BFCD86210EF79, !dbg !931
  call void @llvm.dbg.value(metadata double %55, metadata !283, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata double %55, metadata !288, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %55, metadata !284, metadata !DIExpression()), !dbg !911
  %56 = fmul double %39, %55, !dbg !930
  %57 = fsub double %56, %52, !dbg !932
  %58 = fadd double %57, 0x3F94FE28B0252EE1, !dbg !931
  call void @llvm.dbg.value(metadata double %58, metadata !283, metadata !DIExpression()), !dbg !911
  %59 = fmul double %38, %58, !dbg !933
  %60 = fsub double %59, %55, !dbg !934
  %61 = fadd double %60, 0x3FAD87D1972257AB, !dbg !935
  tail call void @llvm.dbg.value(metadata double %61, metadata !859, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !910
  %62 = tail call double @llvm.fabs.f64(double %61), !dbg !936
  %63 = fmul double %62, 0x3CB0000000000000, !dbg !937
  %64 = fadd double %63, 0x3C64C0A98C0C8C21, !dbg !938
  tail call void @llvm.dbg.value(metadata double %64, metadata !859, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !910
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !939
  %65 = fmul double %35, 0.000000e+00, !dbg !940
  %66 = fadd double %65, 5.440000e-19, !dbg !941
  call void @llvm.dbg.value(metadata double %66, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %66, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %66, metadata !288, metadata !DIExpression()), !dbg !939
  %67 = fmul double %35, %66, !dbg !940
  %68 = fadd double %67, 5.742830e-16, !dbg !941
  call void @llvm.dbg.value(metadata double %68, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %66, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %68, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %66, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %68, metadata !288, metadata !DIExpression()), !dbg !939
  %69 = fmul double %35, %68, !dbg !940
  %70 = fsub double %69, %66, !dbg !942
  %71 = fadd double %70, 0x3D601FD00DA5423B, !dbg !941
  call void @llvm.dbg.value(metadata double %71, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %68, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %71, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %68, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %71, metadata !288, metadata !DIExpression()), !dbg !939
  %72 = fmul double %35, %71, !dbg !940
  %73 = fsub double %72, %68, !dbg !942
  %74 = fadd double %73, 0x3DF223D0E0BFAC63, !dbg !941
  call void @llvm.dbg.value(metadata double %74, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %71, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %74, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %71, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %74, metadata !288, metadata !DIExpression()), !dbg !939
  %75 = fmul double %35, %74, !dbg !940
  %76 = fsub double %75, %71, !dbg !942
  %77 = fadd double %76, 0x3E7BA2A50116C6B9, !dbg !941
  call void @llvm.dbg.value(metadata double %77, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %74, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %77, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %74, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %77, metadata !288, metadata !DIExpression()), !dbg !939
  %78 = fmul double %35, %77, !dbg !940
  %79 = fsub double %78, %74, !dbg !942
  %80 = fadd double %79, 0x3EF9E8A80A88240B, !dbg !941
  call void @llvm.dbg.value(metadata double %80, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %77, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %80, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %77, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %80, metadata !288, metadata !DIExpression()), !dbg !939
  %81 = fmul double %35, %80, !dbg !940
  %82 = fsub double %81, %77, !dbg !942
  %83 = fadd double %82, 0x3F69818936D0805E, !dbg !941
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %80, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %80, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %83, metadata !288, metadata !DIExpression()), !dbg !939
  %84 = fmul double %35, %83, !dbg !940
  %85 = fsub double %84, %80, !dbg !942
  %86 = fadd double %85, 0x3FC322EEE696951C, !dbg !941
  call void @llvm.dbg.value(metadata double %86, metadata !283, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata double %83, metadata !284, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !916
  %87 = fmul double %34, %86, !dbg !943
  %88 = fsub double %87, %83, !dbg !944
  %89 = fadd double %88, 0xBFA8E1DDACE0511C, !dbg !945
  tail call void @llvm.dbg.value(metadata double %89, metadata !860, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !910
  %90 = tail call double @llvm.fabs.f64(double %89), !dbg !946
  %91 = fmul double %90, 0x3CB0000000000000, !dbg !947
  %92 = fadd double %91, 5.440000e-19, !dbg !948
  tail call void @llvm.dbg.value(metadata double %92, metadata !860, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !910
  %93 = fadd double %61, 2.500000e-01, !dbg !949
  %94 = fmul double %29, %93, !dbg !950
  %95 = fadd double %94, %89, !dbg !951
  %96 = fadd double %95, 5.000000e-01, !dbg !952
  store double %96, ptr %2, align 8, !dbg !953, !tbaa !244
  %97 = fmul double %29, %64, !dbg !954
  %98 = fadd double %97, %92, !dbg !955
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !956
  %100 = tail call double @llvm.fabs.f64(double %96), !dbg !957
  %101 = fmul double %100, 0x3CB0000000000000, !dbg !958
  %102 = fadd double %98, %101, !dbg !959
  store double %102, ptr %99, align 8, !dbg !959, !tbaa !254
  %103 = fcmp ogt double %0, 0x3DC428A2F98D7292, !dbg !960
  br i1 %103, label %104, label %361, !dbg !961

104:                                              ; preds = %28
  %105 = fmul double %0, -2.000000e+00, !dbg !962
  %106 = tail call double @sqrt(double noundef %0) #7, !dbg !963
  %107 = fmul double %105, %106, !dbg !964
  %108 = fdiv double %107, 3.000000e+00, !dbg !965
  %109 = tail call double @exp(double noundef %108) #7, !dbg !966
  tail call void @llvm.dbg.value(metadata double %109, metadata !861, metadata !DIExpression()), !dbg !967
  %110 = load double, ptr %2, align 8, !dbg !968, !tbaa !244
  %111 = fmul double %109, %110, !dbg !968
  store double %111, ptr %2, align 8, !dbg !968, !tbaa !244
  %112 = load double, ptr %99, align 8, !dbg !969, !tbaa !254
  %113 = fmul double %109, %112, !dbg !969
  store double %113, ptr %99, align 8, !dbg !969, !tbaa !254
  br label %361, !dbg !970

114:                                              ; preds = %26
  %115 = fcmp olt double %0, 2.000000e+00, !dbg !971
  br i1 %115, label %116, label %211, !dbg !972

116:                                              ; preds = %114
  tail call void @llvm.dbg.value(metadata double poison, metadata !864, metadata !DIExpression()), !dbg !973
  %117 = fmul double %0, -2.000000e+00, !dbg !974
  %118 = tail call double @sqrt(double noundef %0) #7, !dbg !975
  %119 = fmul double %117, %118, !dbg !976
  %120 = fdiv double %119, 3.000000e+00, !dbg !977
  %121 = tail call double @exp(double noundef %120) #7, !dbg !978
  tail call void @llvm.dbg.value(metadata double %121, metadata !867, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i32 9, metadata !287, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i32 9, metadata !282, metadata !DIExpression()), !dbg !979
  tail call void @llvm.dbg.value(metadata double poison, metadata !864, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 9, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !979
  tail call void @llvm.dbg.value(metadata double poison, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !973
  tail call void @llvm.dbg.value(metadata double poison, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !973
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32 9, metadata !287, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 9, metadata !282, metadata !DIExpression()), !dbg !984
  %122 = fmul double %0, 2.000000e+00, !dbg !988
  %123 = fmul double %122, %0, !dbg !989
  %124 = fmul double %123, %0, !dbg !990
  %125 = fadd double %124, -9.000000e+00, !dbg !991
  %126 = fdiv double %125, 7.000000e+00, !dbg !992
  tail call void @llvm.dbg.value(metadata double %126, metadata !864, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata double %126, metadata !279, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %126, metadata !279, metadata !DIExpression()), !dbg !984
  %127 = fmul double %126, 2.000000e+00, !dbg !993
  %128 = fadd double %127, 1.000000e+00, !dbg !994
  %129 = fadd double %128, -1.000000e+00, !dbg !995
  %130 = fmul double %129, 5.000000e-01, !dbg !996
  call void @llvm.dbg.value(metadata double %130, metadata !285, metadata !DIExpression()), !dbg !984
  %131 = fmul double %130, 2.000000e+00, !dbg !997
  call void @llvm.dbg.value(metadata double %131, metadata !286, metadata !DIExpression()), !dbg !984
  %132 = fadd double %127, 1.000000e+00, !dbg !998
  %133 = fadd double %132, -1.000000e+00, !dbg !999
  %134 = fmul double %133, 5.000000e-01, !dbg !1000
  call void @llvm.dbg.value(metadata double %134, metadata !285, metadata !DIExpression()), !dbg !979
  %135 = fmul double %134, 2.000000e+00, !dbg !1001
  call void @llvm.dbg.value(metadata double %135, metadata !286, metadata !DIExpression()), !dbg !979
  %136 = fmul double %135, 0.000000e+00, !dbg !1002
  %137 = fadd double %136, 3.820000e-19, !dbg !1003
  call void @llvm.dbg.value(metadata double %137, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %137, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %137, metadata !284, metadata !DIExpression()), !dbg !979
  %138 = fmul double %135, %137, !dbg !1002
  %139 = fadd double %138, 1.719110e-16, !dbg !1003
  call void @llvm.dbg.value(metadata double %139, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %139, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %139, metadata !284, metadata !DIExpression()), !dbg !979
  %140 = fmul double %135, %139, !dbg !1002
  %141 = fsub double %140, %137, !dbg !1004
  %142 = fadd double %141, 0x3D315B532C1052B5, !dbg !1003
  call void @llvm.dbg.value(metadata double %142, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %142, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %142, metadata !284, metadata !DIExpression()), !dbg !979
  %143 = fmul double %135, %142, !dbg !1002
  %144 = fsub double %143, %139, !dbg !1004
  %145 = fadd double %144, 0x3DB2DA69C400FB0F, !dbg !1003
  call void @llvm.dbg.value(metadata double %145, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %145, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %145, metadata !284, metadata !DIExpression()), !dbg !979
  %146 = fmul double %135, %145, !dbg !1002
  %147 = fsub double %146, %142, !dbg !1004
  %148 = fadd double %147, 0x3E2E985FC5232C55, !dbg !1003
  call void @llvm.dbg.value(metadata double %148, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %148, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %148, metadata !284, metadata !DIExpression()), !dbg !979
  %149 = fmul double %135, %148, !dbg !1002
  %150 = fsub double %149, %145, !dbg !1004
  %151 = fadd double %150, 0x3EA1A4EEF043E8FC, !dbg !1003
  call void @llvm.dbg.value(metadata double %151, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %151, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %151, metadata !284, metadata !DIExpression()), !dbg !979
  %152 = fmul double %135, %151, !dbg !1002
  %153 = fsub double %152, %148, !dbg !1004
  %154 = fadd double %153, 0x3F0AF6E37FAD4768, !dbg !1003
  call void @llvm.dbg.value(metadata double %154, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %154, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %154, metadata !284, metadata !DIExpression()), !dbg !979
  %155 = fmul double %135, %154, !dbg !1002
  %156 = fsub double %155, %151, !dbg !1004
  %157 = fadd double %156, 0x3F6886ED3AA0192F, !dbg !1003
  call void @llvm.dbg.value(metadata double %157, metadata !283, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %157, metadata !288, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata double %157, metadata !284, metadata !DIExpression()), !dbg !979
  %158 = fmul double %135, %157, !dbg !1002
  %159 = fsub double %158, %154, !dbg !1004
  %160 = fadd double %159, 0x3FB6179E07F5ABF0, !dbg !1003
  call void @llvm.dbg.value(metadata double %160, metadata !283, metadata !DIExpression()), !dbg !979
  %161 = fmul double %134, %160, !dbg !1005
  %162 = fsub double %161, %157, !dbg !1006
  %163 = fadd double %162, 0x3FC4B420204D6CA7, !dbg !1007
  tail call void @llvm.dbg.value(metadata double %163, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !973
  %164 = tail call double @llvm.fabs.f64(double %163), !dbg !1008
  %165 = fmul double %164, 0x3CB0000000000000, !dbg !1009
  %166 = fadd double %165, 3.820000e-19, !dbg !1010
  tail call void @llvm.dbg.value(metadata double %166, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !973
  call void @llvm.dbg.value(metadata i64 9, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !1011
  %167 = fmul double %131, 0.000000e+00, !dbg !1012
  %168 = fadd double %167, 3.350000e-17, !dbg !1013
  call void @llvm.dbg.value(metadata double %168, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %168, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %168, metadata !288, metadata !DIExpression()), !dbg !1011
  %169 = fmul double %131, %168, !dbg !1012
  %170 = fadd double %169, 1.300170e-14, !dbg !1013
  call void @llvm.dbg.value(metadata double %170, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %168, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %170, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %168, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %170, metadata !288, metadata !DIExpression()), !dbg !1011
  %171 = fmul double %131, %170, !dbg !1012
  %172 = fsub double %171, %168, !dbg !1014
  %173 = fadd double %172, 0x3D9164B320CC30DC, !dbg !1013
  call void @llvm.dbg.value(metadata double %173, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %170, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %173, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %170, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %173, metadata !288, metadata !DIExpression()), !dbg !1011
  %174 = fmul double %131, %173, !dbg !1012
  %175 = fsub double %174, %170, !dbg !1014
  %176 = fadd double %175, 0x3E0F505F53BAE897, !dbg !1013
  call void @llvm.dbg.value(metadata double %176, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %173, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %176, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %173, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %176, metadata !288, metadata !DIExpression()), !dbg !1011
  %177 = fmul double %131, %176, !dbg !1012
  %178 = fsub double %177, %173, !dbg !1014
  %179 = fadd double %178, 0x3E846D36D9B9968B, !dbg !1013
  call void @llvm.dbg.value(metadata double %179, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %176, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %179, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %176, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %179, metadata !288, metadata !DIExpression()), !dbg !1011
  %180 = fmul double %131, %179, !dbg !1012
  %181 = fsub double %180, %176, !dbg !1014
  %182 = fadd double %181, 0x3EF229E75A591D73, !dbg !1013
  call void @llvm.dbg.value(metadata double %182, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %179, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %182, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %179, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %182, metadata !288, metadata !DIExpression()), !dbg !1011
  %183 = fmul double %131, %182, !dbg !1012
  %184 = fsub double %183, %179, !dbg !1014
  %185 = fadd double %184, 0x3F542075C674FDA9, !dbg !1013
  call void @llvm.dbg.value(metadata double %185, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %182, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %185, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %182, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %185, metadata !288, metadata !DIExpression()), !dbg !1011
  %186 = fmul double %131, %185, !dbg !1012
  %187 = fsub double %186, %182, !dbg !1014
  %188 = fadd double %187, 0x3FA81233D561FD01, !dbg !1013
  call void @llvm.dbg.value(metadata double %188, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %185, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %188, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %185, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %188, metadata !288, metadata !DIExpression()), !dbg !1011
  %189 = fmul double %131, %188, !dbg !1012
  %190 = fsub double %189, %185, !dbg !1014
  %191 = fadd double %190, 0x3FE7D64B26D45FE0, !dbg !1013
  call void @llvm.dbg.value(metadata double %191, metadata !283, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata double %188, metadata !284, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !984
  %192 = fmul double %130, %191, !dbg !1015
  %193 = fsub double %192, %188, !dbg !1016
  %194 = fadd double %193, 0x3FE9B36792931206, !dbg !1017
  tail call void @llvm.dbg.value(metadata double %194, metadata !869, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !973
  %195 = tail call double @llvm.fabs.f64(double %194), !dbg !1018
  %196 = fmul double %195, 0x3CB0000000000000, !dbg !1019
  %197 = fadd double %196, 3.350000e-17, !dbg !1020
  tail call void @llvm.dbg.value(metadata double %197, metadata !869, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !973
  %198 = fmul double %0, %0, !dbg !1021
  %199 = fadd double %163, 2.500000e-01, !dbg !1022
  %200 = fmul double %198, %199, !dbg !1023
  %201 = fadd double %200, 5.000000e-01, !dbg !1024
  %202 = fadd double %201, %194, !dbg !1025
  %203 = fmul double %121, %202, !dbg !1026
  store double %203, ptr %2, align 8, !dbg !1027, !tbaa !244
  %204 = fmul double %198, %166, !dbg !1028
  %205 = fadd double %204, %197, !dbg !1029
  %206 = fmul double %121, %205, !dbg !1030
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1031
  %208 = tail call double @llvm.fabs.f64(double %203), !dbg !1032
  %209 = fmul double %208, 0x3CB0000000000000, !dbg !1033
  %210 = fadd double %209, %206, !dbg !1034
  store double %210, ptr %207, align 8, !dbg !1034, !tbaa !254
  br label %361

211:                                              ; preds = %114
  %212 = fcmp olt double %0, 4.000000e+00, !dbg !1035
  %213 = tail call double @sqrt(double noundef %0) #7, !dbg !1036
  %214 = fmul double %213, %0, !dbg !1036
  %215 = tail call double @sqrt(double noundef %213) #7, !dbg !1036
  %216 = and i32 %1, 7, !dbg !1037
  %217 = icmp eq i32 %216, 0, !dbg !1039
  br i1 %212, label %218, label %287, !dbg !1040

218:                                              ; preds = %211
  tail call void @llvm.dbg.value(metadata double %213, metadata !870, metadata !DIExpression()), !dbg !1041
  %219 = fdiv double 0x4021805A83B66B50, %214, !dbg !1042
  %220 = fadd double %219, 0xC000C02D41DB35A8, !dbg !1043
  tail call void @llvm.dbg.value(metadata double %220, metadata !873, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %215, metadata !874, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %220, metadata !279, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1044
  %221 = fmul double %220, 2.000000e+00, !dbg !1046
  %222 = fadd double %221, 1.000000e+00, !dbg !1047
  %223 = fadd double %222, -1.000000e+00, !dbg !1048
  %224 = fmul double %223, 5.000000e-01, !dbg !1049
  call void @llvm.dbg.value(metadata double %224, metadata !285, metadata !DIExpression()), !dbg !1044
  %225 = fmul double %224, 2.000000e+00, !dbg !1050
  call void @llvm.dbg.value(metadata double %225, metadata !286, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !1051
  %226 = select i1 %217, i32 23, i32 13, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %226, metadata !287, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 %226, metadata !282, metadata !DIExpression()), !dbg !1044
  %227 = zext nneg i32 %226 to i64, !dbg !1054
  %228 = and i64 %227, 3, !dbg !1054
  br label %229, !dbg !1054

229:                                              ; preds = %229, %218
  %230 = phi i64 [ %227, %218 ], [ %239, %229 ]
  %231 = phi double [ 0.000000e+00, %218 ], [ %238, %229 ]
  %232 = phi double [ 0.000000e+00, %218 ], [ %231, %229 ]
  %233 = phi i64 [ 0, %218 ], [ %240, %229 ]
  call void @llvm.dbg.value(metadata i64 %230, metadata !282, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %231, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %232, metadata !284, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %231, metadata !288, metadata !DIExpression()), !dbg !1055
  %234 = fmul double %225, %231, !dbg !1056
  %235 = fsub double %234, %232, !dbg !1057
  %236 = getelementptr inbounds double, ptr @bip1_data, i64 %230, !dbg !1058
  %237 = load double, ptr %236, align 8, !dbg !1058, !tbaa !380
  %238 = fadd double %235, %237, !dbg !1059
  call void @llvm.dbg.value(metadata double %238, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %231, metadata !284, metadata !DIExpression()), !dbg !1044
  %239 = add nsw i64 %230, -1, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %239, metadata !282, metadata !DIExpression()), !dbg !1044
  %240 = add i64 %233, 1, !dbg !1054
  %241 = icmp eq i64 %240, %228, !dbg !1054
  br i1 %241, label %242, label %229, !dbg !1054, !llvm.loop !1061

242:                                              ; preds = %229, %242
  %243 = phi i64 [ %267, %242 ], [ %239, %229 ]
  %244 = phi double [ %266, %242 ], [ %238, %229 ]
  %245 = phi double [ %260, %242 ], [ %231, %229 ]
  call void @llvm.dbg.value(metadata i64 %243, metadata !282, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %244, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %245, metadata !284, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %244, metadata !288, metadata !DIExpression()), !dbg !1055
  %246 = fmul double %225, %244, !dbg !1056
  %247 = fsub double %246, %245, !dbg !1057
  %248 = getelementptr inbounds double, ptr @bip1_data, i64 %243, !dbg !1058
  %249 = load double, ptr %248, align 8, !dbg !1058, !tbaa !380
  %250 = fadd double %247, %249, !dbg !1059
  call void @llvm.dbg.value(metadata double %250, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %244, metadata !284, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %243, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %243, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1044
  call void @llvm.dbg.value(metadata double %250, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %244, metadata !284, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %250, metadata !288, metadata !DIExpression()), !dbg !1055
  %251 = fmul double %225, %250, !dbg !1056
  %252 = fsub double %251, %244, !dbg !1057
  %253 = getelementptr double, ptr getelementptr (double, ptr @bip1_data, i64 -1), i64 %243, !dbg !1058
  %254 = load double, ptr %253, align 8, !dbg !1058, !tbaa !380
  %255 = fadd double %252, %254, !dbg !1059
  call void @llvm.dbg.value(metadata double %255, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %250, metadata !284, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %243, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %243, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1044
  call void @llvm.dbg.value(metadata double %255, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %250, metadata !284, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %255, metadata !288, metadata !DIExpression()), !dbg !1055
  %256 = fmul double %225, %255, !dbg !1056
  %257 = fsub double %256, %250, !dbg !1057
  %258 = getelementptr double, ptr getelementptr (double, ptr @bip1_data, i64 -2), i64 %243, !dbg !1058
  %259 = load double, ptr %258, align 8, !dbg !1058, !tbaa !380
  %260 = fadd double %257, %259, !dbg !1059
  call void @llvm.dbg.value(metadata double %260, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %255, metadata !284, metadata !DIExpression()), !dbg !1044
  %261 = add nsw i64 %243, -3, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %261, metadata !282, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %261, metadata !282, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %260, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %255, metadata !284, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %260, metadata !288, metadata !DIExpression()), !dbg !1055
  %262 = fmul double %225, %260, !dbg !1056
  %263 = fsub double %262, %255, !dbg !1057
  %264 = getelementptr inbounds double, ptr @bip1_data, i64 %261, !dbg !1058
  %265 = load double, ptr %264, align 8, !dbg !1058, !tbaa !380
  %266 = fadd double %263, %265, !dbg !1059
  call void @llvm.dbg.value(metadata double %266, metadata !283, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata double %260, metadata !284, metadata !DIExpression()), !dbg !1044
  %267 = add nsw i64 %243, -4, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %267, metadata !282, metadata !DIExpression()), !dbg !1044
  %268 = icmp ugt i64 %261, 1, !dbg !1062
  br i1 %268, label %242, label %269, !dbg !1054, !llvm.loop !1063

269:                                              ; preds = %242
  %270 = fmul double %224, %266, !dbg !1065
  %271 = fsub double %270, %260, !dbg !1066
  %272 = fadd double %271, 0xBFB622337C13C1EB, !dbg !1067
  tail call void @llvm.dbg.value(metadata double %272, metadata !875, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1041
  %273 = tail call double @llvm.fabs.f64(double %272), !dbg !1068
  %274 = fmul double %273, 0x3CB0000000000000, !dbg !1069
  %275 = zext nneg i32 %226 to i64, !dbg !1070
  %276 = getelementptr inbounds double, ptr @bip1_data, i64 %275, !dbg !1070
  %277 = load double, ptr %276, align 8, !dbg !1070, !tbaa !380
  %278 = tail call double @llvm.fabs.f64(double %277), !dbg !1071
  %279 = fadd double %278, %274, !dbg !1072
  tail call void @llvm.dbg.value(metadata double %279, metadata !875, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1041
  %280 = fadd double %272, 6.250000e-01, !dbg !1073
  %281 = fmul double %215, %280, !dbg !1074
  store double %281, ptr %2, align 8, !dbg !1075, !tbaa !244
  %282 = fmul double %215, %279, !dbg !1076
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1077
  %284 = tail call double @llvm.fabs.f64(double %281), !dbg !1078
  %285 = fmul double %284, 0x3CB0000000000000, !dbg !1079
  %286 = fadd double %282, %285, !dbg !1080
  store double %286, ptr %283, align 8, !dbg !1080, !tbaa !254
  br label %361

287:                                              ; preds = %211
  tail call void @llvm.dbg.value(metadata double %213, metadata !876, metadata !DIExpression()), !dbg !1081
  %288 = fdiv double 1.600000e+01, %214, !dbg !1082
  %289 = fadd double %288, -1.000000e+00, !dbg !1083
  tail call void @llvm.dbg.value(metadata double %289, metadata !878, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata double %215, metadata !879, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %289, metadata !279, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1084
  %290 = fmul double %289, 2.000000e+00, !dbg !1086
  %291 = fadd double %290, 1.000000e+00, !dbg !1087
  %292 = fadd double %291, -1.000000e+00, !dbg !1088
  %293 = fmul double %292, 5.000000e-01, !dbg !1089
  call void @llvm.dbg.value(metadata double %293, metadata !285, metadata !DIExpression()), !dbg !1084
  %294 = fmul double %293, 2.000000e+00, !dbg !1090
  call void @llvm.dbg.value(metadata double %294, metadata !286, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !1091
  %295 = select i1 %217, i32 28, i32 14, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %295, metadata !287, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %295, metadata !282, metadata !DIExpression()), !dbg !1084
  %296 = zext nneg i32 %295 to i64, !dbg !1094
  %297 = and i64 %296, 2, !dbg !1094
  %298 = icmp eq i64 %297, 0, !dbg !1094
  br i1 %298, label %312, label %299, !dbg !1094

299:                                              ; preds = %287, %299
  %300 = phi i64 [ %309, %299 ], [ %296, %287 ]
  %301 = phi double [ %308, %299 ], [ 0.000000e+00, %287 ]
  %302 = phi double [ %301, %299 ], [ 0.000000e+00, %287 ]
  %303 = phi i64 [ %310, %299 ], [ 0, %287 ]
  call void @llvm.dbg.value(metadata i64 %300, metadata !282, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %301, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %302, metadata !284, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %301, metadata !288, metadata !DIExpression()), !dbg !1095
  %304 = fmul double %294, %301, !dbg !1096
  %305 = fsub double %304, %302, !dbg !1097
  %306 = getelementptr inbounds double, ptr @bip2_data, i64 %300, !dbg !1098
  %307 = load double, ptr %306, align 8, !dbg !1098, !tbaa !380
  %308 = fadd double %305, %307, !dbg !1099
  call void @llvm.dbg.value(metadata double %308, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %301, metadata !284, metadata !DIExpression()), !dbg !1084
  %309 = add nsw i64 %300, -1, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %309, metadata !282, metadata !DIExpression()), !dbg !1084
  %310 = add i64 %303, 1, !dbg !1094
  %311 = icmp eq i64 %310, %297, !dbg !1094
  br i1 %311, label %312, label %299, !dbg !1094, !llvm.loop !1101

312:                                              ; preds = %287, %299
  %313 = phi i64 [ %296, %287 ], [ %309, %299 ]
  %314 = phi double [ 0.000000e+00, %287 ], [ %308, %299 ]
  %315 = phi double [ 0.000000e+00, %287 ], [ %301, %299 ]
  br label %316, !dbg !1094

316:                                              ; preds = %316, %312
  %317 = phi i64 [ %313, %312 ], [ %341, %316 ]
  %318 = phi double [ %314, %312 ], [ %340, %316 ]
  %319 = phi double [ %315, %312 ], [ %334, %316 ]
  call void @llvm.dbg.value(metadata i64 %317, metadata !282, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %318, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %319, metadata !284, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %318, metadata !288, metadata !DIExpression()), !dbg !1095
  %320 = fmul double %294, %318, !dbg !1096
  %321 = fsub double %320, %319, !dbg !1097
  %322 = getelementptr inbounds double, ptr @bip2_data, i64 %317, !dbg !1098
  %323 = load double, ptr %322, align 8, !dbg !1098, !tbaa !380
  %324 = fadd double %321, %323, !dbg !1099
  call void @llvm.dbg.value(metadata double %324, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %318, metadata !284, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %317, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %317, metadata !282, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1084
  call void @llvm.dbg.value(metadata double %324, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %318, metadata !284, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %324, metadata !288, metadata !DIExpression()), !dbg !1095
  %325 = fmul double %294, %324, !dbg !1096
  %326 = fsub double %325, %318, !dbg !1097
  %327 = getelementptr double, ptr getelementptr (double, ptr @bip2_data, i64 -1), i64 %317, !dbg !1098
  %328 = load double, ptr %327, align 8, !dbg !1098, !tbaa !380
  %329 = fadd double %326, %328, !dbg !1099
  call void @llvm.dbg.value(metadata double %329, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %324, metadata !284, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %317, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %317, metadata !282, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1084
  call void @llvm.dbg.value(metadata double %329, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %324, metadata !284, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %329, metadata !288, metadata !DIExpression()), !dbg !1095
  %330 = fmul double %294, %329, !dbg !1096
  %331 = fsub double %330, %324, !dbg !1097
  %332 = getelementptr double, ptr getelementptr (double, ptr @bip2_data, i64 -2), i64 %317, !dbg !1098
  %333 = load double, ptr %332, align 8, !dbg !1098, !tbaa !380
  %334 = fadd double %331, %333, !dbg !1099
  call void @llvm.dbg.value(metadata double %334, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %329, metadata !284, metadata !DIExpression()), !dbg !1084
  %335 = add nsw i64 %317, -3, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %335, metadata !282, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %335, metadata !282, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %334, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %329, metadata !284, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %334, metadata !288, metadata !DIExpression()), !dbg !1095
  %336 = fmul double %294, %334, !dbg !1096
  %337 = fsub double %336, %329, !dbg !1097
  %338 = getelementptr inbounds double, ptr @bip2_data, i64 %335, !dbg !1098
  %339 = load double, ptr %338, align 8, !dbg !1098, !tbaa !380
  %340 = fadd double %337, %339, !dbg !1099
  call void @llvm.dbg.value(metadata double %340, metadata !283, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %334, metadata !284, metadata !DIExpression()), !dbg !1084
  %341 = add nsw i64 %317, -4, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %341, metadata !282, metadata !DIExpression()), !dbg !1084
  %342 = icmp ugt i64 %335, 1, !dbg !1102
  br i1 %342, label %316, label %343, !dbg !1094, !llvm.loop !1103

343:                                              ; preds = %316
  %344 = fmul double %293, %340, !dbg !1105
  %345 = fsub double %344, %334, !dbg !1106
  %346 = fadd double %345, 0xBFB0FC379289999E, !dbg !1107
  tail call void @llvm.dbg.value(metadata double %346, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1081
  %347 = tail call double @llvm.fabs.f64(double %346), !dbg !1108
  %348 = fmul double %347, 0x3CB0000000000000, !dbg !1109
  %349 = zext nneg i32 %295 to i64, !dbg !1110
  %350 = getelementptr inbounds double, ptr @bip2_data, i64 %349, !dbg !1110
  %351 = load double, ptr %350, align 16, !dbg !1110, !tbaa !380
  %352 = tail call double @llvm.fabs.f64(double %351), !dbg !1111
  %353 = fadd double %352, %348, !dbg !1112
  tail call void @llvm.dbg.value(metadata double %353, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1081
  %354 = fadd double %346, 6.250000e-01, !dbg !1113
  %355 = fmul double %215, %354, !dbg !1114
  store double %355, ptr %2, align 8, !dbg !1115, !tbaa !244
  %356 = fmul double %215, %353, !dbg !1116
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1117
  %358 = tail call double @llvm.fabs.f64(double %355), !dbg !1118
  %359 = fmul double %358, 0x3CB0000000000000, !dbg !1119
  %360 = fadd double %356, %359, !dbg !1120
  store double %360, ptr %357, align 8, !dbg !1120, !tbaa !254
  br label %361

361:                                              ; preds = %28, %104, %343, %269, %116, %7
  %362 = phi i32 [ %8, %7 ], [ 0, %116 ], [ 0, %269 ], [ 0, %343 ], [ 0, %104 ], [ 0, %28 ], !dbg !1121
  ret i32 %362, !dbg !1122
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1123 double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Bi_deriv_e(double noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1124 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1129, metadata !DIExpression(), metadata !1152, metadata ptr %4, metadata !DIExpression()), !dbg !1153
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1132, metadata !DIExpression(), metadata !1154, metadata ptr %5, metadata !DIExpression()), !dbg !1153
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1155
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1146, metadata !DIExpression(), metadata !1155, metadata ptr %6, metadata !DIExpression()), !dbg !1156
  tail call void @llvm.dbg.value(metadata double %0, metadata !1126, metadata !DIExpression()), !dbg !1157
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1127, metadata !DIExpression()), !dbg !1157
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1128, metadata !DIExpression()), !dbg !1157
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !1158
  br i1 %7, label %8, label %27, !dbg !1159

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1160
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1161
  %9 = call fastcc i32 @airy_deriv_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !1162, !range !242
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1133, metadata !DIExpression()), !dbg !1153
  %10 = load double, ptr %5, align 8, !dbg !1163, !tbaa !244
  %11 = tail call double @sin(double noundef %10) #7, !dbg !1164
  tail call void @llvm.dbg.value(metadata double %11, metadata !1134, metadata !DIExpression()), !dbg !1153
  %12 = load double, ptr %4, align 8, !dbg !1165, !tbaa !244
  %13 = fmul double %11, %12, !dbg !1166
  store double %13, ptr %2, align 8, !dbg !1167, !tbaa !244
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1168
  %15 = load double, ptr %14, align 8, !dbg !1168, !tbaa !254
  %16 = fmul double %13, %15, !dbg !1169
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !1170
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1171
  %19 = load double, ptr %18, align 8, !dbg !1171, !tbaa !254
  %20 = fmul double %11, %19, !dbg !1172
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !1173
  %22 = fadd double %17, %21, !dbg !1174
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1175
  %24 = tail call double @llvm.fabs.f64(double %13), !dbg !1176
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !1177
  %26 = fadd double %25, %22, !dbg !1178
  store double %26, ptr %23, align 8, !dbg !1178, !tbaa !254
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1179
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1179
  br label %213

27:                                               ; preds = %3
  %28 = fcmp olt double %0, 1.000000e+00, !dbg !1180
  br i1 %28, label %29, label %104, !dbg !1181

29:                                               ; preds = %27
  %30 = fmul double %0, %0, !dbg !1182
  tail call void @llvm.dbg.value(metadata double poison, metadata !1135, metadata !DIExpression()), !dbg !1183
  tail call void @llvm.dbg.value(metadata double %30, metadata !1138, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 7, metadata !287, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 7, metadata !282, metadata !DIExpression()), !dbg !1184
  tail call void @llvm.dbg.value(metadata double poison, metadata !1135, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !1184
  tail call void @llvm.dbg.value(metadata double poison, metadata !1139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1183
  tail call void @llvm.dbg.value(metadata double poison, metadata !1139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1183
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 8, metadata !287, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 8, metadata !282, metadata !DIExpression()), !dbg !1189
  %31 = fmul double %30, %0, !dbg !1193
  tail call void @llvm.dbg.value(metadata double %31, metadata !1135, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata double %31, metadata !279, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double %31, metadata !279, metadata !DIExpression()), !dbg !1189
  %32 = fmul double %31, 2.000000e+00, !dbg !1194
  %33 = fadd double %32, 1.000000e+00, !dbg !1195
  %34 = fadd double %33, -1.000000e+00, !dbg !1196
  %35 = fmul double %34, 5.000000e-01, !dbg !1197
  call void @llvm.dbg.value(metadata double %35, metadata !285, metadata !DIExpression()), !dbg !1189
  %36 = fmul double %35, 2.000000e+00, !dbg !1198
  call void @llvm.dbg.value(metadata double %36, metadata !286, metadata !DIExpression()), !dbg !1189
  %37 = fadd double %32, 1.000000e+00, !dbg !1199
  %38 = fadd double %37, -1.000000e+00, !dbg !1200
  %39 = fmul double %38, 5.000000e-01, !dbg !1201
  call void @llvm.dbg.value(metadata double %39, metadata !285, metadata !DIExpression()), !dbg !1184
  %40 = fmul double %39, 2.000000e+00, !dbg !1202
  call void @llvm.dbg.value(metadata double %40, metadata !286, metadata !DIExpression()), !dbg !1184
  %41 = fmul double %40, 0.000000e+00, !dbg !1203
  %42 = fadd double %41, 0x3C64C0A98C0C8C21, !dbg !1204
  call void @llvm.dbg.value(metadata double %42, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double %42, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double %42, metadata !284, metadata !DIExpression()), !dbg !1184
  %43 = fmul double %40, %42, !dbg !1203
  %44 = fadd double %43, 8.740300e-15, !dbg !1204
  call void @llvm.dbg.value(metadata double %44, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double %44, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double %44, metadata !284, metadata !DIExpression()), !dbg !1184
  %45 = fmul double %40, %44, !dbg !1203
  %46 = fsub double %45, %42, !dbg !1205
  %47 = fadd double %46, 0x3D9BAD557CF40EE1, !dbg !1204
  call void @llvm.dbg.value(metadata double %47, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double %47, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double %47, metadata !284, metadata !DIExpression()), !dbg !1184
  %48 = fmul double %40, %47, !dbg !1203
  %49 = fsub double %48, %44, !dbg !1205
  %50 = fadd double %49, 0x3E2B91B37BF883E9, !dbg !1204
  call void @llvm.dbg.value(metadata double %50, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double %50, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double %50, metadata !284, metadata !DIExpression()), !dbg !1184
  %51 = fmul double %40, %50, !dbg !1203
  %52 = fsub double %51, %47, !dbg !1205
  %53 = fadd double %52, 0x3EB217AD02495704, !dbg !1204
  call void @llvm.dbg.value(metadata double %53, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double %53, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double %53, metadata !284, metadata !DIExpression()), !dbg !1184
  %54 = fmul double %40, %53, !dbg !1203
  %55 = fsub double %54, %50, !dbg !1205
  %56 = fadd double %55, 0x3F2BFCD86210EF79, !dbg !1204
  call void @llvm.dbg.value(metadata double %56, metadata !283, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata double %56, metadata !288, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double %56, metadata !284, metadata !DIExpression()), !dbg !1184
  %57 = fmul double %40, %56, !dbg !1203
  %58 = fsub double %57, %53, !dbg !1205
  %59 = fadd double %58, 0x3F94FE28B0252EE1, !dbg !1204
  call void @llvm.dbg.value(metadata double %59, metadata !283, metadata !DIExpression()), !dbg !1184
  %60 = fmul double %39, %59, !dbg !1206
  %61 = fsub double %60, %56, !dbg !1207
  %62 = fadd double %61, 0x3FAD87D1972257AB, !dbg !1208
  tail call void @llvm.dbg.value(metadata double %62, metadata !1139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1183
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !1209
  %64 = fmul double %63, 0x3CB0000000000000, !dbg !1210
  %65 = fadd double %64, 0x3C64C0A98C0C8C21, !dbg !1211
  tail call void @llvm.dbg.value(metadata double %65, metadata !1139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1183
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !1212
  %66 = fmul double %36, 0.000000e+00, !dbg !1213
  %67 = fadd double %66, 5.440000e-19, !dbg !1214
  call void @llvm.dbg.value(metadata double %67, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %67, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %67, metadata !288, metadata !DIExpression()), !dbg !1212
  %68 = fmul double %36, %67, !dbg !1213
  %69 = fadd double %68, 5.742830e-16, !dbg !1214
  call void @llvm.dbg.value(metadata double %69, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %67, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %69, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %67, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %69, metadata !288, metadata !DIExpression()), !dbg !1212
  %70 = fmul double %36, %69, !dbg !1213
  %71 = fsub double %70, %67, !dbg !1215
  %72 = fadd double %71, 0x3D601FD00DA5423B, !dbg !1214
  call void @llvm.dbg.value(metadata double %72, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %69, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %72, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %69, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %72, metadata !288, metadata !DIExpression()), !dbg !1212
  %73 = fmul double %36, %72, !dbg !1213
  %74 = fsub double %73, %69, !dbg !1215
  %75 = fadd double %74, 0x3DF223D0E0BFAC63, !dbg !1214
  call void @llvm.dbg.value(metadata double %75, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %72, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %75, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %72, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %75, metadata !288, metadata !DIExpression()), !dbg !1212
  %76 = fmul double %36, %75, !dbg !1213
  %77 = fsub double %76, %72, !dbg !1215
  %78 = fadd double %77, 0x3E7BA2A50116C6B9, !dbg !1214
  call void @llvm.dbg.value(metadata double %78, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %75, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %78, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %75, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %78, metadata !288, metadata !DIExpression()), !dbg !1212
  %79 = fmul double %36, %78, !dbg !1213
  %80 = fsub double %79, %75, !dbg !1215
  %81 = fadd double %80, 0x3EF9E8A80A88240B, !dbg !1214
  call void @llvm.dbg.value(metadata double %81, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %78, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %81, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %78, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %81, metadata !288, metadata !DIExpression()), !dbg !1212
  %82 = fmul double %36, %81, !dbg !1213
  %83 = fsub double %82, %78, !dbg !1215
  %84 = fadd double %83, 0x3F69818936D0805E, !dbg !1214
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %81, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %81, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %84, metadata !288, metadata !DIExpression()), !dbg !1212
  %85 = fmul double %36, %84, !dbg !1213
  %86 = fsub double %85, %81, !dbg !1215
  %87 = fadd double %86, 0x3FC322EEE696951C, !dbg !1214
  call void @llvm.dbg.value(metadata double %87, metadata !283, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !1189
  %88 = fmul double %35, %87, !dbg !1216
  %89 = fsub double %88, %84, !dbg !1217
  %90 = fadd double %89, 0xBFA8E1DDACE0511C, !dbg !1218
  tail call void @llvm.dbg.value(metadata double %90, metadata !1140, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1183
  %91 = tail call double @llvm.fabs.f64(double %90), !dbg !1219
  %92 = fmul double %91, 0x3CB0000000000000, !dbg !1220
  %93 = fadd double %92, 5.440000e-19, !dbg !1221
  tail call void @llvm.dbg.value(metadata double %93, metadata !1140, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1183
  %94 = fadd double %62, 2.500000e-01, !dbg !1222
  %95 = fmul double %30, %94, !dbg !1223
  %96 = fadd double %95, %90, !dbg !1224
  %97 = fadd double %96, 5.000000e-01, !dbg !1225
  store double %97, ptr %2, align 8, !dbg !1226, !tbaa !244
  %98 = fmul double %30, %65, !dbg !1227
  %99 = fadd double %98, %93, !dbg !1228
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1229
  %101 = tail call double @llvm.fabs.f64(double %97), !dbg !1230
  %102 = fmul double %101, 0x3CB0000000000000, !dbg !1231
  %103 = fadd double %99, %102, !dbg !1232
  store double %103, ptr %100, align 8, !dbg !1232, !tbaa !254
  br label %213

104:                                              ; preds = %27
  %105 = fcmp olt double %0, 2.000000e+00, !dbg !1233
  br i1 %105, label %106, label %194, !dbg !1234

106:                                              ; preds = %104
  tail call void @llvm.dbg.value(metadata double poison, metadata !1141, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i32 9, metadata !287, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 9, metadata !282, metadata !DIExpression()), !dbg !1236
  tail call void @llvm.dbg.value(metadata double poison, metadata !1141, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 9, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double poison, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double poison, metadata !284, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !1236
  tail call void @llvm.dbg.value(metadata double poison, metadata !1144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1235
  tail call void @llvm.dbg.value(metadata double poison, metadata !1144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1235
  call void @llvm.dbg.value(metadata !270, metadata !271, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double poison, metadata !279, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr undef, metadata !281, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double poison, metadata !285, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double poison, metadata !286, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %1, metadata !294, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 9, metadata !287, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 9, metadata !282, metadata !DIExpression()), !dbg !1241
  %107 = fmul double %0, 2.000000e+00, !dbg !1245
  %108 = fmul double %107, %0, !dbg !1246
  %109 = fmul double %108, %0, !dbg !1247
  %110 = fadd double %109, -9.000000e+00, !dbg !1248
  %111 = fdiv double %110, 7.000000e+00, !dbg !1249
  tail call void @llvm.dbg.value(metadata double %111, metadata !1141, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata double %111, metadata !279, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %111, metadata !279, metadata !DIExpression()), !dbg !1241
  %112 = fmul double %111, 2.000000e+00, !dbg !1250
  %113 = fadd double %112, 1.000000e+00, !dbg !1251
  %114 = fadd double %113, -1.000000e+00, !dbg !1252
  %115 = fmul double %114, 5.000000e-01, !dbg !1253
  call void @llvm.dbg.value(metadata double %115, metadata !285, metadata !DIExpression()), !dbg !1241
  %116 = fmul double %115, 2.000000e+00, !dbg !1254
  call void @llvm.dbg.value(metadata double %116, metadata !286, metadata !DIExpression()), !dbg !1241
  %117 = fadd double %112, 1.000000e+00, !dbg !1255
  %118 = fadd double %117, -1.000000e+00, !dbg !1256
  %119 = fmul double %118, 5.000000e-01, !dbg !1257
  call void @llvm.dbg.value(metadata double %119, metadata !285, metadata !DIExpression()), !dbg !1236
  %120 = fmul double %119, 2.000000e+00, !dbg !1258
  call void @llvm.dbg.value(metadata double %120, metadata !286, metadata !DIExpression()), !dbg !1236
  %121 = fmul double %120, 0.000000e+00, !dbg !1259
  %122 = fadd double %121, 3.820000e-19, !dbg !1260
  call void @llvm.dbg.value(metadata double %122, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %122, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %122, metadata !284, metadata !DIExpression()), !dbg !1236
  %123 = fmul double %120, %122, !dbg !1259
  %124 = fadd double %123, 1.719110e-16, !dbg !1260
  call void @llvm.dbg.value(metadata double %124, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %124, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %124, metadata !284, metadata !DIExpression()), !dbg !1236
  %125 = fmul double %120, %124, !dbg !1259
  %126 = fsub double %125, %122, !dbg !1261
  %127 = fadd double %126, 0x3D315B532C1052B5, !dbg !1260
  call void @llvm.dbg.value(metadata double %127, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %127, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %127, metadata !284, metadata !DIExpression()), !dbg !1236
  %128 = fmul double %120, %127, !dbg !1259
  %129 = fsub double %128, %124, !dbg !1261
  %130 = fadd double %129, 0x3DB2DA69C400FB0F, !dbg !1260
  call void @llvm.dbg.value(metadata double %130, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %130, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %130, metadata !284, metadata !DIExpression()), !dbg !1236
  %131 = fmul double %120, %130, !dbg !1259
  %132 = fsub double %131, %127, !dbg !1261
  %133 = fadd double %132, 0x3E2E985FC5232C55, !dbg !1260
  call void @llvm.dbg.value(metadata double %133, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %133, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %133, metadata !284, metadata !DIExpression()), !dbg !1236
  %134 = fmul double %120, %133, !dbg !1259
  %135 = fsub double %134, %130, !dbg !1261
  %136 = fadd double %135, 0x3EA1A4EEF043E8FC, !dbg !1260
  call void @llvm.dbg.value(metadata double %136, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %136, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %136, metadata !284, metadata !DIExpression()), !dbg !1236
  %137 = fmul double %120, %136, !dbg !1259
  %138 = fsub double %137, %133, !dbg !1261
  %139 = fadd double %138, 0x3F0AF6E37FAD4768, !dbg !1260
  call void @llvm.dbg.value(metadata double %139, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %139, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %139, metadata !284, metadata !DIExpression()), !dbg !1236
  %140 = fmul double %120, %139, !dbg !1259
  %141 = fsub double %140, %136, !dbg !1261
  %142 = fadd double %141, 0x3F6886ED3AA0192F, !dbg !1260
  call void @llvm.dbg.value(metadata double %142, metadata !283, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata double %142, metadata !288, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata double %142, metadata !284, metadata !DIExpression()), !dbg !1236
  %143 = fmul double %120, %142, !dbg !1259
  %144 = fsub double %143, %139, !dbg !1261
  %145 = fadd double %144, 0x3FB6179E07F5ABF0, !dbg !1260
  call void @llvm.dbg.value(metadata double %145, metadata !283, metadata !DIExpression()), !dbg !1236
  %146 = fmul double %119, %145, !dbg !1262
  %147 = fsub double %146, %142, !dbg !1263
  %148 = fadd double %147, 0x3FC4B420204D6CA7, !dbg !1264
  tail call void @llvm.dbg.value(metadata double %148, metadata !1144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1235
  %149 = tail call double @llvm.fabs.f64(double %148), !dbg !1265
  %150 = fmul double %149, 0x3CB0000000000000, !dbg !1266
  %151 = fadd double %150, 3.820000e-19, !dbg !1267
  tail call void @llvm.dbg.value(metadata double %151, metadata !1144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1235
  call void @llvm.dbg.value(metadata i64 9, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !288, metadata !DIExpression()), !dbg !1268
  %152 = fmul double %116, 0.000000e+00, !dbg !1269
  %153 = fadd double %152, 3.350000e-17, !dbg !1270
  call void @llvm.dbg.value(metadata double %153, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 8, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %153, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %153, metadata !288, metadata !DIExpression()), !dbg !1268
  %154 = fmul double %116, %153, !dbg !1269
  %155 = fadd double %154, 1.300170e-14, !dbg !1270
  call void @llvm.dbg.value(metadata double %155, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %153, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 7, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %155, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %153, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %155, metadata !288, metadata !DIExpression()), !dbg !1268
  %156 = fmul double %116, %155, !dbg !1269
  %157 = fsub double %156, %153, !dbg !1271
  %158 = fadd double %157, 0x3D9164B320CC30DC, !dbg !1270
  call void @llvm.dbg.value(metadata double %158, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %155, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 6, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %158, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %155, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %158, metadata !288, metadata !DIExpression()), !dbg !1268
  %159 = fmul double %116, %158, !dbg !1269
  %160 = fsub double %159, %155, !dbg !1271
  %161 = fadd double %160, 0x3E0F505F53BAE897, !dbg !1270
  call void @llvm.dbg.value(metadata double %161, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %158, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 5, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %161, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %158, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %161, metadata !288, metadata !DIExpression()), !dbg !1268
  %162 = fmul double %116, %161, !dbg !1269
  %163 = fsub double %162, %158, !dbg !1271
  %164 = fadd double %163, 0x3E846D36D9B9968B, !dbg !1270
  call void @llvm.dbg.value(metadata double %164, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %161, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %164, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %161, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %164, metadata !288, metadata !DIExpression()), !dbg !1268
  %165 = fmul double %116, %164, !dbg !1269
  %166 = fsub double %165, %161, !dbg !1271
  %167 = fadd double %166, 0x3EF229E75A591D73, !dbg !1270
  call void @llvm.dbg.value(metadata double %167, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %164, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %167, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %164, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %167, metadata !288, metadata !DIExpression()), !dbg !1268
  %168 = fmul double %116, %167, !dbg !1269
  %169 = fsub double %168, %164, !dbg !1271
  %170 = fadd double %169, 0x3F542075C674FDA9, !dbg !1270
  call void @llvm.dbg.value(metadata double %170, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %167, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %170, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %167, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %170, metadata !288, metadata !DIExpression()), !dbg !1268
  %171 = fmul double %116, %170, !dbg !1269
  %172 = fsub double %171, %167, !dbg !1271
  %173 = fadd double %172, 0x3FA81233D561FD01, !dbg !1270
  call void @llvm.dbg.value(metadata double %173, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %170, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %173, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %170, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %173, metadata !288, metadata !DIExpression()), !dbg !1268
  %174 = fmul double %116, %173, !dbg !1269
  %175 = fsub double %174, %170, !dbg !1271
  %176 = fadd double %175, 0x3FE7D64B26D45FE0, !dbg !1270
  call void @llvm.dbg.value(metadata double %176, metadata !283, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata double %173, metadata !284, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !1241
  %177 = fmul double %115, %176, !dbg !1272
  %178 = fsub double %177, %173, !dbg !1273
  %179 = fadd double %178, 0x3FE9B36792931206, !dbg !1274
  tail call void @llvm.dbg.value(metadata double %179, metadata !1145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1235
  %180 = tail call double @llvm.fabs.f64(double %179), !dbg !1275
  %181 = fmul double %180, 0x3CB0000000000000, !dbg !1276
  %182 = fadd double %181, 3.350000e-17, !dbg !1277
  tail call void @llvm.dbg.value(metadata double %182, metadata !1145, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1235
  %183 = fmul double %0, %0, !dbg !1278
  %184 = fadd double %148, 2.500000e-01, !dbg !1279
  %185 = fmul double %183, %184, !dbg !1280
  %186 = fadd double %185, %179, !dbg !1281
  %187 = fadd double %186, 5.000000e-01, !dbg !1282
  store double %187, ptr %2, align 8, !dbg !1283, !tbaa !244
  %188 = fmul double %183, %151, !dbg !1284
  %189 = fadd double %188, %182, !dbg !1285
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1286
  %191 = tail call double @llvm.fabs.f64(double %187), !dbg !1287
  %192 = fmul double %191, 0x3CB0000000000000, !dbg !1288
  %193 = fadd double %189, %192, !dbg !1289
  store double %193, ptr %190, align 8, !dbg !1289, !tbaa !254
  br label %213

194:                                              ; preds = %104
  %195 = fcmp olt double %0, 0x6A9965FEA53D6D85, !dbg !1290
  br i1 %195, label %196, label %211, !dbg !1291

196:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1292
  %197 = tail call double @sqrt(double noundef %0) #7, !dbg !1293
  %198 = fmul double %197, %0, !dbg !1294
  %199 = fdiv double %198, 3.000000e+00, !dbg !1295
  %200 = fmul double %199, 2.000000e+00, !dbg !1296
  tail call void @llvm.dbg.value(metadata double %200, metadata !1149, metadata !DIExpression()), !dbg !1156
  %201 = call i32 @gsl_sf_airy_Bi_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %6), !dbg !1297, !range !242
  tail call void @llvm.dbg.value(metadata i32 %201, metadata !1150, metadata !DIExpression()), !dbg !1156
  %202 = fmul double %200, 0x3CB0000000000000, !dbg !1298
  %203 = tail call double @llvm.fabs.f64(double %202), !dbg !1299
  %204 = fmul double %203, 1.500000e+00, !dbg !1300
  %205 = load double, ptr %6, align 8, !dbg !1301, !tbaa !244
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1302
  %207 = load double, ptr %206, align 8, !dbg !1302, !tbaa !254
  %208 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %200, double noundef %204, double noundef %205, double noundef %207, ptr noundef %2) #7, !dbg !1303
  tail call void @llvm.dbg.value(metadata i32 %208, metadata !1151, metadata !DIExpression()), !dbg !1156
  %209 = icmp eq i32 %208, 0, !dbg !1304
  %210 = select i1 %209, i32 %201, i32 %208, !dbg !1304
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1305
  br label %213

211:                                              ; preds = %194
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1306, !tbaa !244
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1306
  store double 0x7FF0000000000000, ptr %212, align 8, !dbg !1306, !tbaa !254
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 860, i32 noundef 16) #7, !dbg !1309
  br label %213, !dbg !1309

213:                                              ; preds = %8, %29, %106, %196, %211
  %214 = phi i32 [ %9, %8 ], [ 0, %29 ], [ 0, %106 ], [ %210, %196 ], [ 16, %211 ], !dbg !1311
  ret i32 %214, !dbg !1312
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai_deriv_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1313 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1321
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1319, metadata !DIExpression(), metadata !1321, metadata ptr %3, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata double %0, metadata !1317, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1318, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1323
  %4 = call i32 @gsl_sf_airy_Ai_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1323, !range !242
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1320, metadata !DIExpression()), !dbg !1322
  %5 = icmp eq i32 %4, 0, !dbg !1324
  br i1 %5, label %7, label %6, !dbg !1323

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 870, i32 noundef 1) #7, !dbg !1326
  br label %7, !dbg !1326

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1323, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1329
  ret double %8, !dbg !1329
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai_deriv(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1330 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1336
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1334, metadata !DIExpression(), metadata !1336, metadata ptr %3, metadata !DIExpression()), !dbg !1337
  tail call void @llvm.dbg.value(metadata double %0, metadata !1332, metadata !DIExpression()), !dbg !1337
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1333, metadata !DIExpression()), !dbg !1337
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1338
  %4 = call i32 @gsl_sf_airy_Ai_deriv_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1338
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1335, metadata !DIExpression()), !dbg !1337
  %5 = icmp eq i32 %4, 0, !dbg !1339
  br i1 %5, label %7, label %6, !dbg !1338

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 875, i32 noundef %4) #7, !dbg !1341
  br label %7, !dbg !1341

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1338, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1344
  ret double %8, !dbg !1344
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi_deriv_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1345 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1351
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1349, metadata !DIExpression(), metadata !1351, metadata ptr %3, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata double %0, metadata !1347, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1348, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1353
  %4 = call i32 @gsl_sf_airy_Bi_deriv_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1353, !range !242
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1350, metadata !DIExpression()), !dbg !1352
  %5 = icmp eq i32 %4, 0, !dbg !1354
  br i1 %5, label %7, label %6, !dbg !1353

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 880, i32 noundef 1) #7, !dbg !1356
  br label %7, !dbg !1356

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1353, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1359
  ret double %8, !dbg !1359
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi_deriv(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1360 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1366
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1364, metadata !DIExpression(), metadata !1366, metadata ptr %3, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata double %0, metadata !1362, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1363, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1368
  %4 = call i32 @gsl_sf_airy_Bi_deriv_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1368
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1365, metadata !DIExpression()), !dbg !1367
  %5 = icmp eq i32 %4, 0, !dbg !1369
  br i1 %5, label %7, label %6, !dbg !1368

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 885, i32 noundef %4) #7, !dbg !1371
  br label %7, !dbg !1371

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1368, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1374
  ret double %8, !dbg !1374
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!249 = !DILocation(line: 644, column: 19, scope: !208)
!250 = !DILocation(line: 645, column: 22, scope: !208)
!251 = !DILocation(line: 645, column: 26, scope: !208)
!252 = !DILocation(line: 645, column: 18, scope: !208)
!253 = !DILocation(line: 646, column: 41, scope: !208)
!254 = !{!245, !246, i64 8}
!255 = !DILocation(line: 646, column: 37, scope: !208)
!256 = !DILocation(line: 646, column: 20, scope: !208)
!257 = !DILocation(line: 646, column: 59, scope: !208)
!258 = !DILocation(line: 646, column: 55, scope: !208)
!259 = !DILocation(line: 646, column: 48, scope: !208)
!260 = !DILocation(line: 646, column: 46, scope: !208)
!261 = !DILocation(line: 646, column: 13, scope: !208)
!262 = !DILocation(line: 647, column: 38, scope: !208)
!263 = !DILocation(line: 647, column: 36, scope: !208)
!264 = !DILocation(line: 647, column: 17, scope: !208)
!265 = !DILocation(line: 649, column: 3, scope: !209)
!266 = !DILocation(line: 650, column: 13, scope: !215)
!267 = !DILocation(line: 650, column: 11, scope: !209)
!268 = !DILocation(line: 651, column: 24, scope: !214)
!269 = !DILocation(line: 0, scope: !214)
!270 = !{}
!271 = !DILocalVariable(name: "cs", arg: 1, scope: !272, file: !273, line: 2, type: !276)
!272 = distinct !DISubprogram(name: "cheb_eval_mode_e", scope: !273, file: !273, line: 2, type: !274, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !278)
!273 = !DIFile(filename: "./cheb_eval_mode.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "1b36305c73b17885740c92e41c9327b0")
!274 = !DISubroutineType(types: !275)
!275 = !{!42, !276, !193, !194, !196}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!278 = !{!271, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!279 = !DILocalVariable(name: "x", arg: 2, scope: !272, file: !273, line: 3, type: !193)
!280 = !DILocalVariable(name: "mode", arg: 3, scope: !272, file: !273, line: 4, type: !194)
!281 = !DILocalVariable(name: "result", arg: 4, scope: !272, file: !273, line: 5, type: !196)
!282 = !DILocalVariable(name: "j", scope: !272, file: !273, line: 7, type: !42)
!283 = !DILocalVariable(name: "d", scope: !272, file: !273, line: 8, type: !90)
!284 = !DILocalVariable(name: "dd", scope: !272, file: !273, line: 9, type: !90)
!285 = !DILocalVariable(name: "y", scope: !272, file: !273, line: 11, type: !90)
!286 = !DILocalVariable(name: "y2", scope: !272, file: !273, line: 12, type: !90)
!287 = !DILocalVariable(name: "eval_order", scope: !272, file: !273, line: 14, type: !42)
!288 = !DILocalVariable(name: "temp", scope: !289, file: !273, line: 22, type: !90)
!289 = distinct !DILexicalBlock(scope: !290, file: !273, line: 21, column: 34)
!290 = distinct !DILexicalBlock(scope: !291, file: !273, line: 21, column: 3)
!291 = distinct !DILexicalBlock(scope: !272, file: !273, line: 21, column: 3)
!292 = !DILocation(line: 0, scope: !272, inlinedAt: !293)
!293 = distinct !DILocation(line: 655, column: 5, scope: !214)
!294 = !DILocalVariable(name: "mt", arg: 1, scope: !295, file: !195, line: 74, type: !194)
!295 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !195, file: !195, line: 74, type: !296, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!80, !194}
!298 = !{!294}
!299 = !DILocation(line: 0, scope: !295, inlinedAt: !300)
!300 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !293)
!301 = distinct !DILexicalBlock(scope: !272, file: !273, line: 16, column: 6)
!302 = !DILocation(line: 0, scope: !289, inlinedAt: !293)
!303 = !DILocation(line: 0, scope: !272, inlinedAt: !304)
!304 = distinct !DILocation(line: 656, column: 5, scope: !214)
!305 = !DILocation(line: 0, scope: !295, inlinedAt: !306)
!306 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !304)
!307 = !DILocation(line: 651, column: 26, scope: !214)
!308 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !293)
!309 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !304)
!310 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !304)
!311 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !304)
!312 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !304)
!313 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !293)
!314 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !293)
!315 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !293)
!316 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !293)
!317 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !293)
!318 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !293)
!319 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !293)
!320 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !293)
!321 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !293)
!322 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !293)
!323 = !DILocation(line: 0, scope: !289, inlinedAt: !304)
!324 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !304)
!325 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !304)
!326 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !304)
!327 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !304)
!328 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !304)
!329 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !304)
!330 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !304)
!331 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !304)
!332 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !304)
!333 = !DILocation(line: 658, column: 31, scope: !214)
!334 = !DILocation(line: 658, column: 23, scope: !214)
!335 = !DILocation(line: 658, column: 48, scope: !214)
!336 = !DILocation(line: 658, column: 65, scope: !214)
!337 = !DILocation(line: 658, column: 18, scope: !214)
!338 = !DILocation(line: 659, column: 27, scope: !214)
!339 = !DILocation(line: 659, column: 20, scope: !214)
!340 = !DILocation(line: 659, column: 43, scope: !214)
!341 = !DILocation(line: 659, column: 13, scope: !214)
!342 = !DILocation(line: 660, column: 38, scope: !214)
!343 = !DILocation(line: 660, column: 36, scope: !214)
!344 = !DILocation(line: 660, column: 17, scope: !214)
!345 = !DILocation(line: 662, column: 10, scope: !221)
!346 = !DILocation(line: 662, column: 8, scope: !214)
!347 = !DILocation(line: 664, column: 25, scope: !220)
!348 = !DILocation(line: 664, column: 28, scope: !220)
!349 = !DILocation(line: 664, column: 27, scope: !220)
!350 = !DILocation(line: 664, column: 35, scope: !220)
!351 = !DILocation(line: 664, column: 18, scope: !220)
!352 = !DILocation(line: 0, scope: !220)
!353 = !DILocation(line: 665, column: 19, scope: !220)
!354 = !DILocation(line: 666, column: 19, scope: !220)
!355 = !DILocation(line: 667, column: 5, scope: !220)
!356 = !DILocation(line: 671, column: 13, scope: !224)
!357 = !DILocation(line: 0, scope: !224)
!358 = !DILocation(line: 671, column: 11, scope: !215)
!359 = !DILocation(line: 0, scope: !223)
!360 = !DILocation(line: 673, column: 38, scope: !223)
!361 = !DILocation(line: 673, column: 44, scope: !223)
!362 = !DILocation(line: 674, column: 22, scope: !223)
!363 = !DILocation(line: 0, scope: !272, inlinedAt: !364)
!364 = distinct !DILocation(line: 676, column: 5, scope: !223)
!365 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !364)
!366 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !364)
!367 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !364)
!368 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !364)
!369 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !364)
!370 = !DILocation(line: 0, scope: !295, inlinedAt: !371)
!371 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !364)
!372 = !DILocation(line: 75, column: 15, scope: !295, inlinedAt: !371)
!373 = !DILocation(line: 16, column: 26, scope: !301, inlinedAt: !364)
!374 = !DILocation(line: 0, scope: !301, inlinedAt: !364)
!375 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !364)
!376 = !DILocation(line: 0, scope: !289, inlinedAt: !364)
!377 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !364)
!378 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !364)
!379 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !364)
!380 = !{!246, !246, i64 0}
!381 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !364)
!382 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !364)
!383 = distinct !{!383, !384}
!384 = !{!"llvm.loop.unroll.disable"}
!385 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !364)
!386 = distinct !{!386, !375, !387, !388}
!387 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !364)
!388 = !{!"llvm.loop.mustprogress"}
!389 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !364)
!390 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !364)
!391 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !364)
!392 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !364)
!393 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !364)
!394 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !364)
!395 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !364)
!396 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !364)
!397 = !DILocation(line: 677, column: 30, scope: !223)
!398 = !DILocation(line: 677, column: 20, scope: !223)
!399 = !DILocation(line: 677, column: 47, scope: !223)
!400 = !DILocation(line: 677, column: 18, scope: !223)
!401 = !DILocation(line: 678, column: 34, scope: !223)
!402 = !DILocation(line: 678, column: 13, scope: !223)
!403 = !DILocation(line: 679, column: 38, scope: !223)
!404 = !DILocation(line: 679, column: 36, scope: !223)
!405 = !DILocation(line: 679, column: 17, scope: !223)
!406 = !DILocation(line: 0, scope: !229)
!407 = !DILocation(line: 684, column: 37, scope: !229)
!408 = !DILocation(line: 685, column: 22, scope: !229)
!409 = !DILocation(line: 0, scope: !272, inlinedAt: !410)
!410 = distinct !DILocation(line: 687, column: 5, scope: !229)
!411 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !410)
!412 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !410)
!413 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !410)
!414 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !410)
!415 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !410)
!416 = !DILocation(line: 0, scope: !295, inlinedAt: !417)
!417 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !410)
!418 = !DILocation(line: 75, column: 15, scope: !295, inlinedAt: !417)
!419 = !DILocation(line: 16, column: 26, scope: !301, inlinedAt: !410)
!420 = !DILocation(line: 0, scope: !301, inlinedAt: !410)
!421 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !410)
!422 = !DILocation(line: 0, scope: !289, inlinedAt: !410)
!423 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !410)
!424 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !410)
!425 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !410)
!426 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !410)
!427 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !410)
!428 = distinct !{!428, !384}
!429 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !410)
!430 = distinct !{!430, !421, !431, !388}
!431 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !410)
!432 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !410)
!433 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !410)
!434 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !410)
!435 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !410)
!436 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !410)
!437 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !410)
!438 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !410)
!439 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !410)
!440 = !DILocation(line: 688, column: 30, scope: !229)
!441 = !DILocation(line: 688, column: 20, scope: !229)
!442 = !DILocation(line: 688, column: 47, scope: !229)
!443 = !DILocation(line: 688, column: 18, scope: !229)
!444 = !DILocation(line: 689, column: 34, scope: !229)
!445 = !DILocation(line: 689, column: 13, scope: !229)
!446 = !DILocation(line: 690, column: 38, scope: !229)
!447 = !DILocation(line: 690, column: 36, scope: !229)
!448 = !DILocation(line: 690, column: 17, scope: !229)
!449 = !DILocation(line: 0, scope: !209)
!450 = !DILocation(line: 693, column: 1, scope: !190)
!451 = distinct !DISubprogram(name: "airy_deriv_mod_phase", scope: !2, file: !2, line: 587, type: !452, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!42, !193, !194, !196, !196}
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !468, !471}
!455 = !DILocalVariable(name: "x", arg: 1, scope: !451, file: !2, line: 587, type: !193)
!456 = !DILocalVariable(name: "mode", arg: 2, scope: !451, file: !2, line: 587, type: !194)
!457 = !DILocalVariable(name: "ampl", arg: 3, scope: !451, file: !2, line: 588, type: !196)
!458 = !DILocalVariable(name: "phi", arg: 4, scope: !451, file: !2, line: 588, type: !196)
!459 = !DILocalVariable(name: "pi34", scope: !451, file: !2, line: 590, type: !193)
!460 = !DILocalVariable(name: "result_a", scope: !451, file: !2, line: 591, type: !197)
!461 = !DILocalVariable(name: "result_p", scope: !451, file: !2, line: 592, type: !197)
!462 = !DILocalVariable(name: "a", scope: !451, file: !2, line: 593, type: !90)
!463 = !DILocalVariable(name: "p", scope: !451, file: !2, line: 593, type: !90)
!464 = !DILocalVariable(name: "sqx", scope: !451, file: !2, line: 594, type: !90)
!465 = !DILocalVariable(name: "z", scope: !466, file: !2, line: 597, type: !90)
!466 = distinct !DILexicalBlock(scope: !467, file: !2, line: 596, column: 17)
!467 = distinct !DILexicalBlock(scope: !451, file: !2, line: 596, column: 6)
!468 = !DILocalVariable(name: "z", scope: !469, file: !2, line: 602, type: !90)
!469 = distinct !DILexicalBlock(scope: !470, file: !2, line: 601, column: 22)
!470 = distinct !DILexicalBlock(scope: !467, file: !2, line: 601, column: 11)
!471 = !DILocalVariable(name: "z", scope: !472, file: !2, line: 607, type: !90)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 606, column: 22)
!473 = distinct !DILexicalBlock(scope: !470, file: !2, line: 606, column: 11)
!474 = !DILocation(line: 0, scope: !451)
!475 = !DILocation(line: 596, column: 8, scope: !467)
!476 = !DILocation(line: 596, column: 6, scope: !451)
!477 = !DILocation(line: 597, column: 24, scope: !466)
!478 = !DILocation(line: 597, column: 26, scope: !466)
!479 = !DILocation(line: 597, column: 21, scope: !466)
!480 = !DILocation(line: 597, column: 30, scope: !466)
!481 = !DILocation(line: 0, scope: !466)
!482 = !DILocation(line: 0, scope: !272, inlinedAt: !483)
!483 = distinct !DILocation(line: 598, column: 5, scope: !466)
!484 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !483)
!485 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !483)
!486 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !483)
!487 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !483)
!488 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !483)
!489 = !DILocation(line: 0, scope: !295, inlinedAt: !490)
!490 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !483)
!491 = !DILocation(line: 75, column: 15, scope: !295, inlinedAt: !490)
!492 = !DILocation(line: 16, column: 26, scope: !301, inlinedAt: !483)
!493 = !DILocation(line: 0, scope: !301, inlinedAt: !483)
!494 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !483)
!495 = !DILocation(line: 0, scope: !289, inlinedAt: !483)
!496 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !483)
!497 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !483)
!498 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !483)
!499 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !483)
!500 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !483)
!501 = distinct !{!501, !384}
!502 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !483)
!503 = distinct !{!503, !494, !504, !388}
!504 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !483)
!505 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !483)
!506 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !483)
!507 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !483)
!508 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !483)
!509 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !483)
!510 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !483)
!511 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !483)
!512 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !483)
!513 = !DILocation(line: 0, scope: !272, inlinedAt: !514)
!514 = distinct !DILocation(line: 599, column: 5, scope: !466)
!515 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !514)
!516 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !514)
!517 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !514)
!518 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !514)
!519 = !DILocation(line: 0, scope: !295, inlinedAt: !520)
!520 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !514)
!521 = !DILocation(line: 0, scope: !301, inlinedAt: !514)
!522 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !514)
!523 = !DILocation(line: 0, scope: !289, inlinedAt: !514)
!524 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !514)
!525 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !514)
!526 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !514)
!527 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !514)
!528 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !514)
!529 = distinct !{!529, !384}
!530 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !514)
!531 = distinct !{!531, !522, !532, !388}
!532 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !514)
!533 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !514)
!534 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !514)
!535 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !514)
!536 = !DILocation(line: 600, column: 3, scope: !466)
!537 = !DILocation(line: 601, column: 13, scope: !470)
!538 = !DILocation(line: 601, column: 11, scope: !467)
!539 = !DILocation(line: 602, column: 25, scope: !469)
!540 = !DILocation(line: 602, column: 27, scope: !469)
!541 = !DILocation(line: 602, column: 22, scope: !469)
!542 = !DILocation(line: 602, column: 31, scope: !469)
!543 = !DILocation(line: 602, column: 38, scope: !469)
!544 = !DILocation(line: 0, scope: !469)
!545 = !DILocation(line: 0, scope: !272, inlinedAt: !546)
!546 = distinct !DILocation(line: 603, column: 5, scope: !469)
!547 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !546)
!548 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !546)
!549 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !546)
!550 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !546)
!551 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !546)
!552 = !DILocation(line: 0, scope: !295, inlinedAt: !553)
!553 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !546)
!554 = !DILocation(line: 75, column: 15, scope: !295, inlinedAt: !553)
!555 = !DILocation(line: 16, column: 26, scope: !301, inlinedAt: !546)
!556 = !DILocation(line: 0, scope: !301, inlinedAt: !546)
!557 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !546)
!558 = !DILocation(line: 0, scope: !289, inlinedAt: !546)
!559 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !546)
!560 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !546)
!561 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !546)
!562 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !546)
!563 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !546)
!564 = distinct !{!564, !384}
!565 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !546)
!566 = distinct !{!566, !557, !567, !388}
!567 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !546)
!568 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !546)
!569 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !546)
!570 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !546)
!571 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !546)
!572 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !546)
!573 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !546)
!574 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !546)
!575 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !546)
!576 = !DILocation(line: 0, scope: !272, inlinedAt: !577)
!577 = distinct !DILocation(line: 604, column: 5, scope: !469)
!578 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !577)
!579 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !577)
!580 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !577)
!581 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !577)
!582 = !DILocation(line: 0, scope: !295, inlinedAt: !583)
!583 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !577)
!584 = !DILocation(line: 0, scope: !301, inlinedAt: !577)
!585 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !577)
!586 = !DILocation(line: 0, scope: !289, inlinedAt: !577)
!587 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !577)
!588 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !577)
!589 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !577)
!590 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !577)
!591 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !577)
!592 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !577)
!593 = distinct !{!593, !585, !594, !388}
!594 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !577)
!595 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !577)
!596 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !577)
!597 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !577)
!598 = !DILocation(line: 605, column: 3, scope: !469)
!599 = !DILocation(line: 606, column: 13, scope: !473)
!600 = !DILocation(line: 606, column: 11, scope: !470)
!601 = !DILocation(line: 607, column: 24, scope: !472)
!602 = !DILocation(line: 607, column: 26, scope: !472)
!603 = !DILocation(line: 607, column: 21, scope: !472)
!604 = !DILocation(line: 607, column: 30, scope: !472)
!605 = !DILocation(line: 607, column: 37, scope: !472)
!606 = !DILocation(line: 0, scope: !472)
!607 = !DILocation(line: 0, scope: !272, inlinedAt: !608)
!608 = distinct !DILocation(line: 608, column: 5, scope: !472)
!609 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !608)
!610 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !608)
!611 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !608)
!612 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !608)
!613 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !608)
!614 = !DILocation(line: 0, scope: !295, inlinedAt: !615)
!615 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !608)
!616 = !DILocation(line: 75, column: 15, scope: !295, inlinedAt: !615)
!617 = !DILocation(line: 16, column: 26, scope: !301, inlinedAt: !608)
!618 = !DILocation(line: 0, scope: !301, inlinedAt: !608)
!619 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !608)
!620 = !DILocation(line: 0, scope: !289, inlinedAt: !608)
!621 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !608)
!622 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !608)
!623 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !608)
!624 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !608)
!625 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !608)
!626 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !608)
!627 = distinct !{!627, !619, !628, !388}
!628 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !608)
!629 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !608)
!630 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !608)
!631 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !608)
!632 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !608)
!633 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !608)
!634 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !608)
!635 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !608)
!636 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !608)
!637 = !DILocation(line: 0, scope: !272, inlinedAt: !638)
!638 = distinct !DILocation(line: 609, column: 5, scope: !472)
!639 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !638)
!640 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !638)
!641 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !638)
!642 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !638)
!643 = !DILocation(line: 0, scope: !295, inlinedAt: !644)
!644 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !638)
!645 = !DILocation(line: 0, scope: !301, inlinedAt: !638)
!646 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !638)
!647 = !DILocation(line: 0, scope: !289, inlinedAt: !638)
!648 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !638)
!649 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !638)
!650 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !638)
!651 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !638)
!652 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !638)
!653 = distinct !{!653, !384}
!654 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !638)
!655 = distinct !{!655, !646, !656, !388}
!656 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !638)
!657 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !638)
!658 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !638)
!659 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !638)
!660 = !DILocation(line: 613, column: 15, scope: !661)
!661 = distinct !DILexicalBlock(scope: !473, file: !2, line: 611, column: 8)
!662 = !DILocation(line: 615, column: 15, scope: !661)
!663 = !DILocation(line: 616, column: 5, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !2, line: 616, column: 5)
!665 = !DILocation(line: 28, column: 15, scope: !272, inlinedAt: !666)
!666 = !DILocation(line: 0, scope: !467)
!667 = !DILocation(line: 27, column: 15, scope: !272, inlinedAt: !666)
!668 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !666)
!669 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !666)
!670 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !666)
!671 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !666)
!672 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !666)
!673 = !DILocation(line: 619, column: 15, scope: !451)
!674 = !DILocation(line: 620, column: 15, scope: !451)
!675 = !DILocation(line: 622, column: 14, scope: !451)
!676 = !DILocation(line: 622, column: 9, scope: !451)
!677 = !DILocation(line: 624, column: 22, scope: !451)
!678 = !DILocation(line: 624, column: 15, scope: !451)
!679 = !DILocation(line: 624, column: 13, scope: !451)
!680 = !DILocation(line: 625, column: 15, scope: !451)
!681 = !DILocation(line: 625, column: 69, scope: !451)
!682 = !DILocation(line: 625, column: 52, scope: !451)
!683 = !DILocation(line: 625, column: 50, scope: !451)
!684 = !DILocation(line: 625, column: 31, scope: !451)
!685 = !DILocation(line: 625, column: 9, scope: !451)
!686 = !DILocation(line: 625, column: 13, scope: !451)
!687 = !DILocation(line: 626, column: 24, scope: !451)
!688 = !DILocation(line: 626, column: 30, scope: !451)
!689 = !DILocation(line: 626, column: 20, scope: !451)
!690 = !DILocation(line: 626, column: 13, scope: !451)
!691 = !DILocation(line: 627, column: 14, scope: !451)
!692 = !DILocation(line: 627, column: 67, scope: !451)
!693 = !DILocation(line: 627, column: 50, scope: !451)
!694 = !DILocation(line: 627, column: 48, scope: !451)
!695 = !DILocation(line: 627, column: 29, scope: !451)
!696 = !DILocation(line: 627, column: 8, scope: !451)
!697 = !DILocation(line: 627, column: 12, scope: !451)
!698 = !DILocation(line: 629, column: 3, scope: !451)
!699 = !DILocation(line: 630, column: 1, scope: !451)
!700 = !DISubprogram(name: "cos", scope: !701, file: !701, line: 62, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!702 = !DISubroutineType(types: !703)
!703 = !{!90, !90}
!704 = !DISubprogram(name: "exp", scope: !701, file: !701, line: 95, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DISubprogram(name: "sqrt", scope: !701, file: !701, line: 143, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_e", scope: !2, file: !2, line: 697, type: !191, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !707)
!707 = !{!708, !709, !710, !711, !714, !715, !716, !717, !720, !721, !722, !725, !726, !728}
!708 = !DILocalVariable(name: "x", arg: 1, scope: !706, file: !2, line: 697, type: !193)
!709 = !DILocalVariable(name: "mode", arg: 2, scope: !706, file: !2, line: 697, type: !194)
!710 = !DILocalVariable(name: "result", arg: 3, scope: !706, file: !2, line: 697, type: !196)
!711 = !DILocalVariable(name: "a", scope: !712, file: !2, line: 702, type: !197)
!712 = distinct !DILexicalBlock(scope: !713, file: !2, line: 701, column: 16)
!713 = distinct !DILexicalBlock(scope: !706, file: !2, line: 701, column: 6)
!714 = !DILocalVariable(name: "p", scope: !712, file: !2, line: 703, type: !197)
!715 = !DILocalVariable(name: "status_ap", scope: !712, file: !2, line: 704, type: !42)
!716 = !DILocalVariable(name: "c", scope: !712, file: !2, line: 705, type: !90)
!717 = !DILocalVariable(name: "x3", scope: !718, file: !2, line: 712, type: !193)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 711, column: 20)
!719 = distinct !DILexicalBlock(scope: !713, file: !2, line: 711, column: 11)
!720 = !DILocalVariable(name: "result_c1", scope: !718, file: !2, line: 713, type: !197)
!721 = !DILocalVariable(name: "result_c2", scope: !718, file: !2, line: 714, type: !197)
!722 = !DILocalVariable(name: "result_aps", scope: !723, file: !2, line: 723, type: !197)
!723 = distinct !DILexicalBlock(scope: !724, file: !2, line: 722, column: 62)
!724 = distinct !DILexicalBlock(scope: !719, file: !2, line: 722, column: 11)
!725 = !DILocalVariable(name: "arg", scope: !723, file: !2, line: 724, type: !193)
!726 = !DILocalVariable(name: "stat_a", scope: !723, file: !2, line: 725, type: !727)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!728 = !DILocalVariable(name: "stat_e", scope: !723, file: !2, line: 726, type: !727)
!729 = distinct !DIAssignID()
!730 = !DILocation(line: 0, scope: !712)
!731 = distinct !DIAssignID()
!732 = distinct !DIAssignID()
!733 = !DILocation(line: 0, scope: !723)
!734 = !DILocation(line: 0, scope: !706)
!735 = !DILocation(line: 701, column: 8, scope: !713)
!736 = !DILocation(line: 701, column: 6, scope: !706)
!737 = !DILocation(line: 702, column: 5, scope: !712)
!738 = !DILocation(line: 703, column: 5, scope: !712)
!739 = !DILocation(line: 704, column: 21, scope: !712)
!740 = !DILocation(line: 705, column: 25, scope: !712)
!741 = !DILocation(line: 705, column: 19, scope: !712)
!742 = !DILocation(line: 706, column: 22, scope: !712)
!743 = !DILocation(line: 706, column: 26, scope: !712)
!744 = !DILocation(line: 706, column: 18, scope: !712)
!745 = !DILocation(line: 707, column: 41, scope: !712)
!746 = !DILocation(line: 707, column: 37, scope: !712)
!747 = !DILocation(line: 707, column: 20, scope: !712)
!748 = !DILocation(line: 707, column: 59, scope: !712)
!749 = !DILocation(line: 707, column: 55, scope: !712)
!750 = !DILocation(line: 707, column: 48, scope: !712)
!751 = !DILocation(line: 707, column: 46, scope: !712)
!752 = !DILocation(line: 707, column: 13, scope: !712)
!753 = !DILocation(line: 708, column: 38, scope: !712)
!754 = !DILocation(line: 708, column: 36, scope: !712)
!755 = !DILocation(line: 708, column: 17, scope: !712)
!756 = !DILocation(line: 710, column: 3, scope: !713)
!757 = !DILocation(line: 711, column: 13, scope: !719)
!758 = !DILocation(line: 0, scope: !719)
!759 = !DILocation(line: 711, column: 11, scope: !713)
!760 = !DILocation(line: 0, scope: !718)
!761 = !DILocation(line: 0, scope: !272, inlinedAt: !762)
!762 = distinct !DILocation(line: 715, column: 5, scope: !718)
!763 = !DILocation(line: 0, scope: !295, inlinedAt: !764)
!764 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !762)
!765 = !DILocation(line: 0, scope: !289, inlinedAt: !762)
!766 = !DILocation(line: 0, scope: !272, inlinedAt: !767)
!767 = distinct !DILocation(line: 716, column: 5, scope: !718)
!768 = !DILocation(line: 0, scope: !295, inlinedAt: !769)
!769 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !767)
!770 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !762)
!771 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !767)
!772 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !767)
!773 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !767)
!774 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !767)
!775 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !762)
!776 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !762)
!777 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !762)
!778 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !762)
!779 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !762)
!780 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !762)
!781 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !762)
!782 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !762)
!783 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !762)
!784 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !762)
!785 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !762)
!786 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !762)
!787 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !762)
!788 = !DILocation(line: 0, scope: !289, inlinedAt: !767)
!789 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !767)
!790 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !767)
!791 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !767)
!792 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !767)
!793 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !767)
!794 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !767)
!795 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !767)
!796 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !767)
!797 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !767)
!798 = !DILocation(line: 717, column: 32, scope: !718)
!799 = !DILocation(line: 717, column: 24, scope: !718)
!800 = !DILocation(line: 717, column: 49, scope: !718)
!801 = !DILocation(line: 717, column: 66, scope: !718)
!802 = !DILocation(line: 717, column: 18, scope: !718)
!803 = !DILocation(line: 718, column: 28, scope: !718)
!804 = !DILocation(line: 718, column: 20, scope: !718)
!805 = !DILocation(line: 718, column: 44, scope: !718)
!806 = !DILocation(line: 718, column: 13, scope: !718)
!807 = !DILocation(line: 719, column: 38, scope: !718)
!808 = !DILocation(line: 719, column: 36, scope: !718)
!809 = !DILocation(line: 719, column: 17, scope: !718)
!810 = !DILocation(line: 722, column: 17, scope: !724)
!811 = !DILocation(line: 722, column: 11, scope: !719)
!812 = !DILocation(line: 723, column: 5, scope: !723)
!813 = !DILocation(line: 724, column: 28, scope: !723)
!814 = !DILocation(line: 724, column: 31, scope: !723)
!815 = !DILocation(line: 724, column: 30, scope: !723)
!816 = !DILocation(line: 724, column: 38, scope: !723)
!817 = !DILocation(line: 725, column: 24, scope: !723)
!818 = !DILocation(line: 726, column: 63, scope: !723)
!819 = !DILocation(line: 726, column: 55, scope: !723)
!820 = !DILocation(line: 726, column: 54, scope: !723)
!821 = !DILocation(line: 727, column: 60, scope: !723)
!822 = !DILocation(line: 727, column: 76, scope: !723)
!823 = !DILocation(line: 726, column: 24, scope: !723)
!824 = !DILocation(line: 729, column: 12, scope: !723)
!825 = !DILocation(line: 730, column: 3, scope: !724)
!826 = !DILocation(line: 732, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 732, column: 5)
!828 = distinct !DILexicalBlock(scope: !724, file: !2, line: 731, column: 8)
!829 = !DILocation(line: 732, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !2, line: 732, column: 5)
!831 = !DILocation(line: 0, scope: !713)
!832 = !DILocation(line: 734, column: 1, scope: !706)
!833 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !834, file: !834, line: 122, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!834 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!835 = !DISubroutineType(types: !836)
!836 = !{!42, !193, !193, !193, !193, !196}
!837 = !DISubprogram(name: "gsl_error", scope: !41, file: !41, line: 77, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840, !840, !42, !42}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!842 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_scaled_e", scope: !2, file: !2, line: 738, type: !191, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !852, !853, !854, !855, !858, !859, !860, !861, !864, !867, !868, !869, !870, !873, !874, !875, !876, !878, !879, !880}
!844 = !DILocalVariable(name: "x", arg: 1, scope: !842, file: !2, line: 738, type: !193)
!845 = !DILocalVariable(name: "mode", arg: 2, scope: !842, file: !2, line: 738, type: !194)
!846 = !DILocalVariable(name: "result", arg: 3, scope: !842, file: !2, line: 738, type: !196)
!847 = !DILocalVariable(name: "atr", scope: !842, file: !2, line: 740, type: !193)
!848 = !DILocalVariable(name: "btr", scope: !842, file: !2, line: 741, type: !193)
!849 = !DILocalVariable(name: "a", scope: !850, file: !2, line: 746, type: !197)
!850 = distinct !DILexicalBlock(scope: !851, file: !2, line: 745, column: 16)
!851 = distinct !DILexicalBlock(scope: !842, file: !2, line: 745, column: 6)
!852 = !DILocalVariable(name: "p", scope: !850, file: !2, line: 747, type: !197)
!853 = !DILocalVariable(name: "status_ap", scope: !850, file: !2, line: 748, type: !42)
!854 = !DILocalVariable(name: "s", scope: !850, file: !2, line: 749, type: !90)
!855 = !DILocalVariable(name: "x3", scope: !856, file: !2, line: 756, type: !193)
!856 = distinct !DILexicalBlock(scope: !857, file: !2, line: 755, column: 20)
!857 = distinct !DILexicalBlock(scope: !851, file: !2, line: 755, column: 11)
!858 = !DILocalVariable(name: "x2", scope: !856, file: !2, line: 757, type: !193)
!859 = !DILocalVariable(name: "result_c1", scope: !856, file: !2, line: 758, type: !197)
!860 = !DILocalVariable(name: "result_c2", scope: !856, file: !2, line: 759, type: !197)
!861 = !DILocalVariable(name: "s", scope: !862, file: !2, line: 768, type: !193)
!862 = distinct !DILexicalBlock(scope: !863, file: !2, line: 766, column: 57)
!863 = distinct !DILexicalBlock(scope: !856, file: !2, line: 766, column: 8)
!864 = !DILocalVariable(name: "z", scope: !865, file: !2, line: 776, type: !193)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 775, column: 20)
!866 = distinct !DILexicalBlock(scope: !857, file: !2, line: 775, column: 11)
!867 = !DILocalVariable(name: "s", scope: !865, file: !2, line: 777, type: !193)
!868 = !DILocalVariable(name: "result_c0", scope: !865, file: !2, line: 778, type: !197)
!869 = !DILocalVariable(name: "result_c1", scope: !865, file: !2, line: 779, type: !197)
!870 = !DILocalVariable(name: "sqrtx", scope: !871, file: !2, line: 788, type: !193)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 787, column: 20)
!872 = distinct !DILexicalBlock(scope: !866, file: !2, line: 787, column: 11)
!873 = !DILocalVariable(name: "z", scope: !871, file: !2, line: 789, type: !193)
!874 = !DILocalVariable(name: "s", scope: !871, file: !2, line: 790, type: !193)
!875 = !DILocalVariable(name: "result_c0", scope: !871, file: !2, line: 791, type: !197)
!876 = !DILocalVariable(name: "sqrtx", scope: !877, file: !2, line: 799, type: !193)
!877 = distinct !DILexicalBlock(scope: !872, file: !2, line: 798, column: 8)
!878 = !DILocalVariable(name: "z", scope: !877, file: !2, line: 800, type: !193)
!879 = !DILocalVariable(name: "s", scope: !877, file: !2, line: 801, type: !193)
!880 = !DILocalVariable(name: "result_c0", scope: !877, file: !2, line: 802, type: !197)
!881 = distinct !DIAssignID()
!882 = !DILocation(line: 0, scope: !850)
!883 = distinct !DIAssignID()
!884 = !DILocation(line: 0, scope: !842)
!885 = !DILocation(line: 745, column: 8, scope: !851)
!886 = !DILocation(line: 745, column: 6, scope: !842)
!887 = !DILocation(line: 746, column: 5, scope: !850)
!888 = !DILocation(line: 747, column: 5, scope: !850)
!889 = !DILocation(line: 748, column: 21, scope: !850)
!890 = !DILocation(line: 749, column: 26, scope: !850)
!891 = !DILocation(line: 749, column: 20, scope: !850)
!892 = !DILocation(line: 750, column: 22, scope: !850)
!893 = !DILocation(line: 750, column: 26, scope: !850)
!894 = !DILocation(line: 750, column: 18, scope: !850)
!895 = !DILocation(line: 751, column: 41, scope: !850)
!896 = !DILocation(line: 751, column: 37, scope: !850)
!897 = !DILocation(line: 751, column: 20, scope: !850)
!898 = !DILocation(line: 751, column: 59, scope: !850)
!899 = !DILocation(line: 751, column: 55, scope: !850)
!900 = !DILocation(line: 751, column: 48, scope: !850)
!901 = !DILocation(line: 751, column: 46, scope: !850)
!902 = !DILocation(line: 751, column: 13, scope: !850)
!903 = !DILocation(line: 752, column: 38, scope: !850)
!904 = !DILocation(line: 752, column: 36, scope: !850)
!905 = !DILocation(line: 752, column: 17, scope: !850)
!906 = !DILocation(line: 754, column: 3, scope: !851)
!907 = !DILocation(line: 755, column: 13, scope: !857)
!908 = !DILocation(line: 755, column: 11, scope: !851)
!909 = !DILocation(line: 756, column: 24, scope: !856)
!910 = !DILocation(line: 0, scope: !856)
!911 = !DILocation(line: 0, scope: !272, inlinedAt: !912)
!912 = distinct !DILocation(line: 760, column: 5, scope: !856)
!913 = !DILocation(line: 0, scope: !295, inlinedAt: !914)
!914 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !912)
!915 = !DILocation(line: 0, scope: !289, inlinedAt: !912)
!916 = !DILocation(line: 0, scope: !272, inlinedAt: !917)
!917 = distinct !DILocation(line: 761, column: 5, scope: !856)
!918 = !DILocation(line: 0, scope: !295, inlinedAt: !919)
!919 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !917)
!920 = !DILocation(line: 756, column: 26, scope: !856)
!921 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !912)
!922 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !917)
!923 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !917)
!924 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !917)
!925 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !917)
!926 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !912)
!927 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !912)
!928 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !912)
!929 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !912)
!930 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !912)
!931 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !912)
!932 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !912)
!933 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !912)
!934 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !912)
!935 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !912)
!936 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !912)
!937 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !912)
!938 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !912)
!939 = !DILocation(line: 0, scope: !289, inlinedAt: !917)
!940 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !917)
!941 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !917)
!942 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !917)
!943 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !917)
!944 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !917)
!945 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !917)
!946 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !917)
!947 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !917)
!948 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !917)
!949 = !DILocation(line: 762, column: 40, scope: !856)
!950 = !DILocation(line: 762, column: 23, scope: !856)
!951 = !DILocation(line: 762, column: 48, scope: !856)
!952 = !DILocation(line: 762, column: 64, scope: !856)
!953 = !DILocation(line: 762, column: 18, scope: !856)
!954 = !DILocation(line: 763, column: 23, scope: !856)
!955 = !DILocation(line: 763, column: 39, scope: !856)
!956 = !DILocation(line: 763, column: 13, scope: !856)
!957 = !DILocation(line: 764, column: 38, scope: !856)
!958 = !DILocation(line: 764, column: 36, scope: !856)
!959 = !DILocation(line: 764, column: 17, scope: !856)
!960 = !DILocation(line: 766, column: 10, scope: !863)
!961 = !DILocation(line: 766, column: 8, scope: !856)
!962 = !DILocation(line: 768, column: 32, scope: !862)
!963 = !DILocation(line: 768, column: 35, scope: !862)
!964 = !DILocation(line: 768, column: 34, scope: !862)
!965 = !DILocation(line: 768, column: 42, scope: !862)
!966 = !DILocation(line: 768, column: 24, scope: !862)
!967 = !DILocation(line: 0, scope: !862)
!968 = !DILocation(line: 769, column: 19, scope: !862)
!969 = !DILocation(line: 770, column: 19, scope: !862)
!970 = !DILocation(line: 771, column: 5, scope: !862)
!971 = !DILocation(line: 775, column: 13, scope: !866)
!972 = !DILocation(line: 775, column: 11, scope: !857)
!973 = !DILocation(line: 0, scope: !865)
!974 = !DILocation(line: 777, column: 30, scope: !865)
!975 = !DILocation(line: 777, column: 33, scope: !865)
!976 = !DILocation(line: 777, column: 32, scope: !865)
!977 = !DILocation(line: 777, column: 40, scope: !865)
!978 = !DILocation(line: 777, column: 22, scope: !865)
!979 = !DILocation(line: 0, scope: !272, inlinedAt: !980)
!980 = distinct !DILocation(line: 780, column: 5, scope: !865)
!981 = !DILocation(line: 0, scope: !295, inlinedAt: !982)
!982 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !980)
!983 = !DILocation(line: 0, scope: !289, inlinedAt: !980)
!984 = !DILocation(line: 0, scope: !272, inlinedAt: !985)
!985 = distinct !DILocation(line: 781, column: 5, scope: !865)
!986 = !DILocation(line: 0, scope: !295, inlinedAt: !987)
!987 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !985)
!988 = !DILocation(line: 776, column: 26, scope: !865)
!989 = !DILocation(line: 776, column: 28, scope: !865)
!990 = !DILocation(line: 776, column: 30, scope: !865)
!991 = !DILocation(line: 776, column: 33, scope: !865)
!992 = !DILocation(line: 776, column: 40, scope: !865)
!993 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !980)
!994 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !985)
!995 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !985)
!996 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !985)
!997 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !985)
!998 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !980)
!999 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !980)
!1000 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !980)
!1001 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !980)
!1002 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !980)
!1003 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !980)
!1004 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !980)
!1005 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !980)
!1006 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !980)
!1007 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !980)
!1008 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !980)
!1009 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !980)
!1010 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !980)
!1011 = !DILocation(line: 0, scope: !289, inlinedAt: !985)
!1012 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !985)
!1013 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !985)
!1014 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !985)
!1015 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !985)
!1016 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !985)
!1017 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !985)
!1018 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !985)
!1019 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !985)
!1020 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !985)
!1021 = !DILocation(line: 782, column: 26, scope: !865)
!1022 = !DILocation(line: 782, column: 37, scope: !865)
!1023 = !DILocation(line: 782, column: 29, scope: !865)
!1024 = !DILocation(line: 782, column: 54, scope: !865)
!1025 = !DILocation(line: 782, column: 60, scope: !865)
!1026 = !DILocation(line: 782, column: 22, scope: !865)
!1027 = !DILocation(line: 782, column: 18, scope: !865)
!1028 = !DILocation(line: 783, column: 29, scope: !865)
!1029 = !DILocation(line: 783, column: 45, scope: !865)
!1030 = !DILocation(line: 783, column: 22, scope: !865)
!1031 = !DILocation(line: 783, column: 13, scope: !865)
!1032 = !DILocation(line: 784, column: 38, scope: !865)
!1033 = !DILocation(line: 784, column: 36, scope: !865)
!1034 = !DILocation(line: 784, column: 17, scope: !865)
!1035 = !DILocation(line: 787, column: 13, scope: !872)
!1036 = !DILocation(line: 0, scope: !872)
!1037 = !DILocation(line: 75, column: 15, scope: !295, inlinedAt: !1038)
!1038 = !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !1036)
!1039 = !DILocation(line: 16, column: 26, scope: !301, inlinedAt: !1036)
!1040 = !DILocation(line: 787, column: 11, scope: !866)
!1041 = !DILocation(line: 0, scope: !871)
!1042 = !DILocation(line: 789, column: 25, scope: !871)
!1043 = !DILocation(line: 789, column: 36, scope: !871)
!1044 = !DILocation(line: 0, scope: !272, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 792, column: 5, scope: !871)
!1046 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !1045)
!1047 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !1045)
!1048 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !1045)
!1049 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !1045)
!1050 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !1045)
!1051 = !DILocation(line: 0, scope: !295, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !1045)
!1053 = !DILocation(line: 0, scope: !301, inlinedAt: !1045)
!1054 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !1045)
!1055 = !DILocation(line: 0, scope: !289, inlinedAt: !1045)
!1056 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !1045)
!1057 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !1045)
!1058 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !1045)
!1059 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !1045)
!1060 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !1045)
!1061 = distinct !{!1061, !384}
!1062 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !1045)
!1063 = distinct !{!1063, !1054, !1064, !388}
!1064 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !1045)
!1065 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !1045)
!1066 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !1045)
!1067 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !1045)
!1068 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !1045)
!1069 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !1045)
!1070 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !1045)
!1071 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !1045)
!1072 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !1045)
!1073 = !DILocation(line: 793, column: 31, scope: !871)
!1074 = !DILocation(line: 793, column: 22, scope: !871)
!1075 = !DILocation(line: 793, column: 18, scope: !871)
!1076 = !DILocation(line: 794, column: 22, scope: !871)
!1077 = !DILocation(line: 794, column: 13, scope: !871)
!1078 = !DILocation(line: 795, column: 38, scope: !871)
!1079 = !DILocation(line: 795, column: 36, scope: !871)
!1080 = !DILocation(line: 795, column: 17, scope: !871)
!1081 = !DILocation(line: 0, scope: !877)
!1082 = !DILocation(line: 800, column: 26, scope: !877)
!1083 = !DILocation(line: 800, column: 37, scope: !877)
!1084 = !DILocation(line: 0, scope: !272, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 803, column: 5, scope: !877)
!1086 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !1085)
!1087 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !1085)
!1088 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !1085)
!1089 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !1085)
!1090 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !1085)
!1091 = !DILocation(line: 0, scope: !295, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !1085)
!1093 = !DILocation(line: 0, scope: !301, inlinedAt: !1085)
!1094 = !DILocation(line: 21, column: 3, scope: !291, inlinedAt: !1085)
!1095 = !DILocation(line: 0, scope: !289, inlinedAt: !1085)
!1096 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !1085)
!1097 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !1085)
!1098 = !DILocation(line: 23, column: 21, scope: !289, inlinedAt: !1085)
!1099 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !1085)
!1100 = !DILocation(line: 21, column: 30, scope: !290, inlinedAt: !1085)
!1101 = distinct !{!1101, !384}
!1102 = !DILocation(line: 21, column: 24, scope: !290, inlinedAt: !1085)
!1103 = distinct !{!1103, !1094, !1104, !388}
!1104 = !DILocation(line: 25, column: 3, scope: !291, inlinedAt: !1085)
!1105 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !1085)
!1106 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !1085)
!1107 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !1085)
!1108 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !1085)
!1109 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !1085)
!1110 = !DILocation(line: 28, column: 60, scope: !272, inlinedAt: !1085)
!1111 = !DILocation(line: 28, column: 55, scope: !272, inlinedAt: !1085)
!1112 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !1085)
!1113 = !DILocation(line: 804, column: 31, scope: !877)
!1114 = !DILocation(line: 804, column: 22, scope: !877)
!1115 = !DILocation(line: 804, column: 18, scope: !877)
!1116 = !DILocation(line: 805, column: 22, scope: !877)
!1117 = !DILocation(line: 805, column: 13, scope: !877)
!1118 = !DILocation(line: 806, column: 38, scope: !877)
!1119 = !DILocation(line: 806, column: 36, scope: !877)
!1120 = !DILocation(line: 806, column: 17, scope: !877)
!1121 = !DILocation(line: 0, scope: !851)
!1122 = !DILocation(line: 809, column: 1, scope: !842)
!1123 = !DISubprogram(name: "sin", scope: !701, file: !701, line: 64, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_e", scope: !2, file: !2, line: 813, type: !191, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1132, !1133, !1134, !1135, !1138, !1139, !1140, !1141, !1144, !1145, !1146, !1149, !1150, !1151}
!1126 = !DILocalVariable(name: "x", arg: 1, scope: !1124, file: !2, line: 813, type: !193)
!1127 = !DILocalVariable(name: "mode", arg: 2, scope: !1124, file: !2, line: 813, type: !194)
!1128 = !DILocalVariable(name: "result", arg: 3, scope: !1124, file: !2, line: 813, type: !196)
!1129 = !DILocalVariable(name: "a", scope: !1130, file: !2, line: 818, type: !197)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 817, column: 16)
!1131 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 817, column: 6)
!1132 = !DILocalVariable(name: "p", scope: !1130, file: !2, line: 819, type: !197)
!1133 = !DILocalVariable(name: "status_ap", scope: !1130, file: !2, line: 820, type: !42)
!1134 = !DILocalVariable(name: "s", scope: !1130, file: !2, line: 821, type: !90)
!1135 = !DILocalVariable(name: "x3", scope: !1136, file: !2, line: 828, type: !193)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 827, column: 20)
!1137 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 827, column: 11)
!1138 = !DILocalVariable(name: "x2", scope: !1136, file: !2, line: 829, type: !193)
!1139 = !DILocalVariable(name: "result_c1", scope: !1136, file: !2, line: 830, type: !197)
!1140 = !DILocalVariable(name: "result_c2", scope: !1136, file: !2, line: 831, type: !197)
!1141 = !DILocalVariable(name: "z", scope: !1142, file: !2, line: 840, type: !193)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 839, column: 20)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 839, column: 11)
!1144 = !DILocalVariable(name: "result_c1", scope: !1142, file: !2, line: 841, type: !197)
!1145 = !DILocalVariable(name: "result_c2", scope: !1142, file: !2, line: 842, type: !197)
!1146 = !DILocalVariable(name: "result_bps", scope: !1147, file: !2, line: 851, type: !197)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 850, column: 52)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 850, column: 11)
!1149 = !DILocalVariable(name: "arg", scope: !1147, file: !2, line: 852, type: !193)
!1150 = !DILocalVariable(name: "stat_b", scope: !1147, file: !2, line: 853, type: !42)
!1151 = !DILocalVariable(name: "stat_e", scope: !1147, file: !2, line: 854, type: !42)
!1152 = distinct !DIAssignID()
!1153 = !DILocation(line: 0, scope: !1130)
!1154 = distinct !DIAssignID()
!1155 = distinct !DIAssignID()
!1156 = !DILocation(line: 0, scope: !1147)
!1157 = !DILocation(line: 0, scope: !1124)
!1158 = !DILocation(line: 817, column: 8, scope: !1131)
!1159 = !DILocation(line: 817, column: 6, scope: !1124)
!1160 = !DILocation(line: 818, column: 5, scope: !1130)
!1161 = !DILocation(line: 819, column: 5, scope: !1130)
!1162 = !DILocation(line: 820, column: 21, scope: !1130)
!1163 = !DILocation(line: 821, column: 25, scope: !1130)
!1164 = !DILocation(line: 821, column: 19, scope: !1130)
!1165 = !DILocation(line: 822, column: 22, scope: !1130)
!1166 = !DILocation(line: 822, column: 26, scope: !1130)
!1167 = !DILocation(line: 822, column: 18, scope: !1130)
!1168 = !DILocation(line: 823, column: 41, scope: !1130)
!1169 = !DILocation(line: 823, column: 37, scope: !1130)
!1170 = !DILocation(line: 823, column: 20, scope: !1130)
!1171 = !DILocation(line: 823, column: 59, scope: !1130)
!1172 = !DILocation(line: 823, column: 55, scope: !1130)
!1173 = !DILocation(line: 823, column: 48, scope: !1130)
!1174 = !DILocation(line: 823, column: 46, scope: !1130)
!1175 = !DILocation(line: 823, column: 13, scope: !1130)
!1176 = !DILocation(line: 824, column: 38, scope: !1130)
!1177 = !DILocation(line: 824, column: 36, scope: !1130)
!1178 = !DILocation(line: 824, column: 17, scope: !1130)
!1179 = !DILocation(line: 826, column: 3, scope: !1131)
!1180 = !DILocation(line: 827, column: 13, scope: !1137)
!1181 = !DILocation(line: 827, column: 11, scope: !1131)
!1182 = !DILocation(line: 828, column: 24, scope: !1136)
!1183 = !DILocation(line: 0, scope: !1136)
!1184 = !DILocation(line: 0, scope: !272, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 832, column: 5, scope: !1136)
!1186 = !DILocation(line: 0, scope: !295, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !1185)
!1188 = !DILocation(line: 0, scope: !289, inlinedAt: !1185)
!1189 = !DILocation(line: 0, scope: !272, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 833, column: 5, scope: !1136)
!1191 = !DILocation(line: 0, scope: !295, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !1190)
!1193 = !DILocation(line: 828, column: 26, scope: !1136)
!1194 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !1185)
!1195 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !1190)
!1196 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !1190)
!1197 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !1190)
!1198 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !1190)
!1199 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !1185)
!1200 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !1185)
!1201 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !1185)
!1202 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !1185)
!1203 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !1185)
!1204 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !1185)
!1205 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !1185)
!1206 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !1185)
!1207 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !1185)
!1208 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !1185)
!1209 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !1185)
!1210 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !1185)
!1211 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !1185)
!1212 = !DILocation(line: 0, scope: !289, inlinedAt: !1190)
!1213 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !1190)
!1214 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !1190)
!1215 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !1190)
!1216 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !1190)
!1217 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !1190)
!1218 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !1190)
!1219 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !1190)
!1220 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !1190)
!1221 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !1190)
!1222 = !DILocation(line: 834, column: 40, scope: !1136)
!1223 = !DILocation(line: 834, column: 23, scope: !1136)
!1224 = !DILocation(line: 834, column: 48, scope: !1136)
!1225 = !DILocation(line: 834, column: 64, scope: !1136)
!1226 = !DILocation(line: 834, column: 18, scope: !1136)
!1227 = !DILocation(line: 835, column: 23, scope: !1136)
!1228 = !DILocation(line: 835, column: 39, scope: !1136)
!1229 = !DILocation(line: 835, column: 13, scope: !1136)
!1230 = !DILocation(line: 836, column: 38, scope: !1136)
!1231 = !DILocation(line: 836, column: 36, scope: !1136)
!1232 = !DILocation(line: 836, column: 17, scope: !1136)
!1233 = !DILocation(line: 839, column: 13, scope: !1143)
!1234 = !DILocation(line: 839, column: 11, scope: !1137)
!1235 = !DILocation(line: 0, scope: !1142)
!1236 = !DILocation(line: 0, scope: !272, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 843, column: 5, scope: !1142)
!1238 = !DILocation(line: 0, scope: !295, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !1237)
!1240 = !DILocation(line: 0, scope: !289, inlinedAt: !1237)
!1241 = !DILocation(line: 0, scope: !272, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 844, column: 5, scope: !1142)
!1243 = !DILocation(line: 0, scope: !295, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 16, column: 6, scope: !301, inlinedAt: !1242)
!1245 = !DILocation(line: 840, column: 26, scope: !1142)
!1246 = !DILocation(line: 840, column: 28, scope: !1142)
!1247 = !DILocation(line: 840, column: 30, scope: !1142)
!1248 = !DILocation(line: 840, column: 33, scope: !1142)
!1249 = !DILocation(line: 840, column: 40, scope: !1142)
!1250 = !DILocation(line: 11, column: 18, scope: !272, inlinedAt: !1237)
!1251 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !1242)
!1252 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !1242)
!1253 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !1242)
!1254 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !1242)
!1255 = !DILocation(line: 11, column: 21, scope: !272, inlinedAt: !1237)
!1256 = !DILocation(line: 11, column: 29, scope: !272, inlinedAt: !1237)
!1257 = !DILocation(line: 11, column: 38, scope: !272, inlinedAt: !1237)
!1258 = !DILocation(line: 12, column: 19, scope: !272, inlinedAt: !1237)
!1259 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !1237)
!1260 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !1237)
!1261 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !1237)
!1262 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !1237)
!1263 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !1237)
!1264 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !1237)
!1265 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !1237)
!1266 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !1237)
!1267 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !1237)
!1268 = !DILocation(line: 0, scope: !289, inlinedAt: !1242)
!1269 = !DILocation(line: 23, column: 11, scope: !289, inlinedAt: !1242)
!1270 = !DILocation(line: 23, column: 19, scope: !289, inlinedAt: !1242)
!1271 = !DILocation(line: 23, column: 14, scope: !289, inlinedAt: !1242)
!1272 = !DILocation(line: 27, column: 18, scope: !272, inlinedAt: !1242)
!1273 = !DILocation(line: 27, column: 21, scope: !272, inlinedAt: !1242)
!1274 = !DILocation(line: 27, column: 26, scope: !272, inlinedAt: !1242)
!1275 = !DILocation(line: 28, column: 35, scope: !272, inlinedAt: !1242)
!1276 = !DILocation(line: 28, column: 33, scope: !272, inlinedAt: !1242)
!1277 = !DILocation(line: 28, column: 53, scope: !272, inlinedAt: !1242)
!1278 = !DILocation(line: 845, column: 21, scope: !1142)
!1279 = !DILocation(line: 845, column: 41, scope: !1142)
!1280 = !DILocation(line: 845, column: 24, scope: !1142)
!1281 = !DILocation(line: 845, column: 49, scope: !1142)
!1282 = !DILocation(line: 845, column: 65, scope: !1142)
!1283 = !DILocation(line: 845, column: 18, scope: !1142)
!1284 = !DILocation(line: 846, column: 24, scope: !1142)
!1285 = !DILocation(line: 846, column: 40, scope: !1142)
!1286 = !DILocation(line: 846, column: 13, scope: !1142)
!1287 = !DILocation(line: 847, column: 38, scope: !1142)
!1288 = !DILocation(line: 847, column: 36, scope: !1142)
!1289 = !DILocation(line: 847, column: 17, scope: !1142)
!1290 = !DILocation(line: 850, column: 13, scope: !1148)
!1291 = !DILocation(line: 850, column: 11, scope: !1143)
!1292 = !DILocation(line: 851, column: 5, scope: !1147)
!1293 = !DILocation(line: 852, column: 31, scope: !1147)
!1294 = !DILocation(line: 852, column: 30, scope: !1147)
!1295 = !DILocation(line: 852, column: 38, scope: !1147)
!1296 = !DILocation(line: 852, column: 27, scope: !1147)
!1297 = !DILocation(line: 853, column: 18, scope: !1147)
!1298 = !DILocation(line: 854, column: 57, scope: !1147)
!1299 = !DILocation(line: 854, column: 49, scope: !1147)
!1300 = !DILocation(line: 854, column: 48, scope: !1147)
!1301 = !DILocation(line: 855, column: 54, scope: !1147)
!1302 = !DILocation(line: 855, column: 70, scope: !1147)
!1303 = !DILocation(line: 854, column: 18, scope: !1147)
!1304 = !DILocation(line: 857, column: 12, scope: !1147)
!1305 = !DILocation(line: 858, column: 3, scope: !1148)
!1306 = !DILocation(line: 860, column: 5, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 860, column: 5)
!1308 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 859, column: 8)
!1309 = !DILocation(line: 860, column: 5, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 860, column: 5)
!1311 = !DILocation(line: 0, scope: !1131)
!1312 = !DILocation(line: 862, column: 1, scope: !1124)
!1313 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_scaled", scope: !2, file: !2, line: 868, type: !1314, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1316)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!90, !193, !194}
!1316 = !{!1317, !1318, !1319, !1320}
!1317 = !DILocalVariable(name: "x", arg: 1, scope: !1313, file: !2, line: 868, type: !193)
!1318 = !DILocalVariable(name: "mode", arg: 2, scope: !1313, file: !2, line: 868, type: !194)
!1319 = !DILocalVariable(name: "result", scope: !1313, file: !2, line: 870, type: !197)
!1320 = !DILocalVariable(name: "status", scope: !1313, file: !2, line: 870, type: !42)
!1321 = distinct !DIAssignID()
!1322 = !DILocation(line: 0, scope: !1313)
!1323 = !DILocation(line: 870, column: 3, scope: !1313)
!1324 = !DILocation(line: 870, column: 3, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 870, column: 3)
!1326 = !DILocation(line: 870, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 870, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 870, column: 3)
!1329 = !DILocation(line: 871, column: 1, scope: !1313)
!1330 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv", scope: !2, file: !2, line: 873, type: !1314, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334, !1335}
!1332 = !DILocalVariable(name: "x", arg: 1, scope: !1330, file: !2, line: 873, type: !193)
!1333 = !DILocalVariable(name: "mode", arg: 2, scope: !1330, file: !2, line: 873, type: !194)
!1334 = !DILocalVariable(name: "result", scope: !1330, file: !2, line: 875, type: !197)
!1335 = !DILocalVariable(name: "status", scope: !1330, file: !2, line: 875, type: !42)
!1336 = distinct !DIAssignID()
!1337 = !DILocation(line: 0, scope: !1330)
!1338 = !DILocation(line: 875, column: 3, scope: !1330)
!1339 = !DILocation(line: 875, column: 3, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 875, column: 3)
!1341 = !DILocation(line: 875, column: 3, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 875, column: 3)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 875, column: 3)
!1344 = !DILocation(line: 876, column: 1, scope: !1330)
!1345 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_scaled", scope: !2, file: !2, line: 878, type: !1314, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1346)
!1346 = !{!1347, !1348, !1349, !1350}
!1347 = !DILocalVariable(name: "x", arg: 1, scope: !1345, file: !2, line: 878, type: !193)
!1348 = !DILocalVariable(name: "mode", arg: 2, scope: !1345, file: !2, line: 878, type: !194)
!1349 = !DILocalVariable(name: "result", scope: !1345, file: !2, line: 880, type: !197)
!1350 = !DILocalVariable(name: "status", scope: !1345, file: !2, line: 880, type: !42)
!1351 = distinct !DIAssignID()
!1352 = !DILocation(line: 0, scope: !1345)
!1353 = !DILocation(line: 880, column: 3, scope: !1345)
!1354 = !DILocation(line: 880, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 880, column: 3)
!1356 = !DILocation(line: 880, column: 3, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 880, column: 3)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 880, column: 3)
!1359 = !DILocation(line: 881, column: 1, scope: !1345)
!1360 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv", scope: !2, file: !2, line: 883, type: !1314, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1361)
!1361 = !{!1362, !1363, !1364, !1365}
!1362 = !DILocalVariable(name: "x", arg: 1, scope: !1360, file: !2, line: 883, type: !193)
!1363 = !DILocalVariable(name: "mode", arg: 2, scope: !1360, file: !2, line: 883, type: !194)
!1364 = !DILocalVariable(name: "result", scope: !1360, file: !2, line: 885, type: !197)
!1365 = !DILocalVariable(name: "status", scope: !1360, file: !2, line: 885, type: !42)
!1366 = distinct !DIAssignID()
!1367 = !DILocation(line: 0, scope: !1360)
!1368 = !DILocation(line: 885, column: 3, scope: !1360)
!1369 = !DILocation(line: 885, column: 3, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 885, column: 3)
!1371 = !DILocation(line: 885, column: 3, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 885, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 885, column: 3)
!1374 = !DILocation(line: 886, column: 1, scope: !1360)
