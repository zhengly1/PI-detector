; ModuleID = 'sinint.c'
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
  br label %78, !dbg !159

9:                                                ; preds = %2
  %10 = fcmp ugt double %5, 4.000000e+00, !dbg !160
  br i1 %10, label %56, label %11, !dbg !161

11:                                               ; preds = %9
  %12 = fmul double %0, %0, !dbg !162
  %13 = fadd double %12, -8.000000e+00, !dbg !163
  %14 = fmul double %13, 1.250000e-01, !dbg !164
  call void @llvm.dbg.value(metadata !165, metadata !166, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double %14, metadata !174, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata ptr undef, metadata !175, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !188
  %15 = fmul double %14, 2.000000e+00, !dbg !190
  %16 = fadd double %15, 1.000000e+00, !dbg !191
  %17 = fadd double %16, -1.000000e+00, !dbg !192
  %18 = fmul double %17, 5.000000e-01, !dbg !193
  call void @llvm.dbg.value(metadata double %18, metadata !179, metadata !DIExpression()), !dbg !188
  %19 = fmul double %18, 2.000000e+00, !dbg !194
  call void @llvm.dbg.value(metadata double %19, metadata !180, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i32 11, metadata !176, metadata !DIExpression()), !dbg !188
  br label %20, !dbg !195

20:                                               ; preds = %20, %11
  %21 = phi i64 [ 11, %11 ], [ %36, %20 ]
  %22 = phi double [ 0.000000e+00, %11 ], [ %29, %20 ]
  %23 = phi double [ 0.000000e+00, %11 ], [ %35, %20 ]
  %24 = phi double [ 0.000000e+00, %11 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !176, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double %22, metadata !177, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double %23, metadata !181, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double %24, metadata !178, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double %22, metadata !182, metadata !DIExpression()), !dbg !196
  %25 = fmul double %19, %22, !dbg !197
  %26 = fsub double %25, %24, !dbg !198
  %27 = getelementptr inbounds double, ptr @si_data, i64 %21, !dbg !199
  %28 = load double, ptr %27, align 8, !dbg !199, !tbaa !200
  %29 = fadd double %26, %28, !dbg !201
  call void @llvm.dbg.value(metadata double %29, metadata !177, metadata !DIExpression()), !dbg !188
  %30 = tail call double @llvm.fabs.f64(double %25), !dbg !202
  %31 = tail call double @llvm.fabs.f64(double %24), !dbg !203
  %32 = fadd double %30, %31, !dbg !204
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !205
  %34 = fadd double %32, %33, !dbg !206
  %35 = fadd double %23, %34, !dbg !207
  call void @llvm.dbg.value(metadata double %35, metadata !181, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata double %22, metadata !178, metadata !DIExpression()), !dbg !188
  %36 = add nsw i64 %21, -1, !dbg !208
  call void @llvm.dbg.value(metadata i64 %36, metadata !176, metadata !DIExpression()), !dbg !188
  %37 = icmp ugt i64 %21, 1, !dbg !209
  br i1 %37, label %20, label %38, !dbg !195, !llvm.loop !210

38:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %29, metadata !186, metadata !DIExpression()), !dbg !213
  %39 = fmul double %18, %29, !dbg !214
  %40 = fsub double %39, %22, !dbg !215
  %41 = fadd double %40, 0xBFB0D71C5B9D689C, !dbg !216
  call void @llvm.dbg.value(metadata double %41, metadata !177, metadata !DIExpression()), !dbg !188
  %42 = tail call double @llvm.fabs.f64(double %39), !dbg !217
  %43 = tail call double @llvm.fabs.f64(double %22), !dbg !218
  %44 = fadd double %43, %42, !dbg !219
  %45 = fadd double %44, 0x3FB0D71C5B9D689C, !dbg !220
  %46 = fadd double %35, %45, !dbg !221
  call void @llvm.dbg.value(metadata double %46, metadata !181, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata double %41, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !222
  %47 = fmul double %46, 0x3CB0000000000000, !dbg !223
  %48 = fadd double %47, 1.220000e-17, !dbg !224
  tail call void @llvm.dbg.value(metadata double %48, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !222
  %49 = fadd double %41, 7.500000e-01, !dbg !225
  %50 = fmul double %49, %0, !dbg !226
  store double %50, ptr %1, align 8, !dbg !227, !tbaa !151
  %51 = fmul double %5, %48, !dbg !228
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !229
  %53 = tail call double @llvm.fabs.f64(double %50), !dbg !230
  %54 = fmul double %53, 0x3CC0000000000000, !dbg !231
  %55 = fadd double %54, %51, !dbg !232
  store double %55, ptr %52, align 8, !dbg !232, !tbaa !158
  br label %78

56:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !233
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !234
  call fastcc void @fg_asymp(double noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !235
  %57 = load double, ptr %3, align 8, !dbg !236, !tbaa !151
  %58 = tail call double @cos(double noundef %5) #8, !dbg !237
  %59 = fmul double %57, %58, !dbg !238
  %60 = fsub double 0x3FF921FB54442D18, %59, !dbg !239
  %61 = load double, ptr %4, align 8, !dbg !240, !tbaa !151
  %62 = tail call double @sin(double noundef %5) #8, !dbg !241
  %63 = fmul double %61, %62, !dbg !242
  %64 = fsub double %60, %63, !dbg !243
  store double %64, ptr %1, align 8, !dbg !244, !tbaa !151
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !245
  %66 = load double, ptr %65, align 8, !dbg !245, !tbaa !158
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !246
  %68 = load double, ptr %67, align 8, !dbg !246, !tbaa !158
  %69 = fadd double %66, %68, !dbg !247
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !248
  %71 = tail call double @llvm.fabs.f64(double %64), !dbg !249
  %72 = fmul double %71, 0x3CC0000000000000, !dbg !250
  %73 = fadd double %69, %72, !dbg !251
  store double %73, ptr %70, align 8, !dbg !251, !tbaa !158
  %74 = fcmp olt double %0, 0.000000e+00, !dbg !252
  br i1 %74, label %75, label %77, !dbg !254

75:                                               ; preds = %56
  %76 = fneg double %64, !dbg !255
  store double %76, ptr %1, align 8, !dbg !256, !tbaa !151
  br label %77, !dbg !257

77:                                               ; preds = %75, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !258
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !258
  br label %78

78:                                               ; preds = %77, %38, %7
  ret i32 0, !dbg !259
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fg_asymp(double noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !dbg !260 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !264, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !265, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !266, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double 0x4190000000000000, metadata !267, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double 0x7FD0000000000000, metadata !268, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double 0x5FE0000000000000, metadata !269, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double 0x401C48C6001F1EA6, metadata !270, metadata !DIExpression()), !dbg !280
  %4 = fmul double %0, %0, !dbg !281
  tail call void @llvm.dbg.value(metadata double %4, metadata !271, metadata !DIExpression()), !dbg !280
  %5 = fcmp ugt double %0, 0x401C48C6001F1EA6, !dbg !282
  br i1 %5, label %91, label %6, !dbg !283

6:                                                ; preds = %3
  %7 = fdiv double 1.000000e+00, %4, !dbg !284
  %8 = fadd double %7, -4.125000e-02, !dbg !285
  %9 = fdiv double %8, 2.125000e-02, !dbg !286
  call void @llvm.dbg.value(metadata !165, metadata !166, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double %9, metadata !174, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata ptr undef, metadata !175, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !287
  %10 = fmul double %9, 2.000000e+00, !dbg !289
  %11 = fadd double %10, 1.000000e+00, !dbg !290
  %12 = fadd double %11, -1.000000e+00, !dbg !291
  %13 = fmul double %12, 5.000000e-01, !dbg !292
  call void @llvm.dbg.value(metadata double %13, metadata !179, metadata !DIExpression()), !dbg !287
  %14 = fmul double %13, 2.000000e+00, !dbg !293
  call void @llvm.dbg.value(metadata double %14, metadata !180, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 19, metadata !176, metadata !DIExpression()), !dbg !287
  br label %15, !dbg !294

15:                                               ; preds = %15, %6
  %16 = phi i64 [ 19, %6 ], [ %31, %15 ]
  %17 = phi double [ 0.000000e+00, %6 ], [ %24, %15 ]
  %18 = phi double [ 0.000000e+00, %6 ], [ %30, %15 ]
  %19 = phi double [ 0.000000e+00, %6 ], [ %17, %15 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !176, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double %17, metadata !177, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double %18, metadata !181, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double %19, metadata !178, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double %17, metadata !182, metadata !DIExpression()), !dbg !295
  %20 = fmul double %14, %17, !dbg !296
  %21 = fsub double %20, %19, !dbg !297
  %22 = getelementptr inbounds double, ptr @f1_data, i64 %16, !dbg !298
  %23 = load double, ptr %22, align 8, !dbg !298, !tbaa !200
  %24 = fadd double %21, %23, !dbg !299
  call void @llvm.dbg.value(metadata double %24, metadata !177, metadata !DIExpression()), !dbg !287
  %25 = tail call double @llvm.fabs.f64(double %20), !dbg !300
  %26 = tail call double @llvm.fabs.f64(double %19), !dbg !301
  %27 = fadd double %25, %26, !dbg !302
  %28 = tail call double @llvm.fabs.f64(double %23), !dbg !303
  %29 = fadd double %27, %28, !dbg !304
  %30 = fadd double %18, %29, !dbg !305
  call void @llvm.dbg.value(metadata double %30, metadata !181, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata double %17, metadata !178, metadata !DIExpression()), !dbg !287
  %31 = add nsw i64 %16, -1, !dbg !306
  call void @llvm.dbg.value(metadata i64 %31, metadata !176, metadata !DIExpression()), !dbg !287
  %32 = icmp ugt i64 %16, 1, !dbg !307
  br i1 %32, label %15, label %33, !dbg !294, !llvm.loop !308

33:                                               ; preds = %15
  call void @llvm.dbg.value(metadata double %24, metadata !186, metadata !DIExpression()), !dbg !310
  %34 = fmul double %13, %24, !dbg !311
  %35 = fsub double %34, %17, !dbg !312
  %36 = fadd double %35, 0xBFAE7DDFF264A17C, !dbg !313
  call void @llvm.dbg.value(metadata double %36, metadata !177, metadata !DIExpression()), !dbg !287
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !314
  %38 = tail call double @llvm.fabs.f64(double %17), !dbg !315
  %39 = fadd double %38, %37, !dbg !316
  %40 = fadd double %39, 0x3FAE7DDFF264A17C, !dbg !317
  %41 = fadd double %30, %40, !dbg !318
  call void @llvm.dbg.value(metadata double %41, metadata !181, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double %36, metadata !272, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  %42 = fmul double %41, 0x3CB0000000000000, !dbg !320
  %43 = fadd double %42, 2.820000e-17, !dbg !321
  tail call void @llvm.dbg.value(metadata double %43, metadata !272, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !319
  call void @llvm.dbg.value(metadata !165, metadata !166, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %9, metadata !174, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata ptr undef, metadata !175, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !322
  %44 = fadd double %10, 1.000000e+00, !dbg !324
  %45 = fadd double %44, -1.000000e+00, !dbg !325
  %46 = fmul double %45, 5.000000e-01, !dbg !326
  call void @llvm.dbg.value(metadata double %46, metadata !179, metadata !DIExpression()), !dbg !322
  %47 = fmul double %46, 2.000000e+00, !dbg !327
  call void @llvm.dbg.value(metadata double %47, metadata !180, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 20, metadata !176, metadata !DIExpression()), !dbg !322
  br label %48, !dbg !328

48:                                               ; preds = %48, %33
  %49 = phi i64 [ 20, %33 ], [ %64, %48 ]
  %50 = phi double [ 0.000000e+00, %33 ], [ %57, %48 ]
  %51 = phi double [ 0.000000e+00, %33 ], [ %63, %48 ]
  %52 = phi double [ 0.000000e+00, %33 ], [ %50, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !176, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %50, metadata !177, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %51, metadata !181, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %52, metadata !178, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %50, metadata !182, metadata !DIExpression()), !dbg !329
  %53 = fmul double %47, %50, !dbg !330
  %54 = fsub double %53, %52, !dbg !331
  %55 = getelementptr inbounds double, ptr @g1_data, i64 %49, !dbg !332
  %56 = load double, ptr %55, align 8, !dbg !332, !tbaa !200
  %57 = fadd double %54, %56, !dbg !333
  call void @llvm.dbg.value(metadata double %57, metadata !177, metadata !DIExpression()), !dbg !322
  %58 = tail call double @llvm.fabs.f64(double %53), !dbg !334
  %59 = tail call double @llvm.fabs.f64(double %52), !dbg !335
  %60 = fadd double %58, %59, !dbg !336
  %61 = tail call double @llvm.fabs.f64(double %56), !dbg !337
  %62 = fadd double %60, %61, !dbg !338
  %63 = fadd double %51, %62, !dbg !339
  call void @llvm.dbg.value(metadata double %63, metadata !181, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %50, metadata !178, metadata !DIExpression()), !dbg !322
  %64 = add nsw i64 %49, -1, !dbg !340
  call void @llvm.dbg.value(metadata i64 %64, metadata !176, metadata !DIExpression()), !dbg !322
  %65 = icmp ugt i64 %49, 1, !dbg !341
  br i1 %65, label %48, label %66, !dbg !328, !llvm.loop !342

66:                                               ; preds = %48
  call void @llvm.dbg.value(metadata double %57, metadata !186, metadata !DIExpression()), !dbg !344
  %67 = fmul double %46, %57, !dbg !345
  %68 = fsub double %67, %50, !dbg !346
  %69 = fadd double %68, 0xBFC375AF2E7C38EE, !dbg !347
  call void @llvm.dbg.value(metadata double %69, metadata !177, metadata !DIExpression()), !dbg !322
  %70 = tail call double @llvm.fabs.f64(double %67), !dbg !348
  %71 = tail call double @llvm.fabs.f64(double %50), !dbg !349
  %72 = fadd double %71, %70, !dbg !350
  %73 = fadd double %72, 0x3FC375AF2E7C38EE, !dbg !351
  %74 = fadd double %63, %73, !dbg !352
  call void @llvm.dbg.value(metadata double %74, metadata !181, metadata !DIExpression()), !dbg !322
  tail call void @llvm.dbg.value(metadata double %69, metadata !275, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  %75 = fmul double %74, 0x3CB0000000000000, !dbg !353
  %76 = fadd double %75, 5.480000e-17, !dbg !354
  tail call void @llvm.dbg.value(metadata double %76, metadata !275, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !319
  %77 = fadd double %36, 1.000000e+00, !dbg !355
  %78 = fdiv double %77, %0, !dbg !356
  store double %78, ptr %1, align 8, !dbg !357, !tbaa !151
  %79 = fadd double %69, 1.000000e+00, !dbg !358
  %80 = fdiv double %79, %4, !dbg !359
  store double %80, ptr %2, align 8, !dbg !360, !tbaa !151
  %81 = fdiv double %43, %0, !dbg !361
  %82 = load double, ptr %1, align 8, !dbg !362, !tbaa !151
  %83 = tail call double @llvm.fabs.f64(double %82), !dbg !363
  %84 = fmul double %83, 0x3CC0000000000000, !dbg !364
  %85 = fadd double %81, %84, !dbg !365
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !366
  store double %85, ptr %86, align 8, !dbg !367, !tbaa !158
  %87 = fdiv double %76, %4, !dbg !368
  %88 = tail call double @llvm.fabs.f64(double %80), !dbg !369
  %89 = fmul double %88, 0x3CC0000000000000, !dbg !370
  %90 = fadd double %89, %87, !dbg !371
  br label %190, !dbg !372

91:                                               ; preds = %3
  %92 = fcmp ugt double %0, 0x4190000000000000, !dbg !373
  br i1 %92, label %177, label %93, !dbg !374

93:                                               ; preds = %91
  %94 = fdiv double 1.000000e+02, %4, !dbg !375
  %95 = fadd double %94, -1.000000e+00, !dbg !376
  call void @llvm.dbg.value(metadata !165, metadata !166, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double %95, metadata !174, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata ptr undef, metadata !175, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !377
  %96 = fmul double %95, 2.000000e+00, !dbg !379
  %97 = fadd double %96, 1.000000e+00, !dbg !380
  %98 = fadd double %97, -1.000000e+00, !dbg !381
  %99 = fmul double %98, 5.000000e-01, !dbg !382
  call void @llvm.dbg.value(metadata double %99, metadata !179, metadata !DIExpression()), !dbg !377
  %100 = fmul double %99, 2.000000e+00, !dbg !383
  call void @llvm.dbg.value(metadata double %100, metadata !180, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 28, metadata !176, metadata !DIExpression()), !dbg !377
  br label %101, !dbg !384

101:                                              ; preds = %101, %93
  %102 = phi i64 [ 28, %93 ], [ %117, %101 ]
  %103 = phi double [ 0.000000e+00, %93 ], [ %110, %101 ]
  %104 = phi double [ 0.000000e+00, %93 ], [ %116, %101 ]
  %105 = phi double [ 0.000000e+00, %93 ], [ %103, %101 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !176, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double %103, metadata !177, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double %104, metadata !181, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double %105, metadata !178, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double %103, metadata !182, metadata !DIExpression()), !dbg !385
  %106 = fmul double %100, %103, !dbg !386
  %107 = fsub double %106, %105, !dbg !387
  %108 = getelementptr inbounds double, ptr @f2_data, i64 %102, !dbg !388
  %109 = load double, ptr %108, align 8, !dbg !388, !tbaa !200
  %110 = fadd double %107, %109, !dbg !389
  call void @llvm.dbg.value(metadata double %110, metadata !177, metadata !DIExpression()), !dbg !377
  %111 = tail call double @llvm.fabs.f64(double %106), !dbg !390
  %112 = tail call double @llvm.fabs.f64(double %105), !dbg !391
  %113 = fadd double %111, %112, !dbg !392
  %114 = tail call double @llvm.fabs.f64(double %109), !dbg !393
  %115 = fadd double %113, %114, !dbg !394
  %116 = fadd double %104, %115, !dbg !395
  call void @llvm.dbg.value(metadata double %116, metadata !181, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata double %103, metadata !178, metadata !DIExpression()), !dbg !377
  %117 = add nsw i64 %102, -1, !dbg !396
  call void @llvm.dbg.value(metadata i64 %117, metadata !176, metadata !DIExpression()), !dbg !377
  %118 = icmp ugt i64 %102, 1, !dbg !397
  br i1 %118, label %101, label %119, !dbg !384, !llvm.loop !398

119:                                              ; preds = %101
  call void @llvm.dbg.value(metadata double %110, metadata !186, metadata !DIExpression()), !dbg !400
  %120 = fmul double %99, %110, !dbg !401
  %121 = fsub double %120, %103, !dbg !402
  %122 = fadd double %121, 0xBF91D6AB7638E7C4, !dbg !403
  call void @llvm.dbg.value(metadata double %122, metadata !177, metadata !DIExpression()), !dbg !377
  %123 = tail call double @llvm.fabs.f64(double %120), !dbg !404
  %124 = tail call double @llvm.fabs.f64(double %103), !dbg !405
  %125 = fadd double %124, %123, !dbg !406
  %126 = fadd double %125, 0x3F91D6AB7638E7C4, !dbg !407
  %127 = fadd double %116, %126, !dbg !408
  call void @llvm.dbg.value(metadata double %127, metadata !181, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double %122, metadata !276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !409
  %128 = fmul double %127, 0x3CB0000000000000, !dbg !410
  %129 = fadd double %128, 4.320000e-17, !dbg !411
  tail call void @llvm.dbg.value(metadata double %129, metadata !276, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !409
  call void @llvm.dbg.value(metadata !165, metadata !166, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %95, metadata !174, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata ptr undef, metadata !175, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !412
  %130 = fadd double %96, 1.000000e+00, !dbg !414
  %131 = fadd double %130, -1.000000e+00, !dbg !415
  %132 = fmul double %131, 5.000000e-01, !dbg !416
  call void @llvm.dbg.value(metadata double %132, metadata !179, metadata !DIExpression()), !dbg !412
  %133 = fmul double %132, 2.000000e+00, !dbg !417
  call void @llvm.dbg.value(metadata double %133, metadata !180, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 33, metadata !176, metadata !DIExpression()), !dbg !412
  br label %134, !dbg !418

134:                                              ; preds = %134, %119
  %135 = phi i64 [ 33, %119 ], [ %150, %134 ]
  %136 = phi double [ 0.000000e+00, %119 ], [ %143, %134 ]
  %137 = phi double [ 0.000000e+00, %119 ], [ %149, %134 ]
  %138 = phi double [ 0.000000e+00, %119 ], [ %136, %134 ]
  call void @llvm.dbg.value(metadata i64 %135, metadata !176, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %136, metadata !177, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %137, metadata !181, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %138, metadata !178, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %136, metadata !182, metadata !DIExpression()), !dbg !419
  %139 = fmul double %133, %136, !dbg !420
  %140 = fsub double %139, %138, !dbg !421
  %141 = getelementptr inbounds double, ptr @g2_data, i64 %135, !dbg !422
  %142 = load double, ptr %141, align 8, !dbg !422, !tbaa !200
  %143 = fadd double %140, %142, !dbg !423
  call void @llvm.dbg.value(metadata double %143, metadata !177, metadata !DIExpression()), !dbg !412
  %144 = tail call double @llvm.fabs.f64(double %139), !dbg !424
  %145 = tail call double @llvm.fabs.f64(double %138), !dbg !425
  %146 = fadd double %144, %145, !dbg !426
  %147 = tail call double @llvm.fabs.f64(double %142), !dbg !427
  %148 = fadd double %146, %147, !dbg !428
  %149 = fadd double %137, %148, !dbg !429
  call void @llvm.dbg.value(metadata double %149, metadata !181, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %136, metadata !178, metadata !DIExpression()), !dbg !412
  %150 = add nsw i64 %135, -1, !dbg !430
  call void @llvm.dbg.value(metadata i64 %150, metadata !176, metadata !DIExpression()), !dbg !412
  %151 = icmp ugt i64 %135, 1, !dbg !431
  br i1 %151, label %134, label %152, !dbg !418, !llvm.loop !432

152:                                              ; preds = %134
  call void @llvm.dbg.value(metadata double %143, metadata !186, metadata !DIExpression()), !dbg !434
  %153 = fmul double %132, %143, !dbg !435
  %154 = fsub double %153, %136, !dbg !436
  %155 = fadd double %154, 0xBFA8C37D5FCD1C7F, !dbg !437
  call void @llvm.dbg.value(metadata double %155, metadata !177, metadata !DIExpression()), !dbg !412
  %156 = tail call double @llvm.fabs.f64(double %153), !dbg !438
  %157 = tail call double @llvm.fabs.f64(double %136), !dbg !439
  %158 = fadd double %157, %156, !dbg !440
  %159 = fadd double %158, 0x3FA8C37D5FCD1C7F, !dbg !441
  %160 = fadd double %149, %159, !dbg !442
  call void @llvm.dbg.value(metadata double %160, metadata !181, metadata !DIExpression()), !dbg !412
  tail call void @llvm.dbg.value(metadata double %155, metadata !279, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !409
  %161 = fmul double %160, 0x3CB0000000000000, !dbg !443
  %162 = fadd double %161, 5.010000e-17, !dbg !444
  tail call void @llvm.dbg.value(metadata double %162, metadata !279, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !409
  %163 = fadd double %122, 1.000000e+00, !dbg !445
  %164 = fdiv double %163, %0, !dbg !446
  store double %164, ptr %1, align 8, !dbg !447, !tbaa !151
  %165 = fadd double %155, 1.000000e+00, !dbg !448
  %166 = fdiv double %165, %4, !dbg !449
  store double %166, ptr %2, align 8, !dbg !450, !tbaa !151
  %167 = fdiv double %129, %0, !dbg !451
  %168 = load double, ptr %1, align 8, !dbg !452, !tbaa !151
  %169 = tail call double @llvm.fabs.f64(double %168), !dbg !453
  %170 = fmul double %169, 0x3CC0000000000000, !dbg !454
  %171 = fadd double %167, %170, !dbg !455
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !456
  store double %171, ptr %172, align 8, !dbg !457, !tbaa !158
  %173 = fdiv double %162, %4, !dbg !458
  %174 = tail call double @llvm.fabs.f64(double %166), !dbg !459
  %175 = fmul double %174, 0x3CC0000000000000, !dbg !460
  %176 = fadd double %175, %173, !dbg !461
  br label %190, !dbg !462

177:                                              ; preds = %91
  %178 = fcmp olt double %0, 0x7FD0000000000000, !dbg !463
  %179 = fdiv double 1.000000e+00, %0, !dbg !465
  %180 = select i1 %178, double %179, double 0.000000e+00, !dbg !465
  store double %180, ptr %1, align 8, !dbg !466, !tbaa !151
  %181 = fcmp olt double %0, 0x5FE0000000000000, !dbg !467
  %182 = fdiv double 1.000000e+00, %4, !dbg !468
  %183 = select i1 %181, double %182, double 0.000000e+00, !dbg !468
  store double %183, ptr %2, align 8, !dbg !469, !tbaa !151
  %184 = load double, ptr %1, align 8, !dbg !470, !tbaa !151
  %185 = tail call double @llvm.fabs.f64(double %184), !dbg !471
  %186 = fmul double %185, 0x3CC0000000000000, !dbg !472
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !473
  store double %186, ptr %187, align 8, !dbg !474, !tbaa !158
  %188 = tail call double @llvm.fabs.f64(double %183), !dbg !475
  %189 = fmul double %188, 0x3CC0000000000000, !dbg !476
  br label %190

190:                                              ; preds = %152, %177, %66
  %191 = phi double [ %176, %152 ], [ %189, %177 ], [ %90, %66 ]
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !477
  store double %191, ptr %192, align 8, !dbg !477, !tbaa !158
  ret void, !dbg !478
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !479 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !483 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_Ci_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 !dbg !484 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !501
  call void @llvm.dbg.assign(metadata i1 undef, metadata !494, metadata !DIExpression(), metadata !501, metadata ptr %3, metadata !DIExpression()), !dbg !502
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !496, metadata !DIExpression(), metadata !503, metadata ptr %4, metadata !DIExpression()), !dbg !502
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !499, metadata !DIExpression(), metadata !504, metadata ptr %5, metadata !DIExpression()), !dbg !502
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !505
  call void @llvm.dbg.assign(metadata i1 undef, metadata !500, metadata !DIExpression(), metadata !505, metadata ptr %6, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double %0, metadata !486, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !487, metadata !DIExpression()), !dbg !506
  %7 = fcmp ugt double %0, 0.000000e+00, !dbg !507
  br i1 %7, label %10, label %8, !dbg !508

8:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !509, !tbaa !151
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !509
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !509, !tbaa !158
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 359, i32 noundef 1) #8, !dbg !512
  br label %96, !dbg !512

10:                                               ; preds = %2
  %11 = fcmp ugt double %0, 4.000000e+00, !dbg !514
  br i1 %11, label %61, label %12, !dbg !515

12:                                               ; preds = %10
  %13 = tail call double @log(double noundef %0) #8, !dbg !516
  tail call void @llvm.dbg.value(metadata double %13, metadata !488, metadata !DIExpression()), !dbg !517
  %14 = fmul double %0, %0, !dbg !518
  %15 = fadd double %14, -8.000000e+00, !dbg !519
  %16 = fmul double %15, 1.250000e-01, !dbg !520
  tail call void @llvm.dbg.value(metadata double %16, metadata !492, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata !165, metadata !166, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double %16, metadata !174, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata ptr undef, metadata !175, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !521
  %17 = fmul double %16, 2.000000e+00, !dbg !523
  %18 = fadd double %17, 1.000000e+00, !dbg !524
  %19 = fadd double %18, -1.000000e+00, !dbg !525
  %20 = fmul double %19, 5.000000e-01, !dbg !526
  call void @llvm.dbg.value(metadata double %20, metadata !179, metadata !DIExpression()), !dbg !521
  %21 = fmul double %20, 2.000000e+00, !dbg !527
  call void @llvm.dbg.value(metadata double %21, metadata !180, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32 12, metadata !176, metadata !DIExpression()), !dbg !521
  br label %22, !dbg !528

22:                                               ; preds = %22, %12
  %23 = phi i64 [ 12, %12 ], [ %38, %22 ]
  %24 = phi double [ 0.000000e+00, %12 ], [ %31, %22 ]
  %25 = phi double [ 0.000000e+00, %12 ], [ %37, %22 ]
  %26 = phi double [ 0.000000e+00, %12 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !176, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double %24, metadata !177, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double %25, metadata !181, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double %26, metadata !178, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double %24, metadata !182, metadata !DIExpression()), !dbg !529
  %27 = fmul double %21, %24, !dbg !530
  %28 = fsub double %27, %26, !dbg !531
  %29 = getelementptr inbounds double, ptr @ci_data, i64 %23, !dbg !532
  %30 = load double, ptr %29, align 8, !dbg !532, !tbaa !200
  %31 = fadd double %28, %30, !dbg !533
  call void @llvm.dbg.value(metadata double %31, metadata !177, metadata !DIExpression()), !dbg !521
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !534
  %33 = tail call double @llvm.fabs.f64(double %26), !dbg !535
  %34 = fadd double %32, %33, !dbg !536
  %35 = tail call double @llvm.fabs.f64(double %30), !dbg !537
  %36 = fadd double %34, %35, !dbg !538
  %37 = fadd double %25, %36, !dbg !539
  call void @llvm.dbg.value(metadata double %37, metadata !181, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata double %24, metadata !178, metadata !DIExpression()), !dbg !521
  %38 = add nsw i64 %23, -1, !dbg !540
  call void @llvm.dbg.value(metadata i64 %38, metadata !176, metadata !DIExpression()), !dbg !521
  %39 = icmp ugt i64 %23, 1, !dbg !541
  br i1 %39, label %22, label %40, !dbg !528, !llvm.loop !542

40:                                               ; preds = %22
  call void @llvm.dbg.value(metadata double %31, metadata !186, metadata !DIExpression()), !dbg !544
  %41 = fmul double %20, %31, !dbg !545
  %42 = fsub double %41, %24, !dbg !546
  %43 = fadd double %42, 0xBFC5C342F43D436A, !dbg !547
  call void @llvm.dbg.value(metadata double %43, metadata !177, metadata !DIExpression()), !dbg !521
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !548
  %45 = tail call double @llvm.fabs.f64(double %24), !dbg !549
  %46 = fadd double %45, %44, !dbg !550
  %47 = fadd double %46, 0x3FC5C342F43D436A, !dbg !551
  %48 = fadd double %37, %47, !dbg !552
  call void @llvm.dbg.value(metadata double %48, metadata !181, metadata !DIExpression()), !dbg !521
  tail call void @llvm.dbg.value(metadata double %43, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !517
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !553
  %50 = fadd double %49, 1.940000e-18, !dbg !554
  tail call void @llvm.dbg.value(metadata double %50, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !517
  %51 = fadd double %13, -5.000000e-01, !dbg !555
  %52 = fadd double %51, %43, !dbg !556
  store double %52, ptr %1, align 8, !dbg !557, !tbaa !151
  %53 = tail call double @llvm.fabs.f64(double %13), !dbg !558
  %54 = fadd double %53, 5.000000e-01, !dbg !559
  %55 = fmul double %54, 0x3CC0000000000000, !dbg !560
  %56 = fadd double %55, %50, !dbg !561
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !562
  %58 = tail call double @llvm.fabs.f64(double %52), !dbg !563
  %59 = fmul double %58, 0x3CC0000000000000, !dbg !564
  %60 = fadd double %59, %56, !dbg !565
  store double %60, ptr %57, align 8, !dbg !565, !tbaa !158
  br label %96

61:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !566
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !567
  %62 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %3) #8, !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !497, metadata !DIExpression()), !dbg !502
  %63 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %4) #8, !dbg !569
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !498, metadata !DIExpression()), !dbg !502
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !570
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !571
  call fastcc void @fg_asymp(double noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !572
  %64 = load double, ptr %5, align 8, !dbg !573, !tbaa !151
  %65 = load double, ptr %3, align 8, !dbg !574, !tbaa !151
  %66 = fmul double %64, %65, !dbg !575
  %67 = load double, ptr %6, align 8, !dbg !576, !tbaa !151
  %68 = load double, ptr %4, align 8, !dbg !577, !tbaa !151
  %69 = fmul double %67, %68, !dbg !578
  %70 = fsub double %66, %69, !dbg !579
  store double %70, ptr %1, align 8, !dbg !580, !tbaa !151
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !581
  %72 = load double, ptr %71, align 8, !dbg !581, !tbaa !158
  %73 = fmul double %65, %72, !dbg !582
  %74 = call double @llvm.fabs.f64(double %73), !dbg !583
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !584
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !585
  %77 = load double, ptr %76, align 8, !dbg !585, !tbaa !158
  %78 = fmul double %68, %77, !dbg !586
  %79 = call double @llvm.fabs.f64(double %78), !dbg !587
  %80 = fadd double %74, %79, !dbg !588
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !589
  %82 = load double, ptr %81, align 8, !dbg !589, !tbaa !158
  %83 = fmul double %64, %82, !dbg !590
  %84 = call double @llvm.fabs.f64(double %83), !dbg !591
  %85 = fadd double %80, %84, !dbg !592
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !593
  %87 = load double, ptr %86, align 8, !dbg !593, !tbaa !158
  %88 = fmul double %67, %87, !dbg !594
  %89 = call double @llvm.fabs.f64(double %88), !dbg !595
  %90 = fadd double %85, %89, !dbg !596
  %91 = call double @llvm.fabs.f64(double %70), !dbg !597
  %92 = fmul double %91, 0x3CC0000000000000, !dbg !598
  %93 = fadd double %92, %90, !dbg !599
  store double %93, ptr %75, align 8, !dbg !599, !tbaa !158
  %94 = icmp eq i32 %62, 0, !dbg !600
  %95 = select i1 %94, i32 %63, i32 %62, !dbg !600
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !601
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !601
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !601
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !601
  br label %96

96:                                               ; preds = %8, %40, %61
  %97 = phi i32 [ 1, %8 ], [ 0, %40 ], [ %95, %61 ], !dbg !602
  ret i32 %97, !dbg !603
}

declare !dbg !604 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !609 double @log(double noundef) local_unnamed_addr #4

declare !dbg !610 i32 @gsl_sf_sin_e(double noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !614 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_Si(double noundef %0) local_unnamed_addr #0 !dbg !615 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !622
  call void @llvm.dbg.assign(metadata i1 undef, metadata !620, metadata !DIExpression(), metadata !622, metadata ptr %2, metadata !DIExpression()), !dbg !623
  tail call void @llvm.dbg.value(metadata double %0, metadata !619, metadata !DIExpression()), !dbg !623
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !624
  %3 = call i32 @gsl_sf_Si_e(double noundef %0, ptr noundef nonnull %2), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !623
  %4 = load double, ptr %2, align 8, !dbg !624, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !625
  ret double %4, !dbg !625
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_Ci(double noundef %0) local_unnamed_addr #5 !dbg !626 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !629, metadata !DIExpression(), metadata !631, metadata ptr %2, metadata !DIExpression()), !dbg !632
  tail call void @llvm.dbg.value(metadata double %0, metadata !628, metadata !DIExpression()), !dbg !632
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !633
  %3 = call i32 @gsl_sf_Ci_e(double noundef %0, ptr noundef nonnull %2), !dbg !633
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !630, metadata !DIExpression()), !dbg !632
  %4 = icmp eq i32 %3, 0, !dbg !634
  br i1 %4, label %6, label %5, !dbg !633

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 401, i32 noundef %3) #8, !dbg !636
  br label %6, !dbg !636

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !633, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !639
  ret double %7, !dbg !639
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!163 = !DILocation(line: 332, column: 29, scope: !136)
!164 = !DILocation(line: 332, column: 34, scope: !136)
!165 = !{}
!166 = !DILocalVariable(name: "cs", arg: 1, scope: !167, file: !168, line: 3, type: !171)
!167 = distinct !DISubprogram(name: "cheb_eval_e", scope: !168, file: !168, line: 3, type: !169, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !173)
!168 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!169 = !DISubroutineType(types: !170)
!170 = !{!23, !171, !123, !124}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!173 = !{!166, !174, !175, !176, !177, !178, !179, !180, !181, !182, !186}
!174 = !DILocalVariable(name: "x", arg: 2, scope: !167, file: !168, line: 4, type: !123)
!175 = !DILocalVariable(name: "result", arg: 3, scope: !167, file: !168, line: 5, type: !124)
!176 = !DILocalVariable(name: "j", scope: !167, file: !168, line: 7, type: !23)
!177 = !DILocalVariable(name: "d", scope: !167, file: !168, line: 8, type: !71)
!178 = !DILocalVariable(name: "dd", scope: !167, file: !168, line: 9, type: !71)
!179 = !DILocalVariable(name: "y", scope: !167, file: !168, line: 11, type: !71)
!180 = !DILocalVariable(name: "y2", scope: !167, file: !168, line: 12, type: !71)
!181 = !DILocalVariable(name: "e", scope: !167, file: !168, line: 14, type: !71)
!182 = !DILocalVariable(name: "temp", scope: !183, file: !168, line: 17, type: !71)
!183 = distinct !DILexicalBlock(scope: !184, file: !168, line: 16, column: 33)
!184 = distinct !DILexicalBlock(scope: !185, file: !168, line: 16, column: 3)
!185 = distinct !DILexicalBlock(scope: !167, file: !168, line: 16, column: 3)
!186 = !DILocalVariable(name: "temp", scope: !187, file: !168, line: 24, type: !71)
!187 = distinct !DILexicalBlock(scope: !167, file: !168, line: 23, column: 3)
!188 = !DILocation(line: 0, scope: !167, inlinedAt: !189)
!189 = distinct !DILocation(line: 332, column: 5, scope: !136)
!190 = !DILocation(line: 11, column: 19, scope: !167, inlinedAt: !189)
!191 = !DILocation(line: 11, column: 22, scope: !167, inlinedAt: !189)
!192 = !DILocation(line: 11, column: 30, scope: !167, inlinedAt: !189)
!193 = !DILocation(line: 11, column: 39, scope: !167, inlinedAt: !189)
!194 = !DILocation(line: 12, column: 19, scope: !167, inlinedAt: !189)
!195 = !DILocation(line: 16, column: 3, scope: !185, inlinedAt: !189)
!196 = !DILocation(line: 0, scope: !183, inlinedAt: !189)
!197 = !DILocation(line: 18, column: 11, scope: !183, inlinedAt: !189)
!198 = !DILocation(line: 18, column: 14, scope: !183, inlinedAt: !189)
!199 = !DILocation(line: 18, column: 21, scope: !183, inlinedAt: !189)
!200 = !{!153, !153, i64 0}
!201 = !DILocation(line: 18, column: 19, scope: !183, inlinedAt: !189)
!202 = !DILocation(line: 19, column: 10, scope: !183, inlinedAt: !189)
!203 = !DILocation(line: 19, column: 26, scope: !183, inlinedAt: !189)
!204 = !DILocation(line: 19, column: 24, scope: !183, inlinedAt: !189)
!205 = !DILocation(line: 19, column: 37, scope: !183, inlinedAt: !189)
!206 = !DILocation(line: 19, column: 35, scope: !183, inlinedAt: !189)
!207 = !DILocation(line: 19, column: 7, scope: !183, inlinedAt: !189)
!208 = !DILocation(line: 16, column: 29, scope: !184, inlinedAt: !189)
!209 = !DILocation(line: 16, column: 23, scope: !184, inlinedAt: !189)
!210 = distinct !{!210, !195, !211, !212}
!211 = !DILocation(line: 21, column: 3, scope: !185, inlinedAt: !189)
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 0, scope: !187, inlinedAt: !189)
!214 = !DILocation(line: 25, column: 10, scope: !187, inlinedAt: !189)
!215 = !DILocation(line: 25, column: 13, scope: !187, inlinedAt: !189)
!216 = !DILocation(line: 25, column: 18, scope: !187, inlinedAt: !189)
!217 = !DILocation(line: 26, column: 10, scope: !187, inlinedAt: !189)
!218 = !DILocation(line: 26, column: 25, scope: !187, inlinedAt: !189)
!219 = !DILocation(line: 26, column: 23, scope: !187, inlinedAt: !189)
!220 = !DILocation(line: 26, column: 34, scope: !187, inlinedAt: !189)
!221 = !DILocation(line: 26, column: 7, scope: !187, inlinedAt: !189)
!222 = !DILocation(line: 0, scope: !136)
!223 = !DILocation(line: 30, column: 33, scope: !167, inlinedAt: !189)
!224 = !DILocation(line: 30, column: 37, scope: !167, inlinedAt: !189)
!225 = !DILocation(line: 333, column: 31, scope: !136)
!226 = !DILocation(line: 333, column: 23, scope: !136)
!227 = !DILocation(line: 333, column: 18, scope: !136)
!228 = !DILocation(line: 334, column: 23, scope: !136)
!229 = !DILocation(line: 334, column: 13, scope: !136)
!230 = !DILocation(line: 335, column: 44, scope: !136)
!231 = !DILocation(line: 335, column: 42, scope: !136)
!232 = !DILocation(line: 335, column: 17, scope: !136)
!233 = !DILocation(line: 342, column: 5, scope: !140)
!234 = !DILocation(line: 343, column: 5, scope: !140)
!235 = !DILocation(line: 344, column: 5, scope: !140)
!236 = !DILocation(line: 345, column: 35, scope: !140)
!237 = !DILocation(line: 345, column: 39, scope: !140)
!238 = !DILocation(line: 345, column: 38, scope: !140)
!239 = !DILocation(line: 345, column: 31, scope: !140)
!240 = !DILocation(line: 345, column: 51, scope: !140)
!241 = !DILocation(line: 345, column: 55, scope: !140)
!242 = !DILocation(line: 345, column: 54, scope: !140)
!243 = !DILocation(line: 345, column: 47, scope: !140)
!244 = !DILocation(line: 345, column: 18, scope: !140)
!245 = !DILocation(line: 346, column: 22, scope: !140)
!246 = !DILocation(line: 346, column: 30, scope: !140)
!247 = !DILocation(line: 346, column: 26, scope: !140)
!248 = !DILocation(line: 346, column: 13, scope: !140)
!249 = !DILocation(line: 347, column: 44, scope: !140)
!250 = !DILocation(line: 347, column: 42, scope: !140)
!251 = !DILocation(line: 347, column: 17, scope: !140)
!252 = !DILocation(line: 348, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !140, file: !2, line: 348, column: 8)
!254 = !DILocation(line: 348, column: 8, scope: !140)
!255 = !DILocation(line: 348, column: 31, scope: !253)
!256 = !DILocation(line: 348, column: 29, scope: !253)
!257 = !DILocation(line: 348, column: 17, scope: !253)
!258 = !DILocation(line: 350, column: 3, scope: !137)
!259 = !DILocation(line: 351, column: 1, scope: !120)
!260 = distinct !DISubprogram(name: "fg_asymp", scope: !2, file: !2, line: 210, type: !261, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !123, !124, !124}
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !275, !276, !279}
!264 = !DILocalVariable(name: "x", arg: 1, scope: !260, file: !2, line: 210, type: !123)
!265 = !DILocalVariable(name: "f", arg: 2, scope: !260, file: !2, line: 210, type: !124)
!266 = !DILocalVariable(name: "g", arg: 3, scope: !260, file: !2, line: 210, type: !124)
!267 = !DILocalVariable(name: "xbig", scope: !260, file: !2, line: 218, type: !123)
!268 = !DILocalVariable(name: "xmaxf", scope: !260, file: !2, line: 219, type: !123)
!269 = !DILocalVariable(name: "xmaxg", scope: !260, file: !2, line: 220, type: !123)
!270 = !DILocalVariable(name: "xbnd", scope: !260, file: !2, line: 221, type: !123)
!271 = !DILocalVariable(name: "x2", scope: !260, file: !2, line: 223, type: !123)
!272 = !DILocalVariable(name: "result_c1", scope: !273, file: !2, line: 226, type: !125)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 225, column: 17)
!274 = distinct !DILexicalBlock(scope: !260, file: !2, line: 225, column: 6)
!275 = !DILocalVariable(name: "result_c2", scope: !273, file: !2, line: 227, type: !125)
!276 = !DILocalVariable(name: "result_c1", scope: !277, file: !2, line: 236, type: !125)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 235, column: 22)
!278 = distinct !DILexicalBlock(scope: !274, file: !2, line: 235, column: 11)
!279 = !DILocalVariable(name: "result_c2", scope: !277, file: !2, line: 237, type: !125)
!280 = !DILocation(line: 0, scope: !260)
!281 = !DILocation(line: 223, column: 22, scope: !260)
!282 = !DILocation(line: 225, column: 8, scope: !274)
!283 = !DILocation(line: 225, column: 6, scope: !260)
!284 = !DILocation(line: 228, column: 29, scope: !273)
!285 = !DILocation(line: 228, column: 32, scope: !273)
!286 = !DILocation(line: 228, column: 41, scope: !273)
!287 = !DILocation(line: 0, scope: !167, inlinedAt: !288)
!288 = distinct !DILocation(line: 228, column: 5, scope: !273)
!289 = !DILocation(line: 11, column: 19, scope: !167, inlinedAt: !288)
!290 = !DILocation(line: 11, column: 22, scope: !167, inlinedAt: !288)
!291 = !DILocation(line: 11, column: 30, scope: !167, inlinedAt: !288)
!292 = !DILocation(line: 11, column: 39, scope: !167, inlinedAt: !288)
!293 = !DILocation(line: 12, column: 19, scope: !167, inlinedAt: !288)
!294 = !DILocation(line: 16, column: 3, scope: !185, inlinedAt: !288)
!295 = !DILocation(line: 0, scope: !183, inlinedAt: !288)
!296 = !DILocation(line: 18, column: 11, scope: !183, inlinedAt: !288)
!297 = !DILocation(line: 18, column: 14, scope: !183, inlinedAt: !288)
!298 = !DILocation(line: 18, column: 21, scope: !183, inlinedAt: !288)
!299 = !DILocation(line: 18, column: 19, scope: !183, inlinedAt: !288)
!300 = !DILocation(line: 19, column: 10, scope: !183, inlinedAt: !288)
!301 = !DILocation(line: 19, column: 26, scope: !183, inlinedAt: !288)
!302 = !DILocation(line: 19, column: 24, scope: !183, inlinedAt: !288)
!303 = !DILocation(line: 19, column: 37, scope: !183, inlinedAt: !288)
!304 = !DILocation(line: 19, column: 35, scope: !183, inlinedAt: !288)
!305 = !DILocation(line: 19, column: 7, scope: !183, inlinedAt: !288)
!306 = !DILocation(line: 16, column: 29, scope: !184, inlinedAt: !288)
!307 = !DILocation(line: 16, column: 23, scope: !184, inlinedAt: !288)
!308 = distinct !{!308, !294, !309, !212}
!309 = !DILocation(line: 21, column: 3, scope: !185, inlinedAt: !288)
!310 = !DILocation(line: 0, scope: !187, inlinedAt: !288)
!311 = !DILocation(line: 25, column: 10, scope: !187, inlinedAt: !288)
!312 = !DILocation(line: 25, column: 13, scope: !187, inlinedAt: !288)
!313 = !DILocation(line: 25, column: 18, scope: !187, inlinedAt: !288)
!314 = !DILocation(line: 26, column: 10, scope: !187, inlinedAt: !288)
!315 = !DILocation(line: 26, column: 25, scope: !187, inlinedAt: !288)
!316 = !DILocation(line: 26, column: 23, scope: !187, inlinedAt: !288)
!317 = !DILocation(line: 26, column: 34, scope: !187, inlinedAt: !288)
!318 = !DILocation(line: 26, column: 7, scope: !187, inlinedAt: !288)
!319 = !DILocation(line: 0, scope: !273)
!320 = !DILocation(line: 30, column: 33, scope: !167, inlinedAt: !288)
!321 = !DILocation(line: 30, column: 37, scope: !167, inlinedAt: !288)
!322 = !DILocation(line: 0, scope: !167, inlinedAt: !323)
!323 = distinct !DILocation(line: 229, column: 5, scope: !273)
!324 = !DILocation(line: 11, column: 22, scope: !167, inlinedAt: !323)
!325 = !DILocation(line: 11, column: 30, scope: !167, inlinedAt: !323)
!326 = !DILocation(line: 11, column: 39, scope: !167, inlinedAt: !323)
!327 = !DILocation(line: 12, column: 19, scope: !167, inlinedAt: !323)
!328 = !DILocation(line: 16, column: 3, scope: !185, inlinedAt: !323)
!329 = !DILocation(line: 0, scope: !183, inlinedAt: !323)
!330 = !DILocation(line: 18, column: 11, scope: !183, inlinedAt: !323)
!331 = !DILocation(line: 18, column: 14, scope: !183, inlinedAt: !323)
!332 = !DILocation(line: 18, column: 21, scope: !183, inlinedAt: !323)
!333 = !DILocation(line: 18, column: 19, scope: !183, inlinedAt: !323)
!334 = !DILocation(line: 19, column: 10, scope: !183, inlinedAt: !323)
!335 = !DILocation(line: 19, column: 26, scope: !183, inlinedAt: !323)
!336 = !DILocation(line: 19, column: 24, scope: !183, inlinedAt: !323)
!337 = !DILocation(line: 19, column: 37, scope: !183, inlinedAt: !323)
!338 = !DILocation(line: 19, column: 35, scope: !183, inlinedAt: !323)
!339 = !DILocation(line: 19, column: 7, scope: !183, inlinedAt: !323)
!340 = !DILocation(line: 16, column: 29, scope: !184, inlinedAt: !323)
!341 = !DILocation(line: 16, column: 23, scope: !184, inlinedAt: !323)
!342 = distinct !{!342, !328, !343, !212}
!343 = !DILocation(line: 21, column: 3, scope: !185, inlinedAt: !323)
!344 = !DILocation(line: 0, scope: !187, inlinedAt: !323)
!345 = !DILocation(line: 25, column: 10, scope: !187, inlinedAt: !323)
!346 = !DILocation(line: 25, column: 13, scope: !187, inlinedAt: !323)
!347 = !DILocation(line: 25, column: 18, scope: !187, inlinedAt: !323)
!348 = !DILocation(line: 26, column: 10, scope: !187, inlinedAt: !323)
!349 = !DILocation(line: 26, column: 25, scope: !187, inlinedAt: !323)
!350 = !DILocation(line: 26, column: 23, scope: !187, inlinedAt: !323)
!351 = !DILocation(line: 26, column: 34, scope: !187, inlinedAt: !323)
!352 = !DILocation(line: 26, column: 7, scope: !187, inlinedAt: !323)
!353 = !DILocation(line: 30, column: 33, scope: !167, inlinedAt: !323)
!354 = !DILocation(line: 30, column: 37, scope: !167, inlinedAt: !323)
!355 = !DILocation(line: 230, column: 19, scope: !273)
!356 = !DILocation(line: 230, column: 35, scope: !273)
!357 = !DILocation(line: 230, column: 12, scope: !273)
!358 = !DILocation(line: 231, column: 19, scope: !273)
!359 = !DILocation(line: 231, column: 35, scope: !273)
!360 = !DILocation(line: 231, column: 12, scope: !273)
!361 = !DILocation(line: 232, column: 27, scope: !273)
!362 = !DILocation(line: 232, column: 65, scope: !273)
!363 = !DILocation(line: 232, column: 57, scope: !273)
!364 = !DILocation(line: 232, column: 55, scope: !273)
!365 = !DILocation(line: 232, column: 31, scope: !273)
!366 = !DILocation(line: 232, column: 8, scope: !273)
!367 = !DILocation(line: 232, column: 12, scope: !273)
!368 = !DILocation(line: 233, column: 27, scope: !273)
!369 = !DILocation(line: 233, column: 57, scope: !273)
!370 = !DILocation(line: 233, column: 55, scope: !273)
!371 = !DILocation(line: 233, column: 31, scope: !273)
!372 = !DILocation(line: 234, column: 3, scope: !273)
!373 = !DILocation(line: 235, column: 13, scope: !278)
!374 = !DILocation(line: 235, column: 11, scope: !274)
!375 = !DILocation(line: 238, column: 30, scope: !277)
!376 = !DILocation(line: 238, column: 33, scope: !277)
!377 = !DILocation(line: 0, scope: !167, inlinedAt: !378)
!378 = distinct !DILocation(line: 238, column: 5, scope: !277)
!379 = !DILocation(line: 11, column: 19, scope: !167, inlinedAt: !378)
!380 = !DILocation(line: 11, column: 22, scope: !167, inlinedAt: !378)
!381 = !DILocation(line: 11, column: 30, scope: !167, inlinedAt: !378)
!382 = !DILocation(line: 11, column: 39, scope: !167, inlinedAt: !378)
!383 = !DILocation(line: 12, column: 19, scope: !167, inlinedAt: !378)
!384 = !DILocation(line: 16, column: 3, scope: !185, inlinedAt: !378)
!385 = !DILocation(line: 0, scope: !183, inlinedAt: !378)
!386 = !DILocation(line: 18, column: 11, scope: !183, inlinedAt: !378)
!387 = !DILocation(line: 18, column: 14, scope: !183, inlinedAt: !378)
!388 = !DILocation(line: 18, column: 21, scope: !183, inlinedAt: !378)
!389 = !DILocation(line: 18, column: 19, scope: !183, inlinedAt: !378)
!390 = !DILocation(line: 19, column: 10, scope: !183, inlinedAt: !378)
!391 = !DILocation(line: 19, column: 26, scope: !183, inlinedAt: !378)
!392 = !DILocation(line: 19, column: 24, scope: !183, inlinedAt: !378)
!393 = !DILocation(line: 19, column: 37, scope: !183, inlinedAt: !378)
!394 = !DILocation(line: 19, column: 35, scope: !183, inlinedAt: !378)
!395 = !DILocation(line: 19, column: 7, scope: !183, inlinedAt: !378)
!396 = !DILocation(line: 16, column: 29, scope: !184, inlinedAt: !378)
!397 = !DILocation(line: 16, column: 23, scope: !184, inlinedAt: !378)
!398 = distinct !{!398, !384, !399, !212}
!399 = !DILocation(line: 21, column: 3, scope: !185, inlinedAt: !378)
!400 = !DILocation(line: 0, scope: !187, inlinedAt: !378)
!401 = !DILocation(line: 25, column: 10, scope: !187, inlinedAt: !378)
!402 = !DILocation(line: 25, column: 13, scope: !187, inlinedAt: !378)
!403 = !DILocation(line: 25, column: 18, scope: !187, inlinedAt: !378)
!404 = !DILocation(line: 26, column: 10, scope: !187, inlinedAt: !378)
!405 = !DILocation(line: 26, column: 25, scope: !187, inlinedAt: !378)
!406 = !DILocation(line: 26, column: 23, scope: !187, inlinedAt: !378)
!407 = !DILocation(line: 26, column: 34, scope: !187, inlinedAt: !378)
!408 = !DILocation(line: 26, column: 7, scope: !187, inlinedAt: !378)
!409 = !DILocation(line: 0, scope: !277)
!410 = !DILocation(line: 30, column: 33, scope: !167, inlinedAt: !378)
!411 = !DILocation(line: 30, column: 37, scope: !167, inlinedAt: !378)
!412 = !DILocation(line: 0, scope: !167, inlinedAt: !413)
!413 = distinct !DILocation(line: 239, column: 5, scope: !277)
!414 = !DILocation(line: 11, column: 22, scope: !167, inlinedAt: !413)
!415 = !DILocation(line: 11, column: 30, scope: !167, inlinedAt: !413)
!416 = !DILocation(line: 11, column: 39, scope: !167, inlinedAt: !413)
!417 = !DILocation(line: 12, column: 19, scope: !167, inlinedAt: !413)
!418 = !DILocation(line: 16, column: 3, scope: !185, inlinedAt: !413)
!419 = !DILocation(line: 0, scope: !183, inlinedAt: !413)
!420 = !DILocation(line: 18, column: 11, scope: !183, inlinedAt: !413)
!421 = !DILocation(line: 18, column: 14, scope: !183, inlinedAt: !413)
!422 = !DILocation(line: 18, column: 21, scope: !183, inlinedAt: !413)
!423 = !DILocation(line: 18, column: 19, scope: !183, inlinedAt: !413)
!424 = !DILocation(line: 19, column: 10, scope: !183, inlinedAt: !413)
!425 = !DILocation(line: 19, column: 26, scope: !183, inlinedAt: !413)
!426 = !DILocation(line: 19, column: 24, scope: !183, inlinedAt: !413)
!427 = !DILocation(line: 19, column: 37, scope: !183, inlinedAt: !413)
!428 = !DILocation(line: 19, column: 35, scope: !183, inlinedAt: !413)
!429 = !DILocation(line: 19, column: 7, scope: !183, inlinedAt: !413)
!430 = !DILocation(line: 16, column: 29, scope: !184, inlinedAt: !413)
!431 = !DILocation(line: 16, column: 23, scope: !184, inlinedAt: !413)
!432 = distinct !{!432, !418, !433, !212}
!433 = !DILocation(line: 21, column: 3, scope: !185, inlinedAt: !413)
!434 = !DILocation(line: 0, scope: !187, inlinedAt: !413)
!435 = !DILocation(line: 25, column: 10, scope: !187, inlinedAt: !413)
!436 = !DILocation(line: 25, column: 13, scope: !187, inlinedAt: !413)
!437 = !DILocation(line: 25, column: 18, scope: !187, inlinedAt: !413)
!438 = !DILocation(line: 26, column: 10, scope: !187, inlinedAt: !413)
!439 = !DILocation(line: 26, column: 25, scope: !187, inlinedAt: !413)
!440 = !DILocation(line: 26, column: 23, scope: !187, inlinedAt: !413)
!441 = !DILocation(line: 26, column: 34, scope: !187, inlinedAt: !413)
!442 = !DILocation(line: 26, column: 7, scope: !187, inlinedAt: !413)
!443 = !DILocation(line: 30, column: 33, scope: !167, inlinedAt: !413)
!444 = !DILocation(line: 30, column: 37, scope: !167, inlinedAt: !413)
!445 = !DILocation(line: 240, column: 19, scope: !277)
!446 = !DILocation(line: 240, column: 35, scope: !277)
!447 = !DILocation(line: 240, column: 12, scope: !277)
!448 = !DILocation(line: 241, column: 19, scope: !277)
!449 = !DILocation(line: 241, column: 35, scope: !277)
!450 = !DILocation(line: 241, column: 12, scope: !277)
!451 = !DILocation(line: 242, column: 27, scope: !277)
!452 = !DILocation(line: 242, column: 65, scope: !277)
!453 = !DILocation(line: 242, column: 57, scope: !277)
!454 = !DILocation(line: 242, column: 55, scope: !277)
!455 = !DILocation(line: 242, column: 31, scope: !277)
!456 = !DILocation(line: 242, column: 8, scope: !277)
!457 = !DILocation(line: 242, column: 12, scope: !277)
!458 = !DILocation(line: 243, column: 27, scope: !277)
!459 = !DILocation(line: 243, column: 57, scope: !277)
!460 = !DILocation(line: 243, column: 55, scope: !277)
!461 = !DILocation(line: 243, column: 31, scope: !277)
!462 = !DILocation(line: 244, column: 3, scope: !277)
!463 = !DILocation(line: 246, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !278, file: !2, line: 245, column: 8)
!465 = !DILocation(line: 246, column: 15, scope: !464)
!466 = !DILocation(line: 246, column: 12, scope: !464)
!467 = !DILocation(line: 247, column: 17, scope: !464)
!468 = !DILocation(line: 247, column: 15, scope: !464)
!469 = !DILocation(line: 247, column: 12, scope: !464)
!470 = !DILocation(line: 248, column: 46, scope: !464)
!471 = !DILocation(line: 248, column: 38, scope: !464)
!472 = !DILocation(line: 248, column: 36, scope: !464)
!473 = !DILocation(line: 248, column: 8, scope: !464)
!474 = !DILocation(line: 248, column: 12, scope: !464)
!475 = !DILocation(line: 249, column: 38, scope: !464)
!476 = !DILocation(line: 249, column: 36, scope: !464)
!477 = !DILocation(line: 0, scope: !274)
!478 = !DILocation(line: 253, column: 1, scope: !260)
!479 = !DISubprogram(name: "cos", scope: !480, file: !480, line: 62, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!480 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!481 = !DISubroutineType(types: !482)
!482 = !{!71, !71}
!483 = !DISubprogram(name: "sin", scope: !480, file: !480, line: 64, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!484 = distinct !DISubprogram(name: "gsl_sf_Ci_e", scope: !2, file: !2, line: 354, type: !121, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !485)
!485 = !{!486, !487, !488, !492, !493, !494, !496, !497, !498, !499, !500}
!486 = !DILocalVariable(name: "x", arg: 1, scope: !484, file: !2, line: 354, type: !123)
!487 = !DILocalVariable(name: "result", arg: 2, scope: !484, file: !2, line: 354, type: !124)
!488 = !DILocalVariable(name: "lx", scope: !489, file: !2, line: 362, type: !123)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 361, column: 21)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 361, column: 11)
!491 = distinct !DILexicalBlock(scope: !484, file: !2, line: 358, column: 6)
!492 = !DILocalVariable(name: "y", scope: !489, file: !2, line: 363, type: !123)
!493 = !DILocalVariable(name: "result_c", scope: !489, file: !2, line: 364, type: !125)
!494 = !DILocalVariable(name: "sin_result", scope: !495, file: !2, line: 372, type: !125)
!495 = distinct !DILexicalBlock(scope: !490, file: !2, line: 371, column: 8)
!496 = !DILocalVariable(name: "cos_result", scope: !495, file: !2, line: 373, type: !125)
!497 = !DILocalVariable(name: "stat_sin", scope: !495, file: !2, line: 374, type: !23)
!498 = !DILocalVariable(name: "stat_cos", scope: !495, file: !2, line: 375, type: !23)
!499 = !DILocalVariable(name: "f", scope: !495, file: !2, line: 376, type: !125)
!500 = !DILocalVariable(name: "g", scope: !495, file: !2, line: 377, type: !125)
!501 = distinct !DIAssignID()
!502 = !DILocation(line: 0, scope: !495)
!503 = distinct !DIAssignID()
!504 = distinct !DIAssignID()
!505 = distinct !DIAssignID()
!506 = !DILocation(line: 0, scope: !484)
!507 = !DILocation(line: 358, column: 8, scope: !491)
!508 = !DILocation(line: 358, column: 6, scope: !484)
!509 = !DILocation(line: 359, column: 5, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 359, column: 5)
!511 = distinct !DILexicalBlock(scope: !491, file: !2, line: 358, column: 16)
!512 = !DILocation(line: 359, column: 5, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !2, line: 359, column: 5)
!514 = !DILocation(line: 361, column: 13, scope: !490)
!515 = !DILocation(line: 361, column: 11, scope: !491)
!516 = !DILocation(line: 362, column: 23, scope: !489)
!517 = !DILocation(line: 0, scope: !489)
!518 = !DILocation(line: 363, column: 25, scope: !489)
!519 = !DILocation(line: 363, column: 27, scope: !489)
!520 = !DILocation(line: 363, column: 32, scope: !489)
!521 = !DILocation(line: 0, scope: !167, inlinedAt: !522)
!522 = distinct !DILocation(line: 365, column: 5, scope: !489)
!523 = !DILocation(line: 11, column: 19, scope: !167, inlinedAt: !522)
!524 = !DILocation(line: 11, column: 22, scope: !167, inlinedAt: !522)
!525 = !DILocation(line: 11, column: 30, scope: !167, inlinedAt: !522)
!526 = !DILocation(line: 11, column: 39, scope: !167, inlinedAt: !522)
!527 = !DILocation(line: 12, column: 19, scope: !167, inlinedAt: !522)
!528 = !DILocation(line: 16, column: 3, scope: !185, inlinedAt: !522)
!529 = !DILocation(line: 0, scope: !183, inlinedAt: !522)
!530 = !DILocation(line: 18, column: 11, scope: !183, inlinedAt: !522)
!531 = !DILocation(line: 18, column: 14, scope: !183, inlinedAt: !522)
!532 = !DILocation(line: 18, column: 21, scope: !183, inlinedAt: !522)
!533 = !DILocation(line: 18, column: 19, scope: !183, inlinedAt: !522)
!534 = !DILocation(line: 19, column: 10, scope: !183, inlinedAt: !522)
!535 = !DILocation(line: 19, column: 26, scope: !183, inlinedAt: !522)
!536 = !DILocation(line: 19, column: 24, scope: !183, inlinedAt: !522)
!537 = !DILocation(line: 19, column: 37, scope: !183, inlinedAt: !522)
!538 = !DILocation(line: 19, column: 35, scope: !183, inlinedAt: !522)
!539 = !DILocation(line: 19, column: 7, scope: !183, inlinedAt: !522)
!540 = !DILocation(line: 16, column: 29, scope: !184, inlinedAt: !522)
!541 = !DILocation(line: 16, column: 23, scope: !184, inlinedAt: !522)
!542 = distinct !{!542, !528, !543, !212}
!543 = !DILocation(line: 21, column: 3, scope: !185, inlinedAt: !522)
!544 = !DILocation(line: 0, scope: !187, inlinedAt: !522)
!545 = !DILocation(line: 25, column: 10, scope: !187, inlinedAt: !522)
!546 = !DILocation(line: 25, column: 13, scope: !187, inlinedAt: !522)
!547 = !DILocation(line: 25, column: 18, scope: !187, inlinedAt: !522)
!548 = !DILocation(line: 26, column: 10, scope: !187, inlinedAt: !522)
!549 = !DILocation(line: 26, column: 25, scope: !187, inlinedAt: !522)
!550 = !DILocation(line: 26, column: 23, scope: !187, inlinedAt: !522)
!551 = !DILocation(line: 26, column: 34, scope: !187, inlinedAt: !522)
!552 = !DILocation(line: 26, column: 7, scope: !187, inlinedAt: !522)
!553 = !DILocation(line: 30, column: 33, scope: !167, inlinedAt: !522)
!554 = !DILocation(line: 30, column: 37, scope: !167, inlinedAt: !522)
!555 = !DILocation(line: 366, column: 23, scope: !489)
!556 = !DILocation(line: 366, column: 29, scope: !489)
!557 = !DILocation(line: 366, column: 18, scope: !489)
!558 = !DILocation(line: 367, column: 45, scope: !489)
!559 = !DILocation(line: 367, column: 54, scope: !489)
!560 = !DILocation(line: 367, column: 42, scope: !489)
!561 = !DILocation(line: 367, column: 61, scope: !489)
!562 = !DILocation(line: 367, column: 13, scope: !489)
!563 = !DILocation(line: 368, column: 44, scope: !489)
!564 = !DILocation(line: 368, column: 42, scope: !489)
!565 = !DILocation(line: 368, column: 17, scope: !489)
!566 = !DILocation(line: 372, column: 5, scope: !495)
!567 = !DILocation(line: 373, column: 5, scope: !495)
!568 = !DILocation(line: 374, column: 20, scope: !495)
!569 = !DILocation(line: 375, column: 20, scope: !495)
!570 = !DILocation(line: 376, column: 5, scope: !495)
!571 = !DILocation(line: 377, column: 5, scope: !495)
!572 = !DILocation(line: 378, column: 5, scope: !495)
!573 = !DILocation(line: 379, column: 22, scope: !495)
!574 = !DILocation(line: 379, column: 37, scope: !495)
!575 = !DILocation(line: 379, column: 25, scope: !495)
!576 = !DILocation(line: 379, column: 45, scope: !495)
!577 = !DILocation(line: 379, column: 60, scope: !495)
!578 = !DILocation(line: 379, column: 48, scope: !495)
!579 = !DILocation(line: 379, column: 41, scope: !495)
!580 = !DILocation(line: 379, column: 18, scope: !495)
!581 = !DILocation(line: 380, column: 27, scope: !495)
!582 = !DILocation(line: 380, column: 30, scope: !495)
!583 = !DILocation(line: 380, column: 20, scope: !495)
!584 = !DILocation(line: 380, column: 13, scope: !495)
!585 = !DILocation(line: 381, column: 27, scope: !495)
!586 = !DILocation(line: 381, column: 30, scope: !495)
!587 = !DILocation(line: 381, column: 20, scope: !495)
!588 = !DILocation(line: 381, column: 17, scope: !495)
!589 = !DILocation(line: 382, column: 42, scope: !495)
!590 = !DILocation(line: 382, column: 30, scope: !495)
!591 = !DILocation(line: 382, column: 20, scope: !495)
!592 = !DILocation(line: 382, column: 17, scope: !495)
!593 = !DILocation(line: 383, column: 42, scope: !495)
!594 = !DILocation(line: 383, column: 30, scope: !495)
!595 = !DILocation(line: 383, column: 20, scope: !495)
!596 = !DILocation(line: 383, column: 17, scope: !495)
!597 = !DILocation(line: 384, column: 44, scope: !495)
!598 = !DILocation(line: 384, column: 42, scope: !495)
!599 = !DILocation(line: 384, column: 17, scope: !495)
!600 = !DILocation(line: 385, column: 12, scope: !495)
!601 = !DILocation(line: 386, column: 3, scope: !490)
!602 = !DILocation(line: 0, scope: !491)
!603 = !DILocation(line: 387, column: 1, scope: !484)
!604 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !607, !607, !23, !23}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!609 = !DISubprogram(name: "log", scope: !480, file: !480, line: 104, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubprogram(name: "gsl_sf_sin_e", scope: !611, file: !611, line: 45, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!612 = !DISubroutineType(types: !613)
!613 = !{!23, !71, !124}
!614 = !DISubprogram(name: "gsl_sf_cos_e", scope: !611, file: !611, line: 51, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = distinct !DISubprogram(name: "gsl_sf_Si", scope: !2, file: !2, line: 394, type: !616, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!71, !123}
!618 = !{!619, !620, !621}
!619 = !DILocalVariable(name: "x", arg: 1, scope: !615, file: !2, line: 394, type: !123)
!620 = !DILocalVariable(name: "result", scope: !615, file: !2, line: 396, type: !125)
!621 = !DILocalVariable(name: "status", scope: !615, file: !2, line: 396, type: !23)
!622 = distinct !DIAssignID()
!623 = !DILocation(line: 0, scope: !615)
!624 = !DILocation(line: 396, column: 3, scope: !615)
!625 = !DILocation(line: 397, column: 1, scope: !615)
!626 = distinct !DISubprogram(name: "gsl_sf_Ci", scope: !2, file: !2, line: 399, type: !616, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !627)
!627 = !{!628, !629, !630}
!628 = !DILocalVariable(name: "x", arg: 1, scope: !626, file: !2, line: 399, type: !123)
!629 = !DILocalVariable(name: "result", scope: !626, file: !2, line: 401, type: !125)
!630 = !DILocalVariable(name: "status", scope: !626, file: !2, line: 401, type: !23)
!631 = distinct !DIAssignID()
!632 = !DILocation(line: 0, scope: !626)
!633 = !DILocation(line: 401, column: 3, scope: !626)
!634 = !DILocation(line: 401, column: 3, scope: !635)
!635 = distinct !DILexicalBlock(scope: !626, file: !2, line: 401, column: 3)
!636 = !DILocation(line: 401, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !2, line: 401, column: 3)
!638 = distinct !DILexicalBlock(scope: !635, file: !2, line: 401, column: 3)
!639 = !DILocation(line: 402, column: 1, scope: !626)
