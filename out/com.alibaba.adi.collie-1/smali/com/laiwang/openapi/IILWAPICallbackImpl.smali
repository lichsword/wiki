.class public Lcom/laiwang/openapi/IILWAPICallbackImpl;
.super Lcom/laiwang/openapi/IILWAPICallback$Stub;
.source "IILWAPICallbackImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIIApiCallback:Lcom/laiwang/openapi/ILWAPI$IIApiCallback;

.field private mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/laiwang/openapi/IILWAPICallback$Stub;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laiwang/openapi/IILWAPICallbackImpl;->mMainHandler:Landroid/os/Handler;

    .line 15
    iput-object v2, p0, Lcom/laiwang/openapi/IILWAPICallbackImpl;->mContext:Landroid/content/Context;

    .line 20
    iput-object v2, p0, Lcom/laiwang/openapi/IILWAPICallbackImpl;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/laiwang/openapi/IILWAPICallbackImpl;)Lcom/laiwang/openapi/ILWAPI$IIApiCallback;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/openapi/ILWAPI$IIApiCallback;

    return-object v0
.end method


# virtual methods
.method public onDisplay(Lcom/laiwang/openapi/message/LWMessage;)I
    .locals 2
    .parameter "lwMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPICallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/laiwang/openapi/IILWAPICallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/laiwang/openapi/IILWAPICallbackImpl$1;-><init>(Lcom/laiwang/openapi/IILWAPICallbackImpl;Lcom/laiwang/openapi/message/LWMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public setIIApiCallback(Lcom/laiwang/openapi/ILWAPI$IIApiCallback;)V
    .locals 0
    .parameter "iApiCallback"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/laiwang/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/openapi/ILWAPI$IIApiCallback;

    .line 25
    return-void
.end method

.method public setLWAPIAccount(Lcom/laiwang/openapi/LWAPIAccount;)V
    .locals 0
    .parameter "lwAPIAccount"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/laiwang/openapi/IILWAPICallbackImpl;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    .line 29
    return-void
.end method
