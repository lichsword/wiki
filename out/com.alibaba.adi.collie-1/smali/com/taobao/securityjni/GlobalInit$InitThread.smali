.class Lcom/taobao/securityjni/GlobalInit$InitThread;
.super Ljava/lang/Object;
.source "GlobalInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/securityjni/GlobalInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitThread"
.end annotation


# instance fields
.field private Flag_Init_So:Z

.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;Z)V
    .locals 1
    .parameter "context"
    .parameter "InitSo"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/securityjni/GlobalInit$InitThread;->Flag_Init_So:Z

    .line 197
    iput-object p1, p0, Lcom/taobao/securityjni/GlobalInit$InitThread;->context:Landroid/content/ContextWrapper;

    .line 198
    iput-boolean p2, p0, Lcom/taobao/securityjni/GlobalInit$InitThread;->Flag_Init_So:Z

    .line 199
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 203
    iget-boolean v1, p0, Lcom/taobao/securityjni/GlobalInit$InitThread;->Flag_Init_So:Z

    if-eqz v1, :cond_2

    .line 204
    new-instance v8, Lcom/taobao/securityjni/StaticDataStore;

    iget-object v1, p0, Lcom/taobao/securityjni/GlobalInit$InitThread;->context:Landroid/content/ContextWrapper;

    invoke-direct {v8, v1}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    .line 205
    .local v8, staticStore:Lcom/taobao/securityjni/StaticDataStore;
    invoke-virtual {v8}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey()Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/taobao/securityjni/testrsa/SecurityTestCode;->getPublicKeyTest()Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v7

    .line 208
    .local v7, objStatic:Lcom/taobao/securityjni/tools/RetObject;
    if-eqz v7, :cond_0

    .line 209
    const-string v1, "getPublicKeyTest"

    .line 210
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v7}, Lcom/taobao/securityjni/tools/RetObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v3, v2

    move-object v4, v2

    .line 209
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-static {}, Lcom/taobao/securityjni/testrsa/SecurityTestCode;->getPublicKeyParseTest()Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v6

    .line 213
    .local v6, objParse:Lcom/taobao/securityjni/tools/RetObject;
    if-eqz v6, :cond_1

    .line 214
    const-string v1, "getPublicKeyParseTest"

    .line 215
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/taobao/securityjni/tools/RetObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v3, v2

    move-object v4, v2

    .line 214
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    :cond_1
    const-string v1, "getPublicKey"

    .line 218
    new-array v5, v9, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v3, v2

    move-object v4, v2

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 222
    .end local v6           #objParse:Lcom/taobao/securityjni/tools/RetObject;
    .end local v7           #objStatic:Lcom/taobao/securityjni/tools/RetObject;
    .end local v8           #staticStore:Lcom/taobao/securityjni/StaticDataStore;
    :cond_2
    invoke-static {}, Lcom/taobao/securityjni/tools/CrashDataFile;->SecurityUpLoadException()V

    .line 223
    invoke-static {}, Lcom/taobao/securityjni/tools/ExceptionDataFile;->SecurityUpLoadException()V

    .line 224
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->access$0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/taobao/securityjni/GlobalInit$InitThread;->context:Landroid/content/ContextWrapper;

    #calls: Lcom/taobao/securityjni/GlobalInit;->VerifySoExistence(Landroid/content/ContextWrapper;)V
    invoke-static {v0}, Lcom/taobao/securityjni/GlobalInit;->access$1(Landroid/content/ContextWrapper;)V

    .line 227
    :cond_3
    return-void
.end method
