.class public interface abstract Lcom/laiwang/openapi/IILWAPICallback;
.super Ljava/lang/Object;
.source "IILWAPICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/openapi/IILWAPICallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDisplay(Lcom/laiwang/openapi/message/LWMessage;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
