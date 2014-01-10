.class public Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "DisableHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;,
        Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;
    }
.end annotation


# static fields
.field private static final DIALOG_CHOOSE_SYSTEM_LAUNCHER:I = 0x2

.field private static final DIALOG_CLEAN_SETTINGS_LAUNCHER:I = 0x1

.field public static final INTENT_EXTRA_DIALOG:Ljava/lang/String; = "show_dialog_id"

.field public static final SETTINGS_DIALOG_HOME_CHOOSER:I = 0x3

.field public static final SETTINGS_DIALOG_NONE:I = -0x1

.field public static final SETTINGS_DIALOG_STEP1:I = 0x1

.field public static final SETTINGS_DIALOG_STEP2:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field private mLauncherChooserButton:Landroid/widget/Button;

.field private mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

.field private mSetLauncherLayout:Landroid/view/ViewGroup;

.field private mSettingHomeButtonStep1:Landroid/widget/Button;

.field private mSettingHomeButtonStep2:Landroid/widget/Button;

.field private mSettingHomeFlagStep1:Landroid/view/View;

.field private mSettingHomeFlagStep2:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->setDefaultLauncher(Landroid/content/ComponentName;)V

    return-void
.end method

.method private initContentViews()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSetLauncherLayout:Landroid/view/ViewGroup;

    .line 94
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherChooserButton:Landroid/widget/Button;

    .line 95
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    .line 96
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep1:Landroid/widget/Button;

    .line 97
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    .line 98
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep1:Landroid/view/View;

    .line 99
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep2:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->setDefaultLauncher(Landroid/content/ComponentName;)V

    .line 102
    return-void
.end method

.method private initSettingsView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const v2, 0x3e19999a

    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->hasChoseLauncher()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep1:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep2:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSetLauncherLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->isDefaultLauncher()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep1:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep1:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep2:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSetLauncherLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep1:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeFlagStep2:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/Tools;->setAlphaForView(Landroid/view/View;F)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSetLauncherLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 337
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string v1, "show_dialog_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 342
    .local v0, dialogId:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep1:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep1:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherChooserButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherChooserButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setDefaultLauncher(Landroid/content/ComponentName;)V
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 105
    const v5, 0x7f0a017b

    invoke-virtual {p0, v5}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, choseFormat:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 107
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherChooserButton:Landroid/widget/Button;

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 113
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 116
    .local v3, info:Landroid/content/pm/ActivityInfo;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 121
    :goto_1
    if-eqz v3, :cond_1

    .line 122
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherChooserButton:Landroid/widget/Button;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherChooserButton:Landroid/widget/Button;

    const v6, 0x7f0a0177

    invoke-virtual {p0, v6}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 130
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v8

    .line 132
    :cond_1
    if-nez p1, :cond_2

    move v8, v9

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    if-nez p2, :cond_3

    move v8, v10

    .line 135
    goto :goto_0

    .line 137
    :cond_3
    const-string v11, "[^a-zA-Z0-9]+"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, arr1:[Ljava/lang/String;
    const-string v11, "[^a-zA-Z0-9]+"

    invoke-virtual {p2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, arr2:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, ii:I
    array-length v11, v0

    array-length v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, max:I
    :goto_1
    if-gt v5, v6, :cond_0

    .line 143
    array-length v11, v0

    if-ne v5, v11, :cond_4

    .line 144
    array-length v10, v1

    if-eq v5, v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 145
    :cond_4
    array-length v11, v1

    if-ne v5, v11, :cond_5

    move v8, v10

    .line 146
    goto :goto_0

    .line 149
    :cond_5
    :try_start_0
    aget-object v11, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 155
    .local v2, i1:I
    :goto_2
    :try_start_1
    aget-object v11, v1, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 160
    .local v3, i2:I
    :goto_3
    if-eq v2, v3, :cond_6

    .line 161
    sub-int v8, v2, v3

    goto :goto_0

    .line 150
    .end local v2           #i1:I
    .end local v3           #i2:I
    :catch_0
    move-exception v7

    .line 151
    .local v7, x:Ljava/lang/Exception;
    const v2, 0x7fffffff

    .restart local v2       #i1:I
    goto :goto_2

    .line 156
    .end local v7           #x:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 157
    .restart local v7       #x:Ljava/lang/Exception;
    const v3, 0x7fffffff

    .restart local v3       #i2:I
    goto :goto_3

    .line 164
    .end local v7           #x:Ljava/lang/Exception;
    :cond_6
    aget-object v11, v0, v5

    aget-object v12, v1, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 166
    .local v4, i3:I
    if-eqz v4, :cond_7

    move v8, v4

    .line 167
    goto :goto_0

    .line 142
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 316
    packed-switch p1, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 318
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->hasChoseLauncher()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->isDefaultLauncher()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSettingHomeButtonStep1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mSetLauncherLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v7, 0x7f0a0174

    const v8, 0x7f0a012a

    const v10, 0x7f0a00a0

    const/4 v9, 0x0

    .line 219
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onClick(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 221
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v5, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    invoke-direct {v5, p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;-><init>(Landroid/content/Context;)V

    .line 223
    .local v5, stepDialog:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 225
    :sswitch_0
    const-string v6, "CleanDefaultChoose"

    invoke-static {v6}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 226
    const v6, 0x7f03002d

    invoke-virtual {v0, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 228
    .local v3, step1View:Landroid/view/View;
    invoke-virtual {v5, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setTitleEx(I)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 229
    invoke-virtual {v6, v3}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setView(Landroid/view/View;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 231
    new-instance v7, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$2;

    invoke-direct {v7, p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)V

    .line 230
    invoke-virtual {v6, v8, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 248
    invoke-virtual {v6, v10, v9}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 249
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->show()V

    goto :goto_0

    .line 252
    .end local v3           #step1View:Landroid/view/View;
    :sswitch_1
    const-string v6, "ChooseDefaultUnlockAPP"

    invoke-static {v6}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 253
    const v6, 0x7f03002e

    invoke-virtual {v0, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 255
    .local v4, step2View:Landroid/view/View;
    invoke-virtual {v5, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setTitleEx(I)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 256
    invoke-virtual {v6, v4}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setView(Landroid/view/View;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 258
    new-instance v7, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;

    invoke-direct {v7, p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)V

    .line 257
    invoke-virtual {v6, v8, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 281
    invoke-virtual {v6, v10, v9}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 282
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->show()V

    goto :goto_0

    .line 286
    .end local v4           #step2View:Landroid/view/View;
    :sswitch_2
    const-string v6, "ChooseDefaultDesk"

    invoke-static {v6}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 287
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, launcherPkgName:Ljava/lang/String;
    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;-><init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;Ljava/lang/String;)V

    .line 290
    .local v1, launcherAdapter:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;
    const v6, 0x7f0a0178

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setTitleEx(I)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 291
    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->getPositionByName(Ljava/lang/String;)I

    move-result v7

    .line 292
    new-instance v8, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;

    invoke-direct {v8, p0, v1}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;)V

    .line 291
    invoke-virtual {v6, v1, v7, v8}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 305
    invoke-virtual {v6, v10, v9}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v6

    .line 306
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->show()V

    goto :goto_0

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x7f080083 -> :sswitch_0
        0x7f080085 -> :sswitch_1
        0x7f080089 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 72
    const-string v1, "Xiaomi"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v2, "3.4.0"

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->isDefaultLauncher()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)V

    .line 83
    const-wide/16 v3, 0x3e8

    .line 76
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->setContentView(I)V

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->initContentViews()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 214
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 206
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->initSettingsView()V

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->processIntent(Landroid/content/Intent;)V

    .line 208
    return-void
.end method
