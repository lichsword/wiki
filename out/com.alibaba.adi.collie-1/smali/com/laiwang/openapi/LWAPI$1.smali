.class Lcom/laiwang/openapi/LWAPI$1;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/openapi/LWAPI;->connectLaiwangService(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/openapi/LWAPI;

.field private final synthetic val$appName:Ljava/lang/String;

.field private final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/laiwang/openapi/LWAPI;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/openapi/LWAPI$1;->this$0:Lcom/laiwang/openapi/LWAPI;

    iput p2, p0, Lcom/laiwang/openapi/LWAPI$1;->val$version:I

    iput-object p3, p0, Lcom/laiwang/openapi/LWAPI$1;->val$appName:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "lwShareError"

    .prologue
    .line 128
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI$1;->this$0:Lcom/laiwang/openapi/LWAPI;

    const/4 v1, 0x0

    #setter for: Lcom/laiwang/openapi/LWAPI;->mIsLaiwangSupport:Z
    invoke-static {v0, v1}, Lcom/laiwang/openapi/LWAPI;->access$3(Lcom/laiwang/openapi/LWAPI;Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 117
    iget-object v1, p0, Lcom/laiwang/openapi/LWAPI$1;->this$0:Lcom/laiwang/openapi/LWAPI;

    #getter for: Lcom/laiwang/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/openapi/IILWAPIChannelProxy;
    invoke-static {v1}, Lcom/laiwang/openapi/LWAPI;->access$0(Lcom/laiwang/openapi/LWAPI;)Lcom/laiwang/openapi/IILWAPIChannelProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/openapi/LWAPI$1;->this$0:Lcom/laiwang/openapi/LWAPI;

    #getter for: Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;
    invoke-static {v2}, Lcom/laiwang/openapi/LWAPI;->access$1(Lcom/laiwang/openapi/LWAPI;)Lcom/laiwang/openapi/LWAPIAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/openapi/LWAPI$1;->this$0:Lcom/laiwang/openapi/LWAPI;

    #getter for: Lcom/laiwang/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/openapi/IILWAPICallbackImpl;
    invoke-static {v3}, Lcom/laiwang/openapi/LWAPI;->access$2(Lcom/laiwang/openapi/LWAPI;)Lcom/laiwang/openapi/IILWAPICallbackImpl;

    move-result-object v3

    iget v4, p0, Lcom/laiwang/openapi/LWAPI$1;->val$version:I

    iget-object v5, p0, Lcom/laiwang/openapi/LWAPI$1;->val$appName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->registerAPP(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/IILWAPICallback;ILjava/lang/String;)I

    move-result v0

    .line 118
    .local v0, ret:I
    if-ne v6, v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/laiwang/openapi/LWAPI$1;->this$0:Lcom/laiwang/openapi/LWAPI;

    const/4 v2, 0x0

    #setter for: Lcom/laiwang/openapi/LWAPI;->mIsLaiwangSupport:Z
    invoke-static {v1, v2}, Lcom/laiwang/openapi/LWAPI;->access$3(Lcom/laiwang/openapi/LWAPI;Z)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/laiwang/openapi/LWAPI$1;->this$0:Lcom/laiwang/openapi/LWAPI;

    #setter for: Lcom/laiwang/openapi/LWAPI;->mIsLossVersion:Z
    invoke-static {v1, v6}, Lcom/laiwang/openapi/LWAPI;->access$4(Lcom/laiwang/openapi/LWAPI;Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
