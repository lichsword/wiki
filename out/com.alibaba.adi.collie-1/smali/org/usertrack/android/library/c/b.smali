.class public Lorg/usertrack/android/library/c/b;
.super Ljava/lang/Object;
.source "TaskChain.java"

# interfaces
.implements Lorg/usertrack/android/library/c/a;


# instance fields
.field private qw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/usertrack/android/library/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private qx:Ljava/lang/Object;

.field private qy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/c/b;->qw:Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/usertrack/android/library/c/b;->qx:Ljava/lang/Object;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lorg/usertrack/android/library/c/b;->qy:I

    .line 5
    return-void
.end method


# virtual methods
.method public a(Lorg/usertrack/android/library/c/c;)Lorg/usertrack/android/library/c/b;
    .locals 1
    .parameter "aNode"

    .prologue
    .line 16
    if-eqz p1, :cond_0

    .line 17
    iget-object v0, p0, Lorg/usertrack/android/library/c/b;->qw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lorg/usertrack/android/library/c/b;->qw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    return-object p0
.end method

.method public execute()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    iget-object v4, p0, Lorg/usertrack/android/library/c/b;->qw:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/usertrack/android/library/c/b;->qw:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 26
    iput v2, p0, Lorg/usertrack/android/library/c/b;->qy:I

    .line 27
    iget-object v0, p0, Lorg/usertrack/android/library/c/b;->qx:Ljava/lang/Object;

    .line 28
    .local v0, mInputObject:Ljava/lang/Object;
    iget-object v4, p0, Lorg/usertrack/android/library/c/b;->qw:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 44
    .end local v0           #mInputObject:Ljava/lang/Object;
    :cond_0
    :goto_1
    return v2

    .line 28
    .restart local v0       #mInputObject:Ljava/lang/Object;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/usertrack/android/library/c/c;

    .line 29
    .local v1, node:Lorg/usertrack/android/library/c/c;
    iget v5, p0, Lorg/usertrack/android/library/c/b;->qy:I

    if-eq v5, v3, :cond_0

    .line 31
    iget v5, p0, Lorg/usertrack/android/library/c/b;->qy:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v1, p0}, Lorg/usertrack/android/library/c/c;->a(Lorg/usertrack/android/library/c/a;)V

    .line 35
    invoke-virtual {v1, v0}, Lorg/usertrack/android/library/c/c;->o(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v1}, Lorg/usertrack/android/library/c/c;->execute()V

    .line 39
    invoke-virtual {v1}, Lorg/usertrack/android/library/c/c;->eq()V

    .line 40
    invoke-virtual {v1}, Lorg/usertrack/android/library/c/c;->es()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public n(Ljava/lang/Object;)V
    .locals 0
    .parameter "aInput"

    .prologue
    .line 12
    iput-object p1, p0, Lorg/usertrack/android/library/c/b;->qx:Ljava/lang/Object;

    .line 13
    return-void
.end method
