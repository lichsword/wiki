.class public Lcom/taobao/securityjni/testrsa/SecurityTestCode;
.super Ljava/lang/Object;
.source "SecurityTestCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getPublicKeyParse()Lcom/taobao/securityjni/tools/RetObject;
.end method

.method public static getPublicKeyParseTest()Lcom/taobao/securityjni/tools/RetObject;
    .locals 4

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, retObj:Lcom/taobao/securityjni/tools/RetObject;
    :try_start_0
    invoke-static {}, Lcom/taobao/securityjni/testrsa/SecurityTestCode;->getPublicKeyParse()Lcom/taobao/securityjni/tools/RetObject;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 29
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPublicKeyParse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 26
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 27
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPublicKeyParse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static native getPublicKeyStatic()Lcom/taobao/securityjni/tools/RetObject;
.end method

.method public static getPublicKeyTest()Lcom/taobao/securityjni/tools/RetObject;
    .locals 4

    .prologue
    .line 9
    const/4 v1, 0x0

    .line 11
    .local v1, ret:Lcom/taobao/securityjni/tools/RetObject;
    :try_start_0
    invoke-static {}, Lcom/taobao/securityjni/testrsa/SecurityTestCode;->getPublicKeyStatic()Lcom/taobao/securityjni/tools/RetObject;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 17
    :goto_0
    return-object v1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPublicKeyStatic"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 15
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPublicKeyStatic"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
