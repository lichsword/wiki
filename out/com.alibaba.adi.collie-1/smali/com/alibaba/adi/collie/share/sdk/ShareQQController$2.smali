.class Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;
.super Ljava/lang/Object;
.source "ShareQQController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/share/sdk/ShareQQController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;->this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;->this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    iget-object v2, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;->this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    #getter for: Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mShareParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->access$0(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->doShare2QQ(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->access$1(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;Landroid/os/Bundle;)V

    .line 51
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;->this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    iget-object v1, v1, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->shareHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 53
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;->this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    iget-object v1, v1, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->shareHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    return-void
.end method
