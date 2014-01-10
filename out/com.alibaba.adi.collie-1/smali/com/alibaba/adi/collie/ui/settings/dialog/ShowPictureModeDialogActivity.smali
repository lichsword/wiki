.class public Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;
.super Landroid/app/Activity;
.source "ShowPictureModeDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initContentView()V
    .locals 7

    .prologue
    const v5, 0x7f0201ab

    const v4, 0x7f0201aa

    const/4 v6, 0x0

    .line 28
    const-string v3, "adi_lock_show_pic_only_wifi_key"

    invoke-static {v3, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v1

    .line 30
    .local v1, onlyWifi:Z
    const v3, 0x7f0800d9

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    .local v0, alwayShowTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 34
    const v3, 0x7f0800da

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 35
    .local v2, wifiShowTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v6, v6, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 37
    return-void

    .end local v2           #wifiShowTextView:Landroid/widget/TextView;
    :cond_0
    move v3, v5

    .line 32
    goto :goto_0

    .restart local v2       #wifiShowTextView:Landroid/widget/TextView;
    :cond_1
    move v5, v4

    .line 36
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    const-string v3, "CloseNoImages"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 45
    const-string v3, "adi_lock_show_pic_only_wifi_key"

    invoke-static {v3, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    .local v0, onlyWifi:Z
    if-eqz v0, :cond_0

    .line 49
    const-string v3, "adi_lock_show_pic_only_wifi_key"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 51
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->initContentView()V

    .line 55
    :cond_0
    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->finish()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 49
    goto :goto_1

    .line 61
    .end local v0           #onlyWifi:Z
    :pswitch_2
    const-string v3, "adi_lock_show_pic_only_wifi_key"

    invoke-static {v3, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    .restart local v0       #onlyWifi:Z
    if-nez v0, :cond_2

    .line 65
    const-string v3, "adi_lock_show_pic_only_wifi_key"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 67
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->initContentView()V

    .line 71
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->finish()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 65
    goto :goto_2

    .line 75
    .end local v0           #onlyWifi:Z
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->finish()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800d7
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->setContentView(I)V

    .line 22
    const v1, 0x7f0800d7

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 23
    .local v0, positiveView:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;->initContentView()V

    .line 25
    return-void
.end method
