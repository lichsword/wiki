.class public Lorg/usertrack/android/utils/f;
.super Ljava/lang/Object;
.source "LocalTimeUtils.java"


# instance fields
.field private rb:Ljava/text/SimpleDateFormat;

.field private rc:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/usertrack/android/utils/f;->rb:Ljava/text/SimpleDateFormat;

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    const-string v1, "HH:mm:ss SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/usertrack/android/utils/f;->rc:Ljava/text/SimpleDateFormat;

    .line 15
    iget-object v0, p0, Lorg/usertrack/android/utils/f;->rb:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 16
    iget-object v0, p0, Lorg/usertrack/android/utils/f;->rc:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    return-void
.end method
