.class public Lcom/sina/weibo/sdk/api/WeiboApiImpl;
.super Ljava/lang/Object;
.source "WeiboApiImpl.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/IWeiboAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeiboApiImpl"


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownWeibo:Z

.field private mDownloadListener:Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "appKey"
    .parameter "isDownWeibo"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mDownWeibo:Z

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mAppKey:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mDownWeibo:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getWeiboAppSupportAPI()I
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    .line 135
    .local v0, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-nez v0, :cond_0

    .line 136
    const-string v1, "WeiboApiImpl"

    const-string v2, "getWeiboAppSupportAPI() faild winfo is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v1, -0x1

    .line 139
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I

    goto :goto_0
.end method

.method public isWeiboAppInstalled()Z
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    .line 59
    .local v0, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-nez v0, :cond_0

    .line 60
    const-string v1, "WeiboApiImpl"

    const-string v2, "isWeiboAppInstalled() faild winfo is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWeiboAppSupportAPI()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->getWeiboAppSupportAPI()I

    move-result v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/api/ApiUtils;->isWeiboAppSupportAPI(I)Z

    move-result v0

    return v0
.end method

.method public registerApp()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v1

    .line 37
    .local v1, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-nez v1, :cond_0

    .line 38
    const-string v3, "WeiboApiImpl"

    const-string v4, "registerApp() failed winfo == null"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return v2

    .line 41
    :cond_0
    iget v3, v1, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I

    invoke-static {v3}, Lcom/sina/weibo/sdk/api/ApiUtils;->isWeiboAppSupportAPI(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    const-string v3, "WeiboApiImpl"

    const-string v4, "registerApp() failed not isWeiboAppSupportAPI"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    .line 47
    .local v0, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mAppKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 48
    :cond_2
    const-string v3, "WeiboApiImpl"

    const-string v4, "registerApp() failed appkey is null"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    const-string v2, "WeiboApiImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerApp() packageName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mAppKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/handler/ReceiverHandler;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerWeiboDownloadListener(Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mDownloadListener:Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;

    .line 125
    return-void
.end method

.method public requestListener(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/IWeiboHandler$Request;)Z
    .locals 5
    .parameter "intent"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v3, "_weibo_appPackage"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, appPackage:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 105
    const-string v3, "WeiboApiImpl"

    const-string v4, "requestListener() faild appPackage validateSign faild"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return v2

    .line 108
    :cond_0
    const-string v3, "_weibo_transaction"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 109
    const-string v3, "WeiboApiImpl"

    const-string v4, "requestListener() faild intent TRAN is null"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sina/weibo/sdk/api/ApiUtils;->validateSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    const-string v3, "WeiboApiImpl"

    const-string v4, "requestListener() faild appPackage validateSign faild"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    new-instance v1, Lcom/sina/weibo/sdk/api/ProvideMessageForWeiboRequest;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/api/ProvideMessageForWeiboRequest;-><init>(Landroid/os/Bundle;)V

    .line 118
    .local v1, data:Lcom/sina/weibo/sdk/api/ProvideMessageForWeiboRequest;
    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/api/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/BaseRequest;)V

    .line 119
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public responseListener(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/IWeiboHandler$Response;)Z
    .locals 8
    .parameter "intent"
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    .line 69
    const-string v5, "_weibo_appPackage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, appPackage:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 72
    const-string v5, "WeiboApiImpl"

    const-string v6, "responseListener() faild appPackage is null"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return v4

    .line 75
    :cond_0
    instance-of v5, p2, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 76
    const-string v5, "WeiboApiImpl"

    const-string v6, "responseListener() faild handler is not Activity"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 79
    check-cast v0, Landroid/app/Activity;

    .line 80
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, callPkg:Ljava/lang/String;
    const-string v5, "WeiboApiImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "responseListener() callPkg : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v5, "_weibo_transaction"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 84
    const-string v5, "WeiboApiImpl"

    const-string v6, "responseListener() faild intent TRAN is null"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    const-string v5, "WeiboApiImpl"

    const-string v6, "responseListener() faild appPackage not equal callPkg"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v5, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/sina/weibo/sdk/api/ApiUtils;->validateSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 92
    const-string v5, "WeiboApiImpl"

    const-string v6, "responseListener() faild appPackage validateSign faild"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_4
    new-instance v3, Lcom/sina/weibo/sdk/api/SendMessageToWeiboResponse;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/api/SendMessageToWeiboResponse;-><init>(Landroid/os/Bundle;)V

    .line 97
    .local v3, data:Lcom/sina/weibo/sdk/api/SendMessageToWeiboResponse;
    invoke-interface {p2, v3}, Lcom/sina/weibo/sdk/api/IWeiboHandler$Response;->onResponse(Lcom/sina/weibo/sdk/api/BaseResponse;)V

    .line 98
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/BaseRequest;)Z
    .locals 6
    .parameter "act"
    .parameter "request"

    .prologue
    const/4 v3, 0x0

    .line 169
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 170
    :cond_0
    const-string v4, "WeiboApiImpl"

    const-string v5, "sendRequest faild act == null or request == null"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_1
    :goto_0
    return v3

    .line 174
    :cond_2
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v2

    .line 175
    .local v2, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-nez v2, :cond_3

    .line 176
    const-string v4, "WeiboApiImpl"

    const-string v5, "sendRequest faild winfo is null"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v4, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mDownWeibo:Z

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mDownloadListener:Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;

    invoke-static {p1, v4}, Lcom/sina/weibo/sdk/utils/Util;->createConfirmDialog(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V

    goto :goto_0

    .line 185
    :cond_3
    iget v4, v2, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I

    invoke-static {v4}, Lcom/sina/weibo/sdk/api/ApiUtils;->isWeiboAppSupportAPI(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 186
    const-string v4, "WeiboApiImpl"

    const-string v5, "sendRequest faild isWeiboAppSupportAPI"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_4
    new-instance v0, Lcom/sina/weibo/sdk/api/VersionCheckHandler;

    iget-object v4, v2, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/sina/weibo/sdk/api/VersionCheckHandler;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, checkHandler:Lcom/sina/weibo/sdk/api/VersionCheckHandler;
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4, v0}, Lcom/sina/weibo/sdk/api/BaseRequest;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/VersionCheckHandler;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 192
    const-string v4, "WeiboApiImpl"

    const-string v5, "sendRequest faild request check faild"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v1, data:Landroid/os/Bundle;
    invoke-virtual {p2, v1}, Lcom/sina/weibo/sdk/api/BaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 197
    iget-object v3, v2, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mAppKey:Ljava/lang/String;

    invoke-static {p1, v3, v4, v1}, Lcom/sina/weibo/sdk/handler/ActivityHandler;->sendToWeibo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    goto :goto_0
.end method

.method public sendResponse(Lcom/sina/weibo/sdk/api/BaseResponse;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 202
    if-nez p1, :cond_0

    .line 203
    const-string v2, "WeiboApiImpl"

    const-string v3, "sendResponse failed response null"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return v1

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sina/weibo/sdk/api/VersionCheckHandler;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/VersionCheckHandler;-><init>()V

    invoke-virtual {p1, v2, v3}, Lcom/sina/weibo/sdk/api/BaseResponse;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/VersionCheckHandler;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "WeiboApiImpl"

    const-string v3, "sendResponse checkArgs fail"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/api/BaseResponse;->toBundle(Landroid/os/Bundle;)V

    .line 213
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mAppKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sina/weibo/sdk/handler/ReceiverHandler;->sendToWeibo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public startWeibo()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v2

    .line 145
    .local v2, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-nez v2, :cond_0

    .line 146
    const-string v4, "WeiboApiImpl"

    const-string v5, "startWeibo() faild winfo is null"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return v3

    .line 150
    :cond_0
    :try_start_0
    iget-object v1, v2, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    .line 151
    .local v1, packageName:Ljava/lang/String;
    const-string v4, "WeiboApiImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startWeibo() packageName : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const-string v4, "WeiboApiImpl"

    const-string v5, "startWeibo() faild packageName is null"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v1           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WeiboApiImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    const/4 v3, 0x1

    goto :goto_0
.end method
