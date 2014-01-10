.class public Lcom/taobao/securityjni/StaticDataStore;
.super Ljava/lang/Object;
.source "StaticDataStore.java"


# static fields
.field private static final P_NAME_STATIC:Ljava/lang/String; = "StaticDataStore"


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->context:Landroid/content/ContextWrapper;

    .line 33
    iput-object p1, p0, Lcom/taobao/securityjni/StaticDataStore;->context:Landroid/content/ContextWrapper;

    .line 34
    return-void
.end method

.method private InitGlobalData()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/StaticDataStore;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    .line 162
    return-void
.end method

.method private native getAppKeyByte(Lcom/taobao/securityjni/tools/DataContext;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getExtraDataByte(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getMMPidByte()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getTtidByte()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    .line 52
    .local v0, ctx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lcom/taobao/securityjni/StaticDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v3}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 63
    check-cast v0, [B

    .line 65
    .local v0, data:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/StaticDataStore;->getAppKeyByte(Lcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    .line 80
    .end local v0           #data:[B
    :cond_0
    :goto_0
    return-object v2

    .line 70
    .restart local v0       #data:[B
    :catch_0
    move-exception v1

    .line 71
    .local v1, ep:Ljava/io/UnsupportedEncodingException;
    const-string v3, "getAppKey"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v1           #ep:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "getAppKey"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v1           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 76
    .local v1, ep:Ljava/lang/Throwable;
    const-string v3, "getAppKey"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getExtraData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "Key"

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v3, p0, Lcom/taobao/securityjni/StaticDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v3}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 141
    check-cast v0, [B

    .line 143
    .local v0, data:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/StaticDataStore;->getExtraDataByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    .line 156
    .end local v0           #data:[B
    :cond_0
    :goto_0
    return-object v2

    .line 147
    .restart local v0       #data:[B
    :catch_0
    move-exception v1

    .line 148
    .local v1, ep:Ljava/io/UnsupportedEncodingException;
    const-string v3, "getExtraData"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    .end local v1           #ep:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "getExtraData"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    .end local v1           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 153
    .local v1, ep:Ljava/lang/Throwable;
    const-string v3, "getExtraData"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMMPid()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v3, p0, Lcom/taobao/securityjni/StaticDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v3}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 113
    check-cast v0, [B

    .line 116
    .local v0, data:[B
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/securityjni/StaticDataStore;->getMMPidByte()[B

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    .line 129
    .end local v0           #data:[B
    :cond_0
    :goto_0
    return-object v2

    .line 120
    .restart local v0       #data:[B
    :catch_0
    move-exception v1

    .line 121
    .local v1, ep:Ljava/io/UnsupportedEncodingException;
    const-string v3, "getMMPid"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v1           #ep:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 124
    .local v1, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "getMMPid"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    .end local v1           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 126
    .local v1, ep:Ljava/lang/Throwable;
    const-string v3, "getMMPid"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Lcom/taobao/securityjni/StaticDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v3}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 88
    check-cast v0, [B

    .line 90
    .local v0, data:[B
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/securityjni/StaticDataStore;->getTtidByte()[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    .line 103
    .end local v0           #data:[B
    :cond_0
    :goto_0
    return-object v2

    .line 94
    .restart local v0       #data:[B
    :catch_0
    move-exception v1

    .line 95
    .local v1, ep:Ljava/io/UnsupportedEncodingException;
    const-string v3, "getTtid"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    .end local v1           #ep:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "getTtid"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    .end local v1           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 100
    .local v1, ep:Ljava/lang/Throwable;
    const-string v3, "getTtid"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
