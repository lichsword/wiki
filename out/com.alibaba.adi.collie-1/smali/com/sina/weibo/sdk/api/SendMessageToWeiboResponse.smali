.class public Lcom/sina/weibo/sdk/api/SendMessageToWeiboResponse;
.super Lcom/sina/weibo/sdk/api/BaseResponse;
.source "SendMessageToWeiboResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseResponse;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseResponse;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/SendMessageToWeiboResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method


# virtual methods
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/VersionCheckHandler;)Z
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseResponse;->toBundle(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
