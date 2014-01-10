.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;
.super Ljava/lang/Object;
.source "SystemNoticeActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClear_cancalAnimUnion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

.field private final synthetic val$op:I


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    iput p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;->val$op:I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 236
    iget v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;->val$op:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClearEndDatahandle()V

    .line 240
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh animation confirm end"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh animation cancel end"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 224
    iget v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;->val$op:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$3(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh animation confirm start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh animation cancel start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
