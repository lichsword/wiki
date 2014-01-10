.class public abstract Lcom/laiwang/openapi/IILWAPICallback$Stub;
.super Landroid/os/Binder;
.source "IILWAPICallback.java"

# interfaces
.implements Lcom/laiwang/openapi/IILWAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/openapi/IILWAPICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/openapi/IILWAPICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.laiwang.openapi.IILWAPICallback"

.field static final TRANSACTION_onDisplay:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.laiwang.openapi.IILWAPICallback"

    invoke-virtual {p0, p0, v0}, Lcom/laiwang/openapi/IILWAPICallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/laiwang/openapi/IILWAPICallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.laiwang.openapi.IILWAPICallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/laiwang/openapi/IILWAPICallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/laiwang/openapi/IILWAPICallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/laiwang/openapi/IILWAPICallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/laiwang/openapi/IILWAPICallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.laiwang.openapi.IILWAPICallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.laiwang.openapi.IILWAPICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/laiwang/openapi/message/LWMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/openapi/message/LWMessage;

    .line 55
    .local v0, _arg0:Lcom/laiwang/openapi/message/LWMessage;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/laiwang/openapi/IILWAPICallback$Stub;->onDisplay(Lcom/laiwang/openapi/message/LWMessage;)I

    move-result v1

    .line 56
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, p3, v2}, Lcom/laiwang/openapi/message/LWMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Lcom/laiwang/openapi/message/LWMessage;
    .end local v1           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/laiwang/openapi/message/LWMessage;
    goto :goto_1

    .line 63
    .restart local v1       #_result:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
