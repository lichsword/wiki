.class public Lorg/android/agoo/client/DeviceService;
.super Ljava/lang/Object;
.source "DeviceService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegistrationId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "ttId"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, registrationId:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p0, p1, p2, p3}, Lorg/android/agoo/client/DeviceService;->getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lorg/android/agoo/config/Config;->setDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "ttId"

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 25
    .local v2, deviceId:Ljava/lang/String;
    :try_start_0
    const-string v7, "DeviceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRemoteDeviceID--->appkey=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|appSecret=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|ttId=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v4, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v4}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 28
    .local v4, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v7, "mtop.sys.newDeviceId"

    invoke-virtual {v4, v7}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 29
    const-string v7, "4.0"

    invoke-virtual {v4, v7}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, p3}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 31
    const-string v7, "new_device"

    const-string v8, "true"

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->getUtdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, utdId:Ljava/lang/String;
    const-string v7, "device_global_id"

    invoke-virtual {v4, v7, v6}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string v7, "c0"

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v7, "c1"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v7, "c2"

    invoke-static {p0}, Lorg/android/agoo/helper/PhoneHelper;->getOriginalImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v7, "c3"

    invoke-static {p0}, Lorg/android/agoo/helper/PhoneHelper;->getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v7, "c4"

    invoke-static {p0}, Lorg/android/agoo/helper/PhoneHelper;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v7, "c5"

    invoke-static {}, Lorg/android/agoo/helper/PhoneHelper;->getSerialNum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v7, "c6"

    invoke-static {p0}, Lorg/android/agoo/helper/PhoneHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    .line 43
    .local v0, client:Lorg/android/agoo/net/mtop/IMtopSynClient;
    invoke-interface {v0, p1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppkey(Ljava/lang/String;)V

    .line 44
    invoke-interface {v0, p2}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 46
    invoke-interface {v0, p0, v4}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v5

    .line 47
    .local v5, result:Lorg/android/agoo/net/mtop/Result;
    const-string v7, "DeviceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/android/agoo/net/mtop/Result;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    invoke-virtual {v5}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, content:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v7, "device_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    .end local v0           #client:Lorg/android/agoo/net/mtop/IMtopSynClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #request:Lorg/android/agoo/net/mtop/MtopRequest;
    .end local v5           #result:Lorg/android/agoo/net/mtop/Result;
    .end local v6           #utdId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v7

    goto :goto_0
.end method
