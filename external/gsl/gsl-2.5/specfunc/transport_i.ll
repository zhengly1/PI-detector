; ModuleID = 'transport.ll'
source_filename = "transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"transport.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_2_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_3_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_4_e(x, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_5_e(x, &result)\00", align 1, !dbg !26
@transport2_data = internal unnamed_addr constant [18 x double] [double 0x3FFABF87E1C2EC5A, double 0xBFC2E8FE05B7962E, double 0x3F8E5AAC37970104, double 0xBF5741F3FCD8EC6D, double 0x3F21200673AC48C2, double 0xBEE891C0FF6AB45C, double 0x3EB156342B6F95A3, double 0xBE7835E3255CABA5, double 0x3E40C9D5DA57D05B, double 0xBE072C952CD0DB82, double 0x3DCFE205175455EF, double 0xBD95E1157E634485, double 4.259610e-13, double -3.642200e-14, double 3.111000e-15, double -2.650000e-16, double 2.300000e-17, double -1.900000e-18], align 16, !dbg !28
@transport3_data = internal unnamed_addr constant [18 x double] [double 0x3FE86268210BF994, double 0xBFBB0D7A0737D22F, double 0x3F8887D23DA99021, double 0xBF53E591B41BDEEF, double 0x3F1E47BE4B1355CF, double 0xBEE630F3EBFC4735, double 0x3EAFCAAC8324D282, double 0xBE767277EA433DA4, double 0x3E3F666E33A011A8, double 0xBE05D20AD0633D40, double 0x3DCE30271CB6635B, double 0xBD94CFEA591C410C, double 0x3D5C9FB537436EE8, double -3.489710e-14, double 2.989200e-15, double -2.560000e-16, double 2.190000e-17, double -1.900000e-18], align 16, !dbg !88
@transport4_data = internal unnamed_addr constant [18 x double] [double 0x3FDEC4B96CE072D7, double 0xBFB4EDD0F63A372D, double 0x3F84890A0D717976, double 0xBF515DAF65D257C9, double 0x3F1B1E74322AC8DA, double 0xBEE439BA7381C78A, double 0x3EAD585D8DBDE38E, double 0xBE74EB745E2FBF7D, double 0x3E3D7C2282A13B94, double 0xBE049D474D98CD42, double 0x3DCCA993D8D1E82A, double 0xBD93D7E0D24F3E5F, double 0x3D5B637D8630A2EA, double -3.349360e-14, double 2.876700e-15, double -2.467000e-16, double 2.110000e-17, double -1.800000e-18], align 16, !dbg !95
@transport5_data = internal unnamed_addr constant [18 x double] [double 0x3FD641FDB8C434D0, double 0xBFB10353423E261E, double 0x3F81A2AE9B8EEFF8, double 0xBF4ECA8224607386, double 0x3F188B91C4AA294E, double 0xBEE29322F19BD157, double 0x3EAB3E4BF1523CF8, double 0xBE73959CA06AE57E, double 0x3E3BC986C095CE12, double 0xBE03887E5037223C, double 0x3DCB482E98E7C80D, double -4.310940e-12, double 3.731000e-13, double -3.219800e-14, double 2.772000e-15, double -2.380000e-16, double 2.100000e-17, double -1.800000e-18], align 16, !dbg !99

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !109 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !121, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !122, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata double 0x400A51A6625307D3, metadata !123, metadata !DIExpression()), !dbg !152
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !153
  br i1 %3, label %4, label %6, !dbg !154

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !155, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !155
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !155, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 178, i32 noundef 1) #6, !dbg !164
  br label %126, !dbg !164

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E68000000000000, !dbg !166
  br i1 %7, label %8, label %14, !dbg !167

8:                                                ; preds = %6
  store double %0, ptr %1, align 8, !dbg !168, !tbaa !158
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !170
  %10 = fmul double %9, 0x3CB0000000000000, !dbg !171
  %11 = fmul double %0, %0, !dbg !172
  %12 = fmul double %11, 5.000000e-01, !dbg !173
  %handler_result = call double @fAddHandlerDouble(double %10, double %12), !dbg !174
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !174
  store double %handler_result, ptr %13, align 8, !dbg !175, !tbaa !163
  br label %126, !dbg !176

14:                                               ; preds = %6
  %15 = fcmp ugt double %0, 4.000000e+00, !dbg !177
  br i1 %15, label %45, label %16, !dbg !178

16:                                               ; preds = %14
  %17 = fmul double %0, %0, !dbg !179
  %18 = fmul double %17, 1.250000e-01, !dbg !180
  %handler_result1 = call double @fAddHandlerDouble(double %18, double -5.000000e-01), !dbg !181
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -5.000000e-01), !dbg !182
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !124, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata !207, metadata !190, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !191, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata ptr undef, metadata !192, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !195, metadata !DIExpression()), !dbg !208
  %19 = fmul double %handler_result2, 2.000000e+00, !dbg !182
  %handler_result3 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !209
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !210
  %20 = fmul double %handler_result4, 5.000000e-01, !dbg !210
  call void @llvm.dbg.value(metadata double %20, metadata !196, metadata !DIExpression()), !dbg !208
  %21 = fmul double %20, 2.000000e+00, !dbg !211
  call void @llvm.dbg.value(metadata double %21, metadata !197, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 17, metadata !193, metadata !DIExpression()), !dbg !208
  br label %22, !dbg !212

22:                                               ; preds = %22, %16
  %23 = phi i64 [ 17, %16 ], [ %33, %22 ]
  %24 = phi double [ 0.000000e+00, %16 ], [ %handler_result6, %22 ]
  %25 = phi double [ 0.000000e+00, %16 ], [ %handler_result9, %22 ]
  %26 = phi double [ 0.000000e+00, %16 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !193, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %24, metadata !194, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %25, metadata !198, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %26, metadata !195, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %24, metadata !199, metadata !DIExpression()), !dbg !213
  %27 = fmul double %21, %24, !dbg !214
  %handler_result5 = call double @fSubHandlerDouble(double %27, double %26), !dbg !215
  %28 = getelementptr inbounds double, ptr @transport2_data, i64 %23, !dbg !215
  %29 = load double, ptr %28, align 8, !dbg !215, !tbaa !216
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %29), !dbg !217
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !194, metadata !DIExpression()), !dbg !208
  %30 = tail call double @llvm.fabs.f64(double %27), !dbg !217
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !218
  %handler_result7 = call double @fAddHandlerDouble(double %30, double %31), !dbg !219
  %32 = tail call double @llvm.fabs.f64(double %29), !dbg !219
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %32), !dbg !220
  %handler_result9 = call double @fAddHandlerDouble(double %25, double %handler_result8), !dbg !221
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !198, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %24, metadata !195, metadata !DIExpression()), !dbg !208
  %33 = add nsw i64 %23, -1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %33, metadata !193, metadata !DIExpression()), !dbg !208
  %34 = icmp ugt i64 %23, 1, !dbg !222
  br i1 %34, label %22, label %35, !dbg !212, !llvm.loop !223

35:                                               ; preds = %22
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !203, metadata !DIExpression()), !dbg !226
  %36 = fmul double %20, %handler_result6, !dbg !227
  %handler_result10 = call double @fSubHandlerDouble(double %36, double %24), !dbg !228
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FEABF87E1C2EC5A), !dbg !229
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !194, metadata !DIExpression()), !dbg !208
  %37 = tail call double @llvm.fabs.f64(double %36), !dbg !229
  %38 = tail call double @llvm.fabs.f64(double %24), !dbg !230
  %handler_result12 = call double @fAddHandlerDouble(double %38, double %37), !dbg !231
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3FEABF87E1C2EC5A), !dbg !232
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result13), !dbg !233
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !198, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !206
  %39 = fmul double %handler_result14, 0x3CB0000000000000, !dbg !233
  %handler_result15 = call double @fAddHandlerDouble(double %39, double 1.900000e-18), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !206
  %40 = fmul double %handler_result11, %0, !dbg !234
  store double %40, ptr %1, align 8, !dbg !235, !tbaa !158
  %41 = fmul double %handler_result15, %0, !dbg !236
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !237
  %43 = tail call double @llvm.fabs.f64(double %40), !dbg !238
  %44 = fmul double %43, 0x3CC0000000000000, !dbg !239
  %handler_result16 = call double @fAddHandlerDouble(double %44, double %41), !dbg !240
  store double %handler_result16, ptr %42, align 8, !dbg !240, !tbaa !163
  br label %126

45:                                               ; preds = %14
  %46 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !241
  br i1 %46, label %47, label %99, !dbg !242

47:                                               ; preds = %45
  %48 = fdiv double 0x404205966F2B4F12, %0, !dbg !243
  %49 = fptosi double %48 to i32, !dbg !244
  %50 = add i32 %49, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !130, metadata !DIExpression()), !dbg !246
  %51 = fneg double %0, !dbg !247
  %52 = tail call double @exp(double noundef %51) #6, !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !249, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 2, metadata !254, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %52, metadata !255, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %0, metadata !256, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !267
  %53 = icmp slt i32 %49, 0, !dbg !269
  br i1 %53, label %87, label %54, !dbg !270

54:                                               ; preds = %47
  %55 = sitofp i32 %50 to double, !dbg !271
  tail call void @llvm.dbg.value(metadata double %55, metadata !257, metadata !DIExpression()), !dbg !267
  %56 = icmp eq i32 %49, 0, !dbg !270
  br i1 %56, label %75, label %57, !dbg !270

57:                                               ; preds = %54
  %58 = and i32 %50, -2, !dbg !270
  br label %59, !dbg !270

59:                                               ; preds = %59, %57
  %60 = phi double [ %55, %57 ], [ %handler_result24, %59 ]
  %61 = phi double [ 0.000000e+00, %57 ], [ %handler_result23, %59 ]
  %62 = phi i32 [ 0, %57 ], [ %73, %59 ]
  tail call void @llvm.dbg.value(metadata double %60, metadata !257, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %61, metadata !258, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !272
  %63 = fmul double %60, %0, !dbg !273
  %64 = fdiv double 1.000000e+00, %63, !dbg !274
  tail call void @llvm.dbg.value(metadata double %64, metadata !264, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  %handler_result17 = call double @fAddHandlerDouble(double %64, double 1.000000e+00), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !260, metadata !DIExpression()), !dbg !272
  %65 = fmul double %handler_result17, 2.000000e+00, !dbg !275
  %66 = fmul double %64, %65, !dbg !279
  %handler_result18 = call double @fAddHandlerDouble(double %66, double 1.000000e+00), !dbg !280
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !260, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !272
  %67 = fmul double %52, %61, !dbg !280
  tail call void @llvm.dbg.value(metadata double %67, metadata !258, metadata !DIExpression()), !dbg !267
  %handler_result19 = call double @fAddHandlerDouble(double %67, double %handler_result18), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !258, metadata !DIExpression()), !dbg !267
  %handler_result20 = call double @fAddHandlerDouble(double %60, double -1.000000e+00), !dbg !273
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !257, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !267
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !257, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !267
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !258, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !272
  %68 = fmul double %handler_result20, %0, !dbg !273
  %69 = fdiv double 1.000000e+00, %68, !dbg !274
  tail call void @llvm.dbg.value(metadata double %69, metadata !264, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  %handler_result21 = call double @fAddHandlerDouble(double %69, double 1.000000e+00), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !260, metadata !DIExpression()), !dbg !272
  %70 = fmul double %handler_result21, 2.000000e+00, !dbg !275
  %71 = fmul double %69, %70, !dbg !279
  %handler_result22 = call double @fAddHandlerDouble(double %71, double 1.000000e+00), !dbg !280
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !260, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !272
  %72 = fmul double %52, %handler_result19, !dbg !280
  tail call void @llvm.dbg.value(metadata double %72, metadata !258, metadata !DIExpression()), !dbg !267
  %handler_result23 = call double @fAddHandlerDouble(double %72, double %handler_result22), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !258, metadata !DIExpression()), !dbg !267
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result20, double -1.000000e+00), !dbg !270
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !257, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !267
  %73 = add i32 %62, 2, !dbg !270
  %74 = icmp eq i32 %73, %58, !dbg !270
  br i1 %74, label %75, label %59, !dbg !270, !llvm.loop !282

75:                                               ; preds = %59, %54
  %76 = phi double [ undef, %54 ], [ %handler_result23, %59 ]
  %77 = phi double [ %55, %54 ], [ %handler_result24, %59 ]
  %78 = phi double [ 0.000000e+00, %54 ], [ %handler_result23, %59 ]
  %79 = and i32 %49, 1, !dbg !270
  %80 = icmp eq i32 %79, 0, !dbg !270
  br i1 %80, label %81, label %87, !dbg !270

81:                                               ; preds = %75
  tail call void @llvm.dbg.value(metadata double %77, metadata !257, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %78, metadata !258, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !272
  %82 = fmul double %77, %0, !dbg !273
  %83 = fdiv double 1.000000e+00, %82, !dbg !274
  tail call void @llvm.dbg.value(metadata double %83, metadata !264, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  %handler_result25 = call double @fAddHandlerDouble(double %83, double 1.000000e+00), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !260, metadata !DIExpression()), !dbg !272
  %84 = fmul double %handler_result25, 2.000000e+00, !dbg !275
  %85 = fmul double %83, %84, !dbg !279
  %handler_result26 = call double @fAddHandlerDouble(double %85, double 1.000000e+00), !dbg !280
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !260, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !272
  %86 = fmul double %52, %78, !dbg !280
  tail call void @llvm.dbg.value(metadata double %86, metadata !258, metadata !DIExpression()), !dbg !267
  %handler_result27 = call double @fAddHandlerDouble(double %86, double %handler_result26), !dbg !284
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !258, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !267
  br label %87, !dbg !284

87:                                               ; preds = %81, %75, %47
  %88 = phi double [ 0.000000e+00, %47 ], [ %76, %75 ], [ %handler_result27, %81 ], !dbg !267
  tail call void @llvm.dbg.value(metadata double %88, metadata !134, metadata !DIExpression()), !dbg !246
  %handler_result43 = call double @callHandler(i32 12, double %0, double %0), !dbg !285
  %89 = fmul double %handler_result43, 2.000000e+00, !dbg !285
  %handler_result28 = call double @fSubHandlerDouble(double %89, double %0), !dbg !286
  %handler_result44 = call double @callHandler(i32 12, double %88, double %88), !dbg !287
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result44, double %handler_result28), !dbg !287
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !135, metadata !DIExpression()), !dbg !246
  %90 = fcmp olt double %handler_result29, 0xC04205966F2B4F12, !dbg !287
  br i1 %90, label %91, label %93, !dbg !288

91:                                               ; preds = %87
  store double 0x400A51A6625307D3, ptr %1, align 8, !dbg !289, !tbaa !158
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !291
  store double 0x3CDA51A6625307D3, ptr %92, align 8, !dbg !292, !tbaa !163
  br label %126, !dbg !293

93:                                               ; preds = %87
  %94 = tail call double @exp(double noundef %handler_result29) #6, !dbg !294
  tail call void @llvm.dbg.value(metadata double %94, metadata !136, metadata !DIExpression()), !dbg !295
  %handler_result30 = call double @fSubHandlerDouble(double 0x400A51A6625307D3, double %94), !dbg !296
  store double %handler_result30, ptr %1, align 8, !dbg !296, !tbaa !158
  %95 = tail call double @llvm.fabs.f64(double %handler_result29), !dbg !297
  %96 = fmul double %95, %94, !dbg !298
  %handler_result31 = call double @fAddHandlerDouble(double %96, double 0x400A51A6625307D3), !dbg !299
  %97 = fmul double %handler_result31, 0x3CC0000000000000, !dbg !299
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !300
  store double %97, ptr %98, align 8, !dbg !301, !tbaa !163
  br label %126

99:                                               ; preds = %45
  %100 = fcmp olt double %0, 0x4340000000000000, !dbg !302
  br i1 %100, label %101, label %115, !dbg !303

101:                                              ; preds = %99
  %102 = fdiv double 1.000000e+00, %0, !dbg !304
  %handler_result32 = call double @fAddHandlerDouble(double %102, double 1.000000e+00), !dbg !306
  %103 = fmul double %handler_result32, 2.000000e+00, !dbg !306
  %104 = fmul double %102, %103, !dbg !307
  %handler_result33 = call double @fAddHandlerDouble(double %104, double 1.000000e+00), !dbg !308
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !257, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !310
  tail call void @llvm.dbg.value(metadata double %102, metadata !264, metadata !DIExpression()), !dbg !310
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !310
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !310
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !142, metadata !DIExpression()), !dbg !311
  %handler_result45 = call double @callHandler(i32 12, double %0, double %0), !dbg !312
  %105 = fmul double %handler_result45, 2.000000e+00, !dbg !312
  %handler_result34 = call double @fSubHandlerDouble(double %105, double %0), !dbg !313
  %handler_result46 = call double @callHandler(i32 12, double %handler_result33, double %handler_result33), !dbg !314
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result46, double %handler_result34), !dbg !314
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !143, metadata !DIExpression()), !dbg !311
  %106 = fcmp olt double %handler_result35, 0xC04205966F2B4F12, !dbg !314
  br i1 %106, label %107, label %109, !dbg !315

107:                                              ; preds = %101
  store double 0x400A51A6625307D3, ptr %1, align 8, !dbg !316, !tbaa !158
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !318
  store double 0x3CDA51A6625307D3, ptr %108, align 8, !dbg !319, !tbaa !163
  br label %126, !dbg !320

109:                                              ; preds = %101
  %110 = tail call double @exp(double noundef %handler_result35) #6, !dbg !321
  tail call void @llvm.dbg.value(metadata double %110, metadata !144, metadata !DIExpression()), !dbg !322
  %handler_result36 = call double @fSubHandlerDouble(double 0x400A51A6625307D3, double %110), !dbg !323
  store double %handler_result36, ptr %1, align 8, !dbg !323, !tbaa !158
  %111 = tail call double @llvm.fabs.f64(double %handler_result35), !dbg !324
  %handler_result37 = call double @fAddHandlerDouble(double %111, double 1.000000e+00), !dbg !325
  %112 = fmul double %handler_result37, %110, !dbg !325
  %handler_result38 = call double @fAddHandlerDouble(double %112, double 0x400A51A6625307D3), !dbg !326
  %113 = fmul double %handler_result38, 0x3CC0000000000000, !dbg !326
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !327
  store double %113, ptr %114, align 8, !dbg !328, !tbaa !163
  br label %126

115:                                              ; preds = %99
  %handler_result47 = call double @callHandler(i32 12, double %0, double %0), !dbg !329
  %116 = fmul double %handler_result47, 2.000000e+00, !dbg !329
  %handler_result39 = call double @fSubHandlerDouble(double %116, double %0), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !147, metadata !DIExpression()), !dbg !331
  %117 = fcmp olt double %handler_result39, 0xC04205966F2B4F12, !dbg !330
  br i1 %117, label %118, label %120, !dbg !332

118:                                              ; preds = %115
  store double 0x400A51A6625307D3, ptr %1, align 8, !dbg !333, !tbaa !158
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !335
  store double 0x3CDA51A6625307D3, ptr %119, align 8, !dbg !336, !tbaa !163
  br label %126, !dbg !337

120:                                              ; preds = %115
  %121 = tail call double @exp(double noundef %handler_result39) #6, !dbg !338
  tail call void @llvm.dbg.value(metadata double %121, metadata !149, metadata !DIExpression()), !dbg !339
  %handler_result40 = call double @fSubHandlerDouble(double 0x400A51A6625307D3, double %121), !dbg !340
  store double %handler_result40, ptr %1, align 8, !dbg !340, !tbaa !158
  %122 = tail call double @llvm.fabs.f64(double %handler_result39), !dbg !341
  %handler_result41 = call double @fAddHandlerDouble(double %122, double 1.000000e+00), !dbg !342
  %123 = fmul double %handler_result41, %121, !dbg !342
  %handler_result42 = call double @fAddHandlerDouble(double %123, double 0x400A51A6625307D3), !dbg !343
  %124 = fmul double %handler_result42, 0x3CC0000000000000, !dbg !343
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !344
  store double %124, ptr %125, align 8, !dbg !345, !tbaa !163
  br label %126

126:                                              ; preds = %120, %118, %109, %107, %93, %91, %35, %8, %4
  %127 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %35 ], [ 0, %93 ], [ 0, %91 ], [ 0, %109 ], [ 0, %107 ], [ 0, %120 ], [ 0, %118 ], !dbg !346
  ret i32 %127, !dbg !347
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !348 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !353 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !357 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_3_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !358 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !360, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !361, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0x401CD97007680932, metadata !362, metadata !DIExpression()), !dbg !392
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !393
  br i1 %3, label %4, label %6, !dbg !394

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !395, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !395
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !395, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 1) #6, !dbg !398
  br label %139, !dbg !398

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !400
  br i1 %7, label %8, label %9, !dbg !401

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !402
  br label %139, !dbg !404

9:                                                ; preds = %6
  %10 = fcmp olt double %0, 0x3E68000000000000, !dbg !405
  br i1 %10, label %11, label %19, !dbg !406

11:                                               ; preds = %9
  %12 = fmul double %0, 5.000000e-01, !dbg !407
  %13 = fmul double %12, %0, !dbg !409
  store double %13, ptr %1, align 8, !dbg !410, !tbaa !158
  %14 = fmul double %13, 0x3CC0000000000000, !dbg !411
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !412
  store double %14, ptr %15, align 8, !dbg !413, !tbaa !163
  %16 = tail call double @llvm.fabs.f64(double %13), !dbg !414
  %17 = fcmp olt double %16, 0x10000000000000, !dbg !414
  br i1 %17, label %18, label %139, !dbg !416

18:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 258, i32 noundef 15) #6, !dbg !417
  br label %139, !dbg !417

19:                                               ; preds = %9
  %20 = fcmp ugt double %0, 4.000000e+00, !dbg !419
  br i1 %20, label %50, label %21, !dbg !420

21:                                               ; preds = %19
  %22 = fmul double %0, %0, !dbg !421
  tail call void @llvm.dbg.value(metadata double %22, metadata !363, metadata !DIExpression()), !dbg !422
  %23 = fmul double %22, 1.250000e-01, !dbg !423
  %handler_result = call double @fAddHandlerDouble(double %23, double -5.000000e-01), !dbg !424
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double -5.000000e-01), !dbg !425
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !369, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata !207, metadata !190, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !191, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata ptr undef, metadata !192, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !195, metadata !DIExpression()), !dbg !427
  %24 = fmul double %handler_result1, 2.000000e+00, !dbg !425
  %handler_result2 = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !428
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !429
  %25 = fmul double %handler_result3, 5.000000e-01, !dbg !429
  call void @llvm.dbg.value(metadata double %25, metadata !196, metadata !DIExpression()), !dbg !427
  %26 = fmul double %25, 2.000000e+00, !dbg !430
  call void @llvm.dbg.value(metadata double %26, metadata !197, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 17, metadata !193, metadata !DIExpression()), !dbg !427
  br label %27, !dbg !431

27:                                               ; preds = %27, %21
  %28 = phi i64 [ 17, %21 ], [ %38, %27 ]
  %29 = phi double [ 0.000000e+00, %21 ], [ %handler_result5, %27 ]
  %30 = phi double [ 0.000000e+00, %21 ], [ %handler_result8, %27 ]
  %31 = phi double [ 0.000000e+00, %21 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !193, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %29, metadata !194, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %30, metadata !198, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %31, metadata !195, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %29, metadata !199, metadata !DIExpression()), !dbg !432
  %32 = fmul double %26, %29, !dbg !433
  %handler_result4 = call double @fSubHandlerDouble(double %32, double %31), !dbg !434
  %33 = getelementptr inbounds double, ptr @transport3_data, i64 %28, !dbg !434
  %34 = load double, ptr %33, align 8, !dbg !434, !tbaa !216
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %34), !dbg !435
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !194, metadata !DIExpression()), !dbg !427
  %35 = tail call double @llvm.fabs.f64(double %32), !dbg !435
  %36 = tail call double @llvm.fabs.f64(double %31), !dbg !436
  %handler_result6 = call double @fAddHandlerDouble(double %35, double %36), !dbg !437
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !437
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %37), !dbg !438
  %handler_result8 = call double @fAddHandlerDouble(double %30, double %handler_result7), !dbg !439
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !198, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %29, metadata !195, metadata !DIExpression()), !dbg !427
  %38 = add nsw i64 %28, -1, !dbg !439
  call void @llvm.dbg.value(metadata i64 %38, metadata !193, metadata !DIExpression()), !dbg !427
  %39 = icmp ugt i64 %28, 1, !dbg !440
  br i1 %39, label %27, label %40, !dbg !431, !llvm.loop !441

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !203, metadata !DIExpression()), !dbg !443
  %41 = fmul double %25, %handler_result5, !dbg !444
  %handler_result9 = call double @fSubHandlerDouble(double %41, double %29), !dbg !445
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FD86268210BF994), !dbg !446
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !194, metadata !DIExpression()), !dbg !427
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !446
  %43 = tail call double @llvm.fabs.f64(double %29), !dbg !447
  %handler_result11 = call double @fAddHandlerDouble(double %43, double %42), !dbg !448
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FD86268210BF994), !dbg !449
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !450
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !198, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !422
  %44 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !450
  %handler_result14 = call double @fAddHandlerDouble(double %44, double 1.900000e-18), !dbg !451
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !422
  %45 = fmul double %22, %handler_result10, !dbg !451
  store double %45, ptr %1, align 8, !dbg !452, !tbaa !158
  %46 = fmul double %22, %handler_result14, !dbg !453
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !454
  %48 = tail call double @llvm.fabs.f64(double %45), !dbg !455
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !456
  %handler_result15 = call double @fAddHandlerDouble(double %49, double %46), !dbg !457
  store double %handler_result15, ptr %47, align 8, !dbg !457, !tbaa !163
  br label %139

50:                                               ; preds = %19
  %51 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !458
  br i1 %51, label %52, label %110, !dbg !459

52:                                               ; preds = %50
  %53 = fdiv double 0x404205966F2B4F12, %0, !dbg !460
  %54 = fptosi double %53 to i32, !dbg !461
  %55 = add i32 %54, 1, !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !371, metadata !DIExpression()), !dbg !463
  %56 = fneg double %0, !dbg !464
  %57 = tail call double @exp(double noundef %56) #6, !dbg !465
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !249, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 3, metadata !254, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %57, metadata !255, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %0, metadata !256, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !466
  %58 = icmp slt i32 %54, 0, !dbg !468
  br i1 %58, label %98, label %59, !dbg !469

59:                                               ; preds = %52
  %60 = sitofp i32 %55 to double, !dbg !470
  tail call void @llvm.dbg.value(metadata double %60, metadata !257, metadata !DIExpression()), !dbg !466
  %61 = icmp eq i32 %54, 0, !dbg !469
  br i1 %61, label %84, label %62, !dbg !469

62:                                               ; preds = %59
  %63 = and i32 %55, -2, !dbg !469
  br label %64, !dbg !469

64:                                               ; preds = %64, %62
  %65 = phi double [ %60, %62 ], [ %handler_result25, %64 ]
  %66 = phi double [ 0.000000e+00, %62 ], [ %handler_result24, %64 ]
  %67 = phi i32 [ 0, %62 ], [ %82, %64 ]
  tail call void @llvm.dbg.value(metadata double %65, metadata !257, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %66, metadata !258, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !471
  %68 = fmul double %65, %0, !dbg !472
  %69 = fdiv double 1.000000e+00, %68, !dbg !473
  tail call void @llvm.dbg.value(metadata double %69, metadata !264, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  %handler_result16 = call double @fAddHandlerDouble(double %69, double 1.000000e+00), !dbg !474
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !260, metadata !DIExpression()), !dbg !471
  %70 = fmul double %handler_result16, 2.000000e+00, !dbg !474
  %71 = fmul double %69, %70, !dbg !475
  %handler_result17 = call double @fAddHandlerDouble(double %71, double 1.000000e+00), !dbg !474
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !260, metadata !DIExpression()), !dbg !471
  %72 = fmul double %handler_result17, 3.000000e+00, !dbg !474
  %73 = fmul double %69, %72, !dbg !475
  %handler_result18 = call double @fAddHandlerDouble(double %73, double 1.000000e+00), !dbg !476
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !260, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 4, metadata !266, metadata !DIExpression()), !dbg !471
  %74 = fmul double %57, %66, !dbg !476
  tail call void @llvm.dbg.value(metadata double %74, metadata !258, metadata !DIExpression()), !dbg !466
  %handler_result19 = call double @fAddHandlerDouble(double %74, double %handler_result18), !dbg !477
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !258, metadata !DIExpression()), !dbg !466
  %handler_result20 = call double @fAddHandlerDouble(double %65, double -1.000000e+00), !dbg !472
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !257, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !466
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !257, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !466
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !258, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !471
  %75 = fmul double %handler_result20, %0, !dbg !472
  %76 = fdiv double 1.000000e+00, %75, !dbg !473
  tail call void @llvm.dbg.value(metadata double %76, metadata !264, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  %handler_result21 = call double @fAddHandlerDouble(double %76, double 1.000000e+00), !dbg !474
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !260, metadata !DIExpression()), !dbg !471
  %77 = fmul double %handler_result21, 2.000000e+00, !dbg !474
  %78 = fmul double %76, %77, !dbg !475
  %handler_result22 = call double @fAddHandlerDouble(double %78, double 1.000000e+00), !dbg !474
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !260, metadata !DIExpression()), !dbg !471
  %79 = fmul double %handler_result22, 3.000000e+00, !dbg !474
  %80 = fmul double %76, %79, !dbg !475
  %handler_result23 = call double @fAddHandlerDouble(double %80, double 1.000000e+00), !dbg !476
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !260, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 4, metadata !266, metadata !DIExpression()), !dbg !471
  %81 = fmul double %57, %handler_result19, !dbg !476
  tail call void @llvm.dbg.value(metadata double %81, metadata !258, metadata !DIExpression()), !dbg !466
  %handler_result24 = call double @fAddHandlerDouble(double %81, double %handler_result23), !dbg !477
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !258, metadata !DIExpression()), !dbg !466
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result20, double -1.000000e+00), !dbg !469
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !257, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !466
  %82 = add i32 %67, 2, !dbg !469
  %83 = icmp eq i32 %82, %63, !dbg !469
  br i1 %83, label %84, label %64, !dbg !469, !llvm.loop !478

84:                                               ; preds = %64, %59
  %85 = phi double [ undef, %59 ], [ %handler_result24, %64 ]
  %86 = phi double [ %60, %59 ], [ %handler_result25, %64 ]
  %87 = phi double [ 0.000000e+00, %59 ], [ %handler_result24, %64 ]
  %88 = and i32 %54, 1, !dbg !469
  %89 = icmp eq i32 %88, 0, !dbg !469
  br i1 %89, label %90, label %98, !dbg !469

90:                                               ; preds = %84
  tail call void @llvm.dbg.value(metadata double %86, metadata !257, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %87, metadata !258, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !471
  %91 = fmul double %86, %0, !dbg !472
  %92 = fdiv double 1.000000e+00, %91, !dbg !473
  tail call void @llvm.dbg.value(metadata double %92, metadata !264, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  %handler_result26 = call double @fAddHandlerDouble(double %92, double 1.000000e+00), !dbg !474
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !260, metadata !DIExpression()), !dbg !471
  %93 = fmul double %handler_result26, 2.000000e+00, !dbg !474
  %94 = fmul double %92, %93, !dbg !475
  %handler_result27 = call double @fAddHandlerDouble(double %94, double 1.000000e+00), !dbg !474
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !260, metadata !DIExpression()), !dbg !471
  %95 = fmul double %handler_result27, 3.000000e+00, !dbg !474
  %96 = fmul double %92, %95, !dbg !475
  %handler_result28 = call double @fAddHandlerDouble(double %96, double 1.000000e+00), !dbg !476
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !260, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !265, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 4, metadata !266, metadata !DIExpression()), !dbg !471
  %97 = fmul double %57, %87, !dbg !476
  tail call void @llvm.dbg.value(metadata double %97, metadata !258, metadata !DIExpression()), !dbg !466
  %handler_result29 = call double @fAddHandlerDouble(double %97, double %handler_result28), !dbg !480
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !258, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !466
  br label %98, !dbg !480

98:                                               ; preds = %90, %84, %52
  %99 = phi double [ 0.000000e+00, %52 ], [ %85, %84 ], [ %handler_result29, %90 ], !dbg !466
  tail call void @llvm.dbg.value(metadata double %99, metadata !374, metadata !DIExpression()), !dbg !463
  %handler_result46 = call double @callHandler(i32 12, double %0, double %0), !dbg !481
  %100 = fmul double %handler_result46, 3.000000e+00, !dbg !481
  %handler_result30 = call double @fSubHandlerDouble(double %100, double %0), !dbg !482
  %handler_result47 = call double @callHandler(i32 12, double %99, double %99), !dbg !483
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result47, double %handler_result30), !dbg !483
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !375, metadata !DIExpression()), !dbg !463
  %101 = fcmp olt double %handler_result31, 0xC04205966F2B4F12, !dbg !483
  br i1 %101, label %102, label %104, !dbg !484

102:                                              ; preds = %98
  store double 0x401CD97007680932, ptr %1, align 8, !dbg !485, !tbaa !158
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !487
  store double 0x3CECD97007680932, ptr %103, align 8, !dbg !488, !tbaa !163
  br label %139, !dbg !489

104:                                              ; preds = %98
  %105 = tail call double @exp(double noundef %handler_result31) #6, !dbg !490
  tail call void @llvm.dbg.value(metadata double %105, metadata !376, metadata !DIExpression()), !dbg !491
  %handler_result32 = call double @fSubHandlerDouble(double 0x401CD97007680932, double %105), !dbg !492
  store double %handler_result32, ptr %1, align 8, !dbg !492, !tbaa !158
  %106 = tail call double @llvm.fabs.f64(double %handler_result31), !dbg !493
  %107 = fmul double %106, %105, !dbg !494
  %handler_result33 = call double @fAddHandlerDouble(double %107, double 0x401CD97007680932), !dbg !495
  %108 = fmul double %handler_result33, 0x3CC0000000000000, !dbg !495
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !496
  store double %108, ptr %109, align 8, !dbg !497, !tbaa !163
  br label %139

110:                                              ; preds = %50
  %111 = fcmp olt double %0, 0x4348000000000000, !dbg !498
  br i1 %111, label %112, label %128, !dbg !499

112:                                              ; preds = %110
  %113 = fdiv double 1.000000e+00, %0, !dbg !500
  %handler_result34 = call double @fAddHandlerDouble(double %113, double 1.000000e+00), !dbg !502
  %114 = fmul double %handler_result34, 2.000000e+00, !dbg !502
  %115 = fmul double %113, %114, !dbg !503
  %handler_result35 = call double @fAddHandlerDouble(double %115, double 1.000000e+00), !dbg !502
  %116 = fmul double %handler_result35, 3.000000e+00, !dbg !502
  %117 = fmul double %113, %116, !dbg !503
  %handler_result36 = call double @fAddHandlerDouble(double %117, double 1.000000e+00), !dbg !504
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !257, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double %113, metadata !264, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !382, metadata !DIExpression()), !dbg !507
  %handler_result48 = call double @callHandler(i32 12, double %0, double %0), !dbg !508
  %118 = fmul double %handler_result48, 3.000000e+00, !dbg !508
  %handler_result37 = call double @fSubHandlerDouble(double %118, double %0), !dbg !509
  %handler_result49 = call double @callHandler(i32 12, double %handler_result36, double %handler_result36), !dbg !510
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result49, double %handler_result37), !dbg !510
  tail call void @llvm.dbg.value(metadata double %handler_result38, metadata !383, metadata !DIExpression()), !dbg !507
  %119 = fcmp olt double %handler_result38, 0xC04205966F2B4F12, !dbg !510
  br i1 %119, label %120, label %122, !dbg !511

120:                                              ; preds = %112
  store double 0x401CD97007680932, ptr %1, align 8, !dbg !512, !tbaa !158
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !514
  store double 0x3CECD97007680932, ptr %121, align 8, !dbg !515, !tbaa !163
  br label %139, !dbg !516

122:                                              ; preds = %112
  %123 = tail call double @exp(double noundef %handler_result38) #6, !dbg !517
  tail call void @llvm.dbg.value(metadata double %123, metadata !384, metadata !DIExpression()), !dbg !518
  %handler_result39 = call double @fSubHandlerDouble(double 0x401CD97007680932, double %123), !dbg !519
  store double %handler_result39, ptr %1, align 8, !dbg !519, !tbaa !158
  %124 = tail call double @llvm.fabs.f64(double %handler_result38), !dbg !520
  %handler_result40 = call double @fAddHandlerDouble(double %124, double 1.000000e+00), !dbg !521
  %125 = fmul double %handler_result40, %123, !dbg !521
  %handler_result41 = call double @fAddHandlerDouble(double %125, double 0x401CD97007680932), !dbg !522
  %126 = fmul double %handler_result41, 0x3CC0000000000000, !dbg !522
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !523
  store double %126, ptr %127, align 8, !dbg !524, !tbaa !163
  br label %139

128:                                              ; preds = %110
  %handler_result50 = call double @callHandler(i32 12, double %0, double %0), !dbg !525
  %129 = fmul double %handler_result50, 3.000000e+00, !dbg !525
  %handler_result42 = call double @fSubHandlerDouble(double %129, double %0), !dbg !526
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !387, metadata !DIExpression()), !dbg !527
  %130 = fcmp olt double %handler_result42, 0xC04205966F2B4F12, !dbg !526
  br i1 %130, label %131, label %133, !dbg !528

131:                                              ; preds = %128
  store double 0x401CD97007680932, ptr %1, align 8, !dbg !529, !tbaa !158
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !531
  store double 0x3CECD97007680932, ptr %132, align 8, !dbg !532, !tbaa !163
  br label %139, !dbg !533

133:                                              ; preds = %128
  %134 = tail call double @exp(double noundef %handler_result42) #6, !dbg !534
  tail call void @llvm.dbg.value(metadata double %134, metadata !389, metadata !DIExpression()), !dbg !535
  %handler_result43 = call double @fSubHandlerDouble(double 0x401CD97007680932, double %134), !dbg !536
  store double %handler_result43, ptr %1, align 8, !dbg !536, !tbaa !158
  %135 = tail call double @llvm.fabs.f64(double %handler_result42), !dbg !537
  %handler_result44 = call double @fAddHandlerDouble(double %135, double 1.000000e+00), !dbg !538
  %136 = fmul double %handler_result44, %134, !dbg !538
  %handler_result45 = call double @fAddHandlerDouble(double %136, double 0x401CD97007680932), !dbg !539
  %137 = fmul double %handler_result45, 0x3CC0000000000000, !dbg !539
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !540
  store double %137, ptr %138, align 8, !dbg !541, !tbaa !163
  br label %139

139:                                              ; preds = %133, %131, %122, %120, %104, %102, %40, %18, %11, %8, %4
  %140 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 15, %18 ], [ 0, %40 ], [ 0, %11 ], [ 0, %104 ], [ 0, %102 ], [ 0, %122 ], [ 0, %120 ], [ 0, %133 ], [ 0, %131 ], !dbg !542
  ret i32 %140, !dbg !543
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_4_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !544 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !546, metadata !DIExpression()), !dbg !578
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !547, metadata !DIExpression()), !dbg !578
  tail call void @llvm.dbg.value(metadata double 0x4039F9CB402BC46C, metadata !548, metadata !DIExpression()), !dbg !578
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !579
  br i1 %3, label %4, label %6, !dbg !580

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !581, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !581
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !581, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 325, i32 noundef 1) #6, !dbg !584
  br label %121, !dbg !584

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !586
  br i1 %7, label %8, label %9, !dbg !587

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !588
  br label %121, !dbg !590

9:                                                ; preds = %6
  %10 = fcmp olt double %0, 0x3E68000000000000, !dbg !591
  br i1 %10, label %11, label %20, !dbg !592

11:                                               ; preds = %9
  %12 = fmul double %0, %0, !dbg !593
  %13 = fmul double %12, %0, !dbg !595
  %14 = fdiv double %13, 3.000000e+00, !dbg !596
  store double %14, ptr %1, align 8, !dbg !597, !tbaa !158
  %15 = fmul double %14, 0x3CC8000000000000, !dbg !598
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !599
  store double %15, ptr %16, align 8, !dbg !600, !tbaa !163
  %17 = tail call double @llvm.fabs.f64(double %14), !dbg !601
  %18 = fcmp olt double %17, 0x10000000000000, !dbg !601
  br i1 %18, label %19, label %121, !dbg !603

19:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 15) #6, !dbg !604
  br label %121, !dbg !604

20:                                               ; preds = %9
  %21 = fcmp ugt double %0, 4.000000e+00, !dbg !606
  br i1 %21, label %52, label %22, !dbg !607

22:                                               ; preds = %20
  %23 = fmul double %0, %0, !dbg !608
  tail call void @llvm.dbg.value(metadata double %23, metadata !549, metadata !DIExpression()), !dbg !609
  %24 = fmul double %23, 1.250000e-01, !dbg !610
  %handler_result = call double @fAddHandlerDouble(double %24, double -5.000000e-01), !dbg !611
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double -5.000000e-01), !dbg !612
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !555, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata !207, metadata !190, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !191, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata ptr undef, metadata !192, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !195, metadata !DIExpression()), !dbg !614
  %25 = fmul double %handler_result1, 2.000000e+00, !dbg !612
  %handler_result2 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !615
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !616
  %26 = fmul double %handler_result3, 5.000000e-01, !dbg !616
  call void @llvm.dbg.value(metadata double %26, metadata !196, metadata !DIExpression()), !dbg !614
  %27 = fmul double %26, 2.000000e+00, !dbg !617
  call void @llvm.dbg.value(metadata double %27, metadata !197, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 17, metadata !193, metadata !DIExpression()), !dbg !614
  br label %28, !dbg !618

28:                                               ; preds = %28, %22
  %29 = phi i64 [ 17, %22 ], [ %39, %28 ]
  %30 = phi double [ 0.000000e+00, %22 ], [ %handler_result5, %28 ]
  %31 = phi double [ 0.000000e+00, %22 ], [ %handler_result8, %28 ]
  %32 = phi double [ 0.000000e+00, %22 ], [ %30, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !193, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double %30, metadata !194, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double %31, metadata !198, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double %32, metadata !195, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double %30, metadata !199, metadata !DIExpression()), !dbg !619
  %33 = fmul double %27, %30, !dbg !620
  %handler_result4 = call double @fSubHandlerDouble(double %33, double %32), !dbg !621
  %34 = getelementptr inbounds double, ptr @transport4_data, i64 %29, !dbg !621
  %35 = load double, ptr %34, align 8, !dbg !621, !tbaa !216
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %35), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !194, metadata !DIExpression()), !dbg !614
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !622
  %37 = tail call double @llvm.fabs.f64(double %32), !dbg !623
  %handler_result6 = call double @fAddHandlerDouble(double %36, double %37), !dbg !624
  %38 = tail call double @llvm.fabs.f64(double %35), !dbg !624
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %38), !dbg !625
  %handler_result8 = call double @fAddHandlerDouble(double %31, double %handler_result7), !dbg !626
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !198, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata double %30, metadata !195, metadata !DIExpression()), !dbg !614
  %39 = add nsw i64 %29, -1, !dbg !626
  call void @llvm.dbg.value(metadata i64 %39, metadata !193, metadata !DIExpression()), !dbg !614
  %40 = icmp ugt i64 %29, 1, !dbg !627
  br i1 %40, label %28, label %41, !dbg !618, !llvm.loop !628

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !203, metadata !DIExpression()), !dbg !630
  %42 = fmul double %26, %handler_result5, !dbg !631
  %handler_result9 = call double @fSubHandlerDouble(double %42, double %30), !dbg !632
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FCEC4B96CE072D7), !dbg !633
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !194, metadata !DIExpression()), !dbg !614
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !633
  %44 = tail call double @llvm.fabs.f64(double %30), !dbg !634
  %handler_result11 = call double @fAddHandlerDouble(double %44, double %43), !dbg !635
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FCEC4B96CE072D7), !dbg !636
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !637
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !198, metadata !DIExpression()), !dbg !614
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !556, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !609
  %45 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !637
  %handler_result14 = call double @fAddHandlerDouble(double %45, double 1.800000e-18), !dbg !638
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !556, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !609
  %46 = fmul double %23, %0, !dbg !638
  %47 = fmul double %46, %handler_result10, !dbg !639
  store double %47, ptr %1, align 8, !dbg !640, !tbaa !158
  %48 = fmul double %46, %handler_result14, !dbg !641
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !642
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !643
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !644
  %handler_result15 = call double @fAddHandlerDouble(double %51, double %48), !dbg !645
  store double %handler_result15, ptr %49, align 8, !dbg !645, !tbaa !163
  br label %121

52:                                               ; preds = %20
  %53 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !646
  br i1 %53, label %54, label %90, !dbg !647

54:                                               ; preds = %52
  %55 = fdiv double 0x404205966F2B4F12, %0, !dbg !648
  %56 = fptosi double %55 to i32, !dbg !649
  %57 = add nsw i32 %56, 1, !dbg !650
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !557, metadata !DIExpression()), !dbg !651
  %58 = fneg double %0, !dbg !652
  %59 = tail call double @exp(double noundef %58) #6, !dbg !653
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !249, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 4, metadata !254, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %59, metadata !255, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %0, metadata !256, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !654
  %60 = icmp slt i32 %56, 0, !dbg !656
  br i1 %60, label %78, label %61, !dbg !657

61:                                               ; preds = %54
  %62 = sitofp i32 %57 to double, !dbg !658
  tail call void @llvm.dbg.value(metadata double %62, metadata !257, metadata !DIExpression()), !dbg !654
  br label %63, !dbg !657

63:                                               ; preds = %63, %61
  %64 = phi double [ %62, %61 ], [ %handler_result21, %63 ]
  %65 = phi i32 [ 1, %61 ], [ %76, %63 ]
  %66 = phi double [ 0.000000e+00, %61 ], [ %handler_result20, %63 ]
  tail call void @llvm.dbg.value(metadata double %64, metadata !257, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !259, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %66, metadata !258, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !659
  %67 = fmul double %64, %0, !dbg !660
  %68 = fdiv double 1.000000e+00, %67, !dbg !661
  tail call void @llvm.dbg.value(metadata double %68, metadata !264, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !659
  %handler_result16 = call double @fAddHandlerDouble(double %68, double 1.000000e+00), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !260, metadata !DIExpression()), !dbg !659
  %69 = fmul double %handler_result16, 2.000000e+00, !dbg !662
  %70 = fmul double %68, %69, !dbg !663
  %handler_result17 = call double @fAddHandlerDouble(double %70, double 1.000000e+00), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !260, metadata !DIExpression()), !dbg !659
  %71 = fmul double %handler_result17, 3.000000e+00, !dbg !662
  %72 = fmul double %68, %71, !dbg !663
  %handler_result18 = call double @fAddHandlerDouble(double %72, double 1.000000e+00), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 4, metadata !266, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !265, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !260, metadata !DIExpression()), !dbg !659
  %73 = fmul double %handler_result18, 4.000000e+00, !dbg !662
  %74 = fmul double %68, %73, !dbg !663
  %handler_result19 = call double @fAddHandlerDouble(double %74, double 1.000000e+00), !dbg !664
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !260, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !265, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 5, metadata !266, metadata !DIExpression()), !dbg !659
  %75 = fmul double %59, %66, !dbg !664
  tail call void @llvm.dbg.value(metadata double %75, metadata !258, metadata !DIExpression()), !dbg !654
  %handler_result20 = call double @fAddHandlerDouble(double %75, double %handler_result19), !dbg !665
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !258, metadata !DIExpression()), !dbg !654
  %handler_result21 = call double @fAddHandlerDouble(double %64, double -1.000000e+00), !dbg !666
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !257, metadata !DIExpression()), !dbg !654
  %76 = add nuw i32 %65, 1, !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !259, metadata !DIExpression()), !dbg !654
  %77 = icmp eq i32 %65, %57, !dbg !656
  br i1 %77, label %78, label %63, !dbg !657, !llvm.loop !667

78:                                               ; preds = %63, %54
  %79 = phi double [ 0.000000e+00, %54 ], [ %handler_result20, %63 ], !dbg !654
  tail call void @llvm.dbg.value(metadata double %79, metadata !560, metadata !DIExpression()), !dbg !651
  %handler_result40 = call double @callHandler(i32 12, double %0, double %0), !dbg !669
  %80 = fmul double %handler_result40, 4.000000e+00, !dbg !669
  %handler_result22 = call double @fSubHandlerDouble(double %80, double %0), !dbg !670
  %handler_result41 = call double @callHandler(i32 12, double %79, double %79), !dbg !671
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result41, double %handler_result22), !dbg !671
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !561, metadata !DIExpression()), !dbg !651
  %81 = fcmp olt double %handler_result23, 0xC04205966F2B4F12, !dbg !671
  br i1 %81, label %82, label %84, !dbg !672

82:                                               ; preds = %78
  store double 0x4039F9CB402BC46C, ptr %1, align 8, !dbg !673, !tbaa !158
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !675
  store double 0x3D09F9CB402BC46C, ptr %83, align 8, !dbg !676, !tbaa !163
  br label %121, !dbg !677

84:                                               ; preds = %78
  %85 = tail call double @exp(double noundef %handler_result23) #6, !dbg !678
  tail call void @llvm.dbg.value(metadata double %85, metadata !562, metadata !DIExpression()), !dbg !679
  %handler_result24 = call double @fSubHandlerDouble(double 0x4039F9CB402BC46C, double %85), !dbg !680
  store double %handler_result24, ptr %1, align 8, !dbg !680, !tbaa !158
  %86 = tail call double @llvm.fabs.f64(double %handler_result23), !dbg !681
  %handler_result25 = call double @fAddHandlerDouble(double %86, double 1.000000e+00), !dbg !682
  %87 = fmul double %handler_result25, %85, !dbg !682
  %handler_result26 = call double @fAddHandlerDouble(double %87, double 0x4039F9CB402BC46C), !dbg !683
  %88 = fmul double %handler_result26, 0x3CC0000000000000, !dbg !683
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !684
  store double %88, ptr %89, align 8, !dbg !685, !tbaa !163
  br label %121

90:                                               ; preds = %52
  %91 = fcmp olt double %0, 0x4348000000000000, !dbg !686
  br i1 %91, label %92, label %110, !dbg !687

92:                                               ; preds = %90
  %93 = fdiv double 1.000000e+00, %0, !dbg !688
  %handler_result27 = call double @fAddHandlerDouble(double %93, double 1.000000e+00), !dbg !690
  %94 = fmul double %handler_result27, 2.000000e+00, !dbg !690
  %95 = fmul double %93, %94, !dbg !691
  %handler_result28 = call double @fAddHandlerDouble(double %95, double 1.000000e+00), !dbg !690
  %96 = fmul double %handler_result28, 3.000000e+00, !dbg !690
  %97 = fmul double %93, %96, !dbg !691
  %handler_result29 = call double @fAddHandlerDouble(double %97, double 1.000000e+00), !dbg !690
  %98 = fmul double %handler_result29, 4.000000e+00, !dbg !690
  %99 = fmul double %93, %98, !dbg !691
  %handler_result30 = call double @fAddHandlerDouble(double %99, double 1.000000e+00), !dbg !692
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !257, metadata !DIExpression()), !dbg !693
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !693
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !693
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !694
  tail call void @llvm.dbg.value(metadata double %93, metadata !264, metadata !DIExpression()), !dbg !694
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !694
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !694
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !568, metadata !DIExpression()), !dbg !695
  %handler_result42 = call double @callHandler(i32 12, double %0, double %0), !dbg !696
  %100 = fmul double %handler_result42, 4.000000e+00, !dbg !696
  %handler_result31 = call double @fSubHandlerDouble(double %100, double %0), !dbg !697
  %handler_result43 = call double @callHandler(i32 12, double %handler_result30, double %handler_result30), !dbg !698
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result43, double %handler_result31), !dbg !698
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !569, metadata !DIExpression()), !dbg !695
  %101 = fcmp olt double %handler_result32, 0xC04205966F2B4F12, !dbg !698
  br i1 %101, label %102, label %104, !dbg !699

102:                                              ; preds = %92
  store double 0x4039F9CB402BC46C, ptr %1, align 8, !dbg !700, !tbaa !158
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !702
  store double 0x3D09F9CB402BC46C, ptr %103, align 8, !dbg !703, !tbaa !163
  br label %121, !dbg !704

104:                                              ; preds = %92
  %105 = tail call double @exp(double noundef %handler_result32) #6, !dbg !705
  tail call void @llvm.dbg.value(metadata double %105, metadata !570, metadata !DIExpression()), !dbg !706
  %handler_result33 = call double @fSubHandlerDouble(double 0x4039F9CB402BC46C, double %105), !dbg !707
  store double %handler_result33, ptr %1, align 8, !dbg !707, !tbaa !158
  %106 = tail call double @llvm.fabs.f64(double %handler_result32), !dbg !708
  %handler_result34 = call double @fAddHandlerDouble(double %106, double 1.000000e+00), !dbg !709
  %107 = fmul double %handler_result34, %105, !dbg !709
  %handler_result35 = call double @fAddHandlerDouble(double %107, double 0x4039F9CB402BC46C), !dbg !710
  %108 = fmul double %handler_result35, 0x3CC0000000000000, !dbg !710
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !711
  store double %108, ptr %109, align 8, !dbg !712, !tbaa !163
  br label %121

110:                                              ; preds = %90
  %handler_result44 = call double @callHandler(i32 12, double %0, double %0), !dbg !713
  %111 = fmul double %handler_result44, 4.000000e+00, !dbg !713
  %handler_result36 = call double @fSubHandlerDouble(double %111, double %0), !dbg !714
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !573, metadata !DIExpression()), !dbg !715
  %112 = fcmp olt double %handler_result36, 0xC04205966F2B4F12, !dbg !714
  br i1 %112, label %113, label %115, !dbg !716

113:                                              ; preds = %110
  store double 0x4039F9CB402BC46C, ptr %1, align 8, !dbg !717, !tbaa !158
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !719
  store double 0x3D09F9CB402BC46C, ptr %114, align 8, !dbg !720, !tbaa !163
  br label %121, !dbg !721

115:                                              ; preds = %110
  %116 = tail call double @exp(double noundef %handler_result36) #6, !dbg !722
  tail call void @llvm.dbg.value(metadata double %116, metadata !575, metadata !DIExpression()), !dbg !723
  %handler_result37 = call double @fSubHandlerDouble(double 0x4039F9CB402BC46C, double %116), !dbg !724
  store double %handler_result37, ptr %1, align 8, !dbg !724, !tbaa !158
  %117 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !725
  %handler_result38 = call double @fAddHandlerDouble(double %117, double 1.000000e+00), !dbg !726
  %118 = fmul double %handler_result38, %116, !dbg !726
  %handler_result39 = call double @fAddHandlerDouble(double %118, double 0x4039F9CB402BC46C), !dbg !727
  %119 = fmul double %handler_result39, 0x3CC0000000000000, !dbg !727
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !728
  store double %119, ptr %120, align 8, !dbg !729, !tbaa !163
  br label %121

121:                                              ; preds = %115, %113, %104, %102, %84, %82, %41, %19, %11, %8, %4
  %122 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 15, %19 ], [ 0, %41 ], [ 0, %11 ], [ 0, %84 ], [ 0, %82 ], [ 0, %104 ], [ 0, %102 ], [ 0, %115 ], [ 0, %113 ], !dbg !730
  ret i32 %122, !dbg !731
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_5_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !732 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !734, metadata !DIExpression()), !dbg !766
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !735, metadata !DIExpression()), !dbg !766
  tail call void @llvm.dbg.value(metadata double 0x405F1B9AEBBBAA02, metadata !736, metadata !DIExpression()), !dbg !766
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !767
  br i1 %3, label %4, label %6, !dbg !768

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !769, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !769
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !769, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 402, i32 noundef 1) #6, !dbg !772
  br label %126, !dbg !772

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !774
  br i1 %7, label %8, label %9, !dbg !775

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !776
  br label %126, !dbg !778

9:                                                ; preds = %6
  %10 = fcmp olt double %0, 0x3E68000000000000, !dbg !779
  br i1 %10, label %11, label %21, !dbg !780

11:                                               ; preds = %9
  %12 = fmul double %0, %0, !dbg !781
  %13 = fmul double %12, %0, !dbg !783
  %14 = fmul double %13, %0, !dbg !784
  %15 = fmul double %14, 2.500000e-01, !dbg !785
  store double %15, ptr %1, align 8, !dbg !786, !tbaa !158
  %16 = fmul double %15, 0x3CD0000000000000, !dbg !787
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !788
  store double %16, ptr %17, align 8, !dbg !789, !tbaa !163
  %18 = tail call double @llvm.fabs.f64(double %15), !dbg !790
  %19 = fcmp olt double %18, 0x10000000000000, !dbg !790
  br i1 %19, label %20, label %126, !dbg !792

20:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 15) #6, !dbg !793
  br label %126, !dbg !793

21:                                               ; preds = %9
  %22 = fcmp ugt double %0, 4.000000e+00, !dbg !795
  br i1 %22, label %53, label %23, !dbg !796

23:                                               ; preds = %21
  %24 = fmul double %0, %0, !dbg !797
  tail call void @llvm.dbg.value(metadata double %24, metadata !737, metadata !DIExpression()), !dbg !798
  %25 = fmul double %24, 1.250000e-01, !dbg !799
  %handler_result = call double @fAddHandlerDouble(double %25, double -5.000000e-01), !dbg !800
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double -5.000000e-01), !dbg !801
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !743, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata !207, metadata !190, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !191, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr undef, metadata !192, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !195, metadata !DIExpression()), !dbg !803
  %26 = fmul double %handler_result1, 2.000000e+00, !dbg !801
  %handler_result2 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !804
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !805
  %27 = fmul double %handler_result3, 5.000000e-01, !dbg !805
  call void @llvm.dbg.value(metadata double %27, metadata !196, metadata !DIExpression()), !dbg !803
  %28 = fmul double %27, 2.000000e+00, !dbg !806
  call void @llvm.dbg.value(metadata double %28, metadata !197, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i32 17, metadata !193, metadata !DIExpression()), !dbg !803
  br label %29, !dbg !807

29:                                               ; preds = %29, %23
  %30 = phi i64 [ 17, %23 ], [ %40, %29 ]
  %31 = phi double [ 0.000000e+00, %23 ], [ %handler_result5, %29 ]
  %32 = phi double [ 0.000000e+00, %23 ], [ %handler_result8, %29 ]
  %33 = phi double [ 0.000000e+00, %23 ], [ %31, %29 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !193, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %31, metadata !194, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %32, metadata !198, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %33, metadata !195, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %31, metadata !199, metadata !DIExpression()), !dbg !808
  %34 = fmul double %28, %31, !dbg !809
  %handler_result4 = call double @fSubHandlerDouble(double %34, double %33), !dbg !810
  %35 = getelementptr inbounds double, ptr @transport5_data, i64 %30, !dbg !810
  %36 = load double, ptr %35, align 8, !dbg !810, !tbaa !216
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %36), !dbg !811
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !194, metadata !DIExpression()), !dbg !803
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !811
  %38 = tail call double @llvm.fabs.f64(double %33), !dbg !812
  %handler_result6 = call double @fAddHandlerDouble(double %37, double %38), !dbg !813
  %39 = tail call double @llvm.fabs.f64(double %36), !dbg !813
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %39), !dbg !814
  %handler_result8 = call double @fAddHandlerDouble(double %32, double %handler_result7), !dbg !815
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !198, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %31, metadata !195, metadata !DIExpression()), !dbg !803
  %40 = add nsw i64 %30, -1, !dbg !815
  call void @llvm.dbg.value(metadata i64 %40, metadata !193, metadata !DIExpression()), !dbg !803
  %41 = icmp ugt i64 %30, 1, !dbg !816
  br i1 %41, label %29, label %42, !dbg !807, !llvm.loop !817

42:                                               ; preds = %29
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !203, metadata !DIExpression()), !dbg !819
  %43 = fmul double %27, %handler_result5, !dbg !820
  %handler_result9 = call double @fSubHandlerDouble(double %43, double %31), !dbg !821
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FC641FDB8C434D0), !dbg !822
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !194, metadata !DIExpression()), !dbg !803
  %44 = tail call double @llvm.fabs.f64(double %43), !dbg !822
  %45 = tail call double @llvm.fabs.f64(double %31), !dbg !823
  %handler_result11 = call double @fAddHandlerDouble(double %45, double %44), !dbg !824
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FC641FDB8C434D0), !dbg !825
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !198, metadata !DIExpression()), !dbg !803
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !798
  %46 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !826
  %handler_result14 = call double @fAddHandlerDouble(double %46, double 1.800000e-18), !dbg !827
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !798
  %47 = fmul double %24, %24, !dbg !827
  %48 = fmul double %47, %handler_result10, !dbg !828
  store double %48, ptr %1, align 8, !dbg !829, !tbaa !158
  %49 = fmul double %47, %handler_result14, !dbg !830
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !831
  %51 = tail call double @llvm.fabs.f64(double %48), !dbg !832
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !833
  %handler_result15 = call double @fAddHandlerDouble(double %52, double %49), !dbg !834
  store double %handler_result15, ptr %50, align 8, !dbg !834, !tbaa !163
  br label %126

53:                                               ; preds = %21
  %54 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !835
  br i1 %54, label %55, label %93, !dbg !836

55:                                               ; preds = %53
  %56 = fdiv double 0x404205966F2B4F12, %0, !dbg !837
  %57 = fptosi double %56 to i32, !dbg !838
  %58 = add nsw i32 %57, 1, !dbg !839
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !745, metadata !DIExpression()), !dbg !840
  %59 = fneg double %0, !dbg !841
  %60 = tail call double @exp(double noundef %59) #6, !dbg !842
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !249, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata i32 5, metadata !254, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double %60, metadata !255, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double %0, metadata !256, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !843
  %61 = icmp slt i32 %57, 0, !dbg !845
  br i1 %61, label %81, label %62, !dbg !846

62:                                               ; preds = %55
  %63 = sitofp i32 %58 to double, !dbg !847
  tail call void @llvm.dbg.value(metadata double %63, metadata !257, metadata !DIExpression()), !dbg !843
  br label %64, !dbg !846

64:                                               ; preds = %64, %62
  %65 = phi double [ %63, %62 ], [ %handler_result22, %64 ]
  %66 = phi i32 [ 1, %62 ], [ %79, %64 ]
  %67 = phi double [ 0.000000e+00, %62 ], [ %handler_result21, %64 ]
  tail call void @llvm.dbg.value(metadata double %65, metadata !257, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !259, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double %67, metadata !258, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !848
  %68 = fmul double %65, %0, !dbg !849
  %69 = fdiv double 1.000000e+00, %68, !dbg !850
  tail call void @llvm.dbg.value(metadata double %69, metadata !264, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !848
  %handler_result16 = call double @fAddHandlerDouble(double %69, double 1.000000e+00), !dbg !851
  tail call void @llvm.dbg.value(metadata i32 2, metadata !266, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !265, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !260, metadata !DIExpression()), !dbg !848
  %70 = fmul double %handler_result16, 2.000000e+00, !dbg !851
  %71 = fmul double %69, %70, !dbg !852
  %handler_result17 = call double @fAddHandlerDouble(double %71, double 1.000000e+00), !dbg !851
  tail call void @llvm.dbg.value(metadata i32 3, metadata !266, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !265, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !260, metadata !DIExpression()), !dbg !848
  %72 = fmul double %handler_result17, 3.000000e+00, !dbg !851
  %73 = fmul double %69, %72, !dbg !852
  %handler_result18 = call double @fAddHandlerDouble(double %73, double 1.000000e+00), !dbg !851
  tail call void @llvm.dbg.value(metadata i32 4, metadata !266, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !265, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !260, metadata !DIExpression()), !dbg !848
  %74 = fmul double %handler_result18, 4.000000e+00, !dbg !851
  %75 = fmul double %69, %74, !dbg !852
  %handler_result19 = call double @fAddHandlerDouble(double %75, double 1.000000e+00), !dbg !851
  tail call void @llvm.dbg.value(metadata i32 5, metadata !266, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !265, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !260, metadata !DIExpression()), !dbg !848
  %76 = fmul double %handler_result19, 5.000000e+00, !dbg !851
  %77 = fmul double %69, %76, !dbg !852
  %handler_result20 = call double @fAddHandlerDouble(double %77, double 1.000000e+00), !dbg !853
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !260, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata double 6.000000e+00, metadata !265, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata i32 6, metadata !266, metadata !DIExpression()), !dbg !848
  %78 = fmul double %60, %67, !dbg !853
  tail call void @llvm.dbg.value(metadata double %78, metadata !258, metadata !DIExpression()), !dbg !843
  %handler_result21 = call double @fAddHandlerDouble(double %78, double %handler_result20), !dbg !854
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !258, metadata !DIExpression()), !dbg !843
  %handler_result22 = call double @fAddHandlerDouble(double %65, double -1.000000e+00), !dbg !855
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !257, metadata !DIExpression()), !dbg !843
  %79 = add nuw i32 %66, 1, !dbg !855
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !259, metadata !DIExpression()), !dbg !843
  %80 = icmp eq i32 %66, %58, !dbg !845
  br i1 %80, label %81, label %64, !dbg !846, !llvm.loop !856

81:                                               ; preds = %64, %55
  %82 = phi double [ 0.000000e+00, %55 ], [ %handler_result21, %64 ], !dbg !843
  tail call void @llvm.dbg.value(metadata double %82, metadata !748, metadata !DIExpression()), !dbg !840
  %handler_result42 = call double @callHandler(i32 12, double %0, double %0), !dbg !858
  %83 = fmul double %handler_result42, 5.000000e+00, !dbg !858
  %handler_result23 = call double @fSubHandlerDouble(double %83, double %0), !dbg !859
  %handler_result43 = call double @callHandler(i32 12, double %82, double %82), !dbg !860
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result43, double %handler_result23), !dbg !860
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !749, metadata !DIExpression()), !dbg !840
  %84 = fcmp olt double %handler_result24, 0xC04205966F2B4F12, !dbg !860
  br i1 %84, label %85, label %87, !dbg !861

85:                                               ; preds = %81
  store double 0x405F1B9AEBBBAA02, ptr %1, align 8, !dbg !862, !tbaa !158
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !864
  store double 0x3D2F1B9AEBBBAA02, ptr %86, align 8, !dbg !865, !tbaa !163
  br label %126, !dbg !866

87:                                               ; preds = %81
  %88 = tail call double @exp(double noundef %handler_result24) #6, !dbg !867
  tail call void @llvm.dbg.value(metadata double %88, metadata !750, metadata !DIExpression()), !dbg !868
  %handler_result25 = call double @fSubHandlerDouble(double 0x405F1B9AEBBBAA02, double %88), !dbg !869
  store double %handler_result25, ptr %1, align 8, !dbg !869, !tbaa !158
  %89 = tail call double @llvm.fabs.f64(double %handler_result24), !dbg !870
  %handler_result26 = call double @fAddHandlerDouble(double %89, double 1.000000e+00), !dbg !871
  %90 = fmul double %handler_result26, %88, !dbg !871
  %handler_result27 = call double @fAddHandlerDouble(double %90, double 0x405F1B9AEBBBAA02), !dbg !872
  %91 = fmul double %handler_result27, 0x3CC0000000000000, !dbg !872
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !873
  store double %91, ptr %92, align 8, !dbg !874, !tbaa !163
  br label %126

93:                                               ; preds = %53
  %94 = fcmp olt double %0, 0x4348000000000000, !dbg !875
  br i1 %94, label %95, label %115, !dbg !876

95:                                               ; preds = %93
  %96 = fdiv double 1.000000e+00, %0, !dbg !877
  %handler_result28 = call double @fAddHandlerDouble(double %96, double 1.000000e+00), !dbg !879
  %97 = fmul double %handler_result28, 2.000000e+00, !dbg !879
  %98 = fmul double %96, %97, !dbg !880
  %handler_result29 = call double @fAddHandlerDouble(double %98, double 1.000000e+00), !dbg !879
  %99 = fmul double %handler_result29, 3.000000e+00, !dbg !879
  %100 = fmul double %96, %99, !dbg !880
  %handler_result30 = call double @fAddHandlerDouble(double %100, double 1.000000e+00), !dbg !879
  %101 = fmul double %handler_result30, 4.000000e+00, !dbg !879
  %102 = fmul double %96, %101, !dbg !880
  %handler_result31 = call double @fAddHandlerDouble(double %102, double 1.000000e+00), !dbg !879
  %103 = fmul double %handler_result31, 5.000000e+00, !dbg !879
  %104 = fmul double %96, %103, !dbg !880
  %handler_result32 = call double @fAddHandlerDouble(double %104, double 1.000000e+00), !dbg !881
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !257, metadata !DIExpression()), !dbg !882
  tail call void @llvm.dbg.value(metadata i32 1, metadata !259, metadata !DIExpression()), !dbg !882
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !258, metadata !DIExpression()), !dbg !882
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !260, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata double %96, metadata !264, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !265, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata i32 1, metadata !266, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !756, metadata !DIExpression()), !dbg !884
  %handler_result44 = call double @callHandler(i32 12, double %0, double %0), !dbg !885
  %105 = fmul double %handler_result44, 5.000000e+00, !dbg !885
  %handler_result33 = call double @fSubHandlerDouble(double %105, double %0), !dbg !886
  %handler_result45 = call double @callHandler(i32 12, double %handler_result32, double %handler_result32), !dbg !887
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result45, double %handler_result33), !dbg !887
  tail call void @llvm.dbg.value(metadata double %handler_result34, metadata !757, metadata !DIExpression()), !dbg !884
  %106 = fcmp olt double %handler_result34, 0xC04205966F2B4F12, !dbg !887
  br i1 %106, label %107, label %109, !dbg !888

107:                                              ; preds = %95
  store double 0x405F1B9AEBBBAA02, ptr %1, align 8, !dbg !889, !tbaa !158
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !891
  store double 0x3D2F1B9AEBBBAA02, ptr %108, align 8, !dbg !892, !tbaa !163
  br label %126, !dbg !893

109:                                              ; preds = %95
  %110 = tail call double @exp(double noundef %handler_result34) #6, !dbg !894
  tail call void @llvm.dbg.value(metadata double %110, metadata !758, metadata !DIExpression()), !dbg !895
  %handler_result35 = call double @fSubHandlerDouble(double 0x405F1B9AEBBBAA02, double %110), !dbg !896
  store double %handler_result35, ptr %1, align 8, !dbg !896, !tbaa !158
  %111 = tail call double @llvm.fabs.f64(double %handler_result34), !dbg !897
  %handler_result36 = call double @fAddHandlerDouble(double %111, double 1.000000e+00), !dbg !898
  %112 = fmul double %handler_result36, %110, !dbg !898
  %handler_result37 = call double @fAddHandlerDouble(double %112, double 0x405F1B9AEBBBAA02), !dbg !899
  %113 = fmul double %handler_result37, 0x3CC0000000000000, !dbg !899
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !900
  store double %113, ptr %114, align 8, !dbg !901, !tbaa !163
  br label %126

115:                                              ; preds = %93
  %handler_result46 = call double @callHandler(i32 12, double %0, double %0), !dbg !902
  %116 = fmul double %handler_result46, 5.000000e+00, !dbg !902
  %handler_result38 = call double @fSubHandlerDouble(double %116, double %0), !dbg !903
  tail call void @llvm.dbg.value(metadata double %handler_result38, metadata !761, metadata !DIExpression()), !dbg !904
  %117 = fcmp olt double %handler_result38, 0xC04205966F2B4F12, !dbg !903
  br i1 %117, label %118, label %120, !dbg !905

118:                                              ; preds = %115
  store double 0x405F1B9AEBBBAA02, ptr %1, align 8, !dbg !906, !tbaa !158
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !908
  store double 0x3D2F1B9AEBBBAA02, ptr %119, align 8, !dbg !909, !tbaa !163
  br label %126, !dbg !910

120:                                              ; preds = %115
  %121 = tail call double @exp(double noundef %handler_result38) #6, !dbg !911
  tail call void @llvm.dbg.value(metadata double %121, metadata !763, metadata !DIExpression()), !dbg !912
  %handler_result39 = call double @fSubHandlerDouble(double 0x405F1B9AEBBBAA02, double %121), !dbg !913
  store double %handler_result39, ptr %1, align 8, !dbg !913, !tbaa !158
  %122 = tail call double @llvm.fabs.f64(double %handler_result38), !dbg !914
  %handler_result40 = call double @fAddHandlerDouble(double %122, double 1.000000e+00), !dbg !915
  %123 = fmul double %handler_result40, %121, !dbg !915
  %handler_result41 = call double @fAddHandlerDouble(double %123, double 0x405F1B9AEBBBAA02), !dbg !916
  %124 = fmul double %handler_result41, 0x3CC0000000000000, !dbg !916
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !917
  store double %124, ptr %125, align 8, !dbg !918, !tbaa !163
  br label %126

126:                                              ; preds = %120, %118, %109, %107, %87, %85, %42, %20, %11, %8, %4
  %127 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 15, %20 ], [ 0, %42 ], [ 0, %11 ], [ 0, %87 ], [ 0, %85 ], [ 0, %109 ], [ 0, %107 ], [ 0, %120 ], [ 0, %118 ], !dbg !919
  ret i32 %127, !dbg !920
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_2(double noundef %0) local_unnamed_addr #0 !dbg !921 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !926, metadata !DIExpression(), metadata !928, metadata ptr %2, metadata !DIExpression()), !dbg !929
  tail call void @llvm.dbg.value(metadata double %0, metadata !925, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !930
  %3 = call i32 @gsl_sf_transport_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !930, !range !931
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !927, metadata !DIExpression()), !dbg !929
  %4 = icmp eq i32 %3, 0, !dbg !932
  br i1 %4, label %6, label %5, !dbg !930

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 476, i32 noundef 1) #6, !dbg !934
  br label %6, !dbg !934

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !930, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !937
  ret double %7, !dbg !937
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_3(double noundef %0) local_unnamed_addr #0 !dbg !938 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !943
  call void @llvm.dbg.assign(metadata i1 undef, metadata !941, metadata !DIExpression(), metadata !943, metadata ptr %2, metadata !DIExpression()), !dbg !944
  tail call void @llvm.dbg.value(metadata double %0, metadata !940, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !945
  %3 = call i32 @gsl_sf_transport_3_e(double noundef %0, ptr noundef nonnull %2), !dbg !945, !range !946
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !942, metadata !DIExpression()), !dbg !944
  %4 = icmp eq i32 %3, 0, !dbg !947
  br i1 %4, label %6, label %5, !dbg !945

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 481, i32 noundef %3) #6, !dbg !949
  br label %6, !dbg !949

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !945, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !952
  ret double %7, !dbg !952
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_4(double noundef %0) local_unnamed_addr #0 !dbg !953 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !958
  call void @llvm.dbg.assign(metadata i1 undef, metadata !956, metadata !DIExpression(), metadata !958, metadata ptr %2, metadata !DIExpression()), !dbg !959
  tail call void @llvm.dbg.value(metadata double %0, metadata !955, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !960
  %3 = call i32 @gsl_sf_transport_4_e(double noundef %0, ptr noundef nonnull %2), !dbg !960, !range !946
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !957, metadata !DIExpression()), !dbg !959
  %4 = icmp eq i32 %3, 0, !dbg !961
  br i1 %4, label %6, label %5, !dbg !960

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 486, i32 noundef %3) #6, !dbg !963
  br label %6, !dbg !963

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !960, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !966
  ret double %7, !dbg !966
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_5(double noundef %0) local_unnamed_addr #0 !dbg !967 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !970, metadata !DIExpression(), metadata !972, metadata ptr %2, metadata !DIExpression()), !dbg !973
  tail call void @llvm.dbg.value(metadata double %0, metadata !969, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !974
  %3 = call i32 @gsl_sf_transport_5_e(double noundef %0, ptr noundef nonnull %2), !dbg !974, !range !946
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !971, metadata !DIExpression()), !dbg !973
  %4 = icmp eq i32 %3, 0, !dbg !975
  br i1 %4, label %6, label %5, !dbg !974

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 491, i32 noundef %3) #6, !dbg !977
  br label %6, !dbg !977

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !974, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !980
  ret double %7, !dbg !980
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
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "transport.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "55a5dd3e2043a83aefad8d026cce6789")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 476, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 33)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 481, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !19, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 491, type: !19, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "transport2_data", scope: !30, file: !2, line: 33, type: !90, isLocal: true, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !71, globals: !73, splitDebugInlining: false, nameTableKind: None)
!31 = !{!32}
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 39, baseType: !34, size: 32, elements: !35)
!33 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!36 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!37 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!38 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!39 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!40 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!41 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!42 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!43 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!44 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!45 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!46 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!47 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!48 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!49 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!50 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!51 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!52 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!53 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!54 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!55 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!56 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!57 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!58 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!59 = !DIEnumerator(name: "GSL_ESING", value: 21)
!60 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!61 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!62 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!63 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!64 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!65 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!66 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!67 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!68 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!69 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!70 = !DIEnumerator(name: "GSL_EOF", value: 32)
!71 = !{!34, !72}
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !{!0, !7, !12, !17, !22, !24, !26, !74, !28, !86, !88, !93, !95, !97, !99}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "transport2_cs", scope: !30, file: !2, line: 53, type: !76, isLocal: true, isDefinition: true)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !77, line: 29, baseType: !78)
!77 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !77, line: 22, size: 320, elements: !79)
!79 = !{!80, !82, !83, !84, !85}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !78, file: !77, line: 23, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !78, file: !77, line: 24, baseType: !34, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !78, file: !77, line: 25, baseType: !72, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !78, file: !77, line: 26, baseType: !72, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !78, file: !77, line: 27, baseType: !34, size: 32, offset: 256)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "transport3_cs", scope: !30, file: !2, line: 80, type: !76, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "transport3_data", scope: !30, file: !2, line: 60, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1152, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 18)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "transport4_cs", scope: !30, file: !2, line: 108, type: !76, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "transport4_data", scope: !30, file: !2, line: 88, type: !90, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "transport5_cs", scope: !30, file: !2, line: 136, type: !76, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "transport5_data", scope: !30, file: !2, line: 116, type: !90, isLocal: true, isDefinition: true)
!101 = !{i32 7, !"Dwarf Version", i32 5}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{i32 7, !"uwtable", i32 2}
!107 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!108 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!109 = distinct !DISubprogram(name: "gsl_sf_transport_2_e", scope: !2, file: !2, line: 171, type: !110, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !120)
!110 = !DISubroutineType(types: !111)
!111 = !{!34, !112, !113}
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !115, line: 41, baseType: !116)
!115 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !115, line: 37, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !116, file: !115, line: 38, baseType: !72, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !116, file: !115, line: 39, baseType: !72, size: 64, offset: 64)
!120 = !{!121, !122, !123, !124, !129, !130, !134, !135, !136, !139, !142, !143, !144, !147, !149}
!121 = !DILocalVariable(name: "x", arg: 1, scope: !109, file: !2, line: 171, type: !112)
!122 = !DILocalVariable(name: "result", arg: 2, scope: !109, file: !2, line: 171, type: !113)
!123 = !DILocalVariable(name: "val_infinity", scope: !109, file: !2, line: 173, type: !112)
!124 = !DILocalVariable(name: "t", scope: !125, file: !2, line: 186, type: !72)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 185, column: 21)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 185, column: 11)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 180, column: 11)
!128 = distinct !DILexicalBlock(scope: !109, file: !2, line: 177, column: 6)
!129 = !DILocalVariable(name: "result_c", scope: !125, file: !2, line: 187, type: !114)
!130 = !DILocalVariable(name: "numexp", scope: !131, file: !2, line: 195, type: !133)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 194, column: 37)
!132 = distinct !DILexicalBlock(scope: !126, file: !2, line: 194, column: 11)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!134 = !DILocalVariable(name: "sumexp", scope: !131, file: !2, line: 196, type: !112)
!135 = !DILocalVariable(name: "t", scope: !131, file: !2, line: 197, type: !112)
!136 = !DILocalVariable(name: "et", scope: !137, file: !2, line: 203, type: !112)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 202, column: 10)
!138 = distinct !DILexicalBlock(scope: !131, file: !2, line: 198, column: 8)
!139 = !DILocalVariable(name: "numexp", scope: !140, file: !2, line: 210, type: !133)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 209, column: 36)
!141 = distinct !DILexicalBlock(scope: !132, file: !2, line: 209, column: 11)
!142 = !DILocalVariable(name: "sumexp", scope: !140, file: !2, line: 211, type: !112)
!143 = !DILocalVariable(name: "t", scope: !140, file: !2, line: 212, type: !112)
!144 = !DILocalVariable(name: "et", scope: !145, file: !2, line: 218, type: !112)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 217, column: 10)
!146 = distinct !DILexicalBlock(scope: !140, file: !2, line: 213, column: 8)
!147 = !DILocalVariable(name: "t", scope: !148, file: !2, line: 225, type: !112)
!148 = distinct !DILexicalBlock(scope: !141, file: !2, line: 224, column: 8)
!149 = !DILocalVariable(name: "et", scope: !150, file: !2, line: 231, type: !112)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 230, column: 10)
!151 = distinct !DILexicalBlock(scope: !148, file: !2, line: 226, column: 8)
!152 = !DILocation(line: 0, scope: !109)
!153 = !DILocation(line: 177, column: 8, scope: !128)
!154 = !DILocation(line: 177, column: 6, scope: !109)
!155 = !DILocation(line: 178, column: 5, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 178, column: 5)
!157 = distinct !DILexicalBlock(scope: !128, file: !2, line: 177, column: 15)
!158 = !{!159, !160, i64 0}
!159 = !{!"gsl_sf_result_struct", !160, i64 0, !160, i64 8}
!160 = !{!"double", !161, i64 0}
!161 = !{!"omnipotent char", !162, i64 0}
!162 = !{!"Simple C/C++ TBAA"}
!163 = !{!159, !160, i64 8}
!164 = !DILocation(line: 178, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !156, file: !2, line: 178, column: 5)
!166 = !DILocation(line: 180, column: 13, scope: !127)
!167 = !DILocation(line: 180, column: 11, scope: !128)
!168 = !DILocation(line: 181, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !127, file: !2, line: 180, column: 41)
!170 = !DILocation(line: 182, column: 35, scope: !169)
!171 = !DILocation(line: 182, column: 34, scope: !169)
!172 = !DILocation(line: 182, column: 46, scope: !169)
!173 = !DILocation(line: 182, column: 48, scope: !169)
!174 = !DILocation(line: 182, column: 13, scope: !169)
!175 = !DILocation(line: 182, column: 17, scope: !169)
!176 = !DILocation(line: 183, column: 5, scope: !169)
!177 = !DILocation(line: 185, column: 13, scope: !126)
!178 = !DILocation(line: 185, column: 11, scope: !127)
!179 = !DILocation(line: 186, column: 18, scope: !125)
!180 = !DILocation(line: 186, column: 20, scope: !125)
!181 = !DILocation(line: 186, column: 32, scope: !125)
!182 = !DILocation(line: 11, column: 19, scope: !183, inlinedAt: !205)
!183 = distinct !DISubprogram(name: "cheb_eval_e", scope: !184, file: !184, line: 3, type: !185, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !189)
!184 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!185 = !DISubroutineType(types: !186)
!186 = !{!34, !187, !112, !113}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !203}
!190 = !DILocalVariable(name: "cs", arg: 1, scope: !183, file: !184, line: 3, type: !187)
!191 = !DILocalVariable(name: "x", arg: 2, scope: !183, file: !184, line: 4, type: !112)
!192 = !DILocalVariable(name: "result", arg: 3, scope: !183, file: !184, line: 5, type: !113)
!193 = !DILocalVariable(name: "j", scope: !183, file: !184, line: 7, type: !34)
!194 = !DILocalVariable(name: "d", scope: !183, file: !184, line: 8, type: !72)
!195 = !DILocalVariable(name: "dd", scope: !183, file: !184, line: 9, type: !72)
!196 = !DILocalVariable(name: "y", scope: !183, file: !184, line: 11, type: !72)
!197 = !DILocalVariable(name: "y2", scope: !183, file: !184, line: 12, type: !72)
!198 = !DILocalVariable(name: "e", scope: !183, file: !184, line: 14, type: !72)
!199 = !DILocalVariable(name: "temp", scope: !200, file: !184, line: 17, type: !72)
!200 = distinct !DILexicalBlock(scope: !201, file: !184, line: 16, column: 33)
!201 = distinct !DILexicalBlock(scope: !202, file: !184, line: 16, column: 3)
!202 = distinct !DILexicalBlock(scope: !183, file: !184, line: 16, column: 3)
!203 = !DILocalVariable(name: "temp", scope: !204, file: !184, line: 24, type: !72)
!204 = distinct !DILexicalBlock(scope: !183, file: !184, line: 23, column: 3)
!205 = distinct !DILocation(line: 188, column: 5, scope: !125)
!206 = !DILocation(line: 0, scope: !125)
!207 = !{}
!208 = !DILocation(line: 0, scope: !183, inlinedAt: !205)
!209 = !DILocation(line: 11, column: 30, scope: !183, inlinedAt: !205)
!210 = !DILocation(line: 11, column: 39, scope: !183, inlinedAt: !205)
!211 = !DILocation(line: 12, column: 19, scope: !183, inlinedAt: !205)
!212 = !DILocation(line: 16, column: 3, scope: !202, inlinedAt: !205)
!213 = !DILocation(line: 0, scope: !200, inlinedAt: !205)
!214 = !DILocation(line: 18, column: 11, scope: !200, inlinedAt: !205)
!215 = !DILocation(line: 18, column: 21, scope: !200, inlinedAt: !205)
!216 = !{!160, !160, i64 0}
!217 = !DILocation(line: 19, column: 10, scope: !200, inlinedAt: !205)
!218 = !DILocation(line: 19, column: 26, scope: !200, inlinedAt: !205)
!219 = !DILocation(line: 19, column: 37, scope: !200, inlinedAt: !205)
!220 = !DILocation(line: 19, column: 7, scope: !200, inlinedAt: !205)
!221 = !DILocation(line: 16, column: 29, scope: !201, inlinedAt: !205)
!222 = !DILocation(line: 16, column: 23, scope: !201, inlinedAt: !205)
!223 = distinct !{!223, !212, !224, !225}
!224 = !DILocation(line: 21, column: 3, scope: !202, inlinedAt: !205)
!225 = !{!"llvm.loop.mustprogress"}
!226 = !DILocation(line: 0, scope: !204, inlinedAt: !205)
!227 = !DILocation(line: 25, column: 10, scope: !204, inlinedAt: !205)
!228 = !DILocation(line: 25, column: 18, scope: !204, inlinedAt: !205)
!229 = !DILocation(line: 26, column: 10, scope: !204, inlinedAt: !205)
!230 = !DILocation(line: 26, column: 25, scope: !204, inlinedAt: !205)
!231 = !DILocation(line: 26, column: 34, scope: !204, inlinedAt: !205)
!232 = !DILocation(line: 26, column: 7, scope: !204, inlinedAt: !205)
!233 = !DILocation(line: 30, column: 33, scope: !183, inlinedAt: !205)
!234 = !DILocation(line: 189, column: 22, scope: !125)
!235 = !DILocation(line: 189, column: 18, scope: !125)
!236 = !DILocation(line: 190, column: 22, scope: !125)
!237 = !DILocation(line: 190, column: 13, scope: !125)
!238 = !DILocation(line: 191, column: 44, scope: !125)
!239 = !DILocation(line: 191, column: 42, scope: !125)
!240 = !DILocation(line: 191, column: 17, scope: !125)
!241 = !DILocation(line: 194, column: 13, scope: !132)
!242 = !DILocation(line: 194, column: 11, scope: !126)
!243 = !DILocation(line: 195, column: 55, scope: !131)
!244 = !DILocation(line: 195, column: 27, scope: !131)
!245 = !DILocation(line: 195, column: 59, scope: !131)
!246 = !DILocation(line: 0, scope: !131)
!247 = !DILocation(line: 196, column: 59, scope: !131)
!248 = !DILocation(line: 196, column: 55, scope: !131)
!249 = !DILocalVariable(name: "numexp", arg: 1, scope: !250, file: !2, line: 146, type: !133)
!250 = distinct !DISubprogram(name: "transport_sumexp", scope: !2, file: !2, line: 146, type: !251, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{!72, !133, !133, !112, !72}
!253 = !{!249, !254, !255, !256, !257, !258, !259, !260, !264, !265, !266}
!254 = !DILocalVariable(name: "order", arg: 2, scope: !250, file: !2, line: 146, type: !133)
!255 = !DILocalVariable(name: "t", arg: 3, scope: !250, file: !2, line: 146, type: !112)
!256 = !DILocalVariable(name: "x", arg: 4, scope: !250, file: !2, line: 146, type: !72)
!257 = !DILocalVariable(name: "rk", scope: !250, file: !2, line: 148, type: !72)
!258 = !DILocalVariable(name: "sumexp", scope: !250, file: !2, line: 149, type: !72)
!259 = !DILocalVariable(name: "k", scope: !250, file: !2, line: 150, type: !34)
!260 = !DILocalVariable(name: "sum2", scope: !261, file: !2, line: 152, type: !72)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 151, column: 28)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 151, column: 3)
!263 = distinct !DILexicalBlock(scope: !250, file: !2, line: 151, column: 3)
!264 = !DILocalVariable(name: "xk", scope: !261, file: !2, line: 153, type: !72)
!265 = !DILocalVariable(name: "xk1", scope: !261, file: !2, line: 154, type: !72)
!266 = !DILocalVariable(name: "j", scope: !261, file: !2, line: 155, type: !34)
!267 = !DILocation(line: 0, scope: !250, inlinedAt: !268)
!268 = distinct !DILocation(line: 196, column: 27, scope: !131)
!269 = !DILocation(line: 151, column: 13, scope: !262, inlinedAt: !268)
!270 = !DILocation(line: 151, column: 3, scope: !263, inlinedAt: !268)
!271 = !DILocation(line: 148, column: 15, scope: !250, inlinedAt: !268)
!272 = !DILocation(line: 0, scope: !261, inlinedAt: !268)
!273 = !DILocation(line: 153, column: 25, scope: !261, inlinedAt: !268)
!274 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !268)
!275 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !268)
!276 = distinct !DILexicalBlock(scope: !277, file: !2, line: 156, column: 29)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 156, column: 5)
!278 = distinct !DILexicalBlock(scope: !261, file: !2, line: 156, column: 5)
!279 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !268)
!280 = !DILocation(line: 160, column: 12, scope: !261, inlinedAt: !268)
!281 = !DILocation(line: 162, column: 8, scope: !261, inlinedAt: !268)
!282 = distinct !{!282, !270, !283, !225}
!283 = !DILocation(line: 163, column: 3, scope: !263, inlinedAt: !268)
!284 = !DILocation(line: 197, column: 28, scope: !131)
!285 = !DILocation(line: 197, column: 26, scope: !131)
!286 = !DILocation(line: 197, column: 41, scope: !131)
!287 = !DILocation(line: 198, column: 10, scope: !138)
!288 = !DILocation(line: 198, column: 8, scope: !131)
!289 = !DILocation(line: 199, column: 20, scope: !290)
!290 = distinct !DILexicalBlock(scope: !138, file: !2, line: 198, column: 33)
!291 = !DILocation(line: 200, column: 15, scope: !290)
!292 = !DILocation(line: 200, column: 20, scope: !290)
!293 = !DILocation(line: 201, column: 5, scope: !290)
!294 = !DILocation(line: 203, column: 25, scope: !137)
!295 = !DILocation(line: 0, scope: !137)
!296 = !DILocation(line: 204, column: 19, scope: !137)
!297 = !DILocation(line: 205, column: 61, scope: !137)
!298 = !DILocation(line: 205, column: 69, scope: !137)
!299 = !DILocation(line: 205, column: 43, scope: !137)
!300 = !DILocation(line: 205, column: 15, scope: !137)
!301 = !DILocation(line: 205, column: 19, scope: !137)
!302 = !DILocation(line: 209, column: 13, scope: !141)
!303 = !DILocation(line: 209, column: 11, scope: !132)
!304 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !305)
!305 = distinct !DILocation(line: 211, column: 27, scope: !140)
!306 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !305)
!307 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !305)
!308 = !DILocation(line: 212, column: 28, scope: !140)
!309 = !DILocation(line: 0, scope: !250, inlinedAt: !305)
!310 = !DILocation(line: 0, scope: !261, inlinedAt: !305)
!311 = !DILocation(line: 0, scope: !140)
!312 = !DILocation(line: 212, column: 26, scope: !140)
!313 = !DILocation(line: 212, column: 41, scope: !140)
!314 = !DILocation(line: 213, column: 10, scope: !146)
!315 = !DILocation(line: 213, column: 8, scope: !140)
!316 = !DILocation(line: 214, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !146, file: !2, line: 213, column: 33)
!318 = !DILocation(line: 215, column: 15, scope: !317)
!319 = !DILocation(line: 215, column: 19, scope: !317)
!320 = !DILocation(line: 216, column: 5, scope: !317)
!321 = !DILocation(line: 218, column: 25, scope: !145)
!322 = !DILocation(line: 0, scope: !145)
!323 = !DILocation(line: 219, column: 19, scope: !145)
!324 = !DILocation(line: 220, column: 62, scope: !145)
!325 = !DILocation(line: 220, column: 75, scope: !145)
!326 = !DILocation(line: 220, column: 43, scope: !145)
!327 = !DILocation(line: 220, column: 15, scope: !145)
!328 = !DILocation(line: 220, column: 19, scope: !145)
!329 = !DILocation(line: 225, column: 26, scope: !148)
!330 = !DILocation(line: 226, column: 10, scope: !151)
!331 = !DILocation(line: 0, scope: !148)
!332 = !DILocation(line: 226, column: 8, scope: !148)
!333 = !DILocation(line: 227, column: 19, scope: !334)
!334 = distinct !DILexicalBlock(scope: !151, file: !2, line: 226, column: 33)
!335 = !DILocation(line: 228, column: 15, scope: !334)
!336 = !DILocation(line: 228, column: 19, scope: !334)
!337 = !DILocation(line: 229, column: 5, scope: !334)
!338 = !DILocation(line: 231, column: 25, scope: !150)
!339 = !DILocation(line: 0, scope: !150)
!340 = !DILocation(line: 232, column: 19, scope: !150)
!341 = !DILocation(line: 233, column: 62, scope: !150)
!342 = !DILocation(line: 233, column: 75, scope: !150)
!343 = !DILocation(line: 233, column: 43, scope: !150)
!344 = !DILocation(line: 233, column: 15, scope: !150)
!345 = !DILocation(line: 233, column: 19, scope: !150)
!346 = !DILocation(line: 0, scope: !128)
!347 = !DILocation(line: 237, column: 1, scope: !109)
!348 = !DISubprogram(name: "gsl_error", scope: !33, file: !33, line: 77, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351, !351, !34, !34}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!353 = !DISubprogram(name: "exp", scope: !354, file: !354, line: 95, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!355 = !DISubroutineType(types: !356)
!356 = !{!72, !72}
!357 = !DISubprogram(name: "log", scope: !354, file: !354, line: 104, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = distinct !DISubprogram(name: "gsl_sf_transport_3_e", scope: !2, file: !2, line: 241, type: !110, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !359)
!359 = !{!360, !361, !362, !363, !369, !370, !371, !374, !375, !376, !379, !382, !383, !384, !387, !389}
!360 = !DILocalVariable(name: "x", arg: 1, scope: !358, file: !2, line: 241, type: !112)
!361 = !DILocalVariable(name: "result", arg: 2, scope: !358, file: !2, line: 241, type: !113)
!362 = !DILocalVariable(name: "val_infinity", scope: !358, file: !2, line: 243, type: !112)
!363 = !DILocalVariable(name: "x2", scope: !364, file: !2, line: 262, type: !112)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 261, column: 21)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 261, column: 11)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 255, column: 11)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 250, column: 11)
!368 = distinct !DILexicalBlock(scope: !358, file: !2, line: 247, column: 6)
!369 = !DILocalVariable(name: "t", scope: !364, file: !2, line: 263, type: !112)
!370 = !DILocalVariable(name: "result_c", scope: !364, file: !2, line: 264, type: !114)
!371 = !DILocalVariable(name: "numexp", scope: !372, file: !2, line: 272, type: !133)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 271, column: 37)
!373 = distinct !DILexicalBlock(scope: !365, file: !2, line: 271, column: 11)
!374 = !DILocalVariable(name: "sumexp", scope: !372, file: !2, line: 273, type: !112)
!375 = !DILocalVariable(name: "t", scope: !372, file: !2, line: 274, type: !112)
!376 = !DILocalVariable(name: "et", scope: !377, file: !2, line: 280, type: !112)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 279, column: 10)
!378 = distinct !DILexicalBlock(scope: !372, file: !2, line: 275, column: 8)
!379 = !DILocalVariable(name: "numexp", scope: !380, file: !2, line: 287, type: !133)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 286, column: 36)
!381 = distinct !DILexicalBlock(scope: !373, file: !2, line: 286, column: 11)
!382 = !DILocalVariable(name: "sumexp", scope: !380, file: !2, line: 288, type: !112)
!383 = !DILocalVariable(name: "t", scope: !380, file: !2, line: 289, type: !112)
!384 = !DILocalVariable(name: "et", scope: !385, file: !2, line: 295, type: !112)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 294, column: 10)
!386 = distinct !DILexicalBlock(scope: !380, file: !2, line: 290, column: 8)
!387 = !DILocalVariable(name: "t", scope: !388, file: !2, line: 302, type: !112)
!388 = distinct !DILexicalBlock(scope: !381, file: !2, line: 301, column: 8)
!389 = !DILocalVariable(name: "et", scope: !390, file: !2, line: 308, type: !112)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 307, column: 10)
!391 = distinct !DILexicalBlock(scope: !388, file: !2, line: 303, column: 8)
!392 = !DILocation(line: 0, scope: !358)
!393 = !DILocation(line: 247, column: 8, scope: !368)
!394 = !DILocation(line: 247, column: 6, scope: !358)
!395 = !DILocation(line: 248, column: 5, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !2, line: 248, column: 5)
!397 = distinct !DILexicalBlock(scope: !368, file: !2, line: 247, column: 15)
!398 = !DILocation(line: 248, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !2, line: 248, column: 5)
!400 = !DILocation(line: 250, column: 13, scope: !367)
!401 = !DILocation(line: 250, column: 11, scope: !368)
!402 = !DILocation(line: 252, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !367, file: !2, line: 250, column: 21)
!404 = !DILocation(line: 253, column: 5, scope: !403)
!405 = !DILocation(line: 255, column: 13, scope: !366)
!406 = !DILocation(line: 255, column: 11, scope: !367)
!407 = !DILocation(line: 256, column: 22, scope: !408)
!408 = distinct !DILexicalBlock(scope: !366, file: !2, line: 255, column: 41)
!409 = !DILocation(line: 256, column: 24, scope: !408)
!410 = !DILocation(line: 256, column: 17, scope: !408)
!411 = !DILocation(line: 257, column: 41, scope: !408)
!412 = !DILocation(line: 257, column: 13, scope: !408)
!413 = !DILocation(line: 257, column: 17, scope: !408)
!414 = !DILocation(line: 258, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !408, file: !2, line: 258, column: 5)
!416 = !DILocation(line: 258, column: 5, scope: !408)
!417 = !DILocation(line: 258, column: 5, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !2, line: 258, column: 5)
!419 = !DILocation(line: 261, column: 13, scope: !365)
!420 = !DILocation(line: 261, column: 11, scope: !366)
!421 = !DILocation(line: 262, column: 24, scope: !364)
!422 = !DILocation(line: 0, scope: !364)
!423 = !DILocation(line: 263, column: 25, scope: !364)
!424 = !DILocation(line: 263, column: 37, scope: !364)
!425 = !DILocation(line: 11, column: 19, scope: !183, inlinedAt: !426)
!426 = distinct !DILocation(line: 265, column: 5, scope: !364)
!427 = !DILocation(line: 0, scope: !183, inlinedAt: !426)
!428 = !DILocation(line: 11, column: 30, scope: !183, inlinedAt: !426)
!429 = !DILocation(line: 11, column: 39, scope: !183, inlinedAt: !426)
!430 = !DILocation(line: 12, column: 19, scope: !183, inlinedAt: !426)
!431 = !DILocation(line: 16, column: 3, scope: !202, inlinedAt: !426)
!432 = !DILocation(line: 0, scope: !200, inlinedAt: !426)
!433 = !DILocation(line: 18, column: 11, scope: !200, inlinedAt: !426)
!434 = !DILocation(line: 18, column: 21, scope: !200, inlinedAt: !426)
!435 = !DILocation(line: 19, column: 10, scope: !200, inlinedAt: !426)
!436 = !DILocation(line: 19, column: 26, scope: !200, inlinedAt: !426)
!437 = !DILocation(line: 19, column: 37, scope: !200, inlinedAt: !426)
!438 = !DILocation(line: 19, column: 7, scope: !200, inlinedAt: !426)
!439 = !DILocation(line: 16, column: 29, scope: !201, inlinedAt: !426)
!440 = !DILocation(line: 16, column: 23, scope: !201, inlinedAt: !426)
!441 = distinct !{!441, !431, !442, !225}
!442 = !DILocation(line: 21, column: 3, scope: !202, inlinedAt: !426)
!443 = !DILocation(line: 0, scope: !204, inlinedAt: !426)
!444 = !DILocation(line: 25, column: 10, scope: !204, inlinedAt: !426)
!445 = !DILocation(line: 25, column: 18, scope: !204, inlinedAt: !426)
!446 = !DILocation(line: 26, column: 10, scope: !204, inlinedAt: !426)
!447 = !DILocation(line: 26, column: 25, scope: !204, inlinedAt: !426)
!448 = !DILocation(line: 26, column: 34, scope: !204, inlinedAt: !426)
!449 = !DILocation(line: 26, column: 7, scope: !204, inlinedAt: !426)
!450 = !DILocation(line: 30, column: 33, scope: !183, inlinedAt: !426)
!451 = !DILocation(line: 266, column: 23, scope: !364)
!452 = !DILocation(line: 266, column: 18, scope: !364)
!453 = !DILocation(line: 267, column: 23, scope: !364)
!454 = !DILocation(line: 267, column: 13, scope: !364)
!455 = !DILocation(line: 268, column: 38, scope: !364)
!456 = !DILocation(line: 268, column: 36, scope: !364)
!457 = !DILocation(line: 268, column: 17, scope: !364)
!458 = !DILocation(line: 271, column: 13, scope: !373)
!459 = !DILocation(line: 271, column: 11, scope: !365)
!460 = !DILocation(line: 272, column: 55, scope: !372)
!461 = !DILocation(line: 272, column: 27, scope: !372)
!462 = !DILocation(line: 272, column: 59, scope: !372)
!463 = !DILocation(line: 0, scope: !372)
!464 = !DILocation(line: 273, column: 59, scope: !372)
!465 = !DILocation(line: 273, column: 55, scope: !372)
!466 = !DILocation(line: 0, scope: !250, inlinedAt: !467)
!467 = distinct !DILocation(line: 273, column: 27, scope: !372)
!468 = !DILocation(line: 151, column: 13, scope: !262, inlinedAt: !467)
!469 = !DILocation(line: 151, column: 3, scope: !263, inlinedAt: !467)
!470 = !DILocation(line: 148, column: 15, scope: !250, inlinedAt: !467)
!471 = !DILocation(line: 0, scope: !261, inlinedAt: !467)
!472 = !DILocation(line: 153, column: 25, scope: !261, inlinedAt: !467)
!473 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !467)
!474 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !467)
!475 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !467)
!476 = !DILocation(line: 160, column: 12, scope: !261, inlinedAt: !467)
!477 = !DILocation(line: 162, column: 8, scope: !261, inlinedAt: !467)
!478 = distinct !{!478, !469, !479, !225}
!479 = !DILocation(line: 163, column: 3, scope: !263, inlinedAt: !467)
!480 = !DILocation(line: 274, column: 28, scope: !372)
!481 = !DILocation(line: 274, column: 26, scope: !372)
!482 = !DILocation(line: 274, column: 41, scope: !372)
!483 = !DILocation(line: 275, column: 10, scope: !378)
!484 = !DILocation(line: 275, column: 8, scope: !372)
!485 = !DILocation(line: 276, column: 19, scope: !486)
!486 = distinct !DILexicalBlock(scope: !378, file: !2, line: 275, column: 33)
!487 = !DILocation(line: 277, column: 15, scope: !486)
!488 = !DILocation(line: 277, column: 19, scope: !486)
!489 = !DILocation(line: 278, column: 5, scope: !486)
!490 = !DILocation(line: 280, column: 25, scope: !377)
!491 = !DILocation(line: 0, scope: !377)
!492 = !DILocation(line: 281, column: 19, scope: !377)
!493 = !DILocation(line: 282, column: 61, scope: !377)
!494 = !DILocation(line: 282, column: 69, scope: !377)
!495 = !DILocation(line: 282, column: 43, scope: !377)
!496 = !DILocation(line: 282, column: 15, scope: !377)
!497 = !DILocation(line: 282, column: 19, scope: !377)
!498 = !DILocation(line: 286, column: 13, scope: !381)
!499 = !DILocation(line: 286, column: 11, scope: !373)
!500 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !501)
!501 = distinct !DILocation(line: 288, column: 27, scope: !380)
!502 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !501)
!503 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !501)
!504 = !DILocation(line: 289, column: 28, scope: !380)
!505 = !DILocation(line: 0, scope: !250, inlinedAt: !501)
!506 = !DILocation(line: 0, scope: !261, inlinedAt: !501)
!507 = !DILocation(line: 0, scope: !380)
!508 = !DILocation(line: 289, column: 26, scope: !380)
!509 = !DILocation(line: 289, column: 41, scope: !380)
!510 = !DILocation(line: 290, column: 10, scope: !386)
!511 = !DILocation(line: 290, column: 8, scope: !380)
!512 = !DILocation(line: 291, column: 19, scope: !513)
!513 = distinct !DILexicalBlock(scope: !386, file: !2, line: 290, column: 33)
!514 = !DILocation(line: 292, column: 15, scope: !513)
!515 = !DILocation(line: 292, column: 19, scope: !513)
!516 = !DILocation(line: 293, column: 5, scope: !513)
!517 = !DILocation(line: 295, column: 25, scope: !385)
!518 = !DILocation(line: 0, scope: !385)
!519 = !DILocation(line: 296, column: 19, scope: !385)
!520 = !DILocation(line: 297, column: 62, scope: !385)
!521 = !DILocation(line: 297, column: 75, scope: !385)
!522 = !DILocation(line: 297, column: 43, scope: !385)
!523 = !DILocation(line: 297, column: 15, scope: !385)
!524 = !DILocation(line: 297, column: 19, scope: !385)
!525 = !DILocation(line: 302, column: 26, scope: !388)
!526 = !DILocation(line: 303, column: 10, scope: !391)
!527 = !DILocation(line: 0, scope: !388)
!528 = !DILocation(line: 303, column: 8, scope: !388)
!529 = !DILocation(line: 304, column: 19, scope: !530)
!530 = distinct !DILexicalBlock(scope: !391, file: !2, line: 303, column: 33)
!531 = !DILocation(line: 305, column: 15, scope: !530)
!532 = !DILocation(line: 305, column: 19, scope: !530)
!533 = !DILocation(line: 306, column: 5, scope: !530)
!534 = !DILocation(line: 308, column: 25, scope: !390)
!535 = !DILocation(line: 0, scope: !390)
!536 = !DILocation(line: 309, column: 19, scope: !390)
!537 = !DILocation(line: 310, column: 62, scope: !390)
!538 = !DILocation(line: 310, column: 75, scope: !390)
!539 = !DILocation(line: 310, column: 43, scope: !390)
!540 = !DILocation(line: 310, column: 15, scope: !390)
!541 = !DILocation(line: 310, column: 19, scope: !390)
!542 = !DILocation(line: 0, scope: !368)
!543 = !DILocation(line: 314, column: 1, scope: !358)
!544 = distinct !DISubprogram(name: "gsl_sf_transport_4_e", scope: !2, file: !2, line: 318, type: !110, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !545)
!545 = !{!546, !547, !548, !549, !555, !556, !557, !560, !561, !562, !565, !568, !569, !570, !573, !575}
!546 = !DILocalVariable(name: "x", arg: 1, scope: !544, file: !2, line: 318, type: !112)
!547 = !DILocalVariable(name: "result", arg: 2, scope: !544, file: !2, line: 318, type: !113)
!548 = !DILocalVariable(name: "val_infinity", scope: !544, file: !2, line: 320, type: !112)
!549 = !DILocalVariable(name: "x2", scope: !550, file: !2, line: 339, type: !112)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 338, column: 21)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 338, column: 11)
!552 = distinct !DILexicalBlock(scope: !553, file: !2, line: 332, column: 11)
!553 = distinct !DILexicalBlock(scope: !554, file: !2, line: 327, column: 11)
!554 = distinct !DILexicalBlock(scope: !544, file: !2, line: 324, column: 6)
!555 = !DILocalVariable(name: "t", scope: !550, file: !2, line: 340, type: !112)
!556 = !DILocalVariable(name: "result_c", scope: !550, file: !2, line: 341, type: !114)
!557 = !DILocalVariable(name: "numexp", scope: !558, file: !2, line: 349, type: !133)
!558 = distinct !DILexicalBlock(scope: !559, file: !2, line: 348, column: 37)
!559 = distinct !DILexicalBlock(scope: !551, file: !2, line: 348, column: 11)
!560 = !DILocalVariable(name: "sumexp", scope: !558, file: !2, line: 350, type: !112)
!561 = !DILocalVariable(name: "t", scope: !558, file: !2, line: 351, type: !112)
!562 = !DILocalVariable(name: "et", scope: !563, file: !2, line: 357, type: !112)
!563 = distinct !DILexicalBlock(scope: !564, file: !2, line: 356, column: 10)
!564 = distinct !DILexicalBlock(scope: !558, file: !2, line: 352, column: 8)
!565 = !DILocalVariable(name: "numexp", scope: !566, file: !2, line: 364, type: !133)
!566 = distinct !DILexicalBlock(scope: !567, file: !2, line: 363, column: 36)
!567 = distinct !DILexicalBlock(scope: !559, file: !2, line: 363, column: 11)
!568 = !DILocalVariable(name: "sumexp", scope: !566, file: !2, line: 365, type: !112)
!569 = !DILocalVariable(name: "t", scope: !566, file: !2, line: 366, type: !112)
!570 = !DILocalVariable(name: "et", scope: !571, file: !2, line: 372, type: !112)
!571 = distinct !DILexicalBlock(scope: !572, file: !2, line: 371, column: 10)
!572 = distinct !DILexicalBlock(scope: !566, file: !2, line: 367, column: 8)
!573 = !DILocalVariable(name: "t", scope: !574, file: !2, line: 379, type: !112)
!574 = distinct !DILexicalBlock(scope: !567, file: !2, line: 378, column: 8)
!575 = !DILocalVariable(name: "et", scope: !576, file: !2, line: 385, type: !112)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 384, column: 10)
!577 = distinct !DILexicalBlock(scope: !574, file: !2, line: 380, column: 8)
!578 = !DILocation(line: 0, scope: !544)
!579 = !DILocation(line: 324, column: 8, scope: !554)
!580 = !DILocation(line: 324, column: 6, scope: !544)
!581 = !DILocation(line: 325, column: 5, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 325, column: 5)
!583 = distinct !DILexicalBlock(scope: !554, file: !2, line: 324, column: 15)
!584 = !DILocation(line: 325, column: 5, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !2, line: 325, column: 5)
!586 = !DILocation(line: 327, column: 13, scope: !553)
!587 = !DILocation(line: 327, column: 11, scope: !554)
!588 = !DILocation(line: 329, column: 17, scope: !589)
!589 = distinct !DILexicalBlock(scope: !553, file: !2, line: 327, column: 21)
!590 = !DILocation(line: 330, column: 5, scope: !589)
!591 = !DILocation(line: 332, column: 13, scope: !552)
!592 = !DILocation(line: 332, column: 11, scope: !553)
!593 = !DILocation(line: 333, column: 20, scope: !594)
!594 = distinct !DILexicalBlock(scope: !552, file: !2, line: 332, column: 41)
!595 = !DILocation(line: 333, column: 22, scope: !594)
!596 = !DILocation(line: 333, column: 24, scope: !594)
!597 = !DILocation(line: 333, column: 17, scope: !594)
!598 = !DILocation(line: 334, column: 41, scope: !594)
!599 = !DILocation(line: 334, column: 13, scope: !594)
!600 = !DILocation(line: 334, column: 17, scope: !594)
!601 = !DILocation(line: 335, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !594, file: !2, line: 335, column: 5)
!603 = !DILocation(line: 335, column: 5, scope: !594)
!604 = !DILocation(line: 335, column: 5, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !2, line: 335, column: 5)
!606 = !DILocation(line: 338, column: 13, scope: !551)
!607 = !DILocation(line: 338, column: 11, scope: !552)
!608 = !DILocation(line: 339, column: 24, scope: !550)
!609 = !DILocation(line: 0, scope: !550)
!610 = !DILocation(line: 340, column: 25, scope: !550)
!611 = !DILocation(line: 340, column: 37, scope: !550)
!612 = !DILocation(line: 11, column: 19, scope: !183, inlinedAt: !613)
!613 = distinct !DILocation(line: 342, column: 5, scope: !550)
!614 = !DILocation(line: 0, scope: !183, inlinedAt: !613)
!615 = !DILocation(line: 11, column: 30, scope: !183, inlinedAt: !613)
!616 = !DILocation(line: 11, column: 39, scope: !183, inlinedAt: !613)
!617 = !DILocation(line: 12, column: 19, scope: !183, inlinedAt: !613)
!618 = !DILocation(line: 16, column: 3, scope: !202, inlinedAt: !613)
!619 = !DILocation(line: 0, scope: !200, inlinedAt: !613)
!620 = !DILocation(line: 18, column: 11, scope: !200, inlinedAt: !613)
!621 = !DILocation(line: 18, column: 21, scope: !200, inlinedAt: !613)
!622 = !DILocation(line: 19, column: 10, scope: !200, inlinedAt: !613)
!623 = !DILocation(line: 19, column: 26, scope: !200, inlinedAt: !613)
!624 = !DILocation(line: 19, column: 37, scope: !200, inlinedAt: !613)
!625 = !DILocation(line: 19, column: 7, scope: !200, inlinedAt: !613)
!626 = !DILocation(line: 16, column: 29, scope: !201, inlinedAt: !613)
!627 = !DILocation(line: 16, column: 23, scope: !201, inlinedAt: !613)
!628 = distinct !{!628, !618, !629, !225}
!629 = !DILocation(line: 21, column: 3, scope: !202, inlinedAt: !613)
!630 = !DILocation(line: 0, scope: !204, inlinedAt: !613)
!631 = !DILocation(line: 25, column: 10, scope: !204, inlinedAt: !613)
!632 = !DILocation(line: 25, column: 18, scope: !204, inlinedAt: !613)
!633 = !DILocation(line: 26, column: 10, scope: !204, inlinedAt: !613)
!634 = !DILocation(line: 26, column: 25, scope: !204, inlinedAt: !613)
!635 = !DILocation(line: 26, column: 34, scope: !204, inlinedAt: !613)
!636 = !DILocation(line: 26, column: 7, scope: !204, inlinedAt: !613)
!637 = !DILocation(line: 30, column: 33, scope: !183, inlinedAt: !613)
!638 = !DILocation(line: 343, column: 22, scope: !550)
!639 = !DILocation(line: 343, column: 25, scope: !550)
!640 = !DILocation(line: 343, column: 18, scope: !550)
!641 = !DILocation(line: 344, column: 25, scope: !550)
!642 = !DILocation(line: 344, column: 13, scope: !550)
!643 = !DILocation(line: 345, column: 44, scope: !550)
!644 = !DILocation(line: 345, column: 42, scope: !550)
!645 = !DILocation(line: 345, column: 17, scope: !550)
!646 = !DILocation(line: 348, column: 13, scope: !559)
!647 = !DILocation(line: 348, column: 11, scope: !551)
!648 = !DILocation(line: 349, column: 55, scope: !558)
!649 = !DILocation(line: 349, column: 27, scope: !558)
!650 = !DILocation(line: 349, column: 59, scope: !558)
!651 = !DILocation(line: 0, scope: !558)
!652 = !DILocation(line: 350, column: 59, scope: !558)
!653 = !DILocation(line: 350, column: 55, scope: !558)
!654 = !DILocation(line: 0, scope: !250, inlinedAt: !655)
!655 = distinct !DILocation(line: 350, column: 27, scope: !558)
!656 = !DILocation(line: 151, column: 13, scope: !262, inlinedAt: !655)
!657 = !DILocation(line: 151, column: 3, scope: !263, inlinedAt: !655)
!658 = !DILocation(line: 148, column: 15, scope: !250, inlinedAt: !655)
!659 = !DILocation(line: 0, scope: !261, inlinedAt: !655)
!660 = !DILocation(line: 153, column: 25, scope: !261, inlinedAt: !655)
!661 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !655)
!662 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !655)
!663 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !655)
!664 = !DILocation(line: 160, column: 12, scope: !261, inlinedAt: !655)
!665 = !DILocation(line: 162, column: 8, scope: !261, inlinedAt: !655)
!666 = !DILocation(line: 151, column: 24, scope: !262, inlinedAt: !655)
!667 = distinct !{!667, !657, !668, !225}
!668 = !DILocation(line: 163, column: 3, scope: !263, inlinedAt: !655)
!669 = !DILocation(line: 351, column: 26, scope: !558)
!670 = !DILocation(line: 351, column: 41, scope: !558)
!671 = !DILocation(line: 352, column: 10, scope: !564)
!672 = !DILocation(line: 352, column: 8, scope: !558)
!673 = !DILocation(line: 353, column: 19, scope: !674)
!674 = distinct !DILexicalBlock(scope: !564, file: !2, line: 352, column: 33)
!675 = !DILocation(line: 354, column: 15, scope: !674)
!676 = !DILocation(line: 354, column: 19, scope: !674)
!677 = !DILocation(line: 355, column: 5, scope: !674)
!678 = !DILocation(line: 357, column: 25, scope: !563)
!679 = !DILocation(line: 0, scope: !563)
!680 = !DILocation(line: 358, column: 19, scope: !563)
!681 = !DILocation(line: 359, column: 62, scope: !563)
!682 = !DILocation(line: 359, column: 75, scope: !563)
!683 = !DILocation(line: 359, column: 43, scope: !563)
!684 = !DILocation(line: 359, column: 15, scope: !563)
!685 = !DILocation(line: 359, column: 19, scope: !563)
!686 = !DILocation(line: 363, column: 13, scope: !567)
!687 = !DILocation(line: 363, column: 11, scope: !559)
!688 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !689)
!689 = distinct !DILocation(line: 365, column: 27, scope: !566)
!690 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !689)
!691 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !689)
!692 = !DILocation(line: 366, column: 28, scope: !566)
!693 = !DILocation(line: 0, scope: !250, inlinedAt: !689)
!694 = !DILocation(line: 0, scope: !261, inlinedAt: !689)
!695 = !DILocation(line: 0, scope: !566)
!696 = !DILocation(line: 366, column: 26, scope: !566)
!697 = !DILocation(line: 366, column: 41, scope: !566)
!698 = !DILocation(line: 367, column: 10, scope: !572)
!699 = !DILocation(line: 367, column: 8, scope: !566)
!700 = !DILocation(line: 368, column: 19, scope: !701)
!701 = distinct !DILexicalBlock(scope: !572, file: !2, line: 367, column: 33)
!702 = !DILocation(line: 369, column: 15, scope: !701)
!703 = !DILocation(line: 369, column: 19, scope: !701)
!704 = !DILocation(line: 370, column: 5, scope: !701)
!705 = !DILocation(line: 372, column: 25, scope: !571)
!706 = !DILocation(line: 0, scope: !571)
!707 = !DILocation(line: 373, column: 19, scope: !571)
!708 = !DILocation(line: 374, column: 62, scope: !571)
!709 = !DILocation(line: 374, column: 75, scope: !571)
!710 = !DILocation(line: 374, column: 43, scope: !571)
!711 = !DILocation(line: 374, column: 15, scope: !571)
!712 = !DILocation(line: 374, column: 19, scope: !571)
!713 = !DILocation(line: 379, column: 26, scope: !574)
!714 = !DILocation(line: 380, column: 10, scope: !577)
!715 = !DILocation(line: 0, scope: !574)
!716 = !DILocation(line: 380, column: 8, scope: !574)
!717 = !DILocation(line: 381, column: 19, scope: !718)
!718 = distinct !DILexicalBlock(scope: !577, file: !2, line: 380, column: 33)
!719 = !DILocation(line: 382, column: 15, scope: !718)
!720 = !DILocation(line: 382, column: 19, scope: !718)
!721 = !DILocation(line: 383, column: 5, scope: !718)
!722 = !DILocation(line: 385, column: 25, scope: !576)
!723 = !DILocation(line: 0, scope: !576)
!724 = !DILocation(line: 386, column: 19, scope: !576)
!725 = !DILocation(line: 387, column: 62, scope: !576)
!726 = !DILocation(line: 387, column: 75, scope: !576)
!727 = !DILocation(line: 387, column: 43, scope: !576)
!728 = !DILocation(line: 387, column: 15, scope: !576)
!729 = !DILocation(line: 387, column: 19, scope: !576)
!730 = !DILocation(line: 0, scope: !554)
!731 = !DILocation(line: 391, column: 1, scope: !544)
!732 = distinct !DISubprogram(name: "gsl_sf_transport_5_e", scope: !2, file: !2, line: 395, type: !110, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !733)
!733 = !{!734, !735, !736, !737, !743, !744, !745, !748, !749, !750, !753, !756, !757, !758, !761, !763}
!734 = !DILocalVariable(name: "x", arg: 1, scope: !732, file: !2, line: 395, type: !112)
!735 = !DILocalVariable(name: "result", arg: 2, scope: !732, file: !2, line: 395, type: !113)
!736 = !DILocalVariable(name: "val_infinity", scope: !732, file: !2, line: 397, type: !112)
!737 = !DILocalVariable(name: "x2", scope: !738, file: !2, line: 416, type: !112)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 415, column: 21)
!739 = distinct !DILexicalBlock(scope: !740, file: !2, line: 415, column: 11)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 409, column: 11)
!741 = distinct !DILexicalBlock(scope: !742, file: !2, line: 404, column: 11)
!742 = distinct !DILexicalBlock(scope: !732, file: !2, line: 401, column: 6)
!743 = !DILocalVariable(name: "t", scope: !738, file: !2, line: 417, type: !112)
!744 = !DILocalVariable(name: "result_c", scope: !738, file: !2, line: 418, type: !114)
!745 = !DILocalVariable(name: "numexp", scope: !746, file: !2, line: 426, type: !133)
!746 = distinct !DILexicalBlock(scope: !747, file: !2, line: 425, column: 37)
!747 = distinct !DILexicalBlock(scope: !739, file: !2, line: 425, column: 11)
!748 = !DILocalVariable(name: "sumexp", scope: !746, file: !2, line: 427, type: !112)
!749 = !DILocalVariable(name: "t", scope: !746, file: !2, line: 428, type: !112)
!750 = !DILocalVariable(name: "et", scope: !751, file: !2, line: 434, type: !112)
!751 = distinct !DILexicalBlock(scope: !752, file: !2, line: 433, column: 10)
!752 = distinct !DILexicalBlock(scope: !746, file: !2, line: 429, column: 8)
!753 = !DILocalVariable(name: "numexp", scope: !754, file: !2, line: 441, type: !133)
!754 = distinct !DILexicalBlock(scope: !755, file: !2, line: 440, column: 36)
!755 = distinct !DILexicalBlock(scope: !747, file: !2, line: 440, column: 11)
!756 = !DILocalVariable(name: "sumexp", scope: !754, file: !2, line: 442, type: !112)
!757 = !DILocalVariable(name: "t", scope: !754, file: !2, line: 443, type: !112)
!758 = !DILocalVariable(name: "et", scope: !759, file: !2, line: 449, type: !112)
!759 = distinct !DILexicalBlock(scope: !760, file: !2, line: 448, column: 10)
!760 = distinct !DILexicalBlock(scope: !754, file: !2, line: 444, column: 8)
!761 = !DILocalVariable(name: "t", scope: !762, file: !2, line: 456, type: !112)
!762 = distinct !DILexicalBlock(scope: !755, file: !2, line: 455, column: 8)
!763 = !DILocalVariable(name: "et", scope: !764, file: !2, line: 462, type: !112)
!764 = distinct !DILexicalBlock(scope: !765, file: !2, line: 461, column: 10)
!765 = distinct !DILexicalBlock(scope: !762, file: !2, line: 457, column: 8)
!766 = !DILocation(line: 0, scope: !732)
!767 = !DILocation(line: 401, column: 8, scope: !742)
!768 = !DILocation(line: 401, column: 6, scope: !732)
!769 = !DILocation(line: 402, column: 5, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !2, line: 402, column: 5)
!771 = distinct !DILexicalBlock(scope: !742, file: !2, line: 401, column: 15)
!772 = !DILocation(line: 402, column: 5, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !2, line: 402, column: 5)
!774 = !DILocation(line: 404, column: 13, scope: !741)
!775 = !DILocation(line: 404, column: 11, scope: !742)
!776 = !DILocation(line: 406, column: 17, scope: !777)
!777 = distinct !DILexicalBlock(scope: !741, file: !2, line: 404, column: 21)
!778 = !DILocation(line: 407, column: 5, scope: !777)
!779 = !DILocation(line: 409, column: 13, scope: !740)
!780 = !DILocation(line: 409, column: 11, scope: !741)
!781 = !DILocation(line: 410, column: 20, scope: !782)
!782 = distinct !DILexicalBlock(scope: !740, file: !2, line: 409, column: 41)
!783 = !DILocation(line: 410, column: 22, scope: !782)
!784 = !DILocation(line: 410, column: 24, scope: !782)
!785 = !DILocation(line: 410, column: 26, scope: !782)
!786 = !DILocation(line: 410, column: 17, scope: !782)
!787 = !DILocation(line: 411, column: 41, scope: !782)
!788 = !DILocation(line: 411, column: 13, scope: !782)
!789 = !DILocation(line: 411, column: 17, scope: !782)
!790 = !DILocation(line: 412, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !782, file: !2, line: 412, column: 5)
!792 = !DILocation(line: 412, column: 5, scope: !782)
!793 = !DILocation(line: 412, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !2, line: 412, column: 5)
!795 = !DILocation(line: 415, column: 13, scope: !739)
!796 = !DILocation(line: 415, column: 11, scope: !740)
!797 = !DILocation(line: 416, column: 24, scope: !738)
!798 = !DILocation(line: 0, scope: !738)
!799 = !DILocation(line: 417, column: 25, scope: !738)
!800 = !DILocation(line: 417, column: 37, scope: !738)
!801 = !DILocation(line: 11, column: 19, scope: !183, inlinedAt: !802)
!802 = distinct !DILocation(line: 419, column: 5, scope: !738)
!803 = !DILocation(line: 0, scope: !183, inlinedAt: !802)
!804 = !DILocation(line: 11, column: 30, scope: !183, inlinedAt: !802)
!805 = !DILocation(line: 11, column: 39, scope: !183, inlinedAt: !802)
!806 = !DILocation(line: 12, column: 19, scope: !183, inlinedAt: !802)
!807 = !DILocation(line: 16, column: 3, scope: !202, inlinedAt: !802)
!808 = !DILocation(line: 0, scope: !200, inlinedAt: !802)
!809 = !DILocation(line: 18, column: 11, scope: !200, inlinedAt: !802)
!810 = !DILocation(line: 18, column: 21, scope: !200, inlinedAt: !802)
!811 = !DILocation(line: 19, column: 10, scope: !200, inlinedAt: !802)
!812 = !DILocation(line: 19, column: 26, scope: !200, inlinedAt: !802)
!813 = !DILocation(line: 19, column: 37, scope: !200, inlinedAt: !802)
!814 = !DILocation(line: 19, column: 7, scope: !200, inlinedAt: !802)
!815 = !DILocation(line: 16, column: 29, scope: !201, inlinedAt: !802)
!816 = !DILocation(line: 16, column: 23, scope: !201, inlinedAt: !802)
!817 = distinct !{!817, !807, !818, !225}
!818 = !DILocation(line: 21, column: 3, scope: !202, inlinedAt: !802)
!819 = !DILocation(line: 0, scope: !204, inlinedAt: !802)
!820 = !DILocation(line: 25, column: 10, scope: !204, inlinedAt: !802)
!821 = !DILocation(line: 25, column: 18, scope: !204, inlinedAt: !802)
!822 = !DILocation(line: 26, column: 10, scope: !204, inlinedAt: !802)
!823 = !DILocation(line: 26, column: 25, scope: !204, inlinedAt: !802)
!824 = !DILocation(line: 26, column: 34, scope: !204, inlinedAt: !802)
!825 = !DILocation(line: 26, column: 7, scope: !204, inlinedAt: !802)
!826 = !DILocation(line: 30, column: 33, scope: !183, inlinedAt: !802)
!827 = !DILocation(line: 420, column: 22, scope: !738)
!828 = !DILocation(line: 420, column: 26, scope: !738)
!829 = !DILocation(line: 420, column: 18, scope: !738)
!830 = !DILocation(line: 421, column: 26, scope: !738)
!831 = !DILocation(line: 421, column: 13, scope: !738)
!832 = !DILocation(line: 422, column: 44, scope: !738)
!833 = !DILocation(line: 422, column: 42, scope: !738)
!834 = !DILocation(line: 422, column: 17, scope: !738)
!835 = !DILocation(line: 425, column: 13, scope: !747)
!836 = !DILocation(line: 425, column: 11, scope: !739)
!837 = !DILocation(line: 426, column: 55, scope: !746)
!838 = !DILocation(line: 426, column: 27, scope: !746)
!839 = !DILocation(line: 426, column: 59, scope: !746)
!840 = !DILocation(line: 0, scope: !746)
!841 = !DILocation(line: 427, column: 59, scope: !746)
!842 = !DILocation(line: 427, column: 55, scope: !746)
!843 = !DILocation(line: 0, scope: !250, inlinedAt: !844)
!844 = distinct !DILocation(line: 427, column: 27, scope: !746)
!845 = !DILocation(line: 151, column: 13, scope: !262, inlinedAt: !844)
!846 = !DILocation(line: 151, column: 3, scope: !263, inlinedAt: !844)
!847 = !DILocation(line: 148, column: 15, scope: !250, inlinedAt: !844)
!848 = !DILocation(line: 0, scope: !261, inlinedAt: !844)
!849 = !DILocation(line: 153, column: 25, scope: !261, inlinedAt: !844)
!850 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !844)
!851 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !844)
!852 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !844)
!853 = !DILocation(line: 160, column: 12, scope: !261, inlinedAt: !844)
!854 = !DILocation(line: 162, column: 8, scope: !261, inlinedAt: !844)
!855 = !DILocation(line: 151, column: 24, scope: !262, inlinedAt: !844)
!856 = distinct !{!856, !846, !857, !225}
!857 = !DILocation(line: 163, column: 3, scope: !263, inlinedAt: !844)
!858 = !DILocation(line: 428, column: 26, scope: !746)
!859 = !DILocation(line: 428, column: 41, scope: !746)
!860 = !DILocation(line: 429, column: 10, scope: !752)
!861 = !DILocation(line: 429, column: 8, scope: !746)
!862 = !DILocation(line: 430, column: 19, scope: !863)
!863 = distinct !DILexicalBlock(scope: !752, file: !2, line: 429, column: 33)
!864 = !DILocation(line: 431, column: 15, scope: !863)
!865 = !DILocation(line: 431, column: 19, scope: !863)
!866 = !DILocation(line: 432, column: 5, scope: !863)
!867 = !DILocation(line: 434, column: 25, scope: !751)
!868 = !DILocation(line: 0, scope: !751)
!869 = !DILocation(line: 435, column: 19, scope: !751)
!870 = !DILocation(line: 436, column: 62, scope: !751)
!871 = !DILocation(line: 436, column: 75, scope: !751)
!872 = !DILocation(line: 436, column: 43, scope: !751)
!873 = !DILocation(line: 436, column: 15, scope: !751)
!874 = !DILocation(line: 436, column: 19, scope: !751)
!875 = !DILocation(line: 440, column: 13, scope: !755)
!876 = !DILocation(line: 440, column: 11, scope: !747)
!877 = !DILocation(line: 153, column: 21, scope: !261, inlinedAt: !878)
!878 = distinct !DILocation(line: 442, column: 27, scope: !754)
!879 = !DILocation(line: 157, column: 18, scope: !276, inlinedAt: !878)
!880 = !DILocation(line: 157, column: 22, scope: !276, inlinedAt: !878)
!881 = !DILocation(line: 443, column: 28, scope: !754)
!882 = !DILocation(line: 0, scope: !250, inlinedAt: !878)
!883 = !DILocation(line: 0, scope: !261, inlinedAt: !878)
!884 = !DILocation(line: 0, scope: !754)
!885 = !DILocation(line: 443, column: 26, scope: !754)
!886 = !DILocation(line: 443, column: 41, scope: !754)
!887 = !DILocation(line: 444, column: 10, scope: !760)
!888 = !DILocation(line: 444, column: 8, scope: !754)
!889 = !DILocation(line: 445, column: 19, scope: !890)
!890 = distinct !DILexicalBlock(scope: !760, file: !2, line: 444, column: 33)
!891 = !DILocation(line: 446, column: 15, scope: !890)
!892 = !DILocation(line: 446, column: 19, scope: !890)
!893 = !DILocation(line: 447, column: 5, scope: !890)
!894 = !DILocation(line: 449, column: 25, scope: !759)
!895 = !DILocation(line: 0, scope: !759)
!896 = !DILocation(line: 450, column: 19, scope: !759)
!897 = !DILocation(line: 451, column: 62, scope: !759)
!898 = !DILocation(line: 451, column: 75, scope: !759)
!899 = !DILocation(line: 451, column: 43, scope: !759)
!900 = !DILocation(line: 451, column: 15, scope: !759)
!901 = !DILocation(line: 451, column: 19, scope: !759)
!902 = !DILocation(line: 456, column: 26, scope: !762)
!903 = !DILocation(line: 457, column: 10, scope: !765)
!904 = !DILocation(line: 0, scope: !762)
!905 = !DILocation(line: 457, column: 8, scope: !762)
!906 = !DILocation(line: 458, column: 19, scope: !907)
!907 = distinct !DILexicalBlock(scope: !765, file: !2, line: 457, column: 33)
!908 = !DILocation(line: 459, column: 15, scope: !907)
!909 = !DILocation(line: 459, column: 19, scope: !907)
!910 = !DILocation(line: 460, column: 5, scope: !907)
!911 = !DILocation(line: 462, column: 25, scope: !764)
!912 = !DILocation(line: 0, scope: !764)
!913 = !DILocation(line: 463, column: 19, scope: !764)
!914 = !DILocation(line: 464, column: 62, scope: !764)
!915 = !DILocation(line: 464, column: 75, scope: !764)
!916 = !DILocation(line: 464, column: 43, scope: !764)
!917 = !DILocation(line: 464, column: 15, scope: !764)
!918 = !DILocation(line: 464, column: 19, scope: !764)
!919 = !DILocation(line: 0, scope: !742)
!920 = !DILocation(line: 468, column: 1, scope: !732)
!921 = distinct !DISubprogram(name: "gsl_sf_transport_2", scope: !2, file: !2, line: 474, type: !922, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{!72, !112}
!924 = !{!925, !926, !927}
!925 = !DILocalVariable(name: "x", arg: 1, scope: !921, file: !2, line: 474, type: !112)
!926 = !DILocalVariable(name: "result", scope: !921, file: !2, line: 476, type: !114)
!927 = !DILocalVariable(name: "status", scope: !921, file: !2, line: 476, type: !34)
!928 = distinct !DIAssignID()
!929 = !DILocation(line: 0, scope: !921)
!930 = !DILocation(line: 476, column: 3, scope: !921)
!931 = !{i32 0, i32 2}
!932 = !DILocation(line: 476, column: 3, scope: !933)
!933 = distinct !DILexicalBlock(scope: !921, file: !2, line: 476, column: 3)
!934 = !DILocation(line: 476, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 476, column: 3)
!936 = distinct !DILexicalBlock(scope: !933, file: !2, line: 476, column: 3)
!937 = !DILocation(line: 477, column: 1, scope: !921)
!938 = distinct !DISubprogram(name: "gsl_sf_transport_3", scope: !2, file: !2, line: 479, type: !922, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !939)
!939 = !{!940, !941, !942}
!940 = !DILocalVariable(name: "x", arg: 1, scope: !938, file: !2, line: 479, type: !112)
!941 = !DILocalVariable(name: "result", scope: !938, file: !2, line: 481, type: !114)
!942 = !DILocalVariable(name: "status", scope: !938, file: !2, line: 481, type: !34)
!943 = distinct !DIAssignID()
!944 = !DILocation(line: 0, scope: !938)
!945 = !DILocation(line: 481, column: 3, scope: !938)
!946 = !{i32 0, i32 16}
!947 = !DILocation(line: 481, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !938, file: !2, line: 481, column: 3)
!949 = !DILocation(line: 481, column: 3, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 481, column: 3)
!951 = distinct !DILexicalBlock(scope: !948, file: !2, line: 481, column: 3)
!952 = !DILocation(line: 482, column: 1, scope: !938)
!953 = distinct !DISubprogram(name: "gsl_sf_transport_4", scope: !2, file: !2, line: 484, type: !922, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !954)
!954 = !{!955, !956, !957}
!955 = !DILocalVariable(name: "x", arg: 1, scope: !953, file: !2, line: 484, type: !112)
!956 = !DILocalVariable(name: "result", scope: !953, file: !2, line: 486, type: !114)
!957 = !DILocalVariable(name: "status", scope: !953, file: !2, line: 486, type: !34)
!958 = distinct !DIAssignID()
!959 = !DILocation(line: 0, scope: !953)
!960 = !DILocation(line: 486, column: 3, scope: !953)
!961 = !DILocation(line: 486, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !953, file: !2, line: 486, column: 3)
!963 = !DILocation(line: 486, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 486, column: 3)
!965 = distinct !DILexicalBlock(scope: !962, file: !2, line: 486, column: 3)
!966 = !DILocation(line: 487, column: 1, scope: !953)
!967 = distinct !DISubprogram(name: "gsl_sf_transport_5", scope: !2, file: !2, line: 489, type: !922, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !968)
!968 = !{!969, !970, !971}
!969 = !DILocalVariable(name: "x", arg: 1, scope: !967, file: !2, line: 489, type: !112)
!970 = !DILocalVariable(name: "result", scope: !967, file: !2, line: 491, type: !114)
!971 = !DILocalVariable(name: "status", scope: !967, file: !2, line: 491, type: !34)
!972 = distinct !DIAssignID()
!973 = !DILocation(line: 0, scope: !967)
!974 = !DILocation(line: 491, column: 3, scope: !967)
!975 = !DILocation(line: 491, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !967, file: !2, line: 491, column: 3)
!977 = !DILocation(line: 491, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !2, line: 491, column: 3)
!979 = distinct !DILexicalBlock(scope: !976, file: !2, line: 491, column: 3)
!980 = !DILocation(line: 492, column: 1, scope: !967)
