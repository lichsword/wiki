.class public interface abstract Lcom/autonavi/aps/amapapi/IAPS;
.super Ljava/lang/Object;
.source "IAPS.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getLocation()Lcom/autonavi/aps/amapapi/AmapLoc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getOfflineLocation()Lcom/autonavi/aps/amapapi/AmapLoc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract setAuth(Ljava/lang/String;)V
.end method

.method public abstract setGpsOffset(Z)V
.end method

.method public abstract setUpload(Z)V
.end method

.method public abstract setUseCache(Z)V
.end method

.method public abstract setUseGps(Z)V
.end method
