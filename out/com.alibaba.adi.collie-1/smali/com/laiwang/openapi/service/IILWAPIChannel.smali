.class public interface abstract Lcom/laiwang/openapi/service/IILWAPIChannel;
.super Ljava/lang/Object;
.source "IILWAPIChannel.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/openapi/service/IILWAPIChannel$Stub;
    }
.end annotation


# virtual methods
.method public abstract introduceMe(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerME(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/IILWAPICallback;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract responceData(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/message/LWMessage;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transportData(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/message/LWMessage;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
