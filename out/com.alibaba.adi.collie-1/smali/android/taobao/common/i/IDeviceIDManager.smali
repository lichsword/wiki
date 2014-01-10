.class public interface abstract Landroid/taobao/common/i/IDeviceIDManager;
.super Ljava/lang/Object;
.source "IDeviceIDManager.java"


# virtual methods
.method public abstract clear(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method
