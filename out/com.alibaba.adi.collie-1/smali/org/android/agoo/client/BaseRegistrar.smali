.class public Lorg/android/agoo/client/BaseRegistrar;
.super Ljava/lang/Object;
.source "BaseRegistrar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static baseRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "ttId"

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/android/agoo/client/BaseRegistrar;->baseRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method protected static baseRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "ttId"
    .parameter "hasAli"

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/android/agoo/client/AgooSettings;->setAgooSecurityMode(Landroid/content/Context;Z)V

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/ipp/IppFacade;->performProtectOnlyOnce(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lorg/android/agoo/config/Config;->resetBackoff(Landroid/content/Context;)V

    .line 54
    invoke-static {p0, p1, p2, p3}, Lorg/android/agoo/config/Config;->setAppInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lorg/android/agoo/config/Config;->enableApp(Landroid/content/Context;)V

    .line 56
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->internalRegister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static checkDevice(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    return-void
.end method

.method private static final checkIntentService(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    return-void
.end method

.method static checkManifest(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->checkIntentService(Landroid/content/Context;)V

    .line 27
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->checkService(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->checkReceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static checkReceiver(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    return-void
.end method

.method private static final checkService(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    return-void
.end method

.method public static final getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, registrationId:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static internalRegister(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    :try_start_0
    const-string v1, "register"

    invoke-static {p0, v1}, Lorg/android/agoo/client/IntentHelper;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static internalUnregister(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    :try_start_0
    const-string v1, "unregister"

    invoke-static {p0, v1}, Lorg/android/agoo/client/IntentHelper;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final isRegistered(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 106
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, registrationId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 110
    .end local v0           #registrationId:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->unregister(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->stopLog(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Lorg/android/agoo/config/Config;->resetBackoff(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->internalUnregister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method
