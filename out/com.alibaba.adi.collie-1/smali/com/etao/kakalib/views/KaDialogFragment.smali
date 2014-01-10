.class public Lcom/etao/kakalib/views/KaDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "KaDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KaDialogFragment"


# instance fields
.field private isShow:Z

.field protected mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

.field protected mKaCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private remove(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 4
    .parameter "ft"
    .parameter "tag"

    .prologue
    .line 37
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 41
    .local v0, prev:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 42
    const-string v1, "KaDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#####find dialog"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0           #prev:Landroid/support/v4/app/Fragment;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isShow()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->isShow:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 102
    iget-object v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->mKaCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->mKaCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

    invoke-interface {v0}, Lcom/etao/kakalib/views/IKaDialogCallback;->onCancel()V

    .line 105
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->dismissAllowingStateLoss()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/views/KaDialogFragment;->setStyle(II)V

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 130
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->isShow:Z

    .line 111
    iget-object v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->mKaCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->mKaCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

    invoke-interface {v0}, Lcom/etao/kakalib/views/IKaDialogCallback;->onDismiss()V

    .line 114
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etao/kakalib/views/KaDialogFragment;->isShow:Z

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 28
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public setImageBinder(Landroid/taobao/imagebinder/ImageBinder;)V
    .locals 0
    .parameter "imageBinder"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/etao/kakalib/views/KaDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    .line 97
    return-void
.end method

.method public setKaCallback(Lcom/etao/kakalib/views/IKaDialogCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/etao/kakalib/views/KaDialogFragment;->mKaCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

    .line 89
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/etao/kakalib/views/KaDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 93
    return-void
.end method

.method public declared-synchronized show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 4
    .parameter "transaction"
    .parameter "tag"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/etao/kakalib/views/KaDialogFragment;->isShow:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/views/KaDialogFragment;->remove(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)V

    .line 55
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/etao/kakalib/views/KaDialogFragment;->isShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 61
    :goto_0
    monitor-exit p0

    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "KaDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show dialogFragment error is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    const/4 v1, -0x1

    goto :goto_0

    .line 52
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .parameter "manager"
    .parameter "tag"

    .prologue
    .line 66
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/etao/kakalib/views/KaDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
