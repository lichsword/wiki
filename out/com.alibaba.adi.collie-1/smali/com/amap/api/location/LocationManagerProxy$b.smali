.class Lcom/amap/api/location/LocationManagerProxy$b;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/LocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/LocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/amap/api/location/LocationManagerProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 389
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 390
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 391
    const-string v4, "location"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v3}, Lcom/amap/api/location/LocationManagerProxy;->b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 5
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 420
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 421
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 422
    const-string v4, "location"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 424
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 426
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v3}, Lcom/amap/api/location/LocationManagerProxy;->b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 432
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    return-void
.end method
