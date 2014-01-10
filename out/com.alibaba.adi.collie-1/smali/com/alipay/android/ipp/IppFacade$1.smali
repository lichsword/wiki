.class final Lcom/alipay/android/ipp/IppFacade$1;
.super Ljava/lang/Object;
.source "IppFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/ipp/IppFacade;->performProtectOnlyOnce(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pack:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/android/ipp/IppFacade$1;->val$config:Ljava/util/Map;

    iput-object p2, p0, Lcom/alipay/android/ipp/IppFacade$1;->val$pack:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/ipp/IppFacade$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/alipay/android/ipp/IppFacade$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/ipp/IppFacade$1$1;-><init>(Lcom/alipay/android/ipp/IppFacade$1;)V

    iput-object v0, p0, Lcom/alipay/android/ipp/IppFacade$1;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/ipp/IppFacade$1;->val$config:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, actionToBind:Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/android/ipp/IppFacade$1;->val$pack:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/ipp/IppFacade$1;->val$config:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v4, p0, Lcom/alipay/android/ipp/IppFacade$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/alipay/android/ipp/IppFacade$1;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 46
    .local v1, bf:Z
    if-eqz v1, :cond_2

    .line 47
    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ippfacade binded--->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0           #actionToBind:Ljava/lang/String;
    .end local v1           #bf:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 54
    :cond_1
    return-void

    .line 49
    .restart local v0       #actionToBind:Ljava/lang/String;
    .restart local v1       #bf:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ippfacade binded--->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
