.class public Landroid/taobao/nativewebview/ResNativer;
.super Ljava/lang/Object;
.source "ResNativer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localize(Ljava/lang/String;ILandroid/app/Application;)Ljava/lang/String;
    .locals 6
    .parameter "html"
    .parameter "filterMode"
    .parameter "context"

    .prologue
    .line 10
    invoke-static {p1, p2}, Landroid/taobao/nativewebview/ResUtil;->filtrate(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 11
    .local v2, resUrls:[Ljava/lang/String;
    invoke-static {p3}, Landroid/taobao/nativewebview/CacheMgr;->init(Landroid/app/Application;)V

    .line 13
    if-eqz v2, :cond_1

    .line 14
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 15
    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/taobao/nativewebview/CacheMgr;->getLocRes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, localUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 18
    const-string v3, "ResNativer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_1
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    aget-object v3, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    .end local v0           #i:I
    .end local v1           #localUrl:Ljava/lang/String;
    :cond_1
    return-object p1
.end method
