.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$1;
.super Ljava/lang/Object;
.source "SystemNoticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->hasCall:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/NotificationHelper;->setCallNotifySeen(Landroid/content/Context;)Z

    .line 723
    :cond_0
    return-void
.end method
