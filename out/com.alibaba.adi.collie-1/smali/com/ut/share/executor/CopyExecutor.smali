.class public Lcom/ut/share/executor/CopyExecutor;
.super Lcom/ut/share/executor/Executor;
.source "CopyExecutor.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V
    .locals 0
    .parameter "context"
    .parameter "spt"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/ut/share/executor/Executor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 17
    return-void
.end method

.method private copyInNewapi()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lcom/ut/share/executor/CopyExecutor;->mContext:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 35
    .local v0, cm:Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/ut/share/executor/CopyExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getSubject()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ut/share/executor/CopyExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v3}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ut/share/executor/CopyExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v3}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 37
    return-void
.end method


# virtual methods
.method public doShare()Z
    .locals 4

    .prologue
    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/ut/share/executor/CopyExecutor;->copyInNewapi()V

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/ut/share/executor/CopyExecutor;->mContext:Landroid/app/Activity;

    const-string v2, "\u590d\u5236\u6210\u529f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 28
    const/4 v1, 0x1

    return v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/ut/share/executor/CopyExecutor;->mContext:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 25
    .local v0, cm:Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ut/share/executor/CopyExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ut/share/executor/CopyExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isDirectly()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
