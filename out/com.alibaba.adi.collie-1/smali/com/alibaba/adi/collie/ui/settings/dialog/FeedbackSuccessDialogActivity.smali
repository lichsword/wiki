.class public Lcom/alibaba/adi/collie/ui/settings/dialog/FeedbackSuccessDialogActivity;
.super Landroid/app/Activity;
.source "FeedbackSuccessDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 26
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/FeedbackSuccessDialogActivity;->setResult(I)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/FeedbackSuccessDialogActivity;->finish()V

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x7f0800d7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/FeedbackSuccessDialogActivity;->setContentView(I)V

    .line 18
    const v1, 0x7f0800d7

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/FeedbackSuccessDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, positiveView:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method
