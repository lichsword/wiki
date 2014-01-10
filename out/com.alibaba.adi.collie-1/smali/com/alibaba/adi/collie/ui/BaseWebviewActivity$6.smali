.class Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$6;
.super Ljava/lang/Object;
.source "BaseWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onUnlocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$6;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$6;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->getAction()Lcom/alibaba/adi/collie/ui/main/action/IAction;

    move-result-object v0

    .line 195
    .local v0, action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 198
    :cond_0
    return-void
.end method
