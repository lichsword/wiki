.class public Lcom/sina/weibo/sdk/api/SendMultiMessageToWeiboRequest;
.super Lcom/sina/weibo/sdk/api/BaseRequest;
.source "SendMultiMessageToWeiboRequest.java"


# instance fields
.field public multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseRequest;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseRequest;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/SendMultiMessageToWeiboRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method


# virtual methods
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/VersionCheckHandler;)Z
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    if-eqz p2, :cond_2

    .line 45
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {p2, p1, v1}, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 32
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method
