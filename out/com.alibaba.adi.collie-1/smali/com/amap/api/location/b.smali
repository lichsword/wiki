.class public Lcom/amap/api/location/b;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile b:Z

.field private static e:Lcom/amap/api/location/b;


# instance fields
.field private a:Lcom/autonavi/aps/amapapi/IAPS;

.field private c:Ljava/lang/Thread;

.field private d:Landroid/content/Context;

.field private f:J

.field private g:J

.field private h:I

.field private i:Lcom/amap/api/location/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/b;->b:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/amap/api/location/a$a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/autonavi/aps/amapapi/IAPS;

    .line 18
    iput-object v0, p0, Lcom/amap/api/location/b;->c:Ljava/lang/Thread;

    .line 21
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/b;->f:J

    .line 22
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/amap/api/location/b;->g:J

    .line 28
    iput-object p1, p0, Lcom/amap/api/location/b;->d:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/autonavi/aps/amapapi/Factory;->getInstance()Lcom/autonavi/aps/amapapi/IAPS;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/autonavi/aps/amapapi/IAPS;

    .line 30
    invoke-static {p1}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    .line 32
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/autonavi/aps/amapapi/IAPS;

    invoke-interface {v0, p1}, Lcom/autonavi/aps/amapapi/IAPS;->init(Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/autonavi/aps/amapapi/IAPS;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yun_droid_mapsdk##32M0145A3D7E1266UY6BC6E017AD2387##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/aps/amapapi/IAPS;->setAuth(Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lcom/amap/api/location/b;->i:Lcom/amap/api/location/a$a;

    .line 43
    return-void
.end method

.method private a(Lcom/autonavi/aps/amapapi/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    .locals 4
    .parameter

    .prologue
    .line 164
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 167
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 168
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    .line 169
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    .line 170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    const-string v2, "citycode"

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getCitycode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "adcode"

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getAdcode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getCitycode()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getDesc()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getAdcode()Ljava/lang/String;

    move-result-object v3

    .line 179
    :try_start_0
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/a$a;)Lcom/amap/api/location/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/amap/api/location/b;->e:Lcom/amap/api/location/b;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/amap/api/location/b;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/b;-><init>(Landroid/content/Context;Lcom/amap/api/location/a$a;)V

    sput-object v0, Lcom/amap/api/location/b;->e:Lcom/amap/api/location/b;

    .line 50
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/b;->b:Z

    .line 51
    sget-object v0, Lcom/amap/api/location/b;->e:Lcom/amap/api/location/b;

    return-object v0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->d(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, p3}, Lcom/amap/api/location/AMapLocation;->e(Ljava/lang/String;)V

    .line 191
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/amap/api/location/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    array-length v1, v0

    if-le v1, v5, :cond_0

    .line 193
    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V

    .line 194
    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->c(Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 199
    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->a(Ljava/lang/String;)V

    .line 200
    aget-object v1, v0, v4

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V

    .line 201
    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 207
    const-string v0, "010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "021"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "022"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "023"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    sget v1, Lcom/amap/api/location/core/a;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/amap/api/location/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    move-result v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/amap/api/location/b;->c()Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    sget v1, Lcom/amap/api/location/core/a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/amap/api/location/b;->c()Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/autonavi/aps/amapapi/IAPS;

    invoke-interface {v1}, Lcom/autonavi/aps/amapapi/IAPS;->getLocation()Lcom/autonavi/aps/amapapi/AmapLoc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/location/b;->d()V

    .line 142
    return-object v0

    .line 137
    :catch_0
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 146
    sget v0, Lcom/amap/api/location/core/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/location/core/a;->c:I

    .line 147
    sget v0, Lcom/amap/api/location/core/a;->c:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 148
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/location/core/a;->a:I

    .line 149
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/location/core/a;->c:I

    .line 151
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 155
    sget-wide v3, Lcom/amap/api/location/a;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5

    iget-wide v5, p0, Lcom/amap/api/location/b;->f:J

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 156
    sput-boolean v0, Lcom/amap/api/location/a;->b:Z

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/location/b;->b:Z

    .line 56
    iget-object v0, p0, Lcom/amap/api/location/b;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amap/api/location/b;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 59
    :cond_0
    iput-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/autonavi/aps/amapapi/IAPS;

    .line 60
    sput-object v1, Lcom/amap/api/location/b;->e:Lcom/amap/api/location/b;

    .line 61
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/amap/api/location/b;->f:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 114
    iput-wide p1, p0, Lcom/amap/api/location/b;->f:J

    .line 116
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 65
    iget v0, p0, Lcom/amap/api/location/b;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/location/b;->g:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/amap/api/location/b;->b:Z

    if-eqz v0, :cond_e

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->c:Ljava/lang/Thread;

    .line 75
    const/4 v1, 0x0

    .line 77
    :try_start_1
    sget-boolean v0, Lcom/amap/api/location/a;->b:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/location/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/amap/api/location/a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/amap/api/location/core/AMapException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-nez v0, :cond_7

    .line 80
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lcom/amap/api/location/b;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/amap/api/location/core/AMapException; {:try_start_2 .. :try_end_2} :catch_3

    .line 95
    :goto_1
    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_4

    .line 96
    sget-boolean v0, Lcom/amap/api/location/a;->b:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/location/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    sget v1, Lcom/amap/api/location/a;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 100
    iget-object v1, p0, Lcom/amap/api/location/b;->i:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 104
    :cond_4
    :try_start_3
    iget-wide v0, p0, Lcom/amap/api/location/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 81
    :catch_2
    move-exception v0

    .line 82
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/amap/api/location/core/AMapException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 90
    :catch_3
    move-exception v0

    .line 95
    if-eqz v1, :cond_6

    sget-boolean v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_6

    .line 96
    sget-boolean v0, Lcom/amap/api/location/a;->b:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/location/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    :cond_5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    sget v1, Lcom/amap/api/location/a;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 100
    iget-object v1, p0, Lcom/amap/api/location/b;->i:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 104
    :cond_6
    :try_start_5
    iget-wide v0, p0, Lcom/amap/api/location/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 105
    :catch_4
    move-exception v0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 86
    :cond_7
    :try_start_6
    invoke-direct {p0}, Lcom/amap/api/location/b;->b()Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_f

    .line 88
    invoke-direct {p0, v0}, Lcom/amap/api/location/b;->a(Lcom/autonavi/aps/amapapi/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/amap/api/location/core/AMapException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v0

    .line 95
    :goto_2
    if-eqz v0, :cond_9

    sget-boolean v1, Lcom/amap/api/location/a;->d:Z

    if-eqz v1, :cond_9

    .line 96
    sget-boolean v1, Lcom/amap/api/location/a;->b:Z

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/amap/api/location/b;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 97
    :cond_8
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 98
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    sget v0, Lcom/amap/api/location/a;->a:I

    iput v0, v1, Landroid/os/Message;->what:I

    .line 100
    iget-object v0, p0, Lcom/amap/api/location/b;->i:Lcom/amap/api/location/a$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 104
    :cond_9
    :try_start_7
    iget-wide v0, p0, Lcom/amap/api/location/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 105
    :catch_5
    move-exception v0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 92
    :catch_6
    move-exception v0

    .line 95
    if-eqz v1, :cond_b

    sget-boolean v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_b

    .line 96
    sget-boolean v0, Lcom/amap/api/location/a;->b:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/amap/api/location/b;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    :cond_a
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    sget v1, Lcom/amap/api/location/a;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 100
    iget-object v1, p0, Lcom/amap/api/location/b;->i:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 104
    :cond_b
    :try_start_8
    iget-wide v0, p0, Lcom/amap/api/location/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 105
    :catch_7
    move-exception v0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 95
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_d

    sget-boolean v2, Lcom/amap/api/location/a;->d:Z

    if-eqz v2, :cond_d

    .line 96
    sget-boolean v2, Lcom/amap/api/location/a;->b:Z

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/amap/api/location/b;->e()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 97
    :cond_c
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 98
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    sget v1, Lcom/amap/api/location/a;->a:I

    iput v1, v2, Landroid/os/Message;->what:I

    .line 100
    iget-object v1, p0, Lcom/amap/api/location/b;->i:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 104
    :cond_d
    :try_start_9
    iget-wide v1, p0, Lcom/amap/api/location/b;->f:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 107
    :goto_3
    throw v0

    .line 105
    :catch_8
    move-exception v1

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 110
    :cond_e
    return-void

    :cond_f
    move-object v0, v1

    goto/16 :goto_2
.end method
