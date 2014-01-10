.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;
.super Ljava/lang/Object;
.source "SystemNoticeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setCallItem(Ljava/util/List;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

.field private final synthetic val$call:Lcom/alibaba/adi/collie/model/CallData;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Lcom/alibaba/adi/collie/model/CallData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;->val$call:Lcom/alibaba/adi/collie/model/CallData;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    move-result-object v0

    new-instance v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;->val$call:Lcom/alibaba/adi/collie/model/CallData;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/CallData;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 419
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;-><init>(ILjava/lang/String;Landroid/app/Activity;)V

    .line 418
    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 421
    :cond_0
    return-void
.end method
