.class Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;
.super Ljava/lang/Object;
.source "SafeDefender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/securityjni/SafeDefender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAppTokenThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/securityjni/SafeDefender;

.field private userNick:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/taobao/securityjni/SafeDefender;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "userNick"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->userNick:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->userNick:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/securityjni/SafeDefender;Ljava/lang/String;Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;-><init>(Lcom/taobao/securityjni/SafeDefender;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 80
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->staticData:Lcom/taobao/securityjni/StaticDataStore;
    invoke-static {v5}, Lcom/taobao/securityjni/SafeDefender;->access$0(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/StaticDataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/securityjni/StaticDataStore;->getTtid()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, ttid:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    :cond_0
    const-string v4, "202020"

    .line 85
    :cond_1
    new-instance v1, Lcom/taobao/securityjni/connector/ApptokenConnectorHelper;

    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->userNick:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;
    invoke-static {v6}, Lcom/taobao/securityjni/SafeDefender;->access$1(Lcom/taobao/securityjni/SafeDefender;)Landroid/content/ContextWrapper;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4}, Lcom/taobao/securityjni/connector/ApptokenConnectorHelper;-><init>(Ljava/lang/String;Landroid/content/ContextWrapper;Ljava/lang/String;)V

    .line 86
    .local v1, helper:Lcom/taobao/securityjni/connector/ApptokenConnectorHelper;
    new-instance v0, Lcom/taobao/securityjni/connector/ApiConnector;

    invoke-direct {v0}, Lcom/taobao/securityjni/connector/ApiConnector;-><init>()V

    .line 88
    .local v0, connector:Lcom/taobao/securityjni/connector/ApiConnector;
    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/connector/ApiConnector;->setHelper(Lcom/taobao/securityjni/connector/ConnectorHelper;)V

    .line 89
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Lcom/taobao/securityjni/connector/ApiConnector;->setMethod(Ljava/lang/String;)V

    .line 90
    const-string v5, "-----------------GetAppTokenThread-----------------"

    const-string v6, "connector.connector() begin"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Lcom/taobao/securityjni/connector/ApiConnector;->connector()Ljava/lang/Object;

    move-result-object v3

    .line 92
    .local v3, obj:Ljava/lang/Object;
    const-string v5, "-----------------GetAppTokenThread-----------------"

    const-string v6, "connector.connector() success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz v3, :cond_3

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v5, v3

    .line 94
    check-cast v5, Ljava/lang/String;

    const-string v6, "UNKNOWNHOST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 97
    .local v2, host:Landroid/os/Message;
    const v5, 0x53414645

    iput v5, v2, Landroid/os/Message;->what:I

    .line 98
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #calls: Lcom/taobao/securityjni/SafeDefender;->innerSendMessage(Landroid/os/Message;J)V
    invoke-static {v5, v2, v8, v9}, Lcom/taobao/securityjni/SafeDefender;->access$2(Lcom/taobao/securityjni/SafeDefender;Landroid/os/Message;J)V

    .line 106
    .end local v2           #host:Landroid/os/Message;
    .end local v3           #obj:Ljava/lang/Object;
    :goto_0
    const-string v5, "GetAppTokenThread"

    const-string v6, "GetAppTokenThread success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->locked:Ljava/lang/Object;
    invoke-static {v5}, Lcom/taobao/securityjni/SafeDefender;->access$4(Lcom/taobao/securityjni/SafeDefender;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 108
    :try_start_0
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z
    invoke-static {v5}, Lcom/taobao/securityjni/SafeDefender;->access$5(Lcom/taobao/securityjni/SafeDefender;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 109
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    const/4 v7, 0x1

    #setter for: Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z
    invoke-static {v5, v7}, Lcom/taobao/securityjni/SafeDefender;->access$6(Lcom/taobao/securityjni/SafeDefender;Z)V

    .line 110
    const-string v5, "GetAppTokenThread"

    const-string v7, "IsGetSuccess = true;"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 118
    .restart local v2       #host:Landroid/os/Message;
    const v5, 0x53414646

    iput v5, v2, Landroid/os/Message;->what:I

    .line 119
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #calls: Lcom/taobao/securityjni/SafeDefender;->innerSendMessage(Landroid/os/Message;J)V
    invoke-static {v5, v2, v8, v9}, Lcom/taobao/securityjni/SafeDefender;->access$2(Lcom/taobao/securityjni/SafeDefender;Landroid/os/Message;J)V

    .line 121
    return-void

    .line 100
    .end local v2           #host:Landroid/os/Message;
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    invoke-virtual {v1, v3}, Lcom/taobao/securityjni/connector/ApptokenConnectorHelper;->syncPaser(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    #setter for: Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;
    invoke-static {v6, v5}, Lcom/taobao/securityjni/SafeDefender;->access$3(Lcom/taobao/securityjni/SafeDefender;Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    check-cast v3, Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    .end local v3           #obj:Ljava/lang/Object;
    #setter for: Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;
    invoke-static {v5, v3}, Lcom/taobao/securityjni/SafeDefender;->access$3(Lcom/taobao/securityjni/SafeDefender;Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;)V

    goto :goto_0

    .line 112
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->locked:Ljava/lang/Object;
    invoke-static {v5}, Lcom/taobao/securityjni/SafeDefender;->access$4(Lcom/taobao/securityjni/SafeDefender;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 113
    const-string v5, "GetAppTokenThread"

    const-string v7, "locked.notify()"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
