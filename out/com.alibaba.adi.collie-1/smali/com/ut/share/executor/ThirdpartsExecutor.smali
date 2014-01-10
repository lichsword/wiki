.class public Lcom/ut/share/executor/ThirdpartsExecutor;
.super Lcom/ut/share/executor/Executor;
.source "ThirdpartsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;
    }
.end annotation


# instance fields
.field private mThirdPartsInfo:Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V
    .locals 0
    .parameter "context"
    .parameter "spt"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ut/share/executor/Executor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 31
    return-void
.end method

.method private chooseLink()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    iget-object v2, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mSpt:Lcom/ut/share/SharePlatform;

    const-string v3, "weibo_k_nowrap_url"

    invoke-virtual {v1, v2, v3}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, nowrapURL:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private genShareContent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 87
    iget-object v4, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mSpt:Lcom/ut/share/SharePlatform;

    sget-object v5, Lcom/ut/share/SharePlatform;->SinaWeibo:Lcom/ut/share/SharePlatform;

    if-ne v4, v5, :cond_1

    .line 88
    iget-object v4, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v4}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, ctext:Ljava/lang/String;
    invoke-direct {p0}, Lcom/ut/share/executor/ThirdpartsExecutor;->chooseLink()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, clink:Ljava/lang/String;
    invoke-static {v1}, Lcom/ut/share/utils/b;->ap(Ljava/lang/String;)I

    move-result v3

    .line 91
    .local v3, textLen:I
    invoke-static {v0}, Lcom/ut/share/utils/b;->ap(Ljava/lang/String;)I

    move-result v2

    .line 92
    .local v2, linkLen:I
    add-int v4, v3, v2

    const/16 v5, 0x118

    if-lt v4, v5, :cond_0

    .line 94
    add-int/lit8 v4, v2, 0x1

    rsub-int v4, v4, 0xf0

    invoke-static {v1, v4}, Lcom/ut/share/utils/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .end local v0           #clink:Ljava/lang/String;
    .end local v1           #ctext:Ljava/lang/String;
    .end local v2           #linkLen:I
    .end local v3           #textLen:I
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v5}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/ut/share/executor/ThirdpartsExecutor;->chooseLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getpics()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, pics:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getPicUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getQRCodeUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-object v0
.end method


# virtual methods
.method public doShare()Z
    .locals 5

    .prologue
    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mThirdPartsInfo:Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;

    iget-object v3, v3, Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mThirdPartsInfo:Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;

    iget-object v4, v4, Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;->activityName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v3}, Lcom/ut/share/data/ShareData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "android.intent.extra.TEXT"

    invoke-direct {p0}, Lcom/ut/share/executor/ThirdpartsExecutor;->genShareContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getPicUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getQRCodeUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    .line 57
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 62
    :cond_0
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getQRCodeUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v3}, Lcom/ut/share/data/ShareData;->getQRCodeUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_1
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v3}, Lcom/ut/share/data/ShareData;->getPicUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isDirectly()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public setThirdPartsInfo(Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ut/share/executor/ThirdpartsExecutor;->mThirdPartsInfo:Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;

    .line 37
    return-void
.end method
