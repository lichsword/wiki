.class Lcom/taobao/statistic/module/c/a$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/module/c/a;->dx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nW:Ljava/lang/String;

.field final synthetic nX:Lcom/taobao/statistic/module/c/a;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/module/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/taobao/statistic/module/c/a$1;->nX:Lcom/taobao/statistic/module/c/a;

    iput-object p2, p0, Lcom/taobao/statistic/module/c/a$1;->nW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 434
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 435
    iget-object v1, p0, Lcom/taobao/statistic/module/c/a$1;->nX:Lcom/taobao/statistic/module/c/a;

    invoke-static {v1}, Lcom/taobao/statistic/module/c/a;->a(Lcom/taobao/statistic/module/c/a;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/module/c/a$1;->nX:Lcom/taobao/statistic/module/c/a;

    invoke-static {v1}, Lcom/taobao/statistic/module/c/a;->a(Lcom/taobao/statistic/module/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/statistic/module/c/a$1;->nW:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 444
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
