.class Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->handlePushMsgWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "error"

    .prologue
    const/16 v1, 0x8

    .line 312
    sget-object v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$15(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$15(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setVisibility(I)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$16(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Lcom/alibaba/adi/collie/ui/view/PushTopView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$16(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Lcom/alibaba/adi/collie/ui/view/PushTopView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->setVisibility(I)V

    .line 319
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/alibaba/adi/collie/model/push/ValidPushMsg;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #setter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$12(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/push/ValidPushMsg;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setTopPushView()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$13(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setCenterPushView()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$14(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    goto :goto_0
.end method
