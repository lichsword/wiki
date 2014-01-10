.class public Lcom/taobao/business/BaseBusiness;
.super Ljava/lang/Object;
.source "BaseBusiness.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field protected mApplication:Landroid/app/Application;

.field protected mHandler:Landroid/taobao/util/SafeHandler;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/business/BaseBusiness;->mApplication:Landroid/app/Application;

    .line 19
    new-instance v0, Landroid/taobao/util/SafeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/taobao/util/SafeHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/business/BaseBusiness;->mHandler:Landroid/taobao/util/SafeHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/taobao/business/BaseBusiness;->mApplication:Landroid/app/Application;

    .line 35
    iget-object v0, p0, Lcom/taobao/business/BaseBusiness;->mHandler:Landroid/taobao/util/SafeHandler;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/taobao/business/BaseBusiness;->mHandler:Landroid/taobao/util/SafeHandler;

    invoke-virtual {v0}, Landroid/taobao/util/SafeHandler;->destroy()V

    .line 37
    iput-object v1, p0, Lcom/taobao/business/BaseBusiness;->mHandler:Landroid/taobao/util/SafeHandler;

    .line 39
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
