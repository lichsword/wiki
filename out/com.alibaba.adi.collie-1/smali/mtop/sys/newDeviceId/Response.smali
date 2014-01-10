.class public Lmtop/sys/newDeviceId/Response;
.super Landroid/taobao/apirequest/BaseOutDo;
.source "Response.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf32b180b8c88184L


# instance fields
.field private data:Lmtop/sys/newDeviceId/Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/taobao/apirequest/BaseOutDo;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmtop/sys/newDeviceId/Response;->data:Lmtop/sys/newDeviceId/Data;

    return-object v0
.end method

.method public setData(Lmtop/sys/newDeviceId/Data;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 25
    iput-object p1, p0, Lmtop/sys/newDeviceId/Response;->data:Lmtop/sys/newDeviceId/Data;

    .line 26
    return-void
.end method
