.class public Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "PageManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private enableJokePageDefault:Z

.field private enableNewsPageDefault:Z

.field private enableTaobaoPageDefault:Z

.field private jokeCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

.field private mChanged:Z

.field private final mCheckboxListener:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;

.field private newsCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

.field private taobaoCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableTaobaoPageDefault:Z

    .line 22
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableNewsPageDefault:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mChanged:Z

    .line 26
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableJokePageDefault:Z

    .line 68
    new-instance v0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;-><init>(Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mCheckboxListener:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mChanged:Z

    return-void
.end method

.method private initContentData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    const-string v0, "adi_lock_enable_taobao"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableTaobaoPageDefault:Z

    .line 51
    const-string v0, "adi_lock_enable_news"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableNewsPageDefault:Z

    .line 52
    const-string v0, "adi_lock_enable_joke"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableJokePageDefault:Z

    .line 54
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->jokeCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableJokePageDefault:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(ZZ)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->newsCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableNewsPageDefault:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(ZZ)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->taobaoCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->enableTaobaoPageDefault:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(ZZ)V

    .line 58
    return-void
.end method

.method private initContentView()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->jokeCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    .line 44
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->newsCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    .line 45
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->taobaoCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, newValue:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 121
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->finish()V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->taobaoCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->taobaoCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(Z)V

    .line 126
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mCheckboxListener:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->taobaoCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 124
    goto :goto_1

    .line 134
    :sswitch_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->newsCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 135
    :goto_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->newsCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mCheckboxListener:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->newsCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 134
    goto :goto_2

    .line 139
    :sswitch_3
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->jokeCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 140
    :goto_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->jokeCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(Z)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mCheckboxListener:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->jokeCheckBox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 139
    goto :goto_3

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f08008b -> :sswitch_3
        0x7f08008d -> :sswitch_2
        0x7f08008f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->initContentView()V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->initContentData()V

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mChanged:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "com.alibaba.adi.collie.INIT_PAGER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 66
    return-void
.end method
