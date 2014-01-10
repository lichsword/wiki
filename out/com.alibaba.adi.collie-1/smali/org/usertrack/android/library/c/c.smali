.class public abstract Lorg/usertrack/android/library/c/c;
.super Ljava/lang/Object;
.source "TaskNode.java"


# instance fields
.field private qA:Ljava/lang/Object;

.field private qB:Lorg/usertrack/android/library/c/a;

.field private qz:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lorg/usertrack/android/library/c/c;->qz:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lorg/usertrack/android/library/c/c;->qA:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lorg/usertrack/android/library/c/c;->qB:Lorg/usertrack/android/library/c/a;

    .line 4
    return-void
.end method


# virtual methods
.method final a(Lorg/usertrack/android/library/c/a;)V
    .locals 0
    .parameter "aActions"

    .prologue
    .line 16
    iput-object p1, p0, Lorg/usertrack/android/library/c/c;->qB:Lorg/usertrack/android/library/c/a;

    .line 17
    return-void
.end method

.method public eq()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/usertrack/android/library/c/c;->qB:Lorg/usertrack/android/library/c/a;

    .line 11
    return-void
.end method

.method protected er()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/usertrack/android/library/c/c;->qz:Ljava/lang/Object;

    return-object v0
.end method

.method es()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/usertrack/android/library/c/c;->qA:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract execute()V
.end method

.method public abstract k(Ljava/lang/Object;)Z
.end method

.method final o(Ljava/lang/Object;)Z
    .locals 1
    .parameter "aInput"

    .prologue
    .line 20
    iput-object p1, p0, Lorg/usertrack/android/library/c/c;->qz:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, p1}, Lorg/usertrack/android/library/c/c;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected p(Ljava/lang/Object;)V
    .locals 0
    .parameter "aOutput"

    .prologue
    .line 29
    iput-object p1, p0, Lorg/usertrack/android/library/c/c;->qA:Ljava/lang/Object;

    .line 30
    return-void
.end method
