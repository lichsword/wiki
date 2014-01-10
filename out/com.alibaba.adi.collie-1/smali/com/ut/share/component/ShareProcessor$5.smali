.class Lcom/ut/share/component/ShareProcessor$5;
.super Ljava/lang/Object;
.source "ShareProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/share/component/ShareProcessor;->gotoShare(Lcom/ut/share/data/ShareAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pk:Lcom/ut/share/data/ShareAppInfo;

.field final synthetic pl:Lcom/ut/share/component/ShareProcessor;


# direct methods
.method constructor <init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor$5;->pl:Lcom/ut/share/component/ShareProcessor;

    iput-object p2, p0, Lcom/ut/share/component/ShareProcessor$5;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor$5;->pl:Lcom/ut/share/component/ShareProcessor;

    #calls: Lcom/ut/share/component/ShareProcessor;->isCanceled()Z
    invoke-static {v1}, Lcom/ut/share/component/ShareProcessor;->access$500(Lcom/ut/share/component/ShareProcessor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor$5;->pl:Lcom/ut/share/component/ShareProcessor;

    #getter for: Lcom/ut/share/component/ShareProcessor;->mPrepareDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ut/share/component/ShareProcessor;->access$600(Lcom/ut/share/component/ShareProcessor;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 278
    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor$5;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareAppInfo;->getExecutor()Lcom/ut/share/executor/Executor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/share/executor/Executor;->share()Z

    move-result v0

    .line 279
    .local v0, res:Z
    if-nez v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor$5;->pl:Lcom/ut/share/component/ShareProcessor;

    #getter for: Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/ut/share/component/ShareProcessor;->access$700(Lcom/ut/share/component/ShareProcessor;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u554a\u5440\uff0c\u8c03\u7528%s\u5931\u8d25\u4e86"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ut/share/component/ShareProcessor$5;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-virtual {v4}, Lcom/ut/share/data/ShareAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
