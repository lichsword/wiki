.class public Lcom/alibaba/adi/collie/ui/FragmentPagerActivity;
.super Landroid/app/Activity;
.source "FragmentPagerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static removeShortcutDesktop(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/FragmentPagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, shortcutIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p0, v0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->removeShortcutDesktop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {p0}, Lcom/alibaba/adi/collie/ui/FragmentPagerActivity;->removeShortcutDesktop(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, startIntent:Landroid/content/Intent;
    const/high16 v1, 0x3401

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/FragmentPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
