.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;
.super Ljava/lang/Object;
.source "SystemNoticeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setSmsItem(Ljava/util/List;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

.field private final synthetic val$smsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;->val$smsList:Ljava/util/List;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    move-result-object v1

    new-instance v2, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;->val$smsList:Ljava/util/List;

    .line 329
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/SmsData;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/SmsData;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;-><init>(ILjava/lang/String;Landroid/app/Activity;)V

    .line 328
    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 331
    :cond_0
    return-void
.end method
