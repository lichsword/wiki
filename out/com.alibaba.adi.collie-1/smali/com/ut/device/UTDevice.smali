.class public Lcom/ut/device/UTDevice;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ut/device/b;
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/ut/device/c;->a(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    return-object v0
.end method

.method public static getUtImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/ut/device/c;->a(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    .line 36
    .local v0, device:Lcom/ut/device/b;
    if-nez v0, :cond_0

    const-string v1, "000000000000000"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUtImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/ut/device/c;->a(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    .line 46
    .local v0, device:Lcom/ut/device/b;
    if-nez v0, :cond_0

    const-string v1, "000000000000000"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ut/device/b;->getImsi()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/ut/device/c;->a(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    .line 26
    .local v0, device:Lcom/ut/device/b;
    if-nez v0, :cond_0

    const-string v1, "ffffffffffffffffffffffff"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
