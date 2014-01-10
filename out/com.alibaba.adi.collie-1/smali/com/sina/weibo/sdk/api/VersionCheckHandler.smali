.class public Lcom/sina/weibo/sdk/api/VersionCheckHandler;
.super Ljava/lang/Object;
.source "VersionCheckHandler.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/IVersionCheckHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "VersionCheckHandler"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMessage;)Z
    .locals 5
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v2, "VersionCheckHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check WeiboMessage package : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfoByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    .line 35
    .local v0, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "VersionCheckHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check WeiboMessage WeiboInfo supportApi : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget v1, v0, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I

    const/16 v2, 0x286f

    if-ge v1, v2, :cond_2

    .line 43
    iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v1, v1, Lcom/sina/weibo/sdk/api/VoiceObject;

    if-eqz v1, :cond_2

    .line 44
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 47
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z
    .locals 5
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v2, "VersionCheckHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check WeiboMultiMessage package : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfoByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    .line 60
    .local v0, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-eqz v0, :cond_0

    .line 64
    const-string v2, "VersionCheckHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check WeiboMultiMessage WeiboInfo supportApi : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget v2, v0, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I

    const/16 v3, 0x286f

    if-lt v2, v3, :cond_0

    .line 70
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->mPackageName:Ljava/lang/String;

    .line 24
    return-void
.end method
