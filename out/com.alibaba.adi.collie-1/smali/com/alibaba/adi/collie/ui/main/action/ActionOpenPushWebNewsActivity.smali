.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;
.super Ljava/lang/Object;
.source "ActionOpenPushWebNewsActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# static fields
.field private static final NO_ANIM:I = -0x1


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mClickedTag:Ljava/lang/String;

.field private final mEnterAnim:I

.field private final mExitAnim:I

.field private final mPushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/model/push/PushMsg;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "pushMsg"
    .parameter "clickedTag"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mPushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 27
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mClickedTag:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mEnterAnim:I

    .line 29
    iput v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mExitAnim:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/model/push/PushMsg;Ljava/lang/String;II)V
    .locals 0
    .parameter "activity"
    .parameter "pushMsg"
    .parameter "clickedTag"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mActivity:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mPushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 37
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mClickedTag:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mEnterAnim:I

    .line 39
    iput p5, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mExitAnim:I

    .line 40
    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 44
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mClickedTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mClickedTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mClickedTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 47
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "keyPushMsg"

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mPushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    iget v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mEnterAnim:I

    if-eq v3, v1, :cond_1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mExitAnim:I

    if-eq v3, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mEnterAnim:I

    iget v3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenPushWebNewsActivity;->mExitAnim:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 54
    :cond_1
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
