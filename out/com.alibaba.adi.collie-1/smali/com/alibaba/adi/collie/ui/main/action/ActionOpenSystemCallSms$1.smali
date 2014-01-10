.class Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms$1;
.super Ljava/lang/Object;
.source "ActionOpenSystemCallSms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->startCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms$1;->this$0:Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms$1;->this$0:Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;

    #getter for: Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->access$0(Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/NotificationHelper;->setCallNotifySeen(Landroid/content/Context;)Z

    .line 72
    return-void
.end method
