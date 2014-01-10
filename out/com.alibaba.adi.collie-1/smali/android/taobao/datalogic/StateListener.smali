.class public interface abstract Landroid/taobao/datalogic/StateListener;
.super Ljava/lang/Object;
.source "StateListener.java"


# static fields
.field public static final ERROR_WRONGDATA:I = -0x1

.field public static final LOAD_TIMEOUT:I = -0x2


# virtual methods
.method public abstract dataReceived()V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadFinish()V
.end method

.method public abstract needUpdateSelection(III)V
.end method

.method public abstract startReceive()V
.end method
