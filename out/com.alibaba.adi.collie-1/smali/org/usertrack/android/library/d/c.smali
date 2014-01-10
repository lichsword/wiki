.class public Lorg/usertrack/android/library/d/c;
.super Ljava/lang/Object;
.source "TrafficStatistic.java"

# interfaces
.implements Lorg/usertrack/android/library/connection/OnConnectionChangeListener;


# instance fields
.field private qJ:Lorg/usertrack/android/library/d/a;

.field private qK:Ljava/lang/String;

.field private qL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/usertrack/android/library/d/a;

    invoke-direct {v0}, Lorg/usertrack/android/library/d/a;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lorg/usertrack/android/library/d/c;->qK:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lorg/usertrack/android/library/d/c;->qL:I

    .line 17
    return-void
.end method

.method private a(ZLjava/lang/String;Lorg/usertrack/android/library/d/b;)V
    .locals 1
    .parameter "aIsPageFinish"
    .parameter "aAccess"
    .parameter "aTi"

    .prologue
    .line 50
    if-eqz p3, :cond_0

    .line 51
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "Wi-Fi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    if-nez p1, :cond_0

    .line 54
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0, p3}, Lorg/usertrack/android/library/d/a;->b(Lorg/usertrack/android/library/d/b;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0, p3}, Lorg/usertrack/android/library/d/a;->a(Lorg/usertrack/android/library/d/b;)V

    goto :goto_0
.end method


# virtual methods
.method public Q(I)V
    .locals 0
    .parameter "aUid"

    .prologue
    .line 20
    iput p1, p0, Lorg/usertrack/android/library/d/c;->qL:I

    .line 21
    return-void
.end method

.method public et()J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/a;->et()J

    move-result-wide v0

    return-wide v0
.end method

.method public eu()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/a;->eu()J

    move-result-wide v0

    return-wide v0
.end method

.method public ev()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/a;->ev()J

    move-result-wide v0

    return-wide v0
.end method

.method public ew()J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/a;->ew()J

    move-result-wide v0

    return-wide v0
.end method

.method public ex()J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/a;->ex()J

    move-result-wide v0

    return-wide v0
.end method

.method public ey()J
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/a;->ey()J

    move-result-wide v0

    return-wide v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 24
    iget v1, p0, Lorg/usertrack/android/library/d/c;->qL:I

    invoke-static {v1}, Lorg/usertrack/android/library/d/d;->ac(I)Lorg/usertrack/android/library/d/b;

    move-result-object v0

    .line 25
    .local v0, ti:Lorg/usertrack/android/library/d/b;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/usertrack/android/library/d/c;->qK:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lorg/usertrack/android/library/d/c;->a(ZLjava/lang/String;Lorg/usertrack/android/library/d/b;)V

    .line 26
    return-void
.end method

.method public onConnectionChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aContext"
    .parameter "aAccess"
    .parameter "aAccessSubType"

    .prologue
    const/4 v2, 0x0

    .line 37
    iget v1, p0, Lorg/usertrack/android/library/d/c;->qL:I

    invoke-static {v1}, Lorg/usertrack/android/library/d/d;->ac(I)Lorg/usertrack/android/library/d/b;

    move-result-object v0

    .line 38
    .local v0, ti:Lorg/usertrack/android/library/d/b;
    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lorg/usertrack/android/library/d/c;->qK:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lorg/usertrack/android/library/d/c;->qK:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lorg/usertrack/android/library/d/c;->a(ZLjava/lang/String;Lorg/usertrack/android/library/d/b;)V

    .line 45
    :cond_0
    :goto_0
    iput-object p2, p0, Lorg/usertrack/android/library/d/c;->qK:Ljava/lang/String;

    .line 46
    return-void

    .line 42
    :cond_1
    invoke-direct {p0, v2, p2, v0}, Lorg/usertrack/android/library/d/c;->a(ZLjava/lang/String;Lorg/usertrack/android/library/d/b;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lorg/usertrack/android/library/d/c;->qJ:Lorg/usertrack/android/library/d/a;

    invoke-virtual {v1}, Lorg/usertrack/android/library/d/a;->clear()V

    .line 30
    iget v1, p0, Lorg/usertrack/android/library/d/c;->qL:I

    invoke-static {v1}, Lorg/usertrack/android/library/d/d;->ac(I)Lorg/usertrack/android/library/d/b;

    move-result-object v0

    .line 31
    .local v0, ti:Lorg/usertrack/android/library/d/b;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/usertrack/android/library/d/c;->qK:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lorg/usertrack/android/library/d/c;->a(ZLjava/lang/String;Lorg/usertrack/android/library/d/b;)V

    .line 32
    return-void
.end method
