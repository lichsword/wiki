.class public interface abstract Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;
.super Ljava/lang/Object;
.source "CoreApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNumChangeListener"
.end annotation


# virtual methods
.method public abstract onCallNotifyChange(I)V
.end method

.method public abstract onNewsNotifyChange(I)V
.end method

.method public abstract onSmsNotifyChange(I)V
.end method

.method public abstract onSystemNotifyChange(I)V
.end method

.method public abstract onTaobaoNotifyChange(I)V
.end method

.method public abstract onVideoNotifyChange(I)V
.end method

.method public abstract onWeatherNotifyChange()V
.end method

.method public abstract onWeiboNotifyChange(I)V
.end method
