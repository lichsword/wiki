.class public Lcom/taobao/statistic/core/b/a/d;
.super Ljava/lang/Object;
.source "StartTask.java"


# instance fields
.field private jL:Lorg/usertrack/android/library/c/b;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;Lcom/taobao/statistic/TBS$OnInitFinishListener;)V
    .locals 4
    .parameter "runtime"
    .parameter "onInitFinishListener"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/statistic/core/b/a/d;->jL:Lorg/usertrack/android/library/c/b;

    .line 17
    new-instance v0, Lcom/taobao/statistic/core/b/a/a;

    invoke-direct {v0, p1}, Lcom/taobao/statistic/core/b/a/a;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 18
    .local v0, cc:Lcom/taobao/statistic/core/b/a/a;
    new-instance v2, Lcom/taobao/statistic/core/b/a/c;

    invoke-direct {v2, p1}, Lcom/taobao/statistic/core/b/a/c;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 19
    .local v2, rs:Lcom/taobao/statistic/core/b/a/c;
    new-instance v1, Lcom/taobao/statistic/core/b/a/b;

    invoke-direct {v1, p1}, Lcom/taobao/statistic/core/b/a/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 20
    .local v1, cie:Lcom/taobao/statistic/core/b/a/b;
    new-instance v3, Lorg/usertrack/android/library/c/b;

    invoke-direct {v3}, Lorg/usertrack/android/library/c/b;-><init>()V

    iput-object v3, p0, Lcom/taobao/statistic/core/b/a/d;->jL:Lorg/usertrack/android/library/c/b;

    .line 21
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/d;->jL:Lorg/usertrack/android/library/c/b;

    invoke-virtual {v3, v0}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/usertrack/android/library/c/b;->a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/usertrack/android/library/c/b;->n(Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taobao/statistic/core/b/a/d;->jL:Lorg/usertrack/android/library/c/b;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/taobao/statistic/core/b/a/d;->jL:Lorg/usertrack/android/library/c/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/c/b;->execute()Z

    move-result v0

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
