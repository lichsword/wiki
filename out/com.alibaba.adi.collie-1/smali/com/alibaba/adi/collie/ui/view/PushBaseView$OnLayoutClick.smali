.class Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;
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
    name = "OnLayoutClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 238
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "user has click layout"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Click"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->getTagForUT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #calls: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->isMsgURLPrepared()Z
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$0(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "Check url of msg prepared...OK"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v2

    .line 244
    .local v2, msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v1

    .line 245
    .local v1, flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->openUrlByInner()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "Open url inner web page...OK"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;

    .end local v0           #action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$1(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    iget-object v5, v5, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    const-string v6, ""

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;-><init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/model/push/PushMsg;Ljava/lang/String;)V

    .line 249
    .restart local v0       #action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 270
    .end local v0           #action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    .end local v1           #flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    .end local v2           #msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 251
    .restart local v0       #action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    .restart local v1       #flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    .restart local v2       #msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    .restart local v3       #url:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "Open url outside web page...OK"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;

    .end local v0           #action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$1(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v3}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .restart local v0       #action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->baseHomeFragment:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$2(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 255
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    const/4 v5, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClicked:Z
    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$3(Lcom/alibaba/adi/collie/ui/view/PushBaseView;Z)V

    .line 256
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$4(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 257
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$4(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;->onClick()V

    .line 259
    :cond_1
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "baseHomeFragment unlockAndRun...invoked"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;->this$0:Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    #getter for: Lcom/alibaba/adi/collie/ui/view/PushBaseView;->baseHomeFragment:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->access$2(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    goto :goto_0

    .line 262
    :cond_2
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "baseHomeFragment is null."

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v0           #action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    .end local v1           #flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    .end local v2           #msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    .end local v3           #url:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "Msg URL is empty, so not response click."

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
