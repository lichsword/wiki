.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$5;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->setLoginViewStatus()V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$2(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method
