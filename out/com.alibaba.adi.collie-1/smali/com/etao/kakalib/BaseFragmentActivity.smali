.class public abstract Lcom/etao/kakalib/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onCreatePage(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 45
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onDestroyPage(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 37
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onPausePage(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 29
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onResumePage(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method protected setPageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pageName"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/etao/kakalib/BaseFragmentActivity;->pageName:Ljava/lang/String;

    .line 16
    return-void
.end method
