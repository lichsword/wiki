.class public Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;
.super Landroid/app/Activity;
.source "RemoveDBLockDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string v1, "TodoCancelDoubleLock"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 37
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->setResult(I)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->finish()V

    goto :goto_0

    .line 43
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v1, "CancelTodoCancelDoubleLock"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->finish()V

    goto :goto_0

    .line 34
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
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f0800d7

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 27
    .local v1, positiveView:Landroid/widget/Button;
    const v2, 0x7f0800d6

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, nagetiveView:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
