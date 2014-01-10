.class public Lcom/sina/weibo/sdk/api/ProvideMessageForWeiboRequest;
.super Lcom/sina/weibo/sdk/api/BaseRequest;
.source "ProvideMessageForWeiboRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseRequest;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseRequest;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/ProvideMessageForWeiboRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method


# virtual methods
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/VersionCheckHandler;)Z
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method
