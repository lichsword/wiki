.class public Lcom/ut/share/component/a;
.super Ljava/lang/Object;
.source "ShareController.java"


# instance fields
.field private mShareData:Lcom/ut/share/data/ShareData;

.field private mShareView:Lcom/ut/share/view/ShareView;

.field private pi:Lcom/ut/share/component/ShareProcessor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/view/ShareView;Lcom/ut/share/data/ShareData;)V
    .locals 2
    .parameter "context"
    .parameter "shareView"
    .parameter "data"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p3, p0, Lcom/ut/share/component/a;->mShareData:Lcom/ut/share/data/ShareData;

    .line 22
    new-instance v0, Lcom/ut/share/component/ShareProcessor;

    iget-object v1, p0, Lcom/ut/share/component/a;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-direct {v0, p1, v1}, Lcom/ut/share/component/ShareProcessor;-><init>(Landroid/app/Activity;Lcom/ut/share/data/ShareData;)V

    iput-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    .line 23
    iput-object p2, p0, Lcom/ut/share/component/a;->mShareView:Lcom/ut/share/view/ShareView;

    .line 24
    iget-object v0, p0, Lcom/ut/share/component/a;->mShareView:Lcom/ut/share/view/ShareView;

    new-instance v1, Lcom/ut/share/component/a$1;

    invoke-direct {v1, p0}, Lcom/ut/share/component/a$1;-><init>(Lcom/ut/share/component/a;)V

    invoke-interface {v0, v1}, Lcom/ut/share/view/ShareView;->setShareListener(Lcom/ut/share/view/ShareListener;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/ut/share/component/a;)Lcom/ut/share/component/ShareProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    return-object v0
.end method


# virtual methods
.method public eb()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    invoke-virtual {v1}, Lcom/ut/share/component/ShareProcessor;->retrieveShareAppList()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Lcom/ut/share/data/ShareAppInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/ut/share/component/a;->mShareView:Lcom/ut/share/view/ShareView;

    iget-object v2, p0, Lcom/ut/share/component/a;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/ut/share/view/ShareView;->makeView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public setDisableSharePlatforms(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, platforms:Ljava/util/Set;,"Ljava/util/Set<Lcom/ut/share/SharePlatform;>;"
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    invoke-virtual {v0, p1}, Lcom/ut/share/component/ShareProcessor;->setDisableSharePlatforms(Ljava/util/Set;)V

    .line 57
    return-void
.end method

.method public setLaiwangAppID(Ljava/lang/String;)V
    .locals 1
    .parameter "laiwangAppID"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    invoke-virtual {v0, p1}, Lcom/ut/share/component/ShareProcessor;->setLaiwangAppID(Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public setLaiwangSecretID(Ljava/lang/String;)V
    .locals 1
    .parameter "laiwangSecretID"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    invoke-virtual {v0, p1}, Lcom/ut/share/component/ShareProcessor;->setLaiwangSecretID(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public setWangxinAppID(Ljava/lang/String;)V
    .locals 1
    .parameter "wangxinAppID"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    invoke-virtual {v0, p1}, Lcom/ut/share/component/ShareProcessor;->setWangxinAppID(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public setWeixinAppID(Ljava/lang/String;)V
    .locals 1
    .parameter "weixinAppID"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ut/share/component/a;->pi:Lcom/ut/share/component/ShareProcessor;

    invoke-virtual {v0, p1}, Lcom/ut/share/component/ShareProcessor;->setWeixinAppID(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method
