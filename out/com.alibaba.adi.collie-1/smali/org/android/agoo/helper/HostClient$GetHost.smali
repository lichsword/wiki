.class Lorg/android/agoo/helper/HostClient$GetHost;
.super Ljava/lang/Object;
.source "HostClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/helper/HostClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHost"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field deviceId:Ljava/lang/String;

.field handler:Lorg/android/agoo/helper/HostClient$IHostHandler;

.field final synthetic this$0:Lorg/android/agoo/helper/HostClient;


# direct methods
.method public constructor <init>(Lorg/android/agoo/helper/HostClient;Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/helper/HostClient$IHostHandler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "deviceId"
    .parameter "handler"

    .prologue
    .line 133
    iput-object p1, p0, Lorg/android/agoo/helper/HostClient$GetHost;->this$0:Lorg/android/agoo/helper/HostClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lorg/android/agoo/helper/HostClient$GetHost;->deviceId:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lorg/android/agoo/helper/HostClient$GetHost;->handler:Lorg/android/agoo/helper/HostClient$IHostHandler;

    .line 137
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 141
    const/4 v11, 0x0

    .line 142
    .local v11, result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/android/agoo/client/AgooSettings;->getMode(Landroid/content/Context;)Lorg/android/agoo/client/AgooSettings$Mode;

    move-result-object v8

    .line 144
    .local v8, mode:Lorg/android/agoo/client/AgooSettings$Mode;
    :try_start_0
    new-instance v10, Lorg/android/agoo/net/async/RequestParams;

    invoke-direct {v10}, Lorg/android/agoo/net/async/RequestParams;-><init>()V

    .line 145
    .local v10, request:Lorg/android/agoo/net/async/RequestParams;
    const-string v13, "id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/android/agoo/helper/HostClient$GetHost;->deviceId:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v13, "app_version_code"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    invoke-static {v15}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v13, "agoo_version_code"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/android/agoo/client/AgooSettings;->getAgooReleaseTime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v5, Lorg/android/agoo/net/ConnectManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    invoke-direct {v5, v13}, Lorg/android/agoo/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 149
    .local v5, connectManager:Lorg/android/agoo/net/ConnectManager;
    invoke-virtual {v5}, Lorg/android/agoo/net/ConnectManager;->getNetType()Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, type:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 151
    const-string v13, "agoo_network"

    invoke-virtual {v10, v13, v12}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {v5}, Lorg/android/agoo/net/ConnectManager;->getApn()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, apn:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 155
    const-string v13, "agoo_apn"

    invoke-virtual {v10, v13, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->this$0:Lorg/android/agoo/helper/HostClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lorg/android/agoo/helper/HostClient;->getProvidersName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, operators:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 159
    const-string v13, "agoo_operators"

    invoke-virtual {v10, v13, v9}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-virtual {v8}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollIp()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, apollIp:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollHost()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, apollHost:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/android/agoo/client/AgooSettings$Mode;->getPushApollPort()I

    move-result v4

    .line 164
    .local v4, apollPort:I
    const/4 v7, 0x0

    .line 165
    .local v7, host:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->this$0:Lorg/android/agoo/helper/HostClient;

    #getter for: Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;
    invoke-static {v13}, Lorg/android/agoo/helper/HostClient;->access$000(Lorg/android/agoo/helper/HostClient;)Lorg/android/agoo/net/async/SyncHttpClient;

    move-result-object v13

    if-nez v13, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->this$0:Lorg/android/agoo/helper/HostClient;

    new-instance v14, Lorg/android/agoo/net/async/SyncHttpClient;

    invoke-direct {v14}, Lorg/android/agoo/net/async/SyncHttpClient;-><init>()V

    #setter for: Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;
    invoke-static {v13, v14}, Lorg/android/agoo/helper/HostClient;->access$002(Lorg/android/agoo/helper/HostClient;Lorg/android/agoo/net/async/SyncHttpClient;)Lorg/android/agoo/net/async/SyncHttpClient;

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/android/agoo/client/AgooSettings;->isAgooTestMode(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->this$0:Lorg/android/agoo/helper/HostClient;

    #getter for: Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;
    invoke-static {v13}, Lorg/android/agoo/helper/HostClient;->access$000(Lorg/android/agoo/helper/HostClient;)Lorg/android/agoo/net/async/SyncHttpClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    invoke-virtual {v13, v14, v2, v10}, Lorg/android/agoo/net/async/SyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 180
    .end local v1           #apn:Ljava/lang/String;
    .end local v2           #apollHost:Ljava/lang/String;
    .end local v3           #apollIp:Ljava/lang/String;
    .end local v4           #apollPort:I
    .end local v5           #connectManager:Lorg/android/agoo/net/ConnectManager;
    .end local v7           #host:Lorg/apache/http/HttpHost;
    .end local v9           #operators:Ljava/lang/String;
    .end local v10           #request:Lorg/android/agoo/net/async/RequestParams;
    .end local v12           #type:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->this$0:Lorg/android/agoo/helper/HostClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/android/agoo/helper/HostClient$GetHost;->handler:Lorg/android/agoo/helper/HostClient$IHostHandler;

    #calls: Lorg/android/agoo/helper/HostClient;->parse(Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;Lorg/android/agoo/helper/HostClient$IHostHandler;Lorg/android/agoo/client/AgooSettings$Mode;)V
    invoke-static {v13, v11, v14, v8}, Lorg/android/agoo/helper/HostClient;->access$100(Lorg/android/agoo/helper/HostClient;Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;Lorg/android/agoo/helper/HostClient$IHostHandler;Lorg/android/agoo/client/AgooSettings$Mode;)V

    .line 181
    return-void

    .line 173
    .restart local v1       #apn:Ljava/lang/String;
    .restart local v2       #apollHost:Ljava/lang/String;
    .restart local v3       #apollIp:Ljava/lang/String;
    .restart local v4       #apollPort:I
    .restart local v5       #connectManager:Lorg/android/agoo/net/ConnectManager;
    .restart local v7       #host:Lorg/apache/http/HttpHost;
    .restart local v9       #operators:Ljava/lang/String;
    .restart local v10       #request:Lorg/android/agoo/net/async/RequestParams;
    .restart local v12       #type:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v13, "HostClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "test host ip [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v7, Lorg/apache/http/HttpHost;

    .end local v7           #host:Lorg/apache/http/HttpHost;
    invoke-direct {v7, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 175
    .restart local v7       #host:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/android/agoo/helper/HostClient$GetHost;->this$0:Lorg/android/agoo/helper/HostClient;

    #getter for: Lorg/android/agoo/helper/HostClient;->client:Lorg/android/agoo/net/async/SyncHttpClient;
    invoke-static {v13}, Lorg/android/agoo/helper/HostClient;->access$000(Lorg/android/agoo/helper/HostClient;)Lorg/android/agoo/net/async/SyncHttpClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/android/agoo/helper/HostClient$GetHost;->context:Landroid/content/Context;

    invoke-virtual {v13, v14, v7, v2, v10}, Lorg/android/agoo/net/async/SyncHttpClient;->get(Landroid/content/Context;Lorg/apache/http/HttpHost;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_0

    .line 177
    .end local v1           #apn:Ljava/lang/String;
    .end local v2           #apollHost:Ljava/lang/String;
    .end local v3           #apollIp:Ljava/lang/String;
    .end local v4           #apollPort:I
    .end local v5           #connectManager:Lorg/android/agoo/net/ConnectManager;
    .end local v7           #host:Lorg/apache/http/HttpHost;
    .end local v9           #operators:Ljava/lang/String;
    .end local v10           #request:Lorg/android/agoo/net/async/RequestParams;
    .end local v12           #type:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 178
    .local v6, e:Ljava/lang/Throwable;
    const-string v13, "HostClient"

    const-string v14, "host Throwable"

    invoke-static {v13, v14, v6}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
