.class Lcom/taobao/statistic/core/g$a;
.super Ljava/lang/Thread;
.source "Methods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic li:Lcom/taobao/statistic/core/g;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/core/g;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/taobao/statistic/core/g$a;->li:Lcom/taobao/statistic/core/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 183
    const/4 v2, 0x1

    const-string v3, "UploadThread"

    const-string v4, "Start"

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    iget-object v2, p0, Lcom/taobao/statistic/core/g$a;->li:Lcom/taobao/statistic/core/g;

    invoke-static {v2}, Lcom/taobao/statistic/core/g;->a(Lcom/taobao/statistic/core/g;)Lcom/taobao/statistic/core/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, v:Lcom/taobao/statistic/core/q;
    const/4 v0, 0x0

    .line 188
    .local v0, dataUploader:Lcom/taobao/statistic/module/data/a;
    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/core/g$a;->li:Lcom/taobao/statistic/core/g;

    invoke-static {v2}, Lcom/taobao/statistic/core/g;->a(Lcom/taobao/statistic/core/g;)Lcom/taobao/statistic/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/taobao/statistic/core/g$a;->li:Lcom/taobao/statistic/core/g;

    invoke-static {v2}, Lcom/taobao/statistic/core/g;->a(Lcom/taobao/statistic/core/g;)Lcom/taobao/statistic/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bM()Lcom/taobao/statistic/module/data/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 193
    :goto_0
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cT()V

    .line 195
    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cV()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cU()V

    .line 212
    .end local v0           #dataUploader:Lcom/taobao/statistic/module/data/a;
    .end local v1           #v:Lcom/taobao/statistic/core/q;
    :cond_0
    :goto_1
    return-void

    .line 200
    .restart local v0       #dataUploader:Lcom/taobao/statistic/module/data/a;
    .restart local v1       #v:Lcom/taobao/statistic/core/q;
    :cond_1
    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Lcom/taobao/statistic/module/data/a;->dK()V

    .line 204
    :cond_2
    if-eqz v1, :cond_0

    .line 205
    :try_start_1
    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cU()V

    .line 206
    iget-object v2, p0, Lcom/taobao/statistic/core/g$a;->li:Lcom/taobao/statistic/core/g;

    invoke-static {v2}, Lcom/taobao/statistic/core/g;->b(Lcom/taobao/statistic/core/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v2

    goto :goto_1

    .line 190
    :catch_1
    move-exception v2

    goto :goto_0
.end method
