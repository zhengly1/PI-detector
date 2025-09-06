; ModuleID = 'xerbla.ll'
source_filename = "xerbla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"Parameter %d to routine %s was incorrect\0A\00", align 1, !dbg !0

; Function Attrs: noreturn nounwind uwtable
define dso_local void @cblas_xerbla(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 !dbg !17 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !42
  call void @llvm.dbg.assign(metadata i1 undef, metadata !27, metadata !DIExpression(), metadata !42, metadata ptr %4, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !24, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !25, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !26, metadata !DIExpression()), !dbg !43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6, !dbg !44
  call void @llvm.va_start(ptr nonnull %4), !dbg !45
  %5 = icmp eq i32 %0, 0, !dbg !46
  br i1 %5, label %9, label %6, !dbg !48

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !dbg !49, !tbaa !51
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %0, ptr noundef %1) #7, !dbg !55
  br label %9, !dbg !56

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @stderr, align 8, !dbg !57, !tbaa !51
  %11 = call i32 @vfprintf(ptr noundef %10, ptr noundef %2, ptr noundef nonnull %4) #7, !dbg !58
  call void @llvm.va_end(ptr nonnull %4), !dbg !59
  call void @abort() #8, !dbg !60
  unreachable, !dbg !60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind
declare !dbg !61 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !125 noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: noreturn nounwind
declare !dbg !129 void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "xerbla.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "32f10f776d1ca1da72b4eb96789bf624")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 42)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !8, splitDebugInlining: false, nameTableKind: None)
!8 = !{!0}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!16 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!17 = distinct !DISubprogram(name: "cblas_xerbla", scope: !2, file: !2, line: 29, type: !18, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !21, !21, null}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!23 = !{!24, !25, !26, !27}
!24 = !DILocalVariable(name: "p", arg: 1, scope: !17, file: !2, line: 29, type: !20)
!25 = !DILocalVariable(name: "rout", arg: 2, scope: !17, file: !2, line: 29, type: !21)
!26 = !DILocalVariable(name: "form", arg: 3, scope: !17, file: !2, line: 29, type: !21)
!27 = !DILocalVariable(name: "ap", scope: !17, file: !2, line: 31, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !29, line: 12, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 192, elements: !40)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !33)
!33 = !{!34, !36, !37, !39}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !32, file: !2, line: 31, baseType: !35, size: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !32, file: !2, line: 31, baseType: !35, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !32, file: !2, line: 31, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !32, file: !2, line: 31, baseType: !38, size: 64, offset: 128)
!40 = !{!41}
!41 = !DISubrange(count: 1)
!42 = distinct !DIAssignID()
!43 = !DILocation(line: 0, scope: !17)
!44 = !DILocation(line: 31, column: 3, scope: !17)
!45 = !DILocation(line: 33, column: 3, scope: !17)
!46 = !DILocation(line: 35, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !17, file: !2, line: 35, column: 7)
!48 = !DILocation(line: 35, column: 7, scope: !17)
!49 = !DILocation(line: 37, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !2, line: 36, column: 5)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 37, column: 7, scope: !50)
!56 = !DILocation(line: 38, column: 5, scope: !50)
!57 = !DILocation(line: 40, column: 13, scope: !17)
!58 = !DILocation(line: 40, column: 3, scope: !17)
!59 = !DILocation(line: 41, column: 3, scope: !17)
!60 = !DILocation(line: 43, column: 3, scope: !17)
!61 = !DISubprogram(name: "fprintf", scope: !62, file: !62, line: 357, type: !63, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!63 = !DISubroutineType(types: !64)
!64 = !{!20, !65, !124, null}
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !68, line: 7, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 49, size: 1728, elements: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!71 = !{!72, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !88, !90, !91, !92, !96, !98, !100, !102, !105, !107, !110, !113, !114, !115, !119, !120}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 51, baseType: !20, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 54, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 55, baseType: !74, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 56, baseType: !74, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 57, baseType: !74, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 58, baseType: !74, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 59, baseType: !74, size: 64, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 60, baseType: !74, size: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 61, baseType: !74, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 64, baseType: !74, size: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 65, baseType: !74, size: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 66, baseType: !74, size: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 68, baseType: !86, size: 64, offset: 768)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 36, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 70, baseType: !89, size: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 72, baseType: !20, size: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 73, baseType: !20, size: 32, offset: 928)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 74, baseType: !93, size: 64, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !94, line: 152, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!95 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 77, baseType: !97, size: 16, offset: 1024)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 78, baseType: !99, size: 8, offset: 1040)
!99 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 79, baseType: !101, size: 8, offset: 1048)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !40)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 81, baseType: !103, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 43, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 89, baseType: !106, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !94, line: 153, baseType: !95)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !69, file: !70, line: 91, baseType: !108, size: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !70, line: 37, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !69, file: !70, line: 92, baseType: !111, size: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !70, line: 38, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !69, file: !70, line: 93, baseType: !89, size: 64, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !69, file: !70, line: 94, baseType: !38, size: 64, offset: 1408)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 95, baseType: !116, size: 64, offset: 1472)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 18, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!118 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 96, baseType: !20, size: 32, offset: 1536)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 98, baseType: !121, size: 160, offset: 1568)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 20)
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!125 = !DISubprogram(name: "vfprintf", scope: !62, file: !62, line: 372, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DISubroutineType(types: !127)
!127 = !{!20, !65, !124, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!129 = !DISubprogram(name: "abort", scope: !130, file: !130, line: 730, type: !131, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!130 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "7fa2ecb2348a66f8b44ab9a15abd0b72")
!131 = !DISubroutineType(types: !132)
!132 = !{null}
