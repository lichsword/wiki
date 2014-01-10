.class public Lcom/alibaba/adi/collie/ui/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mBGImageView:Landroid/widget/ImageView;

.field protected mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

.field protected mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initContentData()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->bindWallpaper()V

    .line 45
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->getBatteryChangeReceiver()Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->register()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->getTimeChangeReceiver()Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->register()V

    .line 52
    :cond_1
    return-void
.end method

.method private initContentView()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBGImageView:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    .line 40
    const v0, 0x7f0801c0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    .line 41
    return-void
.end method

.method private wdmBackEvent()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, activityName:Ljava/lang/String;
    const-string v1, "VersionActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "UpdateBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v1, "BindAccountsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string v1, "AccountManageBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    const-string v1, "PageManagerActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const-string v1, "PageManageBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_3
    const-string v1, "PrivacyActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    const-string v1, "PrivacyBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v1, "FeedbackActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    const-string v1, "FeedBackBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_5
    const-string v1, "AboutActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    const-string v1, "AboutBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_6
    const-string v1, "LockChooseActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 134
    const-string v1, "UnlockTypeBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_7
    const-string v1, "WebNewsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "AliNoticeBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindWallpaper()V
    .locals 5

    .prologue
    .line 96
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBGImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getCachedWallpaper()[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, bitmaps:[Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBGImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .end local v0           #bitmaps:[Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method protected exitAnim()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    const v1, 0x7f040015

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->overridePendingTransition(II)V

    .line 93
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->exitAnim()V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 108
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->wdmBackEvent()V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->finish()V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f080009
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageCreate(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->initContentView()V

    .line 34
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->initContentData()V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->getBatteryChangeReceiver()Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->unregister()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->getTimeChangeReceiver()Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->unregister()V

    .line 64
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageLeave(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 26
    const v0, 0x7f040012

    const v1, 0x7f040015

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->overridePendingTransition(II)V

    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageEnter(Ljava/lang/String;)V

    .line 72
    return-void
.end method
