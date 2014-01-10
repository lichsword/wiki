.class public Lcom/taobao/securityjni/tools/ExceptionDataFile;
.super Ljava/lang/Object;
.source "ExceptionDataFile.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "ZipFileList"

.field private static final PAGE_NAME_FILELIST:Ljava/lang/String; = "ZipFileList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SecurityUpLoadException()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "ZipFileList"

    const-string v1, "ZipFileList"

    invoke-static {v0, v1}, Lcom/taobao/securityjni/tools/RecvInfoUpdate;->SecurityUpLoadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
