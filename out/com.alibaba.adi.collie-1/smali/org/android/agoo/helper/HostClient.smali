.class public Lorg/android/agoo/helper/HostClient;
.super Ljava/lang/Object;
.source "HostClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/helper/HostClient$IHostHandler;,
        Lorg/android/agoo/helper/HostClient$GetHost;
    }
.end annotation


# static fields
.field private static final AGOO_HOST:Ljava/lang/String; = "AGOO_HOST"

.field private static final AGOO_HOST_SIZE:Ljava/lang/String; = "AGOO_HOST_SIZE"

.field private static final AGOO_HOST_VALUE:Ljava/lang/String; = "AGOO_HOST_VALUE_"

.field private static final TAG:Ljava/lang/String; = "HostClient"


# instance fields
.field private volatile client:Lorg/android/agoo/net/async/SyncHttpClient;

.field private volatile context:Landroid/content/Context;

.field private volatile deviceId:Ljava/lang/String;

.field private volatile hostIndex:I

.field private volatile threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "deviceId"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/agoo/helper/HostClient;->hostIndex:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;

    .line 46
    iput-object p1, p0, Lorg/android/agoo/helper/HostClient;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lorg/android/agoo/helper/HostClient;->deviceId:Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lorg/android/agoo/helper/HostClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    new-instance v0, Lorg/android/agoo/net/async/SyncHttpClient;

    invoke-direct {v0}, Lorg/android/agoo/net/async/SyncHttpClient;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/android/agoo/helper/HostClient;)Lorg/android/agoo/net/async/SyncHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;

    return-object v0
.end method

.method static synthetic access$002(Lorg/android/agoo/helper/HostClient;Lorg/android/agoo/net/async/SyncHttpClient;)Lorg/android/agoo/net/async/SyncHttpClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;

    return-object p1
.end method

.method static synthetic access$100(Lorg/android/agoo/helper/HostClient;Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;Lorg/android/agoo/helper/HostClient$IHostHandler;Lorg/android/agoo/client/AgooSettings$Mode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/helper/HostClient;->parse(Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;Lorg/android/agoo/helper/HostClient$IHostHandler;Lorg/android/agoo/client/AgooSettings$Mode;)V

    return-void
.end method

.method private static getHostValue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "index"

    .prologue
    .line 226
    const-string v1, "AGOO_HOST"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    .local v0, storage:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGOO_HOST_VALUE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private ipValid(Ljava/lang/String;)Z
    .locals 9
    .parameter "s"

    .prologue
    .line 214
    const-string v3, "(2[0-4]\\d)|(25[0-5])"

    .line 215
    .local v3, regex0:Ljava/lang/String;
    const-string v4, "1\\d{2}"

    .line 216
    .local v4, regex1:Ljava/lang/String;
    const-string v5, "[1-9]\\d"

    .line 217
    .local v5, regex2:Ljava/lang/String;
    const-string v6, "\\d"

    .line 218
    .local v6, regex3:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")|("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")|("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")|("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, regex:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ").("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ").("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ").("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):\\d*$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 221
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 222
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    return v7
.end method

.method private parse(Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;Lorg/android/agoo/helper/HostClient$IHostHandler;Lorg/android/agoo/client/AgooSettings$Mode;)V
    .locals 5
    .parameter "result"
    .parameter "handler"
    .parameter "mode"

    .prologue
    const/16 v4, 0x1f8

    .line 78
    if-nez p1, :cond_0

    .line 79
    const/16 v2, 0x198

    invoke-virtual {p3}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollIp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/android/agoo/helper/HostClient$IHostHandler;->onFailure(ILjava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 82
    :cond_0
    const/16 v2, 0xc8

    iget v3, p1, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;->statusCode:I

    if-eq v2, v3, :cond_1

    .line 83
    const/16 v2, 0x194

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/android/agoo/helper/HostClient$IHostHandler;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p1, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;->responseBody:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lorg/android/agoo/helper/HostClient$IHostHandler;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p1, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;->responseBody:Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, str:[Ljava/lang/String;
    array-length v2, v1

    if-gtz v2, :cond_3

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lorg/android/agoo/helper/HostClient$IHostHandler;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lorg/android/agoo/helper/HostClient;->context:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lorg/android/agoo/helper/HostClient;->putHostValue(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, count:I
    if-gtz v0, :cond_4

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lorg/android/agoo/helper/HostClient$IHostHandler;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    iget-object v2, p0, Lorg/android/agoo/helper/HostClient;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/android/agoo/helper/HostClient;->getHostValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/android/agoo/helper/HostClient$IHostHandler;->onHost(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private putHostValue(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "value"

    .prologue
    .line 197
    const-string v5, "AGOO_HOST"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 199
    .local v4, storage:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 200
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, p2

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 203
    aget-object v5, p2, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, p2, v2

    invoke-direct {p0, v5}, Lorg/android/agoo/helper/HostClient;->ipValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AGOO_HOST_VALUE_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 202
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const-string v5, "AGOO_HOST_SIZE"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return v0
.end method

.method private syn(Lorg/android/agoo/helper/HostClient$IHostHandler;)V
    .locals 4
    .parameter "handler"

    .prologue
    .line 108
    iget-object v0, p0, Lorg/android/agoo/helper/HostClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/helper/HostClient$GetHost;

    iget-object v2, p0, Lorg/android/agoo/helper/HostClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/android/agoo/helper/HostClient;->deviceId:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/android/agoo/helper/HostClient$GetHost;-><init>(Lorg/android/agoo/helper/HostClient;Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/helper/HostClient$IHostHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 109
    return-void
.end method


# virtual methods
.method public getHostSize(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 191
    const-string v1, "AGOO_HOST"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    .local v0, storage:Landroid/content/SharedPreferences;
    const-string v1, "AGOO_HOST_SIZE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getProvidersName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    invoke-static {p1}, Lorg/android/agoo/helper/PhoneHelper;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, imsi:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    const-string v1, "china_mobile"

    .line 125
    :goto_0
    return-object v1

    .line 118
    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "china_unicom"

    goto :goto_0

    .line 121
    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const-string v1, "china_telecom"

    goto :goto_0

    .line 125
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next(Lorg/android/agoo/helper/HostClient$IHostHandler;)V
    .locals 5
    .parameter "handler"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "IHostHandler is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    iget-object v2, p0, Lorg/android/agoo/helper/HostClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lorg/android/agoo/helper/HostClient;->getHostSize(Landroid/content/Context;)I

    move-result v1

    .line 56
    .local v1, size:I
    if-gtz v1, :cond_1

    .line 57
    const-string v2, "HostClient"

    const-string v3, "local host size <=0"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lorg/android/agoo/helper/HostClient;->syn(Lorg/android/agoo/helper/HostClient$IHostHandler;)V

    .line 75
    :goto_0
    return-void

    .line 61
    :cond_1
    iget v2, p0, Lorg/android/agoo/helper/HostClient;->hostIndex:I

    if-lt v2, v1, :cond_2

    .line 62
    const-string v2, "HostClient"

    const-string v3, "next host >= localhost size"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1}, Lorg/android/agoo/helper/HostClient;->syn(Lorg/android/agoo/helper/HostClient$IHostHandler;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, p0, Lorg/android/agoo/helper/HostClient;->context:Landroid/content/Context;

    iget v3, p0, Lorg/android/agoo/helper/HostClient;->hostIndex:I

    invoke-static {v2, v3}, Lorg/android/agoo/helper/HostClient;->getHostValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, host:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    const-string v2, "HostClient"

    const-string v3, "next host == null"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lorg/android/agoo/helper/HostClient;->syn(Lorg/android/agoo/helper/HostClient$IHostHandler;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v2, "HostClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next host ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {p1, v0}, Lorg/android/agoo/helper/HostClient$IHostHandler;->onHost(Ljava/lang/String;)V

    .line 74
    iget v2, p0, Lorg/android/agoo/helper/HostClient;->hostIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/android/agoo/helper/HostClient;->hostIndex:I

    goto :goto_0
.end method
