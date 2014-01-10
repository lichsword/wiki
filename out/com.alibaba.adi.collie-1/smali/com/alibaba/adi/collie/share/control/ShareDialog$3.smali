.class Lcom/alibaba/adi/collie/share/control/ShareDialog$3;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/share/control/ShareDialog$3;)Lcom/alibaba/adi/collie/share/control/ShareDialog;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dismiss()V

    .line 176
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->groupList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$0(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/share/control/Share;

    #setter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2, v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$1(Lcom/alibaba/adi/collie/share/control/ShareDialog;Lcom/alibaba/adi/collie/share/control/Share;)V

    .line 178
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/adi/collie/ui/lock/IUnlockController;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/IUnlockController;

    .line 181
    .local v0, unlockActivity:Lcom/alibaba/adi/collie/ui/lock/IUnlockController;
    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareDialog$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$3$1;-><init>(Lcom/alibaba/adi/collie/share/control/ShareDialog$3;)V

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/IUnlockController;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 197
    .end local v0           #unlockActivity:Lcom/alibaba/adi/collie/ui/lock/IUnlockController;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #calls: Lcom/alibaba/adi/collie/share/control/ShareDialog;->openShareActivity()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$3(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    goto :goto_0
.end method
