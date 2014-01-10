.class public interface abstract Lcom/sina/weibo/sdk/api/IWeiboAPI;
.super Ljava/lang/Object;
.source "IWeiboAPI.java"


# virtual methods
.method public abstract getWeiboAppSupportAPI()I
.end method

.method public abstract isWeiboAppInstalled()Z
.end method

.method public abstract isWeiboAppSupportAPI()Z
.end method

.method public abstract registerApp()Z
.end method

.method public abstract registerWeiboDownloadListener(Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
.end method

.method public abstract requestListener(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/IWeiboHandler$Request;)Z
.end method

.method public abstract responseListener(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/IWeiboHandler$Response;)Z
.end method

.method public abstract sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/BaseRequest;)Z
.end method

.method public abstract sendResponse(Lcom/sina/weibo/sdk/api/BaseResponse;)Z
.end method

.method public abstract startWeibo()Z
.end method
