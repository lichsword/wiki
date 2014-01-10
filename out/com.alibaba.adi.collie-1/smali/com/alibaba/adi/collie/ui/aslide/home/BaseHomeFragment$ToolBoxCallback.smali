.class Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;
.super Ljava/lang/Object;
.source "BaseHomeFragment.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolBoxCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;-><init>(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)V

    return-void
.end method


# virtual methods
.method public onCameraClick()V
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCameraClick"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    new-instance v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$0(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$1(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hide(Z)V

    .line 135
    return-void
.end method

.method public onHideFinish()V
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "ruibo: toolbox hide finish"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->showViewsOnToolboxHide()V

    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->setHomeContentAlpha(FF)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->isToolboxShown:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$2(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Z)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$3(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/main/action/IAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$3(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/main/action/IAction;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenScan;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$3(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/main/action/IAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$0(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->doSlideUnlock()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$4(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->isSlideUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$3(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/main/action/IAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->getPageLockFrom()Ljava/lang/String;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->doSlideUnlock()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$4(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->showLockLayout(Z)Z

    goto :goto_0
.end method

.method public onLightClick()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onMoveBegin()V
    .locals 3

    .prologue
    .line 171
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "ruibo: toolbox move begin"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->isToolboxShown:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$5(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->hideViewsOnToolboxShow()V

    .line 174
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->setHomeContentAlpha(FF)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    const/4 v1, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->isToolboxShown:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$2(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Z)V

    .line 177
    return-void
.end method

.method public onScanClick()V
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onScanClick"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    new-instance v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenScan;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenScan;-><init>()V

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$0(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$1(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hide(Z)V

    .line 128
    return-void
.end method

.method public onSettingClick()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSettingClick"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    new-instance v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSetting;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSetting;-><init>()V

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$0(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->access$1(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hide(Z)V

    .line 116
    return-void
.end method
