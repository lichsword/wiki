.class public Lcom/taobao/statistic/d/a/b;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field private nv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nw:I

.field private nx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/statistic/d/a/b;->nw:I

    .line 11
    const/16 v0, 0x32

    iput v0, p0, Lcom/taobao/statistic/d/a/b;->nx:I

    return-void
.end method


# virtual methods
.method public R(I)V
    .locals 0
    .parameter "maxTextSize"

    .prologue
    .line 65
    iput p1, p0, Lcom/taobao/statistic/d/a/b;->nw:I

    .line 66
    return-void
.end method

.method public S(I)V
    .locals 0
    .parameter "listSize"

    .prologue
    .line 69
    if-lez p1, :cond_0

    .line 70
    iput p1, p0, Lcom/taobao/statistic/d/a/b;->nx:I

    .line 72
    :cond_0
    return-void
.end method

.method public declared-synchronized addAction(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/taobao/statistic/d/a/b;->nx:I

    if-lt v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "amount"
    .parameter "separator"

    .prologue
    .line 14
    monitor-enter p0

    const/4 v3, 0x1

    .line 15
    .local v3, isFirst:Z
    :try_start_0
    const-string v4, ""

    .line 16
    .local v4, result:Ljava/lang/String;
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    const-string p2, ","

    .line 19
    :cond_0
    if-gtz p1, :cond_1

    .line 20
    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v6

    .line 22
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_3

    .line 23
    iget-object v6, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    .local v0, action:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    const/4 v3, 0x0

    .line 29
    goto :goto_1

    .line 31
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, p1

    add-int/lit8 v5, v6, -0x1

    .line 32
    .local v5, upStart:I
    move v1, v5

    .local v1, i:I
    :goto_2
    iget-object v6, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 33
    iget-object v6, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    .restart local v0       #action:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/taobao/statistic/d/a/b;->nw:I

    if-le v6, v7, :cond_5

    .end local v0           #action:Ljava/lang/String;
    .end local v1           #i:I
    .end local v5           #upStart:I
    :cond_4
    move-object v6, v4

    .line 46
    goto :goto_0

    .line 37
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v5       #upStart:I
    :cond_5
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 38
    if-nez v3, :cond_6

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 42
    const/4 v3, 0x0

    .line 32
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #upStart:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/statistic/d/a/b;->nv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
