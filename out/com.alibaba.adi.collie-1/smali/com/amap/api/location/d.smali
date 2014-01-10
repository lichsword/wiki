.class Lcom/amap/api/location/d;
.super Ljava/lang/Object;
.source "IGPSManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/c;


# direct methods
.method constructor <init>(Lcom/amap/api/location/c;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amap/api/location/d;->a:Lcom/amap/api/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 61
    sput-boolean v6, Lcom/amap/api/location/a;->b:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/location/a;->c:J

    .line 63
    const/4 v1, 0x0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Lcom/amap/api/location/c;

    invoke-static {v0}, Lcom/amap/api/location/c;->b(Lcom/amap/api/location/c;)Lcom/amap/api/location/core/c;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/location/d;->a:Lcom/amap/api/location/c;

    invoke-static {v2}, Lcom/amap/api/location/c;->a(Lcom/amap/api/location/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/a/a/a;->a(DD)[D

    move-result-object v2

    .line 68
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v1, 0x1

    :try_start_1
    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 70
    const/4 v1, 0x0

    aget-wide v1, v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 78
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    sget v0, Lcom/amap/api/location/a;->a:I

    iput v0, v1, Landroid/os/Message;->what:I

    .line 80
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Lcom/amap/api/location/c;

    invoke-static {v0}, Lcom/amap/api/location/c;->c(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 81
    sput-boolean v6, Lcom/amap/api/location/a;->b:Z

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/location/a;->c:J

    .line 86
    :goto_1
    return-void

    .line 72
    :cond_0
    :try_start_2
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 77
    :goto_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 78
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    sget v0, Lcom/amap/api/location/a;->a:I

    iput v0, v1, Landroid/os/Message;->what:I

    .line 80
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Lcom/amap/api/location/c;

    invoke-static {v0}, Lcom/amap/api/location/c;->c(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 81
    sput-boolean v6, Lcom/amap/api/location/a;->b:Z

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/location/a;->c:J

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    :goto_3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 78
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    sget v1, Lcom/amap/api/location/a;->a:I

    iput v1, v2, Landroid/os/Message;->what:I

    .line 80
    iget-object v1, p0, Lcom/amap/api/location/d;->a:Lcom/amap/api/location/c;

    invoke-static {v1}, Lcom/amap/api/location/c;->c(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 81
    sput-boolean v6, Lcom/amap/api/location/a;->b:Z

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/location/a;->c:J

    .line 84
    throw v0

    .line 77
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 74
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    return-void
.end method
