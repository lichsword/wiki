.class public Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiTbTrackingReqStrGenerator;
.super Ljava/lang/Object;
.source "AdiTbTrackingReqStrGenerator.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/IAdiGetReqStrGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "tb_tracking"

    return-object v0
.end method
