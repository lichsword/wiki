.class public Lcom/sina/weibo/sdk/handler/ReceiverHandler;
.super Ljava/lang/Object;
.source "ReceiverHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "content"

    .prologue
    .line 40
    const-string v0, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/handler/ReceiverHandler;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "action"
    .parameter "key"
    .parameter "data"

    .prologue
    .line 21
    const-string v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    .line 22
    .local v2, permission:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, appPackage:Ljava/lang/String;
    const-string v3, "_weibo_sdkVersion"

    const/16 v4, 0x16

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v3, "_weibo_appPackage"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v3, "_weibo_appKey"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v3, "_weibo_flag"

    const v4, 0x20130329

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v3, "_weibo_sign"

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/Util;->getSign(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 35
    const-string v3, "ReceiverHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send message, intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 36
    const-string v5, ", appPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static sendToWeibo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "context"
    .parameter "mAppKey"
    .parameter "data"

    .prologue
    .line 44
    const-string v0, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_RESPONSE"

    invoke-static {p0, v0, p1, p2}, Lcom/sina/weibo/sdk/handler/ReceiverHandler;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method
