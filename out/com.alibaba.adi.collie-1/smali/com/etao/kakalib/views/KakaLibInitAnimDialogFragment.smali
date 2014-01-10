.class public Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibInitAnimDialogFragment.java"


# static fields
.field private static kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-direct {v0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;-><init>()V

    sput-object v0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    .line 29
    :cond_0
    sget-object v0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    return-object v0
.end method

.method private remove(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V
    .locals 4
    .parameter "transaction"
    .parameter "prev"

    .prologue
    .line 128
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz p2, :cond_0

    .line 132
    :try_start_0
    const-string v1, "TAG"

    const-string v2, "#####remove  prev initDialog"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#####remove  prev initDialog erro"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/etao/kakalib/views/KaDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x2

    const v1, 0x1030011

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->setStyle(II)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 40
    sget-boolean v1, Lcom/etao/kakalib/util/KaKaLibConfig;->needInitAnim:Z

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 42
    const-string v2, "kakalib_init_anim_dialog"

    const v3, 0x7f03000d

    .line 41
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .parameter "transaction"
    .parameter "tag"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    const-string v0, "TAG"

    const-string v1, "####### KakaLibInitAnimDialogFragment show"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "TAG"

    const-string v1, "####### kakaLibProductMsgDialogFragment \u5df2\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v0, -0x1

    .line 70
    :goto_0
    monitor-exit p0

    return v0

    .line 69
    :cond_0
    :try_start_1
    sget-object v0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-direct {p0, p1, v0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->remove(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V

    .line 70
    invoke-super {p0, p1, p2}, Lcom/etao/kakalib/views/KaDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .parameter "manager"
    .parameter "tag"

    .prologue
    .line 57
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startAnimAndDismisDialog()V
    .locals 10

    .prologue
    .line 76
    sget-boolean v6, Lcom/etao/kakalib/util/KaKaLibConfig;->needInitAnim:Z

    if-nez v6, :cond_1

    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->dismiss()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->isDetached()Z

    move-result v6

    if-nez v6, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 85
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "rlAnimBg"

    const v9, 0x7f0a0035

    invoke-static {v7, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 84
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 86
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 88
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "viewInitDown"

    .line 89
    const v9, 0x7f0a0037

    .line 88
    invoke-static {v7, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 87
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, downView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 91
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "imageViewInitUp"

    .line 92
    const v9, 0x7f0a0036

    .line 91
    invoke-static {v7, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 90
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 93
    .local v5, upView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 94
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "kakalib_anim_init_up"

    .line 95
    const v9, 0x7f040002

    .line 94
    invoke-static {v7, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getAnimByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 93
    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 96
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 98
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "kakalib_anim_init_down"

    .line 99
    const/high16 v9, 0x7f04

    .line 98
    invoke-static {v7, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getAnimByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 97
    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 100
    .local v1, downAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 102
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "kakalib_anim_init_icon"

    .line 103
    const v9, 0x7f040001

    .line 102
    invoke-static {v7, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getAnimByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 101
    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 104
    .local v3, iconAnimation:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 105
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "imageViewInitIcon"

    .line 106
    const v9, 0x7f0a0039

    .line 105
    invoke-static {v7, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 104
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 107
    .local v4, iconView:Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    new-instance v6, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment$1;-><init>(Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;)V

    invoke-virtual {v3, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0
.end method
