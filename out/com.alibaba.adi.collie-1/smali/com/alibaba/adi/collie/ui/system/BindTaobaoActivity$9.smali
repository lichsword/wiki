.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

.field private final synthetic val$onOkClicked:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;->val$onOkClicked:Landroid/view/View$OnClickListener;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 288
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;->val$onOkClicked:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;->val$onOkClicked:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 291
    :cond_0
    return-void
.end method
