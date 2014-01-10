.class public Lcom/taobao/statistic/core/m;
.super Lcom/taobao/statistic/c/b;
.source "SoftConfig.java"


# instance fields
.field private A:Ljava/lang/String;

.field private mA:Ljava/lang/String;

.field private mB:Ljava/lang/String;

.field private mC:Z

.field private mD:Lcom/taobao/statistic/UTEventDispatchListener;

.field private mw:Z

.field private mx:Z

.field private my:Z

.field private mz:Z


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 4
    .parameter "aRuntime"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 10
    iput-boolean v2, p0, Lcom/taobao/statistic/core/m;->mw:Z

    .line 11
    iput-boolean v2, p0, Lcom/taobao/statistic/core/m;->mx:Z

    .line 12
    iput-boolean v3, p0, Lcom/taobao/statistic/core/m;->my:Z

    .line 13
    iput-boolean v2, p0, Lcom/taobao/statistic/core/m;->mz:Z

    .line 14
    const-string v1, "-"

    iput-object v1, p0, Lcom/taobao/statistic/core/m;->mA:Ljava/lang/String;

    .line 15
    const-string v1, "-"

    iput-object v1, p0, Lcom/taobao/statistic/core/m;->mB:Ljava/lang/String;

    .line 16
    const-string v1, "-"

    iput-object v1, p0, Lcom/taobao/statistic/core/m;->A:Ljava/lang/String;

    .line 17
    iput-boolean v2, p0, Lcom/taobao/statistic/core/m;->mC:Z

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/statistic/core/m;->mD:Lcom/taobao/statistic/UTEventDispatchListener;

    .line 31
    invoke-static {v2}, Lcom/taobao/statistic/core/d;->j(Z)V

    .line 32
    invoke-static {v2}, Lcom/taobao/statistic/core/d;->i(Z)V

    .line 33
    iget-object v1, p0, Lcom/taobao/statistic/core/m;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, packageName:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.taobao.statistic.test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {v3}, Lcom/taobao/statistic/core/d;->i(Z)V

    .line 37
    iput-boolean v3, p0, Lcom/taobao/statistic/core/m;->mz:Z

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;)V
    .locals 0
    .parameter "appkey"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/taobao/statistic/core/m;->mA:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0
    .parameter "appSecret"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/taobao/statistic/core/m;->mB:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public a(Lcom/taobao/statistic/UTEventDispatchListener;)V
    .locals 0
    .parameter "pEventDisaptchListener"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/taobao/statistic/core/m;->mD:Lcom/taobao/statistic/UTEventDispatchListener;

    .line 27
    return-void
.end method

.method public cA()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/taobao/statistic/core/m;->mz:Z

    return v0
.end method

.method public cB()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/taobao/statistic/core/m;->mC:Z

    return v0
.end method

.method public cu()Lcom/taobao/statistic/UTEventDispatchListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/statistic/core/m;->mD:Lcom/taobao/statistic/UTEventDispatchListener;

    return-object v0
.end method

.method public cv()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/taobao/statistic/core/m;->mw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/statistic/core/m;->mz:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cw()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/taobao/statistic/core/m;->my:Z

    return v0
.end method

.method public cx()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/taobao/statistic/core/m;->mw:Z

    return v0
.end method

.method public cy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/statistic/core/m;->mA:Ljava/lang/String;

    return-object v0
.end method

.method public cz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/statistic/core/m;->mB:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/statistic/core/m;->A:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .locals 1
    .parameter "isDebug"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/taobao/statistic/core/m;->mw:Z

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/taobao/statistic/core/d;->j(Z)V

    .line 71
    return-void
.end method

.method public n(Z)V
    .locals 0
    .parameter "useSecuritySDK"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/taobao/statistic/core/m;->mC:Z

    .line 107
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/taobao/statistic/core/m;->A:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public turnOffLogFriendly()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/core/m;->my:Z

    .line 62
    return-void
.end method
