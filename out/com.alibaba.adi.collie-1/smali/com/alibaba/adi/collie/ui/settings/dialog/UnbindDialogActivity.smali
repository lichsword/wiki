.class public Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;
.super Landroid/app/Activity;
.source "UnbindDialogActivity.java"

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
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 28
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;->setResult(I)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;->finish()V

    goto :goto_0

    .line 32
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;->setResult(I)V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;->finish()V

    goto :goto_0

    .line 26
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
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v2, 0x7f030032

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;->setContentView(I)V

    .line 18
    const v2, 0x7f0800d7

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 19
    .local v1, positiveView:Landroid/widget/Button;
    const v2, 0x7f0800d6

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 20
    .local v0, nagetiveView:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method
