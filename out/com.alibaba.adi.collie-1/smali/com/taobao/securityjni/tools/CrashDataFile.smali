.class public Lcom/taobao/securityjni/tools/CrashDataFile;
.super Ljava/lang/Object;
.source "CrashDataFile.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "securityCrash"

.field private static final SecurityUpLoadCrash:Ljava/lang/String; = "securityCrash"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SecurityUpLoadException()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "securityCrash"

    const-string v1, "securityCrash"

    invoke-static {v0, v1}, Lcom/taobao/securityjni/tools/RecvInfoUpdate;->SecurityUpLoadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
