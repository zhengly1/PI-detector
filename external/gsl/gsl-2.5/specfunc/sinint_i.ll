; ModuleID = 'sinint.ll'
source_filename = "sinint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"sinint.c\00", align 1, !dbg !7
@.str.3 = private unnamed_addr constant [24 x i8] c"gsl_sf_Ci_e(x, &result)\00", align 1, !dbg !12
@si_data = internal unnamed_addr constant [12 x double] [double 0xBFC0D71C5B9D689C, double 0xBFD1C5257134040E, double 0x3FA225603AFAA069, double 0xBF64FF57BC32CAAC, double 0x3F1E78808907C46C, double 0xBECE1E6543B50732, double 0x3E7589A730EF41E8, double 0xBE174D11C8AE089C, double 0x3DB3BACEAB837915, double 0xBD4ADBB05441D85D, double 1.667000e-15, double -1.220000e-17], align 16, !dbg !17
@f1_data = internal unnamed_addr constant [20 x double] [double 0xBFBE7DDFF264A17C, double 0xBF996088F92E26D9, double 0x3F538388BBB38801, double 0xBF184D2D7C7F0FAF, double 0x3EE394EEAF9AA7D3, double 0xBEB28D7F9AACD36F, double 0x3E83A8EB23C2B004, double 0xBE569F86B5FD18DA, double 0x3E2BBD6A009C1181, double 0xBE01E3B63E0C590A, double 0x3DD80C69B02D5BF3, double 0xBDB0BB60FD91F868, double 0x3D87F9C623FE5AA7, double 0xBD619DF3D0D07C71, double 9.402410e-14, double -1.800140e-14, double 3.506300e-15, double -6.935000e-16, double 1.391000e-16, double -2.820000e-17], align 16, !dbg !78
@g1_data = internal unnamed_addr constant [21 x double] [double 0xBFD375AF2E7C38EE, double 0xBFAD065A7FD92F13, double 0x3F6FFC92A7A4CABA, double 0xBF388CDF5F9147CD, double 0x3F06D4436FA169D6, double 0xBED8152292794E61, double 0x3EABCAA87824DA42, double 0xBE812804FA476850, double 0x3E5654DD8D230BC5, double 0xBE2E5574C34D1155, double 0x3E0557194926A0B2, double 0xBDDEEDFFFEEA98D6, double 0x3DB6FD546FE64499, double 0xBD91779AEB6E6EC4, double 0x3D6B0EECA7EA4F35, double 0xBD4551456539A418, double 3.028920e-14, double -6.140000e-15, double 1.260100e-15, double -2.615000e-16, double 5.480000e-17], align 16, !dbg !85
@f2_data = internal unnamed_addr constant [29 x double] [double 0xBFA1D6AB7638E7C4, double 0xBF9115AB16CAAF46, double 0x3F4620BE7FCC566E, double 0xBF0C0D8AEA7F8907, double 0x3EDA4BA7A7E101C5, double 0xBEAFF75206FBF7CA, double 0x3E876DEFB4317512, double 0xBE63CCAF77F6C1F7, double 0x3E42BA04957450CE, double 0xBE236A39D1648E94, double 0x3E05BB32EF3A5400, double 0xBDE9F604936D5848, double 0x3DD0676DAE061394, double 0xBDB5C673ABB76A1E, double 0x3D9E305589F31CEE, double 0xBD85C0EE3D4C24A1, double 0x3D703B2EE2A49F68, double 0xBD58FF5EBD36BCD1, double 0x3D43CF6F61C63936, double -5.726230e-14, double 2.386540e-14, double -1.017140e-14, double 4.425900e-15, double -1.963400e-15, double 8.868000e-16, double -4.074000e-16, double 1.901000e-16, double -9.000000e-17, double 4.320000e-17], align 16, !dbg !92
@g2_data = internal unnamed_addr constant [34 x double] [double 0xBFB8C37D5FCD1C7F, double 0xBFA72579BDFBF99F, double 0x3F6717DF63679447, double 0xBF32FFFF102F0C06, double 0x3F055CA1351F95D4, double 0xBEDDCD9EF611832D, double 0x3EB8629DB66172F8, double 0xBE96938216CDB144, double 0x3E77145310488D84, double 0xBE599A1FD80773ED, double 0x3E3E6C0CEB32B1CB, double 0xBE232BCB8AF34A01, double 0x3E096E10B6AEE975, double 0xBDF1A4371BDE1D50, double 0x3DD9791EF5314269, double 0xBDC30F464B01133A, double 0x3DAD74BF33BB46D8, double 0xBD977001683694A2, double 0x3D83275D4612436B, double 0xBD700AA96CA0A045, double 0x3D5B7C2DD70194F4, double 0xBD480B5F4BF2A645, double 7.620150e-14, double -3.461510e-14, double 1.599960e-14, double -7.521300e-15, double 3.597000e-15, double -1.753000e-15, double 8.738000e-16, double -4.487000e-16, double 2.397000e-16, double -1.347000e-16, double 8.010000e-17, double -5.010000e-17], align 16, !dbg !99
@ci_data = internal unnamed_addr constant [13 x double] [double 0xBFD5C342F43D436A, double 0xBFF08741B96FD756, double 0x3FC8D121FF4271DE, double 0xBF93A49AC9844295, double 0x3F5226D68A9FBBBC, double 0xBF05CBBEEAE511C4, double 0x3EB2557A14D2E5BF, double 0xBE56CC71A9484A3B, double 0x3DF5CE9CFC078273, double 0xBD908AFA32DB989E, double 0x3D2464CB0E201681, double -2.891200e-16, double 1.940000e-18], align 16, !dbg !106

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_Si_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !120 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !139, metadata !DIExpression(), metadata !142, metadata ptr %3, metadata !DIExpression()), !dbg !143
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !144
  call void @llvm.dbg.assign(metadata i1 undef, metadata !141, metadata !DIExpression(), metadata !144, metadata ptr %4, metadata !DIExpression()), !dbg !143
  tail call void @llvm.dbg.value(metadata double %0, metadata !132, metadata !DIExpression()), !dbg !145
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !133, metadata !DIExpression()), !dbg !145
  %5 = tail call double @llvm.fabs.f64(double %0), !dbg !146
  tail call void @llvm.dbg.value(metadata double %5, metadata !134, metadata !DIExpression()), !dbg !145
  %6 = fcmp olt double %5, 0x3E50000000000000, !dbg !147
  br i1 %6, label %7, label %9, !dbg !148

7:                                                ; preds = %2
  store double %0, ptr %1, align 8, !dbg !149, !tbaa !151
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !156
  store double 0.000000e+00, ptr %8, align 8, !dbg !157, !tbaa !158
  br label %56, !dbg !159

9:                                                ; preds = %2
  %10 = fcmp ugt double %5, 4.000000e+00, !dbg !160
  br i1 %10, label %40, label %11, !dbg !161

11:                                               ; preds = %9
  %12 = fmul double %0, %0, !dbg !162
  %handler_result = call double @fAddHandlerDouble(double %12, double -8.000000e+00), !dbg !163
  %13 = fmul double %handler_result, 1.250000e-01, !dbg !163
  call void @llvm.dbg.value(metadata !164, metadata !165, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double %13, metadata !173, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata ptr undef, metadata !174, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !176, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !187
  %14 = fmul double %13, 2.000000e+00, !dbg !189
  %handler_result1 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !190
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !191
  %15 = fmul double %handler_result2, 5.000000e-01, !dbg !191
  call void @llvm.dbg.value(metadata double %15, metadata !178, metadata !DIExpression()), !dbg !187
  %16 = fmul double %15, 2.000000e+00, !dbg !192
  call void @llvm.dbg.value(metadata double %16, metadata !179, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 11, metadata !175, metadata !DIExpression()), !dbg !187
  br label %17, !dbg !193

17:                                               ; preds = %17, %11
  %18 = phi i64 [ 11, %11 ], [ %28, %17 ]
  %19 = phi double [ 0.000000e+00, %11 ], [ %handler_result4, %17 ]
  %20 = phi double [ 0.000000e+00, %11 ], [ %handler_result7, %17 ]
  %21 = phi double [ 0.000000e+00, %11 ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !175, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double %19, metadata !176, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double %20, metadata !180, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double %21, metadata !177, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double %19, metadata !181, metadata !DIExpression()), !dbg !194
  %22 = fmul double %16, %19, !dbg !195
  %handler_result3 = call double @fSubHandlerDouble(double %22, double %21), !dbg !196
  %23 = getelementptr inbounds double, ptr @si_data, i64 %18, !dbg !196
  %24 = load double, ptr %23, align 8, !dbg !196, !tbaa !197
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %24), !dbg !198
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !176, metadata !DIExpression()), !dbg !187
  %25 = tail call double @llvm.fabs.f64(double %22), !dbg !198
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !199
  %handler_result5 = call double @fAddHandlerDouble(double %25, double %26), !dbg !200
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !200
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %27), !dbg !201
  %handler_result7 = call double @fAddHandlerDouble(double %20, double %handler_result6), !dbg !202
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !180, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata double %19, metadata !177, metadata !DIExpression()), !dbg !187
  %28 = add nsw i64 %18, -1, !dbg !202
  call void @llvm.dbg.value(metadata i64 %28, metadata !175, metadata !DIExpression()), !dbg !187
  %29 = icmp ugt i64 %18, 1, !dbg !203
  br i1 %29, label %17, label %30, !dbg !193, !llvm.loop !204

30:                                               ; preds = %17
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !185, metadata !DIExpression()), !dbg !207
  %31 = fmul double %15, %handler_result4, !dbg !208
  %handler_result8 = call double @fSubHandlerDouble(double %31, double %19), !dbg !209
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBFB0D71C5B9D689C), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !176, metadata !DIExpression()), !dbg !187
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !210
  %33 = tail call double @llvm.fabs.f64(double %19), !dbg !211
  %handler_result10 = call double @fAddHandlerDouble(double %33, double %32), !dbg !212
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FB0D71C5B9D689C), !dbg !213
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !214
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !180, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !215
  %34 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !214
  %handler_result13 = call double @fAddHandlerDouble(double %34, double 1.220000e-17), !dbg !216
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !215
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double 7.500000e-01), !dbg !217
  %35 = fmul double %handler_result14, %0, !dbg !217
  store double %35, ptr %1, align 8, !dbg !218, !tbaa !151
  %36 = fmul double %5, %handler_result13, !dbg !219
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !220
  %38 = tail call double @llvm.fabs.f64(double %35), !dbg !221
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !222
  %handler_result15 = call double @fAddHandlerDouble(double %39, double %36), !dbg !223
  store double %handler_result15, ptr %37, align 8, !dbg !223, !tbaa !158
  br label %56

40:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !225
  call fastcc void @fg_asymp(double noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !226
  %41 = load double, ptr %3, align 8, !dbg !227, !tbaa !151
  %handler_result20 = call double @callHandler(i32 2, double %5, double %5), !dbg !228
  %42 = fmul double %41, %handler_result20, !dbg !228
  %handler_result16 = call double @fSubHandlerDouble(double 0x3FF921FB54442D18, double %42), !dbg !229
  %43 = load double, ptr %4, align 8, !dbg !229, !tbaa !151
  %handler_result21 = call double @callHandler(i32 1, double %5, double %5), !dbg !230
  %44 = fmul double %43, %handler_result21, !dbg !230
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result16, double %44), !dbg !231
  store double %handler_result17, ptr %1, align 8, !dbg !231, !tbaa !151
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !232
  %46 = load double, ptr %45, align 8, !dbg !232, !tbaa !158
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !233
  %48 = load double, ptr %47, align 8, !dbg !233, !tbaa !158
  %handler_result18 = call double @fAddHandlerDouble(double %46, double %48), !dbg !234
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !234
  %50 = tail call double @llvm.fabs.f64(double %handler_result17), !dbg !235
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !236
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %51), !dbg !237
  store double %handler_result19, ptr %49, align 8, !dbg !237, !tbaa !158
  %52 = fcmp olt double %0, 0.000000e+00, !dbg !238
  br i1 %52, label %53, label %55, !dbg !240

53:                                               ; preds = %40
  %54 = fneg double %handler_result17, !dbg !241
  store double %54, ptr %1, align 8, !dbg !242, !tbaa !151
  br label %55, !dbg !243

55:                                               ; preds = %53, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !244
  br label %56

56:                                               ; preds = %55, %30, %7
  ret i32 0, !dbg !245
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fg_asymp(double noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !dbg !246 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !250, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !251, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !252, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x4190000000000000, metadata !253, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x7FD0000000000000, metadata !254, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x5FE0000000000000, metadata !255, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x401C48C6001F1EA6, metadata !256, metadata !DIExpression()), !dbg !266
  %4 = fmul double %0, %0, !dbg !267
  tail call void @llvm.dbg.value(metadata double %4, metadata !257, metadata !DIExpression()), !dbg !266
  %5 = fcmp ugt double %0, 0x401C48C6001F1EA6, !dbg !268
  br i1 %5, label %60, label %6, !dbg !269

6:                                                ; preds = %3
  %7 = fdiv double 1.000000e+00, %4, !dbg !270
  %handler_result = call double @fAddHandlerDouble(double %7, double -4.125000e-02), !dbg !271
  %8 = fdiv double %handler_result, 2.125000e-02, !dbg !271
  call void @llvm.dbg.value(metadata !164, metadata !165, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %8, metadata !173, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr undef, metadata !174, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !176, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !272
  %9 = fmul double %8, 2.000000e+00, !dbg !274
  %handler_result1 = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !275
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !276
  %10 = fmul double %handler_result2, 5.000000e-01, !dbg !276
  call void @llvm.dbg.value(metadata double %10, metadata !178, metadata !DIExpression()), !dbg !272
  %11 = fmul double %10, 2.000000e+00, !dbg !277
  call void @llvm.dbg.value(metadata double %11, metadata !179, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 19, metadata !175, metadata !DIExpression()), !dbg !272
  br label %12, !dbg !278

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 19, %6 ], [ %23, %12 ]
  %14 = phi double [ 0.000000e+00, %6 ], [ %handler_result4, %12 ]
  %15 = phi double [ 0.000000e+00, %6 ], [ %handler_result7, %12 ]
  %16 = phi double [ 0.000000e+00, %6 ], [ %14, %12 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !175, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %14, metadata !176, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %15, metadata !180, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %16, metadata !177, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %14, metadata !181, metadata !DIExpression()), !dbg !279
  %17 = fmul double %11, %14, !dbg !280
  %handler_result3 = call double @fSubHandlerDouble(double %17, double %16), !dbg !281
  %18 = getelementptr inbounds double, ptr @f1_data, i64 %13, !dbg !281
  %19 = load double, ptr %18, align 8, !dbg !281, !tbaa !197
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %19), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !176, metadata !DIExpression()), !dbg !272
  %20 = tail call double @llvm.fabs.f64(double %17), !dbg !282
  %21 = tail call double @llvm.fabs.f64(double %16), !dbg !283
  %handler_result5 = call double @fAddHandlerDouble(double %20, double %21), !dbg !284
  %22 = tail call double @llvm.fabs.f64(double %19), !dbg !284
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %22), !dbg !285
  %handler_result7 = call double @fAddHandlerDouble(double %15, double %handler_result6), !dbg !286
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !180, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %14, metadata !177, metadata !DIExpression()), !dbg !272
  %23 = add nsw i64 %13, -1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %23, metadata !175, metadata !DIExpression()), !dbg !272
  %24 = icmp ugt i64 %13, 1, !dbg !287
  br i1 %24, label %12, label %25, !dbg !278, !llvm.loop !288

25:                                               ; preds = %12
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !185, metadata !DIExpression()), !dbg !290
  %26 = fmul double %10, %handler_result4, !dbg !291
  %handler_result8 = call double @fSubHandlerDouble(double %26, double %14), !dbg !292
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBFAE7DDFF264A17C), !dbg !293
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !176, metadata !DIExpression()), !dbg !272
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !293
  %28 = tail call double @llvm.fabs.f64(double %14), !dbg !294
  %handler_result10 = call double @fAddHandlerDouble(double %28, double %27), !dbg !295
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FAE7DDFF264A17C), !dbg !296
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !297
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !180, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !298
  %29 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !297
  %handler_result13 = call double @fAddHandlerDouble(double %29, double 2.820000e-17), !dbg !299
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !298
  call void @llvm.dbg.value(metadata !164, metadata !165, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %8, metadata !173, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr undef, metadata !174, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !176, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !301
  %handler_result14 = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !302
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double -1.000000e+00), !dbg !303
  %30 = fmul double %handler_result15, 5.000000e-01, !dbg !303
  call void @llvm.dbg.value(metadata double %30, metadata !178, metadata !DIExpression()), !dbg !301
  %31 = fmul double %30, 2.000000e+00, !dbg !304
  call void @llvm.dbg.value(metadata double %31, metadata !179, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 20, metadata !175, metadata !DIExpression()), !dbg !301
  br label %32, !dbg !305

32:                                               ; preds = %32, %25
  %33 = phi i64 [ 20, %25 ], [ %43, %32 ]
  %34 = phi double [ 0.000000e+00, %25 ], [ %handler_result17, %32 ]
  %35 = phi double [ 0.000000e+00, %25 ], [ %handler_result20, %32 ]
  %36 = phi double [ 0.000000e+00, %25 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !175, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %34, metadata !176, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %35, metadata !180, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %36, metadata !177, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %34, metadata !181, metadata !DIExpression()), !dbg !306
  %37 = fmul double %31, %34, !dbg !307
  %handler_result16 = call double @fSubHandlerDouble(double %37, double %36), !dbg !308
  %38 = getelementptr inbounds double, ptr @g1_data, i64 %33, !dbg !308
  %39 = load double, ptr %38, align 8, !dbg !308, !tbaa !197
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double %39), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !176, metadata !DIExpression()), !dbg !301
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !309
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !310
  %handler_result18 = call double @fAddHandlerDouble(double %40, double %41), !dbg !311
  %42 = tail call double @llvm.fabs.f64(double %39), !dbg !311
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %42), !dbg !312
  %handler_result20 = call double @fAddHandlerDouble(double %35, double %handler_result19), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !180, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata double %34, metadata !177, metadata !DIExpression()), !dbg !301
  %43 = add nsw i64 %33, -1, !dbg !313
  call void @llvm.dbg.value(metadata i64 %43, metadata !175, metadata !DIExpression()), !dbg !301
  %44 = icmp ugt i64 %33, 1, !dbg !314
  br i1 %44, label %32, label %45, !dbg !305, !llvm.loop !315

45:                                               ; preds = %32
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !185, metadata !DIExpression()), !dbg !317
  %46 = fmul double %30, %handler_result17, !dbg !318
  %handler_result21 = call double @fSubHandlerDouble(double %46, double %34), !dbg !319
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double 0xBFC375AF2E7C38EE), !dbg !320
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !176, metadata !DIExpression()), !dbg !301
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !320
  %48 = tail call double @llvm.fabs.f64(double %34), !dbg !321
  %handler_result23 = call double @fAddHandlerDouble(double %48, double %47), !dbg !322
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3FC375AF2E7C38EE), !dbg !323
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result20, double %handler_result24), !dbg !324
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !180, metadata !DIExpression()), !dbg !301
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !261, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !298
  %49 = fmul double %handler_result25, 0x3CB0000000000000, !dbg !324
  %handler_result26 = call double @fAddHandlerDouble(double %49, double 5.480000e-17), !dbg !325
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !261, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !298
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result9, double 1.000000e+00), !dbg !326
  %50 = fdiv double %handler_result27, %0, !dbg !326
  store double %50, ptr %1, align 8, !dbg !327, !tbaa !151
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result22, double 1.000000e+00), !dbg !328
  %51 = fdiv double %handler_result28, %4, !dbg !328
  store double %51, ptr %2, align 8, !dbg !329, !tbaa !151
  %52 = fdiv double %handler_result13, %0, !dbg !330
  %53 = load double, ptr %1, align 8, !dbg !331, !tbaa !151
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !332
  %55 = fmul double %54, 0x3CC0000000000000, !dbg !333
  %handler_result29 = call double @fAddHandlerDouble(double %52, double %55), !dbg !334
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !334
  store double %handler_result29, ptr %56, align 8, !dbg !335, !tbaa !158
  %57 = fdiv double %handler_result26, %4, !dbg !336
  %58 = tail call double @llvm.fabs.f64(double %51), !dbg !337
  %59 = fmul double %58, 0x3CC0000000000000, !dbg !338
  %handler_result30 = call double @fAddHandlerDouble(double %59, double %57), !dbg !339
  br label %128, !dbg !339

60:                                               ; preds = %3
  %61 = fcmp ugt double %0, 0x4190000000000000, !dbg !340
  br i1 %61, label %115, label %62, !dbg !341

62:                                               ; preds = %60
  %63 = fdiv double 1.000000e+02, %4, !dbg !342
  %handler_result31 = call double @fAddHandlerDouble(double %63, double -1.000000e+00), !dbg !343
  call void @llvm.dbg.value(metadata !164, metadata !165, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !173, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata ptr undef, metadata !174, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !176, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !345
  %64 = fmul double %handler_result31, 2.000000e+00, !dbg !343
  %handler_result32 = call double @fAddHandlerDouble(double %64, double 1.000000e+00), !dbg !346
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -1.000000e+00), !dbg !347
  %65 = fmul double %handler_result33, 5.000000e-01, !dbg !347
  call void @llvm.dbg.value(metadata double %65, metadata !178, metadata !DIExpression()), !dbg !345
  %66 = fmul double %65, 2.000000e+00, !dbg !348
  call void @llvm.dbg.value(metadata double %66, metadata !179, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 28, metadata !175, metadata !DIExpression()), !dbg !345
  br label %67, !dbg !349

67:                                               ; preds = %67, %62
  %68 = phi i64 [ 28, %62 ], [ %78, %67 ]
  %69 = phi double [ 0.000000e+00, %62 ], [ %handler_result35, %67 ]
  %70 = phi double [ 0.000000e+00, %62 ], [ %handler_result38, %67 ]
  %71 = phi double [ 0.000000e+00, %62 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata i64 %68, metadata !175, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double %69, metadata !176, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double %70, metadata !180, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double %71, metadata !177, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double %69, metadata !181, metadata !DIExpression()), !dbg !350
  %72 = fmul double %66, %69, !dbg !351
  %handler_result34 = call double @fSubHandlerDouble(double %72, double %71), !dbg !352
  %73 = getelementptr inbounds double, ptr @f2_data, i64 %68, !dbg !352
  %74 = load double, ptr %73, align 8, !dbg !352, !tbaa !197
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %74), !dbg !353
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !176, metadata !DIExpression()), !dbg !345
  %75 = tail call double @llvm.fabs.f64(double %72), !dbg !353
  %76 = tail call double @llvm.fabs.f64(double %71), !dbg !354
  %handler_result36 = call double @fAddHandlerDouble(double %75, double %76), !dbg !355
  %77 = tail call double @llvm.fabs.f64(double %74), !dbg !355
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %77), !dbg !356
  %handler_result38 = call double @fAddHandlerDouble(double %70, double %handler_result37), !dbg !357
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !180, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata double %69, metadata !177, metadata !DIExpression()), !dbg !345
  %78 = add nsw i64 %68, -1, !dbg !357
  call void @llvm.dbg.value(metadata i64 %78, metadata !175, metadata !DIExpression()), !dbg !345
  %79 = icmp ugt i64 %68, 1, !dbg !358
  br i1 %79, label %67, label %80, !dbg !349, !llvm.loop !359

80:                                               ; preds = %67
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !185, metadata !DIExpression()), !dbg !361
  %81 = fmul double %65, %handler_result35, !dbg !362
  %handler_result39 = call double @fSubHandlerDouble(double %81, double %69), !dbg !363
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0xBF91D6AB7638E7C4), !dbg !364
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !176, metadata !DIExpression()), !dbg !345
  %82 = tail call double @llvm.fabs.f64(double %81), !dbg !364
  %83 = tail call double @llvm.fabs.f64(double %69), !dbg !365
  %handler_result41 = call double @fAddHandlerDouble(double %83, double %82), !dbg !366
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0x3F91D6AB7638E7C4), !dbg !367
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result38, double %handler_result42), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !180, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata double %handler_result40, metadata !262, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !369
  %84 = fmul double %handler_result43, 0x3CB0000000000000, !dbg !368
  %handler_result44 = call double @fAddHandlerDouble(double %84, double 4.320000e-17), !dbg !370
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !262, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !369
  call void @llvm.dbg.value(metadata !164, metadata !165, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !173, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata ptr undef, metadata !174, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !176, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !372
  %handler_result45 = call double @fAddHandlerDouble(double %64, double 1.000000e+00), !dbg !373
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double -1.000000e+00), !dbg !374
  %85 = fmul double %handler_result46, 5.000000e-01, !dbg !374
  call void @llvm.dbg.value(metadata double %85, metadata !178, metadata !DIExpression()), !dbg !372
  %86 = fmul double %85, 2.000000e+00, !dbg !375
  call void @llvm.dbg.value(metadata double %86, metadata !179, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 33, metadata !175, metadata !DIExpression()), !dbg !372
  br label %87, !dbg !376

87:                                               ; preds = %87, %80
  %88 = phi i64 [ 33, %80 ], [ %98, %87 ]
  %89 = phi double [ 0.000000e+00, %80 ], [ %handler_result48, %87 ]
  %90 = phi double [ 0.000000e+00, %80 ], [ %handler_result51, %87 ]
  %91 = phi double [ 0.000000e+00, %80 ], [ %89, %87 ]
  call void @llvm.dbg.value(metadata i64 %88, metadata !175, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %89, metadata !176, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %90, metadata !180, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %91, metadata !177, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %89, metadata !181, metadata !DIExpression()), !dbg !377
  %92 = fmul double %86, %89, !dbg !378
  %handler_result47 = call double @fSubHandlerDouble(double %92, double %91), !dbg !379
  %93 = getelementptr inbounds double, ptr @g2_data, i64 %88, !dbg !379
  %94 = load double, ptr %93, align 8, !dbg !379, !tbaa !197
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double %94), !dbg !380
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !176, metadata !DIExpression()), !dbg !372
  %95 = tail call double @llvm.fabs.f64(double %92), !dbg !380
  %96 = tail call double @llvm.fabs.f64(double %91), !dbg !381
  %handler_result49 = call double @fAddHandlerDouble(double %95, double %96), !dbg !382
  %97 = tail call double @llvm.fabs.f64(double %94), !dbg !382
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double %97), !dbg !383
  %handler_result51 = call double @fAddHandlerDouble(double %90, double %handler_result50), !dbg !384
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !180, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %89, metadata !177, metadata !DIExpression()), !dbg !372
  %98 = add nsw i64 %88, -1, !dbg !384
  call void @llvm.dbg.value(metadata i64 %98, metadata !175, metadata !DIExpression()), !dbg !372
  %99 = icmp ugt i64 %88, 1, !dbg !385
  br i1 %99, label %87, label %100, !dbg !376, !llvm.loop !386

100:                                              ; preds = %87
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !185, metadata !DIExpression()), !dbg !388
  %101 = fmul double %85, %handler_result48, !dbg !389
  %handler_result52 = call double @fSubHandlerDouble(double %101, double %89), !dbg !390
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double 0xBFA8C37D5FCD1C7F), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !176, metadata !DIExpression()), !dbg !372
  %102 = tail call double @llvm.fabs.f64(double %101), !dbg !391
  %103 = tail call double @llvm.fabs.f64(double %89), !dbg !392
  %handler_result54 = call double @fAddHandlerDouble(double %103, double %102), !dbg !393
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 0x3FA8C37D5FCD1C7F), !dbg !394
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result51, double %handler_result55), !dbg !395
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !180, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata double %handler_result53, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !369
  %104 = fmul double %handler_result56, 0x3CB0000000000000, !dbg !395
  %handler_result57 = call double @fAddHandlerDouble(double %104, double 5.010000e-17), !dbg !396
  tail call void @llvm.dbg.value(metadata double %handler_result57, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !369
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result40, double 1.000000e+00), !dbg !397
  %105 = fdiv double %handler_result58, %0, !dbg !397
  store double %105, ptr %1, align 8, !dbg !398, !tbaa !151
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result53, double 1.000000e+00), !dbg !399
  %106 = fdiv double %handler_result59, %4, !dbg !399
  store double %106, ptr %2, align 8, !dbg !400, !tbaa !151
  %107 = fdiv double %handler_result44, %0, !dbg !401
  %108 = load double, ptr %1, align 8, !dbg !402, !tbaa !151
  %109 = tail call double @llvm.fabs.f64(double %108), !dbg !403
  %110 = fmul double %109, 0x3CC0000000000000, !dbg !404
  %handler_result60 = call double @fAddHandlerDouble(double %107, double %110), !dbg !405
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !405
  store double %handler_result60, ptr %111, align 8, !dbg !406, !tbaa !158
  %112 = fdiv double %handler_result57, %4, !dbg !407
  %113 = tail call double @llvm.fabs.f64(double %106), !dbg !408
  %114 = fmul double %113, 0x3CC0000000000000, !dbg !409
  %handler_result61 = call double @fAddHandlerDouble(double %114, double %112), !dbg !410
  br label %128, !dbg !410

115:                                              ; preds = %60
  %116 = fcmp olt double %0, 0x7FD0000000000000, !dbg !411
  %117 = fdiv double 1.000000e+00, %0, !dbg !413
  %118 = select i1 %116, double %117, double 0.000000e+00, !dbg !413
  store double %118, ptr %1, align 8, !dbg !414, !tbaa !151
  %119 = fcmp olt double %0, 0x5FE0000000000000, !dbg !415
  %120 = fdiv double 1.000000e+00, %4, !dbg !416
  %121 = select i1 %119, double %120, double 0.000000e+00, !dbg !416
  store double %121, ptr %2, align 8, !dbg !417, !tbaa !151
  %122 = load double, ptr %1, align 8, !dbg !418, !tbaa !151
  %123 = tail call double @llvm.fabs.f64(double %122), !dbg !419
  %124 = fmul double %123, 0x3CC0000000000000, !dbg !420
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !421
  store double %124, ptr %125, align 8, !dbg !422, !tbaa !158
  %126 = tail call double @llvm.fabs.f64(double %121), !dbg !423
  %127 = fmul double %126, 0x3CC0000000000000, !dbg !424
  br label %128

128:                                              ; preds = %115, %100, %45
  %129 = phi double [ %handler_result61, %100 ], [ %127, %115 ], [ %handler_result30, %45 ]
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !425
  store double %129, ptr %130, align 8, !dbg !425, !tbaa !158
  ret void, !dbg !426
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !427 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !431 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_Ci_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 !dbg !432 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !449
  call void @llvm.dbg.assign(metadata i1 undef, metadata !442, metadata !DIExpression(), metadata !449, metadata ptr %3, metadata !DIExpression()), !dbg !450
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !444, metadata !DIExpression(), metadata !451, metadata ptr %4, metadata !DIExpression()), !dbg !450
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !452
  call void @llvm.dbg.assign(metadata i1 undef, metadata !447, metadata !DIExpression(), metadata !452, metadata ptr %5, metadata !DIExpression()), !dbg !450
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !453
  call void @llvm.dbg.assign(metadata i1 undef, metadata !448, metadata !DIExpression(), metadata !453, metadata ptr %6, metadata !DIExpression()), !dbg !450
  tail call void @llvm.dbg.value(metadata double %0, metadata !434, metadata !DIExpression()), !dbg !454
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !435, metadata !DIExpression()), !dbg !454
  %7 = fcmp ugt double %0, 0.000000e+00, !dbg !455
  br i1 %7, label %10, label %8, !dbg !456

8:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !457, !tbaa !151
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !457
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !457, !tbaa !158
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 359, i32 noundef 1) #7, !dbg !460
  br label %71, !dbg !460

10:                                               ; preds = %2
  %11 = fcmp ugt double %0, 4.000000e+00, !dbg !462
  br i1 %11, label %41, label %12, !dbg !463

12:                                               ; preds = %10
  %handler_result24 = call double @callHandler(i32 12, double %0, double %0), !dbg !464
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !436, metadata !DIExpression()), !dbg !465
  %13 = fmul double %0, %0, !dbg !464
  %handler_result = call double @fAddHandlerDouble(double %13, double -8.000000e+00), !dbg !466
  %14 = fmul double %handler_result, 1.250000e-01, !dbg !466
  tail call void @llvm.dbg.value(metadata double %14, metadata !440, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata !164, metadata !165, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %14, metadata !173, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata ptr undef, metadata !174, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !176, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !467
  %15 = fmul double %14, 2.000000e+00, !dbg !469
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !470
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !471
  %16 = fmul double %handler_result2, 5.000000e-01, !dbg !471
  call void @llvm.dbg.value(metadata double %16, metadata !178, metadata !DIExpression()), !dbg !467
  %17 = fmul double %16, 2.000000e+00, !dbg !472
  call void @llvm.dbg.value(metadata double %17, metadata !179, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 12, metadata !175, metadata !DIExpression()), !dbg !467
  br label %18, !dbg !473

18:                                               ; preds = %18, %12
  %19 = phi i64 [ 12, %12 ], [ %29, %18 ]
  %20 = phi double [ 0.000000e+00, %12 ], [ %handler_result4, %18 ]
  %21 = phi double [ 0.000000e+00, %12 ], [ %handler_result7, %18 ]
  %22 = phi double [ 0.000000e+00, %12 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !175, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %20, metadata !176, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %21, metadata !180, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %22, metadata !177, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %20, metadata !181, metadata !DIExpression()), !dbg !474
  %23 = fmul double %17, %20, !dbg !475
  %handler_result3 = call double @fSubHandlerDouble(double %23, double %22), !dbg !476
  %24 = getelementptr inbounds double, ptr @ci_data, i64 %19, !dbg !476
  %25 = load double, ptr %24, align 8, !dbg !476, !tbaa !197
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %25), !dbg !477
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !176, metadata !DIExpression()), !dbg !467
  %26 = tail call double @llvm.fabs.f64(double %23), !dbg !477
  %27 = tail call double @llvm.fabs.f64(double %22), !dbg !478
  %handler_result5 = call double @fAddHandlerDouble(double %26, double %27), !dbg !479
  %28 = tail call double @llvm.fabs.f64(double %25), !dbg !479
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %28), !dbg !480
  %handler_result7 = call double @fAddHandlerDouble(double %21, double %handler_result6), !dbg !481
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !180, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %20, metadata !177, metadata !DIExpression()), !dbg !467
  %29 = add nsw i64 %19, -1, !dbg !481
  call void @llvm.dbg.value(metadata i64 %29, metadata !175, metadata !DIExpression()), !dbg !467
  %30 = icmp ugt i64 %19, 1, !dbg !482
  br i1 %30, label %18, label %31, !dbg !473, !llvm.loop !483

31:                                               ; preds = %18
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !185, metadata !DIExpression()), !dbg !485
  %32 = fmul double %16, %handler_result4, !dbg !486
  %handler_result8 = call double @fSubHandlerDouble(double %32, double %20), !dbg !487
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBFC5C342F43D436A), !dbg !488
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !176, metadata !DIExpression()), !dbg !467
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !488
  %34 = tail call double @llvm.fabs.f64(double %20), !dbg !489
  %handler_result10 = call double @fAddHandlerDouble(double %34, double %33), !dbg !490
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FC5C342F43D436A), !dbg !491
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !492
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !180, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !465
  %35 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !492
  %handler_result13 = call double @fAddHandlerDouble(double %35, double 1.940000e-18), !dbg !493
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !465
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result24, double -5.000000e-01), !dbg !494
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %handler_result9), !dbg !495
  store double %handler_result15, ptr %1, align 8, !dbg !495, !tbaa !151
  %36 = tail call double @llvm.fabs.f64(double %handler_result24), !dbg !496
  %handler_result16 = call double @fAddHandlerDouble(double %36, double 5.000000e-01), !dbg !497
  %37 = fmul double %handler_result16, 0x3CC0000000000000, !dbg !497
  %handler_result17 = call double @fAddHandlerDouble(double %37, double %handler_result13), !dbg !498
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !498
  %39 = tail call double @llvm.fabs.f64(double %handler_result15), !dbg !499
  %40 = fmul double %39, 0x3CC0000000000000, !dbg !500
  %handler_result18 = call double @fAddHandlerDouble(double %40, double %handler_result17), !dbg !501
  store double %handler_result18, ptr %38, align 8, !dbg !501, !tbaa !158
  br label %71

41:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !502
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !503
  %42 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %3) #7, !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !445, metadata !DIExpression()), !dbg !450
  %43 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %4) #7, !dbg !505
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !446, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !506
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !507
  call fastcc void @fg_asymp(double noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !508
  %44 = load double, ptr %5, align 8, !dbg !509, !tbaa !151
  %45 = load double, ptr %3, align 8, !dbg !510, !tbaa !151
  %46 = fmul double %44, %45, !dbg !511
  %47 = load double, ptr %6, align 8, !dbg !512, !tbaa !151
  %48 = load double, ptr %4, align 8, !dbg !513, !tbaa !151
  %49 = fmul double %47, %48, !dbg !514
  %handler_result19 = call double @fSubHandlerDouble(double %46, double %49), !dbg !515
  store double %handler_result19, ptr %1, align 8, !dbg !515, !tbaa !151
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !516
  %51 = load double, ptr %50, align 8, !dbg !516, !tbaa !158
  %52 = fmul double %45, %51, !dbg !517
  %53 = call double @llvm.fabs.f64(double %52), !dbg !518
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !519
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !520
  %56 = load double, ptr %55, align 8, !dbg !520, !tbaa !158
  %57 = fmul double %48, %56, !dbg !521
  %58 = call double @llvm.fabs.f64(double %57), !dbg !522
  %handler_result20 = call double @fAddHandlerDouble(double %53, double %58), !dbg !523
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !523
  %60 = load double, ptr %59, align 8, !dbg !523, !tbaa !158
  %61 = fmul double %44, %60, !dbg !524
  %62 = call double @llvm.fabs.f64(double %61), !dbg !525
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %62), !dbg !526
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !526
  %64 = load double, ptr %63, align 8, !dbg !526, !tbaa !158
  %65 = fmul double %47, %64, !dbg !527
  %66 = call double @llvm.fabs.f64(double %65), !dbg !528
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %66), !dbg !529
  %67 = call double @llvm.fabs.f64(double %handler_result19), !dbg !529
  %68 = fmul double %67, 0x3CC0000000000000, !dbg !530
  %handler_result23 = call double @fAddHandlerDouble(double %68, double %handler_result22), !dbg !531
  store double %handler_result23, ptr %54, align 8, !dbg !531, !tbaa !158
  %69 = icmp eq i32 %42, 0, !dbg !532
  %70 = select i1 %69, i32 %43, i32 %42, !dbg !532
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !533
  br label %71

71:                                               ; preds = %41, %31, %8
  %72 = phi i32 [ 1, %8 ], [ 0, %31 ], [ %70, %41 ], !dbg !534
  ret i32 %72, !dbg !535
}

declare !dbg !536 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !541 double @log(double noundef) local_unnamed_addr #4

declare !dbg !542 i32 @gsl_sf_sin_e(double noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !546 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_Si(double noundef %0) local_unnamed_addr #0 !dbg !547 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !554
  call void @llvm.dbg.assign(metadata i1 undef, metadata !552, metadata !DIExpression(), metadata !554, metadata ptr %2, metadata !DIExpression()), !dbg !555
  tail call void @llvm.dbg.value(metadata double %0, metadata !551, metadata !DIExpression()), !dbg !555
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !556
  %3 = call i32 @gsl_sf_Si_e(double noundef %0, ptr noundef nonnull %2), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 0, metadata !553, metadata !DIExpression()), !dbg !555
  %4 = load double, ptr %2, align 8, !dbg !556, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !557
  ret double %4, !dbg !557
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_Ci(double noundef %0) local_unnamed_addr #5 !dbg !558 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !563
  call void @llvm.dbg.assign(metadata i1 undef, metadata !561, metadata !DIExpression(), metadata !563, metadata ptr %2, metadata !DIExpression()), !dbg !564
  tail call void @llvm.dbg.value(metadata double %0, metadata !560, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !565
  %3 = call i32 @gsl_sf_Ci_e(double noundef %0, ptr noundef nonnull %2), !dbg !565
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !562, metadata !DIExpression()), !dbg !564
  %4 = icmp eq i32 %3, 0, !dbg !566
  br i1 %4, label %6, label %5, !dbg !565

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 401, i32 noundef %3) #7, !dbg !568
  br label %6, !dbg !568

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !565, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !571
  ret double %7, !dbg !571
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sinint.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88b26c451d8e7674e14172fb23968bef")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 24)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "si_data", scope: !19, file: !2, line: 265, type: !109, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, globals: !60, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!25 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!26 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!27 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!28 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!29 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!30 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!31 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!32 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!33 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!34 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!35 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!36 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!37 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!38 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!39 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!40 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!41 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!42 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!43 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!44 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!45 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!46 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!47 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!48 = !DIEnumerator(name: "GSL_ESING", value: 21)
!49 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!50 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!51 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!52 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!53 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!54 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!55 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!56 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!57 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!58 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!59 = !DIEnumerator(name: "GSL_EOF", value: 32)
!60 = !{!0, !7, !61, !12, !63, !17, !76, !78, !83, !85, !90, !92, !97, !99, !104, !106}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 396, type: !14, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "si_cs", scope: !19, file: !2, line: 280, type: !65, isLocal: true, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !66, line: 29, baseType: !67)
!66 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !66, line: 22, size: 320, elements: !68)
!68 = !{!69, !72, !73, !74, !75}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !67, file: !66, line: 23, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !67, file: !66, line: 24, baseType: !23, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !67, file: !66, line: 25, baseType: !71, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !67, file: !66, line: 26, baseType: !71, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !67, file: !66, line: 27, baseType: !23, size: 32, offset: 256)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "f1_cs", scope: !19, file: !2, line: 66, type: !65, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "f1_data", scope: !19, file: !2, line: 44, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1280, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 20)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "g1_cs", scope: !19, file: !2, line: 150, type: !65, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "g1_data", scope: !19, file: !2, line: 127, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1344, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 21)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "f2_cs", scope: !19, file: !2, line: 112, type: !65, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "f2_data", scope: !19, file: !2, line: 81, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1856, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 29)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "g2_cs", scope: !19, file: !2, line: 201, type: !65, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "g2_data", scope: !19, file: !2, line: 165, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 2176, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 34)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "ci_cs", scope: !19, file: !2, line: 309, type: !65, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "ci_data", scope: !19, file: !2, line: 294, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 832, elements: !5)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 768, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 12)
!112 = !{i32 7, !"Dwarf Version", i32 5}
!113 = !{i32 2, !"Debug Info Version", i32 3}
!114 = !{i32 1, !"wchar_size", i32 4}
!115 = !{i32 8, !"PIC Level", i32 2}
!116 = !{i32 7, !"PIE Level", i32 2}
!117 = !{i32 7, !"uwtable", i32 2}
!118 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!119 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!120 = distinct !DISubprogram(name: "gsl_sf_Si_e", scope: !2, file: !2, line: 319, type: !121, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !131)
!121 = !DISubroutineType(types: !122)
!122 = !{!23, !123, !124}
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !126, line: 41, baseType: !127)
!126 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !126, line: 37, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !127, file: !126, line: 38, baseType: !71, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !127, file: !126, line: 39, baseType: !71, size: 64, offset: 64)
!131 = !{!132, !133, !134, !135, !139, !141}
!132 = !DILocalVariable(name: "x", arg: 1, scope: !120, file: !2, line: 319, type: !123)
!133 = !DILocalVariable(name: "result", arg: 2, scope: !120, file: !2, line: 319, type: !124)
!134 = !DILocalVariable(name: "ax", scope: !120, file: !2, line: 321, type: !71)
!135 = !DILocalVariable(name: "result_c", scope: !136, file: !2, line: 331, type: !125)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 330, column: 22)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 330, column: 11)
!138 = distinct !DILexicalBlock(scope: !120, file: !2, line: 325, column: 6)
!139 = !DILocalVariable(name: "f", scope: !140, file: !2, line: 342, type: !125)
!140 = distinct !DILexicalBlock(scope: !137, file: !2, line: 338, column: 8)
!141 = !DILocalVariable(name: "g", scope: !140, file: !2, line: 343, type: !125)
!142 = distinct !DIAssignID()
!143 = !DILocation(line: 0, scope: !140)
!144 = distinct !DIAssignID()
!145 = !DILocation(line: 0, scope: !120)
!146 = !DILocation(line: 321, column: 15, scope: !120)
!147 = !DILocation(line: 325, column: 9, scope: !138)
!148 = !DILocation(line: 325, column: 6, scope: !120)
!149 = !DILocation(line: 326, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !138, file: !2, line: 325, column: 33)
!151 = !{!152, !153, i64 0}
!152 = !{!"gsl_sf_result_struct", !153, i64 0, !153, i64 8}
!153 = !{!"double", !154, i64 0}
!154 = !{!"omnipotent char", !155, i64 0}
!155 = !{!"Simple C/C++ TBAA"}
!156 = !DILocation(line: 327, column: 13, scope: !150)
!157 = !DILocation(line: 327, column: 17, scope: !150)
!158 = !{!152, !153, i64 8}
!159 = !DILocation(line: 328, column: 5, scope: !150)
!160 = !DILocation(line: 330, column: 14, scope: !137)
!161 = !DILocation(line: 330, column: 11, scope: !138)
!162 = !DILocation(line: 332, column: 27, scope: !136)
!163 = !DILocation(line: 332, column: 34, scope: !136)
!164 = !{}
!165 = !DILocalVariable(name: "cs", arg: 1, scope: !166, file: !167, line: 3, type: !170)
!166 = distinct !DISubprogram(name: "cheb_eval_e", scope: !167, file: !167, line: 3, type: !168, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !172)
!167 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!168 = !DISubroutineType(types: !169)
!169 = !{!23, !170, !123, !124}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!172 = !{!165, !173, !174, !175, !176, !177, !178, !179, !180, !181, !185}
!173 = !DILocalVariable(name: "x", arg: 2, scope: !166, file: !167, line: 4, type: !123)
!174 = !DILocalVariable(name: "result", arg: 3, scope: !166, file: !167, line: 5, type: !124)
!175 = !DILocalVariable(name: "j", scope: !166, file: !167, line: 7, type: !23)
!176 = !DILocalVariable(name: "d", scope: !166, file: !167, line: 8, type: !71)
!177 = !DILocalVariable(name: "dd", scope: !166, file: !167, line: 9, type: !71)
!178 = !DILocalVariable(name: "y", scope: !166, file: !167, line: 11, type: !71)
!179 = !DILocalVariable(name: "y2", scope: !166, file: !167, line: 12, type: !71)
!180 = !DILocalVariable(name: "e", scope: !166, file: !167, line: 14, type: !71)
!181 = !DILocalVariable(name: "temp", scope: !182, file: !167, line: 17, type: !71)
!182 = distinct !DILexicalBlock(scope: !183, file: !167, line: 16, column: 33)
!183 = distinct !DILexicalBlock(scope: !184, file: !167, line: 16, column: 3)
!184 = distinct !DILexicalBlock(scope: !166, file: !167, line: 16, column: 3)
!185 = !DILocalVariable(name: "temp", scope: !186, file: !167, line: 24, type: !71)
!186 = distinct !DILexicalBlock(scope: !166, file: !167, line: 23, column: 3)
!187 = !DILocation(line: 0, scope: !166, inlinedAt: !188)
!188 = distinct !DILocation(line: 332, column: 5, scope: !136)
!189 = !DILocation(line: 11, column: 19, scope: !166, inlinedAt: !188)
!190 = !DILocation(line: 11, column: 30, scope: !166, inlinedAt: !188)
!191 = !DILocation(line: 11, column: 39, scope: !166, inlinedAt: !188)
!192 = !DILocation(line: 12, column: 19, scope: !166, inlinedAt: !188)
!193 = !DILocation(line: 16, column: 3, scope: !184, inlinedAt: !188)
!194 = !DILocation(line: 0, scope: !182, inlinedAt: !188)
!195 = !DILocation(line: 18, column: 11, scope: !182, inlinedAt: !188)
!196 = !DILocation(line: 18, column: 21, scope: !182, inlinedAt: !188)
!197 = !{!153, !153, i64 0}
!198 = !DILocation(line: 19, column: 10, scope: !182, inlinedAt: !188)
!199 = !DILocation(line: 19, column: 26, scope: !182, inlinedAt: !188)
!200 = !DILocation(line: 19, column: 37, scope: !182, inlinedAt: !188)
!201 = !DILocation(line: 19, column: 7, scope: !182, inlinedAt: !188)
!202 = !DILocation(line: 16, column: 29, scope: !183, inlinedAt: !188)
!203 = !DILocation(line: 16, column: 23, scope: !183, inlinedAt: !188)
!204 = distinct !{!204, !193, !205, !206}
!205 = !DILocation(line: 21, column: 3, scope: !184, inlinedAt: !188)
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 0, scope: !186, inlinedAt: !188)
!208 = !DILocation(line: 25, column: 10, scope: !186, inlinedAt: !188)
!209 = !DILocation(line: 25, column: 18, scope: !186, inlinedAt: !188)
!210 = !DILocation(line: 26, column: 10, scope: !186, inlinedAt: !188)
!211 = !DILocation(line: 26, column: 25, scope: !186, inlinedAt: !188)
!212 = !DILocation(line: 26, column: 34, scope: !186, inlinedAt: !188)
!213 = !DILocation(line: 26, column: 7, scope: !186, inlinedAt: !188)
!214 = !DILocation(line: 30, column: 33, scope: !166, inlinedAt: !188)
!215 = !DILocation(line: 0, scope: !136)
!216 = !DILocation(line: 333, column: 31, scope: !136)
!217 = !DILocation(line: 333, column: 23, scope: !136)
!218 = !DILocation(line: 333, column: 18, scope: !136)
!219 = !DILocation(line: 334, column: 23, scope: !136)
!220 = !DILocation(line: 334, column: 13, scope: !136)
!221 = !DILocation(line: 335, column: 44, scope: !136)
!222 = !DILocation(line: 335, column: 42, scope: !136)
!223 = !DILocation(line: 335, column: 17, scope: !136)
!224 = !DILocation(line: 342, column: 5, scope: !140)
!225 = !DILocation(line: 343, column: 5, scope: !140)
!226 = !DILocation(line: 344, column: 5, scope: !140)
!227 = !DILocation(line: 345, column: 35, scope: !140)
!228 = !DILocation(line: 345, column: 38, scope: !140)
!229 = !DILocation(line: 345, column: 51, scope: !140)
!230 = !DILocation(line: 345, column: 54, scope: !140)
!231 = !DILocation(line: 345, column: 18, scope: !140)
!232 = !DILocation(line: 346, column: 22, scope: !140)
!233 = !DILocation(line: 346, column: 30, scope: !140)
!234 = !DILocation(line: 346, column: 13, scope: !140)
!235 = !DILocation(line: 347, column: 44, scope: !140)
!236 = !DILocation(line: 347, column: 42, scope: !140)
!237 = !DILocation(line: 347, column: 17, scope: !140)
!238 = !DILocation(line: 348, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !140, file: !2, line: 348, column: 8)
!240 = !DILocation(line: 348, column: 8, scope: !140)
!241 = !DILocation(line: 348, column: 31, scope: !239)
!242 = !DILocation(line: 348, column: 29, scope: !239)
!243 = !DILocation(line: 348, column: 17, scope: !239)
!244 = !DILocation(line: 350, column: 3, scope: !137)
!245 = !DILocation(line: 351, column: 1, scope: !120)
!246 = distinct !DISubprogram(name: "fg_asymp", scope: !2, file: !2, line: 210, type: !247, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !123, !124, !124}
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !261, !262, !265}
!250 = !DILocalVariable(name: "x", arg: 1, scope: !246, file: !2, line: 210, type: !123)
!251 = !DILocalVariable(name: "f", arg: 2, scope: !246, file: !2, line: 210, type: !124)
!252 = !DILocalVariable(name: "g", arg: 3, scope: !246, file: !2, line: 210, type: !124)
!253 = !DILocalVariable(name: "xbig", scope: !246, file: !2, line: 218, type: !123)
!254 = !DILocalVariable(name: "xmaxf", scope: !246, file: !2, line: 219, type: !123)
!255 = !DILocalVariable(name: "xmaxg", scope: !246, file: !2, line: 220, type: !123)
!256 = !DILocalVariable(name: "xbnd", scope: !246, file: !2, line: 221, type: !123)
!257 = !DILocalVariable(name: "x2", scope: !246, file: !2, line: 223, type: !123)
!258 = !DILocalVariable(name: "result_c1", scope: !259, file: !2, line: 226, type: !125)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 225, column: 17)
!260 = distinct !DILexicalBlock(scope: !246, file: !2, line: 225, column: 6)
!261 = !DILocalVariable(name: "result_c2", scope: !259, file: !2, line: 227, type: !125)
!262 = !DILocalVariable(name: "result_c1", scope: !263, file: !2, line: 236, type: !125)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 235, column: 22)
!264 = distinct !DILexicalBlock(scope: !260, file: !2, line: 235, column: 11)
!265 = !DILocalVariable(name: "result_c2", scope: !263, file: !2, line: 237, type: !125)
!266 = !DILocation(line: 0, scope: !246)
!267 = !DILocation(line: 223, column: 22, scope: !246)
!268 = !DILocation(line: 225, column: 8, scope: !260)
!269 = !DILocation(line: 225, column: 6, scope: !246)
!270 = !DILocation(line: 228, column: 29, scope: !259)
!271 = !DILocation(line: 228, column: 41, scope: !259)
!272 = !DILocation(line: 0, scope: !166, inlinedAt: !273)
!273 = distinct !DILocation(line: 228, column: 5, scope: !259)
!274 = !DILocation(line: 11, column: 19, scope: !166, inlinedAt: !273)
!275 = !DILocation(line: 11, column: 30, scope: !166, inlinedAt: !273)
!276 = !DILocation(line: 11, column: 39, scope: !166, inlinedAt: !273)
!277 = !DILocation(line: 12, column: 19, scope: !166, inlinedAt: !273)
!278 = !DILocation(line: 16, column: 3, scope: !184, inlinedAt: !273)
!279 = !DILocation(line: 0, scope: !182, inlinedAt: !273)
!280 = !DILocation(line: 18, column: 11, scope: !182, inlinedAt: !273)
!281 = !DILocation(line: 18, column: 21, scope: !182, inlinedAt: !273)
!282 = !DILocation(line: 19, column: 10, scope: !182, inlinedAt: !273)
!283 = !DILocation(line: 19, column: 26, scope: !182, inlinedAt: !273)
!284 = !DILocation(line: 19, column: 37, scope: !182, inlinedAt: !273)
!285 = !DILocation(line: 19, column: 7, scope: !182, inlinedAt: !273)
!286 = !DILocation(line: 16, column: 29, scope: !183, inlinedAt: !273)
!287 = !DILocation(line: 16, column: 23, scope: !183, inlinedAt: !273)
!288 = distinct !{!288, !278, !289, !206}
!289 = !DILocation(line: 21, column: 3, scope: !184, inlinedAt: !273)
!290 = !DILocation(line: 0, scope: !186, inlinedAt: !273)
!291 = !DILocation(line: 25, column: 10, scope: !186, inlinedAt: !273)
!292 = !DILocation(line: 25, column: 18, scope: !186, inlinedAt: !273)
!293 = !DILocation(line: 26, column: 10, scope: !186, inlinedAt: !273)
!294 = !DILocation(line: 26, column: 25, scope: !186, inlinedAt: !273)
!295 = !DILocation(line: 26, column: 34, scope: !186, inlinedAt: !273)
!296 = !DILocation(line: 26, column: 7, scope: !186, inlinedAt: !273)
!297 = !DILocation(line: 30, column: 33, scope: !166, inlinedAt: !273)
!298 = !DILocation(line: 0, scope: !259)
!299 = !DILocation(line: 11, column: 22, scope: !166, inlinedAt: !300)
!300 = distinct !DILocation(line: 229, column: 5, scope: !259)
!301 = !DILocation(line: 0, scope: !166, inlinedAt: !300)
!302 = !DILocation(line: 11, column: 30, scope: !166, inlinedAt: !300)
!303 = !DILocation(line: 11, column: 39, scope: !166, inlinedAt: !300)
!304 = !DILocation(line: 12, column: 19, scope: !166, inlinedAt: !300)
!305 = !DILocation(line: 16, column: 3, scope: !184, inlinedAt: !300)
!306 = !DILocation(line: 0, scope: !182, inlinedAt: !300)
!307 = !DILocation(line: 18, column: 11, scope: !182, inlinedAt: !300)
!308 = !DILocation(line: 18, column: 21, scope: !182, inlinedAt: !300)
!309 = !DILocation(line: 19, column: 10, scope: !182, inlinedAt: !300)
!310 = !DILocation(line: 19, column: 26, scope: !182, inlinedAt: !300)
!311 = !DILocation(line: 19, column: 37, scope: !182, inlinedAt: !300)
!312 = !DILocation(line: 19, column: 7, scope: !182, inlinedAt: !300)
!313 = !DILocation(line: 16, column: 29, scope: !183, inlinedAt: !300)
!314 = !DILocation(line: 16, column: 23, scope: !183, inlinedAt: !300)
!315 = distinct !{!315, !305, !316, !206}
!316 = !DILocation(line: 21, column: 3, scope: !184, inlinedAt: !300)
!317 = !DILocation(line: 0, scope: !186, inlinedAt: !300)
!318 = !DILocation(line: 25, column: 10, scope: !186, inlinedAt: !300)
!319 = !DILocation(line: 25, column: 18, scope: !186, inlinedAt: !300)
!320 = !DILocation(line: 26, column: 10, scope: !186, inlinedAt: !300)
!321 = !DILocation(line: 26, column: 25, scope: !186, inlinedAt: !300)
!322 = !DILocation(line: 26, column: 34, scope: !186, inlinedAt: !300)
!323 = !DILocation(line: 26, column: 7, scope: !186, inlinedAt: !300)
!324 = !DILocation(line: 30, column: 33, scope: !166, inlinedAt: !300)
!325 = !DILocation(line: 230, column: 19, scope: !259)
!326 = !DILocation(line: 230, column: 35, scope: !259)
!327 = !DILocation(line: 230, column: 12, scope: !259)
!328 = !DILocation(line: 231, column: 35, scope: !259)
!329 = !DILocation(line: 231, column: 12, scope: !259)
!330 = !DILocation(line: 232, column: 27, scope: !259)
!331 = !DILocation(line: 232, column: 65, scope: !259)
!332 = !DILocation(line: 232, column: 57, scope: !259)
!333 = !DILocation(line: 232, column: 55, scope: !259)
!334 = !DILocation(line: 232, column: 8, scope: !259)
!335 = !DILocation(line: 232, column: 12, scope: !259)
!336 = !DILocation(line: 233, column: 27, scope: !259)
!337 = !DILocation(line: 233, column: 57, scope: !259)
!338 = !DILocation(line: 233, column: 55, scope: !259)
!339 = !DILocation(line: 234, column: 3, scope: !259)
!340 = !DILocation(line: 235, column: 13, scope: !264)
!341 = !DILocation(line: 235, column: 11, scope: !260)
!342 = !DILocation(line: 238, column: 30, scope: !263)
!343 = !DILocation(line: 11, column: 19, scope: !166, inlinedAt: !344)
!344 = distinct !DILocation(line: 238, column: 5, scope: !263)
!345 = !DILocation(line: 0, scope: !166, inlinedAt: !344)
!346 = !DILocation(line: 11, column: 30, scope: !166, inlinedAt: !344)
!347 = !DILocation(line: 11, column: 39, scope: !166, inlinedAt: !344)
!348 = !DILocation(line: 12, column: 19, scope: !166, inlinedAt: !344)
!349 = !DILocation(line: 16, column: 3, scope: !184, inlinedAt: !344)
!350 = !DILocation(line: 0, scope: !182, inlinedAt: !344)
!351 = !DILocation(line: 18, column: 11, scope: !182, inlinedAt: !344)
!352 = !DILocation(line: 18, column: 21, scope: !182, inlinedAt: !344)
!353 = !DILocation(line: 19, column: 10, scope: !182, inlinedAt: !344)
!354 = !DILocation(line: 19, column: 26, scope: !182, inlinedAt: !344)
!355 = !DILocation(line: 19, column: 37, scope: !182, inlinedAt: !344)
!356 = !DILocation(line: 19, column: 7, scope: !182, inlinedAt: !344)
!357 = !DILocation(line: 16, column: 29, scope: !183, inlinedAt: !344)
!358 = !DILocation(line: 16, column: 23, scope: !183, inlinedAt: !344)
!359 = distinct !{!359, !349, !360, !206}
!360 = !DILocation(line: 21, column: 3, scope: !184, inlinedAt: !344)
!361 = !DILocation(line: 0, scope: !186, inlinedAt: !344)
!362 = !DILocation(line: 25, column: 10, scope: !186, inlinedAt: !344)
!363 = !DILocation(line: 25, column: 18, scope: !186, inlinedAt: !344)
!364 = !DILocation(line: 26, column: 10, scope: !186, inlinedAt: !344)
!365 = !DILocation(line: 26, column: 25, scope: !186, inlinedAt: !344)
!366 = !DILocation(line: 26, column: 34, scope: !186, inlinedAt: !344)
!367 = !DILocation(line: 26, column: 7, scope: !186, inlinedAt: !344)
!368 = !DILocation(line: 30, column: 33, scope: !166, inlinedAt: !344)
!369 = !DILocation(line: 0, scope: !263)
!370 = !DILocation(line: 11, column: 22, scope: !166, inlinedAt: !371)
!371 = distinct !DILocation(line: 239, column: 5, scope: !263)
!372 = !DILocation(line: 0, scope: !166, inlinedAt: !371)
!373 = !DILocation(line: 11, column: 30, scope: !166, inlinedAt: !371)
!374 = !DILocation(line: 11, column: 39, scope: !166, inlinedAt: !371)
!375 = !DILocation(line: 12, column: 19, scope: !166, inlinedAt: !371)
!376 = !DILocation(line: 16, column: 3, scope: !184, inlinedAt: !371)
!377 = !DILocation(line: 0, scope: !182, inlinedAt: !371)
!378 = !DILocation(line: 18, column: 11, scope: !182, inlinedAt: !371)
!379 = !DILocation(line: 18, column: 21, scope: !182, inlinedAt: !371)
!380 = !DILocation(line: 19, column: 10, scope: !182, inlinedAt: !371)
!381 = !DILocation(line: 19, column: 26, scope: !182, inlinedAt: !371)
!382 = !DILocation(line: 19, column: 37, scope: !182, inlinedAt: !371)
!383 = !DILocation(line: 19, column: 7, scope: !182, inlinedAt: !371)
!384 = !DILocation(line: 16, column: 29, scope: !183, inlinedAt: !371)
!385 = !DILocation(line: 16, column: 23, scope: !183, inlinedAt: !371)
!386 = distinct !{!386, !376, !387, !206}
!387 = !DILocation(line: 21, column: 3, scope: !184, inlinedAt: !371)
!388 = !DILocation(line: 0, scope: !186, inlinedAt: !371)
!389 = !DILocation(line: 25, column: 10, scope: !186, inlinedAt: !371)
!390 = !DILocation(line: 25, column: 18, scope: !186, inlinedAt: !371)
!391 = !DILocation(line: 26, column: 10, scope: !186, inlinedAt: !371)
!392 = !DILocation(line: 26, column: 25, scope: !186, inlinedAt: !371)
!393 = !DILocation(line: 26, column: 34, scope: !186, inlinedAt: !371)
!394 = !DILocation(line: 26, column: 7, scope: !186, inlinedAt: !371)
!395 = !DILocation(line: 30, column: 33, scope: !166, inlinedAt: !371)
!396 = !DILocation(line: 240, column: 19, scope: !263)
!397 = !DILocation(line: 240, column: 35, scope: !263)
!398 = !DILocation(line: 240, column: 12, scope: !263)
!399 = !DILocation(line: 241, column: 35, scope: !263)
!400 = !DILocation(line: 241, column: 12, scope: !263)
!401 = !DILocation(line: 242, column: 27, scope: !263)
!402 = !DILocation(line: 242, column: 65, scope: !263)
!403 = !DILocation(line: 242, column: 57, scope: !263)
!404 = !DILocation(line: 242, column: 55, scope: !263)
!405 = !DILocation(line: 242, column: 8, scope: !263)
!406 = !DILocation(line: 242, column: 12, scope: !263)
!407 = !DILocation(line: 243, column: 27, scope: !263)
!408 = !DILocation(line: 243, column: 57, scope: !263)
!409 = !DILocation(line: 243, column: 55, scope: !263)
!410 = !DILocation(line: 244, column: 3, scope: !263)
!411 = !DILocation(line: 246, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !264, file: !2, line: 245, column: 8)
!413 = !DILocation(line: 246, column: 15, scope: !412)
!414 = !DILocation(line: 246, column: 12, scope: !412)
!415 = !DILocation(line: 247, column: 17, scope: !412)
!416 = !DILocation(line: 247, column: 15, scope: !412)
!417 = !DILocation(line: 247, column: 12, scope: !412)
!418 = !DILocation(line: 248, column: 46, scope: !412)
!419 = !DILocation(line: 248, column: 38, scope: !412)
!420 = !DILocation(line: 248, column: 36, scope: !412)
!421 = !DILocation(line: 248, column: 8, scope: !412)
!422 = !DILocation(line: 248, column: 12, scope: !412)
!423 = !DILocation(line: 249, column: 38, scope: !412)
!424 = !DILocation(line: 249, column: 36, scope: !412)
!425 = !DILocation(line: 0, scope: !260)
!426 = !DILocation(line: 253, column: 1, scope: !246)
!427 = !DISubprogram(name: "cos", scope: !428, file: !428, line: 62, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!429 = !DISubroutineType(types: !430)
!430 = !{!71, !71}
!431 = !DISubprogram(name: "sin", scope: !428, file: !428, line: 64, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = distinct !DISubprogram(name: "gsl_sf_Ci_e", scope: !2, file: !2, line: 354, type: !121, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !433)
!433 = !{!434, !435, !436, !440, !441, !442, !444, !445, !446, !447, !448}
!434 = !DILocalVariable(name: "x", arg: 1, scope: !432, file: !2, line: 354, type: !123)
!435 = !DILocalVariable(name: "result", arg: 2, scope: !432, file: !2, line: 354, type: !124)
!436 = !DILocalVariable(name: "lx", scope: !437, file: !2, line: 362, type: !123)
!437 = distinct !DILexicalBlock(scope: !438, file: !2, line: 361, column: 21)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 361, column: 11)
!439 = distinct !DILexicalBlock(scope: !432, file: !2, line: 358, column: 6)
!440 = !DILocalVariable(name: "y", scope: !437, file: !2, line: 363, type: !123)
!441 = !DILocalVariable(name: "result_c", scope: !437, file: !2, line: 364, type: !125)
!442 = !DILocalVariable(name: "sin_result", scope: !443, file: !2, line: 372, type: !125)
!443 = distinct !DILexicalBlock(scope: !438, file: !2, line: 371, column: 8)
!444 = !DILocalVariable(name: "cos_result", scope: !443, file: !2, line: 373, type: !125)
!445 = !DILocalVariable(name: "stat_sin", scope: !443, file: !2, line: 374, type: !23)
!446 = !DILocalVariable(name: "stat_cos", scope: !443, file: !2, line: 375, type: !23)
!447 = !DILocalVariable(name: "f", scope: !443, file: !2, line: 376, type: !125)
!448 = !DILocalVariable(name: "g", scope: !443, file: !2, line: 377, type: !125)
!449 = distinct !DIAssignID()
!450 = !DILocation(line: 0, scope: !443)
!451 = distinct !DIAssignID()
!452 = distinct !DIAssignID()
!453 = distinct !DIAssignID()
!454 = !DILocation(line: 0, scope: !432)
!455 = !DILocation(line: 358, column: 8, scope: !439)
!456 = !DILocation(line: 358, column: 6, scope: !432)
!457 = !DILocation(line: 359, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !2, line: 359, column: 5)
!459 = distinct !DILexicalBlock(scope: !439, file: !2, line: 358, column: 16)
!460 = !DILocation(line: 359, column: 5, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !2, line: 359, column: 5)
!462 = !DILocation(line: 361, column: 13, scope: !438)
!463 = !DILocation(line: 361, column: 11, scope: !439)
!464 = !DILocation(line: 363, column: 25, scope: !437)
!465 = !DILocation(line: 0, scope: !437)
!466 = !DILocation(line: 363, column: 32, scope: !437)
!467 = !DILocation(line: 0, scope: !166, inlinedAt: !468)
!468 = distinct !DILocation(line: 365, column: 5, scope: !437)
!469 = !DILocation(line: 11, column: 19, scope: !166, inlinedAt: !468)
!470 = !DILocation(line: 11, column: 30, scope: !166, inlinedAt: !468)
!471 = !DILocation(line: 11, column: 39, scope: !166, inlinedAt: !468)
!472 = !DILocation(line: 12, column: 19, scope: !166, inlinedAt: !468)
!473 = !DILocation(line: 16, column: 3, scope: !184, inlinedAt: !468)
!474 = !DILocation(line: 0, scope: !182, inlinedAt: !468)
!475 = !DILocation(line: 18, column: 11, scope: !182, inlinedAt: !468)
!476 = !DILocation(line: 18, column: 21, scope: !182, inlinedAt: !468)
!477 = !DILocation(line: 19, column: 10, scope: !182, inlinedAt: !468)
!478 = !DILocation(line: 19, column: 26, scope: !182, inlinedAt: !468)
!479 = !DILocation(line: 19, column: 37, scope: !182, inlinedAt: !468)
!480 = !DILocation(line: 19, column: 7, scope: !182, inlinedAt: !468)
!481 = !DILocation(line: 16, column: 29, scope: !183, inlinedAt: !468)
!482 = !DILocation(line: 16, column: 23, scope: !183, inlinedAt: !468)
!483 = distinct !{!483, !473, !484, !206}
!484 = !DILocation(line: 21, column: 3, scope: !184, inlinedAt: !468)
!485 = !DILocation(line: 0, scope: !186, inlinedAt: !468)
!486 = !DILocation(line: 25, column: 10, scope: !186, inlinedAt: !468)
!487 = !DILocation(line: 25, column: 18, scope: !186, inlinedAt: !468)
!488 = !DILocation(line: 26, column: 10, scope: !186, inlinedAt: !468)
!489 = !DILocation(line: 26, column: 25, scope: !186, inlinedAt: !468)
!490 = !DILocation(line: 26, column: 34, scope: !186, inlinedAt: !468)
!491 = !DILocation(line: 26, column: 7, scope: !186, inlinedAt: !468)
!492 = !DILocation(line: 30, column: 33, scope: !166, inlinedAt: !468)
!493 = !DILocation(line: 366, column: 23, scope: !437)
!494 = !DILocation(line: 366, column: 29, scope: !437)
!495 = !DILocation(line: 366, column: 18, scope: !437)
!496 = !DILocation(line: 367, column: 45, scope: !437)
!497 = !DILocation(line: 367, column: 42, scope: !437)
!498 = !DILocation(line: 367, column: 13, scope: !437)
!499 = !DILocation(line: 368, column: 44, scope: !437)
!500 = !DILocation(line: 368, column: 42, scope: !437)
!501 = !DILocation(line: 368, column: 17, scope: !437)
!502 = !DILocation(line: 372, column: 5, scope: !443)
!503 = !DILocation(line: 373, column: 5, scope: !443)
!504 = !DILocation(line: 374, column: 20, scope: !443)
!505 = !DILocation(line: 375, column: 20, scope: !443)
!506 = !DILocation(line: 376, column: 5, scope: !443)
!507 = !DILocation(line: 377, column: 5, scope: !443)
!508 = !DILocation(line: 378, column: 5, scope: !443)
!509 = !DILocation(line: 379, column: 22, scope: !443)
!510 = !DILocation(line: 379, column: 37, scope: !443)
!511 = !DILocation(line: 379, column: 25, scope: !443)
!512 = !DILocation(line: 379, column: 45, scope: !443)
!513 = !DILocation(line: 379, column: 60, scope: !443)
!514 = !DILocation(line: 379, column: 48, scope: !443)
!515 = !DILocation(line: 379, column: 18, scope: !443)
!516 = !DILocation(line: 380, column: 27, scope: !443)
!517 = !DILocation(line: 380, column: 30, scope: !443)
!518 = !DILocation(line: 380, column: 20, scope: !443)
!519 = !DILocation(line: 380, column: 13, scope: !443)
!520 = !DILocation(line: 381, column: 27, scope: !443)
!521 = !DILocation(line: 381, column: 30, scope: !443)
!522 = !DILocation(line: 381, column: 20, scope: !443)
!523 = !DILocation(line: 382, column: 42, scope: !443)
!524 = !DILocation(line: 382, column: 30, scope: !443)
!525 = !DILocation(line: 382, column: 20, scope: !443)
!526 = !DILocation(line: 383, column: 42, scope: !443)
!527 = !DILocation(line: 383, column: 30, scope: !443)
!528 = !DILocation(line: 383, column: 20, scope: !443)
!529 = !DILocation(line: 384, column: 44, scope: !443)
!530 = !DILocation(line: 384, column: 42, scope: !443)
!531 = !DILocation(line: 384, column: 17, scope: !443)
!532 = !DILocation(line: 385, column: 12, scope: !443)
!533 = !DILocation(line: 386, column: 3, scope: !438)
!534 = !DILocation(line: 0, scope: !439)
!535 = !DILocation(line: 387, column: 1, scope: !432)
!536 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539, !539, !23, !23}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!541 = !DISubprogram(name: "log", scope: !428, file: !428, line: 104, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubprogram(name: "gsl_sf_sin_e", scope: !543, file: !543, line: 45, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!544 = !DISubroutineType(types: !545)
!545 = !{!23, !71, !124}
!546 = !DISubprogram(name: "gsl_sf_cos_e", scope: !543, file: !543, line: 51, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = distinct !DISubprogram(name: "gsl_sf_Si", scope: !2, file: !2, line: 394, type: !548, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!71, !123}
!550 = !{!551, !552, !553}
!551 = !DILocalVariable(name: "x", arg: 1, scope: !547, file: !2, line: 394, type: !123)
!552 = !DILocalVariable(name: "result", scope: !547, file: !2, line: 396, type: !125)
!553 = !DILocalVariable(name: "status", scope: !547, file: !2, line: 396, type: !23)
!554 = distinct !DIAssignID()
!555 = !DILocation(line: 0, scope: !547)
!556 = !DILocation(line: 396, column: 3, scope: !547)
!557 = !DILocation(line: 397, column: 1, scope: !547)
!558 = distinct !DISubprogram(name: "gsl_sf_Ci", scope: !2, file: !2, line: 399, type: !548, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !559)
!559 = !{!560, !561, !562}
!560 = !DILocalVariable(name: "x", arg: 1, scope: !558, file: !2, line: 399, type: !123)
!561 = !DILocalVariable(name: "result", scope: !558, file: !2, line: 401, type: !125)
!562 = !DILocalVariable(name: "status", scope: !558, file: !2, line: 401, type: !23)
!563 = distinct !DIAssignID()
!564 = !DILocation(line: 0, scope: !558)
!565 = !DILocation(line: 401, column: 3, scope: !558)
!566 = !DILocation(line: 401, column: 3, scope: !567)
!567 = distinct !DILexicalBlock(scope: !558, file: !2, line: 401, column: 3)
!568 = !DILocation(line: 401, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !2, line: 401, column: 3)
!570 = distinct !DILexicalBlock(scope: !567, file: !2, line: 401, column: 3)
!571 = !DILocation(line: 402, column: 1, scope: !558)
