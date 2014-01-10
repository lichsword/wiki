.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;
.super Ljava/lang/Object;
.source "ActionOpenToutiao.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mUrlForApp:Ljava/lang/String;

.field private mUrlForWap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "urlForApp"
    .parameter "urlForWap"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;->mActivity:Landroid/app/Activity;

    .line 16
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;->mUrlForApp:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;->mUrlForWap:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;->mUrlForApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;->mUrlForWap:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/ToutiaoUtil;->invokeAPP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 25
    :cond_0
    return-void
.end method
