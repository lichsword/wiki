.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$1;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginNotifyHandler:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$0(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->login(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;

    .line 226
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showProgressDialog()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$1(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 227
    return-void
.end method
