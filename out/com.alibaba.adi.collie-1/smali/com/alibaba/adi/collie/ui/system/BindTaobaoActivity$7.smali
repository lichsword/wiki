.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$7;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$7;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 148
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$7;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearName:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$15(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$7;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearName:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$15(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
