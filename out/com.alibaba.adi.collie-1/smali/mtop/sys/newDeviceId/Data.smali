.class public Lmtop/sys/newDeviceId/Data;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4538fff34a6eaf94L


# instance fields
.field private device_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lmtop/sys/newDeviceId/Data;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0
    .parameter "device_id"

    .prologue
    .line 15
    iput-object p1, p0, Lmtop/sys/newDeviceId/Data;->device_id:Ljava/lang/String;

    .line 16
    return-void
.end method
