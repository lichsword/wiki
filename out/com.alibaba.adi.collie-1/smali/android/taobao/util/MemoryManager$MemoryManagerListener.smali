.class public interface abstract Landroid/taobao/util/MemoryManager$MemoryManagerListener;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/util/MemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MemoryManagerListener"
.end annotation


# virtual methods
.method public abstract onGetMemory()I
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onSetMaxMemory(I)V
.end method
