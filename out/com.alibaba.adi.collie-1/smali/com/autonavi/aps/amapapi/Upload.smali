.class public Lcom/autonavi/aps/amapapi/Upload;
.super Landroid/app/Service;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/aps/amapapi/Upload$a;
    }
.end annotation


# instance fields
.field private lstFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private upBinder:Lcom/autonavi/aps/amapapi/Upload$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/autonavi/aps/amapapi/Upload$a;

    invoke-direct {v0, p0}, Lcom/autonavi/aps/amapapi/Upload$a;-><init>(Lcom/autonavi/aps/amapapi/Upload;)V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->upBinder:Lcom/autonavi/aps/amapapi/Upload$a;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/autonavi/aps/amapapi/Upload;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/autonavi/aps/amapapi/Upload;Ljava/lang/String;Ljava/io/File;Landroid/net/NetworkInfo;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/aps/amapapi/Upload;->doUpload(Ljava/lang/String;Ljava/io/File;Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized doUpload(Ljava/lang/String;Ljava/io/File;Landroid/net/NetworkInfo;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    monitor-enter p0

    .line 131
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_1

    move v3, v1

    .line 146
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 150
    :goto_1
    if-eqz v3, :cond_2

    move v0, v1

    .line 199
    :cond_0
    :goto_2
    monitor-exit p0

    return v0

    .line 140
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    const/16 v4, 0x2710

    if-le v3, v4, :cond_5

    move v3, v1

    .line 144
    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    move v3, v0

    :goto_3
    :try_start_3
    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_2
    :try_start_4
    invoke-static {p0, p3}, Lcom/autonavi/aps/amapapi/i;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 161
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 162
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v4, Lorg/apache/http/entity/FileEntity;

    const-string v5, "binary/octet-stream"

    invoke-direct {v4, p2, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Lorg/apache/http/entity/FileEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    :try_start_6
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 169
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 170
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 171
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/aps/amapapi/Utils;->isToStr(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 172
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 176
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    .line 193
    :cond_3
    :try_start_7
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 195
    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 158
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 193
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 195
    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 190
    :catch_3
    move-exception v1

    :try_start_8
    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 193
    :try_start_9
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 195
    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_2

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 195
    if-eqz v2, :cond_4

    .line 198
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 199
    :cond_4
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 148
    :catch_4
    move-exception v2

    goto/16 :goto_3

    :cond_5
    move v3, v0

    goto/16 :goto_0
.end method

.method private declared-synchronized upload()V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_1
    const-string v0, "connectivity"

    .line 77
    invoke-static {p0, v0}, Lcom/autonavi/aps/amapapi/Utils;->getServ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/i;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 81
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 88
    new-instance v1, Lcom/autonavi/aps/amapapi/Upload$1;

    invoke-direct {v1, p0, v0}, Lcom/autonavi/aps/amapapi/Upload$1;-><init>(Lcom/autonavi/aps/amapapi/Upload;Landroid/net/NetworkInfo;)V

    .line 116
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getFileNumInQueue()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->upBinder:Lcom/autonavi/aps/amapapi/Upload$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->upBinder:Lcom/autonavi/aps/amapapi/Upload$a;

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 61
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/Upload;->updateQueue()V

    .line 51
    return-void
.end method

.method public declared-synchronized updateQueue()V
    .locals 6

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/autonavi/aps/amapapi/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 232
    array-length v0, v1

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/Upload;->upload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_2
    :try_start_2
    aget-object v3, v1, v0

    .line 240
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "new"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    iget-object v4, p0, Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
