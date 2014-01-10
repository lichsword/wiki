.class public Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "SettingsPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHOW_PIC_ONLY_WIFI:Z = false

.field private static final REQUEST_CODE_EXIT_LOCK:I = 0x3

.field private static final REQUEST_CODE_SHOW_PICTURE_MODE:I = 0x2

.field private static final REQUEST_CODE_WALLPAPER:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field private choiceCity:Ljava/lang/String;

.field private defaultStateShowPictureOnlyWifi:Z

.field private flagClicks:Z

.field private mAdiLockQrcode:Landroid/widget/ImageView;

.field private final mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;

.field private mDisableHomeDesc:Landroid/widget/TextView;

.field private mLockTypeTextView:Landroid/widget/TextView;

.field private mLockWallpaperNumTextView:Landroid/widget/TextView;

.field private mQrcodeVersionTextView:Landroid/widget/TextView;

.field private mSettingAccountIcon:Landroid/widget/ImageView;

.field private mSettingAccountLoginMode:Landroid/widget/TextView;

.field private mShowPictureModeTextView:Landroid/widget/TextView;

.field private mStatusBarDesc:Landroid/widget/TextView;

.field private mStatusBarSwitch:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

.field private mVersionNameTextView:Landroid/widget/TextView;

.field private mVersionTipImageView:Landroid/widget/ImageView;

.field private mWallpaperFreqLayout:Landroid/view/View;

.field private mWallpaperFreqSummaryTv:Landroid/widget/TextView;

.field private mWallpaperFreqTitleTv:Landroid/widget/TextView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private sv:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 479
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 532
    new-instance v0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;-><init>(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->bindWallpaper()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->updateStatusBarDesc()V

    return-void
.end method

.method private initContentData()V
    .locals 5

    .prologue
    .line 179
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, versionName:Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mVersionNameTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x56

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mQrcodeVersionTextView:Landroid/widget/TextView;

    const v2, 0x7f0a00fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method private initContentView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->setContentView(I)V

    .line 117
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->sv:Landroid/widget/ScrollView;

    .line 118
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mVersionTipImageView:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mVersionNameTextView:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mQrcodeVersionTextView:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mDisableHomeDesc:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mAdiLockQrcode:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mLockWallpaperNumTextView:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqSummaryTv:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqTitleTv:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqLayout:Landroid/view/View;

    .line 132
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mShowPictureModeTextView:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mLockTypeTextView:Landroid/widget/TextView;

    .line 134
    const-string v0, "adi_lock_show_pic_only_wifi_key"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->defaultStateShowPictureOnlyWifi:Z

    .line 136
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mSettingAccountLoginMode:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mSettingAccountIcon:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarSwitch:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    .line 140
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarDesc:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarSwitch:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarSwitch:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    const-string v1, "show_statusbar"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->setChecked(Z)V

    .line 154
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWeatherCity:Landroid/widget/TextView;

    .line 155
    return-void
.end method

.method private setWallpaperFreqEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    if-nez p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqLayout:Landroid/view/View;

    const v1, 0x3eb33333

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqLayout:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private updateStatusBarDesc()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarSwitch:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarDesc:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarSwitch:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v0

    .line 163
    .local v0, unlockType:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarDesc:Landroid/widget/TextView;

    const v2, 0x7f0a0110

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 174
    .end local v0           #unlockType:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mStatusBarDesc:Landroid/widget/TextView;

    const v2, 0x7f0a010f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected exitAnim()V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 483
    packed-switch p1, :pswitch_data_0

    .line 525
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 485
    :pswitch_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 487
    const-string v3, "adi_lock_enable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 489
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->unbindService()V

    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .local v0, stopKeyGuardIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->stopService(Landroid/content/Intent;)Z

    .line 494
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v2, stopNetworkIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->stopService(Landroid/content/Intent;)Z

    .line 501
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v1, stopMainAcitivityIntent:Landroid/content/Intent;
    const/high16 v3, 0x3401

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    const-string v3, "exit"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 509
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->finish()V

    .line 510
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const v6, 0x7f040014

    const v5, 0x7f040013

    .line 339
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->flagClicks:Z

    if-eqz v3, :cond_0

    .line 475
    :goto_0
    return-void

    .line 342
    :cond_0
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->flagClicks:Z

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 437
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->finish()V

    goto :goto_0

    .line 345
    :sswitch_1
    const-string v3, "VersionInformation"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 346
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 351
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v3, "AccountManage"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v3, v4, :cond_1

    .line 353
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 359
    :goto_1
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 356
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 362
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    const-string v3, "PageManage"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 368
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 370
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    .line 371
    const-string v3, "InterCityChoose"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    const-string v3, "Privacy"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 375
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 380
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_6
    const-string v3, "UnclockType"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 381
    const-string v3, "lock_type"

    sget-object v4, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NONE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, lock_type:Ljava/lang/String;
    sget-object v3, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 394
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 385
    :cond_3
    sget-object v3, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_PIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 386
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "isCheckLockPwd"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 389
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    sget-object v3, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "isCheckLockPwd"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 397
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #lock_type:Ljava/lang/String;
    :sswitch_7
    const-string v3, "WallPaper"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 399
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 405
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_8
    const-string v3, "WallpaperFreq"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 412
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_9
    const-string v3, "FeedBack"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 413
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 415
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 418
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_a
    const-string v3, "ShowPictureMode"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 419
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/dialog/ShowPictureModeDialogActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 431
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_b
    const-string v3, "About"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 432
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 434
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 440
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_c
    const-string v3, "FAQ"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 441
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/FAQActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 443
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 446
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_d
    const-string v3, "InterHomeButtonSettings"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 447
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 449
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 452
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_e
    const-string v3, "CancelDoubleLock"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/dialog/RemoveDBLockDialogActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 455
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->flagClicks:Z

    goto/16 :goto_0

    .line 458
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_f
    const-string v3, "CloseApp"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/dialog/ExitLockDialogActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .local v0, exitIntent:Landroid/content/Intent;
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 469
    .end local v0           #exitIntent:Landroid/content/Intent;
    :sswitch_10
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->flagClicks:Z

    goto/16 :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f080060 -> :sswitch_d
        0x7f080062 -> :sswitch_e
        0x7f080064 -> :sswitch_3
        0x7f080065 -> :sswitch_4
        0x7f080067 -> :sswitch_a
        0x7f080069 -> :sswitch_7
        0x7f08006b -> :sswitch_8
        0x7f08006e -> :sswitch_6
        0x7f080070 -> :sswitch_5
        0x7f080071 -> :sswitch_2
        0x7f080075 -> :sswitch_1
        0x7f080079 -> :sswitch_9
        0x7f08007a -> :sswitch_c
        0x7f08007b -> :sswitch_b
        0x7f08007c -> :sswitch_10
        0x7f08007e -> :sswitch_f
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->initContentView()V

    .line 92
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->initContentData()V

    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;->register()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;->unregister()V

    .line 214
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 106
    :pswitch_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown() KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->finish()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 205
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 247
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v5

    sget-object v7, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v5, v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v5

    array-length v1, v5

    .line 248
    .local v1, num:I
    packed-switch v1, :pswitch_data_0

    .line 258
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mLockWallpaperNumTextView:Landroid/widget/TextView;

    const v7, 0x7f0a0133

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-direct {p0, v10}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->setWallpaperFreqEnable(Z)V

    .line 263
    :goto_0
    if-le v1, v10, :cond_0

    .line 264
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getUpdateIntervalMillis()J

    move-result-wide v3

    .line 265
    .local v3, wallpaperMillis:J
    const-wide/16 v7, -0x1

    cmp-long v5, v7, v3

    if-nez v5, :cond_1

    .line 266
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqSummaryTv:Landroid/widget/TextView;

    const v7, 0x7f0a0183

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .end local v3           #wallpaperMillis:J
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mVersionTipImageView:Landroid/widget/ImageView;

    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v5}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->hasUpdate(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    const-string v5, "adi_lock_show_pic_only_wifi_key"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->defaultStateShowPictureOnlyWifi:Z

    .line 283
    const-string v5, "adi_lock_show_pic_only_wifi_key"

    iget-boolean v7, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->defaultStateShowPictureOnlyWifi:Z

    invoke-static {v5, v7}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 284
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mShowPictureModeTextView:Landroid/widget/TextView;

    const v7, 0x7f0a016b

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 288
    :goto_3
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mLockTypeTextView:Landroid/widget/TextView;

    const-string v7, "lock_type"

    sget-object v8, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NONE:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v5

    sget-object v7, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v5, v7, :cond_7

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getLogin()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v2

    .line 291
    .local v2, result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mSettingAccountLoginMode:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getNickName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mSettingAccountIcon:Landroid/widget/ImageView;

    const v7, 0x7f0200a3

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    .end local v2           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :goto_4
    iput-boolean v6, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->flagClicks:Z

    .line 299
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v0

    .line 300
    .local v0, launcherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->isDefaultLauncher()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 301
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mDisableHomeDesc:Landroid/widget/TextView;

    const v6, 0x7f0a016e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 306
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->updateStatusBarDesc()V

    .line 309
    const-string v5, "choice_city_key"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->choiceCity:Ljava/lang/String;

    .line 310
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->choiceCity:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 311
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWeatherCity:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->choiceCity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_6
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 322
    return-void

    .line 250
    .end local v0           #launcherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    :pswitch_0
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mLockWallpaperNumTextView:Landroid/widget/TextView;

    const v7, 0x7f0a0131

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-direct {p0, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->setWallpaperFreqEnable(Z)V

    goto/16 :goto_0

    .line 254
    :pswitch_1
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mLockWallpaperNumTextView:Landroid/widget/TextView;

    const v7, 0x7f0a0132

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-direct {p0, v6}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->setWallpaperFreqEnable(Z)V

    goto/16 :goto_0

    .line 267
    .restart local v3       #wallpaperMillis:J
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v5, v7, v3

    if-nez v5, :cond_2

    .line 268
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqSummaryTv:Landroid/widget/TextView;

    const v7, 0x7f0a0187

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 269
    :cond_2
    const-wide/32 v7, 0x2932e00

    cmp-long v5, v7, v3

    if-nez v5, :cond_3

    .line 270
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqSummaryTv:Landroid/widget/TextView;

    const v7, 0x7f0a0184

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 271
    :cond_3
    const-wide/32 v7, 0x5265c00

    cmp-long v5, v7, v3

    if-nez v5, :cond_4

    .line 272
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqSummaryTv:Landroid/widget/TextView;

    const v7, 0x7f0a0185

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 273
    :cond_4
    const-wide/32 v7, 0x240c8400

    cmp-long v5, v7, v3

    if-nez v5, :cond_0

    .line 274
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWallpaperFreqSummaryTv:Landroid/widget/TextView;

    const v7, 0x7f0a0186

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 280
    .end local v3           #wallpaperMillis:J
    :cond_5
    const/4 v5, 0x4

    goto/16 :goto_2

    .line 286
    :cond_6
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mShowPictureModeTextView:Landroid/widget/TextView;

    const v7, 0x7f0a016a

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 294
    :cond_7
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mSettingAccountLoginMode:Landroid/widget/TextView;

    const v7, 0x7f0a0113

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mSettingAccountIcon:Landroid/widget/ImageView;

    const v7, 0x7f0200b5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 303
    .restart local v0       #launcherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    :cond_8
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mDisableHomeDesc:Landroid/widget/TextView;

    const v6, 0x7f0a016d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 313
    :cond_9
    const-string v5, "gdmap_city_key"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->choiceCity:Ljava/lang/String;

    .line 314
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->choiceCity:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 315
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWeatherCity:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u81ea\u52a8\u5b9a\u4f4d\uff08"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->choiceCity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff09"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 317
    :cond_a
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->mWeatherCity:Landroid/widget/TextView;

    const-string v6, "\u81ea\u52a8\u5b9a\u4f4d\uff08\u5b9a\u4f4d\u4e2d\uff09"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
