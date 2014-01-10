.class public Lcom/taobao/statistic/core/b/b/h;
.super Ljava/lang/Object;
.source "StopTask.java"


# instance fields
.field private jL:Lorg/usertrack/android/library/c/b;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 8
    .parameter "runtime"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/taobao/statistic/core/b/b/h;->jL:Lorg/usertrack/android/library/c/b;

    .line 9
    new-instance v2, Lcom/taobao/statistic/core/b/b/c;

    invoke-direct {v2, p1}, Lcom/taobao/statistic/core/b/b/c;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 10
    .local v2, ending:Lcom/taobao/statistic/core/b/b/c;
    new-instance v3, Lcom/taobao/statistic/core/b/b/f;

    invoke-direct {v3, p1}, Lcom/taobao/statistic/core/b/b/f;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 11
    .local v3, rr:Lcom/taobao/statistic/core/b/b/f;
    new-instance v1, Lcom/taobao/statistic/core/b/b/b;

    invoke-direct {v1, p1}, Lcom/taobao/statistic/core/b/b/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 12
    .local v1, cue:Lcom/taobao/statistic/core/b/b/b;
    new-instance v5, Lcom/taobao/statistic/core/b/b/e;

    invoke-direct {v5, p1}, Lcom/taobao/statistic/core/b/b/e;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 13
    .local v5, rs:Lcom/taobao/statistic/core/b/b/e;
    new-instance v6, Lcom/taobao/statistic/core/b/b/g;

    invoke-direct {v6, p1}, Lcom/taobao/statistic/core/b/b/g;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 14
    .local v6, sus:Lcom/taobao/statistic/core/b/b/g;
    new-instance v0, Lcom/taobao/statistic/core/b/b/a;

    invoke-direct {v0, p1}, Lcom/taobao/statistic/core/b/b/a;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 15
    .local v0, ccpe:Lcom/taobao/statistic/core/b/b/a;
    new-instance v4, Lcom/taobao/statistic/core/b/b/d;

    invoke-direct {v4, p1}, Lcom/taobao/statistic/core/b/b/d;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 16
    .local v4, rrh:Lcom/taobao/statistic/core/b/b/d;
    new-instance v7, Lorg/usertrack/android/library/c/b;

    invoke-direct {v7}, Lorg/usertrack/android/library/c/b;-><init>()V

    iput-object v7, p0, Lcom/taobao/statistic/core/b/b/h;->jL:Lorg/usertrack/android/library/c/b;

    .line 17
    iget-object v7, p0, Lcom/taobao/statistic/core/b/b/h;->jL:Lorg/usertrack/android/library/c/b;

    invoke-virtual {v7, v2}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    .line 19
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/statistic/core/b/b/h;->jL:Lorg/usertrack/android/library/c/b;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/taobao/statistic/core/b/b/h;->jL:Lorg/usertrack/android/library/c/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/c/b;->execute()Z

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
