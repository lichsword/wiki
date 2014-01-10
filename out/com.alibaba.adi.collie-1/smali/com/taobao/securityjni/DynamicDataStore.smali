.class public Lcom/taobao/securityjni/DynamicDataStore;
.super Ljava/lang/Object;
.source "DynamicDataStore.java"


# static fields
.field private static final P_NAME_DYNAMIC:Ljava/lang/String; = "DynamicDataStore"


# instance fields
.field private context:Landroid/content/ContextWrapper;

.field private currentSp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    .line 23
    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->currentSp:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p1, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    const-string v2, "DynamicData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->currentSp:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method private GetImeiPR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetImsiPR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 451
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    if-nez v2, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v1

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->currentSp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 456
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    .line 457
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    const-string v3, "DynamicData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 458
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->currentSp:Ljava/lang/ref/WeakReference;

    .line 461
    :cond_2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private InitGlobalData()V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    .line 480
    return-void
.end method

.method private SetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 434
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->currentSp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 438
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_2

    .line 439
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    const-string v3, "DynamicData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->currentSp:Ljava/lang/ref/WeakReference;

    .line 443
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 444
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private native getBooleanNative(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getByteArrayNative(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getFloatNative(Ljava/lang/String;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getIntNative(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getLongNative(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native getStringByte(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native putBooleanNative(Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native putByteArrayNative(Ljava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native putFloatNative(Ljava/lang/String;F)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native putIntNative(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native putLongNative(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native putStringNative(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 6
    .parameter "key"

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, ret:Z
    if-eqz p1, :cond_1

    .line 378
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getBooleanNative(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "getBoolean"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 384
    .local v0, ep:Ljava/lang/Throwable;
    const-string v2, "getBoolean"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 389
    .end local v0           #ep:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x1

    const-string v3, "getBoolean"

    const-string v4, ""

    const-string v5, "key null"

    invoke-static {v2, v3, v4, v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityInfoNoPubKeyExtra(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "key"

    .prologue
    .line 410
    const/4 v1, 0x0

    check-cast v1, [B

    .line 411
    .local v1, ret:[B
    if-eqz p1, :cond_1

    .line 412
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getByteArrayNative(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 425
    :cond_0
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "getByteArray"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 417
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 418
    .local v0, ep:Ljava/lang/Throwable;
    const-string v2, "getByteArray"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 422
    .end local v0           #ep:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x1

    const-string v3, "getByteArray"

    const-string v4, ""

    const-string v5, "key null"

    invoke-static {v2, v3, v4, v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityInfoNoPubKeyExtra(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 6
    .parameter "key"

    .prologue
    .line 309
    const/high16 v1, -0x4080

    .line 310
    .local v1, ret:F
    if-eqz p1, :cond_1

    .line 311
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getFloatNative(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 323
    :cond_0
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "getFloat"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 316
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 317
    .local v0, ep:Ljava/lang/Throwable;
    const-string v2, "getFloat"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 321
    .end local v0           #ep:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x1

    const-string v3, "getFloat"

    const-string v4, ""

    const-string v5, "key null"

    invoke-static {v2, v3, v4, v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityInfoNoPubKeyExtra(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 6
    .parameter "key"

    .prologue
    .line 276
    const/4 v1, -0x1

    .line 277
    .local v1, ret:I
    if-eqz p1, :cond_1

    .line 278
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getIntNative(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "getInt"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 283
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 284
    .local v0, ep:Ljava/lang/Throwable;
    const-string v2, "getInt"

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    .end local v0           #ep:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x1

    const-string v3, "getInt"

    const-string v4, ""

    const-string v5, "key null"

    invoke-static {v2, v3, v4, v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityInfoNoPubKeyExtra(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 7
    .parameter "key"

    .prologue
    .line 342
    const-wide/16 v1, -0x1

    .line 343
    .local v1, ret:J
    if-eqz p1, :cond_1

    .line 344
    iget-object v3, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v3}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getLongNative(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 356
    :cond_0
    :goto_0
    return-wide v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "getLong"

    invoke-static {v3, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 350
    .local v0, ep:Ljava/lang/Throwable;
    const-string v3, "getLong"

    invoke-static {v3, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 354
    .end local v0           #ep:Ljava/lang/Throwable;
    :cond_1
    const/4 v3, 0x1

    const-string v4, "getLong"

    const-string v5, ""

    const-string v6, "key null"

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityInfoNoPubKeyExtra(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 236
    move-object v0, v2

    check-cast v0, [B

    .line 237
    .local v0, data:[B
    if-eqz p1, :cond_2

    .line 238
    iget-object v3, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v3}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getStringByte(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 251
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 252
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 254
    :cond_1
    return-object v2

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "getString"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    .end local v1           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    .line 244
    .local v1, ep:Ljava/lang/Throwable;
    const-string v3, "getString"

    invoke-static {v3, v1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 248
    .end local v1           #ep:Ljava/lang/Throwable;
    :cond_2
    const/4 v3, 0x1

    const-string v4, "getString"

    const-string v5, ""

    const-string v6, "key null"

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityInfoNoPubKeyExtra(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 144
    const/4 v1, -0x1

    .line 145
    .local v1, ret:I
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/DynamicDataStore;->putBooleanNative(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putBoolean"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 151
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putBoolean"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putByteArray(Ljava/lang/String;[B)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 204
    const/4 v1, -0x1

    .line 205
    .local v1, ret:I
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/DynamicDataStore;->putByteArrayNative(Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putByteArray"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 210
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 211
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putByteArray"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 115
    const/4 v1, -0x1

    .line 116
    .local v1, ret:I
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/DynamicDataStore;->putFloatNative(Ljava/lang/String;F)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putFloat"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 122
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putFloat"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 85
    const/4 v1, -0x1

    .line 86
    .local v1, ret:I
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/DynamicDataStore;->putIntNative(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putInt"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 92
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putInt"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 173
    const/4 v1, -0x1

    .line 174
    .local v1, ret:I
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/securityjni/DynamicDataStore;->putLongNative(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putLong"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 180
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putLong"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 52
    const/4 v1, -0x1

    .line 53
    .local v1, ret:I
    iget-object v2, p0, Lcom/taobao/securityjni/DynamicDataStore;->context:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/DynamicDataStore;->putStringNative(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putString"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 59
    .local v0, ep:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putString"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
