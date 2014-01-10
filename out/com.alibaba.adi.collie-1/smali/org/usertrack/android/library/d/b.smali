.class public Lorg/usertrack/android/library/d/b;
.super Ljava/lang/Object;
.source "TrafficItem.java"


# instance fields
.field private qH:J

.field private qI:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide v0, p0, Lorg/usertrack/android/library/d/b;->qH:J

    .line 5
    iput-wide v0, p0, Lorg/usertrack/android/library/d/b;->qI:J

    .line 3
    return-void
.end method


# virtual methods
.method public eA()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/usertrack/android/library/d/b;->qI:J

    return-wide v0
.end method

.method public eB()J
    .locals 4

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/usertrack/android/library/d/b;->qI:J

    iget-wide v2, p0, Lorg/usertrack/android/library/d/b;->qH:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public ez()J
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lorg/usertrack/android/library/d/b;->qH:J

    return-wide v0
.end method

.method public h(J)V
    .locals 0
    .parameter "aTX"

    .prologue
    .line 12
    iput-wide p1, p0, Lorg/usertrack/android/library/d/b;->qH:J

    .line 13
    return-void
.end method

.method public i(J)V
    .locals 0
    .parameter "aRX"

    .prologue
    .line 20
    iput-wide p1, p0, Lorg/usertrack/android/library/d/b;->qI:J

    .line 21
    return-void
.end method
