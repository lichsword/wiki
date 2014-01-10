.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$ClearConformedListener;
.super Ljava/lang/Object;
.source "SystemNoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearConformedListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$ClearConformedListener;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 349
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh animation comfirmed"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$ClearConformedListener;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$3(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$ClearConformedListener;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$4(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->setClickable(Z)V

    .line 353
    const-string v0, "ConfirmClearNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$ClearConformedListener;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->clearNotice()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$5(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    .line 355
    return-void
.end method
