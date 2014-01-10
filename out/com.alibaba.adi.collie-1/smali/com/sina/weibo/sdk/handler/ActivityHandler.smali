.class public Lcom/sina/weibo/sdk/handler/ActivityHandler;
.super Ljava/lang/Object;
.source "ActivityHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "act"
    .parameter "pkgName"
    .parameter "action"
    .parameter "key"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 24
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 27
    :cond_0
    const-string v4, "ActivityHandler"

    const-string v5, "send fail, invalid arguments"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return v3

    .line 30
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, appPackage:Ljava/lang/String;
    const-string v4, "_weibo_sdkVersion"

    const/16 v5, 0x16

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string v4, "_weibo_appPackage"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v4, "_weibo_appKey"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v4, "_weibo_flag"

    const v5, 0x20130329

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string v4, "_weibo_sign"

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/Util;->getSign(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    if-eqz p4, :cond_2

    .line 42
    invoke-virtual {v2, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 45
    :cond_2
    const/16 v4, 0x2fd

    :try_start_0
    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const-string v3, "ActivityHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send weibo message, intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v3, 0x1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ActivityHandler"

    .line 48
    const-string v5, "send fail, target ActivityNotFound"

    .line 47
    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendToWeibo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "act"
    .parameter "packageName"
    .parameter "content"
    .parameter "data"

    .prologue
    .line 17
    const-string v0, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/sina/weibo/sdk/handler/ActivityHandler;->send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
