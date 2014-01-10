.class Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;
.super Ljava/lang/Object;
.source "PushBaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/PushBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnElementClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 279
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Close"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->getTagForUT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "click close"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    const/4 v2, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClosed:Z
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$5(Lcom/alibaba/adi/collie/ui/view/PushBaseView;Z)V

    .line 283
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$4(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$4(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;->onClose()V

    goto :goto_0

    .line 288
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Share"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->getTagForUT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->baseHomeFragment:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$2(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "click share"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$1(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 294
    .local v0, actionShareDialog:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    goto :goto_0

    .line 296
    .end local v0           #actionShareDialog:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    :cond_1
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "baseHomeFragment is null."

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x7f0801c4 -> :sswitch_0
        0x7f0801c8 -> :sswitch_1
    .end sparse-switch
.end method
