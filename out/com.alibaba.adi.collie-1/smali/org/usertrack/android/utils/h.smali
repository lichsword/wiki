.class public Lorg/usertrack/android/utils/h;
.super Ljava/lang/Object;
.source "NetworkTimeUtils.java"


# instance fields
.field private mV:J

.field private rb:Ljava/text/SimpleDateFormat;

.field private rc:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "mistiming"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/usertrack/android/utils/h;->mV:J

    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 11
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/usertrack/android/utils/h;->rb:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 13
    const-string v1, "HH:mm:ss SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/usertrack/android/utils/h;->rc:Ljava/text/SimpleDateFormat;

    .line 16
    iget-object v0, p0, Lorg/usertrack/android/utils/h;->rb:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    iget-object v0, p0, Lorg/usertrack/android/utils/h;->rc:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 21
    iput-wide p1, p0, Lorg/usertrack/android/utils/h;->mV:J

    .line 22
    return-void
.end method


# virtual methods
.method public c(Ljava/util/Date;)J
    .locals 4
    .parameter "d"

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    .local v0, t:J
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 29
    :cond_0
    iget-wide v2, p0, Lorg/usertrack/android/utils/h;->mV:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public d(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "d"

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, t:J
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 37
    :cond_0
    iget-object v2, p0, Lorg/usertrack/android/utils/h;->rb:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lorg/usertrack/android/utils/h;->mV:J

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
