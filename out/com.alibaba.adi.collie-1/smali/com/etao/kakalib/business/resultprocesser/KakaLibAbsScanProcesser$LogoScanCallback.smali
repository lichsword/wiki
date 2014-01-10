.class public interface abstract Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;
.super Ljava/lang/Object;
.source "KakaLibAbsScanProcesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogoScanCallback"
.end annotation


# virtual methods
.method public abstract onDecodeFailed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation
.end method

.method public abstract onDecodeStart()V
.end method

.method public abstract onDecodeSuccess(Ljava/lang/Object;)V
.end method
