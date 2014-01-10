.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$2;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->onLoginWithCheckCode(Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$2;->this$1:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$2;->this$1:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->access$0(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;)Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->finish()V

    .line 398
    return-void
.end method
