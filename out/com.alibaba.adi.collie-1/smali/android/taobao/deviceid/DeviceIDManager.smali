.class public Landroid/taobao/deviceid/DeviceIDManager;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"

# interfaces
.implements Landroid/taobao/common/i/IDeviceIDManager;


# static fields
.field private static final DEVICEID:Ljava/lang/String; = "deviceId"

.field private static final DEVICEID_CREATED:Ljava/lang/String; = "deviceId_created"

.field private static final DEVICEID_JSONINFO:Ljava/lang/String; = "deviceId_jsoniInfo"

.field private static final DEVICEID_STORE:Ljava/lang/String; = "deviceId_store"

.field private static final TAG:Ljava/lang/String; = "DeviceIdManager"

.field private static sInstance:Landroid/taobao/deviceid/DeviceIDManager;


# instance fields
.field private mCreated:Z

.field private mDeviceId:Ljava/lang/String;

.field private mLastFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/deviceid/DeviceIDManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Landroid/taobao/deviceid/DeviceIDManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroid/taobao/deviceid/DeviceIDManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/taobao/deviceid/DeviceIDManager;->getSharePreferenceDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/taobao/deviceid/DeviceIDManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/taobao/deviceid/DeviceIDManager;->getRemoteDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteDeviceID(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 160
    const-string v2, "DeviceIdManager"

    const-string v3, "deleteSharePreferenceId"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "deviceId_store"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, storage:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "deviceId_jsoniInfo"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/deviceid/DeviceIDManager;
    .locals 2

    .prologue
    .line 53
    const-class v1, Landroid/taobao/deviceid/DeviceIDManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/deviceid/DeviceIDManager;->sInstance:Landroid/taobao/deviceid/DeviceIDManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/taobao/deviceid/DeviceIDManager;

    invoke-direct {v0}, Landroid/taobao/deviceid/DeviceIDManager;-><init>()V

    sput-object v0, Landroid/taobao/deviceid/DeviceIDManager;->sInstance:Landroid/taobao/deviceid/DeviceIDManager;

    .line 56
    :cond_0
    sget-object v0, Landroid/taobao/deviceid/DeviceIDManager;->sInstance:Landroid/taobao/deviceid/DeviceIDManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRemoteDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 69
    new-instance v5, Lmtop/sys/newDeviceId/Request;

    invoke-direct {v5}, Lmtop/sys/newDeviceId/Request;-><init>()V

    .line 70
    .local v5, request:Lmtop/sys/newDeviceId/Request;
    invoke-static {p1}, Lcom/taobao/statistic/core/DeviceInfo;->getDevice(Landroid/content/Context;)Lcom/taobao/statistic/core/Device;

    move-result-object v1

    .line 71
    .local v1, d:Lcom/taobao/statistic/core/Device;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/taobao/statistic/core/Device;->getUdid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/taobao/statistic/core/Device;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/taobao/statistic/core/Device;->getImsi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, device_global_id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v8

    .line 74
    :cond_1
    invoke-virtual {v5, v3}, Lmtop/sys/newDeviceId/Request;->setDevice_global_id(Ljava/lang/String;)V

    .line 75
    iget-boolean v9, p0, Landroid/taobao/deviceid/DeviceIDManager;->mCreated:Z

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setNew_device(Z)V

    .line 77
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setC0(Ljava/lang/String;)V

    .line 78
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setC1(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Landroid/taobao/util/PhoneInfo;->getOriginalImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setC2(Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Landroid/taobao/util/PhoneInfo;->getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setC3(Ljava/lang/String;)V

    .line 81
    invoke-static {p1}, Landroid/taobao/util/PhoneInfo;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setC4(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Landroid/taobao/util/PhoneInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setC5(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Landroid/taobao/util/PhoneInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtop/sys/newDeviceId/Request;->setC6(Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/taobao/apirequest/MTOPConnectorHelper;

    const-class v9, Lmtop/sys/newDeviceId/Response;

    invoke-direct {v0, v9}, Landroid/taobao/apirequest/MTOPConnectorHelper;-><init>(Ljava/lang/Class;)V

    .line 86
    .local v0, ch:Landroid/taobao/apirequest/MTOPConnectorHelper;
    invoke-virtual {v0, v5}, Landroid/taobao/apirequest/MTOPConnectorHelper;->setInputObj(Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/MTOPConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v4

    .line 88
    .local v4, obj:Ljava/lang/Object;
    const/4 v8, 0x0

    .line 89
    .local v8, ret:Ljava/lang/String;
    if-eqz v4, :cond_0

    instance-of v9, v4, Landroid/taobao/apirequest/ApiResult;

    if-eqz v9, :cond_0

    move-object v7, v4

    .line 90
    check-cast v7, Landroid/taobao/apirequest/ApiResult;

    .line 91
    .local v7, result:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {v7}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Landroid/taobao/apirequest/ApiResult;->isApiSuccess()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    check-cast v4, Landroid/taobao/apirequest/ApiResult;

    .end local v4           #obj:Ljava/lang/Object;
    iget-object v6, v4, Landroid/taobao/apirequest/ApiResult;->data:Ljava/lang/Object;

    check-cast v6, Lmtop/sys/newDeviceId/Response;

    .line 94
    .local v6, response:Lmtop/sys/newDeviceId/Response;
    invoke-virtual {v6}, Lmtop/sys/newDeviceId/Response;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmtop/sys/newDeviceId/Data;

    .line 96
    .local v2, data:Lmtop/sys/newDeviceId/Data;
    invoke-virtual {v2}, Lmtop/sys/newDeviceId/Data;->getDevice_id()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-direct {p0, p1, v8}, Landroid/taobao/deviceid/DeviceIDManager;->saveDeviceID(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v0           #ch:Landroid/taobao/apirequest/MTOPConnectorHelper;
    .end local v2           #data:Lmtop/sys/newDeviceId/Data;
    .end local v6           #response:Lmtop/sys/newDeviceId/Response;
    .end local v7           #result:Landroid/taobao/apirequest/ApiResult;
    .end local v8           #ret:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private getSharePreferenceDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 110
    if-eqz p1, :cond_2

    .line 111
    const-string v7, "deviceId_store"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 113
    .local v5, storage:Landroid/content/SharedPreferences;
    const-string v7, "deviceId_jsoniInfo"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, deviceInfo:Ljava/lang/String;
    const-string v7, "deviceId_created"

    const-string v8, "0"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, created:Ljava/lang/String;
    const-string v7, "1"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/taobao/deviceid/DeviceIDManager;->mCreated:Z

    .line 117
    :cond_0
    const-string v7, "DeviceIdManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mydeviceId  getSharedPreferences  deviceInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, result:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 122
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, json:Lorg/json/JSONObject;
    const-string v7, "deviceId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 132
    .end local v0           #created:Ljava/lang/String;
    .end local v1           #deviceInfo:Ljava/lang/String;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #storage:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-object v4

    .line 124
    .restart local v0       #created:Ljava/lang/String;
    .restart local v1       #deviceInfo:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v5       #storage:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v6

    .line 127
    goto :goto_0

    .end local v0           #created:Ljava/lang/String;
    .end local v1           #deviceInfo:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #storage:Landroid/content/SharedPreferences;
    :cond_2
    move-object v4, v6

    .line 132
    goto :goto_0
.end method

.method private saveDeviceID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "deviceId"

    .prologue
    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    iput-object p2, p0, Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v0, deviceIdInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "deviceId"

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v5, "deviceId_store"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 149
    .local v4, storage:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 150
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 151
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "DeviceIdManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mydeviceId savejson:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, deviceinfo:Ljava/lang/String;
    const-string v5, "deviceId_jsoniInfo"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v5, "deviceId_created"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Landroid/taobao/deviceid/DeviceIDManager;->deleteDeviceID(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4
    .parameter "context"
    .parameter "appKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 173
    .local v0, executor:Ljava/util/concurrent/ExecutorService;
    iget-object v2, p0, Landroid/taobao/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/taobao/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    const-string v2, "DeviceIdManager"

    const-string v3, "getDeviceID return last"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Landroid/taobao/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    .line 191
    :goto_0
    return-object v1

    .line 177
    :cond_0
    const-string v2, "DeviceIdManager"

    const-string v3, "getDeviceID work"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Landroid/taobao/deviceid/DeviceIDManager$1;

    invoke-direct {v2, p0, p1}, Landroid/taobao/deviceid/DeviceIDManager$1;-><init>(Landroid/taobao/deviceid/DeviceIDManager;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 189
    .local v1, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 190
    iput-object v1, p0, Landroid/taobao/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 201
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, p1}, Landroid/taobao/deviceid/DeviceIDManager;->getSharePreferenceDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    .line 203
    :cond_0
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method
