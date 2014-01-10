.class public Lcom/laiwang/openapi/IILWAPIChannelProxy;
.super Ljava/lang/Object;
.source "IILWAPIChannelProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;,
        Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;
    }
.end annotation


# instance fields
.field private mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

.field private mLaiwangConnection:Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;

.field private mTimeStemp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

    .line 22
    iput-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/laiwang/openapi/IILWAPIChannelProxy;)J
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mTimeStemp:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/laiwang/openapi/IILWAPIChannelProxy;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mTimeStemp:J

    return-void
.end method

.method static synthetic access$2(Lcom/laiwang/openapi/IILWAPIChannelProxy;Lcom/laiwang/openapi/service/IILWAPIChannel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

    return-void
.end method


# virtual methods
.method public bindLaiwangService(Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;)Z
    .locals 6
    .parameter "iSDKConnListener"

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v3, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;

    if-nez v3, :cond_2

    .line 81
    new-instance v3, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;

    invoke-direct {v3, p0, p1}, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;-><init>(Lcom/laiwang/openapi/IILWAPIChannelProxy;Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;)V

    iput-object v3, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;

    .line 89
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v2, intentService:Landroid/content/Intent;
    const-string v3, "com.alibaba.android.babylon"

    const-string v4, "com.alibaba.android.babylon.push.CMNSService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v3, "LWAPI"

    const-string v4, "Laiwang service is binding."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-boolean v3, Lcom/laiwang/openapi/LWAPI;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 94
    const-string v3, "SDK:laiwang binding"

    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/laiwang/openapi/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 97
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mTimeStemp:J

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, exitService:Z
    :try_start_0
    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    .end local v1           #exitService:Z
    .end local v2           #intentService:Landroid/content/Intent;
    :goto_0
    return v1

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 84
    const-string v3, "LWAPI"

    const-string v4, "Laiwang service has already started."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-interface {p1}, Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;->onStart()V

    goto :goto_0

    .line 102
    .restart local v1       #exitService:Z
    .restart local v2       #intentService:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerAPP(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/IILWAPICallback;ILjava/lang/String;)I
    .locals 3
    .parameter "iLWAPIAccount"
    .parameter "iLWAPICallback"
    .parameter "version"
    .parameter "appName"

    .prologue
    .line 64
    const/4 v1, -0x1

    .line 66
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/laiwang/openapi/service/IILWAPIChannel;->registerME(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/IILWAPICallback;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 75
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public responceData(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/message/LWMessage;I)I
    .locals 2
    .parameter "lwAPIAccount"
    .parameter "lwMessage"
    .parameter "version"

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

    invoke-interface {v1, p1, p2, p3}, Lcom/laiwang/openapi/service/IILWAPIChannel;->responceData(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/message/LWMessage;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 40
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public transportData(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/message/LWMessage;I)I
    .locals 4
    .parameter "lwAPIAccount"
    .parameter "lwMessage"
    .parameter "version"

    .prologue
    const/4 v2, -0x1

    .line 45
    const/4 v1, -0x1

    .line 47
    .local v1, ret:I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/laiwang/openapi/LWAPIAccount;->setLwapiRandomKey(I)V

    .line 48
    iget-object v3, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;

    invoke-interface {v3, p1, p2, p3}, Lcom/laiwang/openapi/service/IILWAPIChannel;->transportData(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/message/LWMessage;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/laiwang/openapi/LWAPIAccount;->getLwapiRandomKey()I

    move-result v3

    if-nez v3, :cond_0

    .line 59
    :goto_0
    return v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v2, v1

    .line 59
    goto :goto_0
.end method
