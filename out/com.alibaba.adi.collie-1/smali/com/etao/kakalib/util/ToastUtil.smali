.class public Lcom/etao/kakalib/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setGravityCenter(Landroid/widget/Toast;)V
    .locals 2
    .parameter "makeText"

    .prologue
    const/4 v1, 0x0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 43
    :cond_0
    return-void
.end method

.method public static toastLongMsg(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 16
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 17
    .local v0, makeText:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/etao/kakalib/util/ToastUtil;->setGravityCenter(Landroid/widget/Toast;)V

    .line 18
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 19
    return-void
.end method

.method public static toastLongMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 28
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 29
    .local v0, makeText:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/etao/kakalib/util/ToastUtil;->setGravityCenter(Landroid/widget/Toast;)V

    .line 30
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method

.method public static toastShortMsg(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 22
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 23
    .local v0, makeText:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/etao/kakalib/util/ToastUtil;->setGravityCenter(Landroid/widget/Toast;)V

    .line 24
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method

.method public static toastShortMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 34
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 35
    .local v0, makeText:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/etao/kakalib/util/ToastUtil;->setGravityCenter(Landroid/widget/Toast;)V

    .line 36
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    return-void
.end method
