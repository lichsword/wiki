.class public final Lcom/taobao/securityjni/SecretUtil;
.super Ljava/lang/Object;
.source "SecretUtil.java"


# static fields
.field public static final M_API:Ljava/lang/String; = "API"

.field public static final M_DATA:Ljava/lang/String; = "DATA"

.field public static final M_ECODE:Ljava/lang/String; = "ECODE"

.field public static final M_IMEI:Ljava/lang/String; = "IMEI"

.field public static final M_IMSI:Ljava/lang/String; = "IMSI"

.field public static final M_TIME:Ljava/lang/String; = "TIME"

.field public static final M_V:Ljava/lang/String; = "V"

.field private static final P_NAME_SIGN:Ljava/lang/String; = "SecretUtil"


# instance fields
.field private TimeStamp:Ljava/lang/String;

.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->TimeStamp:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->context:Landroid/content/ContextWrapper;

    .line 44
    iput-object p1, p0, Lcom/taobao/securityjni/SecretUtil;->context:Landroid/content/ContextWrapper;

    .line 45
    return-void
.end method

.method private InitGlobalData()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/SecretUtil;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    .line 331
    return-void
.end method

.method private native getExternalSignByte([BLcom/taobao/securityjni/tools/DataContext;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getSignNative([BLcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getTopSignByte([BLcom/taobao/securityjni/tools/DataContext;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getTopToken([BLjava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public getExternalSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/securityjni/tools/DataContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 295
    iget-object v6, p0, Lcom/taobao/securityjni/SecretUtil;->context:Landroid/content/ContextWrapper;

    invoke-static {v6}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v4, v5

    .line 324
    :cond_0
    :goto_0
    return-object v4

    .line 299
    :cond_1
    const/4 v4, 0x0

    .line 300
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v3, orgin:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 305
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 313
    check-cast v5, [B

    .line 315
    .local v5, resultByte:[B
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 316
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 315
    invoke-direct {p0, v6, p2}, Lcom/taobao/securityjni/SecretUtil;->getExternalSignByte([BLcom/taobao/securityjni/tools/DataContext;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 321
    :goto_2
    if-eqz v5, :cond_0

    .line 322
    new-instance v4, Ljava/lang/String;

    .end local v4           #result:Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v4       #result:Ljava/lang/String;
    goto :goto_0

    .line 306
    .end local v5           #resultByte:[B
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 308
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 309
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    .end local v2           #name:Ljava/lang/String;
    .restart local v5       #resultByte:[B
    :catch_0
    move-exception v0

    .line 318
    .local v0, ep:Ljava/lang/Throwable;
    const-string v6, "getExternalSign"

    invoke-static {v6, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getLoginTopToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "userName"
    .parameter "time"

    .prologue
    .line 175
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    .line 176
    .local v0, ctx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/securityjni/SecretUtil;->getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 4
    .parameter "userName"
    .parameter "time"
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v3, p0, Lcom/taobao/securityjni/SecretUtil;->context:Landroid/content/ContextWrapper;

    invoke-static {v3}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 197
    check-cast v1, [B

    .line 199
    .local v1, userNameByte:[B
    :try_start_0
    const-string v3, "GBK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 200
    invoke-direct {p0, v1, p2, p3}, Lcom/taobao/securityjni/SecretUtil;->getTopToken([BLjava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 211
    .end local v1           #userNameByte:[B
    :cond_0
    :goto_0
    return-object v2

    .line 202
    .restart local v1       #userNameByte:[B
    :catch_0
    move-exception v0

    .line 203
    .local v0, ep:Ljava/io/UnsupportedEncodingException;
    const-string v3, "getLoginTopToken"

    invoke-static {v3, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 205
    .end local v0           #ep:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 206
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "getLoginTopToken"

    invoke-static {v3, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 208
    .local v0, ep:Ljava/lang/Throwable;
    const-string v3, "getLoginTopToken"

    invoke-static {v3, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "api"
    .parameter "v"
    .parameter "imei"
    .parameter "imsi"
    .parameter "data"
    .parameter "time"

    .prologue
    .line 63
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "api"
    .parameter "v"
    .parameter "imei"
    .parameter "imsi"
    .parameter "data"
    .parameter "ecode"
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 84
    if-eqz p4, :cond_0

    if-nez p7, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v2

    .line 87
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "API"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v3, "V"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "IMEI"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "IMSI"

    invoke-virtual {v1, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-eqz p5, :cond_2

    .line 93
    const-string v3, "DATA"

    invoke-virtual {v1, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    if-eqz p6, :cond_3

    .line 96
    const-string v3, "ECODE"

    invoke-virtual {v1, v3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3
    const-string v3, "TIME"

    invoke-virtual {v1, v3, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    .line 102
    .local v0, ctx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p0, v1, v0}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/securityjni/tools/DataContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v2

    .line 119
    :cond_1
    const/4 v8, 0x0

    .line 120
    .local v8, mtopSign:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v10, orgin:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 123
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 138
    invoke-direct {p0, v0, p2}, Lcom/taobao/securityjni/SecretUtil;->getSignNative([BLcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :cond_3
    :goto_2
    move-object v2, v8

    .line 148
    goto :goto_0

    .line 127
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 128
    .local v9, name:Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/16 v0, 0x5e

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    .end local v9           #name:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 141
    .local v6, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v0, "getMtopSign"

    invoke-static {v0, v6}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 142
    .end local v6           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v6

    .line 143
    .local v6, ep:Ljava/lang/Throwable;
    const-string v0, "getMtopSign"

    invoke-static {v0, v6}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v0, 0x2

    const-string v1, "getSignNative"

    .line 145
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10, v11, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " :[OriginalData]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    move-object v3, v2

    move-object v4, v2

    .line 144
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method public native getTime()Ljava/lang/String;
.end method

.method public getTopSign(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    .line 230
    .local v0, ctx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecretUtil;->getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/securityjni/tools/DataContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 244
    iget-object v7, p0, Lcom/taobao/securityjni/SecretUtil;->context:Landroid/content/ContextWrapper;

    invoke-static {v7}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v4, v5

    .line 279
    :cond_0
    :goto_0
    return-object v4

    .line 248
    :cond_1
    const/4 v4, 0x0

    .line 249
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 253
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v3, orgin:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 256
    .local v6, value:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 263
    check-cast v5, [B

    .line 265
    .local v5, resultByte:[B
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/taobao/securityjni/SecretUtil;->getTopSignByte([BLcom/taobao/securityjni/tools/DataContext;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 275
    :goto_2
    if-eqz v5, :cond_0

    .line 276
    new-instance v4, Ljava/lang/String;

    .end local v4           #result:Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v4       #result:Ljava/lang/String;
    goto :goto_0

    .line 257
    .end local v5           #resultByte:[B
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #value:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 259
    .restart local v6       #value:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 260
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    .end local v2           #name:Ljava/lang/String;
    .restart local v5       #resultByte:[B
    :catch_0
    move-exception v0

    .line 267
    .local v0, ep:Ljava/io/UnsupportedEncodingException;
    const-string v7, "getTopSign"

    invoke-static {v7, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 269
    .end local v0           #ep:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 270
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v7, "getTopSign"

    invoke-static {v7, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 271
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 272
    .local v0, ep:Ljava/lang/Throwable;
    const-string v7, "getTopSign"

    invoke-static {v7, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
