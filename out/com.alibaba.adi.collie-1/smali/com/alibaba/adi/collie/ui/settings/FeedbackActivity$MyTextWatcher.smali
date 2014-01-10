.class Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 212
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 216
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$2(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, content:Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mSendBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$3(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mSendBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$3(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 225
    .local v2, inputLen:I
    rsub-int v1, v2, 0xc8

    .line 226
    .local v1, diff:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mTipTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$4(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    const v7, 0x7f0a006b

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mSendBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$3(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/Button;

    move-result-object v3

    if-ltz v1, :cond_2

    const/16 v6, 0xc8

    if-ge v1, v6, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    return-void

    .end local v1           #diff:I
    .end local v2           #inputLen:I
    :cond_1
    move v3, v5

    .line 222
    goto :goto_0

    .restart local v1       #diff:I
    .restart local v2       #inputLen:I
    :cond_2
    move v4, v5

    .line 227
    goto :goto_1
.end method
