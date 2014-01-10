.class public Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;
.super Landroid/app/Activity;
.source "ExitLockDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 29
    :pswitch_0
    const-string v0, "ConfirmClose"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 30
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;->setResult(I)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;->finish()V

    goto :goto_0

    .line 34
    :pswitch_1
    const-string v0, "CancelClose"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;->setResult(I)V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;->finish()V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x7f0800d6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;->setContentView(I)V

    .line 19
    const v2, 0x7f0800d7

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 20
    .local v1, positiveView:Landroid/widget/Button;
    const v2, 0x7f0800d6

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, nagetiveView:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
