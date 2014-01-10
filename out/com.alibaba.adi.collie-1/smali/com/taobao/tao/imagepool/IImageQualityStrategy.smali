.class public interface abstract Lcom/taobao/tao/imagepool/IImageQualityStrategy;
.super Ljava/lang/Object;
.source "IImageQualityStrategy.java"


# static fields
.field public static final STRATEGY_MODE_HIGH:I = 0x3

.field public static final STRATEGY_MODE_LOW:I = 0x2

.field public static final STRATEGY_MODE_OFF:I = 0x0

.field public static final STRATEGY_MODE_SMART:I = 0x1


# virtual methods
.method public abstract decideStoragePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract decideUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStrategyMode()I
.end method

.method public abstract setStrategyMode(I)V
.end method
