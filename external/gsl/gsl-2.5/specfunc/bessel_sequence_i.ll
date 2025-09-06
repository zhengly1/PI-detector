; ModuleID = 'bessel_sequence.ll'
source_filename = "bessel_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"bessel_sequence.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12
@__const.gsl_sf_bessel_sequence_Jnu_e.dx_array = private unnamed_addr constant [3 x double] [double 1.000000e-03, double 3.000000e-02, double 1.000000e-01], align 16
@__const.gsl_sf_bessel_sequence_Jnu_e.smalls = private unnamed_addr constant [11 x double] [double 1.000000e-02, double 2.000000e-02, double 4.000000e-01, double 0x3FE6666666666666, double 1.300000e+00, double 2.000000e+00, double 2.500000e+00, double 3.200000e+00, double 3.500000e+00, double 4.500000e+00, double 6.000000e+00], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_sequence_Jnu_e(double noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !69 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !105, metadata !DIExpression(), metadata !123, metadata ptr %5, metadata !DIExpression()), !dbg !124
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !112, metadata !DIExpression(), metadata !125, metadata ptr %6, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %0, metadata !80, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !81, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !82, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !83, metadata !DIExpression()), !dbg !126
  %7 = fcmp olt double %0, 0.000000e+00, !dbg !127
  br i1 %7, label %8, label %9, !dbg !128

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 62, i32 noundef 1) #5, !dbg !129
  br label %140, !dbg !129

9:                                                ; preds = %4
  %10 = icmp eq i64 %2, 0, !dbg !132
  br i1 %10, label %11, label %12, !dbg !133

11:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 4) #5, !dbg !134
  br label %140, !dbg !134

12:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !137, metadata !DIExpression()), !dbg !142
  %13 = and i32 %1, 7, !dbg !144
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !84, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !145, metadata ptr @__const.gsl_sf_bessel_sequence_Jnu_e.dx_array, metadata !DIExpression()), !dbg !124
  %14 = zext nneg i32 %13 to i64, !dbg !146
  %15 = getelementptr inbounds [3 x double], ptr @__const.gsl_sf_bessel_sequence_Jnu_e.dx_array, i64 0, i64 %14, !dbg !146
  %16 = load double, ptr %15, align 8, !dbg !146, !tbaa !147
  tail call void @llvm.dbg.value(metadata double %16, metadata !96, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !97, metadata !DIExpression()), !dbg !124
  %17 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #5, !dbg !151
  tail call void @llvm.dbg.value(metadata double %17, metadata !99, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !100, metadata !DIExpression(), metadata !152, metadata ptr @__const.gsl_sf_bessel_sequence_Jnu_e.smalls, metadata !DIExpression()), !dbg !124
  %18 = fcmp ult double %0, 1.000000e+01, !dbg !153
  br i1 %18, label %20, label %19, !dbg !154

19:                                               ; preds = %12
  %handler_result = call double @fSubHandlerDouble(double %0, double %17), !dbg !154
  br label %26, !dbg !154

20:                                               ; preds = %12
  %21 = tail call double @llvm.ceil.f64(double %0), !dbg !155
  %22 = fptosi double %21 to i32, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !97, metadata !DIExpression()), !dbg !124
  %23 = sext i32 %22 to i64, !dbg !157
  %24 = getelementptr inbounds [11 x double], ptr @__const.gsl_sf_bessel_sequence_Jnu_e.smalls, i64 0, i64 %23, !dbg !157
  %25 = load double, ptr %24, align 8, !dbg !157, !tbaa !147
  br label %26, !dbg !154

26:                                               ; preds = %20, %19
  %27 = phi double [ %handler_result, %19 ], [ %25, %20 ], !dbg !154
  tail call void @llvm.dbg.value(metadata double %27, metadata !104, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !158
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !158
  tail call void @llvm.dbg.value(metadata i64 0, metadata !116, metadata !DIExpression()), !dbg !124
  %28 = load double, ptr %3, align 8, !dbg !159, !tbaa !147
  tail call void @llvm.dbg.value(metadata double %28, metadata !115, metadata !DIExpression()), !dbg !124
  %29 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %28, ptr noundef nonnull %5) #5, !dbg !160
  %30 = load double, ptr %5, align 8, !dbg !161, !tbaa !162
  store double %30, ptr %3, align 8, !dbg !164, !tbaa !147
  tail call void @llvm.dbg.value(metadata i64 1, metadata !116, metadata !DIExpression()), !dbg !124
  %31 = fcmp oeq double %28, 0.000000e+00, !dbg !165
  br i1 %31, label %32, label %39, !dbg !167

32:                                               ; preds = %26
  %33 = getelementptr inbounds double, ptr %3, i64 1, !dbg !168
  %34 = load double, ptr %33, align 8, !dbg !168, !tbaa !147
  %35 = fcmp ugt double %34, %28, !dbg !171
  br i1 %35, label %36, label %136, !dbg !172

36:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double %34, metadata !115, metadata !DIExpression()), !dbg !124
  %37 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %34, ptr noundef nonnull %5) #5, !dbg !173
  %38 = load double, ptr %5, align 8, !dbg !174, !tbaa !162
  store double %38, ptr %33, align 8, !dbg !175, !tbaa !147
  tail call void @llvm.dbg.value(metadata i64 2, metadata !116, metadata !DIExpression()), !dbg !124
  br label %39, !dbg !176

39:                                               ; preds = %36, %26
  %40 = phi i64 [ 2, %36 ], [ 1, %26 ], !dbg !124
  %41 = phi double [ %34, %36 ], [ %28, %26 ], !dbg !124
  tail call void @llvm.dbg.value(metadata double %41, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !116, metadata !DIExpression()), !dbg !124
  %42 = getelementptr inbounds double, ptr %3, i64 %40, !dbg !177
  %43 = load double, ptr %42, align 8, !dbg !177, !tbaa !147
  %44 = fcmp olt double %43, %27, !dbg !178
  %45 = icmp ult i64 %40, %2, !dbg !179
  %46 = and i1 %45, %44, !dbg !179
  br i1 %46, label %47, label %62, !dbg !180

47:                                               ; preds = %53, %39
  %48 = phi double [ %58, %53 ], [ %43, %39 ]
  %49 = phi ptr [ %57, %53 ], [ %42, %39 ]
  %50 = phi double [ %48, %53 ], [ %41, %39 ]
  %51 = phi i64 [ %56, %53 ], [ %40, %39 ]
  tail call void @llvm.dbg.value(metadata double %50, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !116, metadata !DIExpression()), !dbg !124
  %52 = fcmp ugt double %48, %50, !dbg !181
  br i1 %52, label %53, label %136, !dbg !184

53:                                               ; preds = %47
  tail call void @llvm.dbg.value(metadata double %48, metadata !115, metadata !DIExpression()), !dbg !124
  %54 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %48, ptr noundef nonnull %5) #5, !dbg !185
  %55 = load double, ptr %5, align 8, !dbg !186, !tbaa !162
  store double %55, ptr %49, align 8, !dbg !187, !tbaa !147
  %56 = add nuw i64 %51, 1, !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !116, metadata !DIExpression()), !dbg !124
  %57 = getelementptr inbounds double, ptr %3, i64 %56, !dbg !177
  %58 = load double, ptr %57, align 8, !dbg !177, !tbaa !147
  %59 = fcmp olt double %58, %27, !dbg !178
  %60 = icmp ult i64 %56, %2, !dbg !179
  %61 = and i1 %60, %59, !dbg !179
  br i1 %61, label %47, label %62, !dbg !180, !llvm.loop !189

62:                                               ; preds = %53, %39
  %63 = phi i64 [ %40, %39 ], [ %56, %53 ], !dbg !124
  %64 = phi double [ %41, %39 ], [ %48, %53 ], !dbg !124
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !192
  %65 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %handler_result1, double noundef %64, ptr noundef nonnull %6) #5, !dbg !192
  tail call void @llvm.dbg.value(metadata double poison, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double poison, metadata !113, metadata !DIExpression()), !dbg !124
  %66 = fmul double %0, %0
  tail call void @llvm.dbg.value(metadata double poison, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double poison, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %64, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !116, metadata !DIExpression()), !dbg !124
  %67 = icmp ult i64 %63, %2, !dbg !193
  br i1 %67, label %68, label %138, !dbg !194

68:                                               ; preds = %62
  %69 = fdiv double %0, %64, !dbg !195
  %70 = load double, ptr %5, align 8, !dbg !196, !tbaa !162
  tail call void @llvm.dbg.value(metadata double %70, metadata !114, metadata !DIExpression()), !dbg !124
  %71 = fmul double %69, %70, !dbg !197
  %72 = load double, ptr %6, align 8, !dbg !198, !tbaa !162
  %handler_result2 = call double @fSubHandlerDouble(double %71, double %72), !dbg !194
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !113, metadata !DIExpression()), !dbg !124
  br label %73, !dbg !194

73:                                               ; preds = %131, %68
  %74 = phi double [ %64, %68 ], [ %79, %131 ]
  %75 = phi i64 [ %63, %68 ], [ %134, %131 ]
  %76 = phi double [ %70, %68 ], [ %133, %131 ]
  %77 = phi double [ %handler_result2, %68 ], [ %132, %131 ]
  tail call void @llvm.dbg.value(metadata double %74, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !116, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %76, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %77, metadata !113, metadata !DIExpression()), !dbg !124
  %78 = getelementptr inbounds double, ptr %3, i64 %75, !dbg !199
  %79 = load double, ptr %78, align 8, !dbg !199, !tbaa !147
  %handler_result3 = call double @fSubHandlerDouble(double %79, double %74), !dbg !200
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !117, metadata !DIExpression()), !dbg !201
  %80 = fdiv double %handler_result3, %16, !dbg !200
  %81 = call double @llvm.ceil.f64(double %80), !dbg !202
  %82 = fptosi double %81 to i32, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !119, metadata !DIExpression()), !dbg !201
  %83 = sitofp i32 %82 to double, !dbg !204
  %84 = fdiv double %handler_result3, %83, !dbg !205
  tail call void @llvm.dbg.value(metadata double %84, metadata !120, metadata !DIExpression()), !dbg !201
  %85 = fcmp ugt double %79, %74, !dbg !206
  br i1 %85, label %86, label %136, !dbg !208

86:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata double %76, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %77, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 0, metadata !122, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double %74, metadata !121, metadata !DIExpression()), !dbg !201
  %87 = icmp sgt i32 %82, 0, !dbg !209
  br i1 %87, label %88, label %131, !dbg !212

88:                                               ; preds = %86
  %89 = fmul double %84, 5.000000e-01
  br label %90, !dbg !212

90:                                               ; preds = %90, %88
  %91 = phi i32 [ 0, %88 ], [ %129, %90 ]
  %92 = phi double [ %74, %88 ], [ %handler_result15, %90 ]
  %93 = phi double [ %76, %88 ], [ %handler_result26, %90 ]
  %94 = phi double [ %77, %88 ], [ %handler_result22, %90 ]
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !122, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double %92, metadata !121, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double %93, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %94, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %0, metadata !213, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata double %92, metadata !218, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata double %84, metadata !219, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !220, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !221, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata double %94, metadata !222, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata double %93, metadata !223, metadata !DIExpression()), !dbg !232
  %95 = fmul double %92, %92, !dbg !235
  %96 = fdiv double %66, %95, !dbg !235
  %handler_result4 = call double @fAddHandlerDouble(double %96, double -1.000000e+00), !dbg !235
  %97 = fmul double %93, %handler_result4, !dbg !235
  %98 = fdiv double %94, %92, !dbg !235
  %handler_result5 = call double @fSubHandlerDouble(double %97, double %98), !dbg !236
  %99 = fmul double %84, %handler_result5, !dbg !236
  tail call void @llvm.dbg.value(metadata double %99, metadata !224, metadata !DIExpression()), !dbg !232
  %100 = fmul double %84, %94, !dbg !237
  tail call void @llvm.dbg.value(metadata double %100, metadata !225, metadata !DIExpression()), !dbg !232
  %101 = fmul double %99, 5.000000e-01, !dbg !238
  %handler_result6 = call double @fAddHandlerDouble(double %94, double %101), !dbg !238
  %handler_result7 = call double @fAddHandlerDouble(double %89, double %92), !dbg !238
  %102 = fmul double %handler_result7, %handler_result7, !dbg !238
  %103 = fdiv double %66, %102, !dbg !238
  %handler_result8 = call double @fAddHandlerDouble(double %103, double -1.000000e+00), !dbg !238
  %104 = fmul double %100, 5.000000e-01, !dbg !238
  %handler_result9 = call double @fAddHandlerDouble(double %93, double %104), !dbg !238
  %105 = fmul double %handler_result9, %handler_result8, !dbg !238
  %106 = fdiv double %handler_result6, %handler_result7, !dbg !238
  %handler_result10 = call double @fSubHandlerDouble(double %105, double %106), !dbg !239
  %107 = fmul double %84, %handler_result10, !dbg !239
  tail call void @llvm.dbg.value(metadata double %107, metadata !226, metadata !DIExpression()), !dbg !232
  %108 = fmul double %84, %handler_result6, !dbg !240
  tail call void @llvm.dbg.value(metadata double %108, metadata !227, metadata !DIExpression()), !dbg !232
  %109 = fmul double %107, 5.000000e-01, !dbg !241
  %handler_result11 = call double @fAddHandlerDouble(double %94, double %109), !dbg !241
  %110 = fmul double %108, 5.000000e-01, !dbg !241
  %handler_result12 = call double @fAddHandlerDouble(double %93, double %110), !dbg !241
  %111 = fmul double %handler_result8, %handler_result12, !dbg !241
  %112 = fdiv double %handler_result11, %handler_result7, !dbg !241
  %handler_result13 = call double @fSubHandlerDouble(double %111, double %112), !dbg !242
  %113 = fmul double %84, %handler_result13, !dbg !242
  tail call void @llvm.dbg.value(metadata double %113, metadata !228, metadata !DIExpression()), !dbg !232
  %114 = fmul double %84, %handler_result11, !dbg !243
  tail call void @llvm.dbg.value(metadata double %114, metadata !229, metadata !DIExpression()), !dbg !232
  %handler_result14 = call double @fAddHandlerDouble(double %94, double %113), !dbg !244
  %handler_result15 = call double @fAddHandlerDouble(double %84, double %92), !dbg !244
  %115 = fmul double %handler_result15, %handler_result15, !dbg !244
  %116 = fdiv double %66, %115, !dbg !244
  %handler_result16 = call double @fAddHandlerDouble(double %116, double -1.000000e+00), !dbg !244
  %handler_result17 = call double @fAddHandlerDouble(double %93, double %114), !dbg !244
  %117 = fmul double %handler_result16, %handler_result17, !dbg !244
  %118 = fdiv double %handler_result14, %handler_result15, !dbg !244
  %handler_result18 = call double @fSubHandlerDouble(double %117, double %118), !dbg !245
  %119 = fmul double %84, %handler_result18, !dbg !245
  tail call void @llvm.dbg.value(metadata double %119, metadata !230, metadata !DIExpression()), !dbg !232
  %120 = fmul double %84, %handler_result14, !dbg !246
  tail call void @llvm.dbg.value(metadata double %120, metadata !231, metadata !DIExpression()), !dbg !232
  %121 = fdiv double %99, 6.000000e+00, !dbg !247
  %handler_result19 = call double @fAddHandlerDouble(double %94, double %121), !dbg !248
  %122 = fdiv double %107, 3.000000e+00, !dbg !248
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %122), !dbg !249
  %123 = fdiv double %113, 3.000000e+00, !dbg !249
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %123), !dbg !250
  %124 = fdiv double %119, 6.000000e+00, !dbg !250
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %124), !dbg !251
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !113, metadata !DIExpression()), !dbg !124
  %125 = fdiv double %100, 6.000000e+00, !dbg !251
  %handler_result23 = call double @fAddHandlerDouble(double %93, double %125), !dbg !252
  %126 = fdiv double %108, 3.000000e+00, !dbg !252
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double %126), !dbg !253
  %127 = fdiv double %114, 3.000000e+00, !dbg !253
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %127), !dbg !254
  %128 = fdiv double %120, 6.000000e+00, !dbg !254
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double %128), !dbg !255
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !114, metadata !DIExpression()), !dbg !124
  %129 = add nuw nsw i32 %91, 1, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !122, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !121, metadata !DIExpression()), !dbg !201
  %130 = icmp eq i32 %129, %82, !dbg !209
  br i1 %130, label %131, label %90, !dbg !212, !llvm.loop !256

131:                                              ; preds = %90, %86
  %132 = phi double [ %77, %86 ], [ %handler_result22, %90 ], !dbg !124
  %133 = phi double [ %76, %86 ], [ %handler_result26, %90 ], !dbg !124
  tail call void @llvm.dbg.value(metadata double %79, metadata !115, metadata !DIExpression()), !dbg !124
  store double %133, ptr %78, align 8, !dbg !258, !tbaa !147
  %134 = add nuw i64 %75, 1, !dbg !259
  tail call void @llvm.dbg.value(metadata double %133, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %132, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !116, metadata !DIExpression()), !dbg !124
  %135 = icmp ult i64 %134, %2, !dbg !193
  br i1 %135, label %73, label %138, !dbg !194

136:                                              ; preds = %73, %47, %32
  %137 = phi i32 [ 94, %32 ], [ 137, %73 ], [ 109, %47 ]
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %137, i32 noundef 5) #5, !dbg !124
  br label %138, !dbg !260

138:                                              ; preds = %136, %131, %62
  %139 = phi i32 [ 5, %136 ], [ 0, %62 ], [ 0, %131 ], !dbg !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !260
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !260
  br label %140

140:                                              ; preds = %138, %11, %8
  %141 = phi i32 [ 1, %8 ], [ 4, %11 ], [ %139, %138 ], !dbg !261
  ret i32 %141, !dbg !262
}

declare !dbg !263 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !268 double @pow(double noundef, double noundef) local_unnamed_addr #4

declare !dbg !272 i32 @gsl_sf_bessel_Jnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_sequence.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f935898006483337f52a6e40a356e2ed")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !58, globals: !60, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!21, !59}
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !{!0, !7, !12}
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!68 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!69 = distinct !DISubprogram(name: "gsl_sf_bessel_sequence_Jnu_e", scope: !2, file: !2, line: 57, type: !70, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !79)
!70 = !DISubroutineType(types: !71)
!71 = !{!21, !72, !73, !75, !78}
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !74, line: 50, baseType: !59)
!74 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 18, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!79 = !{!80, !81, !82, !83, !84, !91, !96, !97, !99, !100, !104, !105, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122}
!80 = !DILocalVariable(name: "nu", arg: 1, scope: !69, file: !2, line: 57, type: !72)
!81 = !DILocalVariable(name: "mode", arg: 2, scope: !69, file: !2, line: 57, type: !73)
!82 = !DILocalVariable(name: "size", arg: 3, scope: !69, file: !2, line: 57, type: !75)
!83 = !DILocalVariable(name: "v", arg: 4, scope: !69, file: !2, line: 57, type: !78)
!84 = !DILocalVariable(name: "goal", scope: !85, file: !2, line: 68, type: !88)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 67, column: 8)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 64, column: 11)
!87 = distinct !DILexicalBlock(scope: !69, file: !2, line: 61, column: 6)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_prec_t", file: !90, line: 42, baseType: !59)
!90 = !DIFile(filename: "../gsl/gsl_precision.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c2d989a32da557bd99ff9561902c5d43")
!91 = !DILocalVariable(name: "dx_array", scope: !85, file: !2, line: 69, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !94)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!94 = !{!95}
!95 = !DISubrange(count: 3)
!96 = !DILocalVariable(name: "dx_nominal", scope: !85, file: !2, line: 70, type: !93)
!97 = !DILocalVariable(name: "cnu", scope: !85, file: !2, line: 72, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!99 = !DILocalVariable(name: "nu13", scope: !85, file: !2, line: 73, type: !93)
!100 = !DILocalVariable(name: "smalls", scope: !85, file: !2, line: 74, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 704, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 11)
!104 = !DILocalVariable(name: "x_small", scope: !85, file: !2, line: 75, type: !93)
!105 = !DILocalVariable(name: "J0", scope: !85, file: !2, line: 77, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !107, line: 41, baseType: !108)
!107 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !107, line: 37, size: 128, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !108, file: !107, line: 38, baseType: !72, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !108, file: !107, line: 39, baseType: !72, size: 64, offset: 64)
!112 = !DILocalVariable(name: "J1", scope: !85, file: !2, line: 77, type: !106)
!113 = !DILocalVariable(name: "Jp", scope: !85, file: !2, line: 78, type: !72)
!114 = !DILocalVariable(name: "J", scope: !85, file: !2, line: 78, type: !72)
!115 = !DILocalVariable(name: "x", scope: !85, file: !2, line: 79, type: !72)
!116 = !DILocalVariable(name: "i", scope: !85, file: !2, line: 80, type: !75)
!117 = !DILocalVariable(name: "dv", scope: !118, file: !2, line: 129, type: !93)
!118 = distinct !DILexicalBlock(scope: !85, file: !2, line: 128, column: 21)
!119 = !DILocalVariable(name: "Nd", scope: !118, file: !2, line: 130, type: !98)
!120 = !DILocalVariable(name: "dx", scope: !118, file: !2, line: 131, type: !93)
!121 = !DILocalVariable(name: "xj", scope: !118, file: !2, line: 132, type: !72)
!122 = !DILocalVariable(name: "j", scope: !118, file: !2, line: 133, type: !21)
!123 = distinct !DIAssignID()
!124 = !DILocation(line: 0, scope: !85)
!125 = distinct !DIAssignID()
!126 = !DILocation(line: 0, scope: !69)
!127 = !DILocation(line: 61, column: 9, scope: !87)
!128 = !DILocation(line: 61, column: 6, scope: !69)
!129 = !DILocation(line: 62, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 62, column: 5)
!131 = distinct !DILexicalBlock(scope: !87, file: !2, line: 61, column: 16)
!132 = !DILocation(line: 64, column: 16, scope: !86)
!133 = !DILocation(line: 64, column: 11, scope: !87)
!134 = !DILocation(line: 65, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 65, column: 5)
!136 = distinct !DILexicalBlock(scope: !86, file: !2, line: 64, column: 22)
!137 = !DILocalVariable(name: "mt", arg: 1, scope: !138, file: !74, line: 74, type: !73)
!138 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !74, file: !74, line: 74, type: !139, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!59, !73}
!141 = !{!137}
!142 = !DILocation(line: 0, scope: !138, inlinedAt: !143)
!143 = distinct !DILocation(line: 68, column: 31, scope: !85)
!144 = !DILocation(line: 75, column: 15, scope: !138, inlinedAt: !143)
!145 = distinct !DIAssignID()
!146 = !DILocation(line: 70, column: 31, scope: !85)
!147 = !{!148, !148, i64 0}
!148 = !{!"double", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !DILocation(line: 73, column: 25, scope: !85)
!152 = distinct !DIAssignID()
!153 = !DILocation(line: 75, column: 33, scope: !85)
!154 = !DILocation(line: 75, column: 30, scope: !85)
!155 = !DILocation(line: 72, column: 27, scope: !85)
!156 = !DILocation(line: 72, column: 21, scope: !85)
!157 = !DILocation(line: 75, column: 55, scope: !85)
!158 = !DILocation(line: 77, column: 5, scope: !85)
!159 = !DILocation(line: 83, column: 9, scope: !85)
!160 = !DILocation(line: 84, column: 5, scope: !85)
!161 = !DILocation(line: 85, column: 15, scope: !85)
!162 = !{!163, !148, i64 0}
!163 = !{!"gsl_sf_result_struct", !148, i64 0, !148, i64 8}
!164 = !DILocation(line: 85, column: 10, scope: !85)
!165 = !DILocation(line: 91, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !85, file: !2, line: 91, column: 8)
!167 = !DILocation(line: 91, column: 8, scope: !85)
!168 = !DILocation(line: 92, column: 10, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 92, column: 10)
!170 = distinct !DILexicalBlock(scope: !166, file: !2, line: 91, column: 18)
!171 = !DILocation(line: 92, column: 15, scope: !169)
!172 = !DILocation(line: 92, column: 10, scope: !170)
!173 = !DILocation(line: 97, column: 7, scope: !170)
!174 = !DILocation(line: 98, column: 17, scope: !170)
!175 = !DILocation(line: 98, column: 12, scope: !170)
!176 = !DILocation(line: 100, column: 5, scope: !170)
!177 = !DILocation(line: 106, column: 11, scope: !85)
!178 = !DILocation(line: 106, column: 16, scope: !85)
!179 = !DILocation(line: 106, column: 26, scope: !85)
!180 = !DILocation(line: 106, column: 5, scope: !85)
!181 = !DILocation(line: 107, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !2, line: 107, column: 10)
!183 = distinct !DILexicalBlock(scope: !85, file: !2, line: 106, column: 39)
!184 = !DILocation(line: 107, column: 10, scope: !183)
!185 = !DILocation(line: 112, column: 7, scope: !183)
!186 = !DILocation(line: 113, column: 17, scope: !183)
!187 = !DILocation(line: 113, column: 12, scope: !183)
!188 = !DILocation(line: 114, column: 7, scope: !183)
!189 = distinct !{!189, !180, !190, !191}
!190 = !DILocation(line: 115, column: 5, scope: !85)
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 124, column: 5, scope: !85)
!193 = !DILocation(line: 128, column: 13, scope: !85)
!194 = !DILocation(line: 128, column: 5, scope: !85)
!195 = !DILocation(line: 126, column: 22, scope: !85)
!196 = !DILocation(line: 125, column: 13, scope: !85)
!197 = !DILocation(line: 126, column: 25, scope: !85)
!198 = !DILocation(line: 126, column: 14, scope: !85)
!199 = !DILocation(line: 129, column: 25, scope: !118)
!200 = !DILocation(line: 130, column: 38, scope: !118)
!201 = !DILocation(line: 0, scope: !118)
!202 = !DILocation(line: 130, column: 31, scope: !118)
!203 = !DILocation(line: 130, column: 25, scope: !118)
!204 = !DILocation(line: 131, column: 30, scope: !118)
!205 = !DILocation(line: 131, column: 28, scope: !118)
!206 = !DILocation(line: 135, column: 15, scope: !207)
!207 = distinct !DILexicalBlock(scope: !118, file: !2, line: 135, column: 10)
!208 = !DILocation(line: 135, column: 10, scope: !118)
!209 = !DILocation(line: 142, column: 23, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !2, line: 142, column: 7)
!211 = distinct !DILexicalBlock(scope: !118, file: !2, line: 142, column: 7)
!212 = !DILocation(line: 142, column: 7, scope: !211)
!213 = !DILocalVariable(name: "nu", arg: 1, scope: !214, file: !2, line: 32, type: !72)
!214 = distinct !DISubprogram(name: "rk_step", scope: !2, file: !2, line: 32, type: !215, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!21, !72, !72, !72, !78, !78}
!217 = !{!213, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!218 = !DILocalVariable(name: "x", arg: 2, scope: !214, file: !2, line: 32, type: !72)
!219 = !DILocalVariable(name: "dx", arg: 3, scope: !214, file: !2, line: 32, type: !72)
!220 = !DILocalVariable(name: "Jp", arg: 4, scope: !214, file: !2, line: 32, type: !78)
!221 = !DILocalVariable(name: "J", arg: 5, scope: !214, file: !2, line: 32, type: !78)
!222 = !DILocalVariable(name: "p_0", scope: !214, file: !2, line: 34, type: !72)
!223 = !DILocalVariable(name: "u_0", scope: !214, file: !2, line: 35, type: !72)
!224 = !DILocalVariable(name: "p_1", scope: !214, file: !2, line: 37, type: !72)
!225 = !DILocalVariable(name: "u_1", scope: !214, file: !2, line: 38, type: !72)
!226 = !DILocalVariable(name: "p_2", scope: !214, file: !2, line: 40, type: !72)
!227 = !DILocalVariable(name: "u_2", scope: !214, file: !2, line: 41, type: !72)
!228 = !DILocalVariable(name: "p_3", scope: !214, file: !2, line: 43, type: !72)
!229 = !DILocalVariable(name: "u_3", scope: !214, file: !2, line: 44, type: !72)
!230 = !DILocalVariable(name: "p_4", scope: !214, file: !2, line: 46, type: !72)
!231 = !DILocalVariable(name: "u_4", scope: !214, file: !2, line: 47, type: !72)
!232 = !DILocation(line: 0, scope: !214, inlinedAt: !233)
!233 = distinct !DILocation(line: 143, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !210, file: !2, line: 142, column: 43)
!235 = !DILocation(line: 37, column: 21, scope: !214, inlinedAt: !233)
!236 = !DILocation(line: 37, column: 19, scope: !214, inlinedAt: !233)
!237 = !DILocation(line: 38, column: 19, scope: !214, inlinedAt: !233)
!238 = !DILocation(line: 40, column: 21, scope: !214, inlinedAt: !233)
!239 = !DILocation(line: 40, column: 19, scope: !214, inlinedAt: !233)
!240 = !DILocation(line: 41, column: 19, scope: !214, inlinedAt: !233)
!241 = !DILocation(line: 43, column: 21, scope: !214, inlinedAt: !233)
!242 = !DILocation(line: 43, column: 19, scope: !214, inlinedAt: !233)
!243 = !DILocation(line: 44, column: 19, scope: !214, inlinedAt: !233)
!244 = !DILocation(line: 46, column: 21, scope: !214, inlinedAt: !233)
!245 = !DILocation(line: 46, column: 19, scope: !214, inlinedAt: !233)
!246 = !DILocation(line: 47, column: 19, scope: !214, inlinedAt: !233)
!247 = !DILocation(line: 49, column: 18, scope: !214, inlinedAt: !233)
!248 = !DILocation(line: 49, column: 28, scope: !214, inlinedAt: !233)
!249 = !DILocation(line: 49, column: 38, scope: !214, inlinedAt: !233)
!250 = !DILocation(line: 49, column: 48, scope: !214, inlinedAt: !233)
!251 = !DILocation(line: 50, column: 18, scope: !214, inlinedAt: !233)
!252 = !DILocation(line: 50, column: 28, scope: !214, inlinedAt: !233)
!253 = !DILocation(line: 50, column: 38, scope: !214, inlinedAt: !233)
!254 = !DILocation(line: 50, column: 48, scope: !214, inlinedAt: !233)
!255 = !DILocation(line: 142, column: 29, scope: !210)
!256 = distinct !{!256, !212, !257, !191}
!257 = !DILocation(line: 144, column: 7, scope: !211)
!258 = !DILocation(line: 148, column: 12, scope: !118)
!259 = !DILocation(line: 149, column: 7, scope: !118)
!260 = !DILocation(line: 153, column: 3, scope: !86)
!261 = !DILocation(line: 0, scope: !87)
!262 = !DILocation(line: 154, column: 1, scope: !69)
!263 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266, !266, !21, !21}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!268 = !DISubprogram(name: "pow", scope: !269, file: !269, line: 140, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!270 = !DISubroutineType(types: !271)
!271 = !{!72, !72, !72}
!272 = !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !273, file: !273, line: 444, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!274 = !DISubroutineType(types: !275)
!275 = !{!21, !93, !93, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
