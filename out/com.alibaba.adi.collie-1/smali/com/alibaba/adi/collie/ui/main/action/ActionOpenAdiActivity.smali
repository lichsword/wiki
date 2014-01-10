.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;
.super Ljava/lang/Object;
.source "ActionOpenAdiActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# static fields
.field private static final NO_ANIM:I = -0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mClickedTag:Ljava/lang/String;

.field private mEnterAnim:I

.field private mExitAnim:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter
    .parameter "clickedTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mActivity:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClass:Ljava/lang/Class;

    .line 22
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClickedTag:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mEnterAnim:I

    .line 24
    iput v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mExitAnim:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;II)V
    .locals 0
    .parameter "activity"
    .parameter
    .parameter "clickedTag"
    .parameter "enterAnim"
    .parameter "exitAnim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClass:Ljava/lang/Class;

    .line 31
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClickedTag:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mEnterAnim:I

    .line 33
    iput p5, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mExitAnim:I

    .line 34
    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 38
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClickedTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClickedTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClickedTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 41
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    iget v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mEnterAnim:I

    if-eq v3, v1, :cond_1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mExitAnim:I

    if-eq v3, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mEnterAnim:I

    iget v3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;->mExitAnim:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 46
    :cond_1
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
